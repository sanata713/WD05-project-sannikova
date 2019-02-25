<?php

$pagination = pagination(6, 'posts');

$title = "Блог | Все записи";

$posts = R::find('posts', 'ORDER BY id DESC '. $pagination['sql_pages_limit']);
//$posts = R::find('posts', 'ORDER BY ID DESC '. $pagination['sql_pages_limit']);

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-all-posts.tpl";
$content = ob_get_contents();
ob_end_clean();

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>