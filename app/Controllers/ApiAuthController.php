<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Core\App;
use Core\Interfaces\Authenticate;
use Exception;
use Jasny\Auth\Auth;
use Jasny\Auth\Authz\Levels;
use Core\Auth\AuthStorage;
use Rakit\Validation\Validator;
use Firebase\JWT\JWT;

class ApiAuthController implements Authenticate {
	
	use VerifyToken;
	
	private $auth;
	
	public function __construct()
	{
		if (! $this->auth) {
			$this->initialize();
		}
	}
	
	public function logout()
	{
		$this->auth->logout();
		jsonResponse([
			'message' => 'Logout successful.',
		], 200);
		exit;
	}
	
	public function login()
	{
		if ($this->validateJWT()['valid'] && $this->isLoggedIn()) { // if token exists
			$user = $this->validateJWT()['data'];
			if (
				$user['id'] === $this->auth->user()->id() &&
				$user['username'] === $this->auth->user()->username()
			) { // if token belongs to logged in user
				jsonResponse([
					'message' => 'You are already logged in',
				], 200);
			} else { // if token doesn't belongs to logged in user
				$this->auth->logout();
				jsonResponse([
					'message' => 'Access denied.',
				], 401);
			}
		} else { // if token does not exists
			$this->validate(); // validate email and password
			$this->auth->logout();
			try {
				$this->auth->login($_POST['username'], $_POST['password']); // attempt to log in th user
			} catch (Exception $exception) {
				jsonResponse([ // if attempt fails
					'message' => 'Login failed.',
					'error' => 'Wrong username or password',
				], 401);
			}
			$this->generateToken(); // if attempt success create a jwt token and send it back
		}
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
			jsonResponse([
				'message' => 'Login failed.',
				'errors' => $validation->errors()->toArray(),
			], 401);
		}
	}
	
	private function generateToken()
	{
		$user = $this->auth->user();
		
		App::resolve('jwt')['token']['data'] = [
			'id' => $user->id(),
			'name' => $user->first_name() .' '. $user->last_name(),
			'username' => $user->username(),
			'type' => $user->type(),
			'active' => $user->active(),
			
		]; // append user data
		
		// generate jwt
		$jwt = JWT::encode(App::resolve('jwt')['token'], App::resolve('jwt')['key'], 'HS256');
		
		jsonResponse([ // respond
			"message" => "Successful login.",
			"jwt" => $jwt
		], 200);
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