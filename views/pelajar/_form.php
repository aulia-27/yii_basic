<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\pelajar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pelajar-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nim')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?php //$form->field($model, 'tgl_lahir')->textInput() 
        echo $form->field($model, 'date_1')->widget(DatePicker::classname(), 
            ['options' => ['placeholder' => 'Pilih Tanggal Lahir ...'],
            'pluginOptions' => ['autoclose'=>true]
        ]);
    ?>

    <?= $form->field($model, 'jekel')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <?php //$form->field($model, 'id_fakultas')->textInput()
        $dataPost=ArrayHelper::map(\app\models\Fakultas::find()->asArray()->all(), 'id', 'nama_fakultas');
        echo $form->field($model, 'id_fakultas')
        ->dropDownList(
            $dataPost,           
            ['id'=>'nama_fakultas']
        );

    ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
