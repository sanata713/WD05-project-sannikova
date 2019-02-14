<h1 class="autorization-content__title mb-40">Вход на сайт</h1>
<form class="autorization-content-form" method="post" action="<?=HOST?>login" name="login">
    <div class="notification">
        <?php 
            require ROOT . "templates/_parts/_errors.tpl" 
        ?>
    </div>
    <input class="input mb-10 mt-20" name="email" id="input-email" type="email" placeholder="E-mail" value="info@mail.com" />
    <input class="input mb-25" name="password" id="input-password" type="password" placeholder="Пароль" value="123456" />
    <div class="autorization-content-form-help mb-30">
        <label class="form__label-checkbox">
            <input class="form__input-checkbox" type="checkbox" checked="checked" />
            <span class="form__checkbox"> </span>Запомнить меня
        </label>
        <a class="link" href="<?=HOST?>lost-password">Забыл пароль</a>
    </div>
    <div class="autorization-content-form-button">
        <input class="button button-enter" type="submit" name="login" value="Войти" />
    </div>
</form>