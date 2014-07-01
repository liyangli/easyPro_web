package com.bohui

abstract class BaseController {

    def auth(){
        //验证，是否已经登录
        def user = session.user
        if(!user){
            //判断cookie中是否含有指定值
            def cookieUser = cookie(name:'user')
            if(cookieUser){
                cookieUser = URLDecoder.decode(cookieUser,"UTF-8")
                def cookies = cookieUser.toString().split(",");
                session.user = User.findByUserNameAndPassword(cookies[0],cookies[1])
                return true
            }
            def originalRequesteParams = [controller: controllerName,action: actionName,params:params]

            session.originalRequestParams = originalRequesteParams
            redirect(url: "/")
            return false
        }else{
            System.out.println(user)
        }
    }
}
