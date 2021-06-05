<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "fakultas".
 *
 * @property int $id
 * @property string $no_fakultas
 * @property string $nama_fakultas
 *
 * @property Pelajar[] $pelajars
 */
class Fakultas extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'fakultas';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['no_fakultas', 'nama_fakultas'], 'required'],
            [['no_fakultas'], 'string', 'max' => 15],
            [['nama_fakultas'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'no_fakultas' => 'No Fakultas',
            'nama_fakultas' => 'Nama Fakultas',
        ];
    }

    /**
     * Gets query for [[Pelajars]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPelajars()
    {
        return $this->hasMany(Pelajar::className(), ['id_fakultas' => 'id']);
    }
}
