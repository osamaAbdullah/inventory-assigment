<?php

namespace Core;

use Exception;
use function redirect;
use function url;

class Router {
	
	public function __construct()
	{
	
	}
	
	private static $routes = [
		'GET' => [],
		'POST' => [],
		'PUT' => [],
		'DELETE' => [],
	];
	
	public static function register()
	{
		require_once '../app/Routes/web.php';
		return new static;
	}
	
	public static function get($uri, $controller)
	{
		static::$routes['GET'][trim($uri, '/')] = $controller;
	}
	
	public static function post($uri, $controller)
	{
		static::$routes['POST'][trim($uri, '/')] = $controller;
	}
	
	public function trigger()
	{
		if (array_key_exists(Request::uri(), static::$routes[Request::method()])) {
			return $this->fireAction(
				...
				explode(
					'@',
					static::$routes[Request::method()][Request::uri()]
				)
			);
		}
		
		return redirect(url('/page-not-found'));
//		throw new Exception('no Routes defined for this uri');
	}
	
	private function fireAction($controller, $action)
	{
		$controller = App::controllersNamespace() . $controller;
		$controller = new $controller;
		if (method_exists($controller, $action)) {
			return $controller->$action();
		} else {
			throw new Exception('method '.$action.' does not exist on '. get_class($controller));
		}
	}
	
}