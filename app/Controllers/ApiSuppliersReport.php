<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Core\Database\QueryBuilder;

class ApiSuppliersReport {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function getAllSuppliers()
	{
		$query = new QueryBuilder;
		$perpage = $_REQUEST['perpage'] ?? 25;
		$page = $_REQUEST['page'] ?? 1;
		$suppliers = $query
			->select(['id', 'name', 'email', 'phone_number', 'address'])
			->table('customers')
			->where('type', '=', 'supplier')
			->paginate(($page === 1 ? 0 : (--$page * $perpage)), intval($perpage))
			->get();
		jsonResponse([
			'suppliers' => $suppliers,
			'page' => $page,
			'perpage' => $perpage,
		], 200);
	}
}