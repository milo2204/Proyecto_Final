package proyecto_final

import grails.plugin.cache.CacheEvict
import grails.transaction.Transactional

import javax.swing.border.EtchedBorder

@Transactional
class EstudianteService {

    def serviceMethod() {

    }

    def Set<Estudiante> buscarEstudiantesPorGrupo(Long id) {
        def estudiantes = Grupo.get(id).getEstudiantes();
        return estudiantes
    }

    def guardarEstudiante(Estudiante estu){
        estu.save(flush: true, failOnError: true);

    }

    def guardarEstudiantesPorGrupo (Long grupoId,List estudiantes){
        def grupo = Grupo.get(grupoId)
        for(id in estudiantes){
            def estu = Estudiante.get(id)
            grupo.addToEstudiantes(estu);
        }

        grupo.save(flush: true, failOnError: true)
    }

    def guardarActividad(List juegoIds,List categoriaIds, List estudianteIds, Long materiaId, Long grupoId,List parametros,List valorParametros){
        List<Estudiante> estudiantes = new ArrayList()
        List<Juego> juegos = new ArrayList()
        List<Actividad> actList = new ArrayList()
        HashMap<Long,Estudiante> estMap = new HashMap()

        def gru = Grupo.get(grupoId)
        def mat = Materia.get(materiaId)

        for(id in juegoIds) {
            def juego = Juego.get(id)
            def act = new Actividad()
            act.juego = juego
            act.nombre = juego.nombre
            act.save(flush: true,failOnError: true)
            actList.add(act)
            juegos.add(juego)

        }

        Integer count = 0;
        for(id in categoriaIds){
            def cat = Categoria.get(id)
            def act = actList.get(count)
            act.categoria = cat
            count++
            act.save(flush: true,failOnError: true)
        }

        for(Integer i=0;i<juegos.size();i++){
            def act = actList.get(i)
            def pvalores = parametros.get(i).split(",")
            for(Integer j = 0;j<pvalores.size();j++){
                def val = ""
                def trazarVal = ""
                if(juegos[i].nombre == "Trazar"){
                    trazarVal = valorParametros[i][0]
                    val = valorParametros[i].split(/\d/)

                }else {
                    val = valorParametros[i].split(",")

                }
                if(pvalores[j] == "1") {
                    act.numeroDeJugadas = (trazarVal != "")? Integer.valueOf(trazarVal):Integer.valueOf(val[j])
                }

                if(pvalores[j] == "2") {
                    act.numeroMinimo = Integer.valueOf(val[j]);
                }
                if(pvalores[j] == "3") {
                    act.numeroMaximo = Integer.valueOf(val[j]);
                }
                if(pvalores[j] == "4") {
                    act.nivelDeDificultad = Integer.valueOf(val[j]);
                }
                if(pvalores[j] == "5") {
                    act.letras = String.valueOf(val[j]);

                }

            }
            act.save(flush: true,failOnError: true)
        }

        for(Integer i = 0;i<actList.size();i++){
            def act = Actividad.get(actList.get(i).getId())
            for(id in estudianteIds){
                def est = Estudiante.get(id)
                RegistroEstudiantesActividades ea = new RegistroEstudiantesActividades()
                ea.estudiante = est
                ea.actividad = act
                ea.save(flush: true,failOnError: true)


            }
        }

    }

}