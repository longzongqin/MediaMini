<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
	$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
    }
    public function login(){
        $appid = C("appid");
        $secret = C("secret");
        $url = "https://api.weixin.qq.com/sns/jscode2session?appid=".$appid."&secret=".$secret."&js_code=".$_REQUEST["code"]."&grant_type=authorization_code";
        $result = myCurl($url,null);
        $jsondecode = json_decode($result,true);
        //'{"session_key":"NQrVJ2U64B88iKn76hOpaA==","expires_in":7200,"openid":"o63P80GYbNmMoei0iDMAXMOD0SSo"}';
        if(empty($jsondecode["openid"])){
            jsonReturn("","login fail!",0);
            exit;
        }
        //检测用户
        $where["openID"] = $jsondecode["openid"];
        $userInfo = M("user_info")->where($where)->find();
        if(empty($userInfo)){
            $userInfo["openID"] = $jsondecode["openid"];
            $userInfo["nick"] = $_REQUEST["nick"];
            $userInfo["headImg"] = $_REQUEST["headImg"];
            $userInfo["joinTime"] = time();
            $userInfo["userID"] = M("user_info")->add($userInfo);
        }else{
            $update["userID"] = $userInfo["userID"];
            $update["nick"] = $_REQUEST["nick"];
            $update["headImg"] = $_REQUEST["headImg"];
            M("user_info")->save($update);
        }
        //添加访问记录
        $log["userID"] = $userInfo["userID"];
        $log["estTime"] = time();
        M("log_info")->add($log);

        jsonReturn($jsondecode["openid"],$userInfo["userID"],1);

    }
    public function getMediaList(){
        $where["media_info.status"] = 0;
        $join = "user_info on user_info.userID = media_info.userID";
        $fields = "media_info.*,user_info.nick,user_info.headImg,date_format(from_unixtime(media_info.estTime),'%Y-%m-%d %H:%i') as time,count(*) as count";
        $result = M("media_info")->where($where)->join($join)->field($fields)->order("time DESC")->group("title,userID,time")->select();
        if(!$result || empty($result)){
            jsonReturn($result,"get data fail!",0);
        }
        foreach ($result as $k=>$v){
            if($v["type"] == 0){
                $where["status"] = 0;
                $where["title"] = $v["title"];
                $where["userID"] = $v["userID"];
                $where["_string"] = "date_format(from_unixtime(estTime),'%Y-%m-%d %H:%i') = '".$v["time"]."'";
                $itemResult = M("media_info")->where($where)->field("url,mediaID")->select();
                foreach ($itemResult as $ik=>$iv){
                    $photo = getPhotoUrl($iv["url"]);
                    $itemResult[$ik]["handleImg"] = $photo["handleImg"];
                    $itemResult[$ik]["thumbImg"] = $photo["thumbImg"];
                    $itemResult[$ik]["mediaID"] = $iv["mediaID"];
                    $itemResult[$ik]["count"] = count($itemResult);
                }
                $result[$k]["data"] = $itemResult;
            }
        }
//        dump($result);
        jsonReturn($result,"get data success!",1);
    }
    public function getMediaImage(){
        $where["media_info.type"] = 0;
        $where["media_info.status"] = 0;
        $join = "user_info on user_info.userID = media_info.userID";
        $fields = "media_info.*,user_info.nick,user_info.headImg,date_format(from_unixtime(media_info.estTime),'%Y-%m-%d %H:%i') as time,count(*) as count";
        $result = M("media_info")->where($where)->join($join)->field($fields)->order("time DESC")->group("title,userID,time")->select();
        if(!$result || empty($result)){
            jsonReturn($result,"get data fail!",0);
        }
        foreach ($result as $k=>$v){
            if($v["type"] == 0){
                $where["status"] = 0;
                $where["title"] = $v["title"];
                $where["userID"] = $v["userID"];
                $where["_string"] = "date_format(from_unixtime(estTime),'%Y-%m-%d %H:%i') = '".$v["time"]."'";
                $itemResult = M("media_info")->where($where)->field("url,mediaID")->select();
                foreach ($itemResult as $ik=>$iv){
                    $photo = getPhotoUrl($iv["url"]);
                    $itemResult[$ik]["handleImg"] = $photo["handleImg"];
                    $itemResult[$ik]["thumbImg"] = $photo["thumbImg"];
                    $itemResult[$ik]["mediaID"] = $iv["mediaID"];
                    $itemResult[$ik]["count"] = count($itemResult);
                }
                $result[$k]["data"] = $itemResult;
            }
        }
//        dump($result);
        jsonReturn($result,"get data success!",1);
    }
    public function getMediaVideo(){
        $where["media_info.type"] = 1;
        $where["media_info.status"] = 0;
        $join = "user_info on user_info.userID = media_info.userID";
        $fields = "media_info.*,user_info.nick,user_info.headImg,date_format(from_unixtime(media_info.estTime),'%Y-%m-%d %H:%i') as time,count(*) as count";
        $result = M("media_info")->where($where)->join($join)->field($fields)->order("time DESC")->group("title,userID,time")->select();
        if(!$result || empty($result)){
            jsonReturn($result,"get data fail!",0);
        }
        foreach ($result as $k=>$v){
            if($v["type"] == 0){
                $where["status"] = 0;
                $where["title"] = $v["title"];
                $where["userID"] = $v["userID"];
                $where["_string"] = "date_format(from_unixtime(estTime),'%Y-%m-%d %H:%i') = '".$v["time"]."'";
                $itemResult = M("media_info")->where($where)->field("url,mediaID")->select();
                foreach ($itemResult as $ik=>$iv){
                    $photo = getPhotoUrl($iv["url"]);
                    $itemResult[$ik]["handleImg"] = $photo["handleImg"];
                    $itemResult[$ik]["thumbImg"] = $photo["thumbImg"];
                    $itemResult[$ik]["mediaID"] = $iv["mediaID"];
                    $itemResult[$ik]["count"] = count($itemResult);
                }
                $result[$k]["data"] = $itemResult;
            }
        }
//        dump($result);
        jsonReturn($result,"get data success!",1);
    }
    public function getCategory(){
        $where["topid"] = array("gt",0);
        $data = M("arctype")->where($where)->field("typename")->select();
        echo json_encode($data);
    }

    public function uploadFile(){
        if($_POST["userID"] == 1){
            //jsonReturn($_REQUEST,"抱歉,你不能发布动态!",0);
        }
        if(!isset($_POST["type"])){
            jsonReturn($_REQUEST,"参数错误!",0);
        }
        if($_POST["type"] == 0){
            load('@.uploadImg');
            $result = uploadImage('file');
        }else{
            load('@.uploadFile');
            $result = uploadFile('file');
        }

        if($result["status"] == "y"){
            $add["type"] = $_POST["type"];
            $add["url"] = $result["msg"];
            $add["estTime"] = time();
            $add["status"] = 0;
            $add["title"] = $_POST["title"];
            $add["longitude"] = $_POST["long"];
            $add["latitude"] = $_POST["lat"];
            $add["address"] = $_POST["address"];
            $add["userID"] = $_POST["userID"];
            M("media_info")->add($add);
            jsonReturn("","发布成功",1);
        }else{
            jsonReturn("",$result["msg"],0);
        }

    }
}