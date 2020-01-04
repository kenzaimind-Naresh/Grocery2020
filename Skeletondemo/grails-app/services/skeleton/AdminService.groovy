package skeleton

import grails.transaction.Transactional
import skeleton.Admin;

@Transactional
class AdminService {

	static transactional=true
	def mailService

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
		
		def sendmail(mailid){
		log.info("adminService sendMail service")
		mailService.sendMail {
			from "myadmin030@gmail.com"
			to mailid
			subject "Welcome mail from Provider Search"
			body "Hello Sir/Madam, You are Registered Successfully, thanks you for being with us."
		}
		}
		
		def sendpatientmail(mailid,doctorName,date,time){
		log.info("adminService sendMail service")
		def msg="<i>"
		mailService.sendMail {
			from "myadmin030@gmail.com"
			to mailid
			subject "Confirmation mail of your appiotment"
			html "<p>Hello Sir/Madam, You are Appointment is confirmed successfully.</p><p>Doctor Name: <b>"+ doctorName+"</b></p><p>Date and Time: <b>"+date+","+time+"</b></p>"
		}
		}
		
		/*
		 * To save the adminname and password of Patient
		 * passwordSave service for passwordSave action in adminController */
		def passwordSave(adminname,password){
			log.info("AdminService passwordSave service ")
			def resultData=new HashMap<>()
			String []args=["Admin"]
			try{
			 def adminInstance=Admin.findByAdminname(adminname)
			  if(adminInstance){
			   adminInstance.password=password
			   
			   def sts2= save(adminInstance)
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
			 log.info("AdminService passwordsave Exception::"+e)
			}
		   }
		
		/*
		 * To save the data of Admin
		 * save service for saveAdmin action in AdminController */
		def save(adminname,password,mobileNumber,dob,address,modifiedBy){
			log.info("AdminService save-params ")
			def resultData=new HashMap<>()
			String []args=["Admin"]
			try{
			
				
					def adminInstance=getInstance()
						
					
						adminInstance.adminname=adminname
						adminInstance.password=password
						adminInstance.mobileNumber=mobileNumber
						adminInstance.dob=dob
						adminInstance.address=address
						adminInstance.modifiedBy=modifiedBy
						adminInstance.createdDate=new Date()
						adminInstance.modifiedDate=new Date()
						def sts= save(adminInstance)
						def f=Admin.get(sts.id)
						f.adminId=f.id
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
				log.info("AdminService save Exception::"+e)
			}
		}
			
		/*
		 * To update the data of Admin
		 * update service for saveAdmin action in AdminController */
		def update(adminname,password,mobileNumber,dob,address,modifiedBy){
				log.info("AdminService update")
				def resultData=new HashMap<>()
				String []args=["Admin"]
				try{
					def adminInstance=Admin.findByAdminname(adminname)
					if(adminInstance) {
						
						adminInstance.adminname=adminname
						adminInstance.password=password
						adminInstance.mobileNumber=mobileNumber
						adminInstance.dob=dob
						adminInstance.address=address
						adminInstance.modifiedBy=modifiedBy
						def status=save(adminInstance)
						def f=Admin.get(status.id)
						f.adminId=f.id
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
					log.info("AdminService update Exception")
				}
			}
		
		/*
		 * To Delete the data of Admin
		 * Delete service for saveAdmin action in AdminController */
		def delete(mobileNumber) {
			log.info("AdminService delete")
			def resultData=new HashMap<>()
			String []args=["Admin"]
			try{
				def adminInstance=Admin.findByMobileNumber(mobileNumber)
				if(adminInstance) {
					adminInstance.delete flush:true
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
				log.info("AdminService delete Exception::"+e)
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
		
