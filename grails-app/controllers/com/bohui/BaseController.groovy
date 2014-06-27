package com.bohui

abstract class BaseController {

    def auth(){
        //验证，是否已经登录
        def user = session.user
        if(!user){
            //判断cookie中是否含有指定值
            def cookieUser = cookie(name:'user')
            if(cookieUser){
                System.out.println(cookieUser);
//                User.findByUserNameAndPassword(cookieUser.subSequence(0,))
            }
            def originalRequesteParams = [controller: controllerName,action: actionName]
            originalRequesteParams.put(params)

            session.originalRequestParams = originalRequesteParams
            redirect(url: "/")
            return false
        }
    }
}
