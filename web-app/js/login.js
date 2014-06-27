/**
 * Created by bohui on 2014/6/27.
 */
(function($){
     $(function(){
         $(".button").bind('click',function(){
             //点击进行登录
             if($("#remember").is(':checked')){
                 //选择
                 var user = "";
                 var name = $("#userName").val();
                 var password = $("#password").val();
                 user += name+","+password;
                 $.cookie("user",user);
             }else{
                 $.cookie("user",null);
             }

         });
         //判断cookie中是否含有值
         var user = $.cookie("user");
         if(user){
             var strs = user.split(",");
             $("#userName").val(strs[0]);
             $("#password").val(strs[1]);
             $("#remember").attr("checked","checked");
         }
     });

})(jQuery)
