package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
@Transactional
class DiagnosticTestController {
	def DiagnosticTestService
	static transactional=true
	LoginController logincontroller=new LoginController()

    def index() { }
	
	/* Sending DiagnosticTest and user data  to display gsp page */
	def display(){
		def responseData = new HashMap<>()
		def DiagnosticTest=DiagnosticTest.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("diag",DiagnosticTest)
		responseData.put("user",user)
		render view:"/diagnosticTest/display.gsp", model:[responseData:responseData]
	}
	
	/* deleteDiagnosticTest  gsp page */
	def deleteDiagnosticTest(){}
	
	/* Sending DiagnosticTest and user data  to updateDiagnosticTest gsp page */
	def updateDiagnosticTest(){
		def responseData = new HashMap<>()
		def DiagTest=DiagnosticTest.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "addEditdiag")
		responseData.put("diag",DiagTest)
		responseData.put("uname",user)
		[result:responseData]
	}
	
	/* Sending createDiagnosticTest and user data  to createDiagnosticTest gsp page */
	def createDiagnosticTest(){
		def responseData = new HashMap<>()
		def DiagnosticTest=DiagnosticTest.getAll()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "addEditdiag")
		responseData.put("diag",DiagnosticTest)
		responseData.put("uname",user)
		[result:responseData]
	}
	@Transactional
	def getdata() {
		log.info("DiagnosticTest Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def icdCode=params.icdCode
		def split=icdCode.split("")
		def DiagnosticTestInstance=DiagnosticTest.findByIcdCode(params.icdCode)
		log.info(DiagnosticTestInstance)
		def res=DiagnosticTestInstance.testName+"#"+DiagnosticTestInstance.rate
		render res
	}
	
	/* Sending user data to addEditdiag gsp page */
	def addEditdiag ={
				def user= User.findByUsername(session.user)
				
				def username= session.user
				if(username ==null || username=="" ){
				 redirect(uri: "/user/login1")
				 return
				}
				
		
				[user:user]
			}
	
	/* To save the data of DiagnosticTest */
	@Transactional
	def saveDiagnosticTest() {
		log.info("DiagnosticTest Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/diagnosticTest/saveDiagnosticTest.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def icdCode=params.icdCode
		def testName=params.testName
		def rate=params.rate
		def modifiedBy=params.modifiedBy
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		if( ! (isValid(icdCode) && isValid(testName) && isValid(rate)&& isValid(modifiedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
	    redirect(uri: "/user/userDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(icdCode) && isValid(testName) && isValid(rate)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				log.info(""+icdCode)
				log.info(""+testName)
				log.info(""+rate)
				log.info(""+modifiedBy)
				def res=DiagnosticTestService.save(icdCode,testName,rate,modifiedBy)
				log.info(""+res)
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(res.get("status") == "success"){
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}else if(res.get("status") == "error"){
				//url="/drugs/errordrugs.gsp"
				responseData.put(getMessages('default.message.label'),res.getAt("message"))
				//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
				log.info(""+result)
			}
		}
		
		/* To update the data of DiagnosticTest */
		if(myaction.equals("update")) {
			if( ! (isValid(icdCode) && isValid(testName) && isValid(rate)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				def res=DiagnosticTestService.update(icdCode,testName,rate,modifiedBy)
				if(res.get("status") == "success"){
					responseData.put("uname", user)
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
			}
		}
		
		/* To delete the data of DiagnosticTest */
		if(myaction.equals("delete")) {
			result=DiagnosticTestService.delete(testName)
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

