<?php

namespace App\Controllers;

use Carbon\Carbon;
use Core\Database\QueryBuilder;
use Rakit\Validation\Validator;

class ExpenseController extends Controller {
	
	public function index()
	{
		
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
	
}