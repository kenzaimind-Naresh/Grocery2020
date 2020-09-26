package hospitalmgnt

import java.util.Date;

class Contactus {
	String firstName
	String lastName
	String email
	String mobileNumber
	String address
	String city
	String state
	String zipCode
	String modifiedBy
	Date createdDate
	Date modifiedDate
	
	
	

    static constraints = {
		
		firstName(maxSize:50)
		lastName(maxSize:50)
		email(email: true)
		mobileNumber(maxSize:50)
		address(maxSize:50)
		city(maxSize:50)
		state(maxSize:50)
		zipCode(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
	}

static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	}
}

