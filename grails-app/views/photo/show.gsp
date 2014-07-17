
<%@ page import="com.demo.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-photo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list photo">
			
				<g:if test="${photoInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="photo.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${photoInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.photographer}">
				<li class="fieldcontain">
					<span id="photographer-label" class="property-label"><g:message code="photo.photographer.label" default="Photographer" /></span>
					
						<span class="property-value" aria-labelledby="photographer-label"><g:fieldValue bean="${photoInstance}" field="photographer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="photo.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${photoInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.originalDate}">
				<li class="fieldcontain">
					<span id="originalDate-label" class="property-label"><g:message code="photo.originalDate.label" default="Original Date" /></span>
					
						<span class="property-value" aria-labelledby="originalDate-label"><g:formatDate date="${photoInstance?.originalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="photo.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:fieldValue bean="${photoInstance}" field="user"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="photo.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${photoInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="photo.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${photoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="photo.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${photoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.binaryData}">
				<li class="fieldcontain">
					<span id="binaryData-label" class="property-label"><g:message code="photo.binaryData.label" default="Binary Data" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.fileType}">
				<li class="fieldcontain">
					<span id="fileType-label" class="property-label"><g:message code="photo.fileType.label" default="File Type" /></span>
					
						<span class="property-value" aria-labelledby="fileType-label"><g:fieldValue bean="${photoInstance}" field="fileType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="photo.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${photoInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.fileSize}">
				<li class="fieldcontain">
					<span id="fileSize-label" class="property-label"><g:message code="photo.fileSize.label" default="File Size" /></span>
					
						<span class="property-value" aria-labelledby="fileSize-label"><g:fieldValue bean="${photoInstance}" field="fileSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.imageWidth}">
				<li class="fieldcontain">
					<span id="imageWidth-label" class="property-label"><g:message code="photo.imageWidth.label" default="Image Width" /></span>
					
						<span class="property-value" aria-labelledby="imageWidth-label"><g:fieldValue bean="${photoInstance}" field="imageWidth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.imageHeight}">
				<li class="fieldcontain">
					<span id="imageHeight-label" class="property-label"><g:message code="photo.imageHeight.label" default="Image Height" /></span>
					
						<span class="property-value" aria-labelledby="imageHeight-label"><g:fieldValue bean="${photoInstance}" field="imageHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.browserFriendly}">
				<li class="fieldcontain">
					<span id="browserFriendly-label" class="property-label"><g:message code="photo.browserFriendly.label" default="Browser Friendly" /></span>
					
						<span class="property-value" aria-labelledby="browserFriendly-label"><g:formatBoolean boolean="${photoInstance?.browserFriendly}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:photoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${photoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
