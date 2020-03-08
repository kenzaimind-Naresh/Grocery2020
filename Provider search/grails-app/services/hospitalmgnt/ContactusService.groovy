package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class ContactusService {

	def serviceMethod() {
	}
	
	def dataSource_solr
	def UserService
	def grailsApplication
	
	def getInstance() {
		log.info("ContactusService getInstance ")
		try{
			return new Contactus()
		}
		catch(Exception e) {
			log.info("ContactusService getInstance Exception::"+e)
		}
	}
	def save(Contactus contactusInstance) {
		log.info("ContactService save-Object ")
		try{
			if(contactusInstance == null) {
				return false
			}
			else{
				def e=contactusInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("ContactService save-Object Exception::"+e)
		}
	}
	
	
	/*
	 * To save the data of Donar
	 * save service for saveDoctor action in DonarController */
	def save(firstName,lastName,email,mobileNumber,address,city,state,zipCode,modifiedBy){
		log.info("ContactusService save-params ")
		def resultData=new HashMap<>()
		String []args=["Contactus"]
		log.info(dataSource_solr)
				try{
					def check=Contactus.findByEmail(email)
					
				if(!check){
				def contactusInstance=getInstance()
				log.info(contactusInstance)
				if(contactusInstance){
					contactusInstance.firstName=firstName
					log.info(firstName)
					contactusInstance.lastName=lastName
					log.info(lastName)
					contactusInstance.email=email
					log.info(email)
					contactusInstance.mobileNumber=mobileNumber
					log.info(mobileNumber)
					contactusInstance.address=address
					log.info(address)
					contactusInstance.city=city
					log.info(city)
					contactusInstance.state=state
					log.info(state)
					contactusInstance.zipCode=zipCode
					log.info(zipCode)
					contactusInstance.modifiedBy=modifiedBy
					log.info(modifiedBy)
					
					contactusInstance.createdDate=new Date()
					contactusInstance.modifiedDate=new Date()
					
					def sts= save(contactusInstance)
					log.info(sts)
					if(sts){
						UserService.sendmail(email)
						}
				
					
					if(sts){
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						resultData.put("contactusInstance",contactusInstance)
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
			log.info("ContactusService save Exception::"+e)
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

	

