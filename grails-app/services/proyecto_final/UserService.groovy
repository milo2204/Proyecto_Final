package proyecto_final

import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    public void save(User usu){
        usu.save(flush: true,failOnError: true)
    }


}
