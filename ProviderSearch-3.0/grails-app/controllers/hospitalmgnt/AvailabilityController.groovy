package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import grails.transaction.Transactional
@Transactional
class AvailabilityController {
	def availabilityService
	static transactional=true
	LoginController logincontroller=new LoginController()

    def index() { }
	
	/* Sending Availability data to display gsp page */
	def display(){
		
		render view:"/availability/display.gsp", model:[availability:Availability.getAll()]
	}
	
	/* To display the details of patient with appointment date and time */
	def slots(){
		log.info("availability slots***********"+ Doctor.getAll())
		def responseData =new HashMap<>();
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname
		def pAge=params.pAge
		def pGender=params.pGender
		def mobileNumber = params.mobileNumber
		def alternateMobile=params.alternateMobile
		def address=params.address
		def pin=params.pin
		def fee=params.fee
		def email=params.email
		def reference = params.reference
		def appointmentDate=params.appointmentDate
		def appointmentTime=params.appointmentTime
		def DoctorId="1"
		def app_date="12/1/2016" 
		def doctor=Doctor.getAll()
		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId","slots")
		responseData.put("doctor",doctor)
		responseData.put("uname",user)
		[result:responseData]
		
	}

	/* deleteavailability  gsp page */
	def deleteavailability(){}
	
	/* Sending availability data to updateavailability gsp page */
	def updateavailability(){
		def availability=Availability.findByDoctorId(params.id)
		[availability:availability]
	}
	
	/* Sending availability data to createavailability gsp page */
	def createavailability(){
		def responseData = new HashMap<>();
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
		[responseData:responseData]
	}
	
