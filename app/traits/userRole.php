<?php

namespace App\Traits;

use App\Controllers\AuthController;
use Core\Request;
use function in_array;

trait userRole {
	
	private $auth;
	
	public function __construct()
	{
		if (! isset($this->auth)) {
			$this->auth = new AuthController;
		}
	}
	
	public function type(array $role)
	{
		$currentLoggedInUserRole = $this->auth->type();
		if (! in_array($currentLoggedInUserRole, $role)) {
			if (Request::method() === 'GET') {
				return redirect(url('/forbidden-403'));
			} else {
				jsonResponse([
					'message' => 'unauthorized 403'
				], 403);
			}
		}
	}
	
	public function normalUserRole($role)
	{
		if (in_array($this->auth->type(), ['admin', 'developer'])) {
			return;
		}
		$currentLoggedInNormalUserRoles = $this->auth->user()['roles'];
		if (! $currentLoggedInNormalUserRoles[$role]) {
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