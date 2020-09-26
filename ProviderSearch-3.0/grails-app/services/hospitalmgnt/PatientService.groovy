package hospitalmgnt


import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional
class PatientService {
	
	static transactional=true
	def appointmentService
	def UserService

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("PatientService getInstance ")
			try{
				return new Patient()
			}
			catch(Exception e) {
				log.info("PatientService getInstance Exception::"+e)
			}
		}
		def save(Patient patientInstance) {
			log.info("patientService save-Object ")
			try{
				if(patientInstance == null) {
					return false
				}
				else{
					def e=patientInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("patientService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of Patient
		 * save service for savePatient action in PatientController */
		    def save(pFirstname,pLastname,status,pAge,pGender,mobileNumber,alternateMobile,address,pin,fee,email,reference,appointmentDate,appointmentTime,modifiedBy,reason,DocId){
			log.info("PatientService save-params ")
			def resultData=new HashMap<>()
			String []args=["Patient"]
			try{
			    def check=Patient.findByAppointmentTimeAndAppointmentDateAndReference(appointmentTime,appointmentDate,reference)
				if(!check){
					def patientInstance=getInstance()
					if(patientInstance){
						patientInstance.pFirstname=pFirstname
						log.info(pFirstname)
						patientInstance.patientId=""
						patientInstance.pLastname=pLastname
						log.info(pLastname)
						patientInstance.status=status
						log.info(status)
						patientInstance.pAge=pAge
						log.info(pAge)
						patientInstance.pGender=pGender
						log.info(pGender)
						patientInstance.mobileNumber=mobileNumber
						log.info(mobileNumber)
						patientInstance.alternateMobile=alternateMobile
						log.info(alternateMobile)
						patientInstance.address=address
						log.info(address)
						patientInstance.pin=pin
						log.info(pin)
						patientInstance.fee=fee
						log.info(fee)
						patientInstance.email=email
						log.info(email)
						patientInstance.reference=reference
						log.info(reference)
						patientInstance.reason=reason
						log.info(reason)
						patientInstance.appointmentDate=appointmentDate
						log.info(appointmentDate)
						patientInstance.appointmentTime=appointmentTime
						log.info(appointmentTime)
						patientInstance.modifiedBy=modifiedBy
						log.info(modifiedBy)
						patientInstance.createdDate=new Date()						
						patientInstance.modifiedDate=new Date()
						def d=patientInstance.createdDate
						log.info(d)
						def sts= save(patientInstance)
						log.info(sts)
						def f=Patient.get(sts.id)
						f.patientId="OP"+f.id
						def st=save(f)
					log.info("********************"+DocId);	
					appointmentService.save(Patient.findByCreatedDate(d).id,appointmentDate,appointmentTime,DocId,status,modifiedBy)
						
					SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
					Date strDate = sdf.parse(d);
					SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
					String cDate = sdf1.format(strDate);
					log.info(cDate)
					
						/*SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(patientInstance.createdDate);
						log.info(cDate)*/
						
					if(st){
					def doctorname=Doctor.get(reference).dFirstname
					UserService.sendpatientmail(email,doctorname,appointmentDate,appointmentTime)
					}
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("patientInstance",patientInstance)
							resultData.put("date",cDate)
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
						resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyex",args))
						
					   }
				return resultData
			}
			catch(Exception e) {
				log.info("PatientService save Exception::"+e)
			}
		}
			
			def savepatient(medicalName,medicalId,idProof,locality,password,mobileNumber,email,modifiedBy){
				log.info("PatientService save-params ")
				def resultData=new HashMap<>()
				String []args=["Patient"]
				try{
					def check=Patient.findByMedicalNameAndLocality(medicalName,locality)
					if(!check){
						def patientInstance=getInstance()
						if(patientInstance){
							patientInstance.medicalName=medicalName
							log.info(medicalName)
							patientInstance.medicalId=""
							patientInstance.locality=locality
							log.info(locality)
							
							patientInstance.password=password
							log.info(password)
							patientInstance.idProof=idProof
							log.info(idProof)
							
							patientInstance.mobileNumber=mobileNumber
							log.info(mobileNumber)
							
							patientInstance.email=email
							log.info(email)
							
							patientInstance.modifiedBy=modifiedBy
							log.info(modifiedBy)
							patientInstance.createdDate=new Date()
							patientInstance.modifiedDate=new Date()
							def d=patientInstance.createdDate
							log.info(d)
							def sts= save(patientInstance)
							log.info(sts)
							def f=Patient.get(sts.id)
							f.medicalId="OP"+f.id
							def st=save(f)
						/*log.info("********************"+DocId);
						appointmentService.save(Patient.findByCreatedDate(d).id,appointmentDate,appointmentTime,DocId,status,modifiedBy)*/
							
						/*SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
						Date strDate = sdf.parse(d);
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(strDate);
						log.info(cDate)*/
						
							/*SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
							String cDate = sdf1.format(patientInstance.createdDate);
							log.info(cDate)*/
							
						if(st){
						/*def doctorname=Doctor.get(reference).dFirstname
						UserService.sendpatientmail(email,doctorname,appointmentDate,appointmentTime)*/
						}
							
							if(st){
								resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
								resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
								resultData.put("patientInstance",patientInstance)
								resultData.put("date",cDate)
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
							resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyex",args))
							
						   }
					return resultData
				}
				catch(Exception e) {
					log.info("PatientService save Exception::"+e)
				}
			}
		
		/*
		 * To update the data of Patient
		 * update service for savePatient action in PatientController */
		def update(pFirstname,pLastname,status,pAge,pGender,mobileNumber,alternateMobile,address,pin,fee,email,reference,reason,appointmentDate,appointmentTime,modifiedBy,patientId){
				log.info("PatientService update")
				def resultData=new HashMap<>()
				String []args=["Patient"]
				try{
					def patientInstance=Patient.findByPatientId(patientId)
					
					if(patientInstance) {
						patientInstance.pFirstname=pFirstname
						patientInstance.pLastname=pLastname
						patientInstance.patientId=patientId
						patientInstance.status=status
						patientInstance.pAge=pAge
						patientInstance.pGender=pGender
						patientInstance.mobileNumber=mobileNumber
						patientInstance.alternateMobile=alternateMobile
						patientInstance.address=address
						patientInstance.pin=pin
						patientInstance.fee=fee
						patientInstance.email=email
						patientInstance.reference=reference
						patientInstance.reason=reason
						log.info(reason)
						patientInstance.appointmentDate=appointmentDate
						patientInstance.appointmentTime=appointmentTime
						patientInstance.modifiedBy=modifiedBy
						def sts=save(patientInstance)
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
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
					log.info("PatientService update Exception")
				}
			}
		
		/*
		 * To Delete the data of Patient
		 * Delete service for savePatient action in PatientController */
		def delete(id) {
			log.info("PatientService delete")
			def resultData=new HashMap<>()
			String []args=["Patient"]
			try{
				def patientInstance=Patient.get(id)
				if(patientInstance) {
					appointmentService.delete(id)
				//	log.info(patientInstance.delete(failOnError: true))
					patientInstance.delete flush:true
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
				log.info("PatientService delete Exception::"+e)
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
		
