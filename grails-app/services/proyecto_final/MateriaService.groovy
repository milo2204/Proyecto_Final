package proyecto_final

import grails.transaction.Transactional

@Transactional
class MateriaService {

    def serviceMethod() {

    }

    def Set<Materia> buscarMateria(){
        return Materia.list()
    }
}
