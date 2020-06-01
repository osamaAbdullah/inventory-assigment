<?php

namespace App\Traits;

use App\Controllers\AuthController;
use Core\Request;

trait userRole {
	
	public function role(string $role)
	{
		$auth = new AuthController;
		$currentLoggedInUserRole = $auth->role();
		if ($currentLoggedInUserRole !== $role) {
			if (Request::method() === 'GET') {
				return redirect(url('/forbidden-403'));
			} else {
				jsonResponse([
					'message' => 'unauthorized 403'
				], 403);
			}
		}
	}
	
}