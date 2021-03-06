// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require 'china_city/jquery.china_city'
//= require jquery.turbolinks
//= require jquery_ujs
//= require social-share-button
//= require bootstrap
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales/zh-CN
//= require turbolinks
//= require_tree .



$(document).on('turbolinks:load', function() {

  // 收起提示信息通知
    slideUpAlert();
});

// 提示信息通知
function slideUpAlert() {
  // 消息停留2000毫秒（2秒），消失动画时间250毫秒

  $(".alert").delay(2000).slideUp(250, function() {
    $(this).remove();
  });
}

//--- 回到顶部 ---
$(document).on('click', '#gotop', function () {
  $('body').animate({'scrollTop': 0}, 500) //在500ms的时间内，慢慢地回到顶部
})


$(window).scroll(function () {
  if ($(this).scrollTop() > 500) {
    $('#gotop').fadeIn() // 当页面向下滚动的距离大于500px时，慢慢地显示「回到顶部按钮」
  } else {
    $('#gotop').fadeOut() // 否则慢慢地隐藏「回到顶部按钮」

  }
})


// // 图片自适应大小支持代码块
//   // 在product/show.html.erb的页面中，对img图片用这一格式进行校正
//   // 让图片在大于div宽度时自动缩小不而溢出，确保版面的公正和美观
  function ReImgSize(){
    for (j=0;j<document.images.length;j++)
    {
      document.images[j].width=(document.images[j].width>420)?"420":document.images[j].width;
    }
  }

  // navbar动态
  $(window).scroll(function () {
      if ($(this).scrollTop() > 125) {
          $('#navbar').addClass('show_bgcolor')
      } else {
          $('#navbar').removeClass('show_bgcolor')
      }
  })
