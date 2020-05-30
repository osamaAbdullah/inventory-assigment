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
	return App::resolve('app')['root-url'] . (($path[0] === '/') ? $path : '/' . $path);
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

function user()
{
	return (new AuthController)->user();
}

function generateToken()
{
	return bin2hex(random_bytes(32));
}

function generateCSRFToken()
{
	if(!isset($_SESSION)) {
		session_start();
	}
	$_SESSION['token'] = bin2hex(random_bytes(32));
	return $_SESSION['token'];
}

function registerLog($txt)
{
	$myFile = fopen( App::rootPath() . '\\logs\\inventory.log', 'w');
	fwrite($myFile, $txt);
	fclose($myFile);
}

function setUrl($url)
{
	echo("<script>history.replaceState({},'','$url');</script>");
}

