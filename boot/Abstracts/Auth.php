<?php

namespace Core\Abstracts;

use Core\Auth\AuthStorage;
use Core\Interfaces\Authenticate;
use Jasny\Auth\Authz\Levels;
use Jasny\Auth\Auth as Authentication;


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
		session_start();
		$auth->initialize();
		$this->auth = $auth;
	}
	
	public function isLoggedIn()
	{
		return $this->auth->isLoggedIn();
	}
	
	public abstract function logout();
	
}