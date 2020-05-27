<?php

namespace Core\Auth;

use Jasny\Auth;

class User implements Auth\UserInterface
{
	
	private $id;
	private $first_name;
	private $last_name;
	private $username;
	private $type;
	private $password;
	private $created_at;
	private $updated_at;
	private $active;
	
/*	public function __debugInfo() {
		return [
			'id' => $this->id,
			'name' => $this->name,
			'username' => $this->username,
			'type' => $this->type,
			'password' => '********',
			'created_at' => $this->created_at,
			'updated_at' => $this->updated_at,
		];
	}*/
	
//	public static function __set_state($an_array)
//	{
//		return [
//
//			'password' => '********',
//
//		];
//	}
	
	public function getAuthId(): string
	{
		return $this->id;
	}
	
	public function id(): int
	{
		return $this->id;
	}
	
	public function first_name(): string
	{
		return $this->first_name;
	}
	public function last_name(): string
	{
		return $this->last_name;
	}
	public function username(): string
	{
		return $this->username;
	}
	public function type(): string
	{
		return $this->type;
	}
	public function created_at(): string
	{
		return $this->created_at;
	}
	public function updated_at(): string
	{
		return $this->updated_at;
	}
	public function active(): int
	{
		return $this->active;
	}
	
	/**
	 * {@interal This method isn't required by the interface}}.
	 */
	public function changePassword(string $password): void
	{
		$this->password = password_hash($password, PASSWORD_BCRYPT);
	}
	
	public static function hash(string $password)
	{
		return password_hash($password, PASSWORD_BCRYPT);
	}
	
	public function verifyPassword(string $password): bool
	{
		return password_verify($password, $this->password);
	}
	
	public function getAuthChecksum(): string
	{
		return hash('sha256', $this->id . $this->password);
	}
	
	public function getAuthRole(Auth\ContextInterface $context = null): int
	{
		return $this->getRole();
	}
	
	public function requiresMfa() : bool
	{
		return false;
	}
	
	private function getRole() : int
	{
		return array_search($this->type, ['admin', 'developer', 'normal']) + 1;
	}
}