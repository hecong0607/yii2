<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\shop */

$this->title = Yii::t('backend', 'Create Shop');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Shops'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shop-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
