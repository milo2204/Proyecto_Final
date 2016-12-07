package proyecto_final


class CrearEstudianteController {

    def estudianteService;

    def index() { }

    def crearEstudiante(){

    }
    def save(){
        def estudiante = new Estudiante(params);
        def next = estudiante.executeQuery("select max(id) from Estudiante")[0]
        estudiante.codigoEstudiate = "EST" + (Integer.valueOf(next) + 1)
        estudiante.fechaNacimiento = params.fechaNacimiento
        estudianteService.guardarEstudiante(estudiante);
        [estudiante:estudiante]

        redirect (controller: "crearEstudiante", action:  "crearEstudiante")
    }
}
