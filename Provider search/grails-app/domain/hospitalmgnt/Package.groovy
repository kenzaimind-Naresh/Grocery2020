package hospitalmgnt

import java.util.Date;

class Package {
	
	int pId
	String packName
	String packPrice
	String duration
	String createdBy
	Date createdDate
	Date modifiedDate

    static constraints = {
		
		pId(maxSize:20,nullable:false)
		packName(nullable:false)
		packPrice(maxSize:10)
		duration(maxSize:20)
		createdBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		}
}
