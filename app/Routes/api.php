<?php

use Core\Router;

Router::post('/api/login', 'ApiAuthController@login');
Router::post('/api/logout', 'ApiAuthController@logout');

Router::post('/api/get-total-income-expense', 'ApiTransactionsReport@getTotalIncomeExpense');
Router::get('/api/get-all-suppliers', 'ApiSuppliersReport@getAllSuppliers');
Router::get('/api/get-all-customers', 'ApiCustomersReport@getAllCustomers');

Router::post('/api/expense/save', 'ApiExpenses@save');
Router::post('/api/expense/update', 'ApiExpenses@update');

Router::get('/api/items/get-expired', 'ApiItemsExpirationReport@getExpired');

Router::post('/api/user/deactivate', 'ApiDeactivateUser@deactivate');

Router::post('/api/sell/top-10', 'ApiTopSell@get');

Router::get('/api/transferred-items-between-to-inventories', 'ApiGetTransferredItems@getTransferredItemsBetweenTowInventories');

