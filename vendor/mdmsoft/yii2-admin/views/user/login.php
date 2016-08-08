<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$this->title = 'My Application';

$fieldOptions1 = [
	'options' => ['class' => 'form-group has-feedback'],
	'inputTemplate' => "{input}<span class='glyphicon glyphicon-envelope form-control-feedback'></span>"
];

$fieldOptions2 = [
	'options' => ['class' => 'form-group has-feedback'],
	'inputTemplate' => "{input}<span class='glyphicon glyphicon-lock form-control-feedback'></span>"
];
?>

<div class="login-box">
	<div class="login-logo">
		<a href="#"><b><?= Html::encode(Yii::t('rbac-admin', 'My Application')) ?></a>
	</div>
	<!-- /.login-logo -->
	<div class="login-box-body">
		<p class="login-box-msg"><?= Html::encode(Yii::t('rbac-admin', 'Login')) ?></p>

		<?php $form = ActiveForm::begin(['id' => 'login-form', 'enableClientValidation' => false]); ?>

		<?= $form
			->field($model, 'username', $fieldOptions1)
			->label(false)
			->textInput(['placeholder' => $model->getAttributeLabel(Yii::t('rbac-admin', 'Username'))]) ?>

		<?= $form
			->field($model, 'password', $fieldOptions2)
			->label(false)
			->passwordInput(['placeholder' => $model->getAttributeLabel(Yii::t('rbac-admin', 'Password'))]) ?>

		<div class="row">
			<div class="col-xs-8">
				<?= $form->field($model, 'rememberMe')->checkbox()->label(Yii::t('rbac-admin', 'Remember Password')) ?>
			</div>
			<!-- /.col -->
			<div class="col-xs-4">
				<?= Html::submitButton(Yii::t('rbac-admin', '确定'), ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'login-button']) ?>
			</div>
			<!-- /.col -->
		</div>


		<?php ActiveForm::end(); ?>

		<!-- /.social-auth-links -->


	</div>
	<!-- /.login-box-body -->
</div><!-- /.login-box -->
