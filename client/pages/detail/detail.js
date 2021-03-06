// pages/detail/detail.js
const qcloud = require('../../vendor/wafer2-client-sdk/index.js');
const config = require('../../config.js');

Page({

  /**
   * 页面的初始数据
   */
  data: {
    movieDetail: {
      id: 0,
      score: 8.5,
      year: 2005,
      title: '壁花少年',
      image: 'https://movie-1256948132.cos.ap-beijing.myqcloud.com/p1874816818.jpg',
      thumbnail: 'https://movie-1256948132.cos.ap-beijing.myqcloud.com/p1874816818.jpg',
      video: '',
      description: '查理（罗根·勒曼 Logan Lerman 饰）是个害羞和孤独的高中新生，拥有超越年龄的敏感和泪腺，总是默默观察身边的家人和朋友，是个典型的「壁花少年」。他的青春期充满各种挫折，先后经历了阿姨为给他买生日礼物去世、最好朋友自杀、受同侪排挤欺负、单恋没有回应等各种事情。然而查理还不是最惨的，因为和他一样被生活逼入墙角罚站的人实在太多。他幸运的拥有一个开明的老师和两个高年级的好友：叛逆娇俏的少女珊（艾玛·沃森 Emma Watson 饰）和自信满满的同志男生帕特里克（埃兹拉·米勒 Ezra Miller 饰），他们让查理明白了有时候不能永远旁观，必须要参与进来才能拥有属于自己的精彩。 ',
      category: '青春 / 成长 / 美国 / 爱情',
    },
    movieId: 1,
    isShowAll: false,
    isVideoShow: false,
    isMediaChooseModalShow: false,
    isScroll: true,
    contentHeight: 280,
    characterNum: 22, // 每一行文字数量
    hasOwnComment: false // 是否已发表过评论
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getCommentList(options.id)
    this.getMovieDetail(options.id)
    if (options.id === 4 ) {
      this.setData({
        characterNum: 20.8
      })
    }
  },
  // 获取电影详情
  getMovieDetail(id) {
    wx.showLoading({
      title: '加载电影信息...',
    })

    qcloud.request({
      url: config.service.movieDetail + id,
      success: res => {
        wx.hideLoading()
        
        let data = res.data
        console.log(data)
        if (!data.code) {
          wx.showToast({
            title: '加载成功'
          })

          this.setData({
            movieDetail: data.data,
            movieId: id
          })
        } else {
          wx.showToast({
            icon: 'none',
            title: '加载电影失败',
            image: '../../image/error.svg'
          })

          setTimeout(() => {
            wx.navigateBack()
          }, 2000)
        }
      },
      fail: res => {
        wx.hideLoading()

        console.log(res)

        wx.showToast({
          icon: 'none',
          title: '加载电影失败',
          image: '../../image/error.svg'
        })

        setTimeout(() => {
          wx.navigateBack()
        }, 2000)
      }
    })
  },
  /**
 * 获取评论列表
 */
  getCommentList(movieId) {
    console.log('movieId', movieId)
    wx.showLoading({
      title: '加载评论列表...',
    })

    qcloud.request({
      url: config.service.commentList,
      data: {
        movieId
      },
      success: res => {
        wx.hideLoading()
        console.log('res', res)
        let data = res.data;

        if (!data.code) {
          let commentList = data.data
          console.log("data.data", data.data)
          console.log('comment', commentList)
          // 判断用户是否发表过影评：发表过影评，不会出现按钮：反之亦然
          if (commentList.some(item => item.isSelfComment)) {
            this.setData({
              hasOwnComment: true,
            })
          } else {
            this.setData({
              hasOwnComment: false,
            })
          }

          this.setData({
            commentList
          })
        } else {
          setTimeout(() => {
            wx.navigateBack()
          }, 2000)
          wx.showToast({
            icon: 'none',
            title: '加载出错',
            image: '../../image/error.svg'
          })
        }
      },
      fail: res => {
        wx.hideLoading()
        console.log(res)
        wx.showToast({
          icon: 'none',
          title: '评论加载出错',
          image: '../../image/error.svg'
        })
      }
    })
  },
  // 显示/隐藏 更多内容
  onTapDetail() {
    let isShowAll = !this.data.isShowAll
    let contentHeight
    // 计算电影简介占据的高度
    if (isShowAll) {
      let content = this.data.movieDetail.description.length
      contentHeight = Math.floor((content / this.data.characterNum) * 56) 
    } else {
      contentHeight = 280 
    }
    
    this.setData({
      isShowAll,
      contentHeight
    })
  },
  /**
   * 处理按钮单击事件
   */
  onTapHandleComment(e) {
    let type = e.currentTarget.dataset.type
    let movieId = this.data.movieId
    let pages = '/pages/'

    switch(type) {
      case 'showComment':
        pages += 'movie_comment/movie_comment'
        break
      case 'addComment':
        pages += 'edit_comment/edit_comment'
        break
    }

    if (type === 'addComment' && this.data.hasOwnComment) {
      return  wx.showModal({
        title: '提示',
        content: '您已经发表过评论，无法再次发表评论！',
      })
    }

    wx.navigateTo({
      url: `${pages}?movieid=${movieId}`,
    })
    
  },
  /**
   * 弹出媒体选择对话框
   */
  onTapShowMediaChooseModal() {
    this.setData({
      isMediaChooseModalShow: true,
      isScroll: false,
    })
  },
  /**
   * 隐藏媒体选择对话框
   */
  onTapHiddenMediaChooseModal() {
    this.setData({
      isMediaChooseModalShow: false,
      isScroll: true,
    })
  },
  /**
   * 播放视频
   */
  onTapPlayVideo() {
    this.setData({
      isVideoShow: true,
      isMediaChooseModalShow: false, // 关闭媒体选择对话框
      isScroll: false,
    })
  },
  /**
   * 关闭视频 || 关闭媒体选择对话框
   */
  onTapHidden() {
    this.setData({
      isVideoShow: false,
      isMediaChooseModalShow: false,
      isScroll: true,
    })
  }
})