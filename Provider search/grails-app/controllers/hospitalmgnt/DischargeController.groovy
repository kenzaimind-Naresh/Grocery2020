package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;

import grails.transaction.Transactional

@Transactional
class DischargeController {
	def DischargeService
	static transactional=true
	LoginController logincontroller=new LoginController()
		def index(){}
		
	/* Sending discharge data to display gsp page */
	def display(){
		render view:"/discharge/display.gsp", model:[discharge:Discharge.getAll()]
	}
	
	/* deleteDischarge  gsp page */
	def deleteDischarge(){}
	
	/* Sending TestData data to updateDischarge gsp page */
	def updateDischarge(){
		def TestData=TestData.findByPFirstname(params.id)
		[TestData:TestData]
	}
	
	/* Sending TestData data to createDischarge gsp page */
	def createDischarge()
	{
		def services=Services.getAll()
		def patient=Patient.getAll()
		def Discharge=Discharge.getAll()
		def Diag=DiagnosticTest.getAll()
		def username= User.findByUsername(session.user)
		def responseData = new HashMap<>();
		def patId=new ArrayList()
	
	for(int i=0;i<patient.size();i++){
			log.info(patient[i].patientId)
			patId.add(patient[i].patientId)			
		}
	    responseData.put("services",services)
		responseData.put("diag",Diag)
		responseData.put("pat1",patId)
		responseData.put("pat",patient)
		responseData.put("uname",username)
		responseData.put(getMessages('default.message.label'),"")
		[responseData:responseData]
		
	}
	
	/* To save the data of Discharge */
	@Transactional
	def saveDischarge() {
		log.info("Discharge Controller saveDischarge action")
		def responseData = new HashMap<>()
		def result,url
		url="/discharge/saveDischarge.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def patientId = params.patientId1
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname
		def serviceName=params.serviceName1+"#"+params.serviceName21+"#"+params.serviceName31+"#"+params.serviceName41+"#"+params.serviceName51
		def tax=params.tax
		def rate=params.rate+"#"+params.rate2+"#"+params.rate3+"#"+params.rate4+"#"+params.rate5
		def total = params.total
		def grandTotal=params.grandTotal
		def pMode=params.pMode
		def modifiedBy=params.modifiedBy
		def username= User.findByUsername(session.user)
		
		if( ! (isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname) && isValid(serviceName)&& isValid(tax)&& isValid(rate)&& isValid(total)
						&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return		
			}
			else {
				def res=DischargeService.save(patientId,pFirstname,pLastname,serviceName,tax,rate,total,grandTotal,pMode,modifiedBy)
				responseData.put("username", username.username)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				result=responseData
			}
		}
		
		/* To update the data of Discharge */
		if(myaction.equals("update")) {
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname) && isValid(serviceName)&& isValid(tax)&& isValid(rate)&& isValid(total)
						&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=DischargeService.update(patientId,pFirstname,pLastname,serviceName,tax,rate,total,grandTotal,pMode,modifiedBy)
			}
		}
		
		/* To delete the data of Discharge */
		if(myaction.equals("delete")) {
			result=TestDataService.delete(pFirstname)
		}
		
		renderPage(mode, url, result)
				
		}
		
	/* To check parameters are valid or not */
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
		}
		
	/* To get the messages */
		def getMessages(code) {
			return message(code : code)
		}
		
		def renderPage(mode,url,map){
			log.info("patient Controller renderPage Action")
			log.info(map.get("status"))
			log.info(url)
			log.info(mode)
			log.info(map)
			 if(mode == "web" && map.get("status")=="success"){
				 
				render view:url,model:[result:map]
			}
			 else{
				 render map as JSON
			 }
		}

	
	
	}

