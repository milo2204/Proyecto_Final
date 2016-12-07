package proyecto_final

class CrearMateriaController {

    def index() {}

    def crearMateria(){

    }

    def save(){
        def mat = new Materia(params)
        mat.save(flush: true,failOnError: true)
        redirect(controller: 'crearMateria',action:  'crearMateria')
    }
}
