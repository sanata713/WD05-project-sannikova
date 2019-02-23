<div class="container pl-0 pr-0 pt-80 pb-120">
    <div class="row">
        <?php if ( isAdmin() ) { ?>
        <div class="col-12 clearfix mb-30">
            <a class="button float-right" href="<?=HOST?>messages">Сообщения</a>
            <a class="button button-edit float-right mr-20" href="<?=HOST?>contacts-edit">Редактировать</a>
        </div>
        <?php }  ?>
        <div class="col-5">

            <h1 class="title-general mb-30">Контакты</h1>

            <?php if(@$contacts['name'] !='' || @$contacts['secondname'] !=''):  ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Имя Фамилия</p>
                </div>
                <div class="col-6 info">
                    <p>
                        <?=$contacts['name']?>
                        <?=$contacts['secondname']?>
                    </p>
                </div>
            </div>
            <?php endif ?>


            <?php if(@$contacts['email'] !='') { ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Email</p>
                </div>
                <div class="col-6 link-box-info">
                    <p><a class="link" href="mailto:<?=$contacts['email']?>">
                            <?=$contacts['email']?></a></p>
                </div>
            </div>
            <?php } ?>

            <?php if(@$contacts['skype'] !='') { ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Skype</p>
                </div>
                <div class="col-6 link-box-info">
                    <p><a class="link" href="skype:<?=$contacts['skype']?>?chat">
                            <?=$contacts['skype']?></a></p>
                </div>
            </div>
            <?php } ?>

            <?php if(@$contacts['github'] !='') { ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Github</p>
                </div>
                <div class="col-6 link-box-info">
                    <p><a class="link" href="<?=$contacts['github']?>" target="_blank">
                            <?=$contacts['github']?></a></p>
                </div>
            </div>
            <?php } ?>

            <?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ): ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Социальные сети</p>
                </div>
                <div class="col-6 link-box-info">
                    <?php if(@$contacts['vk'] !='') { ?>
                    <p><a class="link link--bold" href="<?=$contacts['vk']?>" target="_blank">Профиль ВКонтакте</a></p>
                    <?php } ?>
                    <?php if(@$contacts['fb'] !='') { ?>
                    <p><a class="link link--bold" href="<?=$contacts['fb']?>" target="_blank">Профиль Facebook</a></p>
                    <?php } ?>
                    <?php if(@$contacts['twitter'] !='') { ?>
                    <p><a class="link link--bold" href="<?=$contacts['twitter']?>" target="_blank">Профиль Twitter</a></p>
                    <?php } ?>
                </div>
            </div>
            <?php endif ?>

            <?php if(@$contacts['phone'] !='') { ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Телефон</p>
                </div>
                <div class="col-6 info">
                    <p><a class="link" href="tel:<?=$contacts['phone']?>">
                            <?=$contacts['phone']?></a></p>
                </div>
            </div>
            <?php } ?>

            <?php if(@$contacts['address'] !='') { ?>
            <div class="row mb-15">
                <div class="col-6 contacts-category">
                    <p>Адрес</p>
                </div>
                <div class="col-6 info">
                    <p>
                        <?=$contacts['address']?>
                    </p>
                </div>
            </div>
            <?php } ?>

        </div>
        <div class="col-4 offset-1">
            <div class="title-general mb-40">Связаться со мной</div>

            <?php if ( isset($_GET['result'])) {
	            include ROOT . "templates/contacts/_results.tpl";
            } ?>

            <?php include ROOT . "templates/_parts/_errors.tpl" ?>
            <!--            <?php include ROOT . "templates/_parts/_success.tpl" ?>-->

            <form class="feedback-form" action="<?=HOST?>contacts" method="post" enctype="multipart/form-data">
                <input class="input" name="name" type="text" placeholder="Введите имя" />
                <input class="input" name="email" type="email" placeholder="Email" />
                <textarea class="textarea mb-20" name="message" placeholder="Сообщение"></textarea>
                <section class="upload-file">
                    <h6 class="upload-file__title">Прикрепить файл</h6>
                    <p class="upload-file__description">jpg, png, pdf, doc, весом до 2Мб.</p>
                    <input class="input-file" type="file" name="file" id="upload-file" data-multiple-caption="{count}" />
                    <label class="input-file-mark input-file-mark--rounded" for="upload-file">Выбрать файл</label>
                    <span>Файл не выбран</span>
                </section>
                <input class="button button-save mt-20" type="submit" name="newMessage" value="Отправить" />
            </form>

        </div>
    </div>
</div>
<div class="geolocation" id="map"></div>
<script src="js/googlemap.js"></script>