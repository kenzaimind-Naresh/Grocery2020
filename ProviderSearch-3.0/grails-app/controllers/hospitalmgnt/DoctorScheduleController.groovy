package hospitalmgnt

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional;

class DoctorScheduleController {

     def index() { }
	def DoctorScheduleService
	static transactional=true
	LoginController logincontroller=new LoginController()
	
	
	def slotCreate(){
		log.info("doctorSchedule Controller slotCreate action")
		def responseData = new HashMap<>()
		def result,url
		url="/doctorschedule/slotCreate.gsp"
		log.info(url)
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/doctorLogin1")
			return
		   }
		def user= Doctor.findByEmail(username)
		log.info(user)
		responseData.put("uname",user)
		log.info("************")
		log.info(responseData)
		[result:responseData]
		
	}
	/* To save the data of DoctorSchedule */
	@Transactional
	def savedoctorschedule() {
		log.info("doctorSchedule Controller savedoctorschedule action")
		def responseData = new HashMap<>()
		def url
		def mode=params.mode
		log.info(mode)
		
		def doctorId = params.doctorId
		log.info(doctorId)
		def status="0"
		log.info(status)
		def date=params.date
		log.info(date)
		def slots=params.slots
		log.info(slots)
		
		if(mode=="mobile"){
			
			if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=DoctorScheduleService.save(doctorId,status,date,slots)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/doctor/getSlots.gsp"
					responseData.put("message", "Your Appointment are Scheduled Successfully")
					responseData.put(getMessages('default.status.label'),"200")
					responseData.put("uname",Doctor.findByDoctorId(doctorId).dFirstname)
					responseData.put("listId","appointmentSchedule")
				}else if(result.get("status") == "error"){
				responseData.put("message", "Already Existed")
				responseData.put(getMessages('default.status.label'),"500")
				responseData.put("uname",Doctor.findByDoctorId(doctorId).dFirstname)
				responseData.put("listId","appointmentSchedule")
					url="/doctor/getSlots.gsp"
				}
				render responseData as JSON
				return
			}
		}
			
		if(mode=="web"){
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/doctorLogin1")
			return
		   }
		def user= Doctor.findByEmail(username)
		log.info(user)
		
		if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots) && isValid(mode))){
					redirect(uri: "/user/doctorDashboard")
			return
		}
		
			if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=DoctorScheduleService.save(doctorId,status,date,slots)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/doctor/getSlots.gsp"
					responseData.put("message", "Your Appointment are Scheduled Successfully")
					responseData.put(getMessages('default.status.label'),"200")
					user= Doctor.findByEmail(session.user)
					responseData.put("uname",user)
					responseData.put("listId","appointmentSchedule")
				}else if(result.get("status") == "error"){
				responseData.put("message", "Already Existed")
				responseData.put(getMessages('default.status.label'),"500")
				user= Doctor.findByEmail(session.user)
				responseData.put("uname",user)
				responseData.put("listId","appointmentSchedule")
					url="/doctor/getSlots.gsp"
				}
				
				[result:responseData]
			}
		}
	}
		
	@Transactional
	def updatedoctorschedule() {
		log.info("doctorSchedule Controller updatedoctorschedule action")
		def responseData = new HashMap<>()
		def url
		def mode=params.mode
		log.info(mode)
		
		def doctorId = params.doctorId
		log.info(doctorId)
		def status="0"
		log.info(status)
		def date=params.date
		log.info(date)
		def slots=params.slts
		log.info(slots)
		
		if(mode=="mobile"){
			
			if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=DoctorScheduleService.update(doctorId,status,date,slots)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/doctorSchedule/updatedoctorschedule.gsp"
					responseData.put("message", "Your Appointment are Scheduled Successfully")
					responseData.put(getMessages('default.status.label'),"200")
					responseData.put("uname",Doctor.findByDoctorId(doctorId).dFirstname)
					responseData.put("listId","appointmentSchedule")
				}
				render responseData as JSON
				return
				}
			
		}
		
		if(mode == "web"){
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/doctorLogin1")
			return
		   }
		def user= Doctor.findByEmail(username)
		log.info(user)
		
		if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots) && isValid(mode))){
					redirect(uri: "/user/doctorDashboard")
			return
		}
		
			if( ! (isValid(doctorId)&& isValid(status) && isValid(date) && isValid(slots))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=DoctorScheduleService.update(doctorId,status,date,slots)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/doctorSchedule/updatedoctorschedule.gsp"
					responseData.put("message", "Your Appointment are Scheduled Successfully")
					responseData.put(getMessages('default.status.label'),"200")
					user= Doctor.findByEmail(session.user)
					responseData.put("uname",user)
					responseData.put("listId","appointmentSchedule")
				}
				[result:responseData]
			}
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
				log.info("doctorSchedule Controller renderPage Action")
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
