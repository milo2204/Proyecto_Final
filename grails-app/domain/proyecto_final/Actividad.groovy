package proyecto_final

import WebService.RespuestaActividad
import grails.rest.Resource
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
@Resource(uri='/actividad',formats=['json', 'xml'])
class Actividad {

    static constraints = {
        //juego nullable: true;
    }

    String nombre;
    String comentarioSobreActividad;
    String encabezado;

    static hasMany = [respuestasActividad:RespuestaActividad];
    static hasOne = [juego:Juego];



    static mapping = {
        table "ACTIVIDADES"
        id  column: 'actividad_Id'
        juego column: 'juego_Id'

    }
}
