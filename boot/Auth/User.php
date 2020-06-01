<?php

namespace Core\Auth;

use Core\Database\QueryBuilder;
use Jasny\Auth;

class User implements Auth\UserInterface
{
	private $id;
	private $first_name;
	private $last_name;
	private $username;
	private $email;
	private $type;
	private $roles;
	private $password;
	private $created_at;
	private $updated_at;
	private $active;
	
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
	public function email(): string
	{
		return $this->email;
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
	public function roles(): array
	{
		return (array) json_decode($this->roles);
	}
	
	public function changePassword(string $password): bool
	{
		$this->password = password_hash($password, PASSWORD_BCRYPT);
		return (new QueryBuilder)
			->update('users', [
				'password' => $this->password
			])
			->where('username', '=', $this->username)
			->execute();
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