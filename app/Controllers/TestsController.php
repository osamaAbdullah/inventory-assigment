<?php

namespace App\Controllers;



use Core\Auth\User;
use Core\Database\QueryBuilder;
use function dd;


class TestsController {
	
	public function test()
	{
		
		
		
		dd(isLoggedIn());
		
		return view('home');
	}
	
}