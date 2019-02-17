<h1 class="autorization-content__title mb-40">Регистрация</h1>

<form class="autorization-content-form" method="post" action="<?=HOST?>registration">
   
<!--
<?php
echo "<pre>";
print_r($_POST);
echo "</pre>";
?>
-->
    <div class="notification">
    
    <?php 
        require ROOT . "templates/_parts/_errors.tpl" 
    ?>
    
    </div>
    <input class="input mb-10 mt-20" name="email" id="input-reg-email" type="email" placeholder="E-mail"  value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>" />
    
    <input class="input mb-30" name="password" id="input-reg-password" type="password" placeholder="Пароль" value="<?php if (isset($_POST['password'])) echo $_POST['password']; ?>" />
    <div class="autorization-content-form-button">
        <input class="button button-enter" type="submit" name="register" value="Регистрация" />
    </div>
</form>