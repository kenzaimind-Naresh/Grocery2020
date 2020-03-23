package icecreampack

import java.util.Date;


class Icecream {
	
	int icecreamId
	String materialId
	String productDesc
	String icecreamType
	String weight
	String quantity
    String retailPrice
	String wholesalePrice
	
	String modifiedBy
	
	Date createdDate
	Date modifiedDate
	
	
	
    static constraints = {
		icecreamId(nullable:false)
		productDesc(nullable:false,maxSize:50)	
		weight(nullable:false,maxSize:50)
		quantity(nullable:false,maxSize:50)
		retailPrice(nullable:false,maxSize:50)
		wholesalePrice(nullable:false,maxSize:50)
		modifiedBy(nullable:false,maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		}
	
	
	
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:6589, increment_size:1]
		
		}	
}
