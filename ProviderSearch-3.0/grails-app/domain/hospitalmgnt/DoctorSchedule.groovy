package hospitalmgnt

class DoctorSchedule {
	
	int dId
	String doctorId
	String status
	String date
	String slots
	String createdDate
	String modifiedDate

    static constraints = {
		
		dId(maxSize:20,nullable:false)
		doctorId(maxSize:20,nullable:false)
		status(maxSize:50)
		date(maxSize:50)
		slots(maxSize:500)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		}
}
