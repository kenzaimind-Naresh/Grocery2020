package hospitalmgnt

import javax.persistence.GeneratedValue;

class Patient {
	String patientId
	String pFirstname
	String pLastname
	String status
	String pAge
	String pGender
	String mobileNumber
	String alternateMobile
	String address
	String pin
	String fee
	String email
	String reference
	String reason
	String appointmentDate
	String appointmentTime
	String modifiedBy
	String createdDate
	String modifiedDate
	
	

    static constraints = {
		patientId(maxSize:20,nullable:false)
		pFirstname(maxSize:50)
		pLastname(maxSize:50)
		pAge(maxSize:10)
		pGender(maxSize:10)
		mobileNumber(maxSize:25)
		alternateMobile(maxSize:25)
		address(maxSize:50)
		pin(maxSize:50)
		fee(maxSize:100)
		email(email: true)
		reference(maxSize:50)
		reason(maxSize:500)
		appointmentDate(nullable:false)
		appointmentTime(nullable:false)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
}

