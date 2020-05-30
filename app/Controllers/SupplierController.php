<?php

namespace App\Controllers;

use Core\Database\QueryBuilder;

class SupplierController extends Controller {
	
	public function index()
	{
		return view('supplier');
	}
	
	public function get()
	{
		
		## Read value
		$draw = $_REQUEST['draw'];
		$row = $_REQUEST['start'];
		$perpage = $_REQUEST['length']; // Rows display per page
		$columnIndex = $_REQUEST['order'][0]['column']; // Column index
		$columnName = $_REQUEST['columns'][$columnIndex]['data']; // Column name
		$columnSortOrder = $_REQUEST['order'][0]['dir']; // asc or desc
		$searchTerm = $_REQUEST['search']['value']; // Search value

## Total number of records without filtering
		$totalCount = (new QueryBuilder)
			->count()
			->table('customers')
			->get();
		$totalRecords = $totalCount[0]['count'];

## Total number of records with filtering
		$filteredRecords = (new QueryBuilder)
			->count()
			->table('customers')
			->where('type', '=', 'supplier');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$filteredRecords
				->andOpenBrackets()
				->whereAfterBrackets('name', 'like', $searchTerm)
				->or('email', 'like', $searchTerm)
				->or('phone_number', 'like', $searchTerm)
				->or('address', 'like', $searchTerm)
				->closeBrackets();
		}
		$filteredRecords = $filteredRecords->get()[0]['count'];
## Fetch records
		$suppliers = (new QueryBuilder)
			->select(['id', 'name', 'email', 'phone_number', 'address'])
			->table('customers')
			->where('type', '=', 'supplier');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$suppliers
				->andOpenBrackets()
				->whereAfterBrackets('name', 'like', $searchTerm)
				->or('email', 'like', $searchTerm)
				->or('phone_number', 'like', $searchTerm)
				->or('address', 'like', $searchTerm)
				->closeBrackets();
		}
		$suppliers = $suppliers
			->orderBy($columnName, $columnSortOrder)
			->paginate($row, $perpage)
			->get();
	
		echo json_encode([
			"draw"                 => intval($draw),
			"iTotalRecords"        => $totalRecords,
			"iTotalDisplayRecords" => $filteredRecords,
			"aaData"                 => $suppliers,
		]);
		
	}
}