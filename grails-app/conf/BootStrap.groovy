import org.grails.datastore.mapping.query.Query
import proyecto_final.Actividad
import proyecto_final.Categoria
import proyecto_final.Grupo
import proyecto_final.Juego
import WebService.RespuestaActividad
import proyecto_final.Materia
import proyecto_final.RegistroRespuestaAct
import proyecto_final.Role
import proyecto_final.User
import proyecto_final.UserRole

class BootStrap {

    def categoriaService;


    def init = { servletContext ->

        def rolePadre = new Role()
        def roleProfesor = new Role()
        def roleEstudiante = new Role()
        def roleAdmin = new Role()

        if (!Role.exists(Role.findByAuthority("PADRE"))) {
            rolePadre.authority = "PADRE"
            rolePadre.save(flush: true, failOnError: true)
        }

        if (!Role.exists(Role.findByAuthority("PROFESOR"))) {
            roleProfesor.authority = "PROFESOR"
            roleProfesor.save(flush: true, failOnError: true)
        }
        if (!Role.exists(Role.findByAuthority("ESTUDIANTE"))){
            roleEstudiante.authority = "ESTUDIANTE"
            roleEstudiante.save(flush: true, failOnError: true)
        }

        if (!Role.exists(Role.findByAuthority("ADMIN"))) {
            roleAdmin.authority = "ADMIN"
            roleAdmin.save(flush: true, failOnError: true)
        }

        def adminUser = new User()
        adminUser.username = "admin"
        adminUser.password = "admin"
        adminUser.email = "admin@admin.com"
        adminUser.nombre = "admin"
        adminUser.apellido = "admin"
        adminUser.telefono = "809-226-9851"

        adminUser.save(flush: true, failOnError: true)

        try {
            UserRole.create(adminUser, roleAdmin)
        }catch (Exception e){
            print(e.getMessage())
        }

        Date newDate = new Date();

        Juego aritmetica = new Juego();
        aritmetica.nombre = "Aritmetica";
        aritmetica.date = newDate;
        //aritmetica.save(flush: true);

        Juego memorizar = new Juego()
        memorizar.nombre = "Memorizar";
        memorizar.date = newDate
        //memorizar.save(flush: true)

        Juego trazar = new Juego()
        trazar.nombre = "Trazar"
        trazar.date = newDate
        trazar.save(flush: true)

        Juego vocabulario = new Juego()
        vocabulario.nombre = "Vocabulario"
        vocabulario.date = newDate
        //vocabulario.save(flush: true)

        //Categorias para Aritmetica
        ArrayList<Integer> parametrosSumarRestar = new Arrays.ArrayList<Integer>(Arrays.asList(1,2,3))


        Categoria sumar =  categoriaService.crearCategoria("Sumar",parametrosSumarRestar)
        sumar.save(flush: true)

        Categoria resta = categoriaService.crearCategoria("Restar",parametrosSumarRestar)
        resta.save(flush: true)

        Categoria sumaResta = categoriaService.crearCategoria("Sumar y Restar",parametrosSumarRestar)
        sumaResta.save(flush: true)
        //Fin de cateorias

        //Categorias para memorizar
        ArrayList<Integer> parametrosMemorizar = new ArrayList<>(Arrays.asList(1,4))

        Categoria numerosMemorizarCat = categoriaService.crearCategoria("Numeros",parametrosMemorizar)
        numerosMemorizarCat.save(flush: true)

        Categoria letrasMemorizarCat = categoriaService.crearCategoria("Letras",parametrosMemorizar)
        letrasMemorizarCat.save(flush: true)

        Categoria figurasMemorizarCat = categoriaService.crearCategoria("Figuras",parametrosMemorizar)
        figurasMemorizarCat.save(flush: true)

        Categoria imagenesCat = categoriaService.crearCategoria("Imagenes",parametrosMemorizar)
        imagenesCat.save(flush: true)
        //Fin de categorias

        //Categorias para trazar
        ArrayList<Integer> parametrosTrazar = new ArrayList<Integer>(Arrays.asList(1,5))

        Categoria numerosTrazarCat = categoriaService.crearCategoria("Numeros",parametrosTrazar)
        numerosTrazarCat.save(flush: true)

        Categoria letrasTrazarCat = categoriaService.crearCategoria("Letras",parametrosTrazar)
        letrasTrazarCat.save(flush: true)

        Categoria figurasTrazarCat = categoriaService.crearCategoria("Figuras",parametrosTrazar)
        figurasTrazarCat.save(flush: true)
        //Fin categorias

        //Categorias para Vocabulario
        ArrayList<Integer> parametrosVocabulario = new ArrayList<>(Arrays.asList(1,4))

        Categoria coloresCat = categoriaService.crearCategoria("Colores",parametrosVocabulario)
        coloresCat.save(flush: true)

        Categoria numerosVocabularioCat = categoriaService.crearCategoria("Numeros",parametrosVocabulario)
        numerosVocabularioCat.save(flush: true)

        Categoria vehiculosCat = categoriaService.crearCategoria("Vehiculos",parametrosVocabulario)
        vehiculosCat.save(flush: true)

        Categoria animalesCat = categoriaService.crearCategoria("Animales",parametrosVocabulario)
        animalesCat.save(flush: true)

        Categoria frutasCat = categoriaService.crearCategoria("Frutas",parametrosVocabulario)
        frutasCat.save(flush: true)

        Categoria vegetalesCat = categoriaService.crearCategoria("Vegetales",parametrosVocabulario)
        vegetalesCat.save(flush: true)
        //fin de categorias

        //Agregando categorias de aritmetica
        aritmetica.addToCategorias(sumar)
        aritmetica.addToCategorias(resta)
        aritmetica.addToCategorias(sumaResta)
        aritmetica.save(flush: true, failOnError: true)

        //Agregando categorias a memorizar
        memorizar.addToCategorias(numerosMemorizarCat)
        memorizar.addToCategorias(letrasMemorizarCat)
        memorizar.addToCategorias(figurasMemorizarCat)
        memorizar.addToCategorias(imagenesCat)
        memorizar.save(flush: true,failOnError: true)

        //Agregando cateogiras a trazar
        trazar.addToCategorias(numerosTrazarCat)
        trazar.addToCategorias(letrasTrazarCat)
        trazar.addToCategorias(figurasTrazarCat)
        trazar.save(flush: true, failOnError: true)

        //Agregando categorias a vocabulario
        vocabulario.addToCategorias(coloresCat)
        vocabulario.addToCategorias(numerosVocabularioCat)
        vocabulario.addToCategorias(vehiculosCat)
        vocabulario.addToCategorias(animalesCat)
        vocabulario.addToCategorias(frutasCat)
        vocabulario.addToCategorias(vegetalesCat)
        vocabulario.save(flush: true, failOnError: true)


        Materia materia = new Materia();
        materia.nombreMateria = "Matematica";
        materia.codigoMateria = "MATOO1"
        materia.save(flush: true,failOnError: true)

        Grupo grupo = new Grupo()
        grupo.materia = materia
        grupo.nombreGrupo = "MAT-001"
        grupo.codigoGrupo = "GRP001"
        grupo.save(flush: true,failOnError: true)


        //RegistroRespuestaAct.create(actividad,respuesta);
        println("Se creo...")

    }

    def destroy = {
    }
}
