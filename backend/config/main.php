<?php
$params = array_merge(
	require(__DIR__ . '/../../common/config/params.php'),
	require(__DIR__ . '/../../common/config/params-local.php'),
	require(__DIR__ . '/params.php'),
	require(__DIR__ . '/params-local.php')
);


return [
	'id'                  => 'app-backend',
	'basePath'            => dirname(__DIR__),
	'controllerNamespace' => 'backend\controllers',
	'bootstrap'           => ['log'],
	'language' => 'zh-CN',
	'layout'=>'admin-main',//配置布局文件名字

	'components'          => [
		'user'         => [
			'identityClass'   => 'common\models\User',
			'enableAutoLogin' => true,
		],
		'log'          => [
			'traceLevel' => YII_DEBUG ? 3 : 0,
			'targets'    => [
				[
					'class'  => 'yii\log\FileTarget',
					'levels' => ['error', 'warning'],
				],
			],
		],
		'errorHandler' => [
			'errorAction' => 'site/error',
		],
		'authManager' => [
			'class' => 'yii\rbac\DbManager', // 使用数据库管理配置文件
		],
		'i18n' => [
			'translations' => [
				'rbac-admin*' => [
					'class' => 'yii\i18n\PhpMessageSource',
				],
				'backend*' => [
					'class' => 'yii\i18n\PhpMessageSource',
				],
			],
		],
	],
	//配置yii2-admin
	'aliases' => [
		'@mdm/admin' => '@vendor/mdmsoft/yii2-admin',
	],
	'modules'             => [
		'admin' => [
			'class'  => 'mdm\admin\Module',
//			'layout' => 'left-menu',//yii2-admin的导航菜单
		]
	],
	'as access'    => [
		'class'        => 'mdm\admin\components\AccessControl',
		'allowActions' => [
			'site/*',//允许访问的节点，可自行添加
			'tg/*',//允许访问的节点，可自行添加
			'shop/*',//允许访问的节点，可自行添加
//			'admin/*',//允许所有人访问admin节点及其子节点
			'admin/user/reset-password',
			'admin/user/request-password-reset',
			'site/captcha',
		]
	],
	'params'              => $params,
];
