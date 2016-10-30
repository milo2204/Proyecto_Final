package proyecto_final

class Juego {

    static constraints = {
        nombre nullable: false
        date nullable: false
        categorias nullable: false

    }

    String nombre
    Date date
    static hasMany = [categorias:Categoria];

    static mapping = {
        table "JUEGOS"
        id column: 'juego_Id'
    }
}
