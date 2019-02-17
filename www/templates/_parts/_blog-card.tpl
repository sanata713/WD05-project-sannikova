<div class="col-4">
    <div class="card-box mb-50">
        <div class="card-box__img-blog">
            <?php if ( $post->post_img_small != "") { ?>
		        <img src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
		    <?php } else { ?>
		        <img src="<?=HOST?>usercontent/blog/blog-no-image.jpg" alt="<?=$post->title?>" />
		    <?php } ?>          
        </div>
        <div class="card-box__title">
            <?=mbCutString($post->title, 48)?>
        </div>
        <a class="button card-box--button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
    </div>
</div>