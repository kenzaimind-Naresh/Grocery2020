package hospitalmgnt

import grails.transaction.Transactional
import grails.converters.JSON;

@Transactional
class DoctorScheduleService {

    def serviceMethod() {
    }
	def grailsApplication
		def getInstance() {
			log.info("DoctorScheduleService getInstance ")
			try{
				return new DoctorSchedule()
			}
			catch(Exception e) {
				log.info("DoctorScheduleService getInstance Exception::"+e)
			}
		}
		def save(DoctorSchedule doctorScheduleInstance) {
			log.info("DoctorScheduleService save-Object ")
			try{
				if(doctorScheduleInstance == null) {
					return false
				}
				else{
					def e=doctorScheduleInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("DoctorScheduleService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of DoctorSchedule
		 * save service for saveDoctorSchedule action in DoctorScheduleController */		
		def save(doctorId,status,date,slots){
			log.info("DoctorScheduleService save-params ")
			def resultData=new HashMap<>()
			String []args=["DoctorSchedule"]
					try{
						def check=DoctorSchedule.findByDoctorIdAndDate(doctorId,date)
						
					if(!check){				
					def doctorScheduleInstance=getInstance()
					log.info(doctorScheduleInstance)
					if(doctorScheduleInstance){
					    doctorScheduleInstance.doctorId=doctorId
						log.info(doctorId)
						doctorScheduleInstance.status=status
						log.info(status)
						doctorScheduleInstance.date=date
						log.info(date)
						doctorScheduleInstance.slots=slots
						log.info(slots)
						doctorScheduleInstance.createdDate=new Date()
						doctorScheduleInstance.modifiedDate=new Date()
						def sts= save(doctorScheduleInstance)
						log.info(sts)
						def f=DoctorSchedule.get(doctorScheduleInstance.id)
						log.info(f)
						f.dId=f.id
						def st=save(f)
						log.info(st)
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
					}
						else {
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
						}
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
					}
				return resultData
			}
			catch(Exception e) {
				log.info("doctorScheduleService save Exception::"+e)
			}
		}
		
		
		/*
		 * To update the data of Doctor
		 * update service for saveDoctor action in DoctorController */
		def update(doctorId,status,date,slots){
			log.info("DoctorScheduleService update")
			def resultData=new HashMap<>()
			String []args=["DoctorSchedule"]
			try{
				def doctorScheduleInstance=DoctorSchedule.findByDoctorIdAndDate(doctorId,date)
				if(doctorScheduleInstance) {
					 doctorScheduleInstance.doctorId=doctorScheduleInstance.doctorId
						log.info(doctorId)
						doctorScheduleInstance.status=status
						log.info(status)
						doctorScheduleInstance.date=date
						log.info(date)
						doctorScheduleInstance.slots=slots
						log.info(slots)
						doctorScheduleInstance.createdDate=doctorScheduleInstance.createdDate
						doctorScheduleInstance.modifiedDate=new Date()
						def sts= save(doctorScheduleInstance)
						log.info(sts)
					
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
				log.info("DoctorScheduleService update Exception")
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
