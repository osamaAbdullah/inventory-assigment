<?php

namespace App\Controllers;


use Core\Auth\AuthStorage;
use Core\Auth\User;
use Core\Database\QueryBuilder;
use function dd;
use Jasny\Auth\Auth;
use Jasny\Auth\Authz\Levels;

class TestsController {
	
	public function test()
	{
		$levels = new Levels(['user' => 1, 'developer' => 10, 'admin' => 100]);
		$auth = new Auth($levels, new AuthStorage());
		
		session_start();
		$auth->initialize();
		
		dd($auth->time());
		
		return view('home');
	}
	
}