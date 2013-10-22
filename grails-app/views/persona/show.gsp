
<%@ page import="juicios.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.adress}">
				<li class="fieldcontain">
					<span id="adress-label" class="property-label"><g:message code="persona.adress.label" default="Adress" /></span>
					
						<span class="property-value" aria-labelledby="adress-label"><g:fieldValue bean="${personaInstance}" field="adress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.cellphone}">
				<li class="fieldcontain">
					<span id="cellphone-label" class="property-label"><g:message code="persona.cellphone.label" default="Cellphone" /></span>
					
						<span class="property-value" aria-labelledby="cellphone-label"><g:fieldValue bean="${personaInstance}" field="cellphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="persona.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${personaInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="persona.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${personaInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.cp}">
				<li class="fieldcontain">
					<span id="cp-label" class="property-label"><g:message code="persona.cp.label" default="Cp" /></span>
					
						<span class="property-value" aria-labelledby="cp-label"><g:fieldValue bean="${personaInstance}" field="cp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="persona.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${personaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="persona.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="persona.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${personaInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.maternal}">
				<li class="fieldcontain">
					<span id="maternal-label" class="property-label"><g:message code="persona.maternal.label" default="Maternal" /></span>
					
						<span class="property-value" aria-labelledby="maternal-label"><g:fieldValue bean="${personaInstance}" field="maternal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="persona.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${personaInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.paternal}">
				<li class="fieldcontain">
					<span id="paternal-label" class="property-label"><g:message code="persona.paternal.label" default="Paternal" /></span>
					
						<span class="property-value" aria-labelledby="paternal-label"><g:fieldValue bean="${personaInstance}" field="paternal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="persona.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${personaInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
