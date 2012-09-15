<div class="middle_content_box">
	
		<div class="filterWrapper">
			<div class="filterLine">
				<div id="filterAll" class="filterTab filterTabActive">
					All Events
				</div>
				<div id="filterFriends" class="filterTab filterTabInactive">
					Your City Events
				</div>
				<div id="filterGroups" class="filterTab filterTabInactive">
					Gruppen
				</div>
				<div id="filterAppointments" class="filterTab filterTabInactive">
					Termine
				</div>
				<div id="filterTodos" class="filterTab filterTabInactive">
					ToDo's
				</div>
				<div id="filterDocuments" class="filterTab filterTabInactive">
					Dokumente
				</div>
				<div style="clear: both"></div>
			</div>
			<div style="clear: both"></div>
		</div>
		
		<g:each in="${messages?}">
		
		<div class="messageWrapper10">
			<div class="senderWrapper10">
				<g:if test="${it[3].image != null}">
					<div>
						<img style="width: 70px" src="${createLink(controller:'BloxxUser', action:'senderImage', params:[infoID:it[3].id])}" />
					</div>
				</g:if>
				<g:else>
					<div class="senderImage10 borderradius8px"></div>
				</g:else>

				<div class="senderName10">
					${it[1]}
					${it[2]}
				</div>
			</div>
			<div class="messageText10 borderradius8px">
				${it[0]}
			</div>
			<div style="clear: both"></div>
		</div>
		</g:each>
	<div style="clear: both"></div>
</div>
	





