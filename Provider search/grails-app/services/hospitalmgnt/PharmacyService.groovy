package hospitalmgnt


import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional
class PharmacyService {
	
	def UserService
	def grailsApplication
	
		def getInstance() {
			log.info("PharmacyService getInstance ")
			try{
				return new Pharmacy()
			}
			catch(Exception e) {
				log.info("PharmacyService getInstance Exception::"+e)
			}
		}
		def save(Pharmacy pharmacyInstance) {
			log.info("PharmacyService save-Object ")
			try{
				if(pharmacyInstance == null) {
					return false
				}
				else{
					def e=pharmacyInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("PharmacyService save-Object Exception::"+e)
			}
		}
		
		def passwordSave2(username,password){
			log.info("PharmacyService passwordSave2 service ")
			def resultData=new HashMap<>()
			String []args=["Pharmacy"]
			try{
			 def pharmacyInstance=Pharmacy.findByEmail(username)
			 log.info(pharmacyInstance)
			  if(pharmacyInstance){
			   pharmacyInstance.password=password
			   log.info(password)
			   def sts2= save(pharmacyInstance)
			   log.info(sts2)
			   //log.info(pharmacyInstance.save(failOnError: true))
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
			 log.info("PharmacyService passwordsave2 Exception::"+e)
			}
			
		   }
		/*
		 * To save the data of Pharmacy
		 * save service for savePharmacy action in PharmacyController */
		def save(regId,packName,status,firstname,lastname,mobileNumber,alternateNumber,address,locality,
					city,pharmacyName,pin,email,password,modifiedBy,image,locUrl){
			log.info("PharmacyService save-params ")
			def resultData=new HashMap<>()
			String []args=["Pharmacy"]
				try{
						def check=Pharmacy.findByRegIdAndEmail(regId,email)
						
					if(!check){				
					def pharmacyInstance=getInstance()
					log.info(pharmacyInstance)
					if(pharmacyInstance){
					    pharmacyInstance.regId=regId
						log.info(regId)
						pharmacyInstance.packName=packName
						log.info(packName)
						pharmacyInstance.status=status
						log.info(status)
						pharmacyInstance.firstname=firstname
						log.info(firstname)
						pharmacyInstance.lastname=lastname
						log.info(lastname)
						pharmacyInstance.mobileNumber=mobileNumber
						log.info(mobileNumber)
						
						pharmacyInstance.alternateNumber=alternateNumber
						log.info(alternateNumber)
						
						pharmacyInstance.address=address
						log.info(address)
						pharmacyInstance.locality=locality
						log.info(locality)
						pharmacyInstance.city=city
						log.info(city)
						pharmacyInstance.pharmacyName=pharmacyName
						log.info(pharmacyName)
						pharmacyInstance.pin=pin
						log.info(pin)
						pharmacyInstance.email=email
						log.info(email)
						pharmacyInstance.password=password
						log.info(password)
						pharmacyInstance.modifiedBy=modifiedBy
						log.info(modifiedBy)
						
						pharmacyInstance.image=image
						log.info(image)
						
						pharmacyInstance.locUrl=locUrl
						log.info(locUrl)
						pharmacyInstance.createdDate=new Date()
						pharmacyInstance.modifiedDate=new Date()
						def sts= save(pharmacyInstance)
						log.info(sts.id)
						log.info(pharmacyInstance.save(failOnError: true))
						def f=Pharmacy.get(sts.id)
						log.info(f)
						f.pharmacyId=f.id
						def st=save(f)
						log.info(st)
						if(st){
						UserService.sendmail(email)
						}
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("pharmacyInstance",pharmacyInstance)
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
				log.info("PharmacyService save Exception::"+e)
			}
		}
						
		/*
		 * To update the data of Pharmacy
		 * update service for savePharmacy action in PharmacyController */
		def update(regId,packName,status,firstname,lastname,mobileNumber,address,locality,
					city,pharmacyName,pin,email,password,modifiedBy,locUrl){
				log.info("PharmacyService update")
				def resultData=new HashMap<>()
				String []args=["Pharmacy"]
				try{
					def pharmacyInstance=Pharmacy.findByRegIdAndEmail(regId,email)
					if(pharmacyInstance) {
					
					  pharmacyInstance.regId=regId
						log.info(regId)
						pharmacyInstance.packName=packName
						log.info(packName)
						pharmacyInstance.status=status
						log.info(status)
						pharmacyInstance.firstname=firstname
						log.info(firstname)
						pharmacyInstance.lastname=lastname
						log.info(lastname)
						pharmacyInstance.mobileNumber=mobileNumber
						log.info(mobileNumber)
						
						pharmacyInstance.address=address
						log.info(address)
						pharmacyInstance.locality=locality
						log.info(locality)
						pharmacyInstance.city=city
						log.info(city)
						pharmacyInstance.pharmacyName=pharmacyName
						log.info(pharmacyName)
						pharmacyInstance.pin=pin
						log.info(pin)
						pharmacyInstance.email=email
						log.info(email)
						pharmacyInstance.password=password
						log.info(password)
						pharmacyInstance.modifiedBy=modifiedBy
						log.info(modifiedBy)
						pharmacyInstance.locUrl=locUrl
						log.info(locUrl)
						def sts=save(pharmacyInstance)
						def f=Pharmacy.get(sts.id)
						f.pharmacyId=f.id
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
					log.info("PharmacyService update Exception")
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
		

