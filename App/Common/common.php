<?php

function myCurl($url,$data=null,$method='POST'){
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);

    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');

    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $tmpInfo = curl_exec($ch);
    if (curl_errno($ch)) {
        echo 'Errno'.curl_error($ch);
    }
    curl_close($ch);
    return $tmpInfo;
}

function jsonReturn($data,$info,$status){
    $result["data"] = $data;
    $result["info"] = $info;
    $result["status"] = $status;
    echo json_encode($result);
    exit;
}

/**
 * 上传文件名生成
 * @return string
 */
function getName(){
    $rand = rand (1000, 9000);
    $time = date("Ymd");
    return $time.$rand;
}

function getPhotoUrl($url){
    $imgStr = explode("/", $url);
    $photo['handleImg'] = $imgStr[0] . "/" . $imgStr[1] . "/m_" . $imgStr[2];
    $photo['thumbImg'] = $imgStr[0] . "/" . $imgStr[1] . "/s_" . $imgStr[2];
    return $photo;
}