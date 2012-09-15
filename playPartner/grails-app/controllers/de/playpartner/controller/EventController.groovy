package de.playpartner.controller

import de.playpartner.domain.User

class EventController {

    
	
	def showEvents(){
		if(session.user)		
		User  user  =  User.get(session.user?.id)		
		render (view: 'showEvents', model:[user:user])
		
		}
	
	
}
