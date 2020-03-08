package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import java.text.DateFormat
import java.text.SimpleDateFormat;
import grails.transaction.Transactional
@Transactional
class AppointmentController {
	def appointmentService
	static transactional=true
	LoginController logincontroller=new LoginController()

    def index() { }
	
	/* Sending Appointment data to display gsp page */
	def display(){
		render view:"/appointment/display.gsp", model:[appointment:Appointment.getAll()]
	}
	
	/* deleteappointment  gsp page */
	def deleteappointment(){}
	
	/* Sending appointment data to updateappointment gsp page */
	def updateappointment(){
		def appointment=Appointment.findByPatientId(params.id)
		[appointment:appointment]
	}
	
	/* createappointment  gsp page */
	def createappointment(){
		log.info("Appointment Controller createappointment action")
		def responseData = new HashMap<>()
		def result,url
		url="/appointment/createappointment.gsp"
		def mode=params.mode
		def doctorId = params.id
		log.info(doctorId)
		def dData = Doctor.findByDoctorId(doctorId)
		log.info(dData)
		responseData.put("dData", dData)
		[appointment:responseData]
	}
	def getdata(){
		log.info("Appointment Controller getdata action")
		def date = params.date
		log.info(date)
		def doctorId = params.doctorId
		log.info(doctorId)
		def res=date+"#"+doctorId
		render res
	}
	def slotsearch(){
		log.info("Appointment Controller slotsearch action")
		def responseData = new HashMap<>()
		def result,url
		def mode= params.mode
		url="/appointment/slotsearch.gsp"
		def date=params.date
		log.info(date)
		def doctorId = params.doctorId
		log.info(doctorId)
		def dData = Doctor.findByDoctorId(doctorId)
		log.info(dData)
		def data=DoctorSchedule.findByDate(date)
		log.info(data)
		def ddata = DoctorSchedule.findByDoctorIdAndDate(doctorId,date)
		log.info(ddata)
		if(date == null){
			redirect (uri:"/user/providerSearch")
			return
		}
		def slot=Patient.findAllByReferenceAndAppointmentDate(doctorId,date).appointmentTime
		log.info(slot)
		
		if(ddata != null){
		def res = DoctorSchedule.findByDoctorIdAndDate(doctorId,date).slots
		log.info(res)
		def split = res.split(",")
		def splitsize =split.size()
		log.info(splitsize)
		def dsData=new ArrayList()
		def pData=new ArrayList()
		for(int i=0;i<splitsize;i++){
			dsData.add(split[i])
		}
		log.info(dsData)
		
		dsData.removeAll(slot)
		log.info(dsData)
		responseData.put("data", ddata)
		responseData.put("dData", dData)
		responseData.put("date", date)
		responseData.put("dsData", dsData)
		}else{
		responseData.put("message", "Not Found")
		responseData.put("data", ddata)
		responseData.put("dData", dData)
		responseData.put("date", date)
		}
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[appointment:responseData]
	}
	
	/* To save the appointment data of patient*/
	@Transactional
	def saveappointment() {
		log.info("Appointment Controller saveappointment action")
		def responseData = new HashMap<>()
		def result,url
		url="/appointment/saveappointment.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def patientId=params.patientId
		def appointmentDate=params.appointmentDate
		def appointmentTime
		if(mode.equals("mobile")){
			appointmentTime=params.appointmentTime
		}
		else{
		appointmentTime=params.suninTimings
		}
		def doctorId=params.doctorId
		def status=params.status
		def modifiedBy=params.modifiedBy
		
		if( ! (isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}
		/* To save the appointment data of patient*/
		if(myaction.equals("save")) {
			if( ! (isValid(patientId) && isValid(appointmentDate)&& isValid(appointmentTime) && isValid(doctorId) && isValid(status) && isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				
				result=appointmentService.save(patientId,appointmentDate,appointmentTime,doctorId,status,modifiedBy)
				responseData.put("AppInstance", result.getAt("appointmentInstance"))
				
			}
		}
		/* To update the appointment data of patient*/
		if(myaction.equals("update")) {
			if( ! (isValid(patientId) && isValid(appointmentDate)&& isValid(appointmentTime) && isValid(doctorId) && isValid(status) && isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=appointmentService.update(patientId,appointmentDate,appointmentTime,doctorId,status,modifiedBy)
			}
		}
		/* To delete the appointment data of patient*/
		/*if(myaction.equals("delete")) {
			result=appointmentService.delete(patientId)
		}*/
		
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

