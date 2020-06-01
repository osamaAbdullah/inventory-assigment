<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Carbon\Carbon;
use Core\Database\QueryBuilder;
use Rakit\Validation\Validator;

class ApiItemsExpirationReport {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function getExpired()
	{
		$query = (new QueryBuilder())
			->select('*')
			->table('items_receive_view')
			->where('expiration_date', '<=', Carbon::now()->toDateTimeString())
			->orderBy('expiration_date')
			->get();
		jsonResponse([
			'expired_items' => $query,
		], 200);
	}
	
	public function save()
	{
		$validator = new Validator;
		$validation = $validator->make(
			$_POST, [
			'title'  => 'required|min:3|max:254',
			'type'   => 'required',
			'amount' => 'required|numeric',
			'note'   => 'max:254',
		]);
		$validation->validate();
		if ( $validation->fails() ) {
			jsonResponse([
				'errors' => $validation->errors()->toArray(),
			], 422);
		}
		if (
		(new QueryBuilder)
			->insert('expenses', [
				'title'      => $_POST['title'],
				'type'       => $_POST['type'],
				'amount'     => $_POST['amount'],
				'note'       => $_POST['note'] ?? '',
				'updated_at' => Carbon::now(),
			])
		) {
			jsonResponse([
				'message' => 'You successfully created an expense',
			], 200);
		} else {
			jsonResponse([
				'message' => 'Whoops! something went wrong please try again',
			], 500);
		}
		
	}
	
}