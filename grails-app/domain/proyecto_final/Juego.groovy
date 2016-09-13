package proyecto_final

class Juego {

    static constraints = {
    }


    String nombre
    Date date
    Actividad actividad;

    static hasOne = [categoria:Categoria];


    static mapping = {
        table "JUEGOS"
        id column: 'juego_Id'
        categoria column: 'categoria_Id'
    }
}
