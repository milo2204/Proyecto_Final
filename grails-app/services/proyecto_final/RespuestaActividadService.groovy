package proyecto_final

import WebService.RespuestaActividad
import com.proyectofinal.encapsulacion.rest.RespuestaRest
import grails.transaction.Transactional

@Transactional
class RespuestaActividadService {

    def serviceMethod() {

    }

    /**
     *
     * @param resp
     * @return
     */
    public RespuestaActividad save(RespuestaRest resp){
        println("Registrado respuesta: "+resp.properties)
        def act = Actividad.get(resp.idActividad as Long)
        def respuesta = new RespuestaActividad();
        respuesta.cantidadRespuestasCorrectas = resp.cantidadRespuestasCorrectas
        respuesta.cantidadRespuestasIncorrectas = resp.cantidadRespuestasIncorrectas
        respuesta.puntuacion = resp.puntuacion
        respuesta.fecha = new Date();
        respuesta.actividad = act

        respuesta.save(flush: true, failOnError: true)

        println("La actividad: "+act?.properties)
        RegistroRespuestaAct.create(act,respuesta, true)

        return respuesta;
    }
}
