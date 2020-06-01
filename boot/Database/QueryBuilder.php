<?php

namespace Core\Database;

use Carbon\Carbon;
use Exception;
use PDO;

class QueryBuilder {
	
	private $DB;
	private $query;
	private $params = [];
	const OPERATOR = ['=', '>', '<', '>=', '<=', '<>'];
	const AVAILABLE_TABLES = [
		'users',
		'pictures',
		'password_resets',
		'items_transfer_detail',
		'items_transfer',
		'items_sell',
		'items_receive_detail',
		'items_receive',
		'items_receive_picture',
		'inventories',
		'incomes',
		'expenses',
		'customers',
		'customers_log',
		'capital',
		'items',
		// views
		'items_receive_view',
		
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
	
	public function whereAfterBrackets(string $column, string $operator = '=', $value)
	{
		if (in_array($operator, static::OPERATOR)) {
			$param = ':where' . uniqid();
			$this->query .= ' `' . preventSQLInjections($column) . '` ' .
				$operator . ' ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} elseif ($operator === 'like') {
			$param = ':where' . uniqid();
			$this->query .= ' `' . preventSQLInjections($column) . '` like ' . $param . ' ';
			$this->params[$param] = $value;
			return $this;
		} else {
			throw new Exception('un available operator');
		}
	}
	
	public function andOpenBrackets()
	{
		$this->query .= ' AND (';
		return $this;
	}
	
	public function orOpenBrackets()
	{
		$this->query .= ' AND (';
		return $this;
	}
	
	public function closeBrackets()
	{
		$this->query .= ' )';
		return $this;
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
	
	public function paginate(int $start, int $perpage)
	{
		$this->query .= "  LIMIT $start, $perpage ;";
		return $this;
	}
	
	public function get()
	{
		$query = $this->DB->prepare($this->query);
		$query->execute($this->params);
		return $query->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public function execute()
	{
		$query = $this->DB->prepare($this->query);
		return $query->execute($this->params);
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
	
	public function whereBetween(string $fromDate,string $toDate = null)
	{
		$toDate = isset($toDate) ? $toDate : Carbon::now()->toDateTimeString() ;
		$this->query .= ' WHERE `created_at` > :from_date AND `created_at` < :to_date ;';
		$this->params[':from_date'] = $fromDate;
		$this->params[':to_date'] = $toDate;
		return $this;
	}
	
	public function andWhereBetween(string $fromDate,string $toDate = null)
	{
		$toDate = isset($toDate) ? $toDate : Carbon::now()->toDateTimeString() ;
		$this->query .= ' AND  `created_at` > :from_date AND `created_at` < :to_date ;';
		$this->params[':from_date'] = $fromDate;
		$this->params[':to_date'] = $toDate;
		return $this;
	}
	
	public function lastXX(string $measuring,int $count = 1)
	{
		$measuring = preventSQLInjections($measuring);
		$count = preventSQLInjections($count);
		$this->query .= ' WHERE `created_at` >= NOW() - INTERVAL ' . $count . ' ' . $measuring . ' ';
		return $this;
	}
	
	public function andLastXX(string $measuring,int $count = 1)
	{
		$measuring = preventSQLInjections($measuring);
		$count = preventSQLInjections($count);
		$this->query .= ' AND `created_at` >= NOW() - INTERVAL ' . $count . ' ' . $measuring . ' ';
		return $this;
	}
	
	public function insert(string $table, array $keyValues)
	{
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$index = 1;
			$keys = '';
			$values = '';
			$this->query .= 'INSERT INTO `' . $table . '` ';
			foreach ($keyValues as $key => $value) {
				$key = preventSQLInjections($key);
				$param = ':where' . uniqid();
				if (sizeof($keyValues) !== $index) {
					$keys .= " `{$key}`, ";
					$values .= " {$param}, ";
					$this->params[$param] = $value;
				} else {
					$keys .= " `{$key}` ";
					$values .= " {$param} ";
					$this->params[$param] = $value;
				}
				$index++;
			}
			$this->query .= " ( $keys )  VALUES ( $values ) ";
			return $this->execute();
		}
		throw new Exception('table "' . $table . '" not found');
	}
	
	public function update(string $table, array $keyValues)
	{
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$index = 1;
			$this->query .= 'UPDATE `' . $table . '` SET ';
			foreach ($keyValues as $key => $value) {
				$param = ':value' . uniqid();
				if (sizeof($keyValues) !== $index) {
					$this->query .= ' ' . preventSQLInjections($key) . ' = ' . $param . ', ';
					$this->params[$param] = $value;
				} else {
					$this->query .= ' ' . preventSQLInjections($key) . ' = ' . $param . ' ';
					$this->params[$param] = $value;
				}
				$index++;
			}
			
			return $this;
		}
		throw new Exception('table "' . $table . '" not found');
	}
	
	public function delete(string $table)
	{
		if (in_array($table, static::AVAILABLE_TABLES)) {
			$this->query .= 'DELETE FROM `' . $table . '` ';
			return $this;
		}
		throw new Exception('table "' . $table . '" not found');
	}
	
}