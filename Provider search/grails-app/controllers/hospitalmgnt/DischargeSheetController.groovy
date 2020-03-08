package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
@Transactional
class DischargeSheetController {
	def DischargeSheetService
	static transactional=true
	LoginController logincontroller=new LoginController()

	/* Sending dischargeSheet data to display gsp page */
	def display(){
		render view:"/dischargeSheet/display.gsp", model:[dischargeSheet:DischargeSheet.getAll()]
	}
	
	/* deleteDischarge  gsp page */
	def deleteDischargeSheet(){}
	
	/* Sending DischargeSheet and User data to updateDischargeSheet gsp page */
	def updateDischargeSheet(){
	def responseData = new HashMap<>()
		def dischargeSheet=DischargeSheet.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("DischargeSheet",dischargeSheet)
		responseData.put("user",user)
		[responseData:responseData]
	}
	
	/* Sending DischargeSheet, inpatient, services and User data to createDischargeSheet gsp page */
	def createDischargeSheet(){
		def responseData = new HashMap<>()
		def dischargeSheet=DischargeSheet.getAll()
		def pat=Inpatient.getAll()
		def services=Services.getAll()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "Bill")
		responseData.put("services",services)
		responseData.put("DischargeSheet",dischargeSheet)
		responseData.put("uname",user)
		responseData.put("pat",pat)
		
		[result:responseData]
	
	}
	
	@Transactional
	def getdata() {
		log.info("DischargeSheet Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def serviceName=params.serviceName
		def split=serviceName.split(" ")
		def serviceInstance=DischargeSheet.findByServiceName(params.serviceName)
		log.info(serviceInstance)
		def res=serviceInstance.rate
		render res
	}
	
	/* Sending User data to addEditDischargeSheet gsp page */
	def addEditDischargeSheet(){
			def user= User.findByUsername(session.user)
			def username= session.user
			if(username ==null || username=="" ){
			 redirect(uri: "/user/login1")
			 return
			}
			
			[user:user]
			}
	
	/* To save the data of DischargeSheet */
	@Transactional
	def saveDischargeSheet() {
		log.info("DischargeSheet Controller saveDischargeSheet action")
		def responseData = new HashMap<>()
		def result,url
		url="/dischargeSheet/saveDischargeSheet.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def patientId=params.patientId
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname
		def date=params.date+","+params.date2+","+params.date3+","+params.date4+","+params.date5
		def serviceName=params.serviceName+","+params.serviceName2+","+params.serviceName3+","+params.serviceName4+","+params.serviceName5
		def quantity=params.quantity+","+params.quantity2+","+params.quantity3+","+params.quantity4+","+params.quantity5
		def rate=params.rate+","+params.rate2+","+params.rate3+","+params.rate4+","+params.rate5
		def total=params.total+","+params.total2+","+params.total3+","+params.total4+","+params.total5
		def modifiedBy=params.modifiedBy
		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		if( ! (isValid(patientId) && isValid(pFirstname) && isValid(pLastname) && isValid(date) && isValid(serviceName)&& isValid(quantity) && isValid(rate)&& isValid(total)&& isValid(modifiedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
        redirect(uri: "/user/userDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(patientId) && isValid(pFirstname) && isValid(pLastname) && isValid(date) && isValid(serviceName)&& isValid(quantity) && isValid(rate)&& isValid(total)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res1
				
				
				res1=DischargeSheetService.save(patientId,pFirstname,pLastname,date,serviceName,quantity,rate,total,modifiedBy)
				responseData.put("DsInstance1", res1.getAt("DischargeSheetInstance"))
				/*responseData.put("DsInstance2", null)
				responseData.put("DsInstance3", null)
				responseData.put("DsInstance4", null)
				responseData.put("DsInstance5", null)
				
				if(serviceName2!="" && quantity2!="" && rate2!="" && total2!=""){
				res2=DischargeSheetService.save(patientId,pFirstname,pLastname,date2,serviceName2,quantity2,rate2,total2,modifiedBy)
				responseData.put("DsInstance2", res2.getAt("DischargeSheetInstance"))
				}
				
				if(serviceName3!="" && quantity3!="" && rate3!="" && total3!=""){
				res3=DischargeSheetService.save(patientId,pFirstname,pLastname,date3,serviceName3,quantity3,rate3,total3,modifiedBy)
				responseData.put("DsInstance3", res3.getAt("DischargeSheetInstance"))
				}
				if(serviceName4!="" && quantity4!="" && rate4!="" && total4!=""){
				res4=DischargeSheetService.save(patientId,pFirstname,pLastname,date4,serviceName4,quantity4,rate4,total4,modifiedBy)
				responseData.put("DsInstance4", res4.getAt("DischargeSheetInstance"))
				}
				if(serviceName5!="" && quantity5!="" && rate5!="" && total5!=""){
				res5=DischargeSheetService.save(patientId,pFirstname,pLastname,date5,serviceName5,quantity5,rate5,total5,modifiedBy)
				responseData.put("DsInstance5", res5.getAt("DischargeSheetInstance"))
				}*/
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				//responseData.put("DsInstance", res.getAt("DischargeSheetInstance"))
				responseData.put("Date", res1.getAt("date"))
				result=responseData
				[responseData:responseData]
			}
		}
		
		/* To update the data of DischargeSheet */
		if(myaction.equals("update")) {
			if( ! (isValid(patientId) && isValid(pFirstname) && isValid(pLastname) && isValid(date) && isValid(serviceName)&& isValid(quantity) && isValid(rate)&& isValid(total)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=DischargeSheetService.update(patientId,pFirstname,pLastname,date,serviceName,quantity,rate,total,modifiedBy)
			}
		}
		/* To delete the data of DischargeSheet */
		if(myaction.equals("delete")) {
			result=DischargeSheetService.delete(patientId)
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

