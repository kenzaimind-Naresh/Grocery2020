package hospitalmgnt

class TestData {
	int testId
	String patientId
	String pFirstname
	String pLastname
	String testName
	String icdCode
	String date
	String tax
	String rate
	String total
	String grandTotal
	String pMode
	String modifiedBy
	Date createdDate
	Date modifiedDate
	

	static constraints = {
		testId(maxSize:20,nullable:false)
		patientId(maxSize:20,nullable:false)
		pFirstname(maxSize:50)
		pLastname(maxSize:50)
		testName(maxSize:300)
		icdCode(maxSize:300)
		date(nullable:false)
		tax(maxSize:300)
		rate(maxSize:300)
		total(maxSize:25)
		grandTotal(maxSize:25)
		pMode(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	testId : 'id'
	}
}
