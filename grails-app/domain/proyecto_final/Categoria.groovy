package proyecto_final

class Categoria {

    static constraints = {
        name nullable: false
    }
     static hasMany = [parametros:Integer]
    String name

    static mapping = {
        table "CATEGORIAS"
        id column: 'categoria_Id'
    }
}
