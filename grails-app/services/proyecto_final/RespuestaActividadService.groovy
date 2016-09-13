package proyecto_final

import WebService.RespuestaActividad
import com.proyectofinal.encapsulacion.rest.RespuestaRest
import grails.transaction.Transactional

@Transactional
class RespuestaActividadService {

    def serviceMethod() {

    }

    def save(RespuestaRest resp){
        def respuesta = new RespuestaActividad();
        respuesta.cantidadRespuestasCorrectas = resp.cantidadRespuestasCorrectas
        respuesta.cantidadRespuestasIncorrectas = resp.cantidadRespuestasIncorrectas
        respuesta.puntuacion = resp.puntuacion
        respuesta.fecha = new Date();

        def act = Actividad.findById(resp.idActividad)

        try {
            respuesta.save(flush: true, failOnError: true)
        }catch (Exception e) {
            println(e.getMessage())
        }


        try {
            print("CREANDO LA RESPUESTA")
            RegistroRespuestaAct.create(act,respuesta)
            act.addToRespuestasActividad(respuesta)
            act.save()
        }catch (Exception e){
            println(e.getMessage())
        }

    }
}
