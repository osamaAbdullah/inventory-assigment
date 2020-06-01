<?php

namespace Core\Abstracts;

use Core\Auth\AuthStorage;
use Core\Interfaces\Authenticate;
use Exception;
use Jasny\Auth\Authz\Levels;
use Jasny\Auth\Auth as Authentication;
use function redirect;
use function url;

abstract class Auth implements Authenticate {
	
	protected $auth;
	
	public function __construct()
	{
		if (! $this->auth) {
			$this->initialize();
		}
	}
	
	protected function initialize()
	{
		$levels = new Levels(['user' => 1, 'developer' => 2, 'admin' => 3]);
		$auth = new Authentication($levels, new AuthStorage());
		if(!isset($_SESSION)) {
			session_start();
		}
		$auth->initialize();
		$this->auth = $auth;
	}
	
	public function isLoggedIn()
	{
		return $this->auth->isLoggedIn();
	}
	
	public abstract function logout();
	
	public function user()
	{
		try {
			$user = $this->auth->user();
		} catch (Exception $exception) {
			return redirect(url('/login'));
		}
		
		return [
			'id' => $user->id(),
			'name' => $user->first_name() .' '. $user->last_name(),
			'username' => $user->username(),
			'type' => $user->type(),
			'roles' => $user->roles(),
			'active' => $user->active(),
		];
	}
	
	public function isActive()
	{
		return $this->user()['active'];
	}
	
	public function type()
	{
		return $this->user()['type'];
	}
}