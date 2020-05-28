window._ = require('lodash');
try {
    window.Popper = require('popper.js').default;
    window.$ = window.jQuery = require('jquery');
    window.dt = window.dataTable = require( 'datatables.net' )();

    require('bootstrap');
} catch (e) {}

require('parsleyjs');
require('./datatable-bootstrap');