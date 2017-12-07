<?php
return array(
    //'配置项'=>'配置值'
    'DEFAULT_MODULE'     => 'Index', //默认模块
    //'URL_MODEL'          => '2', //URL模式
    'SESSION_AUTO_START' => true, //是否开启session
    'URL_CASE_INSENSITIVE' =>false,//URL不区分大小写
    'TMPL_CACHE_ON'=>false,
    'DB_TYPE'   => 'mysql', // 数据库类型

    'DB_HOST'   => '666.666.666.666', // 服务器地址
    'DB_NAME'   => 'wxapp', // 数据库名
    'DB_USER'   => 'root', // 用户名
    'DB_PWD'    => '不能告诉你', // 密码

    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => '', // 数据库表前缀
    'SHOW_PAGE_TRACE'=>false, //调试信息
    'DEFAULT_FILTER' => 'htmlspecialchars', // 默认过滤函数
    'TMPL_PARSE_STRING'  =>array(

    ),

    'OUTPUT_ENCODE' => false,
    'appid'=>'wxc67767bd3d67d83e',
    'secret'=>'b8ef503e2de794cd826fafabbd950898'

);

?>
