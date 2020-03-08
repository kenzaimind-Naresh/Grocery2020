package hospitalmgnt
import java.text.DateFormat
import java.text.SimpleDateFormat;
import grails.transaction.Transactional

@Transactional
class AppointmentService {

   static transactional=true

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("AppointmentService getInstance ")
			try{
				return new Appointment()
			}
			catch(Exception e) {
				log.info("AppointmentService getInstance Exception::"+e)
			}
		}
		def save(Appointment appointmentInstance) {
			log.info("AppointmentService save-Object ")
			try{
				if(appointmentInstance == null) {
					return false
				}
				else{
					def e=appointmentInstance.save(flush:true)
					log.info("*******"+e)
					return true
				}
			}
			catch(Exception e) {
				log.info("AppointmentService save-Object Exception::"+e)
			}
		}
		
		/* 
		 * To Save the data of Appointment
		 * Save service for saveAppointment action in AppointmentController */
		def save(patientId,appointmentDate,appointmentTime,doctorId,status,modifiedBy){
			log.info("AppointmentService save-params ")
			def resultData=new HashMap<>()
			String []args=["Appointment"]
			try{
			
				
					def appointmentInstance=getInstance()
					appointmentInstance.patientId=patientId
					appointmentInstance.appointmentDate=appointmentDate
					appointmentInstance.appointmentTime=appointmentTime
						appointmentInstance.doctorId=doctorId
						appointmentInstance.status=status
						appointmentInstance.modifiedBy=modifiedBy
						SimpleDateFormat format1=new SimpleDateFormat("yyyy-MM-dd");
						SimpleDateFormat format3=new SimpleDateFormat("dd/MM/yyyy");
						
						String dt1=format3.parse(appointmentDate);
				
						def totaldate = appointmentDate+" "+appointmentTime
						SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mma");
						Date date = sdf.parse(totaldate);
						def millisec=date.getTime();
						appointmentInstance.appSlotMilli=millisec
						
						appointmentInstance.createdDate=new Date()
						appointmentInstance.modifiedDate=new Date()
						def sts= save(appointmentInstance)
						
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("appointmentInstance",appointmentInstance)
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("AppointmentService save Exception::"+e)
			}
		}
		
		/* 
		 * To Update the data of Appointment
		 * Update service for saveAppointment action in AppointmentController */
		def update(patientId,appointmentDate,appointmentTime,doctorId,status,modifiedBy){
				log.info("AppointmentService update")
				def resultData=new HashMap<>()
				String []args=["Appointment"]
				try{
					def appointmentInstance=Appointment.findByPatientId(patientId)
					if(appointmentInstance) {
						appointmentInstance.patientId=patientId
						appointmentInstance.appointmentDate=appointmentDate
						appointmentInstance.appointmentTime=appointmentTime
						appointmentInstance.doctorId=doctorId
						appointmentInstance.status=status
						appointmentInstance.modifiedBy=modifiedBy
						
						def sts=save(appointmentInstance)
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.successmessage",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
						}
					}
					else {
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
					}
					return resultData
				}
				catch(Exception e) {
					log.info("AppointmentService update Exception")
				}
			}
		
		/* 
		 * To Delete the data of Appointment
		 * Delete service for saveAppointment action in AppointmentController */
		def delete(patientId) {
			log.info("AppointmentService delete")
			def resultData=new HashMap<>()
			String []args=["Appointment"]
			try{
				def appointmentInstance=Appointment.findByPatientId(patientId)
				if(appointmentInstance) {
					appointmentInstance.delete flush:true
					resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.successmessage",args))
				}
				else{
					resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.errormessage",args))
				}
				return resultData
			}
			catch(Exception e) {
				log.info("AvailabilityService delete Exception::"+e)
			}
		}
						
			
		
		def getMessage(String code) {
			return getMessage(code,null)
		}
	
		def getMessage(String code,String[] args) {
			def appCtx = grailsApplication.getMainContext()
			return appCtx.getMessage(code,args,Locale.default)
		}

}

