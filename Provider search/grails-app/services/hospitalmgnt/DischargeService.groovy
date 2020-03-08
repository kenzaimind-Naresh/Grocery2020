package hospitalmgnt
import grails.converters.JSON;
import grails.transaction.Transactional

@Transactional
class DischargeService {
	
	static transactional=true

	def serviceMethod() {

	}
	def grailsApplication
	
		def getInstance() {
			log.info("DischargeService getInstance ")
			try{
				return new Discharge()
			}
			catch(Exception e) {
				log.info("DischargeService getInstance Exception::"+e)
			}
		}
		def save(Discharge DischargeInstance) {
			log.info("DischargeService save-Object ")
			try{
				if(DischargeInstance == null) {
					return false
				}
				else{
					def e=DischargeInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("DischargeService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Discharge
		 * save service for saveDischarge action in DischargeController */
		def save(patientId,pFirstname,pLastname,serviceName,tax,rate,total,grandTotal,pMode,modifiedBy){
			log.info("DischargeService save-params ")
			def resultData=new HashMap<>()
			String []args=["Discharge"]
			try{
			
				
					def DischargeInstance=getInstance()
						
					
					    DischargeInstance.patientId=patientId
						DischargeInstance.pFirstname=pFirstname
						DischargeInstance.pLastname=pLastname
						DischargeInstance.serviceName=serviceName
						DischargeInstance.tax=tax
						DischargeInstance.rate=rate
						DischargeInstance.total=total
						DischargeInstance.grandTotal=grandTotal
						DischargeInstance.pMode=pMode
						DischargeInstance.modifiedBy=modifiedBy
						DischargeInstance.createdDate=new Date()
						DischargeInstance.modifiedDate=new Date()
						def sts= save(DischargeInstance)
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("DischargeService save Exception::"+e)
			}
		}
		
		/*
		 * To update the data of Discharge
		 * update service for saveDischarge action in DischargeController */
		def update(patientId,pFirstname,pLastname,serviceName,tax,rate,total,grandTotal,pMode,modifiedBy){
				log.info("DischargeService update")
				def resultData=new HashMap<>()
				String []args=["Discharge"]
				try{
					def DischargeInstance=Discharge.findByPFirstname(pFirstname)
					if(DischargeInstance) {
					
					DischargeInstance.patientId=patientId
						DischargeInstance.pFirstname=pFirstname
						DischargeInstance.pLastname=pLastname
						DischargeInstance.serviceName=serviceName
						DischargeInstance.tax=tax
						DischargeInstance.rate=rate
						DischargeInstance.total=total
						DischargeInstance.grandTotal=grandTotal
						DischargeInstance.pMode=pMode
						DischargeInstance.modifiedBy=modifiedBy
						def status=save(DischargeInstance)
						if(status){
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
					log.info("DischargeService update Exception")
				}
			}
		
		/*
		 * To Delete the data of Discharge
		 * Delete service for saveDischarge action in DischargeController */
		def delete(pFirstname) {
			log.info("DischargeService delete")
			def resultData=new HashMap<>()
			String []args=["Discharge"]
			try{
				def DischargeInstance=TestData.findByPFirstname(pFirstname)
				if(DischargeInstance) {
					DischargeInstance.delete flush:true
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
				log.info("DischargeService delete Exception::"+e)
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
		

