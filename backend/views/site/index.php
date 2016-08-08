<?php
use yii\helpers\Html;

/* @var $this yii\web\View */

$this->title = Yii::t('rbac-admin', 'Home');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-index">

    <div class="jumbotron">
        <h1><?= Html::encode(Yii::t('rbac-admin', 'My Application')) ?></h1>

        <p class="lead"><?= Html::encode(Yii::t('rbac-admin', 'Welcome To My Application.')) ?></p>

    </div>


</div>
