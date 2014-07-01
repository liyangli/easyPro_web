import com.bohui.Project
import com.bohui.User

class BootStrap {

    def init = { servletContext ->
        def user = User.findAll()
        if(!user){
            new User(userName: 'admin',password: 'admin',loginName: 'admin').save();
        }

        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()
        new Project(name: 'name1',projectDesc: 'sfasadf',otherName: 'name1').save()

    }
    def destroy = {
    }
}
