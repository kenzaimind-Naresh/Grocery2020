package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;

import grails.transaction.Transactional

@Transactional
class PatientController {
	def patientService
	def appointmentService
	static transactional=true
	LoginController logincontroller=new LoginController()
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
		def index(Integer max) {
			params.max = Math.min(max ?: 10, 100)
			respond Patient.list(params), model:[appointmentInstanceCount: Patient.count()]
		}
	
		def show(Patient patientInstance) {
			respond patientInstance
		}
	
		def create() {
			respond new Patient(params)
		}
		
		/* Sending patient data to display gsp page */
	def display(){
		render view:"/patient/display.gsp", model:[patient:Patient.getAll()]
	}	
	def deletePatient(){
		def result,res
		def id = params.id
		log.info(id)
		def responseData = new HashMap<>();
		result=patientService.delete(id)
			def url="/patient/deletePatient"
			responseData.put(getMessages('default.message.label'),"Your Appointment Cancelled ")
		[result:responseData]
	}
	
	
	/* Sending user and outpatient data to display gsp page */
	def outpatientlist(){
	 def responseData = new HashMap<>();
	 def user= User.findByUsername(session.user)
	 def username= session.user
	 if(username ==null || username=="" ){
	  redirect(uri: "/user/login1")
	  return
	 }
	 
	 def mode="web"
	 def of=0;
	 def outpatientdata=Patient.list(max: 5, offset: of)
	 def totalcount=Patient.findAll().size()
	 responseData.put("listId", "outpatientlist")
	 responseData.put("totalcount",totalcount )
	 responseData.put("outpatient", outpatientdata)
	 responseData.put("user", user)
	 responseData.put("offset", of)
	 [responseData:responseData]
	}
	
	/*sending user data and outpatient data to offsetlist gsp page*/
	def offsetlist(){
	 log.info("patientController offsetlist1 Action")
	 def mode="web"
	 def user= User.findByUsername(session.user)
	 def username= session.user
	 if(username ==null || username=="" ){
	  redirect(uri: "/user/login1")
	  return
	 }
	 
	 def of=params.offset;
	 def responseData = new HashMap<>()
	 def outpatientdata=Patient.list(max: 5, offset: of)
	 def totalcount=Patient.findAll().size()
	 responseData.put("listId", "outpatientlist")
	 responseData.put("totalcount",totalcount )
	 responseData.put("outpatient", outpatientdata)
	 responseData.put("user", user)
	 responseData.put("offset", Integer.parseInt(of))
	   [responseData:responseData]
	 }
	
	/* Sending outpatient and User data to updatepatient1 gsp page */
	def updatepatient1(){
	 def mode="web"
	 def responseData = new HashMap<>();
	 def pFirst=Patient.findByPFirstname(params.id)
	 def user= User.findByUsername(session.user)
	 def username= session.user
	 if(username ==null || username=="" ){
	  redirect(uri: "/user/login1")
	  return
	 }
	 responseData.put("listId", "display")
	 responseData.put("pFirst",pFirst)
	 responseData.put("user",user)
	 [responseData:responseData]
	}
	
	/* Sending user and patient data to updatepatient gsp page */
	def updatepatient(){
		log.info("Patient Controller updatepatient action ********")
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		def pFirst=Patient.findByPFirstname(params.id)
		responseData.put("listId", "patientDetails")
		responseData.put("PInstance","0")
		responseData.put("pFirst",pFirst)
		responseData.put("uname",user)
		[result:responseData]
	}
	
	def updatepat()
	{
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		responseData.put("uname",user)
		[responseData:responseData]
	}
	
	def patientlogin(){
		
	}
	
