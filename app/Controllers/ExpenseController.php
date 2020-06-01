<?php

namespace App\Controllers;

use App\Traits\userRole;
use Carbon\Carbon;
use Core\Database\QueryBuilder;
use Rakit\Validation\Validator;

class ExpenseController extends Controller {
	
	use userRole;
	
	public function index()
	{
		$this->role('admin');
		return view('expense', [
			'token' => generateCSRFToken(),
		]);
	}
	
	public function save()
	{
		if ( isset($_POST['_token']) && hash_equals($_SESSION['token'], $_POST['_token']) ) {
			$validator = new Validator;
			$validation = $validator->make(
				$_POST, [
				'title'  => 'required|min:3|max:254',
				'type'   => 'required',
				'amount' => 'required|numeric',
				'note'   => 'max:254',
			]);
			$validation->validate();
			if ($validation->fails()) {
				setUrl(url('/expense'));
				return view('expense', [
					'errors' => $validation->errors()->toArray(),
					'token'  => generateCSRFToken(),
					'modal'  => 'creation-modal',
				]);
			}
			if (
			(new QueryBuilder)
				->insert('expenses', [
					'title' => $_POST['title'],
					'type' => $_POST['type'],
					'amount' => $_POST['amount'],
					'note' => $_POST['note'],
					'created_at' => Carbon::now(),
					'updated_at' => Carbon::now(),
				])
			) {
				setUrl(url('/expense'));
				return view('expense', [
					'alerts' => [
						0 => [
							'type'    => 'success',
							'message' => 'Expense successfully created.',
						],
					],
					'token'  => generateCSRFToken(),
				]);
			} else {
				return view('expense', [
					'errors' => [
						'error' => 'something wen wrong please try again',
					],
					'token'  => generateCSRFToken(),
					'modal'  => 'creation-modal',
				]);
			}
		} else {
			return view('expense', [
				'errors' => [
					'error' => 'something wen wrong please try again',
				],
				'token'  => generateCSRFToken(),
				'modal'  => 'creation-modal',
			]);
		}
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
			->table('expenses')
			->get();
		$totalRecords = $totalCount[0]['count'];

## Total number of records with filtering
		$filteredRecords = (new QueryBuilder)
			->count()
			->table('expenses');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$filteredRecords
				->where('title', 'like', $searchTerm)
				->or('type', 'like', $searchTerm)
				->or('amount', 'like', $searchTerm)
				->or('created_at', 'like', $searchTerm);
		}
		$filteredRecords = $filteredRecords->get()[0]['count'];

## Fetch records
		$expenses = (new QueryBuilder)
			->select(['id', 'title', 'type', 'amount', 'created_at'])
			->table('expenses');
		if ($searchTerm !== '') {
			$searchTerm = "%{$searchTerm}%";
			$expenses
				->where('title', 'like', $searchTerm)
				->or('type', 'like', $searchTerm)
				->or('amount', 'like', $searchTerm)
				->or('created_at', 'like', $searchTerm);
		}
		$expenses = $expenses
			->orderBy($columnName, $columnSortOrder)
			->paginate($row, $perpage)
			->get();
		$expenses = array_map(function ($item) {
			$item['action'] = '
<svg class="bi bi-trash-fill cursor-pointer delete-row color-red" id="' . $item['id'] . '" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
</svg><svg class="bi bi-pencil-square cursor-pointer update-row" id="' . $item['id'] . '" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg>';
			return $item;
		}, $expenses);
	
		echo json_encode([
			"draw"                 => intval($draw),
			"iTotalRecords"        => $totalRecords,
			"iTotalDisplayRecords" => $filteredRecords,
			"aaData"                 => $expenses,
		]);
		exit;
	}
	
	public function getRow()
	{
		if ( isset($_POST['_token']) && hash_equals($_SESSION['token'], $_POST['_token']) && isset($_POST['id'])) {
			$expenses = (new QueryBuilder)
				->select(['id', 'title', 'type', 'amount', 'note'])
				->table('expenses')
				->where('id', '=', $_POST['id'])
				->get();
			if (isset($expenses[0])) {
				jsonResponse([
					'expense' => $expenses[0],
				], 200);
			} else {
				jsonResponse([
					'message' => 'Something went wrong! please try again.'
				], 500);
			}
			
		} else {
			jsonResponse([
				'message' => 'Something went wrong! please try again.'
			], 500);
		}
	}
	
	public function update()
	{
		if ( isset($_POST['_token']) && hash_equals($_SESSION['token'], $_POST['_token']) ) {
			$validator = new Validator;
			$validation = $validator->make(
				$_POST, [
				'id'  => 'required|numeric',
				'title'  => 'required|min:3|max:254',
				'type'   => 'required',
				'amount' => 'required|numeric',
				'note'   => 'max:254',
			]);
			$validation->validate();
			if ($validation->fails()) {
				setUrl(url('/expense'));
				return view('expense', [
					'errors' => $validation->errors()->toArray(),
					'token'  => generateCSRFToken(),
					'modal'  => 'creation-modal',
				]);
			}
			if (
			(new QueryBuilder)
				->update('expenses', [
					'title'  => $_POST['title'],
					'type'   => $_POST['type'],
					'amount' => $_POST['amount'],
					'note'   => $_POST['note'],
					'updated_at'   => Carbon::now(),
				])->where('id', '=', $_POST['id'])
				->execute()
			) {
				setUrl(url('/expense'));
				return view('expense', [
					'alerts' => [
						0 => [
							'type'    => 'success',
							'message' => 'Expense successfully Updated.',
						],
					],
					'token'  => generateCSRFToken(),
				]);
			} else {
				return view('expense', [
					'errors' => [
						'error' => 'something wen wrong please try again',
					],
					'token'  => generateCSRFToken(),
					'modal'  => 'creation-modal',
				]);
			}
		} else {
			return view('expense', [
				'errors' => [
					'error' => 'something wen wrong please try again',
				],
				'token'  => generateCSRFToken(),
				'modal'  => 'creation-modal',
			]);
		}
	}
	
	public function delete()
	{
		if ( isset($_POST['_token']) && hash_equals($_SESSION['token'], $_POST['_token']) && isset($_POST['id'])) {
			if (
			(new QueryBuilder)
				->delete('expenses')
				->where('id', '=', $_POST['id'])
				->execute()
			) {
				jsonResponse([
					'success' => 'You successfully deleted the row'
				], 200);
			} else {
				jsonResponse([
					'message' => 'Something went wrong! please try again.'
				], 500);
			}
		} else {
			jsonResponse([
				'message' => 'Something went wrong! please try again.'
			], 500);
		}
	}
}