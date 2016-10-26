import proyecto_final.Actividad
import proyecto_final.Categoria
import proyecto_final.Juego
import WebService.RespuestaActividad
import proyecto_final.RegistroRespuestaAct
import proyecto_final.Role
import proyecto_final.User
import proyecto_final.UserRole

class BootStrap {

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

        Categoria categoria = new Categoria();
        categoria.name = "Prueba Catergoria";
        categoria.save(flush: true);

        Juego ju = new Juego();
        ju.nombre = "Prueba Juego";
        ju.categoria = categoria;
        ju.date = newDate;
        ju.save(flush: true);

        Juego ju2 = new Juego();
        ju2.nombre = "Prueba Juego 2";
        ju2.categoria = categoria;
        ju2.date = newDate;
        ju2.save(flush: true);

        Actividad actividad = new Actividad();
        actividad.nombre = "Prueba Actividad";
        actividad.encabezado = "Es una prueba.";
        actividad.comentarioSobreActividad = "Es un comentario";
        actividad.juego = ju;
        actividad.save(flush: true, failOnError: true);

        Actividad actividad1 = new Actividad();
        actividad1.nombre = "Prueba Actividad 1";
        actividad1.encabezado = "Es una prueba.";
        actividad1.comentarioSobreActividad = "Es un comentario";
        actividad1.juego = ju;
        actividad1.save(flush: true, failOnError: true);

        Actividad actividad2 = new Actividad();
        actividad2.nombre = "Prueba Actividad 2";
        actividad2.encabezado = "Es una prueba.";
        actividad2.comentarioSobreActividad = "Es un comentario";
        actividad2.juego = ju;
        actividad2.save(flush: true, failOnError: true);

        RespuestaActividad respuesta = new RespuestaActividad();
        respuesta.cantidadRespuestasCorrectas = 2;
        respuesta.cantidadRespuestasIncorrectas = 2;
        respuesta.puntuacion = 500;
        respuesta.fecha = newDate;
        respuesta.save();

        //Actualizando
        ju.addToActividades(actividad);
        ju.save(flush: true, failOnError: true);

        ju2.addToActividades(actividad1);
        ju2.save(flush: true, failOnError: true);

        ju2.addToActividades(actividad2);
        ju2.save(flush: true, failOnError: true);

        actividad.addToRespuestaActividad(respuesta);
        actividad.save(flush: true,failOnError: true);

        actividad1.addToRespuestaActividad(respuesta);
        actividad1.save(flush: true,failOnError: true);

        actividad2.addToRespuestaActividad(respuesta);
        actividad2.save(flush: true,failOnError: true);

        //RegistroRespuestaAct.create(actividad,respuesta);
        println("Se creo...")

    }

    def destroy = {
    }
}
