<?php

namespace App\Controllers;



use Core\Auth\User;
use Core\Database\QueryBuilder;
use function dd;


class TestsController {
	
	public function test()
	{
		
		
		
		dd(User::hash('11111111'));
		
		return view('home');
	}
	
}