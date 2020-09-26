package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional;

import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;

class DoctorController {

    def index() { }
	def DoctorService
	static transactional=true
	LoginController logincontroller=new LoginController()
	
	/* Sending doctor data to display gsp page */
	def display(){
	
		render view:"/doctor/display.gsp", model:[doctor:Doctor.getAll()]
	}
	
	/* deletedoctor gsp page */
	def deletedoctor(){}
	
	/* Sending Doctor data to updatedoctor gsp page */
	def updatedoctor(){
		def responseData = new HashMap<>()
		def user= Doctor.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		def doctor=Doctor.findByEmail(username)
		log.info(doctor)
		responseData.put("listId", "doctorDashboard")
		responseData.put("uname",user)
		responseData.put("doctor",doctor)
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	/* Sending user data to createdoctor gsp page */
	def createdoctor(){
		def responseData = new HashMap<>()
		responseData.put("listId", "createdoctor")
		[responseData:responseData]
	}
	
	//To change password
	
	def changePass2={
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= Doctor.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	
	//save action for change password
	
	def passwordSave2(){
		log.info("Doctor controller passwordSave2 action")
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def password=params.password
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def result,res
		log.info(password)
		log.info(newPwd)
		log.info(confirmPwd)
		
		if(mode=="mobile"){
			def doctorId = params.doctorId
			def username = Doctor.findByDoctorId(doctorId).email
			
			if(newPwd != confirmPwd){
				return false
			   }
				else{
			   result=DoctorService.passwordSave2(username,newPwd)
			   if(result.get("status") == "success"){
				   responseData.put(getMessages('default.message.label'),result.getAt("message"))
				   responseData.put(getMessages('default.status.label'),"200")
				   responseData.put("uname",username)
			   }
				}
					   render responseData as JSON
					   return
		}
		
		if(mode=="web"){
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/doctorLogin1")
			return
		   }
		if((username !=null || username!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/user/doctorDashboard")
			return false
		}else{
		
		def url="/doctor/passwordSave2.gsp"
		def user= Doctor.findByEmail(username)
		log.info(user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=DoctorService.passwordSave2(username,newPwd)
		if(result.get("status") == "success"){
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		}
		 }
		
		 [result:responseData]
	   }
		}
	}
	/* To save the data of Doctor */
	@Transactional
	def savedoctor() {
		log.info("doctor Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def regId = params.regId
		log.info(regId)
		def packName = params.packName
		log.info(packName)
		def status = params.status
		log.info(status)
		def dFirstname=params.dFirstname
		log.info(dFirstname)
		def dLastname=params.dLastname
		log.info(dLastname)
		def dAge=params.dAge
		log.info(dAge)
		def dGender=params.dGender
		log.info(dGender)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		
		def address=params.address
		log.info(address)
		def locality=params.locality
		log.info(locality)
		def city=params.city
		log.info(city)
		def clinicName = params.clinicName
		log.info(clinicName)
		def pin=params.pin
		log.info(pin)
		def email=params.email
		log.info(email)
		def password=params.password
		log.info(password)
		def speciality=params.speciality
		log.info(speciality)
		def experience = params.experience
		log.info(experience)
		def reference = params.reference
		log.info(reference)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		def fee=params.fee
		log.info(fee)
		def locUrl=params.locUrl
		log.info(locUrl)
		
		def blood_flag=params.blood_flag
		log.info(blood_flag)
		def v_flag=params.v_flag
		log.info(v_flag)
		def qualifcation=params.qualifcation
		log.info(qualifcation)
		def lattitude=params.lattitude
		log.info(lattitude)
		def longitude=params.longitude
		log.info(longitude)
		def certifications=params.certifications
		log.info(certifications)
		def image=params.image
		log.info(image)
	
		def choice=params.choice
		log.info(choice)
		
		def expiredDate = params.expiredDate
		log.info(expiredDate)
		
		/*def user= Doctor.findByEmail(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}*/
		
		
		if( ! (isValid(regId)&& isValid(dFirstname) && isValid(dLastname) && isValid(dAge)&& isValid(dGender)&& isValid(mobileNumber)
						&& isValid(address)&& isValid(locality)&& isValid(city)&& isValid(pin)&& isValid(email)&& isValid(speciality)&& isValid(experience)&& isValid(reference)
						&& isValid(modifiedBy)&& isValid(fee)&& isValid(blood_flag)&& isValid(v_flag)&& isValid(qualifcation)
						&& isValid(lattitude)&& isValid(longitude)&& isValid(certifications)&& isValid(image)&& isValid(choice) && isValid(myaction) && isValid(mode)&& isValid(expiredDate))){
					redirect(uri: "/user/doctorDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(regId)&& isValid(dFirstname) && isValid(dLastname) && isValid(dAge)&& isValid(dGender)&& isValid(mobileNumber)
						&& isValid(address)&& isValid(locality)&& isValid(city)&& isValid(clinicName)&& isValid(pin)&& isValid(email)&& isValid(password)&& isValid(speciality)&& isValid(experience)&& isValid(reference)
						&& isValid(modifiedBy)&& isValid(fee)&& isValid(blood_flag)&& isValid(v_flag)&& isValid(qualifcation)
						&& isValid(lattitude)&& isValid(longitude)&& isValid(certifications)&& isValid(image)&& isValid(choice)&& isValid(expiredDate))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res=DoctorService.save(regId,packName,status,dFirstname,dLastname,dAge,dGender,mobileNumber,address,locality,
					city,clinicName,pin,email,password,speciality,experience,reference,modifiedBy,fee,locUrl,blood_flag,v_flag,
					qualifcation,lattitude,longitude,certifications,image,choice,expiredDate)
				log.info(res)
				
			
				if(res.get("status") == "success"){
					
					render text: """<script type="text/javascript">
                    alert("Registration Completed Successfully");
                    window.location.href = "/ProviderSearch/doctor/createdoctor";


 </script>""",
					contentType: 'js'
					
					// This Script is for Alert pop-up and success result in same page

					// flash.message = "Welcome!"
				   render(view: "createdoctor")
					
				}else if(res.get("status") == "error"){
				
				render text: """<script type="text/javascript">
                    alert("Email Id Already Exist !");
                    window.location.href = "/ProviderSearch/doctor/createdoctor";


 </script>""",
				contentType: 'js'
				
				}
			}
					if(mode=="mobile"){
					render responseData as JSON
					return
				}
				
				[result:responseData]
		}
	}
		
	/* To update the data of Doctor */
	@Transactional
	def saveupdate() {
		log.info("doctor Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		def mode=params.mode
		log.info(mode)
		def regId = params.regId
		log.info(regId)
		def packName = params.packName
		log.info(packName)
		def status = params.status
		log.info(status)
		def dFirstname=params.dFirstname
		log.info(dFirstname)
		def dLastname=params.dLastname
		log.info(dLastname)
		def dAge=params.dAge
		log.info(dAge)
		def dGender=params.dGender
		log.info(dGender)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		//def alternateMobile=params.alternateMobile
		//log.info(alternateMobile)
		def address=params.address
		log.info(address)
		def locality=params.locality
		log.info(locality)
		def city=params.city
		log.info(city)
		def clinicName = params.clinicName
		log.info(clinicName)
		def pin=params.pin
		log.info(pin)
		def email=params.email
		log.info(email)
		def password=params.password
		log.info(password)
		def speciality=params.speciality
		log.info(speciality)
		def experience = params.experience
		log.info(experience)
		def reference = params.reference
		log.info(reference)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		def fee=params.fee
		log.info(fee)
		def locUrl=params.locUrl
		log.info(locUrl)
		
		def blood_flag=params.blood_flag
		log.info(blood_flag)
		def v_flag=params.v_flag
		log.info(v_flag)
		def qualifcation=params.qualifcation
		log.info(qualifcation)
		def lattitude=params.lattitude
		log.info(lattitude)
		def longitude=params.longitude
		log.info(longitude)
		def certifications=params.certifications
		log.info(certifications)
		def image=params.image
		log.info(image)
		def choice=params.choice
		log.info(choice)
		
		def doctorId = params.doctorId
		log.info(doctorId)
		
		if(mode == "mobile"){
			
			if( ! (isValid(regId)&& isValid(dFirstname) && isValid(dLastname) && isValid(dAge)&& isValid(dGender)&& isValid(mobileNumber)
				&& isValid(address)&& isValid(locality)&& isValid(city)&& isValid(clinicName)&& isValid(pin)&& isValid(email)&& isValid(password)&& isValid(speciality)&& isValid(experience)&& isValid(reference)
				&& isValid(modifiedBy)&& isValid(fee)&& isValid(blood_flag)&& isValid(v_flag)&& isValid(qualifcation)
				&& isValid(lattitude)&& isValid(longitude)&& isValid(certifications)&& isValid(image)&& isValid(choice))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=DoctorService.update(regId,packName,status,dFirstname,dLastname,dAge,dGender,mobileNumber,address,locality,
			city,clinicName,pin,email,password,speciality,experience,reference,modifiedBy,fee,locUrl,blood_flag,v_flag,
			qualifcation,lattitude,longitude,certifications,image,choice)
		url="/doctor/saveupdate.gsp"
		responseData.put("uname",Doctor.findByDoctorId(doctorId).dFirstname)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
	if(mode=="web")    {
		def user= Doctor.findByEmail(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		
		else {
			result=DoctorService.update(regId,packName,status,dFirstname,dLastname,dAge,dGender,mobileNumber,address,locality,
				city,clinicName,pin,email,password,speciality,experience,reference,modifiedBy,fee,locUrl,blood_flag,v_flag,
				qualifcation,lattitude,longitude,certifications,image,choice)
			responseData.put("uname",user)
			
			render text: """<script type="text/javascript">
                    alert("Profile Updated Successfully");
                    window.location.href = "/ProviderSearch/doctor/updatedoctor";


 </script>""",
			contentType: 'js'
			
		}
	
	[result:responseData]
	}
	
	}
	
	@Transactional
	def getdata() {
		log.info("doctor Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def doctorName=params.doctorName
		def split=doctorName.split(" ")
		def doctorInstance=Doctor.findByDFirstnameAndDLastname(split[0],split[1])
		log.info(doctorInstance)
		def res=doctorInstance.doctorId+"#"+doctorInstance.dFirstname+"#"+doctorInstance.speciality
		render res
	}
	
	def appointmentSchedule(){
		log.info("doctor appointmentSchedule***********"+ Doctor.getAll())
		def responseData =new HashMap<>();
		def doctor=Doctor.getAll()
		def user= Doctor.findByEmail(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		responseData.put("doctor",doctor)
		responseData.put("uname",user)
		responseData.put("listId","appointmentSchedule")
		[result:responseData]
		
	}
	@Transactional
	def getSlots(){
		log.info("doctorController getSlots action")
		def responseData = new HashMap<>();
		def result,url
		url="/doctor/appointmentSchedule.gsp"
		def mode=params.mode
		def docId;
		log.info(mode)
		if(mode==null){
		redirect(uri: "/user/doctorDashboard")
		 return
		
		}
		
		if(mode=="mobile"){
			
			def doctorId=params.doctorId
			log.info(doctorId)
			def date=params.date
			def from=params.from
			def to=params.to
			def otime=params.otime
			
			
			if( ! (isValid(mode) && isValid(from) && isValid(to) && isValid(otime) && isValid(date))){
				responseData.put(getMessages('default.status.label'),"200")
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
			log.info(date)
			List<String> mylist
			Map<String,List<String>> mydata = new HashMap<String,List<String>>();
			def timings =params.from+" "+"TO"+" "+params.to
			log.info(timings)
			log.info(otime)
			if(!isValid(timings)){
				
				renderPage(mode, url, responseData)
				return
				mylist=null
				}
				else{
				 mylist = getMyList(timings,otime);
				}
			
				def sdata=DoctorSchedule.findByDateAndDoctorId(date,doctorId)
				log.info(sdata)
				mydata.put("sdata",sdata);
				mydata.put("slots",mylist);
				mydata.put("uname",Doctor.findByDoctorId(doctorId).dFirstname);
				mydata.put("date",date);
				mydata.put("listId","appointmentSchedule")
				log.info(mydata)
				log.info(mylist)
				
					render mydata as JSON
					return
		}
		
		if(mode=="web"){
		def user= Doctor.findByEmail(session.user)
		def username= session.user
		if(username ==null || username==""  ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		def doctorId=user.doctorId
		log.info(doctorId)
		def date=params.date
		def from=params.from
		def to=params.to
		def otime=params.otime
		
		if( ! (isValid(date) && isValid(from) && isValid(to) && isValid(otime) && isValid(mode))){
		redirect(uri: "/doctor/appointmentSchedule")
		return
		}
		if( ! (isValid(mode) && isValid(from) && isValid(to) && isValid(otime) && isValid(date))){
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
		log.info(date)
		List<String> mylist
		Map<String,List<String>> mydata = new HashMap<String,List<String>>();
		def timings =params.from+" "+"TO"+" "+params.to
		log.info(timings)
		log.info(otime)
		if(!isValid(timings)){
			
			renderPage(mode, url, responseData)
			return
			mylist=null
			}
			else{
			 mylist = getMyList(timings,otime);
			}
		
			def sdata=DoctorSchedule.findByDateAndDoctorId(date,doctorId)
			log.info(sdata)
			mydata.put("sdata",sdata);
			mydata.put("slots",mylist);
			mydata.put("uname",user);
			mydata.put("date",date);
			mydata.put("listId","appointmentSchedule")
			log.info(mydata)
			log.info(mylist)
			
		
			[result:mydata]
			
		}
		
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
	
	def list(){
		log.info("doctorController list Action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		
	if(mode == "mobile"){
		def reference = params.doctorId
		def of=0;
		def appointmentdata=Patient.findAllByReference(reference,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(appointmentdata)
		def totalcount=Patient.findAllByReference(reference).size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("appointmentdata", appointmentdata)
		responseData.put("uname", Doctor.findByDoctorId(reference).dFirstname)
		responseData.put("offset", of)
		
		render responseData as JSON
		return
	}
		
		if(mode == "web"){
		def user= Doctor.findByEmail(session.user)
		def reference = user.doctorId
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		def of=0;
		def appointmentdata=Patient.findAllByReference(reference,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(appointmentdata)
		def totalcount=Patient.findAllByReference(reference).size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("appointmentdata", appointmentdata)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]
	}
	}
	/*sending user data and outpatient data to offsetlist gsp page*/
	def offsetlist(){
		log.info("doctorController offsetlist Action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		if(mode == "mobile"){
			def reference = params.doctorId
			def of=params.offset;
			def appointmentdata=Patient.findAllByReference(reference,[sort:"id",order:"desc",max: 5, offset: of])
			log.info(appointmentdata)
			def totalcount=Patient.findAllByReference(reference).size()
			log.info(totalcount)
			responseData.put("listId", "list")
			responseData.put("totalcount",totalcount )
			responseData.put("appointmentdata", appointmentdata)
			responseData.put("uname", Doctor.findByDoctorId(reference).dFirstname)
			responseData.put("offset", of)
			
			render responseData as JSON
			return
		}
		
		if(mode == "web"){
		def user= Doctor.findByEmail(session.user)
		log.info(user)
		def reference = user.doctorId
		log.info(reference)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		
		def of=params.offset;
		def appointmentdata=Patient.findAllByReference(reference,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(appointmentdata)
		def totalcount=Patient.findAllByReference(reference).size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("appointmentdata", appointmentdata)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
	
	def doctorlist(){
		log.info("PackageController doctorlist Action")
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def doctordata=Doctor.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(doctordata)
		def totalcount=Doctor.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "doctorlist")
		responseData.put("totalcount",totalcount )
		responseData.put("doctordata", doctordata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	/*sending user data and outpatient data to offsetlist gsp page*/
	def offsetlist1(){
		log.info("PackageController offsetlist1 Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def doctordata=Doctor.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(doctordata)
		def totalcount=Doctor.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "doctorlist")
		responseData.put("totalcount",totalcount )
		responseData.put("doctordata", doctordata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
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
			log.info("doctor Controller renderPage Action")
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
