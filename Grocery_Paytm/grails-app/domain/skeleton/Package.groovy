package skeleton

import java.util.Date;

class Package {
	
	int packageId
	
	String packageName
	String duration
	String subAmount
	String createdby
	Date createdDate
	Date modifiedDate
	
    static constraints = {
		
		packageId(maxSize:20,nullable:false)
		
		packageName(maxSize:50)
		duration(maxSize:50)
		subAmount(maxSize:25)
		createdby(maxSize:50)
		createdDate(nullable:true)
		modifiedDate(nullable:true)
    }
}
