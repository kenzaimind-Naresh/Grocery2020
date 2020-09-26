package hospitalmgnt

class Drugs {
	
	int drugId
	String drugName
	String rate
	String addedBy
	Date createdDate
	Date modifiedDate

    static constraints = {
		drugId(maxSize:20,nullable:false)
		drugName(maxSize:50)
		rate(maxSize:50)
		addedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
	}
}
