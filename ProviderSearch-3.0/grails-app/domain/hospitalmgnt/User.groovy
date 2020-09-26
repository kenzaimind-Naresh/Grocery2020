package hospitalmgnt

class User {
	int userId
	
	String username
	String password
	String mobileNumber
	String dob
	String address
	String modifiedBy
	Date createdDate
	Date modifiedDate

    static constraints = {
		userId(maxSize:20,nullable:false)
		
		username(maxSize:50)
		password(maxSize:50)
		mobileNumber(maxSize:25)
		dob(maxSize:50)
		address(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
}
