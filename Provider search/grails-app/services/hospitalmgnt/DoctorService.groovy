package hospitalmgnt

import grails.transaction.Transactional
import grails.converters.JSON;


@Transactional
class DoctorService {

    def serviceMethod() {

    }
	
	def dataSource_solr
	def grailsApplication
	def UserService
	
	
	
		def getInstance() {
			log.info("DoctorService getInstance ")
			try{
				return new Doctor()
			}
			catch(Exception e) {
				log.info("DoctorService getInstance Exception::"+e)
			}
		}
		def save(Doctor doctorInstance) {
			log.info("DoctorService save-Object ")
			try{
				if(doctorInstance == null) {
					return false
				}
				else{
					def e=doctorInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("DoctorService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Doctor
		 * save service for saveDoctor action in DoctorController */		
		def save(regId,mode,packName,status,dFirstname,dLastname,dAge,dGender,mobileNumber,alternateMobile,address,locality,
					city,clinicName,pin,email,password,speciality,experience,reference,modifiedBy,fee,locUrl,blood_flag,v_flag,
					qualifcation,lattitude,longitude,certifications,image,choice,expiredDate){
			log.info("DoctorService save-params ")
			def resultData=new HashMap<>()
			String []args=["Doctor"]
			log.info(dataSource_solr)
					try{
						def check=Doctor.findByEmailAndRegId(email,regId)
						
						
					if(!check){				
					def doctorInstance=getInstance()
					log.info(doctorInstance)
					if(doctorInstance){
					    doctorInstance.regId=regId
						log.info(regId)
						doctorInstance.packName=packName
						log.info(packName)
						doctorInstance.status=status
						log.info(status)
						doctorInstance.dFirstname=dFirstname
						log.info(dFirstname)
						doctorInstance.dLastname=dLastname
						log.info(dLastname)
						doctorInstance.dAge=dAge
						log.info(dAge)
						doctorInstance.dGender=dGender
						log.info(dGender)
						doctorInstance.mobileNumber=mobileNumber
						log.info(mobileNumber)
						
						doctorInstance.alternateMobile=alternateMobile
						log.info(alternateMobile)
						
						doctorInstance.address=address
						log.info(address)
						doctorInstance.locality=locality
						log.info(locality)
						doctorInstance.city=city
						log.info(city)
						doctorInstance.clinicName=clinicName
						log.info(clinicName)
						doctorInstance.pin=pin
						log.info(pin)
						doctorInstance.email=email
						log.info(email)
						doctorInstance.password=password
						log.info(password)
						doctorInstance.speciality=speciality
						log.info(speciality)
						doctorInstance.experience=experience
						log.info(experience)
						doctorInstance.reference=reference
						log.info(reference)
						doctorInstance.modifiedBy=modifiedBy
						log.info(modifiedBy)
						doctorInstance.fee=fee
						log.info(fee)
						doctorInstance.locUrl=locUrl
						log.info(locUrl)
						
						doctorInstance.blood_flag=blood_flag
						log.info(blood_flag)
						doctorInstance.v_flag=v_flag
						log.info(v_flag)
						doctorInstance.qualifcation=qualifcation
						log.info(qualifcation)
						doctorInstance.lattitude=lattitude
						log.info(lattitude)
						doctorInstance.longitude=longitude
						log.info(longitude)
						doctorInstance.certifications=certifications
						log.info(certifications)
						log.info("KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK")
						log.info(image==null)
						if (image!=null ){
							log.info("GGGGGGGGGGGGGG")
						log.info(image.getBytes())
						log.info(image)
						doctorInstance.image=image.getBytes()
						}
						doctorInstance.image=null
						doctorInstance.choice=choice
						log.info(choice)
						
						doctorInstance.expiredDate=expiredDate
						log.info(expiredDate)
						
						doctorInstance.createdDate=new Date()
						doctorInstance.modifiedDate=new Date()
						def sts= save(doctorInstance)
						log.info(sts)
						log.info(doctorInstance.save(failOnError: true))
						def f=Doctor.get(sts.id)
						log.info(f)
						f.doctorId=f.id
						def st=save(f)
						log.info(st)
						if(st && mode=="web"){
						UserService.sendmail(email)
						}
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("doctorInstance",doctorInstance)
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
				log.info("DoctorService save Exception::"+e)
			}
		}
		
		def passwordSave2(username,password){
			log.info("DoctorService passwordSave2 service ")
			def resultData=new HashMap<>()
			String []args=["Doctor"]
			try{
			 def doctorInstance=Doctor.findByEmail(username)
			  if(doctorInstance){
			   doctorInstance.password=password
			   log.info(password)
			   def sts2= save(doctorInstance)
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
			 log.info("DoctorService passwordsave2 Exception::"+e)
			}
			
		   }
		
		/*
		 * To update the data of Doctor
		 * update service for saveDoctor action in DoctorController */
		def update(regId,packName,status,dFirstname,dLastname,dAge,dGender,mobileNumber,address,locality,
					city,clinicName,pin,email,password,speciality,experience,reference,modifiedBy,fee,locUrl,blood_flag,v_flag,
					qualifcation,lattitude,longitude,certifications,image,choice){
			log.info("DoctorService update")
			def resultData=new HashMap<>()
			String []args=["Doctor"]
			try{
				def doctorInstance=Doctor.findByRegIdAndEmail(regId,email)
				if(doctorInstance) {
					doctorInstance.regId=regId
					doctorInstance.packName=packName
					log.info(packName)
					doctorInstance.status=status
					log.info(status)
					doctorInstance.dFirstname=dFirstname
					doctorInstance.dLastname=dLastname
					doctorInstance.dAge=dAge
					doctorInstance.dGender=dGender
					doctorInstance.mobileNumber=mobileNumber
					doctorInstance.address=address
					doctorInstance.pin=pin
					doctorInstance.locality=locality
					doctorInstance.city=city
					doctorInstance.clinicName=clinicName
					doctorInstance.email=email
					doctorInstance.password=password
					doctorInstance.speciality=speciality
					doctorInstance.experience=experience
					doctorInstance.reference=reference
					doctorInstance.modifiedBy=modifiedBy
					doctorInstance.fee=fee
					log.info(fee)
					doctorInstance.locUrl=locUrl
					
					doctorInstance.blood_flag=blood_flag
					log.info(blood_flag)
					doctorInstance.v_flag=v_flag
					log.info(v_flag)
					doctorInstance.qualifcation=qualifcation
					log.info(qualifcation)
					doctorInstance.lattitude=lattitude
					log.info(lattitude)
					doctorInstance.longitude=longitude
					log.info(longitude)
					doctorInstance.certifications=certifications
					log.info(certifications)
					doctorInstance.image=image
					log.info(image)
					doctorInstance.choice=choice
					log.info(choice)
					
					def sts=save(doctorInstance)
					def f=Doctor.get(sts.id)
					f.doctorId=f.id
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
				log.info("DoctorService update Exception")
			}
		}
	
		/*
		 * To Delete the data of Doctor
		 * Delete service for saveDoctor action in DoctorController */	
	def delete(dFirstname) {
		log.info("DoctorService delete")
		def resultData=new HashMap<>()
		String []args=["Doctor"]
		try{
			def doctorInstance=Doctor.findByDFirstname(dFirstname)
			if(doctorInstance) {
				doctorInstance.delete flush:true
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
			log.info("DoctorService delete Exception::"+e)
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
