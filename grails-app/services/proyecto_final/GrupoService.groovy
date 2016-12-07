package proyecto_final

import grails.transaction.Transactional

@Transactional
class GrupoService {

    def serviceMethod() {

    }

    def Set<Grupo> buscarGrupoPorMateria(Long materiaId){
        return Grupo.findAllByMateria(Materia.findById(materiaId));
    }

    def guardarGrupo(Grupo grupo){
        grupo.save(flush: true,failOnError: true)
    }
}
