<?php if ( isLoggedIn() ) { ?>

<h2 class="title-2 m-0 mb-15">Оставить комментарий</h2>

<form class="comments-submit" id="commentForm" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
    <div class="avatar avatar--small">
        <?php if ( $_SESSION['logged_user']['avatar_small'] != "") { ?>
        <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['secondname']?>" />
        <?php } else {?>
        <img src="<?=HOST?>usercontent/avatar/no-avatar-small.jpg?>" alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['secondname']?>" />
        <?php } ?>
    </div>
    <div class="comments-form">
        <b class="comments__author">
            <?=$_SESSION['logged_user']['name']?>
            <?=$_SESSION['logged_user']['secondname']?></b>
        <div class="notification">
            <div class="notification__title notification--error" style="display: none;" data-error-comment-empty >Комментарий не может быть пустым.</div>
        </div>
        <div class="comments-text">
            <textarea class="textarea" name="commentText" placeholder="Присоединиться к обсуждению..."></textarea>
        </div>
        <div class="comments-button">
            <input type="hidden" value="newComment" name="addComment">
            <input class="button mt-10" type="submit" value="Опубликовать" data-add-comment />
        </div>
    </div>
</form>

<?php } else { ?>

<div class="comments-unregistered">
    <p class="comments-unregistered__note">
        <a class="link" href="<?=HOST?>login">Войдите</a> или 
        <a class="link" href="<?=HOST?>registration">Зарегистрируйтесь</a>,
        <br>чтобы оставить комментарий
    </p>
</div>

<?php } ?>