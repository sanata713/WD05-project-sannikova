<div class="section-about-info mt-60 mb-65">
    <div class="container">
        <?php if ( isset($_GET['result'])) {
	        include ROOT . "templates/about/_results.tpl";
        } ?>
        <div class="row about-info pt-20">
            <div class="col-md-3">
                <?php if($about->photo != ""): ?>
                <div class="avatar">
                    <img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="<?=$about->name?>" />
                </div>
                <?php endif ?>
            </div>
            <div class="col-md-9">
                <div class="about-info">
                    <?php if(isAdmin()) { ?>
                    <a class="button button-edit float-right" href="<?=HOST?>edit-text">Редактировать</a>
                    <?php } ?>
                    <h1 class="mb-20 about-info__name">
                        <?=$about->name?>
                    </h1>
                    <p class="mb-0">
                        <?=$about->description?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>