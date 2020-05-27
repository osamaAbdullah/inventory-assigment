<?php

namespace Core\Interfaces;

interface Authenticate {
	public function login();
	public function logout();
	public function isLoggedIn();
}