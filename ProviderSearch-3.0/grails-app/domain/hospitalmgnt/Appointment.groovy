package hospitalmgnt

class Appointment {
	String patientId
	String appointmentDate
	String appointmentTime
	String doctorId
	String status
	String modifiedBy
	Long appSlotMilli
	Date createdDate
	Date modifiedDate
	

    static constraints = {
		patientId(maxSize:20,nullable:false)
		appointmentDate(nullable:false)
		appointmentTime(nullable:false)
		doctorId(maxSize:20,nullable:false)
		status(maxSize:10)
		modifiedBy(maxSize:50)
		appSlotMilli()
		createdDate(nullable:false)
		modifiedDate(nullable:false)
    }
	
	
}
