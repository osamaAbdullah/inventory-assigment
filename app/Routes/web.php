<?php

use Core\Router;

Router::get('/test', 'TestsController@test');


Router::get('/', 'PagesController@index');
Router::get('/page-not-found', 'PagesController@notFound');

Router::get('/login', 'AuthenticateController@showLoginForm');
Router::post('/login', 'AuthenticateController@login');
Router::get('/logout', 'AuthenticateController@logout'); // must be post



