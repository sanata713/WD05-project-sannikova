<?php

$title = "Контакты";

$contacts = R::load('contacts', 1);

$pattern = '/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z{2,4}\.])?[a-z]{2,4}$/i';

if ( isset($_POST['newMessage'])) {

	if(trim($_POST['email']) == '') {
        $errors[] = ['title' => 'Введите Email'];
    } else if (!preg_match($pattern, trim($_POST['email']))) {
        $errors[] = ['title' => 'Неверный формат email'];
	}

    
    if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {

			// Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не болжен быть более 4 Mb' ];
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc)$/i", $fileName) ) {
				$errors[] = ['title' => 'Файл должен иметь следующие расширения: jpg, gif, png, pdf, doc' ];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}
		}
    
	if ( empty($errors)) {

		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();

		if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {

			// Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Your image file was larger than 4mb' ];
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc)$/i", $fileName) ) {
				$errors[] = ['title' => 'Файл должен иметь следующие расширения: jpg, gif, png, pdf, doc' ];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'An unknown error occurred' ];
			}

			$postImgFolderLocation = ROOT . 'usercontent/upload_files/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'File upload failed' ];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;
		}
		R::store($message);
        header('Location: ' . HOST . "contacts?result=msgCreated");
		exit();

//		$success[] = ['title' => 'Сообщение было успешно отправлено!' ];
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>