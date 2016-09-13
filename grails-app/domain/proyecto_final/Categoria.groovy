package proyecto_final

class Categoria {

    static constraints = {
    }

    String name
    Juego juego;

    static mapping = {
        table "CATEGORIAS"
        id column: 'categoria_Id'
    }
}
