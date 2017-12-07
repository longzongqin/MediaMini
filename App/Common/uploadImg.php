<?php
/**
 * 上传图片
 * @param string $name input->name
 * @return multitype:string
 */
function uploadImage($name='file'){
	if (!empty($_FILES[$name]['name'])) {
		if ($_FILES[$name]['error'] != 0) {
			return array('status'=>'n','msg'=>'图片有误，请检查图片！');
		}
		return _uploadImg();
	}else{
		return array('status'=>'n','msg'=>'null');

	}
}
// 文件上传
function _uploadImg() {
	import('ORG.Net.UploadFile');
	$config =   array(
			'maxSize'           =>  6291456,    // 上传文件的最大值
			'supportMulti'      =>  true,    // 是否支持多文件上传
			'allowExts'         =>  explode(',', 'jpg,gif,png,jpeg,JPG'),
			'allowTypes'        =>  array(),    // 允许上传的文件类型 留空不做检查
			'thumb'             =>  true,    // 使用对上传图片进行缩略图处理
			'imageClassPath'    =>  'ORG.Util.Image',    // 图库类包路径
			'thumbMaxWidth'     =>  '640,200',// 缩略图最大宽度
			'thumbMaxHeight'    =>  '640,200',// 缩略图最大高度
			'thumbPrefix'       =>  'm_,s_',// 缩略图前缀
			'thumbType'         =>  '0,1', // 缩略图生成方式 1 按设置大小截取 0 按原图等比例缩略
			'thumbSuffix'       =>  '',
			'thumbPath'         =>  '',// 缩略图保存路径
			'thumbFile'         =>  '',// 缩略图文件名
			'thumbExt'          =>  '',// 缩略图扩展名
			'thumbRemoveOrigin' =>  false,// 是否移除原图
			'zipImages'         =>  false,// 压缩图片文件上传
			'autoSub'           =>  true,// 启用子目录保存文件
			'subType'           =>  'date',// 子目录创建方式 可以使用hash date custom
			'subDir'            =>  '', // 子目录名称 subType为custom方式后有效
			'dateFormat'        =>  'Ym/d',
			'hashLevel'         =>  1, // hash的目录层次
			'savePath'          =>  './App/Uploads/',// 上传文件保存路径
			'autoCheck'         =>  true, // 是否自动检查附件
			'uploadReplace'     =>  false,// 存在同名是否覆盖
            'saveRule'          =>  'getName',// 上传文件命名规则|自定义common方法
			'hashType'          =>  'md5_file',// 上传文件Hash规则函数名
	);



	//导入上传类
	$upload = new UploadFile($config);
	if (!$upload->upload()) {
		//捕获上传异常
		return  array('status'=>'n','msg'=>$upload->getErrorMsg());

	} else {
		//取得成功上传的文件信息
		$uploadList = $upload->getUploadFileInfo();
		return  array('status'=>'y','msg'=>$uploadList[0]['savename']);
	}
}
