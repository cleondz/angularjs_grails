
<%@ page import="juicios.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adress" title="${message(code: 'persona.adress.label', default: 'Adress')}" />
					
						<g:sortableColumn property="cellphone" title="${message(code: 'persona.cellphone.label', default: 'Cellphone')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'persona.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'persona.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="cp" title="${message(code: 'persona.cp.label', default: 'Cp')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'persona.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "adress")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "cellphone")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "cp")}</td>
					
						<td><g:formatDate date="${personaInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
