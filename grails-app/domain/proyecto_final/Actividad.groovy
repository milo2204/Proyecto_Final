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
    String letras
    int numeroMaximo;
    int numeroMinimo;
    String parametros
    Categoria categoria
    Juego juego
    Date fechaInicio;
    Date fechaFin;
    Date fechaCreada;

    static belongsTo = Estudiante
    static hasMany = [respuestaActividad:RespuestaActividad,registroEstAct:RegistroEstudiantesActividades];

    static mapping = {
        table "Actividades"
        id  column: 'actividad_Id'

    }

    static constraints = {
        comentarioSobreActividad nullable: true
        encabezado nullable: true
        letras nullable: true
        parametros nullable: true
        numeroMaximo nullable: true
        numeroMinimo nullable: true
        numeroDeJugadas nullable: true
        nivelDeDificultad nullable: true
        categoria nullable: true
        fechaCreada nullable: true
        fechaFin nullable: true
        fechaInicio nullable: true
        registroEstAct nullable: true
    }
}
