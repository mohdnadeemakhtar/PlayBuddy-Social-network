package de.playpartner.controller

import de.playpartner.domain.User

class UserController {

	def beforeInterceptor = [action:this.&auth,  except: 'logout']
	
	def auth() {
		if (!session.user) {
			log.warn "authentification failed"
			
			redirect(action: 'redirectToLogin')
			return false
		}
	}
	
    def register = {
        // new user posts his registration details
        if (request.method == 'POST') {
            // create domain object and assign parameters using data binding
            def u = new User(params)
            u.passwordHashed = u.password.encodeAsPassword()
            if (! u.save()) {
                // validation failed, render registration page again
                return [user:u]
            } else {
                // validate/save ok, store user in session, redirect to homepage
                session.user = u
                redirect(controller:'main')
            }
        } else if (session.user) {
            // don't allow registration while user is logged in
            redirect(controller:'main')
        }
    }

    def login = {
        if (request.method == 'POST') {
//            def passwordHashed = params.password.encodeAsPassword()
            def u = User.findByEmail(params.email)
            if (u) {
                // username and password match -> log in
                session.user = u
                redirect(controller:'event', action:'showEvents')
            } else {
                flash.message = "User not found"
                redirect(controller:'main')
            }
        } else if (session.user) {
            // don't allow login while user is logged in
            redirect(controller:'main')
        }
    }

	def redirectToLogin() {
		render (view: 'redirectToLogin')
	}

	
    def logout = {
        session.invalidate()
        redirect(controller:'main')
    }
}