package skeleton

import java.util.Date;

class User {

    int userId
    String firstName
    String lastName
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
		firstName(nullable:false)
		lastName(nullable:false)
		userName(nullable:false,unique:true)
		email(email: true)
		password(password: true)
		mobileNumber(maxSize:30,nullable:false,unique:true)
		modifiedBy(maxSize:30,nullable:false)
		createdDate(nullable:true)
		modifiedDate(nullable:true)
		
		
	}
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
			
		}
}
