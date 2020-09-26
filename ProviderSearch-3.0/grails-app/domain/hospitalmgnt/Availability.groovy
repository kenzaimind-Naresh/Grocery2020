package hospitalmgnt

class Availability {
	String drugId
	String drugName
	String status
	String discount
	Date createdDate
	Date modifiedDate
	Pharmacy pharmacy
	
	

    static constraints = {
		drugId(maxSize:20)
		drugName(maxSize:50)
		status(maxSize:10)
		discount(maxSize:10)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	}
}
