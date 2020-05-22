<?php

namespace Core\Database;

use Core\App;
use PDO;
use PDOException;

class Connection {
	
	public static function connect()
	{
		$bdConf = (require App::rootPath() . '/config/Database.php')['Database'];
		try {
			$db = new PDO(
				"{$bdConf['connection']};dbname={$bdConf['name']}",
				$bdConf['username'],
				$bdConf['password'],
				$bdConf['options']
			);
		} catch (PDOException $exception) {
			die($exception->getMessage());
		}
		return $db;
	}
	
}




