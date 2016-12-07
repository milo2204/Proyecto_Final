package proyecto_final

import grails.converters.JSON
import grails.validation.Validateable
import groovy.json.JsonParser
import org.apache.ivy.core.settings.Validatable

@Validateable
class AsignarActividadController {

    def actividadService;
    def estudianteService;
    def grupoService;
    def profesorService
    def categoriaService;
    def materiaService;


    def index() {
    }

    //Usar el return con los [] o sino utilizar Taglibs
    def asignarActividad() {
        [juegos: Juego.list(), actividades: Actividad.list(),materias: Materia.list(), categorias: Categoria.list(),estudiantes: Estudiante.list()]
    }

    def obtenerEstudiantes(Long grupoId){
        render estudianteService.buscarEstudiantesPorGrupo(grupoId) as JSON
    }

    def obtenerCategorias(Long juegoId){
        render categoriaService.buscarCategoriaPorId(juegoId) as JSON
    }

    def obtenerGrupos(Long materiaId){
        render grupoService.buscarGrupoPorMateria(materiaId) as JSON
    }

    def guardarActividad(){ //List<Integer> categoriasId, List<Integer> estudiantesId, List<Integer> parametros){
        //println(params.list('juegosId'))
        def juegosIds = params.list('juegosId')
        def estudiantesIds = params.list('estudiantesId')
        def categoriaIds = params.list('categoriaIds')
        def materiaId = params.materiasId
        def grupoId = params.gruposId
        def parametros = params.list('parametros')
        def valorParametros = params.list('valoresParamatros')
        def fechaInicio = params.date('fechaInicio','MM/dd/yyyy')
        def fechaFin = params.date('fechaFin','MM/dd/yyyy')
        estudianteService.guardarActividad(juegosIds,categoriaIds,estudiantesIds,Long.valueOf(materiaId),Long.valueOf(grupoId),parametros,valorParametros,fechaFin,fechaInicio)
        redirect(controller: "asignarActividad",action: "asignarActividad")


    }

}
