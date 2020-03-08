package hospitalmgnt

class Pharmacy {
	
	int pharmacyId
	String regId
	String packName
	String status
	String firstname
	String lastname
	String pharmacyName
	String mobileNumber
	String alternateNumber
	String address
	String pin
	String locality 
	String city
	String email
	String password
	String modifiedBy
	byte[] image
	
	String locUrl
	String createdDate
	String modifiedDate
	
	static hasMany=[avaialbility:Availability]
	
    static constraints = {
		pharmacyId()
		regId(unique: true)
		packName(maxSize:20,nullable:false)
		status(maxSize:20,nullable:false)
		firstname(maxSize:50)
		lastname(maxSize:50)
		pharmacyName(maxSize:300)
		mobileNumber(nullable:false)
		//alternateNumber(maxSize:300)
		address(maxSize:50)
		pin(maxSize:50)
		locality(maxSize:50)
		city(maxSize:50)
		email(email: true)
		password(maxSize:50)
		modifiedBy(maxSize:50)
		
		image(nullable:false, maxSize:30737) // max of 30kB
		
		locUrl(maxSize:300)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	}
}
