package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class ServicesService {

   static transactional=true

	def serviceMethod() {

	}
	def grailsApplication
	
		def getInstance() {
			log.info("ServicesService getInstance ")
			try{
				return new Services()
			}
			catch(Exception e) {
				log.info("ServicesService getInstance Exception::"+e)
			}
		}
		def save(Services ServicesInstance) {
			log.info("ServicesService save-Object ")
			try{
				if(ServicesInstance == null) {
					return false
				}
				else{
					def e=ServicesInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("ServicesService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Services
		 * save service for saveServices action in ServicesController */
		def save(serviceName,rate,modifiedBy){
			log.info("ServicesService save-params ")
			def resultData=new HashMap<>()
			String []args=["Services"]
			try{
			
				def check=Services.findByServiceName(serviceName)
				if(!check){
					def ServicesInstance=getInstance()
					if(ServicesInstance){

						ServicesInstance.serviceName=serviceName
						ServicesInstance.rate=rate
						ServicesInstance.modifiedBy=modifiedBy
						ServicesInstance.createdDate=new Date()
						ServicesInstance.modifiedDate=new Date()
						def sts= save(ServicesInstance)
						def f=Services.get(sts.id)
						f.serviceId=f.id
						def st=save(f)
						
						if(st){
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
				resultData.put(getMessage("default.message.label"),getMessage("default.object.alexist",args))
			   }
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("ServicesService save Exception::"+e)
			}
		}
		
		/*
		 * To update the data of Services
		 * update service for saveServices action in ServicesController */
		def update(serviceName,rate,modifiedBy){
				log.info("ServicesService update")
				def resultData=new HashMap<>()
				String []args=["Services"]
				try{
					def ServicesInstance=Services.findByServiceName(serviceName)
					if(ServicesInstance) {
						
						ServicesInstance.serviceName=serviceName
						ServicesInstance.rate=rate
						ServicesInstance.modifiedBy=modifiedBy
						
						def sts=save(ServicesInstance)
						def f=Services.get(sts.id)
						f.serviceId=f.id
						def st=save(f)
						
						
						if(st){
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
					log.info("ServicesService update Exception")
				}
			}
		
		/*
		 * To Delete the data of Services
		 * Delete service for saveServices action in ServicesController */
		def delete(serviceName) {
			log.info("ServicesService delete")
			def resultData=new HashMap<>()
			String []args=["Services"]
			try{
				def ServicesInstance=Services.findByServiceName(serviceName)
				if(ServicesInstance) {
					ServicesInstance.delete flush:true
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
				log.info("ServicesService delete Exception::"+e)
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

