<?php

namespace App\Controllers;

use Core\Request;

class Controller {
	
	public function __construct()
	{
		if ( ! isLoggedIn()) {
			return redirect(url('/login'));
		}
		if (! (new AuthController)->isActive()) {
			if (Request::method() === 'GET') {
				return redirect(url('/forbidden-403'));
			} else {
				jsonResponse([
					'message' => 'unauthorized 403'
				], 403);
			}
		}
	}
	

	
}