<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><g:layoutTitle default="Grails" /></title>

<link rel="stylesheet"	href="${resource(dir:'css',file:'playpartner.css')}" />
<link rel="shortcut icon"	href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
<link rel="stylesheet" href="${resource(dir:'css',file:'jquery-ui.css')}" />
<script src="${resource(dir:'js/jquery', file:'jquery-1.7.1.js')}" type="text/javascript"></script>
<script src="${resource(dir:'js/jquery', file:'jquery-ui.min.js')}" type="text/javascript"></script>
<script src="${resource(dir:'js', file:'filterEvents.js')}" type="text/javascript"></script>
<script src="${resource(dir:'js', file:'createEventTrigger.js')}" type="text/javascript"></script>

<g:layoutHead />
</head>
<body>
<div class="headline">
			<div class="headline_content">
				<span class="headline_logo_bloxx"> 
				<g:if test="${session?.user}">
					<g:link url="[controller:'Event', action:'showEvents']">
						PlayBuddies
					</g:link>
				</g:if> <g:else>
					<g:link url="[controller:'Main']">
						PlayBuddies
					</g:link>
					</g:else>
			</span>
				<g:if test="${session?.user}">
					<div id="headline_login">
					 Hello ! ${session?.user?.username}
<%--						${session?.user?.lastName}--%>
						|
						<g:link controller="user" action="logout">Logout</g:link>
						</div>
					</g:if>

			</div>
			<div style="clear: both"></div>
		</div>
	
<div class="wrapper">

	<g:if test="${session?.user}"> 
    	<div class="linkline">
    		<g:link url="[controller:'BloxxUser', action:'showProfile']">
				<img id="" src="${resource(dir:'images/linkline',file:'home.png')}" alt="home" />
			</g:link>
			<img id="friendTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'home.png')}" alt="friends" />
			<img id="groupTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'home.png')}" alt="groups" />
<%--			<img id="messageTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'messages.png')}" alt="messages" />--%>
<%--			<img id="leftappointmentTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'appointments.png')}" alt="appointment" />--%>
<%--			<img id="taskTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'tasks.png')}" alt="tasks" />--%>
<%--			<img id="documentTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'documents.png')}" alt="documents" />--%>
<%--			<img id="marketTrigger" class="addCursor" src="${resource(dir:'images/linkline',file:'market.png')}" alt="market" />--%>
		</div>
	</g:if>
	
	<g:layoutBody />
	
	<g:if test="${session?.user}"> 
	
		
	<div class="right_organisation_area">	
		<div class="infobox_wrapper">
			<div class="infobox_header">
				New Idea Awaited
			</div>
			<div id="appointmentPreview" class="infobox_body borderradius8px">
			### Work TODO ###
			</div>
		</div>
		
		<div class="infobox_wrapper">
			<div class="infobox_header">
				New Idea Awaited
			</div>
			<div id="taskPreview" class="infobox_body borderradius8px">
			### Work TODO ###
			</div>
		</div>
		
		<div class="infobox_wrapper">
			<div class="infobox_header">
				New Idea Awaited
			</div>
			<div id="documentPreview" class="infobox_body borderradius8px">
			### Work TODO ###
			</div>
		</div>
	</div>
	
	<div id="right_content_area">
		<div class="right_content_box">
			<img src="${resource(dir:'images',file:'commercial_bainstormers.png')}" alt="commercial1" />
		</div>
		<div class="right_content_box">
			<img src="${resource(dir:'images/sport',file:'football.jpg')}" alt="commercial2" />
		</div>
		<div class="right_content_box">
			<g:remoteLink url="[controller:'BloxxUser', action:'showImpressum']" update="middle_content_area">
				Impressum
			</g:remoteLink>
			<br />
			${grails.util.Metadata.current.'app.name'}
			v${grails.util.Metadata.current.'app.version'}
		</div>
	</div>
	</g:if>
	
	<div style="clear:both"></div>
	
    </div>

<%--		<!-- END #content -->--%>
		

		<div id="footer">
			<g:render template="/footer/footer" />
		</div>
		<!-- END #footer -->

	
</body>

</html>
