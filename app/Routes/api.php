<?php

use Core\Router;

Router::post('/api/login', 'ApiAuthController@login');
Router::post('/api/logout', 'ApiAuthController@logout');

Router::post('/api/get-total-income-expense', 'ApiTransactionsReport@getTotalIncomeExpense');

