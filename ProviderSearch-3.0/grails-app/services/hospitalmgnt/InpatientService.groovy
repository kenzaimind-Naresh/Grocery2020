package hospitalmgnt


import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional
class InpatientService {
	
	static transactional=true
	def appointmentService
	def patientService

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("InpatientService getInstance ")
			try{
				return new Inpatient()
			}
			catch(Exception e) {
				log.info("InpatientService getInstance Exception::"+e)
			}
		}
		def save(Inpatient InpatientInstance) {
			log.info("patientService save-Object ")
			try{
				if(InpatientInstance == null) {
					return false
				}
				else{
					def e=InpatientInstance.save(flush:true)
					log.info("*******"+e)
					return true
				}
			}
			catch(Exception e) {
				log.info("InpatientService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Inpatient
		 * save service for saveInpatient action in InpatientController */
		def save(patientId,pFirstname,pLastname,address,nominee,mobileNumber,alternateMobile,email,reference,modifiedBy,serviceType,roomNo){
			log.info("InpatientService save-params ")
			def resultData=new HashMap<>()
			String []args=["Inpatient"]
			try{
			
				
					def InpatientInstance=getInstance()
						def splt=patientId.split("OP");
					
					    InpatientInstance.patientId="IP"+splt[1]
						InpatientInstance.pFirstname=pFirstname
						InpatientInstance.pLastname=pLastname
						InpatientInstance.address=address
						InpatientInstance.nominee=nominee
						InpatientInstance.mobileNumber=mobileNumber
						InpatientInstance.alternateMobile=alternateMobile
						InpatientInstance.email=email
						InpatientInstance.reference=reference
						InpatientInstance.modifiedBy=modifiedBy
						InpatientInstance.serviceType=serviceType
						InpatientInstance.roomNo=roomNo
						InpatientInstance.createdDate=new Date()
						
						InpatientInstance.modifiedDate=new Date()
						def d=InpatientInstance.createdDate
						def sts= save(InpatientInstance)
						def opinstance=Patient.findByPatientId(patientId)
						
						
						def pservice=patientService.update(opinstance.pFirstname,opinstance.pLastname,0,opinstance.pAge,opinstance.pGender,opinstance.mobileNumber,opinstance.alternateMobile,opinstance.address,opinstance.pin,opinstance.fee,opinstance.email,opinstance.reference,opinstance.appointmentDate,opinstance.appointmentTime,opinstance.modifiedBy,opinstance.patientId)
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(InpatientInstance.createdDate);
						log.info(cDate)
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("InpatientInstance",InpatientInstance)
							resultData.put("date",cDate)
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				log.info(resultData)
				return resultData
			}
			catch(Exception e) {
				log.info("InpatientService save Exception::"+e)
			}
		}
		
		/*
		 * To update the data of Inpatient
		 * update service for saveInpatient action in InpatientController */
		def update(patientId,pFirstname,pLastname,address,nominee,mobileNumber,alternateMobile,email,reference,modifiedBy,serviceType,roomNo){
				log.info("InpatientService update")
				def resultData=new HashMap<>()
				String []args=["Inpatient"]
				try{
					def InpatientInstance=Inpatient.findByPatientId(patientId)

					if(InpatientInstance) {
						InpatientInstance.patientId=patientId
						InpatientInstance.pFirstname=pFirstname
						InpatientInstance.pLastname=pLastname
						InpatientInstance.address=address
						InpatientInstance.nominee=nominee
						InpatientInstance.mobileNumber=mobileNumber
						InpatientInstance.alternateMobile=alternateMobile
						InpatientInstance.email=email
						InpatientInstance.reference=reference
						InpatientInstance.modifiedBy=modifiedBy
						InpatientInstance.serviceType=serviceType
						InpatientInstance.roomNo=roomNo
						
						log.info(patientId)
						log.info(pFirstname)
						log.info(pLastname)
						log.info(address)
						log.info(nominee)
						log.info(mobileNumber)
						log.info(alternateMobile)
						log.info(email)
						log.info(reference)
						log.info(modifiedBy)
						log.info(serviceType)
						log.info(roomNo)
						
						def sts=save(InpatientInstance)
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
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
					log.info("InPatientService update Exception")
				}
			}
		
		/*
		 * To delete the data of Inpatient
		 * delete service for saveInpatient action in InpatientController */
		def delete(pFirstname) {
			log.info("InpatientService delete")
			def resultData=new HashMap<>()
			String []args=["Inpatient"]
			try{
				def InpatientInstance=Inpatient.findByPFirstname(pFirstname)
				if(InpatientInstance) {
					InpatientInstance.delete flush:true
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
				log.info("InpatientService delete Exception::"+e)
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
		

