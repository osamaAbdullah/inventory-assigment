<?php

namespace App\Controllers;

use Carbon\Carbon;
use Core\App;
use Core\Auth\AuthStorage;
use Core\Database\QueryBuilder;
use function dd;
use Exception;
use function generateToken;
use function log;
use Rakit\Validation\Validator;
use function redirect;
use function url;

class PasswordResetController {
	
	public function showPasswordResetRequestForm()
	{
		
		return view('reset-password-request');
	}
	
	public function sendEmail()
	{
		$validation = $this->validate();
		if ($validation->fails()) {
			return view('reset-password-request', [
				'inputError'      => $validation->errors()->toArray(),
				'oldUsername' => $_POST['username'] ?? '',
			]);
		}
		
		
		try {
			$user = (new AuthStorage())
				->fetchUserByUsername($_REQUEST['username']);
		} catch (Exception $exception) {
			return view('reset-password-request', [
				'error'      => 'No user found with that username',
				'oldUsername' => $_POST['username'] ?? '',
			]);
		}
	/*	 you can send email here to $email
		 instead i will write the password reset link to log file for testing purpose*/
		$query = (new QueryBuilder)
			->insert('password_resets', [
				'username'   => $user->username(),
				'token'      => $token = generateToken(),
				'created_at' => Carbon::now(),
			]);
		if ( $query ) {
			registerLog('password reset link : ' . url('/passwords/reset?token=' . $token));
			
			return view('reset-password-request', [
				'success'     => 'link successfully generated, you can find the link in logs',
				'oldUsername' => '',
			]);
		} else {
			return view('reset-password-request', [
				'error'      => 'Some thing wen wrong, please try again!',
				'oldUsername' => $_POST['username'] ?? '',
			]);
		}
	}
	
	public function verifyToken()
	{
		
		if ( isset($_REQUEST['token']) ) {
			$rows = (new QueryBuilder)
				->select('*')
				->table('password_resets')
				->where('token', '=', $_REQUEST['token'])
				->get();
			
			if (
				isset($rows[0]) &&
				(
					$rows[0]['created_at'] >
					Carbon::now()
						->subtract('minute', App::resolve('app')['password_reset_token_expiration'])
						->toDateTimeString()
				)
			) {
				return view('reset-password', [
					'username' => $rows[0]['username'],
					'token' => $_REQUEST['token'],
				]);
			} else {
				return redirect(url('/page-not-found'));
			}
		} else {
			return redirect(url('/page-not-found'));
		}
	}
	
	private function validate()
	{
		$validator = new Validator;
		$validation = $validator->make(
			$_REQUEST, [
			'username' => 'required|min:3',
		]);
		$validation->validate();
		return $validation;
	}

	public function passwordReset()
	{
		$validator = new Validator;
		$validation = $validator->make(
			$_REQUEST, [
			'token' => 'required',
			'username' => 'required|min:3',
			'password' => 'required|min:8',
			'password_confirmation' => 'required|min:8|same:password',
		]);
		$validation->validate();
		if ($validation->fails()) {
			return view('reset-password', [
				'inputError'      => $validation->errors()->toArray(),
				'username' => $_REQUEST['username'] ?? '',
			]);
		}
		$row = (new QueryBuilder)
			->select('*')
			->table('password_resets')
			->where('username', '=', $_REQUEST['username'])
			->and('token', '=', $_REQUEST['token'])
			->get();
		if (isset($row[0])) {
			$user = (new AuthStorage)
				->fetchUserByUsername($_REQUEST['username']);
			if ($user->changePassword($_REQUEST['password'])) {
				if (
				(new QueryBuilder)
					->delete('password_resets')
					->where('username', '=', $user->username())
					->execute()
				) {
					return view('login', [
						'success'      => 'You have successfully reset your password.',
					]);
				}
			} else {
				return view('reset-password', [
					'error'      => 'Something went wrong please try again.',
					'username' => $_REQUEST['username'] ?? '',
				]);
			}
		} else {
			return view('reset-password', [
				'error'      => 'Something went wrong please try again.',
				'username' => $_REQUEST['username'] ?? '',
			]);
		}
	}
	
	
}