<?php

use Core\App;

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
	header('Location: /' . $path);
}