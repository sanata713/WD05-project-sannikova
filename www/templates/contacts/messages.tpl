<div class="container pl-0 pr-0 pt-80 pb-120">

    <div class="row">

        <div class="col-10 offset-1">
            <?php if ( isset($_GET['result'])) {
	            include ROOT . "templates/contacts/_results.tpl";
            } ?>
            <h1 class="title-general contacts-messages-title--color mt-40 mb-40">Сообщения от посетителей</h1>

            <?php 
                foreach($messages as $message) {
                    include ROOT . "/templates/contacts/message-card.tpl";
                } 
            ?>
        </div>
    </div>
</div>