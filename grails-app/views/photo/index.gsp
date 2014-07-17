
<%@ page import="com.demo.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-photo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="subject" title="${message(code: 'photo.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="photographer" title="${message(code: 'photo.photographer.label', default: 'Photographer')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'photo.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="originalDate" title="${message(code: 'photo.originalDate.label', default: 'Original Date')}" />
					
						<g:sortableColumn property="user" title="${message(code: 'photo.user.label', default: 'User')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'photo.comments.label', default: 'Comments')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${photoInstanceList}" status="i" var="photoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "subject")}</g:link></td>
					
						<td>${fieldValue(bean: photoInstance, field: "photographer")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "location")}</td>
					
						<td><g:formatDate date="${photoInstance.originalDate}" /></td>
					
						<td>${fieldValue(bean: photoInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "comments")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${photoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
