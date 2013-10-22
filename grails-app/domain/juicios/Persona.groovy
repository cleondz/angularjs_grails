package juicios

class Persona {

	String name
	String paternal
	String maternal
	String rfc
	String email
	String cellphone
	String adress
	String city
	String country
	String cp

    Date dateCreated
	Date lastUpdated
	
    static constraints = {
    }

	static mapping = {
        autoTimestamp true
	}
}
