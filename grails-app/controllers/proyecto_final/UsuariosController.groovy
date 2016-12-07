package proyecto_final

import grails.transaction.Transactional

@Transactional
class UsuariosController {

    def index() { }

    def userService

    def save(){
        def User usu = new User(params)
        userService.save(usu)
        render "Se a guardado satisfactoriamente!"
    }


}
