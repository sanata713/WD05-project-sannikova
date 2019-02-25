<div class="container pl-0 pr-0 pt-80 pb-120">
    <div class="row m-0">
        <div class="col-10 offset-1 p-0">
            <div class="add-post-content">
                <h1 class="title-general mt-0 mb-0">Удалить место работы</h1>
                <form action="<?=HOST?>job-delete?id=<?=$job['id']?>" method="post">
                    <div class="add-post-content__name mt-40">
                        <p>Вы действительно хотите удалить пост с заголовком <strong>
                                <?=$job['title']?></strong> с id =
                            <?=$job['id']?>?</p>
                    </div>
                    <div class="add-post-content__submit mt-30">
                        <input class="button button-delete mr-20" type="submit" name="jobDelete" value="Удалить" />
                        <a class="button" href="<?=HOST?>edit-jobs">Отмена</a>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>