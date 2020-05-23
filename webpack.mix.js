const mix = require('laravel-mix');

mix.js('frontend/js/app.js', 'public/js')
   .sass('frontend/sass/app.scss', 'public/css');
