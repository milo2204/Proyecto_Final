package WebServiceController

import WebService.RespuestaActividad
import com.proyectofinal.encapsulacion.rest.RespuestaRest
import grails.converters.JSON
import grails.rest.RestfulController

import grails.transaction.*
import proyecto_final.Actividad
import proyecto_final.RegistroRespuestaAct
import proyecto_final.RespuestaActividadService

@Transactional(readOnly = false)
class RespuestaActividadController extends RestfulController<RespuestaActividad> {

    static responseFormats = ["json"]
    def respuestaActividadService;

    RespuestaActividadController(){
        super(RespuestaActividad)
    }

    def index(){
        respond RespuestaActividad.list();
    }

    def show(){
        respond RespuestaActividad.get(params.getIdentifier())
    }

    def save(RespuestaRest resp){
        RespuestaActividad respuesta = respuestaActividadService.save(resp)
        respond(respuesta, [formats: ['json','xml' ]])
    }

    def update(){
        def json = request as JSON
        respond RespuestaActividad.get(params.getIdentifier()).with {
            cantidadRespuestasCorrectas = json.cantidadRespuestasCorrectas
            //cantidadRespuestasIncorrectas = json.cantidadRespuestasIncorrectas
            //puntuacion = json.puntuacion
            //fecha = new Date();
            save()
        }
    }

    def remove(){
        RespuestaActividad.get(params.getIdentifier()).delete()
        respond "deleted respuesta"
    }

    def respuestasActividades () {
        render(contentType: "application/json") { RespuestaActividad.list() }
    }

}
