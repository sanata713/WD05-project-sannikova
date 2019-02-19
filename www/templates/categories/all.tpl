<div class="container pl-0 pr-0 pt-80 pb-120">

<?php if ( isset($_GET['result'])) {
	include ROOT . "templates/categories/_results.tpl";
} ?> 

    <div class="blog-title mt-40 mb-40">
        <h1 class="title-general mb-0 mt-0 blog-title--color">Категории блога</h1>
        <a class="button button-edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
    </div>

    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">id</th>
                <th scope="col">Название</th>
                <th scope="col">Редактировать</th>
                <th scope="col">Удалить</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($cats as $cat): ?>
            <tr>
                <th>
                    <?=$cat['id']?>
                </th>
                <td>
                    <?=$cat['cat_title']?>
                </td>
                <td>
                    <a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a>
                </td>
                <td>
                    <a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a>
                </td>
            </tr>
            <?php endforeach ?>
        </tbody>

    </table>

</div>