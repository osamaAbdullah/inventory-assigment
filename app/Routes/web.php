<?php

use Core\Router;

Router::get('/test', 'TestsController@test');


Router::get('/', 'PagesController@index');
Router::get('/page-not-found', 'PagesController@notFound');

Router::get('/login', 'AuthController@showLoginForm');
Router::post('/login', 'AuthController@login');



