<?php

namespace App\Traits;

use Core\App;
use Exception;
use Firebase\JWT\JWT;

trait VerifyToken {
	
	private function validateJWT()
	{
		// get posted data
		$jwt = json_decode(file_get_contents("php://input"))->jwt // if jwt in request body
			?? $_SERVER['HTTP_JWT'] // if jwt in header
			?? $_POST['jwt'] // if jwt in post
			?? false; // if jwt does not exist

		if ($jwt) {
			// if decode succeed, show user details
			try {
				// decode jwt
				$decoded = JWT::decode($jwt, App::resolve('jwt')['key'], ['HS256']);
				return [
					"data" => (array) $decoded->data,
					'valid' => true,
				];
			}
				// if decode fails, it means jwt is invalid
			catch (Exception $e){
				return [
					"error" => $e->getMessage(),
					'valid' => false
				];
			}
		} else {
			return [
				"error" => 'no given token found',
				'valid' => false
			];
		}
	}
	
	public function isLoggedIn()
	{
		if ($this->validateJWT()['valid'] && isLoggedIn()) {
			if (intval($_SESSION['auth']['user']) === $this->validateJWT()['data']['id']) {
				return true;
			}
		}
		// set response code
		http_response_code(401);
		
		// send error messages
		echo json_encode([
			'message' => 'not authenticated.',
		]);
		exit;
	}
}