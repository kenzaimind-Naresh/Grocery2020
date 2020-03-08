package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class AvailabilityService {

   static transactional=true

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("AvailabilityService getInstance ")
			try{
				return new Availability()
			}
			catch(Exception e) {
				log.info("AvailabilityService getInstance Exception::"+e)
			}
		}
		def save(Availability availabilityInstance) {
			log.info("AvailabilityService save-Object ")
			try{
				if(availabilityInstance == null) {
					return false
				}
				else{
					def e=availabilityInstance.save(flush:true)
					log.info("*******"+e)
					return true
				}
			}
			catch(Exception e) {
				log.info("AvailabilityService save-Object Exception::"+e)
			}
		}
		
		/* 
		 * To save the data of Availability
		 * save service for saveAvailability action in AvailabilityController */
		def save(drugId,drugName,status,discount,pharmacyObj){
			log.info("AvailabilityService save-params ")
			def resultData=new HashMap<>()
			String []args=["Availability"]
			def check=Availability.findByDrugIdAndPharmacy(drugId,pharmacyObj)
			log.info(check)
			try{
			if(check==null){
			
			
				
					def availabilityInstance=getInstance()
						availabilityInstance.drugId=drugId
						log.info(drugId)
						availabilityInstance.drugName=drugName
						log.info(drugName)
						availabilityInstance.status=status
						log.info(status)
						availabilityInstance.discount=discount
						log.info(discount)
						availabilityInstance.pharmacy=pharmacyObj
						log.info(pharmacyObj)
						availabilityInstance.createdDate=new Date()
						availabilityInstance.modifiedDate=new Date()
						def sts= save(availabilityInstance)
						
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
			}
			else{
						log.info("update block in service")
							def availabilityInstance=check
								availabilityInstance.drugId=drugId
								log.info(drugId)
								availabilityInstance.drugName=drugName
								log.info(drugName)
								availabilityInstance.status=status
								log.info(status)
								availabilityInstance.discount=discount
								log.info(discount)
								availabilityInstance.pharmacy=pharmacyObj
								log.info(pharmacyObj)
								availabilityInstance.createdDate=check.createdDate
								availabilityInstance.modifiedDate=new Date()
								def sts= save(availabilityInstance)
								
								
								if(sts){
									resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
									resultData.put(getMessage("default.message.label"),getMessage("default.update.successmessage",args))
								}
								else{
									resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
									resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
								}
						
					}
				
			
				return resultData
			}
			catch(Exception e) {
				log.info("AvailabilityService save Exception::"+e)
			}
		}
		
		/* 
		 * To update the data of Availability
		 * update service for saveAvailability action in AvailabilityController */
		def update(doctorId,date,status,modifiedBy){
				log.info("AvailabilityService update")
				def resultData=new HashMap<>()
				String []args=["Availability"]
				try{
					def availabilityInstance=Availability.findByDoctorId(doctorId)
					if(availabilityInstance) {
						availabilityInstance.doctorId=doctorId
						availabilityInstance.date=date
						availabilityInstance.status=status
						availabilityInstance.modifiedBy=modifiedBy
						
						def sts=save(availabilityInstance)
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
					log.info("AvailabilityService update Exception")
				}
			}
		
		/* 
		 * To Delete the data of Availability
		 * Delete service for saveAvailability action in AvailabilityController */
		def delete(doctorId) {
			log.info("AvailabilityService delete")
			def resultData=new HashMap<>()
			String []args=["Availability"]
			try{
				def availabilityInstance=Availability.findByDoctorId(doctorId)
				if(availabilityInstance) {
					availabilityInstance.delete flush:true
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
		
		/*Booking Appointments for Doctor 
		 * service for getSlots action in AvailabilityController */
		def getBookedAppointments(doctorId,dFirstname,startmillisec,endmillisec){
			log.info("AvailabilityService getBookedAppointments ")
			def resultData=new HashMap<>()
			def slotlist=new ArrayList()
			def slots=Appointment.findAllByDoctorIdAndAppSlotMilliBetween(doctorId,startmillisec,endmillisec)
			log.info(slots)
			for(int i=0;i<slots.size();i++){
			def result=new HashMap<>()
			result.put("DATE", slots[i].appointmentDate)
			result.put("SLOT", slots[i].appointmentTime)
			result.put("DOCTORID", slots[i].doctorId)
			result.put("STATUS", slots[i].status)
	
			slotlist.add(result)
			log.info(result)
		}
			return slotlist
		}
			
		
		def getMessage(String code) {
			return getMessage(code,null)
		}
	
		def getMessage(String code,String[] args) {
			def appCtx = grailsApplication.getMainContext()
			return appCtx.getMessage(code,args,Locale.default)
		}

}
