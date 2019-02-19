<?php if ( isAdmin() ) {
    include ROOT . "templates/_parts/_admin-panel.tpl";
} ?>

<header class="header">
    <div class="row header__wrapper">

        <?php include ( ROOT . "templates/_parts/_header-logo.tpl"); ?>

        <?php
            if(isLoggedIn()) {

                // Пользователь на сайте
                if($_SESSION['role'] != 'admin') {
                    // Пользователь на сайте - НЕадмин
                    include ( ROOT . "templates/_parts/_header-user-profile.tpl");
                }

            } else {
                    // Нет пользователя
                    include ( ROOT . "templates/_parts/_header-user-login-links.tpl");
            }
        ?>
    
    </div>
    <div class="row">

        <?php include ( ROOT . "templates/_parts/_header-nav.tpl"); ?>

    </div>
</header>