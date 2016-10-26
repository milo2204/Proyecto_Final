package com.proyectofinal.encapsulacion.rest

import grails.validation.Validateable

/**
 * Created by Mikey on 9/7/16.
 */

@Validateable
class RespuestaRest{

int cantidadRespuestasCorrectas
int cantidadRespuestasIncorrectas
int puntuacion
String idActividad
Date fecha

}
