package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
@Transactional
class ServicesController {
	def ServicesService
	static transactional=true
	LoginController logincontroller=new LoginController()

	def index() { }
	
	/* Sending services data to display gsp page */
	def display(){
		render view:"/services/display.gsp", model:[services:Services.getAll()]
	}
	
	/* deleteServices gsp page */
	def deleteServices(){}
	
	/* Sending Service and user data to updateServices gsp page */
	def updateServices(){
	def responseData = new HashMap<>()
		def Service=Services.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "addEditservices")
		responseData.put("services",Service)
		responseData.put("uname",user)
		
		[result:responseData]
	}
	
	/* Sending Services and user data to createServices gsp page */
	def createServices(){
		def responseData = new HashMap<>()
		def Service=Services.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "addEditservices")
		responseData.put("services",Service)
		responseData.put("uname",user)
		
		[result:responseData]
	
	}
	
	@Transactional
	def getdata() {
		log.info("services Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def serviceName=params.serviceName
		def split=serviceName.split("")
		def serviceInstance=Services.findByServiceName(params.serviceName)
		log.info(serviceInstance)
		def res=serviceInstance.rate
		render res
	}
	
	/* Sending user data to addEditservices gsp page */
	def addEditservices(){
			def user= User.findByUsername(session.user)
			
			def username= session.user
			if(username ==null || username=="" ){
			 redirect(uri: "/user/login1")
			 return
			}
			
			[user:user]
			}
	
	/* To save the data of Services */
	@Transactional
	def saveServices() {
		log.info("Services Controller saveServices action")
		def responseData = new HashMap<>()
		def result,url
		url="/services/saveServices.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def serviceName=params.serviceName
		def rate=params.rate
		def modifiedBy=params.modifiedBy
        def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		if( ! (isValid(serviceName) && isValid(rate)&& isValid(modifiedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
         redirect(uri: "/user/userDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(serviceName) && isValid(rate)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				
				
				def res=ServicesService.save(serviceName,rate,modifiedBy)
				
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(res.get("status") == "success"){
					responseData.put("uname", user)
					responseData.put("listId", "addEditservices")
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}else if(res.get("status") == "error"){
				responseData.put("uname", user)
				//url="/drugs/errordrugs.gsp"
				responseData.put(getMessages('default.message.label'),res.getAt("message"))
				//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
				//[responseData:responseData]
			}
		}
		
		/* To update the data of Services */
		if(myaction.equals("update")) {
			if( ! (isValid(serviceName) && isValid(rate)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				def res=ServicesService.update(serviceName,rate,modifiedBy)
				
				if(res.get("status") == "success"){
					responseData.put("uname", user)
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
			}
		}
		
		/* To delete the data of Services */
		if(myaction.equals("delete")) {
			result=ServicesService.delete(serviceName)
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

