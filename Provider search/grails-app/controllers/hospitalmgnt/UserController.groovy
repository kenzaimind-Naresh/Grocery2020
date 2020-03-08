package hospitalmgnt
import static org.springframework.http.HttpStatus.*

import java.util.HashMap;

import org.apache.solr.client.solrj.SolrQuery
import org.apache.solr.client.solrj.impl.HttpSolrServer
import org.apache.solr.client.solrj.request.QueryRequest
import org.apache.solr.client.solrj.response.QueryResponse
import org.apache.solr.common.SolrDocumentList
import org.apache.solr.common.params.ModifiableSolrParams
import org.apache.noggit.JSONUtil;

import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat
import java.util.Date;
@Transactional
class UserController {
	def UserService
	def mailService 
	static transactional=true
	LoginController logincontroller=new LoginController()
	def index()
	{
		
	}
	
	def login1 = {}
	def empadm = {}
	
	 def mailAction() {
	 log.info("@@@@@@@@@@@@@" )
	 
	 UserService.sendmail();
	 
        
    }
	
	def solrSearch(){
		log.info("UserController solrSearch Action")
		def mode
		def url="/user/solrSearch.gsp"
		def responseData = new HashMap<>()
		
		log.info("****************")
		def solrresult = solr();
		responseData.put("solrresult", solrresult)
		[result:responseData]
	}
	def solrSearchinfo(){
		log.info("UserController solrSearchinfo Action")
		def mode
		def url="/user/solrSearchinfo.gsp"
		def city= params.city
		log.info(city)
		def responseData = new HashMap<>()
		
		def solrresult = solr();
		
		log.info("****************")
		def solrcity = solr1(city);
		
		responseData.put("solrcity", solrcity)
		responseData.put("solrresult", solrresult)
		[result:responseData]
	}
	
