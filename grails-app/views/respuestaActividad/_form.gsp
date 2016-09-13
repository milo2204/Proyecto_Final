<%@ page import="WebService.RespuestaActividad" %>



<div class="fieldcontain ${hasErrors(bean: respuestaActividadInstance, field: 'cantidadRespuestasCorrectas', 'error')} required">
	<label for="cantidadRespuestasCorrectas">
		<g:message code="respuestaActividad.cantidadRespuestasCorrectas.label" default="Cantidad Respuestas Correctas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidadRespuestasCorrectas" type="number" value="${respuestaActividadInstance.cantidadRespuestasCorrectas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: respuestaActividadInstance, field: 'cantidadRespuestasIncorrectas', 'error')} required">
	<label for="cantidadRespuestasIncorrectas">
		<g:message code="respuestaActividad.cantidadRespuestasIncorrectas.label" default="Cantidad Respuestas Incorrectas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidadRespuestasIncorrectas" type="number" value="${respuestaActividadInstance.cantidadRespuestasIncorrectas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: respuestaActividadInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="respuestaActividad.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${respuestaActividadInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: respuestaActividadInstance, field: 'puntuacion', 'error')} required">
	<label for="puntuacion">
		<g:message code="respuestaActividad.puntuacion.label" default="Puntuacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntuacion" type="number" value="${respuestaActividadInstance.puntuacion}" required=""/>

</div>

