<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Carbon\Carbon;
use Core\Database\QueryBuilder;

class ApiTransactionsReport {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function getTotalIncomeExpense()
	{
		$query = new QueryBuilder;
		if (isset($_POST['from'])) {
			$from = Carbon::parse($_POST['from'])->toDateTimeString();
			$to = isset($_POST['to']) ? Carbon::parse($_POST['to'])->toDateTimeString() : Carbon::now()->toDateTimeString();
			jsonResponse([
				'total_expenses' => $query->sumOfXFromTo('expenses', 'amount', $from, $to) ?? 0,
				'total_incomes' => $query->sumOfXFromTo('incomes', 'amount', $from, $to) ?? 0,
			], 200);
		} else {
			$count = $_POST['count'] ?? 1;
			jsonResponse([
				'last_hour_expense' => $query->sumOfLastX('expenses', 'amount', 'HOUR', $count) ?? 0,
				'last_day_expense' => $query->sumOfLastX('expenses', 'amount', 'DAY', $count) ?? 0,
				'last_week_expense' => $query->sumOfLastX('expenses', 'amount', 'WEEK', $count) ?? 0,
				'last_month_expense' => $query->sumOfLastX('expenses', 'amount', 'MONTH', $count) ?? 0,
				'last_year_expense' => $query->sumOfLastX('expenses', 'amount', 'YEAR', $count) ?? 0,
				'last_hour_income' => $query->sumOfLastX('incomes', 'amount', 'HOUR', $count) ?? 0,
				'last_day_income' => $query->sumOfLastX('incomes', 'amount', 'DAY', $count) ?? 0,
				'last_week_income' => $query->sumOfLastX('incomes', 'amount', 'WEEK', $count) ?? 0,
				'last_month_income' => $query->sumOfLastX('incomes', 'amount', 'MONTH', $count) ?? 0,
				'last_year_income' => $query->sumOfLastX('incomes', 'amount', 'YEAR', $count) ?? 0,
			], 200);
		}
	}
}