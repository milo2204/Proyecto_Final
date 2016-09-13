import proyecto_final.Actividad
import proyecto_final.Categoria
import proyecto_final.Juego
import WebService.RespuestaActividad
import proyecto_final.RegistroRespuestaAct

class BootStrap {

    def init = { servletContext ->
        Date newDate = new Date();

        Categoria categoria = new Categoria();
        categoria.name = "Prueba Catergoria";
        categoria.save(flush: true);

        Juego ju = new Juego();
        ju.nombre = "Prueba Juego";
        ju.categoria = categoria;
        ju.date = newDate;
        ju.save(flush: true);

        Actividad actividad = new Actividad();
        actividad.nombre = "Prueba Actividad";
        actividad.encabezado = "Es una prueba.";
        actividad.comentarioSobreActividad = "Es un comentario";
        actividad.juego = ju;
        actividad.save(flush: true, failOnError: true);

        RespuestaActividad respuesta = new RespuestaActividad();
        respuesta.cantidadRespuestasCorrectas = 2;
        respuesta.cantidadRespuestasIncorrectas = 2;
        respuesta.puntuacion = 500;
        respuesta.fecha = newDate;
        respuesta.save();

        //Actualizando
        ju.actividad = actividad;
        ju.save(flush: true, failOnError: true);

        actividad.addToRespuestasActividad(respuesta);
        actividad.save();

        RegistroRespuestaAct.create(actividad,respuesta);
        println("Se creo...")

    }

    def destroy = {
    }
}
