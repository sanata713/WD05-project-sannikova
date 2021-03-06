<div class="container pt-80 pb-120">
    <div class="row">
        <div class="col-10 offset-1">
            <div class="post">
                <div class="post-head">
                    <h1 class="title-general mb-0 mt-0 <?=@$additionalHeaderClass?>">
                        <?=$post['title']?>
                    </h1>
                    <?php if ( isAdmin() ) { ?>
                    <div class="mw-290">
                        <a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
                        <a class="button button-delete" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
                    </div>
                    <?php } ?>

                    <?php if ( isAdmin() ) {
                    $additionalHeaderClass = 'mw-290';
                    } ?>
                </div>
                <div class="post-info">
                    <div class="post-info__author">
                        <?=$post['name']?>
                        <?=$post['secondname']?>
                    </div>
                    <div class="post-info__topic">
                        <a class="postlink" href="#">
                            <?=$post['cat_title']?></a>
                    </div>
                    <div class="post-info__date">
                        <? echo rus_date("j F Y H:i", strtotime($post['date_time'])); ?>
                    </div>
                    <?php if(count($comments)>0) { ?>
                    <div class="post-info__comments">
                        <a class="postlink" href="#comments"><?php commentNumber(count($comments)); ?></a>
                    </div>
                    <?php } ?>
                </div>
                <div class="post-img">
                    <?php if ( $post['post_img'] != "") { ?>
                    <img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
                    <?php } ?>
                </div>
                <div class="post-content mb-25">
                    <?=$post['text']?>
                </div>
                <div class="post-buttons-nav mb-25">
                    <?php if($prevId !=''): ?>
                        <a class="button button-previous" href="<?=HOST?>blog/post?id=<?=$prevId; ?>">
                            Назад
                            <span class="button__icon button__icon--mright float-left">
                                <i class="mr-0 fas fa-arrow-left"></i>
                            </span>
                        </a>
                    <?php else: ?>
                        <div></div>
                    <?php endif ?>
                    
                    <?php if($nextId !=''): ?>
                    <a class="button button-next" href="<?=HOST?>blog/post?id=<?=$nextId; ?>">
                        Вперед
                        <span class="button__icon">
                            <i class="mr-0 fas fa-arrow-right"></i>
                        </span>
                    </a>
                    <?php endif ?>
                </div>
            </div>

            <div class="user-comments-wrapper mb-25">
                <?php if(count($comments)>0) { ?>
                    <div class="title-2" id="comments" >
                    <?php commentNumber(count($comments)); ?>
                    </div>
                    <?php foreach ($comments as $comment) { ?>
                        <?php include ROOT . "templates/blog/_comment-card.tpl" ?>
                    <?php } ?>
                <?php } ?>
            </div>
            <!--  Добавить комментарии  -->
            <?php include ROOT . "templates/blog/_add-comment-form.tpl" ?>
        </div>
    </div>
</div>