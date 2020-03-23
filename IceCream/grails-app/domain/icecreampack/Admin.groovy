package icecreampack

class Admin {
	int adminId
	String adminName
	String password
	String fullName
	String email
	String modifiedBy
	String createdDate
	String modifiedDate


	String toString() {
		"${adminName}"
	}

    static constraints = {
		adminId(nullable:false)
		adminName(unique:true)
		password(password: true)
		fullName(maxSize:50)
		email(email: true,unique:true)
		createdDate(nullable:false)
		modifiedDate(nullable:false)

    }
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
		}
}
