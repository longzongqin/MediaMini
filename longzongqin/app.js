//app.js
App({
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
  },
  getUserInfo:function(cb){
    var that = this
    if(this.globalData.userInfo){
      console.log("this is has user info...");
      typeof cb == "function" && cb(this.globalData.userInfo)
    }else{
      //调用登录接口
      wx.login({
        success: function (e) {
          var code = e.code;
          wx.getUserInfo({
            success: function (res) {
               //发起网络请求
                wx.request({
                  url: 'http://localhost/app.php/Index/login',
                  data: {'code': code,'headImg':res.userInfo.avatarUrl,'nick':res.userInfo.nickName},
                  header: {'content-type': 'application/json'},
                  success: function(data) {  
                     if(data.data.status == 1){
                        res.userInfo["openID"] = data.data.data
                        res.userInfo["userID"] = data.data.info
                     }
                     that.globalData.userInfo = res.userInfo
                     typeof cb == "function" && cb(that.globalData.userInfo)
                  },fail: function(){
                    showRequestInfo()
                  }
                })      
            }
          })
        }
      })
    }
  
  },
  globalData:{
    userInfo:null,
    openID:null
  }
})