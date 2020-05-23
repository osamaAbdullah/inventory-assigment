<?php

namespace App\Controllers;

use Exception;
use Jasny\Auth\Auth;
use Jasny\Auth\Authz\Levels;
use Core\Auth\AuthStorage;
use Rakit\Validation\Validator;

class AuthController {
	
	private $auth;
	
	public function __construct()
	{
		if (! $this->auth) {
			$this->initialize();
		}
	}
	
	public function showLoginForm()
	{
		if ($this->isLoggedIn()) {
			return redirect(url('/'));
		} else {
			return view('login');
		}
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
				'oldUsername' => $_POST['username'],
			]);
		}
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
			$errors = $validation->errors()->toArray();
			return view('login', [
				'errors' => $errors,
				'oldUsername' => $_POST['username'],
			]);
		}
	}
	
	public function isLoggedIn()
	{
		return $this->auth->isLoggedIn();
	}
	
	public function initialize()
	{
		$levels = new Levels(['user' => 1, 'developer' => 2, 'admin' => 3]);
		$auth = new Auth($levels, new AuthStorage());
		session_start();
		$auth->initialize();
		$this->auth = $auth;
	}
	
}