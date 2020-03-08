package hospitalmgnt

class DischargeSheet {
	
	int sheetId
	String patientId
	String pFirstname
	String pLastname
	String date
	String serviceName
	String quantity
	String rate
	String total
	String modifiedBy
	Date createdDate
	Date modifiedDate

	static constraints = {
		sheetId(maxSize:20,nullable:false)
		patientId(maxSize:50)
		pFirstname(maxSize:50)
		pLastname(maxSize:50)
		date(maxSize:50)
		serviceName(maxSize:50)
		quantity(maxSize:50)
		rate(maxSize:50)
		total(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	
	}
}
