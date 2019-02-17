<div class="container pl-0 pr-0 pt-80 pb-120">
    <div class="row m-0">
        <div class="col-10 offset-1 p-0">
            <div class="add-post-content">
                <h1 class="title-general mt-0 mb-0">Добавить пост</h1>
                
                <?php require ROOT . "templates/_parts/_errors.tpl" ?>
                
                <form action="<?=HOST?>blog/post-new" method="post" enctype="multipart/form-data">
                    <div class="add-post-content__name mt-40">
                        <label class="label" for="add-post-name">Поле для ввода</label>
                        <input class="input" name="postTitle" id="add-post-name" type="text" placeholder="Введите название" />
                    </div>
                    <div class="add-post-content__img mt-30">
                        <section class="upload-file">
                            <h6 class="upload-file__title">Изображение</h6>
                            <p class="upload-file__description">изображение и параметры 945px и больше, высота от 400px</p>
                            <input class="input-file" type="file" name="postImg" id="upload-file" data-multiple-caption="{count}" />
                            <label class="input-file-mark" for="upload-file">Выбрать файл</label>
                            <span>Файл не выбран</span>
                        </section>
                    </div>
                    <div class="add-post-content__main mt-30">
                        <label class="label" for="add-post-city">Содержание</label>
                        <textarea class="textarea" name="postText" id="add-post-city" placeholder="Введите текст"></textarea>
                    </div>
                    <div class="add-post-content__submit mt-30">
                        <input class="button button-save mr-20" type="submit" name="postNew" value="Сохранить" />
                        <a class="button" href="<?=HOST?>blog">Отмена</a>
                    </div>
                </form>
                
            </div>
        </div>
    </div>
</div>