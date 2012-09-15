package de.playpartner.controller

class MainController {
	def beforeInterceptor = [action:this.&auth]
	
	def auth() {
		if (!session.user) {
			log.warn "authentification failed"
			
			redirect(controller: 'User', action: 'redirectToLogin')
			return false
		}
	}
	
	
    def index() { }
}
