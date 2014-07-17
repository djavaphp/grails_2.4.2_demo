<%@ page import="com.demo.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="photo.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${photoInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'photographer', 'error')} ">
	<label for="photographer">
		<g:message code="photo.photographer.label" default="Photographer" />
		
	</label>
	<g:textField name="photographer" value="${photoInstance?.photographer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="photo.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${photoInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'originalDate', 'error')} ">
	<label for="originalDate">
		<g:message code="photo.originalDate.label" default="Original Date" />
		
	</label>
	<g:datePicker name="originalDate" precision="day"  value="${photoInstance?.originalDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="photo.user.label" default="User" />
		
	</label>
	<g:textField name="user" value="${photoInstance?.user}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="photo.comments.label" default="Comments" />
		
	</label>
	<g:textArea name="comments" cols="40" rows="5" maxlength="500" value="${photoInstance?.comments}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'binaryData', 'error')} ">
	<label for="binaryData">
		<g:message code="photo.binaryData.label" default="Binary Data" />
		
	</label>
	<input type="file" id="binaryData" name="binaryData" />

</div>

<%-- 
<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'fileType', 'error')} ">
	<label for="fileType">
		<g:message code="photo.fileType.label" default="File Type" />
		
	</label>
	<g:textField name="fileType" value="${photoInstance?.fileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="photo.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${photoInstance?.fileName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'fileSize', 'error')} required">
	<label for="fileSize">
		<g:message code="photo.fileSize.label" default="File Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fileSize" type="number" value="${photoInstance.fileSize}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'imageWidth', 'error')} required">
	<label for="imageWidth">
		<g:message code="photo.imageWidth.label" default="Image Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="imageWidth" type="number" value="${photoInstance.imageWidth}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'imageHeight', 'error')} required">
	<label for="imageHeight">
		<g:message code="photo.imageHeight.label" default="Image Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="imageHeight" type="number" value="${photoInstance.imageHeight}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'browserFriendly', 'error')} ">
	<label for="browserFriendly">
		<g:message code="photo.browserFriendly.label" default="Browser Friendly" />
		
	</label>
	<g:checkBox name="browserFriendly" value="${photoInstance?.browserFriendly}" />

</div>
--%>
