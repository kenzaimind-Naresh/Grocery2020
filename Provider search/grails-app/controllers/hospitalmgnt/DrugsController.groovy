package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
@Transactional
class DrugsController {
	def drugsService
	static transactional=true
	LoginController logincontroller=new LoginController()

    def index() { }
	
	/* Sending drugs data to display gsp page */
	def display(){
		render view:"/drugs/display.gsp", model:[drugs:Drugs.getAll()]
	}
	
	/* deletedrugs gsp page */
	def deletedrugs(){}
	
	/* Sending drugs and user data to updatedrugs gsp page */
	def updatedrugs(){
	def responseData = new HashMap<>()
		def Drug=Drugs.getAll()		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "addEditdrug")
		responseData.put("drug",Drug)
		responseData.put("uname",user)
		
		[result:responseData]
	}
	
	/* Sending drugs and user data to createdrugs gsp page */
	def createdrugs(){
		def responseData = new HashMap<>()
		def mode=params.mode
		def Drug=Drugs.getAll()
		def user= User.findByUsername(session.user)
		def pharmacy=Pharmacy.findByPharmacyId(session.user)
		log.info(pharmacy)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("drug",Drug)
		responseData.put("uname",user)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]

	}
	
	/* Sending user data to addEditdrug gsp page */
	def addEditdrug ={

			def user= User.findByUsername(session.user)
			
			def username= session.user
			if(username ==null || username=="" ){
			 redirect(uri: "/user/login1")
			 return
			}
			[user:user]
			}
	
	@Transactional
	def getdata() {
		log.info("Drugs Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def drugName=params.drugName
		def split=drugName.split("")
		def drugsInstance=Drugs.findByDrugName(params.drugName)
		log.info(drugsInstance)
		def res=drugsInstance.rate
		render res
	}
	
	def errordrugs() {}
	/* To save the data of Drugs */
	@Transactional
	def savedrugs() {
		log.info("drugs Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/drugs/savedrugs.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def drugName=params.drugName
		def rate=params.rate
		def addedBy=params.addedBy
		
		if(mode == "mobile"){
			if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=drugsService.save(drugName,rate,addedBy)
		url="/doctor/saveupdate.gsp"
		responseData.put("uname",Pharmacy.findByPharamcyId(addedBy).firstname)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
	if(mode=="web")	{
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
         redirect(uri: "/user/pharmacyDashboard")
			return
		}
		
			if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
	
			}
			else {
				result=drugsService.save(drugName,rate,addedBy)
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(result.get("status") == "success"){
					//url="/drugs/savedrugs.gsp"
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
				}else if(result.get("status") == "error"){
				//url="/drugs/errordrugs.gsp"
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
			}
				[result:responseData]
		}
	}
	@Transactional
	def saveupdate() {
		log.info("drugs Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/drugs/saveupdate.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def drugName=params.drugName
		def rate=params.rate
		def addedBy=params.addedBy
		
		if(mode == "mobile"){
			if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=drugsService.update(drugName,rate,addedBy)
		url="/doctor/saveupdate.gsp"
		responseData.put("uname",Pharmacy.findByPharamcyId(addedBy).firstname)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
		if(mode=="web")	{
			def user= User.findByUsername(session.user)
			def username= session.user
			if(username ==null || username=="" ){
			 redirect(uri: "/user/login1")
			 return
			}
			if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
			 redirect(uri: "/user/pharmacyDashboard")
				return
			}
			if( ! (isValid(drugName) && isValid(rate)&& isValid(addedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=drugsService.update(drugName,rate,addedBy)
					responseData.put("uname", user)
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}
			[result:responseData]
		}
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

