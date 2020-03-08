package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class DrugsService {

   static transactional=true

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("DrugsService getInstance ")
			try{
				return new Drugs()
			}
			catch(Exception e) {
				log.info("DrugsService getInstance Exception::"+e)
			}
		}
		def save(Drugs drugsInstance) {
			log.info("DrugsService save-Object ")
			try{
				if(drugsInstance == null) {
					return false
				}
				else{
					def e=drugsInstance.save(flush:true)
					log.info("*******"+e)
					return true
				}
			}
			catch(Exception e) {
				log.info("DrugsService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Drugs
		 * save service for saveDrugs action in DrugsController */
		def save(drugName,rate,addedBy){
			log.info("DrugsService save-params ")
			def resultData=new HashMap<>()
			String []args=["Drugs"]
			try{
			
				
					//def drugsInstance=getInstance()
					def check=Drugs.findByDrugName(drugName)
					if(!check){
						def drugsInstance=getInstance()
						if(drugsInstance){
						drugsInstance.drugName=drugName
						drugsInstance.rate=rate
						drugsInstance.addedBy=addedBy
						drugsInstance.createdDate=new Date()
						drugsInstance.modifiedDate=new Date()
						def sts= save(drugsInstance)						
						
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
				resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
				resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
			}
					
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadexist",args))
					   }
					
				
				return resultData
			}
			catch(Exception e) {
				log.info("DrugsService save Exception::"+e)
			}
		}
		
		
		/*
		 * To update the data of Drugs
		 * update service for saveDrugs action in DrugsController */
		def update(drugName,rate,addedBy){
				log.info("DrugsService update")
				def resultData=new HashMap<>()
				String []args=["Drugs"]
				try{
					def drugsInstance=Drugs.findByDrugName(drugName)
					if(drugsInstance) {
						
						drugsInstance.drugName=drugName
						drugsInstance.rate=rate
						drugsInstance.addedBy=addedBy
						
						def sts=save(drugsInstance)
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
						}
					}
					
					return resultData
				}
				catch(Exception e) {
					log.info("DrugsService update Exception")
				}
			}
		
		/*
		 * To Delete the data of Drugs
		 * Delete service for saveDrugs action in DrugsController */
		def delete(drugName) {
			log.info("DrugsService delete")
			def resultData=new HashMap<>()
			String []args=["Drugs"]
			try{
				def drugsInstance=Drugs.findByDrugName(drugName)
				if(drugsInstance) {
					drugsInstance.delete flush:true
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

