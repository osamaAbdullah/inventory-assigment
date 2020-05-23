<?php

namespace Core\Auth;

use Core\Database\Connection;
use function dd;
use function intval;
use Jasny\Auth;
use PDO;

class AuthStorage implements Auth\StorageInterface
{
	private $DB;
	public function __construct()
	{
		$this->DB = Connection::connect();
	}
	
	/**
	 * Fetch a user by ID
	 */
	public function fetchUserById(string $id): ?Auth\UserInterface
	{
		$query = $this->DB->prepare('SELECT * FROM users WHERE id = :id ;');
		$query->execute([':id' => intval($id)]);
		return $query->fetchAll(PDO::FETCH_CLASS, User::class)[0];
	}
	
	/**
	 * Fetch a user by username
	 */
	public function fetchUserByUsername(string $username): ?Auth\UserInterface
	{
		$query = $this->DB->prepare('SELECT * FROM users WHERE username = :username ;');
		$query->execute([':username' => $username]);
		return $query->fetchAll(PDO::FETCH_CLASS, User::class)[0];
	}
	
	/**
	 * Fetch the context by ID.
	 */
	public function fetchContext(string $id) : ?Auth\ContextInterface
	{
		return null;
	}
	
	/**
	 * Get the default context of the user.
	 */
	public function getContextForUser(Auth\UserInterface $user) : ?Auth\ContextInterface
	{
		return null;
	}
}