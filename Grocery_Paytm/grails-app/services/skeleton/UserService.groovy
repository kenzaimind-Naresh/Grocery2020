package skeleton


import grails.transaction.Transactional


@Transactional
class UserService {
	static transactional=true
	
	def mailService
	def UserService
	
	def serviceMethod() {
	
		}
	
	def grailsApplication
	
		def getInstance() {
			log.info("UserService getInstance ")
			try{
				return new User()
			}
			catch(Exception e) {
				log.info("UserService getInstance Exception::"+e)
			}
		}
		def save(User userInstance) {
			log.info("UserService save-Object ")
			try{
				if(userInstance == null) {
					return false
				}
				else{
					//log.info(userInstance.save(failOnError: true))
					def e=userInstance.save(flush:true)
					
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("UserService save-Object Exception::"+e)
			}
		}
		
		
		
		//* To save the data of User
		//* save service for saveuser action in UserController */
	   def save(firstName,lastName,userName,password,email,mobileNumber,otpActivation,modifiedBy){
		   log.info("UserService save-params ")
		   def resultData=new HashMap<>()
		   String []args=["User"]
	
		   try{
			   if(!User.findByEmailOrMobileNumber(email,mobileNumber)){
			   
				   def userInstance=getInstance()
					   
				      userInstance.firstName=firstName
					   userInstance.lastName=lastName
					   userInstance.userName = userName
					   log.info("firstName as userName "+userName)
					   userInstance.password=password
					   userInstance.email=email
					   userInstance.mobileNumber=mobileNumber
					   userInstance.otpActivation=otpActivation
					   userInstance.modifiedBy=modifiedBy
					   userInstance.createdDate=new Date()
					   userInstance.modifiedDate=new Date()
					   def sts= save(userInstance)
					   if(sts!=null){
					   def f=User.get(sts.id)
					   f.userId=f.id
					   def st=save(f)
					   
					   log.info("Status "+st)
					   if(st){
						   sendmail(email)
						  }
					   
					   if(st){
						   resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
					   }
					   }
					   else{
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
					   }
			   }else{
			   resultData.put(getMessage("default.status.label"),"existed")
			   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
			   
			   }
			   
			   
			   return resultData
		   }
		   catch(Exception e) {
			   log.info("UserService save Exception::"+e)
		   }
	   }
		   
	   def update(firstName,lastName,userName,password,email,mobileNumber,modifiedBy){
   log.info("UserService update")
   def resultData=new HashMap<>()
   String []args=["User"]
   try{
	   def userInstance=User.findByEmailOrMobileNumber(email,mobileNumber)
	   if(userInstance) {
		   
		   
		   userInstance.firstName=firstName
		   userInstance.lastName=lastName
		   userInstance.userName=userName
		   log.info("firstName as userName "+userName)
		   userInstance.password=password
		   userInstance.email=email
		   userInstance.mobileNumber=mobileNumber
		   userInstance.modifiedBy=modifiedBy
		   def sts=save(userInstance)
		
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
	   log.info("UserService update Exception")
   }
}
	   
	   def passwordSave2(userName,password){
		   log.info("UserService passwordSave2 service ")
		   def resultData=new HashMap<>()
		   String []args=["User"]
		   try{
			def userInstance=User.findByUserName(userName)
			 if(userInstance){
			  userInstance.password=password
			  log.info(password)
			  def sts2= save(userInstance)
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
			log.info("UserService passwordsave2 Exception::"+e)
		   }
		   
		  }
	   
	   def forgotpass(userName,mobileNumber,email,otpActivation){
		   log.info("UserService forgotpass service ")
		   def resultData=new HashMap<>()
		   String []args=["User"]
		   try{
			def userInstance=User.findByUserNameOrMobileNumber(userName,mobileNumber)
			 if(userInstance){
			  userInstance.otpActivation=otpActivation
			  log.info(otpActivation)
			  log.info(email)
			  def sts2= save(userInstance)
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
			log.info("UserService forgotpass Exception::"+e)
		   }
		   
		  } 
	   
	   def passwordSave3(userName,password){
		   log.info("UserService passwordSave2 service ")
		   def resultData=new HashMap<>()
		   String []args=["User"]
		   try{
			def userInstance=User.findByUserName(userName)
			 if(userInstance){
			  userInstance.password=password
			  log.info(password)
			  def sts2= save(userInstance)
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
			log.info("UserService passwordsave3 Exception::"+e)
		   }
		   
		  }
	   
	   def sendmail(mailid){
		   log.info("userService sendMail service")
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
		   log.info("userService sendotpMail service")
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
	  
		   
		
		def getMessage(String code) {
			return getMessage(code,null)
		}
	
		def getMessage(String code,String[] args) {
			def appCtx = grailsApplication.getMainContext()
			return appCtx.getMessage(code,args,Locale.default)
		}
}

