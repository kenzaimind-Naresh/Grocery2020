package skeleton

import java.util.Date;

class Subscription {
	
	String packageId
	String merchantId
	String paymentDate
	String expiryDate
	String paymentKey
	Date createdDate
	Date modifiedDate

    static constraints = {
		
		packageId(maxSize:20,nullable:false)
		merchantId(maxSize:50)
		paymentDate(maxSize:50)
		expiryDate(maxSize:50)
		paymentKey(maxSize:50)
		createdDate(nullable:true)
		modifiedDate(nullable:true)
    }
}
