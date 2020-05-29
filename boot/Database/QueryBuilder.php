<?php

namespace Core\Database;

use function array_push;
use Carbon\Carbon;
use function dd;
use Exception;
use function explode;
use function in_array;
use PDO;
use function preventSQLInjections;
use function sizeof;
use function uniqid;

class QueryBuilder {
	
	/**
	 * @var PDO
	 */
	private $DB;
	private $query;
	private $params = [];
	const OPERATOR = ['=', '>', '<', '>=', '<=', '<>'];
	const AVAILABLE_TABLES = [
		'users',
		'sessions',
		'expenses',
		'customers',
	];

	public function __construct()
	{
		$this->DB = Connection::connect();
	}
	
	public function select($columns)
	{
		$this->query = 'SELECT ';
		
		if ($columns === '*') {
			$this->query .= ' * ';
		} else {
			foreach ($columns as $key => $value) {
				if (sizeof($columns) !== ++$key) {
					$this->query .= ' `' . preventSQLInjections($value) . '`, ';
				} else {
					$this->query .= ' `' . preventSQLInjections($value) . '` ';
				}
			}
		}
		return $this;
	}
	
	public function table(string $table)
	{
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$this->query .= ' FROM `' . $table . '` ';
			return $this;
		}
		throw new Exception('table "' . $table . '" not found');
	}
	
	public function where(string $column, string $operator = '=', $value)
	{
		if (in_array($operator, static::OPERATOR)) {
			$param = ':where' . uniqid();
			$this->query .= ' WHERE `' . preventSQLInjections($column) . '` ' .
				$operator . ' ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} elseif ($operator === 'like') {
			$param = ':where' . uniqid();
			$this->query .= ' WHERE `' . preventSQLInjections($column) . '` like ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} else {
			throw new Exception('un available operator');
		}
	}
	
	public function and(string $column, string $operator = '=', $value)
	{
		if (in_array($operator, static::OPERATOR)) {
			$param = ':where' . uniqid();
			$this->query .= ' AND `' . preventSQLInjections($column) . '` ' .
				$operator . ' ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} elseif ($operator === 'like') {
			$param = ':where' . uniqid();
			$this->query .= ' AND `' . preventSQLInjections($column) . '` like ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} else {
			throw new Exception('un available operator');
		}
	}
	
	public function or(string $column, string $operator = '=', $value)
	{
		if (in_array($operator, static::OPERATOR)) {
			$param = ':where' . uniqid();
			$this->query .= ' OR `' . preventSQLInjections($column) . '` ' .
				$operator . ' ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} elseif ($operator === 'like') {
			$param = ':where' . uniqid();
			$this->query .= ' OR `' . preventSQLInjections($column) . '` like ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} else {
			throw new Exception('un available operator');
		}
	}
	
	public function orderBy(string $column, string $order = 'ASC')
	{
		$this->query .= ' ORDER BY ' . preventSQLInjections($column) . ' ' . preventSQLInjections($order) . ' ';
		return $this;
	}
	
	public function paginate(int $limit, int $offset)
	{
		$this->query .= "  LIMIT $limit, $offset ;";
		return $this;
	}
	
	public function get()
	{
		$query = $this->DB->prepare($this->query);
		$query->execute($this->params);
		return $query->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public function toSql()
	{
		return $this->query;
	}
	
	public function count()
	{
		$this->query = 'SELECT COUNT(`id`) AS count ';
		return $this;
	}
	
	public function all(string $table)
	{
//		$query = $this->DB->prepare('SELECT * FROM ' . $table);
//		$query->queryString .= ' where id = 1';
//		return $query->queryString;
		
		
		
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$query = $this->DB->prepare('SELECT * FROM ' . $table);
			$query->execute();
			return $query->fetchAll(PDO::FETCH_ASSOC);
		}
		throw new Exception('wrong input data');
	}
	
	public function totalSum($table, $column)
	{
		$column = preventSQLInjections($column);
		if (in_array($table, static::AVAILABLE_TABLES)) {
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
		if (in_array($table, static::AVAILABLE_TABLES)) {
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
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$totalExpense = $this->DB->prepare('SELECT SUM( ' . $column . ' ) AS total FROM ' . $table . ' WHERE `created_at` > \'' . $from . '\' AND `created_at` < \'' . $to . '\' ;');
			$totalExpense->execute();
			return $totalExpense->fetch(PDO::FETCH_ASSOC)['total'];
		}
		throw new Exception('wrong input data');
	}
	

	
}




