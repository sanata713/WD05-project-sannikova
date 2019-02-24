<?php

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Сообщения";

$messages = R::find('messages', 'ORDER BY id DESC');

$message = R::load('messages', @$_GET['id']);

if ( !empty($_GET['id'])) {
    
	$postImgFolderLocation = ROOT . "usercontent/upload_files/"; 
    $msgFile = $message->message_file;
	if ( $msgFile != "" ) {
		$fileurl = $postImgFolderLocation . $msgFile;
        if ( file_exists($fileurl) ) { unlink($fileurl); }
	}
        
	R::trash($message);
    header('Location: ' . HOST . "messages?result=msgDeleted");
	exit();
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>