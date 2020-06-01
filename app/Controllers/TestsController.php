<?php

namespace App\Controllers;

use Core\Database\QueryBuilder;

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