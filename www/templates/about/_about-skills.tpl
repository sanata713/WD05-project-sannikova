<?php function showIndicator($title, $value, $color = ''){ 
	$indicatorWidth = 120;
	$radius = ($indicatorWidth - 20) / 2;
	$perimetr = 2 * pi() * $radius;
	$offset = $perimetr * ( 1 - intval($value)/100);
?>
  
<div class="indicator">
    <svg
       width="<?=$indicatorWidth?>" 
       height="<?=$indicatorWidth?>"  
       class="svg-box"
       viewbox="0 0 <?=$indicatorWidth?> <?=$indicatorWidth?>"
       >
        <circle class="circle_bg" cx="<?=$indicatorWidth/2?>" cy="<?=$indicatorWidth/2?>" r="<?=$radius?>" stroke-dasharray="<?=$perimetr?>"></circle>
        <circle class="circle circle--<?=$color?>" cx="<?=$indicatorWidth/2?>" cy="<?=$indicatorWidth/2?>" r="<?=$radius?>" stroke-dasharray="<?=$perimetr?>" stroke-dashoffset="<?=$offset?>"></circle>
    </svg>
    <div class="indicator__text"><?=$title?></div>
</div>
  
<?php } ?>
   

<div class="section-indikators pt-50">
    <div class="container">
        <div class="row indikators-block">
            <div class="offset-md-3 col-md-7">
                <h2 class="title-general mb-10 color-width">Технологии</h2>
                <p class="indikators-block__text mt-0 mb-0">Которые использую в работе</p>
            </div>
            <div class="col-md-2">
                <?php if(isAdmin()) { ?>
                <a class="button button-edit" href="<?=HOST?>edit-skills">Редактировать</a>
                <?php } ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 list-technology">
                <span class="list-technology__text">Frontend</span>
                <span class="list-technology__text">Backend</span>
                <span class="list-technology__text">Workflow</span>
            </div>
            <div class="col-md-10">
                <div class="container-indicators">
                    <div class="row ml-90 pt-40">
                        <?php showIndicator('HTML5', $skills['html'], 'green' ); ?>
                        <?php showIndicator('CSS3', $skills['css'], 'green' ); ?>
                        <?php showIndicator('JS', $skills['js'], 'green' ); ?>
                        <?php showIndicator('jQuery', $skills['jquery'], 'green' ); ?>
                    </div>
                    <div class="row ml-90 pt-40">
                        <?php showIndicator('PHP', $skills['php'], 'blue' ); ?>
                        <?php showIndicator('MySql', $skills['mysql'], 'blue' ); ?>
                    </div>
                    <div class="row ml-90 pt-40">
                        <?php showIndicator('Git', $skills['git'], 'yellow' ); ?>
                        <?php showIndicator('Gulp', $skills['gulp'], 'yellow' ); ?>
                        <?php showIndicator('NPM', $skills['npm'], 'yellow' ); ?>
                        <?php showIndicator('Yarn', $skills['yarn'], 'yellow' ); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>