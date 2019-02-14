<?php if ( $newPasswordReady == false ): ?>
<h1 class="autorization-content__title mb-40">Введите новый пароль</h1>
<?php endif ?>

<form class="autorization-content-form" method="post" action="<?=HOST?>set-new-password">
   
    <div class="notification">
        <?php require ROOT . "templates/_parts/_errors.tpl" ?>
        <?php require ROOT . "templates/_parts/_success.tpl" ?>
    </div>
    
    <?php if ( $newPasswordReady == false ): ?>
    <input class="input mb-10 mt-20" name="resetpassword" id="input-email" type="password" placeholder="Новый пароль" value="info@mail.com" />
    <?php endif ?>
    
    <div class="autorization-content-form-help mb-30 mt-20 text-center">
        <a class="link" href="<?=HOST?>login">Перейти на страницу входа</a>
    </div>
    
    <div class="autorization-content-form-button">
       <?php if ( $newPasswordReady == false ): ?>
       <input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
       <input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
       <input class="button button-enter" type="submit" name="set-new-password" value="Установить новый пароль" />
       <?php endif ?>
    </div>
</form>