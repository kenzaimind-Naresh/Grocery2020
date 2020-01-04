package skeleton

class Address {

   int addressId
	String fullName
	String mobileNumber
	String pincode
	String houseNumber
	String area
	String landmark
	String city
	String state
	String deliverhere
	
	//String cod
	String userNameId
	
	String createdDate
	String modifiedDate
	
	static constraints = {
		
		addressId(nullable:false)
		fullName(maxSize:50)
		mobileNumber(maxSize:50)
		pincode(maxSize:10)
		houseNumber(maxSize:10)
		area(maxSize:25)
		landmark(maxSize:25)
		city(maxSize:50)
		state(maxSize:50)
		deliverhere(maxSize:50)
		
		//cod(nullable:false)
		userNameId(maxSize:50,nullable:false)
				
				
		createdDate(nullable:false)
		modifiedDate(nullable:false)
	}
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:101, increment_size:1]
		
		}
}
