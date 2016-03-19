<?php
return array(
	//'配置项'=>'配置值'
    //显示页面调试TRACE
    'SHOW_PAGE_TRACE' => TRUE,
    'URL_CASE_INSENSITIVE' => true,

    //默认访问控制器
    'DEFAULT_CONTROLLER' => 'Index',

    //跳转模板
    'TMPL_ACTION_SUCCESS'=>'Public:dispatch_jump',
    'TMPL_ACTION_ERROR'=>'Public:dispatch_jump',

    //数据库连接信息
    'DB_HOST' => '127.0.0.1',
    'DB_TYPE' => 'mysql',
    'DB_USER' => 'wanfang',
    'DB_PWD' => 'wanfang123',
    'DB_PORT' => '3306',
    'DB_NAME' => 'wanfang',
    'DB_PREFIX' => 'wf_',


    //设置模板标识符
    'TMPL_L_DELIM' => '<{',
    'TMPL_R_DELIM' => '}>',

    //加载网站设置配置文件
    'LOAD_EXT_CONFIG' => 'site',

    'OrderStatus' => array(
        '0' => '全部',
        '1' => '待付款',
        '2' => '已取消',
        '3' => '待发货',
        '4' => '待收货',
        '5' => '待评论',
        '6' => '已完成',
    ),
);