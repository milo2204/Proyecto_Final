package WebService

import grails.rest.Resource
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import proyecto_final.Actividad
import proyecto_final.Estudiante

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
//@Resource(uri='/respuestaActividad',formats=['json', 'xml']) //TODO: estas utilizando el mecanismo por defecto, no entra al services.
class RespuestaActividad {

    int cantidadRespuestasCorrectas;
    int cantidadRespuestasIncorrectas;
    Date fecha = new Date();
    int puntuacion;
    float segundos
    static belongsTo = [actividad:Actividad,estudiante:Estudiante]

    static constraints = {
        cantidadRespuestasCorrectas blank: false, nullable:false
        cantidadRespuestasIncorrectas blank:false, nullable:false
        fecha nullable:false, blank:false
        puntuacion nullable:false, blank:false
        segundos nullable: true
        estudiante nullable: true
    }

    static mapping = {
        table "RespuestasActividades"
        id generator: 'identity', column: 'respuestaActividad_Id'
    }

}
