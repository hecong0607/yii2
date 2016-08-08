<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "shop".
 *
 * @property string $id
 * @property string $name
 * @property string $username
 * @property integer $status
 */
class Shop extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'shop';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'username', 'status'], 'required'],
            [['status'], 'integer'],
            [['name', 'username'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'name' => Yii::t('backend', 'Name'),
            'username' => Yii::t('backend', 'Username'),
            'status' => Yii::t('backend', 'Status'),
        ];
    }
}
