package de.playpartner.controller

abstract class BaseController {
	def beforeInterceptor = [action:this.&auth]
	
	def auth() {
		if (!session.bloxxUser) {
			log.warn "authentification failed"
			
			redirect(controller: 'User', action: 'redirectToLogin')
			return false
		}
	}
}
