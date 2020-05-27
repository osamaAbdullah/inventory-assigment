<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Core\Abstracts\Auth as Authenticate;
use Core\App;
use Exception;
use Rakit\Validation\Validator;
use Firebase\JWT\JWT;

class ApiAuthController extends Authenticate {
	
	use VerifyToken;
	
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
			], 422);
		}
	}
	
	private function generateToken()
	{
		$user = $this->auth->user();
		$jwtConf = App::resolve('jwt');
		$jwtConf['token']['data'] = [
			'id' => $user->id(),
			'name' => $user->first_name() .' '. $user->last_name(),
			'username' => $user->username(),
			'type' => $user->type(),
			'active' => $user->active(),
			
		]; // append user data
		
		// generate jwt
		$jwt = JWT::encode($jwtConf['token'], $jwtConf['key'], 'HS256');
		
		jsonResponse([ // respond
			"message" => "Successful login.",
			"jwt" => $jwt
		], 200);
	}
}