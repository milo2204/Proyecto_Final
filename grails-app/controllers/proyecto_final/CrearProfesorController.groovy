package proyecto_final

class CrearProfesorController {

    def index() {}

    def profesorService;

    def crearProfesor() {
        [materias: Materia.list()]

    }


    def save() {
        def profesor = new Profesor(params)
        profesor.fechaNacimiento = params.fechaNacimiento
        def valor =  String.valueOf(params.materia).split("\\'")
        String val = valor[1]
        def materia = Materia.findByNombreMateria(val)
        profesor.addToMaterias(materia)
        profesorService.guardarProfesor(profesor)

        redirect (controller: "crearProfesor", action:  "crearProfesor")


    }
}
