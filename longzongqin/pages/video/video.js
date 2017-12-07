//获取应用实例
var app = getApp()
Page({
  data: {
    windowWidth:0,
    dataArr: '',
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
    wx.getSystemInfo({  
    success: function (res) {  
      that.setData({
        windowWidth:res.windowWidth
      })
       
    }  
  })  
    loadData(that)
  },
  onPullDownRefresh: function(){
    loadData(this)
    wx.stopPullDownRefresh()
  },
  showImg: function(e){
    var index = e.target.dataset.index
    var mediaID = e.target.dataset.mediaid
    var imgArr = []
    var currentUrl = ""
    var currentData = this.data.dataArr[index]["data"]
    for(var i = 0; i < currentData.length; i++){
      imgArr.push("http://localhost/App/Uploads/"+currentData[i]["handleImg"])
      if(currentData[i]["mediaID"] == mediaID){
        currentUrl = "http://localhost/App/Uploads/"+currentData[i]["handleImg"]
      }
    }
    wx.previewImage({
       current: currentUrl, // 当前显示图片的链接，不填则默认为 urls 的第一张
      urls: imgArr
    })
  }
})

function loadData(that){
  wx.showLoading({
      title: '请稍等...',
    })
    wx.request({
      url: 'http://localhost/app.php/Index/getMediaVideo',
      data: {},
      method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      // header: {}, // 设置请求的 header
      complete: function(res) {
        // complete
         wx.hideLoading()
        if(res.errMsg == 'request:ok'){
             that.setData({
                dataArr: res.data.data
             })
        }
      }
    })
}