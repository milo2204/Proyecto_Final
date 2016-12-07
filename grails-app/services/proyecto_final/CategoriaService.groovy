package proyecto_final

import grails.transaction.Transactional

import javax.transaction.Transactional

@Transactional
class CategoriaService {

    def serviceMethod() {

    }

    def Categoria crearCategoria (String categoriaNombre, ArrayList<Integer> parametros){
        def categoria = new Categoria()
        categoria.name = categoriaNombre
        categoria.parametros = parametros
        return categoria
    }

    def Set<Categoria> buscarCategoriaPorId(Long juegoId){
        return Juego.get(juegoId).getCategorias()
    }
}
