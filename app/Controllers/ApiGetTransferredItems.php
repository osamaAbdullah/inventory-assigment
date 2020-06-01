<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Core\Database\QueryBuilder;
use Rakit\Validation\Validator;

class ApiGetTransferredItems {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function getTransferredItemsBetweenTowInventories()
	{
		
		$validator = new Validator;
		$validation = $validator->make(
			$_REQUEST, [
			'sourceInventoryId'      => 'required|numeric',
			'destinationInventoryId' => 'required|numeric',
		]);
		$validation->validate();
		if ( $validation->fails() ) {
			jsonResponse([
				'errors' => $validation->errors()->toArray(),
			], 422);
		}
		$query = (new QueryBuilder)
			->rawSelectQuery('
									SELECT items.*, itd.quantity AS quantity, itd.updated_at AS transferred_at FROM items
									JOIN items_transfer_detail itd ON items.id = itd.item_id
									JOIN items_transfer it ON itd.transfer_id = it.id
									WHERE it.source_inventory_id = :sourceInventoryId
									AND it.destination_inventory_id =  :destinationInventoryId
									AND itd.request = \'transferred\' ;', [
				':sourceInventoryId'      => 1,
				':destinationInventoryId' => 10,
			]);
		jsonResponse([
			'transferredItems' => $query,
		], 200);
	}
}