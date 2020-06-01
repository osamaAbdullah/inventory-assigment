const mix = require('laravel-mix');

mix.js('frontend/js/app.js', 'public/js')
   .sass('frontend/sass/app.scss', 'public/css')
   .sass('frontend/sass/custom/403.scss', 'public/css/403.css');
