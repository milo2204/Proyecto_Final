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

    static hasMany = [respuestaActividad:RespuestaActividad];
    static hasOne = [juego:Juego];


    static mapping = {
        table "Actividades"
        id  column: 'actividad_Id'
        juego column: 'juego_Id'

    }

    static constraints = {
        //juego nullable: true;
        nombre blank: false, nullable: false
        comentarioSobreActividad blank: true, nullable: true
        encabezado blank: false, nullable: false
    }
}
