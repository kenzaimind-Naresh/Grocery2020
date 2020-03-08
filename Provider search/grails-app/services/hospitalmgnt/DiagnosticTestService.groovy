package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class DiagnosticTestService {

   static transactional=true

    def serviceMethod() {

    }
	def grailsApplication
	
		def getInstance() {
			log.info("DiagnosticTestService getInstance ")
			try{
				return new DiagnosticTest()
			}
			catch(Exception e) {
				log.info("DiagnosticTestService getInstance Exception::"+e)
			}
		}
		def save(DiagnosticTest DiagnosticTestInstance) {
			log.info("DiagnosticTestService save-Object ")
			try{
				if(DiagnosticTestInstance == null) {
					return false
				}
				else{
					def e=DiagnosticTestInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("DiagnosticTestService save-Object Exception::"+e)
			}
		}
		
		/* 
		 * To save the data of DiagnosticTest
		 * save service for saveDiagnosticTest action in DiagnosticTestController */
		def save(icdCode,testName,rate,modifiedBy){
			log.info("DiagnosticTestService save-params ")
			def resultData=new HashMap<>()
			String []args=["DiagnosticTest"]
			try{
			
				def check/*=DiagnosticTest.findByTestName(testName)*/
				if(!check){
					def DiagnosticTestInstance=getInstance()
					if(DiagnosticTestInstance){
					
						DiagnosticTestInstance.icdCode=icdCode
						DiagnosticTestInstance.testName=testName
						DiagnosticTestInstance.rate=rate
						DiagnosticTestInstance.modifiedBy=modifiedBy
						log.info(""+testName)
						log.info(""+rate)
						log.info(""+modifiedBy)
						DiagnosticTestInstance.createdDate=new Date()
						DiagnosticTestInstance.modifiedDate=new Date()
						def sts= save(DiagnosticTestInstance)						
						log.info(""+sts)
						def f=DiagnosticTest.get(sts.id)
						f.testId=f.id
						def st=save(f)
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
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
					
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.object.alreexist",args))
					   }
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("DiagnosticTestService save Exception::"+e)
			}
		}
		
		/* 
		 * To update the data of DiagnosticTest
		 * update service for saveDiagnosticTest action in DiagnosticTestController */
		def update(icdCode,testName,rate,modifiedBy){
				log.info("DiagnosticTestService update")
				def resultData=new HashMap<>()
				String []args=["DiagnosticTest"]
				try{
					def DiagnosticTestInstance=DiagnosticTest.findByTestName(testName)
					if(DiagnosticTestInstance) {
						DiagnosticTestInstance.icdCode=icdCode
						DiagnosticTestInstance.testName=testName
						DiagnosticTestInstance.rate=rate
						DiagnosticTestInstance.modifiedBy=modifiedBy
						
						def sts=save(DiagnosticTestInstance)
						def f=DiagnosticTest.get(sts.id)
						f.testId=f.id
						def st=save(f)
						if(st){
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
					log.info("DiagnosticTestService update Exception")
				}
			}
		
		/*
		 * To delete the data of DiagnosticTest
		 * Delete service for saveDiagnosticTest action in DiagnosticTestController */
		def delete(testName) {
			log.info("DiagnosticTestService delete")
			def resultData=new HashMap<>()
			String []args=["DiagnosticTest"]
			try{
				def DiagnosticTestInstance=DiagnosticTest.findByTestName(testName)
				if(DiagnosticTestInstance) {
					DiagnosticTestInstance.delete flush:true
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
				log.info("DiagnosticTestService delete Exception::"+e)
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

