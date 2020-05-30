<?php

use Core\Router;

Router::post('/api/login', 'ApiAuthController@login');
Router::post('/api/logout', 'ApiAuthController@logout');

Router::post('/api/get-total-income-expense', 'ApiTransactionsReport@getTotalIncomeExpense');
Router::get('/api/get-all-suppliers', 'ApiSuppliersReport@getAllSuppliers');
Router::get('/api/get-all-customers', 'ApiCustomersReport@getAllCustomers');

