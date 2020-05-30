<?php

namespace App\Controllers;

use function array_push;
use Carbon\Carbon;
use Core\App;
use Core\Database\QueryBuilder;
use function import;
use function url;
use function user;
use function var_dump;

class TestsController {
	
	public function test()
	{

		$customers = (new QueryBuilder)
			->delete('expenses')
			->where('id', '=', '1')
			->execute();
		dd($customers);
		
//		$query = (new QueryBuilder)
//			->insert('password_resets', [
//				'username'   => 'aaaaaaaaaaaaaaaa',
//				'token'      => 'aaaaaaaaaaaaaaaaa',
//				'created_at' => Carbon::now(),
//			]);
//
//		dd($query);
	
	}
	
}