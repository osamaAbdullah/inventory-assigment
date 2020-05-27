<?php

use Core\Router;

Router::get('/test', 'TestsController@test');
Router::get('/import-sql-files', 'TestsController@test');


Router::get('/', 'PagesController@index');
Router::get('/page-not-found', 'PagesController@notFound');
Router::get('/dashboard', 'DashboardController@index');
Router::get('/product', 'ProductController@index');
Router::get('/receiving', 'ReceivingController@index');
Router::get('/transmit', 'TransmitController@index');
Router::get('/sell', 'SellController@index');
Router::get('/report', 'ReportController@index');
Router::get('/expense', 'ExpenseController@index');
Router::get('/capital', 'CapitalController@index');

Router::get('/login', 'AuthController@showLoginForm');
Router::post('/login', 'AuthController@login');
Router::post('/logout', 'AuthController@logout');



