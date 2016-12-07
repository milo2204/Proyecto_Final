package proyecto_final

import grails.converters.JSON

class AsignarProfesorGrupoController {

    def index() { }

    def profesorService;
    def grupoService;

    def asignarProfesorGrupo(){
        [materias:Materia.list(),profesores:Profesor.list()]
    }

    def obtenerGrupos(Long materiaId){
        render grupoService.buscarGrupoPorMateria(materiaId) as JSON

    }

    def save(Long grupoId,Long profId){
        profesorService.guardarProfesorPorGrupo(grupoId,profId)
        redirect(controller: "asignarProfesorGrupo",action: "asignarProfesorGrupo")
    }

}
