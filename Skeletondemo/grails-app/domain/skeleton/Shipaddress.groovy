package skeleton

class Shipaddress {

   
	String fullName
	String mobileNumber
	String email
	String pincode
	String houseNumber
	String area
	String landmark
	String city
	String state
	String cod
	
	String modifiedBy
	
	static constraints = {
		
		fullName(maxSize:50)
		mobileNumber(maxSize:50)
		email(email: true)
		pincode(maxSize:10)
		houseNumber(maxSize:10)
		area(maxSize:25)
		landmark(maxSize:25)
		city(maxSize:50)
		state(maxSize:50)
		cod(nullable:false)
		modifiedBy(nullable:false,maxSize:50)
		
	}
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		}
}
