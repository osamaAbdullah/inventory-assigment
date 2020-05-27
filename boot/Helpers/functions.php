<?php

use App\Controllers\AuthController;
use Core\App;
use Core\Request;

function dd($data) {
	die(var_dump($data));
}

function view(string $fileName, $data = [])
{
	extract($data);
	return require App::rootPath() . '\\frontend\\views\\' . $fileName . '.php';
}

function redirect($path)
{
	return header('Location: ' . $path);
}

function url($path)
{
	return (require App::rootPath() . '/config/app.php')['root-url'] . $path;
}

function preventSQLInjections($inputStream)
{
	$inputStream = htmlspecialchars($inputStream);
	if (sizeof(explode(' ', $inputStream)) === 1) {
		return $inputStream;
	} else {
		throw new Exception('wrong input data');
	}
}

function jsonResponse(array $arr, $statusCode)
{
	// set response code
	http_response_code($statusCode);
	
	// send error messages
	echo json_encode($arr);
	exit;
}

function activeLink($page)
{
	if (strpos(Request::uri(), $page) !== false) {
		echo ' active';
	} else {
		echo '';
	}
}

function isLoggedIn()
{
	return (new AuthController)->isLoggedIn();
}

