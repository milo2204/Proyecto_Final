package proyecto_final

class Grupo {

    static constraints = {
    }

    Materia materia;
    String codigoGrupo
    int minimoCapacidad
    int maximaCapacidad

    static hasMany = [estudiantes:Estudiante];

}
