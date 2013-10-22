<%@ page import="juicios.Juicio" %>



<div class="fieldcontain ${hasErrors(bean: juicioInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="juicio.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${juicioInstance?.name}"/>
</div>

