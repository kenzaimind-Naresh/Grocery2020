package hospitalmgnt
import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional
class TestDataService {
	
	static transactional=true

	def serviceMethod() {

	}
	def grailsApplication
	
		def getInstance() {
			log.info("TestDataService getInstance ")
			try{
				return new TestData()
			}
			catch(Exception e) {
				log.info("TestDataService getInstance Exception::"+e)
			}
		}
		def save(TestData TestDataInstance) {
			log.info("patientService save-Object ")
			try{
				if(TestDataInstance == null) {
					return false
				}
				else{
					def e=TestDataInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("TestDataService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of TestData
		 * save service for saveTestData action in TestDataController */
		def save(patientId,pFirstname,pLastname,icdCode,testName,tax,rate,total,grandTotal,pMode,modifiedBy,date){
			log.info("TestDataService save-params ")
			def resultData=new HashMap<>()
			String []args=["TestData"]
			try{
			
				
					def TestDataInstance=getInstance()
						
					
					TestDataInstance.patientId=patientId
						TestDataInstance.pFirstname=pFirstname
						TestDataInstance.pLastname=pLastname
						TestDataInstance.icdCode=icdCode
						TestDataInstance.testName=testName
						TestDataInstance.tax=tax
						TestDataInstance.date=date
						TestDataInstance.rate=rate
						TestDataInstance.total=total
						TestDataInstance.grandTotal=grandTotal
						TestDataInstance.pMode=pMode
						TestDataInstance.modifiedBy=modifiedBy
						TestDataInstance.createdDate=new Date()
						TestDataInstance.modifiedDate=new Date()
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(TestDataInstance.createdDate);
						log.info(cDate)
						
						
						def sts= save(TestDataInstance)
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("TestDataInstance",TestDataInstance)
							resultData.put("date",cDate)
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("TestDataService save Exception::"+e)
			}
		}
		
		/*
		 * To update the data of TestData
		 * update service for saveTestData action in TestDataController */
		def update(patientId,pFirstname,pLastname,icdCode,testName,tax,rate,total,grandTotal,pMode,modifiedBy,date){
				log.info("TestDataService update")
				def resultData=new HashMap<>()
				String []args=["TestData"]
				try{
					def TestDataInstance=TestData.findByPFirstname(pFirstname)
					if(TestDataInstance) {
					
					TestDataInstance.patientId=patientId
						TestDataInstance.pFirstname=pFirstname
						TestDataInstance.pLastname=pLastname
						TestDataInstance.icdCode=icdCode
						TestDataInstance.date=date
						TestDataInstance.testName=testName
						TestDataInstance.tax=tax
						TestDataInstance.rate=rate
						TestDataInstance.total=total
						TestDataInstance.grandTotal=grandTotal
						TestDataInstance.pMode=pMode
						TestDataInstance.modifiedBy=modifiedBy
						def status=save(TestDataInstance)
						if(status){
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
		
		/*
		 * To Delete the data of TestData
		 * Delete service for saveTestData action in TestDataController */
		def delete(pFirstname) {
			log.info("TestDataService delete")
			def resultData=new HashMap<>()
			String []args=["TestData"]
			try{
				def TestDataInstance=TestData.findByPFirstname(pFirstname)
				if(TestDataInstance) {
					TestDataInstance.delete flush:true
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
				log.info("TestDataService delete Exception::"+e)
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
		

