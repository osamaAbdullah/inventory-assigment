<?php

namespace Core;

class App {
	
	private static $data;
	
	public static function bind($key, $value)
	{
		static::$data[$key] = $value;
	}
	
	public static function resolve($key)
	{
		return static::$data[$key];
	}
	
	public static function controllersNamespace()
	{
		return 'App\\Controllers\\';
	}
	
	public static function rootPath()
	{
		return __DIR__ . '\\..';
	}
	
	public static function boot()
	{
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		App::bind('jwt', require App::rootPath() . '/config/jwt.php');
		
		Router::register()->trigger();
	}
	
	
}