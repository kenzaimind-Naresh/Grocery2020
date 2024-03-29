package skeleton

class Grocery {

   String categoryName
	String groceryName
	String quantity
	String cost
	String weight
	String name
	String type
	String createDate
	String offer
	byte[] image
	String total
	String merchantId
	String merchantshopName
		String modifiedBy
	//Date createdDate
	//Date modifiedDate
	
	
	
	static constraints = {
		groceryName(nullable:false,maxSize:50)
		cost(maxSize:50)
		weight(nullable:false)
		type(blank:true, nullable:true)
		name(blank:true, nullable:true)
		createDate(nullable:false)
		offer(nullable:false)
		image(nullable:false, maxSize:1073741824) // max of 4kb file for example
		total(maxSize:50)
		merchantId(maxSize:50,nullable:false)
		merchantshopName(maxSize:50,nullable:false)
		modifiedBy(nullable:false,maxSize:50)
		}
	
	String toString() {
		return name
	}
	
	
	static mapping = {
		
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:50, increment_size:1]
		 image column: 'image', sqlType: 'longblob'
		
		
		}
}

 