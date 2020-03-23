package icecreampack


import icecreampack.User;
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
	   def save(userName,password,email,mobileNumber,modifiedBy){
		   log.info("UserService save-params ")
		   def resultData=new HashMap<>()
		   String []args=["User"]
		   try{
		   
			   def check=User.findByUserNameAndEmail(userName,email)
			   if(!check){
				   
				   
				   def userInstance=getInstance()
				   if(userInstance){
				  
			   
					   
				   
					   userInstance.userName=userName
					   userInstance.password=password
					   userInstance.email=email
					   userInstance.mobileNumber=mobileNumber
					   userInstance.modifiedBy=modifiedBy
					   userInstance.createdDate=new Date()
					   userInstance.modifiedDate=new Date()
					   def sts= save(userInstance)
					   def f=User.get(sts.id)
					   f.userId=f.id
					   def st=save(f)
					   
					   
					   if(st){
						   UserService.sendmail(email)
						  }
					   
					   if(st){
						   resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
					   }
					   else{
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
					   }
			   }
			   }
			   
			   return resultData
		   }
		   catch(Exception e) {
			   log.info("UserService save Exception::"+e)
		   }
	   }
		   
	   def update(userName,password,email,mobileNumber,modifiedBy,bankname,accountnumber,branch,ifsc){
   log.info("UserService update")
   def resultData=new HashMap<>()
   String []args=["User"]
   try{
	   def userInstance=User.findByUserName(userName)
	   if(userInstance) {
		   
		   userInstance.userName=userName
		   userInstance.password=password
		   userInstance.email=email
		   userInstance.mobileNumber=mobileNumber
		   userInstance.modifiedBy=modifiedBy
		   
		   userInstance.bankname= bankname
		   userInstance.accountnumber=accountnumber
		   userInstance.branch=branch
		   userInstance.ifsc=ifsc
		   
		   def sts=save(userInstance)
		   def f=User.get(sts.id)
		   f.userId=f.id
		   def st=save(f)
		   if(st){
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
	   
	   
	   
	   
	   
	   
	   
	   def sendmail(mailid){
		   log.info("userService sendMail service")
		   try{
		   mailService.sendMail {
			   from "myuser030@gmail.com"
			   to mailid
			   subject "Welcome mail from WeFix"
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
		   
	   
	   def sendaddressmail(mailid,userName){
		   log.info("userService sendMail service")
		   def msg="<i>"
		   
		   try{
		   
		   
		   mailService.sendMail {
			   from "myuser030@gmail.com"
			   to mailid
			   subject "Confirmation mail of your Order"
			   html "<p>Hello Sir/Madam, You are Order is confirmed successfully.</p><p>User Name: <b>"+userName+"</b></p>"
		   }
		   }
		   catch(Exception e){
			   System.out.println("Entered Email address is wrong")
			   }
		   finally{
			   
		   return "fail"
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
