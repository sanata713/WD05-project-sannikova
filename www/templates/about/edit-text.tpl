<?php 
	function dataFromPost($fieldName){
		global $about;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $about[$fieldName];
	}
?>

<div class="about-me-edit">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <h1 class="title-general edit-title--color mt-0 mb-35">Редактировать - Обо Мне</h1>

                <?php require ROOT . "templates/_parts/_errors.tpl"; ?>

                <form class="about-me-edit-info-form mt-10 " action="edit-text" method="post" enctype="multipart/form-data">
                    <div class="edit-name">
                        <label class="label" for="editFullName">Имя, фамилия</label>
                        <input class="input" name="name" type="text" placeholder="Введите имя и фамилию" value="<?php dataFromPost('name'); ?>" />
                    </div>
                    <div class="upload-photo mt-30 mb-35">
                        <section class="upload-file">
                            <h6 class="upload-file__title">Фотография</h6>
                            <p class="upload-file__description">Изображение jpg или png, рекомендуемый размер 205x205 пикселей, и весом до 2Мб.</p>
                            <input class="input-file" type="file" name="photo" id="upload-file" data-multiple-caption="{count}" />
                            <label class="input-file-mark" for="upload-file">Выбрать файл</label>
                            <span>Файл не выбран</span>
                        </section>
                        <div class="upload-photo__result">
                            <img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="user-photo" />
                        </div>
                    </div>
                    <div class="edit-information">
                        <label class="label" for="about-me-edit-info">Информация на главной</label>
                        <div class="ckeditor">
                            <textarea id="ckEditor" class="textarea edit-information__textarea" name="description" placeholder="Напишите информацию о себе"><?php dataFromPost("description"); ?></textarea>
                            <?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
                        </div>
                    </div>
                    <div class="about-me-edit-buttons">
                        <input class="button button-save mr-20" type="submit" name="textUpdate" value="Сохранить" />
                        <a class="button" href="<?=HOST?>about">Отмена</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>