<?php

namespace App\Controllers;

use function array_pop;
use function basename;
use Core\Database\QueryBuilder;
use function dd;
use function end;
use function explode;

class PagesController {
	
	public function index()
	{
		return view('home');
	}
	
	public function notFound()
	{
		return view('404');
	}
	
}