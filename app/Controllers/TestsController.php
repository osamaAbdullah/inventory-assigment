<?php

namespace App\Controllers;

use function array_push;
use Core\App;
use function import;
use function url;
use function user;
use function var_dump;

class TestsController {
	
	public function test()
	{
		var_dump(user()['name']);
		
		exit;
		
		dd();
		
		echo 'osama';
	}
	
}