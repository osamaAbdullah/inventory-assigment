<?php

namespace Core\Database;

use Core\App;
use PDO;
use PDOException;

class Connection {
	
	public static function connect()
	{
		$config = (require App::rootPath() . '/config/Database.php')['Database'];
		try {
			$db = new PDO(
				"{$config['connection']};dbname={$config['name']}",
				$config['username'],
				$config['password'],
				$config['options']
			);
		} catch (PDOException $exception) {
			die($exception->getMessage());
		}
		return $db;
	}
	
}




