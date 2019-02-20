<?php if ( $_GET['result'] == 'postCreated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Пост успешно добавлен!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'postUpdated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Пост успешно отредактирован!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'postDeleted' ) { ?>
<div class="notification__title notification--error notification--with-description" data-notify-hide>
    Пост успешно удален!
</div>      
<?php  } ?>
