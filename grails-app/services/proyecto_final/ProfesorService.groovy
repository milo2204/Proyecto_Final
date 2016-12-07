package proyecto_final

import grails.transaction.Transactional

@Transactional
class ProfesorService {

    def serviceMethod() {

    }

    def guardarProfesor(Profesor profesor){
        profesor.save(flush: true, failOnError: true)
    }

    def guardarProfesorPorGrupo(Long grupoId,Long profId){
        def profesor = Profesor.get(profId)
        def grupo = Grupo.get(grupoId)
        profesor.addToGrupos(grupo)
        profesor.save(flush: true,failOnError: true)

    }
}
