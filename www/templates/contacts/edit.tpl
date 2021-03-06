<?php 
	function dataFromPost($fieldName){
		global $contacts;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $contacts[$fieldName];
	}
?>

<div class="container contacts-edit pl-0 pr-0 pt-80 pb-120">
    <div class="contacts-edit__title">
        <h1 class="title-general mt-0 mb-0">Редактировать данные</h1>
    </div>
    
    <?php include ROOT . "templates/_parts/_errors.tpl"; ?>
    
    <form action="<?=HOST?>contacts-edit" method="post" class="contacts-edit__form mt-40">
        <div class="row">
            <div class="col-md-3 mb-30">
                <label class="label" for="contactName">Имя</label>
                <input  class="input mb-30" 
                        name="name" 
                        id="contactName" 
                        type="text" placeholder="Введите имя" 
                        value="<?php dataFromPost("name"); ?>" />
                <label class="label" for="contactEmail">Email</label>
                <input  class="input mb-30" 
                        name="email" 
                        id="contactEmail" 
                        type="text" 
                        placeholder="Введите email" 
                        value="<?php dataFromPost("email"); ?>" />
                <label class="label" for="contactVK">Вконтакте</label>
                <input  class="input mb-30" 
                        name="vk" 
                        id="contactVK" 
                        type="url" 
                        placeholder="Введите ссылку на профиль" 
                        value="<?php dataFromPost("vk"); ?>" />
                <label class="label" for="contactPhone">Телефон</label>
                <input  class="input" 
                        name="phone" 
                        id="contactPhone" 
                        type="tel" 
                        placeholder="Введите телефон" 
                        value="<?php dataFromPost("phone"); ?>" />
            </div>
            <div class="col-md-3">
                <label class="label" for="contactLastName">Фамилия</label>
                <input  class="input mb-30" 
                        name="secondname" 
                        id="contactLastName" 
                        type="text" 
                        placeholder="Введите фамилию" 
                        value="<?php dataFromPost("secondname"); ?>" />
                <label class="label" for="contactSkype">Skype</label>
                <input  class="input mb-30" 
                        name="skype" 
                        id="contactSkype" 
                        type="text" 
                        placeholder="Введите skype" 
                        value="<?php dataFromPost("skype"); ?>" />
                <label class="label" for="contactFacebook">Facebook</label>
                <input  class="input mb-30" 
                        name="fb" 
                        id="contactFacebook" 
                        type="url" 
                        placeholder="Введите ссылку на профиль" 
                        value="<?php dataFromPost("fb"); ?>" />
                <label class="label" for="contactAddress">Адрес</label>
                <input  class="input" 
                        name="address" 
                        id="contactAddress" 
                        type="text" 
                        placeholder="Введите адрес" 
                        value="<?php dataFromPost("address"); ?>" />
            </div>
            <div class="col-md-3 position-field">
                <div class="input-box">
                    <label class="label" for="contactGithub">Github</label>
                    <input  class="input" 
                            name="github" 
                            id="contactGithub" 
                            type="url" 
                            placeholder="Введите ссылку на профиль" 
                            value="<?php dataFromPost("github"); ?>" />
                </div>
            </div>
            <div class="col-md-3 position-field">
                <div class="input-box">
                    <label class="label" for="contactTW">Twitter</label>
                    <input  class="input" 
                            name="twitter" 
                            id="contactTW" 
                            type="url" 
                            placeholder="Введите ссылку на профиль" 
                            value="<?php dataFromPost("twitter"); ?>" />
                </div>
            </div>
            <div class="col-mb-4">
                <input class="button button-save ml-15 mr-20" type="submit" name="contactsUpdate" value="Сохранить" />
                <a class="button" href="<?=HOST?>contacts">Отмена</a>
            </div>
        </div>
    </form>
</div>