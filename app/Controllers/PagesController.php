<?php

namespace App\Controllers;

class PagesController {
	
	public function index()
	{
		return redirect(url('/dashboard'));
	}
	
	public function notFound()
	{
		return view('404');
	}
	
}