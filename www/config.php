<?php
// DB SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'wd05-project-sannikova');
define('DB_USER', 'root');
define('DB_PASS', '');

// SITE SETTINGS FOR EMAILS
define('SITE_NAME', 'Личный сайт Санниковой Натальи');
define('SITE_EMAIL', 'info@testrun.ru');
define('ADMIN_EMAIL', 'nata_san@bk.ru');

// Хост сайта
define('HOST', $_SERVER['REQUEST_SCHEME']. '://' . $_SERVER['HTTP_HOST'] . '/');

//Устанавливает физический путь до корневой директории скрипта
define('ROOT', dirname(__FILE__). '/');

?>