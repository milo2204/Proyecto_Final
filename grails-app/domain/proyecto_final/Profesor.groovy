package proyecto_final

class Profesor extends User{

    static constraints = {
        codigoProfesor nullable: true
    }

    static hasMany = [materias:Materia,grupos:Grupo]

    String codigoProfesor
}
