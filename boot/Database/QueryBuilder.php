<?php

namespace Core\Database;

use Carbon\Carbon;
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
	
	public function totalSum($table, $column)
	{
		$column = preventSQLInjections($column);
		$availableTables = ['users', 'sessions', 'expenses'];
		if (in_array($table, $availableTables)) {
			$totalExpense = $this->DB->prepare('SELECT SUM( ' . $column . ' ) AS total FROM ' . $table);
			$totalExpense->execute();
			return $totalExpense->fetch(PDO::FETCH_ASSOC)['total'];
		}
		throw new Exception('wrong input data');
	}
	
	public function sumOfLastX($table, $column, $measuring, $count = 1)
	{
		$column = preventSQLInjections($column);
		$measuring = preventSQLInjections($measuring);
		$count = preventSQLInjections($count);
		$availableTables = ['users', 'sessions', 'expenses', 'incomes'];
		if (in_array($table, $availableTables)) {
			$totalExpense = $this->DB->prepare('SELECT SUM( ' . $column . ' ) AS total FROM ' . $table . ' WHERE `created_at` >= NOW() - INTERVAL ' . $count . ' ' . $measuring . ' ;');
			$totalExpense->execute();
			return $totalExpense->fetch(PDO::FETCH_ASSOC)['total'];
		}
		throw new Exception('wrong input data');
	}
	public function sumOfXFromTo($table, $column, $from, $to = null)
	{
		$column = preventSQLInjections($column);
		$from = Carbon::parse($from);
		$to = isset($to) ? Carbon::parse($to) : Carbon::now() ;
		$availableTables = ['users', 'sessions', 'expenses', 'incomes'];
		if (in_array($table, $availableTables)) {
			$totalExpense = $this->DB->prepare('SELECT SUM( ' . $column . ' ) AS total FROM ' . $table . ' WHERE `created_at` > \'' . $from . '\' AND `created_at` < \'' . $to . '\' ;');
			$totalExpense->execute();
			return $totalExpense->fetch(PDO::FETCH_ASSOC)['total'];
		}
		throw new Exception('wrong input data');
	}
	

	
}




