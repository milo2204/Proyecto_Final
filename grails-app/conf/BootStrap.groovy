import org.apache.catalina.core.ApplicationContext
import org.codehaus.groovy.grails.web.json.JSONObject
import org.grails.datastore.mapping.query.Query
import proyecto_final.Actividad
import proyecto_final.Categoria
import proyecto_final.CobWebController
import proyecto_final.Estudiante
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
import weka.clusterers.ClusterEvaluation
import weka.clusterers.Cobweb
import weka.core.Instance
import weka.core.Instances
import weka.core.converters.ArffLoader


import java.time.LocalDate

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
        if (!Role.exists(Role.findByAuthority("ESTUDIANTE"))) {
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
        } catch (Exception e) {
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
        ArrayList<Integer> parametrosSumarRestar = new Arrays.ArrayList<Integer>(Arrays.asList(1, 2, 3))


        Categoria sumar = categoriaService.crearCategoria("Sumar", parametrosSumarRestar)
        sumar.save(flush: true)

        Categoria resta = categoriaService.crearCategoria("Restar", parametrosSumarRestar)
        resta.save(flush: true)

        Categoria sumaResta = categoriaService.crearCategoria("Sumar y Restar", parametrosSumarRestar)
        sumaResta.save(flush: true)
        //Fin de cateorias

        //Categorias para memorizar
        ArrayList<Integer> parametrosMemorizar = new ArrayList<>(Arrays.asList(1, 4))

        Categoria numerosMemorizarCat = categoriaService.crearCategoria("Numeros", parametrosMemorizar)
        numerosMemorizarCat.save(flush: true)

        Categoria letrasMemorizarCat = categoriaService.crearCategoria("Letras", parametrosMemorizar)
        letrasMemorizarCat.save(flush: true)

        Categoria figurasMemorizarCat = categoriaService.crearCategoria("Figuras", parametrosMemorizar)
        figurasMemorizarCat.save(flush: true)

        Categoria imagenesCat = categoriaService.crearCategoria("Imagenes", parametrosMemorizar)
        imagenesCat.save(flush: true)
        //Fin de categorias

        //Categorias para trazar
        ArrayList<Integer> parametrosTrazar = new ArrayList<Integer>(Arrays.asList(1, 5))

        Categoria numerosTrazarCat = categoriaService.crearCategoria("Numeros", parametrosTrazar)
        numerosTrazarCat.save(flush: true)

        Categoria letrasTrazarCat = categoriaService.crearCategoria("Letras", parametrosTrazar)
        letrasTrazarCat.save(flush: true)

        Categoria figurasTrazarCat = categoriaService.crearCategoria("Figuras", parametrosTrazar)
        figurasTrazarCat.save(flush: true)
        //Fin categorias

        //Categorias para Vocabulario
        ArrayList<Integer> parametrosVocabulario = new ArrayList<>(Arrays.asList(1, 4))

        Categoria coloresCat = categoriaService.crearCategoria("Colores", parametrosVocabulario)
        coloresCat.save(flush: true)

        Categoria numerosVocabularioCat = categoriaService.crearCategoria("Numeros", parametrosVocabulario)
        numerosVocabularioCat.save(flush: true)

        Categoria vehiculosCat = categoriaService.crearCategoria("Vehiculos", parametrosVocabulario)
        vehiculosCat.save(flush: true)

        Categoria animalesCat = categoriaService.crearCategoria("Animales", parametrosVocabulario)
        animalesCat.save(flush: true)

        Categoria frutasCat = categoriaService.crearCategoria("Frutas", parametrosVocabulario)
        frutasCat.save(flush: true)

        Categoria vegetalesCat = categoriaService.crearCategoria("Vegetales", parametrosVocabulario)
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
        memorizar.save(flush: true, failOnError: true)

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
        pro.email = "pro@pro.com"
        pro.username = "milo"
        pro.password = "1234"
        pro.fechaNacimiento = newDate
        pro.save(flush: true, failOnError: true)

        Estudiante estu = new Estudiante()
        estu.nombre = "Prueba"
        estu.apellido = "Prueba"
        estu.edad = 24
        estu.codigoEstudiate = "20102302"
        estu.telefono = "8092262037"
        estu.email = "milo2204@gmail.com"
        estu.username = "milo2204"
        estu.password = "1234"
        estu.fechaNacimiento = newDate
        estu.save(flush: true, failOnError: true)

        Estudiante estu1 = new Estudiante()
        estu1.nombre = "Prueba 2"
        estu1.apellido = "Prueba"
        estu1.edad = 24
        estu1.codigoEstudiate = "20102302"
        estu1.telefono = "8092262037"
        estu1.email = "milo220434@gmail.com"
        estu1.username = "milo2204678"
        estu1.password = "1234"
        estu1.fechaNacimiento = newDate
        estu1.save(flush: true, failOnError: true)

        Materia materia = new Materia();
        materia.nombreMateria = "Matematica";
        materia.codigoMateria = "MATOO1"
        materia.save(flush: true, failOnError: true)

        Grupo grupo = new Grupo()
        grupo.materia = materia
        grupo.codigoGrupo = "GRP001"
        grupo.addToEstudiantes(estu);
        grupo.addToEstudiantes(estu1);
        grupo.save(flush: true, failOnError: true)

        //pro.addToMaterias(materia)
        //pro.save(flush: true,failOnError: true)

        Date newDate1 = new Date().clearTime()
        newDate1.set(year: 2016, month: 11, date: 26)
        print newDate.date - newDate1.date

        Actividad act = new Actividad()
        act.juego = aritmetica
        act.nombre = aritmetica.nombre
        act.categoria = sumar
        act.fechaInicio = newDate
        act.fechaFin = newDate1
        act.save(flush: true, failOnError: true)

        Actividad a = new Actividad()
        a.juego = trazar
        a.nombre = trazar.nombre
        a.categoria = numerosTrazarCat
        a.fechaInicio = newDate
        a.fechaFin = newDate1
        a.save(flush: true, failOnError: true)

        Actividad b = new Actividad()
        b.juego = memorizar
        b.nombre = memorizar.nombre
        b.categoria = numerosMemorizarCat
        b.fechaInicio = newDate
        b.fechaFin = newDate1
        b.save(flush: true, failOnError: true)
        //RegistroRespuestaAct.create(actividad,respuesta);


        RegistroEstudiantesActividades ea = new RegistroEstudiantesActividades()
        ea.estudiante = estu
        ea.actividad = a;
        estu.addToRegistroEstudianteActividades(ea)
        a.addToRegistroEstAct(ea)

        estu.save(flush: true, failOnError: true)
        a.save(flush: true, failOnError: true)
        ea.save(flush: true, failOnError: true)

        RegistroEstudiantesActividades e = new RegistroEstudiantesActividades()
        e.actividad = act;
        e.estudiante = estu
        estu.addToRegistroEstudianteActividades(e)
        act.addToRegistroEstAct(e);

        estu.save(flush: true, failOnError: true)
        act.save(flush: true, failOnError: true)
        e.save(flush: true, failOnError: true)

        def eActividades = RegistroEstudiantesActividades.findAllByEstudiante(estu)
        //println("El tamaño de la lista " + eActividades.size())

        RespuestaActividad resp = new RespuestaActividad()
        resp.actividad = act
        resp.cantidadRespuestasCorrectas = 10
        resp.cantidadRespuestasIncorrectas = 50
        resp.save(flush: true, failOnError: true)

        RespuestaActividad r = new RespuestaActividad()
        r.actividad = act
        r.save(flush: true, failOnError: true)

        //Instances data = new Instances(new BufferedReader(new FileReader("/Users/Mikey/IdeaProjects/Proyecto_Final/web-app/datasets/bank-data.arff")))

        //Cobweb
        /*ArffLoader loader = new ArffLoader()
        loader.file = new File("/Users/Mikey/IdeaProjects/Proyecto_Final/web-app/datasets/bank-data.arff")
        Instances data = loader.structure

        // train Cobweb
        Cobweb model = new Cobweb()
        model.buildClusterer(data)
        Instance current
        while ((current = loader.getNextInstance(data)))
            model.updateClusterer(current)
        model.updateFinished()
        println model*/

        def json = new JSONObject()
        ArffLoader loader = new ArffLoader();
        loader.setFile(new File("/Users/Mikey/IdeaProjects/Proyecto_Final/web-app/datasets/bank-data.arff"));
        Instances structure = loader.getStructure();

        /*Instances data = loader.getDataSet();
        for(Instance inst : data){
            System.out.println("Instance:" + inst);
        }*/

        // train Cobweb
        Cobweb cw = new Cobweb();
        cw.buildClusterer(structure);
        Instance current;
        while ((current = loader.getNextInstance(structure)) != null) {
            cw.updateClusterer(current)
        }
        cw.updateFinished()

        json.put("lA SHIT",cw)

        ClusterEvaluation eval = new ClusterEvaluation()
        eval.setClusterer(cw)
        eval.evaluateClusterer(structure)
        print eval.getClusterAssignments()

        println eval.clusterResultsToString()
        //println cw.toString()

        //println("Este es el attributo " + cw.getTreeRoot().m_clusterInstances.get(0).toString(1))
        /*println("SIZE m_children" + cw.getTreeRoot().m_children.size())
        println("SIZE m_clusterInstances" + cw.getTreeRoot().m_children.get(0).m_clusterInstances.size())
        println("SIZE m_clusterInstances" + cw.getTreeRoot().m_children.get(1).m_clusterInstances.size())
        println("SIZE m_clusterInstances" + cw.getTreeRoot().m_children.get(2).m_clusterInstances.size())
        println("SIZE m_clusterInstances" + cw.getTreeRoot().m_children.get(3).m_clusterInstances.size())*/


        /*def fileArff = new File("./actividades_${new Date()}.arff")
        fileArff.createNewFile()
        fileArff.write("@relation actividades")
        fileArff.append("\n\n")
        fileArff.append("@attribute juego {ARITMETICA,TRAZAR,MEMORIZAR,VOCABULARIO}")
        fileArff.append("@attribute numeroJugadas {0,1,2,3,4,5}")
        fileArff.append("@attribute nivelDificultad {0,1,2,3,4,5,6,7,8,9,10}")
        fileArff.append("@attribute numeroMaximo {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,14,16,17,18,19,20}")
        fileArff.append("@attribute numeroMinimo {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,14,16,17,18,19,20}")
        fileArff.append("@attribute categoria {SUMAR,RESTAR,SUMAR_RESTAR,NUMEROS,LETRAS,FIGURAS,IMAGENES,COLORES,VEHICULOS,ANIMALES,FRUTAS,VEGETALES}")

        fileArff.append("\n\n")
        fileArff.append("@data")
        fileArff.append("\n\n")
        fileArff.append("ARITMETICA")*/


    }

    def destroy = {
    }
}
