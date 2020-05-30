<?php

use Core\Router;

Router::get('/test', 'TestsController@test');
Router::get('/import-sql-files', 'TestsController@test');


Router::get('/', 'PagesController@index');
Router::get('/page-not-found', 'PagesController@notFound');
Router::get('/dashboard', 'DashboardController@index');
Router::get('/product', 'ProductController@index');
Router::get('/product/get', 'ProductController@get');
Router::get('/receiving', 'ReceivingController@index');
Router::get('/transmit', 'TransmitController@index');
Router::get('/sell', 'SellController@index');
Router::get('/report', 'ReportController@index');
Router::get('/expense', 'ExpenseController@index');
Router::post('/expense/save', 'ExpenseController@save');
Router::get('/capital', 'CapitalController@index');
Router::get('/customer', 'CustomerController@index');
Router::get('/customer/get', 'CustomerController@get');
Router::get('/supplier', 'SupplierController@index');
Router::get('/supplier/get', 'SupplierController@get');

Router::get('/login', 'AuthController@showLoginForm');
Router::post('/login', 'AuthController@login');
Router::post('/logout', 'AuthController@logout');
Router::get('/password-reset-request', 'PasswordResetController@showPasswordResetRequestForm');
Router::post('/password-reset-request', 'PasswordResetController@sendEmail');
Router::post('/password-reset', 'PasswordResetController@passwordReset');
Router::get('/passwords/reset', 'PasswordResetController@verifyToken');



