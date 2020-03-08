package hospitalmgnt

import java.util.Date;

class Inpatient {
	String patientId
	String pFirstname
	String pLastname
	String address
	String nominee
	String mobileNumber
	String alternateMobile
	String email
	String reference
	String modifiedBy
	String serviceType
	String roomNo
	Date createdDate
	Date modifiedDate
	
	

	static constraints = {
		patientId(maxSize:20,nullable:false)
		pFirstname(maxSize:50)
		pLastname(maxSize:50)
		address(maxSize:50)
		nominee(maxSize:10)
		mobileNumber(maxSize:25)
		alternateMobile(maxSize:25)
		email(email: true)
		reference(maxSize:50)
		modifiedBy(maxSize:50)
		serviceType(maxSize:50)
		roomNo(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
  
}
