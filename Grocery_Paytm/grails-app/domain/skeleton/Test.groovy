package skeleton

class Test {
	 //String categoryName
	String groceryName
	String quantity
	String cost
	String weight
	
	String createDate
	String offer
	String total
	//String reference
	
	String modifiedBy
	//Date createdDate
	//Date modifiedDate
	
	
	
	static constraints = {
		groceryName(nullable:false,maxSize:50)
		cost(maxSize:50)
		weight(nullable:false)
		createDate(nullable:false)
		offer(nullable:false)
		total(maxSize:50)
		//reference(maxSize:50,nullable:false)
		modifiedBy(nullable:false,maxSize:50)
		}
	
	String toString() {
		return groceryName
	}
	
	
	static mapping = {
		
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:6589, increment_size:1]
		
		
		}
}

