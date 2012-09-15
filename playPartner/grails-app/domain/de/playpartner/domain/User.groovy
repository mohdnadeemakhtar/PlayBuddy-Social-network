package de.playpartner.domain

class User {
	String email
    Date dateCreated
    Date lastUpdated

    // properties
    String firstName
    String lastName
    String username
    String password        
    String confirm         
    String passwordHashed
    String city

    // transients
    static transients = ['password', 'confirm']

    // constraints
    static constraints = {
		email(blank:false, email:true, unique: true)
        firstName blank:false;
        lastName  blank:false;
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}