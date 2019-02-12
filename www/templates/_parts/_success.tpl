<?php
        foreach($success as $item){
            if( count($item) == 1 ){ ?>
            <!-- Однострочная ошибка -->
        <div class="notification__title notification--success notification--with-description"><?=$item['title']?></div>
        
    <?php } else if(count($item) == 2) { ?>
            <!-- Ошибка с описанием -->
        <div class="notification__title notification--success notification--with-description"><?=$item['title']?></div>
        <div class="notification__description"><?=$item['desc']?></div>
        
    <?php
            }
        }
    ?>