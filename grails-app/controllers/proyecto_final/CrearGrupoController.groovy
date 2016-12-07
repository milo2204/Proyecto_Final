package proyecto_final

class CrearGrupoController {

    def grupoService;

    def index() { }

    def crearGrupo(){
        [materias:Materia.list()]
    }

    def save(){
        def grupo = new Grupo(params)
        def mat = String.valueOf(params.materias).split("\\'")
        def materia = Materia.findByNombreMateria(mat[1])
        grupo.materia = new Materia()
        grupo.materia = Materia.get(materia.id)
        def next = grupo.executeQuery("select max(id) from Grupo")[0]
        grupo.codigoGrupo  = "GRP" + (next + 1)

        grupoService.guardarGrupo(grupo)

        redirect (controller: "crearGrupo", action:  "crearGrupo")

    }
}
