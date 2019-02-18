<div class="header-admin">
    <div class="header-admin__left">
        <div class="user ml-20">
            <a class="avatar-link" href="#!">
                <div class="avatar avatar--small">
                    <?php if ( $_SESSION['logged_user']['avatar_small'] != "") { ?>
			        <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="avatar-small" />
			        <?php } else {?>
                    <img src="<?=HOST?>usercontent/avatar/no-avatar-small.jpg?>" alt="avatar-small" />
			        <?php } ?>

                            
               
                </div>
            </a>
            <div class="brif ml-20">
                <p class="brif__name"><?=$_SESSION['logged_user']['secondname']?> <?=$_SESSION['logged_user']['name']?></p>
                <span class="badge"><a href= "<?=HOST?>profile">Администратор</a></span>
            </div>
        </div>
        <nav class="admin-nav ml-70">
            <a href="<?=HOST?>blog/post-new"><i class="fas fa-plus-circle"></i>Пост</a>
            <a href="<?=HOST?>blog/categories"><i class="fas fa fa-folder"></i>Категории</a>
            <a href="works-add-work.html"><i class="fas fa-plus-circle"></i>Работа</a>
            <a href="about-me.html"><i class="fas fa-edit"></i>Обо мне</a>
            <a href="contacts-edit.html"><i class="fas fa-edit"></i>Контакты</a>
            <a href="contacts-messages.html"><i class="fas fa-envelope"></i>Сообщения</a>
        </nav>
    </div>
    <div class="header-admin__right">
        <a href="<?=HOST?>logout"><i class="fas fa-sign-out-alt"></i>Выход</a>
    </div>
</div>

