<div class="lightbox3">
	<div class="event_title">
		<div id="appointement_favicon">Create Event</div>
	</div>
	<div style="clear: both"></div>
	<g:formRemote id="my-form" class="createEventForm" name="posten" update="middle_content_area" url="[controller: 'Appointment', action: 'createAppointment']" method="POST">
	<input type="button" id="testcloselb3" class="closelb3" />
	<g:textArea id="appointmentArea" name="appointmentContent"></g:textArea>
	<div id="line"><hr></div>
	<div id="calendarArea">
		Titel:&nbsp; <g:textField id="appointmentTitle" name="appointmentTitle" maxlength="25"/>
		
		StartDatum:<g:textField id="appointmentStart" name="appointmentStart" maxlength="10" readonly="true" />&nbsp;&nbsp;StartZeit: <g:textField id="timeStart" name="timeStart" maxlength="5" /><br>
		&nbsp;EndDatum: <g:textField id="appointmentEnd" name="appointmentEnd" maxlength="10" readonly="true"/>&nbsp;&nbsp;&nbsp;EndZeit: <g:textField id="timeEnd" name="timeEnd" maxlength="5" />
		<div id="line1"><hr></div>
		<div id="line1"><hr></div>
	
	</div>
	<div id="receiver">
	<g:hiddenField id="receiverMemory" name="receiver" value="" />
<%--	<div class="button_purple borderradius8px" style="width: 90px;">Empfänger:--%>
<%--		<span id="receiverAmount">--%>
<%--		0--%>
<%--		</span>--%>
<%--	</div>--%>

<button class="button_purple borderradius8px " type="submit">
		<img  class="borderradius8px"style="position:relative; top:-4px; float:right; margin-right:10px;" src="${resource(dir:'images/createEvent',file:'send.png')}" alt="upload" />
	</button>
		</div>
	
	 </g:formRemote>
	
	<div style="clear: both"></div>
</div>

