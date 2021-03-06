package skeleton

import grails.transaction.Transactional

@Transactional
class MerchantService {
	static transactional=true
	
    def serviceMethod() {

    }
	
	def grailsApplication
	def MerchantService
	def mailService
	
	
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
				if(e){
					def email = merchantInstance.email
					log.info("merchant email from Instance "+email)
					log.info("Merchant mail service")
					sendmail(email)
				}
				return e
			}
		}
		catch(Exception e) {
			log.info("MerchantService save-Object Exception::"+e)
		}
	}
	
	def update(firstName,lastName,email,password,mobileNumber,address,city,street,state,zipCode,modifiedBy){
		log.info("MerchantService saveupdate")
		def resultData=new HashMap<>()
		String []args=["Merchant"]
		try{
			def merchantInstance=Merchant.findByEmail(email)
			if(merchantInstance) {
				log.info("instance")
				
				merchantInstance.firstName=firstName
				merchantInstance.lastName=lastName
				merchantInstance.email=email
				merchantInstance.password=password
				merchantInstance.mobileNumber=mobileNumber
				merchantInstance.address=address
				merchantInstance.city=city
				merchantInstance.street=street
				merchantInstance.state=state
				merchantInstance.zipCode=zipCode
				merchantInstance.modifiedBy=modifiedBy
				
				log.info(merchantInstance.save(failOnError: true))
				def sts=save(merchantInstance)
				
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
			log.info("MerchantService saveupdate Exception")
		}
	 }
	
	def validateCode(email,mobileNumber,otpActivation){
		log.info("MerchantService validateCode service ")
		def resultData=new HashMap<>()
		String []args=["User"]
		try{
		 def merchantInstance=Merchant.findByEmailOrMobileNumber(email,mobileNumber)
		  if(merchantInstance){
		   merchantInstance.otpActivation=otpActivation
		   log.info(otpActivation)
		   log.info(email)
		   log.info(mobileNumber)
		   def sts2= save(merchantInstance)
		   log.info(sts2)
		   
		   if(sts2){
			  sendotpmail(email,otpActivation)
			  }
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
		 log.info("MerchantService validateCode Exception::"+e)
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
	
	def passwordSave3(email,password){
		log.info("MerchantService passwordSave3 service ")
		def resultData=new HashMap<>()
		String []args=["Merchant"]
		try{
		 def merchantInstance=Merchant.findByEmail(email)
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
		 log.info("MerchantService passwordsave3 Exception::"+e)
		}
		
	   }
	
	def sendmail(mailid){
		log.info("MerchantService sendMail service")
		try{
		mailService.sendMail {
			from "myuser030@gmail.com"
			to mailid
			subject "Welcome mail from Grocery"
			body "Hello Sir/Madam, You are Registered Successfully, thanks you for being with us."
		}
		}
		catch(Exception e){
			System.out.println("Entered Email address is wrong")
		}
		finally{
			return "fail"
		}
		}
	
	def sendotpmail(mailid,otpActivation){
		log.info("MerchantService sendotpMail service")
		try{
		mailService.sendMail {
			from "myuser030@gmail.com"
			to mailid
			subject "Verification mail for your New Password"
			html "<p>Your Verification Code is:</p><p><b> "+ otpActivation+"</b></p><p>Do not forward or share this to anyone.</p>"
		}
		}
		catch(Exception e){
			log.info("Exception while sending mail ")
			}
			}
			
	def sendmailUser(mailid){
		log.info("MerchantService sendmailuser service")
		log.info("merchant mail "+mailid)
		try{
		mailService.sendMail {
			from "myuser030@gmail.com"
			to mailid
			subject "Registration Successful"
			html "<p>Hello Sir/Madam, Your Registration done successfully, Thanks for Being with us..</p>"
		}
		}
		catch(Exception e){
			log.info("Exception while sending mail to user "+e)
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
