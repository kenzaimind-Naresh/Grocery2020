package icecreampack


import icecreampack.Admin;
import grails.transaction.Transactional

@Transactional
class AdminService {

	static transactional=true
	def AdminService
	def serviceMethod() {

	}
	
	
	
	def grailsApplication
	
		def getInstance() {
			log.info("AdminService getInstance ")
			try{
				return new Admin()
			}
			catch(Exception e) {
				log.info("AdminService getInstance Exception::"+e)
			}
		}
		def save(Admin adminInstance) {
			log.info("AdminService save-Object ")
			try{
				if(adminInstance == null) {
					return false
				}
				else{
					def e=adminInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("AdminService save-Object Exception::"+e)
			}
		}
		
		//* To save the data of User
		//* save service for saveuser action in UserController */
		def save(adminName,password,fullName,email,modifiedBy){
			log.info("AdminService save-params ")
			def resultData=new HashMap<>()
			String []args=["Admin"]
			try{
			def check=Admin.findByEmail(email)
			
			if(!check){
			
			
			def adminInstance=getInstance()
			if(adminInstance){
			
			adminInstance.adminName=adminName
			adminInstance.password=password
			adminInstance.fullName=fullName
			adminInstance.email=email
			
			adminInstance.modifiedBy=modifiedBy
			
			adminInstance.createdDate=new Date()
			adminInstance.modifiedDate=new Date()
			
			
			
			
			def sts= save(adminInstance)
			log.info(sts)
			log.info(adminInstance.save(failOnError: true))
			
			def f=Admin.get(sts.id)
			log.info(f)
			f.adminId=f.id
			def st=save(f)
			log.info(st)
			if(st){
			}
			
			if(st){
			resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
			resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
			resultData.put("adminInstance",adminInstance)
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
			log.info("AdminService save Exception::"+e)
			}
			}
	   
		def passwordSave2(adminName,password){
			log.info("AdminService passwordSave2 service ")
			def resultData=new HashMap<>()
			String []args=["Admin"]
			try{
			 def adminInstance=Admin.findByAdminName(adminName)
			  if(adminInstance){
			   adminInstance.password=password
			   log.info(password)
			   def sts2= save(adminInstance)
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
			 log.info("AdminService passwordsave2 Exception::"+e)
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
