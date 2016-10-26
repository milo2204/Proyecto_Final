package proyecto_final

class Categoria {

    static constraints = {
        name nullable: false
        juego nullable: false
    }

    String name
    Juego juego;

    static mapping = {
        table "CATEGORIAS"
        id column: 'categoria_Id'
    }
}