	public HashMap solr1(city) throws Exception{
		log.info("UserController solr method")
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/health");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
			query.setQuery("city:"+city);
			query.setRows(10);
			log.info(query)
			def solrdata=new ArrayList()
			log.info(solrdata)
		try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			log.info(results)
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i))
			}
			}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("solrdata", solrdata)
	log.info(data.getClass())
	log.info(data)
	return data;
	}
	
	public HashMap solr() throws Exception{
		log.info("UserController solr method")
		def city = params.city
		/*
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/health");
			
		ModifiableSolrParams params = new ModifiableSolrParams();
		params.set("command", "full-import");
		params.set("clean", true);
		params.set("commit", true);
		params.set("optimize", true);
		QueryRequest request = new QueryRequest(params);
		request.setPath("/dataimport");
		solr.request(request);
		
		Thread.sleep(1000)
		log.info("******************ddddd")*/
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/health");
		
		/*SolrQuery query = (new SolrQuery("date:"+eDate)).setRows(5).select(of);*/
		 SolrQuery query = new SolrQuery();
			//query.set("qt", "/dataimport");
			//query.set("command", "full-import&clean=true");
			query.setQuery("*:*")
			;
			int num = solrobj.query(query).getResults().getNumFound();
			query.setRows(num);
			//query.setStart(of);
			//query.setRows(10);
			def solrdata=new ArrayList()
			
			int numFound;
			
			
	try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			 numFound = results.getNumFound();
			
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i).city)
			}
			
			 Object[] st = solrdata.toArray();
      for (Object s : st) {
        if (solrdata.indexOf(s) != solrdata.lastIndexOf(s)) {
            solrdata.remove(solrdata.lastIndexOf(s));
         }
      }
			
			
	}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	//data.put("size", numFound)
	data.put("solrdata", solrdata)
	
	return data;
	}
	
	public HashMap provider_autofill() throws Exception{
		log.info("UserController provider_autofill method")
		def city = params.city
		def speciality = params.speciality
		def dGender = params.dGender
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/provider");
		
		ModifiableSolrParams params = new ModifiableSolrParams();
		params.set("command", "full-import");
		params.set("clean", true);
		params.set("commit", true);
		params.set("optimize", true);
		QueryRequest request = new QueryRequest(params);
		request.setPath("/dataimport");
		solr.request(request);
		
		Thread.sleep(1000)
		log.info("******************ddddd")
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/provider");
		
		/*SolrQuery query = (new SolrQuery("date:"+eDate)).setRows(5).select(of);*/
		 SolrQuery query = new SolrQuery();
			//query.set("qt", "/dataimport");
			//query.set("command", "full-import&clean=true");
			query.setQuery("*:*")
			;
			int num = solrobj.query(query).getResults().getNumFound();
			//query.setRows(num);
			query.setRows(num);
			query.setStart(0);
			//query.setStart(of);
			//query.setRows(10);
			def solrdata=new ArrayList()
			def providerdata = new ArrayList()
			int numFound;
	try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			 numFound = results.getNumFound();
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i).city)
			}
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				providerdata.add(results.get(i).speciality)
			}
			 Object[] st = solrdata.toArray();
	  for (Object s : st) {
		if (solrdata.indexOf(s) != solrdata.lastIndexOf(s)) {
			solrdata.remove(solrdata.lastIndexOf(s));
		 }
	  }
	  Object[] st1 = providerdata.toArray();
	  for (Object s : st1) {
		if (providerdata.indexOf(s) != providerdata.lastIndexOf(s)) {
			providerdata.remove(providerdata.lastIndexOf(s));
		 }
	  }
	}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("size", numFound)
	data.put("providerdata", providerdata)
	data.put("solrdata", solrdata)
	return data;
	}
	
	
	def providerSearch(){
		log.info("UserController providerSearch Action")
		def mode=params.mode
		def url="/user/providerSearch.gsp"
		def responseData = new HashMap<>()
		log.info("****************")
		def solrresult = provider_autofill();
		log.info(solrresult)
		responseData.put("solrresult", solrresult)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		
		[result:responseData]
		
		
		
	}
	
	def addsshow(DBPhoto DBPhotoInstance) {
		[DBPhotoInstance: DBPhotoInstance]
	}
	
	
	def showPayload(DBPhoto DBPhotoInstance) {
		response.outputStream << DBPhotoInstance.payload // write the image to the output stream
		response.outputStream.flush()
		
		}


	
	def providerSearchinfo(){
		log.info("UserController providerSearchinfo Action")
		def mode=params.mode
		def url="/user/providerSearchinfo.gsp"
		def city= params.city
		log.info(city)
		def speciality= params.speciality
		log.info(speciality)
		def gender= params.dGender
		log.info(gender)
		def responseData = new HashMap<>()
		def msg;
		def solrresult = provider_autofill();
		log.info("****************")
		def solrcity = provider_getdata(city,speciality,gender);
		log.info(solrcity)
		if([city=="" || city==null] && [speciality=="" || speciality==null] && [gender=="" || gender==null]){
			msg="Doctor you have Searched is not available"
		}
		else{
			msg=""
		}
		responseData.put("solrcity", solrcity)
		responseData.put("solrresult", solrresult)
		responseData.put("city", city)
		responseData.put("speciality", speciality)
		responseData.put("gender", gender)
		responseData.put("message", msg)
		
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	def providerSearchinfo1(){
		log.info("UserController providerSearchinfo1 Action")
		def mode=params.mode
		def url="/user/providerSearchinfo.gsp"
		def city= params.city
		log.info(city)
		def speciality= params.speciality
		log.info(speciality)
		def gender= params.dGender
		log.info(gender)
		def start=params.start
		def buttonId=params.buttonId
		log.info(start)
		def responseData = new HashMap<>()
		def msg;
		def solrresult = provider_autofill();
		log.info("****************")
		def solrcity = provider_getdata1(city,speciality,gender,start);
		log.info(solrcity)
		if([city=="" || city==null] && [speciality=="" || speciality==null] && [gender=="" || gender==null]){
			msg="Data Not Found"
		}
		else{
			msg=""
		}
		responseData.put("solrcity", solrcity)
		responseData.put("solrresult", solrresult)
		responseData.put("city", city)
		responseData.put("speciality", speciality)
		responseData.put("gender", gender)
		responseData.put("buttonId", buttonId)
		responseData.put("message", msg)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	public HashMap provider_getdata(city,speciality,gender) throws Exception{
		log.info("UserController provider_getdata method")
		log.info(city)
		log.info(speciality)
		log.info(gender)
		
		log.info(city=="")
		log.info(speciality=="")
		log.info(gender=="")
		
		
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/provider");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
		if((speciality==null || speciality=="") && (gender==null || gender=="") && (city!=null || city!="") ){	
		 query.setQuery("city:"+city);
		}
		else if((city==null || city=="") && (gender==null || gender=="") && (speciality!=null || speciality!="")  ){
			query.setQuery("speciality:"+speciality);
		   }
		else if((city==null || city=="") && (speciality==null || speciality=="") && (gender!=null || gender!="")){
			query.setQuery("d_gender:"+gender);
		}
		else if((gender==null || gender=="") && (city!=null || city!="")&& (speciality!=null || speciality!="")){
			query.setQuery("city:"+city+"&& speciality:"+speciality);
		}
		else if((city==null || city=="") && (gender!=null || gender!="") && (speciality!=null || speciality!="")){
			query.setQuery("d_gender:"+gender+"&& speciality:"+speciality);
		}
		else if((speciality==null || speciality=="") && (city!=null || city!="") && (gender!=null || gender!="")){
			query.setQuery("d_gender:"+gender+" && city:"+city);
			}
		else if((city!=null || city!="")&& (gender!=null || gender!="")&& (speciality!=null || speciality!="")){
			query.setQuery("d_gender:"+gender+"&& speciality:"+speciality+" && city:"+city);
			}
		
			query.setStart(0);
			query.setRows(10);
			log.info(query)
			def solrdata=new ArrayList()
			log.info(solrdata)
		try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			log.info(results)
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i))
			}
			}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("solrdata", solrdata)
	log.info(data.getClass())
	log.info(data)
	return data;
	}
	
	
	public HashMap provider_getdata1(city,speciality,gender,start) throws Exception{
		log.info("UserController provider_getdata1 method")
		log.info(city)
		log.info(speciality)
		log.info(gender)
		
		log.info(city=="")
		log.info(speciality=="")
		log.info(gender=="")
		
		
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/provider");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
		if((speciality==null || speciality=="") && (gender==null || gender=="") && (city!=null || city!="") ){	
		 query.setQuery("city:"+city);
		}
		else if((city==null || city=="") && (gender==null || gender=="") && (speciality!=null || speciality!="")  ){
			query.setQuery("speciality:"+speciality);
		   }
		else if((city==null || city=="") && (speciality==null || speciality=="") && (gender!=null || gender!="")){
			query.setQuery("d_gender:"+gender);
		}
		else if((gender==null || gender=="") && (city!=null || city!="")&& (speciality!=null || speciality!="")){
			query.setQuery("city:"+city+"&& speciality:"+speciality);
		}
		else if((city==null || city=="") && (gender!=null || gender!="") && (speciality!=null || speciality!="")){
			query.setQuery("d_gender:"+gender+"&& speciality:"+speciality);
		}
		else if((speciality==null || speciality=="") && (city!=null || city!="") && (gender!=null || gender!="")){
			query.setQuery("d_gender:"+gender+" && city:"+city);
			}
		else if((city!=null || city!="")&& (gender!=null || gender!="")&& (speciality!=null || speciality!="")){
			query.setQuery("d_gender:"+gender+"&& speciality:"+speciality+" && city:"+city);
			}
		
			query.setStart(start.toInteger());
			query.setRows(10);
			log.info(query)
			def solrdata=new ArrayList()
			log.info(solrdata)
		try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			log.info(results)
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i))
			}
			}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("solrdata", solrdata)
	log.info(data.getClass())
	log.info(data)
	return data;
	}
	/* Sending User data to adminDashboard gsp page */
	def adminDashboard={
		def responseData = new HashMap<>()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "adminDashboard")
		responseData.put("user",user)

		[result:responseData]
	}
	
	/* Sending User data to userDashboard gsp page */
	def userDashboard ={
		def responseData = new HashMap<>()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "userDashboard")
		responseData.put("uname",user)
		log.info("************")
		log.info(responseData)

		[result:responseData]
	}
	def doctorLogin(){
		
	}
	def doctorLogin1(){
		
	}
	def pharmacyLogin1(){
	
}
	def doctorDashboard ={
		def responseData = new HashMap<>()
		def user= Doctor.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		responseData.put("listId", "doctorDashboard")
		responseData.put("uname",user)
		log.info("************")
		log.info(responseData)

		[result:responseData]
	}
	
	def pharmacyDashboard ={
		def responseData = new HashMap<>()
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		responseData.put("listId", "pharmacyDashboard")
		responseData.put("uname",user)
		log.info("************")
		log.info(responseData)

		[result:responseData]
		

		
	}
	/* Sending User data to Bill gsp page */
	def Bill ={
		        def responseData = new HashMap<>()
				def user= User.findByUsername(session.user)
				
				def username= session.user
				if(username ==null || username=="" ){
				 redirect(uri: "/user/login1")
				 return
				}
				responseData.put("listId", "Bill")
				responseData.put("uname",user)

		[result:responseData]
			}
	
	/* Sending User data to changepass gsp page */
	def changepass={
		def responseData = new HashMap<>()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)

		[result:responseData]
	  
		
	}
	
	/* Sending User data to changepass1 gsp page */
	def changepass1={
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		responseData.put("listId", "adminDashboard")
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("user",user)
		[result:responseData]
	  
		
	}
	
	/* To authenticate username and password */
	def authenticate = {
		def user = User.findByUsernameAndPassword(params.username,params.password)
		if(user){

			session.user=user.username
			if(session.user=="admin"){
				redirect(action:"adminDashboard")
			}
			else{
			redirect(action:"userDashboard")
			}
	
		}
		else{
		flash.message = "sorry, ${params.username}. please try again"
		redirect(action:"login1")
		}
		
	}
	
	/* To authenticate username and password */
	def doctorvalidation = {
		log.info("doctor validation******************** ")
		def mode=params.mode
		def responseData=new HashMap();
	//    def doctor=Doctor.getAll()
		def user = Doctor.findByEmailAndPassword(params.email,params.password)
		log.info(user)
		
		HashMap data=new HashMap<String, String>();
		
		ArrayList<Doctor> cObject=Doctor.findAllByEmail(params.email);
/*        data.put("expiredDate",cObject.expiredDate);
		log.info(data);*/
		log.info("%%%%%%%%%%");
		
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
			Date secondDate = sdf.parse(cObject.expiredDate);

		   Date current = new Date();
		long expdate = secondDate.getTime();
		//create date object
		System.out.println(current);
		System.out.println(expdate);
		Date next = new Date(expdate);
		//compare both dates
/*        if(next.after(current)){
			System.out.println("The date is future day");
		} else {
			System.out.println("The date is older than current day");
		}*/
		 
		if (!next.after(current)) {
			session.user=user.email
			log.info("rediredct to payment");
		 redirect(uri: "/package/activationPage");
		
			return
		}
		
		if(user){
			session.user=user.email
			
			if(mode=="mobile"){
				responseData.put("message", "You logged in Successfully")
				responseData.put(getMessages("default.status.label"),"200")
				responseData.put("doctor", Doctor.findByEmail(user.email))
				render responseData as JSON
				return
				
			}
			[result:data]
			redirect(action:"doctorDashboard")
		}else{
		flash.message = "sorry, ${params.username}. please try again"
		
		if(mode=="mobile"){
			responseData.put("message", "sorry, ${params.username}. please try again")
			responseData.put(getMessages("default.status.label"),"500")
			render responseData as JSON
			return
			
		}
		redirect(action:"doctorLogin1")
		}
		
	}
	
	/* To authenticate username and password */
	def pharmacyvalidation = {
		log.info("#########")
		def user = Pharmacy.findByEmailAndPassword(params.email,params.password)
		log.info(user)
		if(user){
			session.user=user.email
			redirect(action:"pharmacyDashboard")
		}else{
		flash.message = "sorry, ${params.username}. please try again"
		redirect(action:"pharmacyLogin1")
		}
		
	}
	
	/*To logout the session*/
	def logout ={
		
		session.user=null
		redirect(action:"login1")
	}
	
	def dlogout ={
		
		session.user=null
		redirect(action:"doctorLogin1")
	}
	
	def plogout ={
		
		session.user=null
		redirect(action:"pharmacyLogin1")
	}

	/* Sending Patient,Inpatient and user data to patientDetails gsp page */
	def patientDetails()
	{
		log.info("user controller patientDetails")
		def patientId=params.patientId
		def responseData = new HashMap<>()
		def pat1=Inpatient.getAll()
		def outpatient=Patient.getAll()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def roomNo=params.patientId
		def room1=Inpatient.findAllByRoomNo(roomNo)
		log.info(room1.size())
		
		def patId=new ArrayList()
		
		def room=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].patientId)
					
		}
	for(int i=0;i<outpatient.size();i++){

		patId.add(outpatient[i].patientId)
				
	}
	for(int i=0;i<pat1.size();i++){
		
					room.add(pat1[i].roomNo)
							
				}
	responseData.put("listId", "patientDetails")
	responseData.put("roomNo",room)
	responseData.put("room1",room1)
		responseData.put("pat1",patId)
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
		
		
		render view:"/user/patientDetails.gsp", model:[result:responseData]
		
	}
	
	/* Sending Patient,Inpatient and user data to patientDetails1 gsp page */
	def patientDetails1()
	{
		log.info("user controller InpatientDetails1")
		
		def patientId=params.patientId
		def responseData = new HashMap<>()
		def pat1=Inpatient.getAll()
		def outpatient=Patient.getAll()
		String s=patientId.charAt(0)
		if(s=="I")
		{
		def pat=Inpatient.findByPatientId(params.patientId)
		//def username= User.findByUsername(session.user)
		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def patId=new ArrayList()
		def room=new ArrayList()
				
	for(int i=0;i<pat1.size();i++){
			patId.add(pat1[i].patientId)
		}
	for(int i=0;i<outpatient.size();i++){
		patId.add(outpatient[i].patientId)
				
	}
	for(int i=0;i<pat1.size();i++){
		room.add(pat1[i].roomNo)
   }
		if(pat!=null){
			responseData.put("listId", "patientDetails")
			responseData.put("roomNo",room)
			responseData.put("pat1",patId)
			responseData.put("pat",pat)
			responseData.put("uname",user)
			responseData.put("patientType","IP")
			responseData.put(getMessages('default.message.label'),"")
		}
		else{
			responseData.put("listId", "patientDetails")
			responseData.put("roomNo",room)
			responseData.put("pat1",patId)
			responseData.put("pat",pat)
			responseData.put("uname",user)
			responseData.put("patientType","IP")
			responseData.put(getMessages('default.message.label'),"Data not found")
		}
		log.info("***************************************")
		log.info(responseData)
		
		[result:responseData]
	}else
	{
		
		def pat=Patient.findByPatientId(params.patientId)
		//def username= User.findByUsername(session.user)
		
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}

		def patId=new ArrayList()
		def roomNo=params.patientId
		def room1=Inpatient.findAllByRoomNo(roomNo)
		log.info(room1.size())
		def room=new ArrayList()
	
	for(int i=0;i<pat1.size();i++){
			patId.add(pat1[i].patientId)
	}
	for(int i=0;i<outpatient.size();i++){
		patId.add(outpatient[i].patientId)
				
	}
	for(int i=0;i<pat1.size();i++){
		 room.add(pat1[i].roomNo)
	}
	
		if(pat!=null || room1!=null){
			responseData.put("listId", "patientDetails")
			responseData.put("roomNo",room)
			responseData.put("room1",room1)
			responseData.put("pat1",patId)
			responseData.put("pat",pat)
			responseData.put("uname",user)
			responseData.put("patientType","OP")
			responseData.put(getMessages('default.message.label'),"")
		}
		else{
			responseData.put("listId", "patientDetails")
			responseData.put("roomNo",room)
			responseData.put("room1",room1)
			responseData.put("pat1",patId)
			responseData.put("pat",pat)
			responseData.put("uname",user)
			responseData.put("patientType","OP")
			responseData.put(getMessages('default.message.label'),"Data not found")
		}
		log.info(responseData)
		[result:responseData]

	}
	}
	
	/* Sending Inpatient and user data to dischargeSheet gsp page */
	def dischargeSheet(){
		log.info("user controller dischargeSheet")
		def pFirstname=params.pFirstname
		def responseData = new HashMap<>()
		def pat1=Inpatient.getAll()
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def patId=new ArrayList()
		def patIdd=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].patientId)
			
		}
	for(int i=0;i<pat1.size();i++){
		
					patIdd.add(pat1[i].patientId)
					
				}
	responseData.put("listId", "dischargeSheet")
		responseData.put("pat1",patId)
		responseData.put("pat2",patIdd)
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
		
		
		render view:"/user/dischargeSheet.gsp", model:[result:responseData]

		
	}
	
	/* Sending Inpatient and user data to dischargeSheet1 gsp page */
	def dischargeSheet1(){
		log.info("user controller dischargeSheet")
		def pFirstname=params.pFirstname
		def responseData = new HashMap<>()
		def pat1=Inpatient.getAll()
		def dissheet=DischargeSheet.findAllByPatientId(params.patientId)
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def dischargedata=DischargeSheet.findAllByPatientId(params.patientId,[max: 10,sort:"createdDate",order: "desc", offset: of])
		def totalcount=DischargeSheet.findAll().size()
		def patId=new ArrayList()
		def patIdd=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].patientId)
			
		}
	for(int i=0;i<pat1.size();i++){
		
					patIdd.add(pat1[i].patientId)
					
				}
	
	if(dischargedata!=[]){
		responseData.put("listId", "dischargeSheet")
		responseData.put("totalcount",totalcount )
		responseData.put("dischargedata", dischargedata)
		responseData.put("offset", of)
		responseData.put("dissheet",dissheet)
		responseData.put("pat1",patId)
		responseData.put("pat2",patIdd)
		
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
	}else {
	responseData.put("listId", "dischargeSheet")
	responseData.put("totalcount",totalcount )
	responseData.put("dischargedata", dischargedata)
	responseData.put("offset", of)
	responseData.put("dissheet",dissheet)
	responseData.put("pat1",patId)
	responseData.put("pat2",patIdd)
		responseData.put("uname",user)
		responseData.put(getMessages('default.message.label'),"Data not found")
	}
		
		[result:responseData]

		
	}
	
	def offsetlist(){
		log.info("user controller dischargeSheet")
		def pFirstname=params.pFirstname
		def responseData = new HashMap<>()
		def pat1=Inpatient.getAll()
		def dissheet=DischargeSheet.findAllByPatientId(params.patientId)
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=params.offset;
		def dischargedata=DischargeSheet.findAllByPatientId(params.patientId,[max: 10,sort:"createdDate",order: "desc", offset: of])
		def totalcount=DischargeSheet.findAll().size()
		def patId=new ArrayList()
		def patIdd=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].patientId)
			
		}
	for(int i=0;i<pat1.size();i++){
		
					patIdd.add(pat1[i].patientId)
					
				}
	
	if(dischargedata!=[]){
		responseData.put("listId", "dischargeSheet")
		responseData.put("totalcount",totalcount )
		responseData.put("dischargedata", dischargedata)
		responseData.put("offset", Integer.parseInt(of))
		responseData.put("dissheet",dissheet)
		responseData.put("pat1",patId)
		responseData.put("pat2",patIdd)
		
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
	}else {
	responseData.put("listId", "dischargeSheet")
	responseData.put("totalcount",totalcount )
	responseData.put("dischargedata", dischargedata)
	responseData.put("offset", Integer.parseInt(of))
	responseData.put("dissheet",dissheet)
	responseData.put("pat1",patId)
	responseData.put("pat2",patIdd)
		responseData.put("uname",user)
		responseData.put(getMessages('default.message.label'),"Data not found")
	}
		
		[result:responseData]

		
	}

	
	/* Sending user data to display gsp page */
	def display(){

		render view:"/user/display.gsp", model:[user:User.getAll()]
	}
	
	/* deleteuser gsp page */
	def deleteuser(){}
	
	/* Sending user data to updateuser gsp page */
	def updateuser(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		responseData.put("uname", user)
		[result:responseData]
	}
	
	
	
	
	/* Sending user data to updateuser1 gsp page */
	def updateuser1(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		
		responseData.put("user", user)
		[result:responseData]
	}
	
	def adminSuccess(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		responseData.put("listId", "adminDashboard")
		responseData.put("user",user)
		[result:responseData]
	}
	
	/* To save the password */
	def passwordSave(){
		log.info("user controller passwordSave action")
		def username= session.user
		log.info(username)
	   def url="/user/passwordSave.gsp"
		def password=params.password
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def mode="web"
		def result,res
		def uname= User.findByUsername(session.user)
		def responseData = new HashMap<>()
		
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
	   
			 if(username ==null || username=="" ){
				 redirect(uri: "/user/login1")
				 return
				}
			 responseData.put("listId", "adminDashboard")
			 responseData.put("user", uname)
			 
		result=UserService.passwordSave(username,newPwd)
		
		if(result.get("status") == "success"){
			responseData.put("listId", "adminDashboard")
			responseData.put("user", User.findByUsername(session.user))
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			
			log.info(responseData)
		}
		[result:responseData]
		
		 }
		 
	   }
	
	/* To save the password */
	def passwordsave1(){
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
				[user:user]
	}
	
	/* Sending user data to profile gsp page */
	def profile(){
		def user= User.findByUsername(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		
				[user:user]
	}
	
	def createuser(){}
	
	/* To save the data of user*/
	@Transactional
	def saveuser() {
		log.info("user Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		
		def mode=params.mode
		def myaction = params.myaction
		def username=params.username
		def password=params.password
		def mobileNumber = params.mobileNumber
		def dob=params.dob
		def address=params.address
		def modifiedBy=params.modifiedBy
		def uname= User.findByUsername(session.user)
		if( ! (isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(username) && isValid(password)&& isValid(mobileNumber)
						&& isValid(dob)&& isValid(address)&& isValid(modifiedBy))){
					url="/user/saveuser.gsp"
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {

				responseData.put("username", uname.username)
				url="/user/saveuser.gsp"
				def res=UserService.save(username,password,mobileNumber,dob,address,modifiedBy)
				if(res.get("status") == "success"){
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
			}
		}
		
		/* To update the data of user*/
		if(myaction.equals("update")) {
			if( ! (isValid(username) && isValid(password)&& isValid(mobileNumber)
						&& isValid(dob)&& isValid(address)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				def res=UserService.update(username,password,mobileNumber,dob,address,modifiedBy)
				if(res.get("status") == "success"){
					def user= User.findByUsername(session.user)
					if(username ==null || username=="" ){
						redirect(uri: "/user/login1")
						return
					   }
					   
					url="/user/adminSuccess.gsp"
					responseData.put("user", user)
					responseData.put(getMessages('default.message.label'),res.getAt("message"))
					responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				result=responseData
			}
		}
		
		/* To delete the data of user*/
		if(myaction.equals("delete")) {
			result=UserService.delete(mobileNumber)
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


