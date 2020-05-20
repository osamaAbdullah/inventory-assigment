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
	
	
}