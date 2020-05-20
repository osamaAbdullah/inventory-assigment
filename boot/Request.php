<?php

namespace Core;

class Request {
	
	public static function uri()
	{
		$uri = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');
		return trim($uri, 'projects/inventory-assignment/public');
	}
	
	public static function method()
	{
		return $_SERVER['REQUEST_METHOD'];
	}
	
}