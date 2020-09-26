package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;

import grails.transaction.Transactional

@Transactional
class InpatientController {
	def InpatientService
	static transactional=true
	LoginController logincontroller=new LoginController()
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
		def index(Integer max) {
			params.max = Math.min(max ?: 10, 100)
			respond Inpatient.list(params), model:[appointmentInstanceCount: Inpatient.count()]
		}
	
		def show(Inpatient InpatientInstance) {
			respond InpatientInstance
		}
	
		def create() {
			respond new Inpatient(params)
		}
		
	/* Sending user and inpatient data to display gsp page */
	def display(){
		def responseData = new HashMap<>();
        def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def inpatientdata=Inpatient.list(max: 5, offset: of)
		def totalcount=Inpatient.findAll().size()
		responseData.put("listId", "display")
		responseData.put("totalcount",totalcount )
		responseData.put("inpatient", inpatientdata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[responseData:responseData]
	}
	
	/*sending user data and inpatient data to offsetlist gsp page*/
	def offsetlist(){
		log.info("inpatientController offsetlist1 Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def inpatientdata=Inpatient.list(max: 5, offset: of)
		def totalcount=Inpatient.findAll().size()
		responseData.put("listId", "display")
		responseData.put("totalcount",totalcount )
		responseData.put("inpatient", inpatientdata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [responseData:responseData]
		}
	
	
	/* deleteinpatient gsp page */
	def deleteinpatient(){}
	
	/* Sending Inpatient and User data to updateinpatient gsp page */
	def updateinpatient(){
		def responseData = new HashMap<>();
		def inpatient=Inpatient.findByPFirstname(params.id)
		def user= User.findByUsername(session.user)		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "display")
		responseData.put("inpatient",inpatient)
		responseData.put("user",user)
		[responseData:responseData]
	}
	
	/* Sending Inpatient and User data to updateinpatient1 gsp page */
	def updateinpatient1(){
		log.info("Inpatient Controller updateinpatient1")
		def responseData = new HashMap<>();
		def inpatient=Inpatient.findByPFirstname(params.id)
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "patientDetails")
		responseData.put("PInstance","0")
		responseData.put("inpatient",inpatient)
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	
	
	def updateinpat(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		responseData.put("username",user)
		[responseData:responseData]
	}
	
	/* Sending Patient, Doctor and User data to updateinpatient1 gsp page */
	def createinpatient(){
		log.info("inPatient Controller createinpatient action ********")
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def doctor=Doctor.getAll()
		def pat=Patient.getAll()
		
		def patient=Patient.findAllByStatus("1");
		//responseData.put("pat",patient)
		responseData.put("listId", "createinpatient")
		responseData.put("pat",pat)
		responseData.put("doc", doctor)
		responseData.put("uname", user)
		log.info(responseData)
		[result:responseData]
		
	}
	
	/*@Transactional
	def getdata() {
		log.info("Inpatient Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def patientId=params.patientId
		def split=patientId.split(" ")
		def patientInstance=Inpatient.findByPatientId(params.patientId)
		log.info(patientInstance)
		def res=patientInstance.pFirstname+"#"+patientInstance.pLastname
		render res
	}*/
	@Transactional
	def getdata() {
		log.info("patient Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def patientId=params.patientId
		def patientInstance
		def doctorInstance
		String s=patientId.charAt(0)
		log.info(s)
		if(s=="O")
		{
		//def split=patientId.split(" ")
		patientInstance=Patient.findByPatientId(params.patientId)
		}
		if(s=="I")
		{
		//def split=patientId.split(" ")
		patientInstance=Inpatient.findByPatientId(params.patientId)
		}
		//doctorInstance=Doctor.findByDoctorId(patientInstance.reference)
		log.info(doctorInstance)
		log.info("**************")
		log.info(patientInstance)
		def res=patientInstance.pFirstname+"#"+patientInstance.pLastname
		render res
		
		
	}
	
	/* To save the data of Inpatient */
	@Transactional
	def saveinpatient() {
		log.info("inpatient Controller saveinpatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/inpatient/saveinpatient.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def patientId=params.patientId
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname 
		def address=params.address
		def nominee=params.nominee
		def mobileNumber = params.mobileNumber
		def alternateMobile=params.alternateMobile
		def email=params.email		
		def reference = params.reference	
		def modifiedBy=params.modifiedBy
		def serviceType=params.serviceType
		def uname= User.findByUsername(session.user)
		log.info(mode)
		log.info(myaction)
		log.info(patientId)
		log.info(pFirstname)
		log.info(pLastname )
		log.info(address)
		log.info(nominee)
		log.info(mobileNumber)
		log.info(alternateMobile)
		log.info(email)
		log.info(reference)
		log.info(modifiedBy)
		log.info(serviceType)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def roomNo;
		def room1;
		def room2;
		
		if(serviceType == "SemiPrivate")
		{
			roomNo=params.roomNo
		}
		else if(serviceType == "Special")
		{
		    roomNo=params.room1
		}
	    else if(serviceType == "Delux")
		{
		    roomNo=params.room2
        }
		log.info(roomNo)
		
		
		if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname) && isValid(address) && isValid(nominee)&& isValid(mobileNumber)
						&& isValid(alternateMobile)&& isValid(email)&& isValid(reference)&& isValid(modifiedBy)&& isValid(serviceType)&& isValid(roomNo) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
           redirect(uri: "/user/userDashboard")
			return
		}

		if(myaction.equals("save")) {
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname) && isValid(address) && isValid(nominee)&& isValid(mobileNumber)
						&& isValid(alternateMobile)&& isValid(email)&& isValid(reference)&& isValid(modifiedBy)&& isValid(serviceType)&& isValid(roomNo))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				logincontroller.renderPage(mode, url, responseData)
				return			
			}
			else {
				def res=InpatientService.save(patientId,pFirstname,pLastname,address,nominee,mobileNumber,alternateMobile,email,reference,modifiedBy,serviceType,roomNo)
				responseData.put("PInstance", res.getAt("InpatientInstance"))
				responseData.put("Date", res.getAt("date"))
				responseData.put("uname", uname)
				responseData.put("listId", "createinpatient")
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(res.get("status") == "success"){
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
			}
		}
		
		/* To update the data of Drugs */
		if(myaction.equals("update")) {
			
			
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname)&& isValid(address) && isValid(nominee)&& isValid(mobileNumber)&& isValid(alternateMobile)&& isValid(email)&& isValid(reference)&& isValid(modifiedBy)&& isValid(serviceType)&& isValid(roomNo))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
		
				def res=InpatientService.update(patientId,pFirstname,pLastname,address,nominee,mobileNumber,alternateMobile,email,reference,modifiedBy,serviceType,roomNo)

				responseData.put("uname", uname)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				log.info(responseData)
				if(res.get("status") == "success"){
					responseData.put("uname", uname)
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
					responseData.put("PInstance", "0")
					log.info(responseData)
				}
				result=responseData
			}
		}
		
		/* To delete the data of Drugs */
		if(myaction.equals("delete")) {
			result=InpatientService.delete(pFirstname)
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


