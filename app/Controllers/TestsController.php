<?php

namespace App\Controllers;

use function array_push;
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
			->select(['id', 'name', 'email', 'phone_number', 'address'])
			->table('customers')
			->where('type', '=', 'customer')
			->and('name', 'like', 'hotmail')
			->or('email', 'like', '%hotmail%')
			->or('phone_number', 'like', 'hotmail')
			->or('address', 'like', 'hotmail')
			->get();
		dd($customers);
	
	}
	
}