	def createpatient1(){
		def responseData = new HashMap<>()
		responseData.put("listId", "createpatient1")
		[responseData:responseData]
	}
	/* Sending user and Doctor data to createpatient gsp page */
	def createpatient(){
		log.info("Patient Controller createpatient action ********")
       
		def d=Doctor.get(params.docid)
		log.info(d)
		def responseData = new HashMap<>();
		responseData.put("listId", "slots")
		responseData.put("date",params.date)
		responseData.put("time",params.time)
		responseData.put("DocId",params.docid)
		responseData.put("Dname",d)
		[result:responseData]
		
	}
	
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
		doctorInstance=Doctor.findByDoctorId(patientInstance.reference)
		log.info(doctorInstance)
		log.info("**************")
		log.info(patientInstance)
		def res=patientInstance.pFirstname+"#"+patientInstance.pLastname+"#"+patientInstance.address+"#"+patientInstance.mobileNumber+"#"+patientInstance.alternateMobile+"#"+patientInstance.email+"#"+doctorInstance.dFirstname + doctorInstance.dLastname
		render res
		
		
	}
	
	/* To save the data of Patient */
	@Transactional
	def savepatient() {
		log.info("patient Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/patient/savepatient.gsp"
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def pFirstname=params.pFirstname
		log.info(pFirstname)
		def pLastname=params.pLastname
		log.info(pLastname)
		def status=params.status
		log.info(status)
		def pAge=params.pAge
		log.info(pAge)
		def pGender=params.pGender
		log.info(pGender)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		def alternateMobile=params.alternateMobile
		log.info(alternateMobile)
		def address=params.address
		log.info(address)
		def pin=params.pin
		log.info(pin)
		def fee=params.fee
		log.info(fee)
		def email=params.email
		log.info(email)
		def reference = params.reference
		log.info(reference)
		def reason = params.reason
		log.info(reason)
		def DocId=params.DocId
		log.info(DocId)
		def dName=params.dName
		log.info(dName)
		def appointmentDate=params.appointmentDate
		log.info(appointmentDate)
		def appointmentTime=params.appointmentTime
		log.info(appointmentTime)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		
		if( ! (isValid(pFirstname)&& isValid(pLastname) && isValid(status) && isValid(pAge)&& isValid(pGender)&& isValid(mobileNumber)
						&& isValid(alternateMobile)&& isValid(address)&& isValid(pin)&& isValid(fee)&& isValid(email)&& isValid(reference)&& isValid(appointmentDate)&& isValid(appointmentTime)
						&& isValid(modifiedBy) && isValid(reason) && isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			redirect(uri: "/user/providerSearch")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(pFirstname)&& isValid(pLastname) && isValid(status) && isValid(pAge)&& isValid(pGender)&& isValid(mobileNumber)
						&& isValid(alternateMobile)&& isValid(address)&& isValid(pin)&& isValid(fee)&& isValid(email)&& isValid(reference)&& isValid(appointmentDate)&& isValid(appointmentTime)
						&& isValid(modifiedBy) && isValid(reason) && isValid(mode))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res=patientService.save(pFirstname,pLastname,status,pAge,pGender,mobileNumber,alternateMobile,address,
					pin,fee,email,reference,appointmentDate,appointmentTime,modifiedBy,reason,DocId)	
				responseData.put("PInstance", res.getAt("patientInstance"))
				//responseData.put("AppInstance", res.getAt("appointmentInstance"))
				responseData.put("slot",appointmentTime )
				responseData.put("dName",dName )
				responseData.put("Date", appointmentDate)
				log.info("***********")
				
				log.info(res)
				log.info(mode)
				
				//responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(res.get("status") == "success"){
					responseData.put("message", "Your Appointment is booked")
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
					//resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
				}
				
				else{
					responseData.put("message", "You Appointment is Already Booked")
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				
			}
			if(mode=="mobile"){
					render responseData as JSON
					return
				}
				[result:responseData]
		}
	}
		
		/* To update the data of Patient */
		/*if(myaction.equals("update")) {
			if( ! (isValid(pFirstname)&& isValid(pLastname)&& isValid(status) && isValid(pAge)&& isValid(pGender)&&
				 isValid(mobileNumber)&& isValid(alternateMobile)&& isValid(address)&& isValid(pin)&& isValid(fee)&&
				  isValid(email)&& isValid(reference)&& isValid(appointmentDate)&& isValid(appointmentTime)&&
				   isValid(modifiedBy)&& isValid(reason))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				def patientId=params.patientId
				def res=patientService.update(pFirstname,pLastname,status,pAge,pGender,mobileNumber,alternateMobile,
					address,pin,fee,email,reference,appointmentDate,appointmentTime,modifiedBy,reason,patientId)
				responseData.put("username", user.username)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))	
				if(res.get("status") == "success"){
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
					responseData.put("PInstance", "0")
				}
				result=responseData
			}
		}
		
		 To delete the data of Patient 
		if(myaction.equals("delete")) {
			result=patientService.delete(id)
		}
		renderPage(mode, url, result)
				
		}*/
	
	def savepatient1() {
		log.info("patient Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/patient/savepatient.gsp"
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def medicalName=params.medicalName
		log.info(medicalName)
		def medicalId=params.medicalId
		log.info(medicalId)
		def idProof=params.idProof
		log.info(idProof)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		
		def locality=params.locality
		log.info(locality)
		
		def email=params.email
		log.info(email)
		def password = params.password
		log.info(password)
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		
		if( ! (isValid(medicalName)&& isValid(medicalId) && isValid(idProof) && isValid(locality)&& isValid(password)&& isValid(mobileNumber)
						&& isValid(email) && isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			redirect(uri: "/user/providerSearch")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(medicalName)&& isValid(medicalId) && isValid(idProof) && isValid(locality)&& isValid(password)&& isValid(mobileNumber)
						&& isValid(email)&& isValid(modifiedBy) && isValid(mode))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res=patientService.savepatient(medicalName,medicalId,idProof,locality,password,mobileNumber,email,modifiedBy)
				responseData.put("PInstance", res.getAt("patientInstance"))
				//responseData.put("AppInstance", res.getAt("appointmentInstance"))
				/*responseData.put("slot",appointmentTime )
				responseData.put("dName",dName )
				responseData.put("Date", appointmentDate)*/
				log.info("***********")
				
				log.info(res)
				log.info(mode)
				
				//responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(res.get("status") == "success"){
					responseData.put("message", "Your Appointment is booked")
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
					//resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
				}
				
				else{
					responseData.put("message", "You Appointment is Already Booked")
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				
			}
			if(mode=="mobile"){
					render responseData as JSON
					return
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
			 if(mode == "web"){
				 
				render view:url,model:[result:map]
			}
			 else{
				 render map as JSON
			 }
		}

	
	
	}

