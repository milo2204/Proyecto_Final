package proyecto_final

class CrearActividadController {

    def crearActividadservice;

    def index() { }

    def categoriaList (){
        [categoria: Categoria.list()]
    }

    def show(){
        [categoria: Categoria.get(params.id)]
    }

    def categoriaName(){
        [categoria: Categoria.findByNameLike(params.bookName)]
    }


}
