<?php if ( $_GET['result'] == 'catCreated' ) { ?>
<div class="notification__title notification--success notification--with-description data-notify-hide">
    Категория успешно добавлена!
</div>      
<?php  } ?>


<?php if ( $_GET['result'] == 'catUpdated' ) { ?>
<div class="notification__title notification--success notification--with-description data-notify-hide">
    Категория успешно отредактирована!
</div>      
<?php  } ?>


<?php if ( $_GET['result'] == 'catDeleted' ) { ?>
<div class="notification__title notification--error notification--with-description data-notify-hide">
    Категория успешно удалена!
</div>      
<?php  } ?>
