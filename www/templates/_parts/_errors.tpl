<?php
        foreach($errors as $error){
            if( count($error) == 1 ){ ?>
            <!-- Однострочная ошибка -->
        <div class="notification__title notification--error notification--with-description"><?=$error['title']?></div>
        
    <?php } else if(count($error) == 2) { ?>
            <!-- Ошибка с описанием -->
        <div class="notification__title notification--error notification--with-description"><?=$error['title']?></div>
        <div class="notification__description">
            
            <?=$error['desc']?>
<!--
            <p>Используйте другой email чтобы создать новый аккаунт.</p>
            <p>Или воспользуйтесь <a href="#!">восстановлением пароля</a>, чтобы войти на сайт.</p>
-->
        </div>
        
    <?php
            }
        }
    ?>