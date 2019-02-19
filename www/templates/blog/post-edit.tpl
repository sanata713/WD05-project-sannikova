<div class="container pl-0 pr-0 pt-80 pb-120">
    <div class="row m-0">
        <div class="col-10 offset-1 p-0">
            <div class="add-post-content">
                <h1 class="title-general mt-0 mb-0">Редактировать пост</h1>

                <?php require ROOT . "templates/_parts/_errors.tpl" ?>

                <form action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="post" enctype="multipart/form-data">
                    <div class="add-post-content__name mt-40">
                        <label class="label" for="add-post-name">Название</label>
                        <input class="input" name="postTitle" id="add-post-name" type="text" placeholder="Введите название" value="<?=$post['title']?>" />
                    </div>

                    <div class="add-post-content__name mt-40">
                        <label class="label" for="add-post-name">Категория</label>
                        <select name="postCat">
                            <?php foreach ($cats as $cat): ?>
                            <option value="<?=$cat['id']?>" <?php echo($post['cat']==$cat['id'])?"selected":"";?>
                                >
                                <?=$cat['cat_title']?>
                            </option>
                            <?php endforeach ?>
                        </select>
                    </div>

                    <div class="add-post-content__img mt-30">
                        <section class="upload-file">
                            <h6 class="upload-file__title">Изображение</h6>
                            <p class="upload-file__description">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб</p>
                            <input class="input-file" type="file" name="postImg" id="upload-file" data-multiple-caption="{count}" />
                            <label class="input-file-mark" for="upload-file">Выбрать файл</label>
                            <span>Файл не выбран</span>
                        </section>
                        <?php if($post['post_img_small'] !="") { ?>
                        <section class="upload-file">
                            <div class="upload-file-image-box">
                                <img src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="Загруженное изображение" />
                                <a class="button button-delete button--small-delete upload-file-image-box--button-position" href="#">Удалить</a>
                            </div>
                        </section>
                        <?php } ?>
                    </div>



                    <div class="add-post-content__main mt-30">
                        <label class="label" for="add-post-city">Содержание</label>
                        <div class="ckeditor">
                            <textarea id="ckEditor" class="textarea" name="postText" id="add-post-city" placeholder="Введите текст"><?=$post['text']?></textarea>
                            <?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
                        </div>
                    </div>
                    <div class="add-post-content__submit mt-30">
                        <input class="button button-save mr-20" type="submit" name="postUpdate" value="Сохранить" />
                        <a class="button" href="<?=HOST?>blog">Отмена</a>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
