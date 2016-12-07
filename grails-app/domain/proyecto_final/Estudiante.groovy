package proyecto_final

class Estudiante extends User{

    static constraints = {
        codigoEstudiate nullable: true
        actividades lazy:false
        profesores lazy: false
        materias lazy: false

    }

    String codigoEstudiate
    //String nombre;
    //String apellido;
    int edad;

    static hasMany = [materias:Materia,profesores:Profesor,actividades:Actividad,registroEstudianteActividades:RegistroEstudiantesActividades];

}
