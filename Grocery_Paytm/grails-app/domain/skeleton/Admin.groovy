package skeleton

import java.util.Date;

class Admin {

   int adminId
	
	String adminname
	String password
	String mobileNumber
	String dob
	String address
	String modifiedBy
	Date createdDate
	Date modifiedDate

	static constraints = {
		adminId(maxSize:20,nullable:false)
		
		adminname(maxSize:50)
		password(maxSize:50)
		mobileNumber(maxSize:25)
		dob(maxSize:50)
		address(maxSize:100)
		modifiedBy(maxSize:50)
		createdDate(nullable:true)
		modifiedDate(nullable:true)
		
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
}
