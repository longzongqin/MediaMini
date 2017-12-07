<?php
// excel上传
function uploadFile() {
	import('ORG.Net.UploadFile');
    import('ORG.Util.UploadFile');
    $upload = new UploadFile();
    $upload->saveRule	= 'getName';
    $upload->maxSize	= 1024*1024*100;		//最大为nM
    $upload->autoSub = true;
    $upload->subType = 'date';
    $upload->dateFormat = 'Ym/d';
    $upload->savePath	= "./App/Uploads/";

    if($upload->upload()){
        $uploadList = $upload->getUploadFileInfo();
        return  array('status'=>'y','msg'=>$uploadList[0]['savename']);
    }else{
        //捕获上传异常
        return  array('status'=>'n','msg'=>$upload->getErrorMsg());
    }
}
