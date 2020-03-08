package hospitalmgnt

class Services {
	
	int serviceId
	String serviceName
	String rate
	String modifiedBy
	Date createdDate
	Date modifiedDate

	static constraints = {
		serviceId(maxSize:20,nullable:false)
		serviceName(maxSize:50)
		rate(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	serviceId : 'id'
	}
}
