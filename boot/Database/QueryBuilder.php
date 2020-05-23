<?php

namespace Core\Database;

use Exception;
use PDO;

class QueryBuilder {
	
	/**
	 * @var PDO
	 */
	private $DB;
	
	public function __construct()
	{
		$this->DB = Connection::connect();
	}
	
	public function all(string $table)
	{
		$availableTables = ['users', 'sessions'];
		if (in_array($table, $availableTables)) {
			$query = $this->DB->prepare('SELECT * FROM ' . $table);
			$query->execute();
			return $query->fetchAll(PDO::FETCH_ASSOC);
		}
		throw new Exception('wrong input data');
	}
	
	
}




