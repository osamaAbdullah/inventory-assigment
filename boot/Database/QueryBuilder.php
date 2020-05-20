<?php

namespace Core\Database;

use PDO;

class QueryBuilder {
	
	/**
	 * @var PDO
	 */
	private $db;
	
	public function __construct()
	{
		$this->db = Connection::connect();
	}
	
	public function all(string $table)
	{
		$query = $this->db->prepare("select * from {$table}");
		$query->execute();
		return $query->fetchAll(PDO::FETCH_ASSOC);
	}
	
	
}




