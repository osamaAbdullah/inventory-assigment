<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Carbon\Carbon;
use Core\Database\QueryBuilder;

class ApiCustomersReport {
	
	use VerifyToken;
	
	public function __construct()
	{
		
		$this->isLoggedIn();
	}
	
	public function getAllCustomers()
	{
		
		$query = new QueryBuilder;
		if ( isset($_REQUEST['from']) ) {
			$from = Carbon::parse($_REQUEST['from'])->toDateTimeString();
			$to = isset($_REQUEST['to']) ? Carbon::parse($_REQUEST['to'])->toDateTimeString() : Carbon::now()->toDateTimeString();
			jsonResponse([
				'customers' => $query
					->select(['id', 'name', 'email', 'phone_number', 'address'])
					->table('customers')
					->where('type', '=', 'customer')
					->andWhereBetween($from, $to)
					->get(),
			], 200);
		} else {
			$count = $_REQUEST['count'] ?? 1;
			
			$hour = (new QueryBuilder)
				->select(['id', 'name', 'email', 'phone_number', 'address'])
				->table('customers')->where('type', '=', 'customer');
			$day = (new QueryBuilder)
				->select(['id', 'name', 'email', 'phone_number', 'address'])
				->table('customers')->where('type', '=', 'customer');
			$week = (new QueryBuilder)
				->select(['id', 'name', 'email', 'phone_number', 'address'])
				->table('customers')->where('type', '=', 'customer');
			$month = (new QueryBuilder)
				->select(['id', 'name', 'email', 'phone_number', 'address'])
				->table('customers')->where('type', '=', 'customer');
			$year = (new QueryBuilder)
				->select(['id', 'name', 'email', 'phone_number', 'address'])
				->table('customers')->where('type', '=', 'customer');
			
			
			jsonResponse([
				'last_' . $count . '_hour_customer'  => $hour->andLastXX('HOUR', $count)->get(),
				'last_' . $count . '_day_customer'   => $day->andLastXX('DAY', $count)->get(),
				'last_' . $count . '_week_customer'  => $week->andLastXX('WEEK', $count)->get(),
				'last_' . $count . '_month_customer' => $month->andLastXX('MONTH', $count)->get(),
				'last_' . $count . '_year_customer'  => $year->andLastXX('YEAR', $count)->get(),
			], 200);
		}
	}
}