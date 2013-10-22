package juicios

class Juicio {

	String name

	Date dateCreated
	Date lastUpdated
	
    static constraints = {
    }

	static mapping = {
        autoTimestamp true
	}
}
