<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800',
        'http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic',
        'css/font-awesome.min.css',
        'css/animate.min.css',
        'css/agency.css',
        'css/creative.css',
    ];
    public $js = [
        'js/jquery.js',
        'js/jquery.easing.min.js',
        'js/jquery.fittext.js',
        'js/bootstrap.js',
        'js/wow.min.js',
        'js/classie.js',
        'js/cbpAnimatedHeader.js',
        'js/creative.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}


