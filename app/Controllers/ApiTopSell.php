<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Carbon\Carbon;
use Carbon\CarbonInterval;
use Core\Database\QueryBuilder;

class ApiTopSell {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function get()
	{
		$count = $_REQUEST['count'] ?? 1;
		jsonResponse([
			'last_' . $count . '_hour' => $this->getLastXX(CarbonInterval::hours($count)),
			'last_' . $count . '_day' => $this->getLastXX(CarbonInterval::days($count)),
			'last_' . $count . '_week' => $this->getLastXX(CarbonInterval::weeks($count)),
			'last_' . $count . '_month' => $this->getLastXX(CarbonInterval::months($count)),
			'last_' . $count . '_year' => $this->getLastXX(CarbonInterval::years($count)),
		], 200);
	}
	
	private function getLastXX($interval)
	{
		return (new QueryBuilder)
			->select('*')
			->table('items_sell_view')
			->where('sold_at', '>=', Carbon::now()->sub($interval)->toDateTimeString())
			->orderBy('quantity', 'DESC')
			->paginate(0, 10)
			->get();
	}
	
}