package hospitalmgnt

import java.util.Date;

class DiagnosticTest {
	
	int testId
	String icdCode
	String testName
	String rate
	String modifiedBy
	Date createdDate
	Date modifiedDate

    static constraints = {
		testId(maxSize:20,nullable:false)
		icdCode(maxSize:50)
		testName(maxSize:50)
		rate(maxSize:50)
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
    }
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	testId : 'id'
	}
}

