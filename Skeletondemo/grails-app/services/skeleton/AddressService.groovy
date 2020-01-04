package skeleton
import grails.converters.JSON;

import grails.transaction.Transactional
import java.text.SimpleDateFormat


@Transactional
class AddressService {
	static transactional=true
	
	def UserService
	def mailService
	def AddressService
	def appointmentService
	

    def serviceMethod() {

    }

	def grailsApplication
	
		def getInstance() {
			log.info("AddressService getInstance ")
			try{
				return new Address()
			}
			catch(Exception e) {
				log.info("AddressService getInstance Exception::"+e)
			}
		}
		def save(Address addressInstance) {
			log.info("addressService save-Object ")
			try{
				if(addressInstance == null) {
					return false
				}
				else{
					def e=addressInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("addressService save-Object Exception::"+e)
			}
		}
	
		/*
		 * To save the data of Patient
		 * save service for savePatient action in PatientController */
			def save(fullName,mobileNumber,pincode,houseNumber,area,landmark,city,state,deliverhere,userNameId){
			log.info("AddressService save-params ")
			def resultData=new HashMap<>()
			def mailstatus
			String []args=["Address"]
			try{
				def check
				if(!check){
					def addressInstance=getInstance()
					if(addressInstance){
						addressInstance.fullName=fullName
						log.info(fullName)
						addressInstance.mobileNumber=mobileNumber
						log.info(mobileNumber)
						//addressInstance.email=email
						//log.info(email)
						addressInstance.pincode=pincode
						log.info(pincode)
						addressInstance.houseNumber=houseNumber
						log.info(houseNumber)
						addressInstance.area=area
						log.info(area)
						addressInstance.landmark=landmark
						log.info(landmark)
						addressInstance.city=city
						log.info(city)
						addressInstance.state=state
						log.info(state)
						addressInstance.deliverhere=deliverhere
						log.info(deliverhere)
						addressInstance.userNameId=userNameId
						log.info(userNameId)


						
						addressInstance.createdDate=new Date()
						addressInstance.modifiedDate=new Date()
				
						def sts= save(addressInstance)
						log.info(sts)
						log.info(addressInstance.save(failOnError: true))
						
						def f=Address.get(sts.id)
						f.addressId=f.id
						def st=save(f)
						
					//	if(st){
							//def fullname=Address.get(fullName)
							
					//		UserService.sendaddressmail(email,fullName)
					//}
					
						if(st){
							resultData.put("status","success")
							resultData.put("message","inserted successfully")
							resultData.put("addressInstance",addressInstance)
						
	
						}
						
						else{
							resultData.put("status","error")
							resultData.put("message","Already Existed")
						}
				
					}
					}
				return resultData
			}
			catch(Exception e) {
				log.info("AddressService save Exception::"+e)
			}
		}
		
			
			def sendmail(mailid){
				log.info("userService sendMail service")
				def msg="<i>"
				
				try{
				
				
				mailService.sendMail {
					from "myuser030@gmail.com"
					to mailid
					subject "Confirmation mail of your Product"
					html "<p>Hello Sir/Madam, You are Product Order is confirmed successfully.</p>"
				}
				}
				catch(Exception e){
					System.out.println("Entered Email address is wrong")
					}
				finally{
					
				return "fail"
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
			
			def delete(id) {
				log.info("AddressService delete")
				def resultData=new HashMap<>()
				String []args=["Address"]
				try{
					def addressInstance=Address.get(id)
					
					if(addressInstance) {
						
						appointmentService.delete(id)
					//	log.info(patientInstance.delete(failOnError: true))
						addressInstance.delete flush:true
	
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.delete.successmessage",args))
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.delete.errormessage",args))
					}
					
						//mailstatus=UserService.sendDEmail(email,doctorname,appointmentDate,appointmentTime)
					
					return resultData
				}
				catch(Exception e) {
					log.info("AddressService delete Exception::"+e)
				}
			}
				
			
			
			
	
	
	
	
	
	}
