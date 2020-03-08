package hospitalmgnt

import java.util.Date;

class Doctor {
	
	int doctorId
	String regId
	String packName
	String status
	String dFirstname
	String dLastname
	String dAge
	String dGender
	String mobileNumber
	String alternateMobile
	String address
	String pin
	String locality 
	String city
	String email
	String password
	String speciality
	String clinicName
	String experience
	String reference
	String modifiedBy
	String fee
	String locUrl
	String blood_flag
	String v_flag
	String qualifcation
	String lattitude
	String longitude
	String certifications
	
	byte[] image
	
	String choice
	Date createdDate
	Date modifiedDate
	String expiredDate
	

    static constraints = {
		doctorId(maxSize:20,nullable:false)
		regId(unique: true)
		packName(maxSize:20,nullable:false)
		status(maxSize:20,nullable:false)
		dFirstname(maxSize:50)
		dLastname(maxSize:50)
		dAge(maxSize:10)
		dGender(maxSize:10)
		mobileNumber(maxSize:25)
		//alternateMobile(maxSize:25)
		address(maxSize:250)
		pin(maxSize:50)
		locality(maxSize:50)
		city(maxSize:50)
		email(email: true)
		password(maxSize:50)
		speciality(maxSize:50)
		clinicName(maxSize:100)
		experience(maxSize:50)
		reference(maxSize:50)
		modifiedBy(maxSize:50)
		fee(maxSize:50)
		locUrl(maxSize:300)
		blood_flag(maxSize:100)
		v_flag(maxSize:100)
		qualifcation(maxSize:100)
		lattitude(maxSize:100)
		longitude(maxSize:100)
		certifications(maxSize:100)
		
		image(nullable:true, maxSize: 16384 /* 16Kb */)
		
		
		choice(maxSize:100)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	}
	
}
