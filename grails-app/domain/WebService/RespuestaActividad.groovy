package WebService

import grails.rest.Resource
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import proyecto_final.Actividad
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
@Resource(uri='/respuestaActividad',formats=['json', 'xml'])
class RespuestaActividad {

    int cantidadRespuestasCorrectas;
    int cantidadRespuestasIncorrectas;
    Date fecha = new Date();
    int puntuacion;

    static constraints = {

    }

    static mapping = {
        table "RESPUESTAACTIVIDADES"
        id generator: 'identity', column: 'respuestaActividad_Id'
    }

}
