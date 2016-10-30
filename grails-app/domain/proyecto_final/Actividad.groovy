package proyecto_final

import WebService.RespuestaActividad
import grails.rest.Resource
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
@Resource(uri='/actividad',formats=['json', 'xml'])
class Actividad {


    String nombre;
    String comentarioSobreActividad;
    String encabezado;
    int numeroDeJugadas
    int nivelDeDificultad
    String parametros

    static hasMany = [respuestaActividad:RespuestaActividad];


    static mapping = {
        table "Actividades"
        id  column: 'actividad_Id'

    }

    static constraints = {
        nombre blank: false, nullable: false
        comentarioSobreActividad blank: true, nullable: true
        encabezado blank: false, nullable: false
    }
}
