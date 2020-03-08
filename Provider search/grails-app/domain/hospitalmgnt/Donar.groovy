package hospitalmgnt

class Donar {
	
	
	String dFirstname
	String dLastname
	
	String dAge
	String dGender
	String mobileNumber
	
	String address
	String city
	String pin
	
	String bloodgroup
	String lastDonation
	
	String email
	String password
	
	String createdDate
	String modifiedDate
	
		
	

    static constraints = {
		
		dFirstname(maxSize:50)
		dLastname(maxSize:50)
		dAge(maxSize:10)
		dGender(maxSize:10)
		mobileNumber(maxSize:25)
		address(maxSize:50)
		pin(maxSize:50)
		city(maxSize:100)
		email(email: true)
		bloodgroup(maxSize:50)
		password(maxSize:50)
		lastDonation(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		}
}
