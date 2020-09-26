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
	
	
	/*String medicalName
	String medicalId
	String mobileNumber
	byte[] idProof
	String email
	String password
	String locality*/
	
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
		
		/*medicalId(maxSize:20,nullable:false)
		medicalName(maxSize:50)
		idProof(nullable:true, maxSize: 16384  16K )
		mobileNumber(maxSize:25)
		password(maxSize:25)
		locality(maxSize:50)
		email(email: true)*/
		
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
}

