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
	
	//String code
	String userNameId
	
	String createdDate
	String modifiedDate
	
	static constraints = {
		
		
		fullName(maxSize:50)
		mobileNumber(maxSize:50)
		pincode(maxSize:6)
		houseNumber(maxSize:20)
		area(maxSize:30)
		landmark(maxSize:30)
		city(maxSize:50)
		state(maxSize:50)
		deliverhere(maxSize:50)
		
		//cod(nullable:false)
		userNameId(maxSize:50,nullable:false)
				
				
		createdDate(nullable:true)
		modifiedDate(nullable:true)
	}
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:101, increment_size:1]
		
		}
}
