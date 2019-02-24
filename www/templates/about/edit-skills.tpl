<?php function skillItem($name, $title){  
	global $skills;
?>
<div class="col-3">
    <div class="about-me-tech__input">
        <label class="label" for="technology-html">
            <?=$title;?></label>
        <input class="input" name="<?=$name;?>" placeholder="0" value="<?=$skills[$name]?>" />
    </div>
</div>
<?php  } ?>

<div class="content-exp-page">
    <div class="container">
        <div class="row">
            <div class="col-md-9 offset-md-1">
                <h1 class="title-general mt-0 mb-35">Редактировать - Технологии</h1>
                
                <?php require ROOT . "templates/_parts/_errors.tpl"; ?>
                
                <form class="mt-20" action="edit-skills" method="post">

                    <div class="row mb-40">
                        <?php skillItem('html', 'HTML5'); ?>
                        <?php skillItem('css', 'CSS3'); ?>
                        <?php skillItem('js', 'JS'); ?>
                        <?php skillItem('jquery', 'jQuery'); ?>
                    </div>
                    <div class="row mb-40">
                        <?php skillItem('php', 'PHP'); ?>
                        <?php skillItem('mysql', 'MySQL'); ?>
                    </div>
                    <div class="row mb-30">
                        <?php skillItem('git', 'Git'); ?>
                        <?php skillItem('gulp', 'Gulp'); ?>
                        <?php skillItem('npm', 'Npm'); ?>
                        <?php skillItem('yarn', 'Yarn'); ?>
                    </div>
                    <div class="row">
                        <div class="col-auto pr-30">
                            <input class="button button-save" type="submit" name="skillsUpdate" value="Сохранить" />
                        </div>
                        <div class="col-auto">
                            <a class="button" href="<?=HOST?>about">Отмена</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>