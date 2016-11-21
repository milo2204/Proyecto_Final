import org.grails.datastore.mapping.query.Query
import proyecto_final.Actividad
import proyecto_final.Categoria
import proyecto_final.Estudiante
import proyecto_final.EstudiantesActividades
import proyecto_final.Grupo
import proyecto_final.Juego
import WebService.RespuestaActividad
import proyecto_final.Materia
import proyecto_final.Profesor
import proyecto_final.RegistroEstudiantesActividades
import proyecto_final.RegistroRespuestaAct
import proyecto_final.Role
import proyecto_final.User
import proyecto_final.UserRole

class BootStrap {

    def categoriaService;
    def bcryptService;

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

        Date fechN = new Date();

        def adminUser = new User()
        adminUser.username = "admin"
        adminUser.password = bcryptService.hashPassword("admin")
        adminUser.email = "admin@admin.com"
        adminUser.nombre = "admin"
        adminUser.apellido = "admin"
        adminUser.telefono = "809-226-9851"
        adminUser.password
        adminUser.fechaNacimiento = fechN;
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

        Profesor pro = new Profesor()
        pro.nombre = "Profesor"
        pro.apellido = "Profesor"
        pro.telefono = "8092262037"
        pro.email ="pro@pro.com"
        pro.username = "milo"
        pro.password ="1234"
        pro.fechaNacimiento = newDate
        pro.save(flush: true,failOnError: true)

        Estudiante estu = new Estudiante()
        estu.nombre = "Prueba"
        estu.apellido = "Prueba"
        estu.edad = 24
        estu.codigoEstudiate = "20102302"
        estu.telefono = "8092262037"
        estu.email ="milo2204@gmail.com"
        estu.username = "milo2204"
        estu.password ="1234"
        estu.fechaNacimiento = newDate
        estu.save(flush: true,failOnError: true)

        Estudiante estu1 = new Estudiante()
        estu1.nombre = "Prueba 2"
        estu1.apellido = "Prueba"
        estu1.edad = 24
        estu1.codigoEstudiate = "20102302"
        estu1.telefono = "8092262037"
        estu1.email ="milo220434@gmail.com"
        estu1.username = "milo2204678"
        estu1.password ="1234"
        estu1.fechaNacimiento = newDate
        estu1.save(flush: true,failOnError: true)

        Materia materia = new Materia();
        materia.nombreMateria = "Matematica";
        materia.codigoMateria = "MATOO1"
        materia.save(flush: true,failOnError: true)

        Grupo grupo = new Grupo()
        grupo.materia = materia
        grupo.codigoGrupo = "GRP001"
        grupo.addToEstudiantes(estu);
        grupo.addToEstudiantes(estu1);
        grupo.save(flush: true,failOnError: true)

        //pro.addToMaterias(materia)
        //pro.save(flush: true,failOnError: true)

        Actividad act = new Actividad()
        act.juego = aritmetica
        act.nombre = aritmetica.nombre
        act.categoria = sumar
        act.save(flush: true,failOnError: true)

        Actividad a = new Actividad()
        a.juego = trazar
        a.nombre = trazar.nombre
        a.categoria = numerosTrazarCat
        a.save(flush: true,failOnError: true)

        Actividad b = new Actividad()
        b.juego = trazar
        b.nombre = memorizar.nombre
        b.categoria = numerosMemorizarCat
        b.save(flush: true,failOnError: true)
        //RegistroRespuestaAct.create(actividad,respuesta);


        //act.addToEstudiantes(estu)
        act.addToEstudiantes(estu1)
        b.addToEstudiantes(estu)
        act.save(flush: true,failOnError: true)
        b.save(flush: true, failOnError: true)
        println("Se creo...")

        RegistroEstudiantesActividades ea = new RegistroEstudiantesActividades()
        ea.estudiante = estu
        ea.actividad = a;
        ea.save(flush: true, failOnError: true)

        RegistroEstudiantesActividades e = new RegistroEstudiantesActividades()
        e.actividad = a;
        e.estudiante = estu1
        e.save(flush:true,failOnError: true)

        def eActividades = RegistroEstudiantesActividades.findAllByActividad(a)
        println("El tamaño de la lista " + eActividades.size())

    }

    def destroy = {
    }
}
