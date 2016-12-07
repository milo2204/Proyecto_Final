package proyecto_final

import grails.converters.JSON

class AsignarEstudianteGrupoController {

    def grupoService;
    def estudianteService;

    def index() { }

    def asignarEstudianteGrupo(){
        [materias:Materia.list(),estudiantes:Estudiante.list()]
    }

    def obtenerGrupos(Long materiaId){
        render grupoService.buscarGrupoPorMateria(materiaId) as JSON

    }

    def guardarEstudiantes(Long grupoId){
        def estudiantesList = params.list('elist')
        estudianteService.guardarEstudiantesPorGrupo(grupoId,estudiantesList)
        redirect (controller: "asignarEstudianteGrupo", action: "asignarEstudianteGrupo")

    }

}
