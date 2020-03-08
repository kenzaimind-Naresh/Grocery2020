package hospitalmgnt

import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional
class DischargeSheetService {

   static transactional=true

	def serviceMethod() {

	}
	def grailsApplication
	
		def getInstance() {
			log.info("DischargeSheetService getInstance ")
			try{
				return new DischargeSheet()
			}
			catch(Exception e) {
				log.info("DischargeSheetService getInstance Exception::"+e)
			}
		}
		def save(DischargeSheet DischargeSheetInstance) {
			log.info("DischargeSheetService save-Object ")
			try{
				if(DischargeSheetInstance == null) {
					return false
				}
				else{
					def e=DischargeSheetInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("DischargeSheetService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of DischargeSheet
		 * save service for saveDischargeSheet action in DischargeSheetController */
		def save(patientId,pFirstname,pLastname,date,serviceName,quantity,rate,total,modifiedBy){
			log.info("DischargeSheetService save-params ")
			def resultData=new HashMap<>()
			String []args=["DischargeSheet"]
			try{
			
				
					def DischargeSheetInstance=getInstance()
						
					    DischargeSheetInstance.patientId=patientId
						DischargeSheetInstance.pFirstname=pFirstname
						DischargeSheetInstance.pLastname=pLastname
					    DischargeSheetInstance.date=date
						DischargeSheetInstance.serviceName=serviceName
						DischargeSheetInstance.quantity=quantity
						DischargeSheetInstance.rate=rate
						DischargeSheetInstance.total=total
						DischargeSheetInstance.modifiedBy=modifiedBy
						DischargeSheetInstance.createdDate=new Date()
						DischargeSheetInstance.modifiedDate=new Date()
						
						log.info(patientId)
						log.info(pFirstname)
						log.info(pLastname)
						log.info(date)
						log.info(serviceName)
						log.info(quantity)
						log.info(rate)
						log.info(total)
						log.info(modifiedBy)
						
						
						def sts= save(DischargeSheetInstance)
						def f=DischargeSheet.get(sts.id)
						f.sheetId=f.id
						def st=save(f)
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(DischargeSheetInstance.createdDate);
						log.info(cDate)
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("DischargeSheetInstance",DischargeSheetInstance)
							resultData.put("date",cDate)
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("DischargeSheetService save Exception::"+e)
			}
		}
			
		
		/*
		 * To update the data of DischargeSheet
		 * update service for saveDischargeSheet action in DischargeSheetController */		
		def update(patientId,pFirstname,pLastname,date,serviceName,quantity,rate,total,modifiedBy){
				log.info("DischargeSheetService update")
				def resultData=new HashMap<>()
				String []args=["DischargeSheet"]
				try{
					def DischargeSheetInstance=DischargeSheet.findByPatientId(patientId)
					if(DischargeSheetInstance) {
						
						DischargeSheetInstance.patientId=patientId
						DischargeSheetInstance.pFirstname=pFirstname
						DischargeSheetInstance.pLastname=pLastname
						DischargeSheetInstance.date=date
						DischargeSheetInstance.serviceName=serviceName
						DischargeSheetInstance.quantity=quantity
						DischargeSheetInstance.rate=rate
						DischargeSheetInstance.total=total
						DischargeSheetInstance.modifiedBy=modifiedBy
						
						def sts=save(DischargeSheetInstance)
						def f=DischargeSheet.get(sts.id)
						f.sheetId=f.id
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
					log.info("DischargeSheetService update Exception")
				}
			}
		
		/*
		 * To Delete the data of DischargeSheet
		 * Delete service for saveDischargeSheet action in DischargeSheetController */		
		def delete(patientId) {
			log.info("DischargeSheetService delete")
			def resultData=new HashMap<>()
			String []args=["DischargeSheet"]
			try{
				def DischargeSheetInstance=DischargeSheet.findByPatientId(patientId)
				if(DischargeSheetInstance) {
					DischargeSheetInstance.delete flush:true
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
				log.info("ServicesService delete Exception::"+e)
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

