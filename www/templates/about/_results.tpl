<?php if ( $_GET['result'] == 'jobCreated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Новое место работы успешно добавлено!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'jobDeleted' ) { ?>
<div class="notification__title notification--error notification--with-description" data-notify-hide>
    Место работы успешно удалено!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'textUpdated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Изменения успешно отредактированы и сохранены!
</div>      
<?php  } ?>

<?php if ( $_GET['result'] == 'skillsUpdated' ) { ?>
<div class="notification__title notification--success notification--with-description" data-notify-hide>
    Изменения успешно отредактированы и сохранены!
</div>      
<?php  } ?>