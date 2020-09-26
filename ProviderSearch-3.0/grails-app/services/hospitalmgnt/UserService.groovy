package hospitalmgnt


import grails.converters.JSON;
import grails.transaction.Transactional

@Transactional
class UserService {
	
	static transactional=true
	def mailService

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
		
		def sendmail(mailid){
			log.info("userService sendMail service")
			try{
			mailService.sendMail {
				from "myuser030@gmail.com"
				to mailid
				subject "Welcome mail from Provider Search"
				body "Hello Sir/Madam, You are Registered Successfully, thanks you for being with us."
			}
			}
			catch(Exception e){
			log.info("Exception while sending mail "+e)
			}
			}
		
		def sendpatientmail(mailid,doctorName,date,time){
		log.info("userService sendMail service")
		def msg="<i>"
		try{
		mailService.sendMail {
			from "myuser030@gmail.com"
            to mailid
            subject "Confirmation mail of your appiotment"
            html "<p>Hello Sir/Madam, You are Appointment is confirmed successfully.</p><p>Doctor Name: <b>"+ doctorName+"</b></p><p>Date and Time: <b>"+date+","+time+"</b></p>"
        }
		}
		catch(Exception e){
			log.info("Exception while sending mail "+e)
			}
			}
		
		/*
		 * To save the username and password of Patient
		 * passwordSave service for passwordSave action in UserController */
		def passwordSave(username,password){
			log.info("UserService passwordSave service ")
			def resultData=new HashMap<>()
			String []args=["User"]
			try{
			 def userInstance=User.findByUsername(username)
			  if(userInstance){
			   userInstance.password=password
			   
			   def sts2= save(userInstance)
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
			 return resultData
			}
			catch(Exception e) {
			 log.info("UserService passwordsave Exception::"+e)
			}
		   }
		
		/*
		 * To save the data of User
		 * save service for saveuser action in UserController */
		def save(username,password,mobileNumber,dob,address,modifiedBy){
			log.info("UserService save-params ")
			def resultData=new HashMap<>()
			String []args=["User"]
			try{
			
				
					def userInstance=getInstance()
						
					
						userInstance.username=username
						userInstance.password=password
						userInstance.mobileNumber=mobileNumber
						userInstance.dob=dob
						userInstance.address=address
						userInstance.modifiedBy=modifiedBy
						userInstance.createdDate=new Date()
						userInstance.modifiedDate=new Date()
						def sts= save(userInstance)
						def f=User.get(sts.id)
						f.userId=f.id
						def st=save(f)
						
						if(st){
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
				log.info("UserService save Exception::"+e)
			}
		}
			
		/*
		 * To update the data of User
		 * update service for saveuser action in UserController */
		def update(username,password,mobileNumber,dob,address,modifiedBy){
				log.info("UserService update")
				def resultData=new HashMap<>()
				String []args=["User"]
				try{
					def userInstance=User.findByUsername(username)
					if(userInstance) {
						
						userInstance.username=username
						userInstance.password=password
						userInstance.mobileNumber=mobileNumber
						userInstance.dob=dob
						userInstance.address=address
						userInstance.modifiedBy=modifiedBy
						def status=save(userInstance)
						def f=User.get(status.id)
						f.userId=f.id
						def st=save(f)
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.updateprofile",args))
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
		
		/*
		 * To Delete the data of User
		 * Delete service for saveuser action in UserController */
		def delete(mobileNumber) {
			log.info("UserService delete")
			def resultData=new HashMap<>()
			String []args=["User"]
			try{
				def userInstance=User.findByMobileNumber(mobileNumber)
				if(userInstance) {
					userInstance.delete flush:true
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
				log.info("UserService delete Exception::"+e)
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
		
