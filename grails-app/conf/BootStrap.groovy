import com.bohui.User

class BootStrap {

    def init = { servletContext ->
        def user = User.findAll()
        if(!user){
            new User(userName: 'admin',password: 'admin',loginName: 'admin').save();
        }

    }
    def destroy = {
    }
}
