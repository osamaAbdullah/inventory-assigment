<?php

namespace App\Controllers;



use Core\Auth\User;


class ImportExportController extends Controller {
	
	public function test()
	{
		
		
		
		dd(User::hash('11111111'));
		
		return view('home');
	}
	
}