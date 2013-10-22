<%@ page import="juicios.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'adress', 'error')} ">
	<label for="adress">
		<g:message code="persona.adress.label" default="Adress" />
		
	</label>
	<g:textField name="adress" value="${personaInstance?.adress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'cellphone', 'error')} ">
	<label for="cellphone">
		<g:message code="persona.cellphone.label" default="Cellphone" />
		
	</label>
	<g:textField name="cellphone" value="${personaInstance?.cellphone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="persona.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${personaInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="persona.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${personaInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'cp', 'error')} ">
	<label for="cp">
		<g:message code="persona.cp.label" default="Cp" />
		
	</label>
	<g:textField name="cp" value="${personaInstance?.cp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${personaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'maternal', 'error')} ">
	<label for="maternal">
		<g:message code="persona.maternal.label" default="Maternal" />
		
	</label>
	<g:textField name="maternal" value="${personaInstance?.maternal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="persona.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${personaInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'paternal', 'error')} ">
	<label for="paternal">
		<g:message code="persona.paternal.label" default="Paternal" />
		
	</label>
	<g:textField name="paternal" value="${personaInstance?.paternal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'rfc', 'error')} ">
	<label for="rfc">
		<g:message code="persona.rfc.label" default="Rfc" />
		
	</label>
	<g:textField name="rfc" value="${personaInstance?.rfc}"/>
</div>

