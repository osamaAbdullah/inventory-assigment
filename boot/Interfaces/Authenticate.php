<?php

namespace Core\Interfaces;

interface Authenticate {
	public function login();
	public function logout();
	public function isLoggedIn();
	public function user();
	public function isActive();
	public function type();
}