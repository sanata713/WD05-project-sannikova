<div class="container pb-120 pt-80 pl-0 pr-0">
<?php if ( isset($_GET['result'])) {
	include ROOT . "templates/blog/_results.tpl";
} ?> 
    <div class="blog-title mb-40">
        <h1 class="title-general mb-0 mt-0 blog-title--color">Блог веб-разработчика</h1>
        <?php if ( isAdmin() ) { ?>
        <a class="button button-edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
        <?php } ?>
    </div>

    <div class="row">
        <?php foreach ($posts as $post) { ?>
            <?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
        <?php } ?>
    </div>
    <div class="row">
        <?php include ROOT . "templates/_parts/_pagination.tpl" ?>
    </div>
</div>