	/* To save the availability data */
	@Transactional
	def saveavailability() {
		log.info("patient Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		
		Availability a=new Availability()
		a.drugId="121"
		a.drugName="paracip"
		a.status="0"
		a.createdDate=new Date()
		a.modifiedDate=new Date()
		log.info("teste")
		a.pharmacy=Pharmacy.get("1001")
		log.info("before save")
		a.save(flush:true)
		
		def t=Pharmacy.get("1001")
		log.info(t)
		for(a2 in t.avaialbility){
			log.info("DDDDDDDDDDDDDDDDd")
			log.info(a2.drugName)
		}
		
		
		
		url="/availability/saveavailability.gsp"
		def mode=params.mode
		def myaction = params.myaction
		
		
		
		
		
		
				def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		
		if( ! (isValid(doctorId)&& isValid(date) && isValid(status)&& isValid(modifiedBy)&&isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
			redirect(uri: "/user/userDashboard")
			return
			
			
		}
		if(myaction.equals("save")) {
			if( ! (isValid(doctorId)&& isValid(date) && isValid(status)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				
				result=availabilityService.save(doctorId,date,status,modifiedBy)
			
			}
		}
		/* To update the availability data */
		if(myaction.equals("update")) {
			if( ! (isValid(doctorId)&& isValid(date) && isValid(status)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				logincontroller.renderPage(mode, url, responseData)
				return
			}
			else {
				result=availabilityService.update(doctorId,date,status,modifiedBy)
			}
		}
		/* To delete the availability data */
		if(myaction.equals("delete")) {
			result=availabilityService.delete(doctorId)
		}
		
		renderPage(mode, url, result)
				
		}
	
	/* To get the TimeSlots of doctor */
	def getSlots(){
		log.info("availability Controller getSlots action")
		def responseData = new HashMap<>();
		def result,url
		url="/availability/slots.gsp"
		def mode="web"
			
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		
		def doctorId=params.doctorId
		def dFirstname=params.dFirstname
		def date=params.date
		
		if( ! (isValid(doctorId) && isValid(mode)&& isValid(date)&& isValid(dFirstname))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))	
			renderPage(mode, url, responseData)
			return
		}
		
		 SimpleDateFormat format1=new SimpleDateFormat("MM/dd/yyyy");
		 SimpleDateFormat format3=new SimpleDateFormat("dd/MM/yyyy");
		 Date date1 = format1.parse(date);
		 String formattedDate = format3.format(date1);		 
		 Date dt1=format3.parse(formattedDate);
		DateFormat format2=new SimpleDateFormat("EEEE");
		String day=format2.format(dt1);
		List<String> mylist
		Map<String,List<String>> mydata = new HashMap<String,List<String>>();
		def timings ="11:00AM TO 2:00PM"
		log.info(timings)
		def otime="20"
		log.info(otime)
		if(!isValid(timings)){
			
			renderPage(mode, url, responseData)
			return
			mylist=null
			}
			else{
			 mylist = getMyList(timings,otime);
			}
			mydata.put(date,mylist);
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			String[] days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
			Map<String,List<String>> myresultdata = new LinkedHashMap<String,List<String>>();
			def startmillisec,startdate
			def endmillisec,enddate
			def startday,endday
			Date d=dt1
			def today=sdf.format(d)
			startday=0
			endday=1
			myresultdata.put(today, mydata.get(date));
			for (int i = startday; i <=endday; i++) {
				Date parse =d;
				String dat = days[parse.getDay()];
				
				if(i == startday){
					startmillisec=parse.getTime()
					startdate=parse.getDate()
				}
				if(i == endday){
					endmillisec = parse.getTime()
					endmillisec=endmillisec+86400000
					enddate=parse.getDate()
				}
			}
			def slotresult = new ArrayList<>()
			 slotresult = availabilityService.getBookedAppointments(doctorId,dFirstname,startmillisec,endmillisec)
			 log.info("slotresult"+slotresult)
			 log.info(doctorId)
			 
			for(int i=0;i<slotresult.size();i++){
				def docId=slotresult[i].getAt("DOCTORID")
				def appdate=slotresult[i].getAt("DATE")
				def time=slotresult[i].getAt("SLOT")
				def status=slotresult[i].getAt("STATUS")
				def slots=myresultdata.get(today)
				log.info(slots)
				for(int j=0;j<slots.size();j++)
				{
					if((slots[j]==time)&&(status=="1"))
					{
						
						slots[j]="reserved"
					}
					else if((slots[j] == time)&&(status=="0"))
					{
							slots[j]="blocked"
					}
				}
				
			}
			myresultdata.put(getMessages('default.status.label'),getMessages('default.success.message'))
			myresultdata.put("listId", "slots")
			myresultdata.put("app_date",formattedDate)
			myresultdata.put("DoctorId",doctorId)
			myresultdata.put("DFirstname",dFirstname)
			myresultdata.put("uname",user)
			myresultdata.put("doctor",Doctor.getAll())
			def dc=Doctor.get(doctorId)
			log.info(myresultdata)
			log.info(mode)
			log.info(url)
			renderPage(mode, url, myresultdata)
	}
	public static List<String> getMyList(String timings, String otime) throws ParseException {
		String[] times = timings.split(" TO ");
		System.out.println(times[0])
		System.out.println(times[1])
		int atime = Integer.parseInt(otime);
		System.out.println(atime)
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mma");
		String stime = "0/0/0" + " " + times[0];
		String etime = "0/0/0" + " " + times[1];
		Date st = sdf.parse(stime);
		Date et = sdf.parse(etime);
		long stime1 = st.getTime();
		long etime1 = et.getTime();
		long ctime = stime1;
		SimpleDateFormat formatter = new SimpleDateFormat("hh:mma");
		List<String> mylist = new ArrayList<String>();
		String format1 = formatter.format(new Date(ctime));
		mylist.add(format1);
		while(ctime < etime1){
			ctime = ctime + atime * 60 * 1000;
			String format = formatter.format(new Date(ctime));
			mylist.add(format);
		}
		return mylist;
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
			log.info("availability Controller renderPage Action")
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
