<?php if ( $_GET['result'] == 'msgCreated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Сообщение успешно отправлено!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'msgDeleted' ) { ?>
<div class="notification__title notification--error notification--with-description" data-notify-hide>
    Сообщение успешно удалено!
</div>      
<?php  } ?>