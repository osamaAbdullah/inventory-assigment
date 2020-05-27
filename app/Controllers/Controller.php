<?php

namespace App\Controllers;

class Controller {
	
	public function __construct()
	{
		if ( ! isLoggedIn()) {
			return redirect(url('/login'));
		}
	}
	
}