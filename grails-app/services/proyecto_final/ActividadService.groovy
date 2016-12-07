package proyecto_final

import javax.transaction.Transactional

@Transactional
class ActividadService {

    def serviceMethod() {

    }

    def List<Actividad> showListaActividades(){
       return [actividades: Actividad.list()]
    }

    def List<Categoria> showListCategorias(){
        return [categorias: Categoria.list()]
    }

}
