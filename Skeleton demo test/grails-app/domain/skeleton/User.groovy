package skeleton

import java.util.Date;

class User {

   int userId
	String userName
	String password
	String email
	String mobileNumber
	String modifiedBy
	Date createdDate
	Date modifiedDate
	
	String toString() {
		"${userName}"
	}
	static constraints = {
		userId(nullable:false)
		email(email: true)
		userName(unique:true)
		password(password: true)
		mobileNumber(maxSize:30,nullable:false)
		modifiedBy(maxSize:30,nullable:false)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
		
	}
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
			
		}
}
