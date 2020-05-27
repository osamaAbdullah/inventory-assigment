<?php

namespace App\Controllers;

use Exception;
use Rakit\Validation\Validator;
use Core\Abstracts\Auth as Authenticate;

class AuthController extends Authenticate {
	
	public function showLoginForm()
	{
		return view('login');
	}
	
	public function login()
	{
		$this->validate();
		try {
			$this->auth->login($_POST['username'], $_POST['password']);
		} catch (Exception $exception) {
			return view('login', [
				'errors' => [
					'credential' => 'wrong username or password'
				],
				'oldUsername' => $_POST['username'] ?? '',
			]);
		}
		return redirect(url('/'));
	}
	
	public function logout()
	{
		$this->auth->logout();
		return redirect(url('/'));
	}
	
	private function validate()
	{
		$validator = new Validator;
		$validation = $validator->make(
			$_POST, [
			'username' => 'required|min:3',
			'password' => 'required|min:8',
		]);
		
		$validation->validate();
		
		if ($validation->fails()) {
			return view('login', [
				'errors' => $validation->errors()->toArray(),
				'oldUsername' => $_POST['username'] ?? '',
			]);
			
		}
	}
}