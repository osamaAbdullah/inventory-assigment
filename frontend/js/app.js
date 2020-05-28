window._ = require('lodash');
try {
    window.Popper = require('popper.js').default;
    window.$ = window.jQuery = require('jquery');

    require('bootstrap');
} catch (e) {}

require('parsleyjs');
require('./plugins/data-table/jquery-datatable');
require('./plugins/data-table/datatables-bootstrap');
// require('./plugins/data-table/buttons');
// require('./plugins/data-table/buttons-bootstrap');