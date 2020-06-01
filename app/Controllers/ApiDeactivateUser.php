<?php

namespace App\Controllers;

use App\Traits\VerifyToken;
use Core\Database\QueryBuilder;

class ApiDeactivateUser {
	
	use VerifyToken;
	
	public function __construct()
	{
		$this->isLoggedIn();
	}
	
	public function deactivate()
	{
		if (isset($_POST['id']) && ($id = intval($_POST['id']))) {
			if (
			(new QueryBuilder)->update('users', [
				'active' => 0,
			])->where('id', '=', $id)
				->execute()
			) {
				jsonResponse([
					'success' => 'You successfully deactivated the user.',
				], 200);
			} else {
				jsonResponse([
					'message' => 'Whoops! looks like something wen wrong please try again',
				], 500);
			}
		} else {
			jsonResponse([
				'errors' => [
					'id' => 'the id of user that you want to deactivate is required',
				]
			], 422);
		}
	}
}