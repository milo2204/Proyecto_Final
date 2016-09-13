
<%@ page import="WebService.RespuestaActividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'respuestaActividad.label', default: 'RespuestaActividad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-respuestaActividad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-respuestaActividad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list respuestaActividad">
			
				<g:if test="${respuestaActividadInstance?.cantidadRespuestasCorrectas}">
				<li class="fieldcontain">
					<span id="cantidadRespuestasCorrectas-label" class="property-label"><g:message code="respuestaActividad.cantidadRespuestasCorrectas.label" default="Cantidad Respuestas Correctas" /></span>
					
						<span class="property-value" aria-labelledby="cantidadRespuestasCorrectas-label"><g:fieldValue bean="${respuestaActividadInstance}" field="cantidadRespuestasCorrectas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${respuestaActividadInstance?.cantidadRespuestasIncorrectas}">
				<li class="fieldcontain">
					<span id="cantidadRespuestasIncorrectas-label" class="property-label"><g:message code="respuestaActividad.cantidadRespuestasIncorrectas.label" default="Cantidad Respuestas Incorrectas" /></span>
					
						<span class="property-value" aria-labelledby="cantidadRespuestasIncorrectas-label"><g:fieldValue bean="${respuestaActividadInstance}" field="cantidadRespuestasIncorrectas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${respuestaActividadInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="respuestaActividad.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${respuestaActividadInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${respuestaActividadInstance?.puntuacion}">
				<li class="fieldcontain">
					<span id="puntuacion-label" class="property-label"><g:message code="respuestaActividad.puntuacion.label" default="Puntuacion" /></span>
					
						<span class="property-value" aria-labelledby="puntuacion-label"><g:fieldValue bean="${respuestaActividadInstance}" field="puntuacion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:respuestaActividadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${respuestaActividadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
