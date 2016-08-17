<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */
?>

<header class="main-header">

    <?= Html::a('<span class="logo-mini">' . Yii::t('rbac-admin', 'APP') . '</span><span class="logo-lg">' . Yii::t('rbac-admin', 'My Application') . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only"><?= Html::encode(Yii::t('rbac-admin', 'Toggle Navigation')) ?></span>
        </a>

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">

                <!-- User Account: style can be found in dropdown.less -->
                 <li class="dropdown user user-menu">
                    <a href="<?= \yii\helpers\Url::toRoute('/site/logout')?>" class="dropdown-toggle" data-method="post" >
                        <img src="<?= $directoryAsset.'/img/user2-160x160.jpg' ?>" class="user-image" alt="User Image"/>
                        <span class="hidden-xs"><?= Html::encode(Yii::t('rbac-admin', 'Logout')) ?></span>
                    </a>
                </li>
				<li class="dropdown user user-menu">
					<a href="<?= \yii\helpers\Url::toRoute('/admin/user/change-password')?>" class="dropdown-toggle" data-method="post" >

						<span class="hidden-xs"><?= Html::encode(Yii::t('rbac-admin', 'Change Password')) ?></span>
					</a>
				</li>
            </ul>
        </div>
    </nav>
</header>
