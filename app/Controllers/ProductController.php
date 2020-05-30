<?php

namespace App\Controllers;

use Core\Database\QueryBuilder;

class ProductController extends Controller {
	
	public function index()
	{
		return view('product');
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
			->table('items')
			->get();
		$totalRecords = $totalCount[0]['count'];

## Total number of records with filtering
		$filteredRecords = (new QueryBuilder)
			->count()
			->table('items');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$filteredRecords
				->where('name', 'like', $searchTerm)
				->or('color', 'like', $searchTerm)
				->or('code', 'like', $searchTerm)
				->or('manufacture', 'like', $searchTerm)
				->or('classification', 'like', $searchTerm);
		}
		$filteredRecords = $filteredRecords->get()[0]['count'];

## Fetch records
		$items = (new QueryBuilder)
			->select(['id', 'name', 'color', 'code', 'manufacture', 'classification'])
			->table('items');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$items
				->where('name', 'like', $searchTerm)
				->or('color', 'like', $searchTerm)
				->or('code', 'like', $searchTerm)
				->or('manufacture', 'like', $searchTerm)
				->or('classification', 'like', $searchTerm);
		}
		$items = $items
			->orderBy($columnName, $columnSortOrder)
			->paginate($row, $perpage)
			->get();
		
		echo json_encode([
			"draw"                 => intval($draw),
			"iTotalRecords"        => $totalRecords,
			"iTotalDisplayRecords" => $filteredRecords,
			"aaData"                 => $items,
		]);
		exit;
	}
	
}