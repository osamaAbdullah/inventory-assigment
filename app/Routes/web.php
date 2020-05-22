<?php

use Core\Router;

Router::get('/', 'PagesController@index');
Router::get('/page-not-found', 'PagesController@notFound');



