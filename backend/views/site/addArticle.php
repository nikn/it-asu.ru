<?php

/* @var $this yii\web\View */

$this->title = 'Добавить статью';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-12">
                <h2>Страница добавления новости</h2>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12">
                <form method="post">
                    Заголовок статьи: <input type="text"><br>
                    Картинка превью: <input type="file"><br>
                    Текст анонса: <input type="text" height="5"><br>
                    Подробный текст (HTML) <input type="text" height="20"><br>
                    <input type="submit" value="Создать новость">
                </form>
            </div>
        </div>
        
    </div>
    
</div>
