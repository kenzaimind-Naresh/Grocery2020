package skeleton

import grails.transaction.Transactional

@Transactional
class MerchantService {
	static transactional=true
	
    def serviceMethod() {

    }
	
	def grailsApplication
	def MerchantService
	
	
	
	def getInstance() {
		log.info("MerchantService getInstance ")
		try{
			return new Merchant()
		}
		catch(Exception e) {
			log.info("MerchantService getInstance Exception::"+e)
		}
	}
	def save(Merchant merchantInstance) {
		log.info("MerchantService save-Object ")
		try{
			if(merchantInstance == null) {
				return false
			}
			else{
				def e=merchantInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("MerchantService save-Object Exception::"+e)
		}
	}
	
	
	
	def passwordSave2(username,password){
		log.info("MerchantService passwordSave2 service ")
		def resultData=new HashMap<>()
		String []args=["Merchant"]
		try{
		 def merchantInstance=Merchant.findByEmail(username)
		  if(merchantInstance){
		   merchantInstance.password=password
		   log.info(password)
		   def sts2= save(merchantInstance)
		   log.info(sts2)
		   if(sts2){
			resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
			resultData.put(getMessage("default.message.label"),getMessage("default.insertion.changepass",args))
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
		 log.info(resultData)
		 return resultData
		}
		catch(Exception e) {
		 log.info("MerchantService passwordsave2 Exception::"+e)
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
