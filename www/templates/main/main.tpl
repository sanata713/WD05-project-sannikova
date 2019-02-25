<div class="main-wrapper">

    <div class="about-me container">
        <div class="wrapper-space-around">
            <?php require_once ROOT . "templates/about/_about-text.tpl"; ?>
        </div>
    </div>

    <div class="line"></div>


    <div class="blog-entries container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="title-2 title-1--weight"> Новые записи в <a class="title-1--underline" href="<?=HOST?>blog">блоге</a></h2>
            </div>
        </div>
        <div class="row">
            <?php foreach ($posts as $post) { ?>
                <?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
            <?php } ?>
        </div>
    </div>
</div>