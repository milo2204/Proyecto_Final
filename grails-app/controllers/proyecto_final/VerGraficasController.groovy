package proyecto_final

import WebService.RespuestaActividad
import grails.converters.JSON

class VerGraficasController {

    def index() { }

    def grupoService
    def estudianteService

    def verGraficas(){
        [materias:Materia.list(),juegos:Juego.list(),categorias:Categoria.list()]
    }

    def obtenerGrupos(Long materiaId){
        render grupoService.buscarGrupoPorMateria(materiaId) as JSON
    }

    def obtenerEstudiantes(Long grupoId){
        render estudianteService.buscarEstudiantesPorGrupo(grupoId) as JSON
    }

    def graficarActividad(Long estuId,String juego){
        render estudianteService.graficarActividad(estuId,juego) as JSON

    }
}
