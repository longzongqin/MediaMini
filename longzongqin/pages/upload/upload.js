//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    photo: 'show',
    video: 'hide',
    type: 0,
    address: '所在位置',
    long: '',
    lat: '',
    videoUrl: '',
    imgArr: '',
    title: '',
    userInfo: {}
  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  onLoad: function () {
    var that = this
    //调用应用实例的方法获取全局数据
    app.getUserInfo(function(userInfo){
      //更新数据
      that.setData({
        userInfo:userInfo
      })
    })
  },
  selectImg: function(){
    var that = this
    wx.chooseImage({
      count: 9, // 最多可以选择的图片张数，默认9
      sizeType: ['original', 'compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album', 'camera'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function(res){
        // success
          that.setData({
            photo: 'show',
            video: 'hide',
            type: 0,
            imgArr: res.tempFilePaths
          })
      },
      fail: function(res) {
        // fail
      },
      complete: function(res) {
        // complete
      }
    })

  },
  selectVideo: function(){
    var that = this
    wx.chooseVideo({
      sourceType: ['album', 'camera'], // album 从相册选视频，camera 使用相机拍摄
      // maxDuration: 60, // 拍摄视频最长拍摄时间，单位秒。最长支持60秒
      camera: ['front', 'back'],
      success: function(res){
        // success
         that.setData({
          photo: 'hide',
          video: 'show',
          type: 1,
          videoUrl: res.tempFilePath
        })
      },
      fail: function(res) {
        // fail
      },
      complete: function(res) {
        // complete
      }
    })
  },
  selectLocation: function(){
     var that = this;
     wx.chooseLocation({
      success: function(res){
        // success
        that.setData({
          long: res.latitude,
          lat: res.longitude,
          address: res.name
        })
      },
      fail: function(res) {
        // fail
      },
      complete: function(res) {
        // complete
      }
    })
  },
  getTitle: function(e){
    this.setData({
          title: e.detail.value
    })
  },
  uploadFile: function(){
    var m = this.data;
      // var fileUrl = JSON.stringify(m.imgArr)
    var fileUrl = m.imgArr[0]
    var fileNum = m.imgArr.length
    if(m.type == 1){
        fileUrl = m.videoUrl
        fileNum = 1;
    }
    if(fileUrl == '' || fileUrl == undefined){
      wx.showToast({
        title: '请上传文件！',
        icon: 'success',
        duration: 1500
      })
      return;
    }
    var address = m.address;
    if(m.long == ''){
        address = '';
    }
    wx.showLoading({
      title: '请稍等...',
    })
    var num = 0;
   for(var i = 0; i < fileNum; i++){
     if(i > 0){
        fileUrl = m.imgArr[i]
     }
      wx.uploadFile({
          url: 'https://longzongqin.cn/app.php/Index/uploadFile',
          filePath: fileUrl,
          name:'file',
          header: {'content-type':'multipart/form-data'}, // 设置请求的 header
          formData: {userID: m.userInfo.userID,type: m.type,address: address,long: m.long, lat: m.lat,title: m.title}, // HTTP 请求中其他额外的 form data
          complete: function(res) {
            // complete
            num++;
             if(num >= fileNum){
               wx.hideLoading()
               var data = JSON.parse(res.data);
                wx.showToast({
                  title: data.info,
                  icon: 'success',
                  duration: 1500
                })
                if(res.errMsg == 'uploadFile:ok'){
                  if(data.status == 1){
                    wx.switchTab({
                        url: '/pages/index/index'
                    })
                  }else{
                    wx.showToast({
                      title: data.info,
                      icon: 'success',
                      duration: 3000
                    })
                  }
                }else{
                  wx.showToast({
                      title: res.errMsg,
                      icon: 'success',
                      duration: 2000
                    })
                }
             }
          
            
          }
    })
   }
    
  }
})
