package proyecto_final

class Juego {

    static constraints = {
        nombre nullable: false
        date nullable: false
        categoria nullable: false

    }


    String nombre
    Date date
    static hasMany = [actividades:Actividad];
    static hasOne = [categoria:Categoria];


    static mapping = {
        table "JUEGOS"
        id column: 'juego_Id'
        categoria column: 'categoria_Id'
    }
}
