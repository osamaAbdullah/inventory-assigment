<?php

use Core\Router;

require '../vendor/autoload.php';

Router::load('../app/Routes/web.php')->trigger();


