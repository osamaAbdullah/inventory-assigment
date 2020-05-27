<?php

namespace Core\Auth;

use Core\Database\Connection;
use Exception;
use function htmlspecialchars;
use Jasny\Auth;
use PDO;
use function sizeof;

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
		$query->execute([':id' => htmlspecialchars(intval($id))]);
		$user = $query->fetchAll(PDO::FETCH_CLASS, User::class);
		if (sizeof($user) > 0) {
			return $user[0];
		} else {
			throw new Exception('no user found');
		}
	}
	
	/**
	 * Fetch a user by username
	 */
	public function fetchUserByUsername(string $username): ?Auth\UserInterface
	{
		$query = $this->DB->prepare('SELECT * FROM users WHERE username = :username LIMIT 0, 1;');
		$query->execute([':username' => htmlspecialchars($username)]);
		$user = $query->fetchAll(PDO::FETCH_CLASS, User::class);
		
		if (sizeof($user) > 0) {
			return $user[0];
		} else {
			throw new Exception('no user found');
		}
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