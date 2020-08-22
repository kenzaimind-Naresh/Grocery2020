package skeleton

import java.util.Date;

import org.springframework.aop.TrueClassFilter;

class Merchant {

  // int merchantId
	String shopId
	String shopName
	String firstName
	String lastName
	String email
	String password
	String mobileNumber
	String address
	String street
	String city
	String state
	String zipCode
	byte[] image
	String name
	String type
	//byte[] qrcode
	String name1
	String type1
	String modifiedBy
	
	
	
	static constraints = {
		//merchantId(nullable:false)
		shopId(unique: true)
		shopName(maxSize:50)
		firstName(maxSize:50)
		lastName(maxSize:50)
		email(email: true, unique: true)
		password(password: true)
		mobileNumber(maxSize:50)
		address(maxSize:50)
		city(maxSize:50)
		zipCode(maxSize:50)
		image(nullable:true, maxSize:1073741824 /* 16K */)
		type(blank:true, nullable:true)
		name(blank:true, nullable:true)
		//qrcode(nullable:true, maxSize:1073741824, unique:true /* 16K */)
		type1(blank:true, nullable:true)
		name1(blank:true, nullable:true)
		modifiedBy(nullable:false,maxSize:50)
		
	}

static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	image column: 'image', sqlType: 'longblob'
	
	}
}

