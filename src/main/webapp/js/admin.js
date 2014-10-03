/**
 * Created by panmingzhi815 on 2014/9/25.
 */
$(function(){
    $('#kaptchaImage').click(function () {
        $(this).attr('src', '/kaptcha.jpg?' + Math.floor(Math.random()*100) );
    })
});