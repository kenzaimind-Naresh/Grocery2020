package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional

import java.text.SimpleDateFormat
import java.util.HashMap;

import org.apache.solr.client.solrj.SolrQuery
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.CommonsHttpSolrServer
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.request.QueryRequest;
import org.apache.solr.client.solrj.response.QueryResponse
import org.apache.solr.common.SolrDocumentList
import org.apache.solr.common.params.ModifiableSolrParams;



//@SuppressWarnings("deprecation")
@Transactional
class PharmacyController  {
	
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def pharmacyService
	def drugsService
	def availabilityService
	static transactional=true
	
	LoginController logincontroller=new LoginController()
		def index(){}
		
		/* Sending pharmacy data to display gsp page */
	def display(){
		render view:"/pharmacy/display.gsp", model:[pharmacy:Pharmacy.getAll()]
	}	
	
	/* deletepharmacy gsp page */
	def deletepharmacy(){}
	
	
	/* Sending pharmacy data to updatepharmacy gsp page */
	def updatepharmacy(){
		def responseData = new HashMap<>()
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		def pharmacy=Pharmacy.findByEmail(username)
		log.info(pharmacy)
		responseData.put("listId", "pharmacyDashboard")
		responseData.put("uname",user)
		responseData.put("pharmacy",pharmacy)
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	def changePass2={
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	
	def passwordSave2(){
		log.info("pharmacycontroller passwordSave2 action")
		def responseData = new HashMap<>()
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/pharmacyLogin1")
			return
		   }
		def password=params.password
		log.info(password)
		def newPwd=params.newPwd
		log.info(newPwd)
		def confirmPwd=params.confirmPwd
		log.info(confirmPwd)
		if((username !=null || username!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/user/pharmacyDashboard")
			return false
		}else{
		
		def url="/Pharmacy/passwordSave2.gsp"
		log.info(url)
		def mode="web"
		log.info(mode)
		def result,res
		def user= Pharmacy.findByEmail(username)
		log.info(user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=pharmacyService.passwordSave2(username,newPwd)
		log.info(result)
			url="/Pharmacy/passwordSave2.gsp"
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		 }
		 [result:responseData]
		 }
	   } 
	
	def drugSearch(){
		log.info("pharmacycontroller drugSearch Action")
		def mode=params.mode
		def url="/pharmacy/drugSearch.gsp"
		def responseData = new HashMap<>()
		log.info("****************")
		def localityobj = Pharmacy.findAll()
		log.info(localityobj)
		Set<String> locality=new HashSet<String>() 
		for(def i:localityobj){
			locality.add(i.locality)
		}
		log.info(locality)
		def drugobj = Drugs.findAll()
		log.info(drugobj)
		Set<String> drugName=new HashSet<String>()
		for(def i:drugobj){
			drugName.add(i.drugName)
		}
		log.info(drugName)
		
		responseData.put("drugName", drugName)
		responseData.put("locality", locality)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	def drugSearchinfo(){
		log.info("pharmacycontroller drugSearchinfo Action")
		def mode=params.mode
		def url="/pharmacy/drugSearchinfo.gsp"
		def locality= params.locality
		log.info(locality)
		def drugName= params.drugName
		log.info(drugName)
		def responseData = new HashMap<>()
		def msg;
		def localityobj = Pharmacy.findAll()
		log.info("++++++ "+localityobj)
		Set<String> locality1=new HashSet<String>() 
		for(def i:localityobj){
			locality1.add(i.locality)
		}
		log.info("^^^^^^^^ "+locality1)
		def drugobj = Drugs.findAll()
		log.info("@@@@@@@@@@@ "+drugobj)
		Set<String> drugName1=new HashSet<String>()
		for(def i:drugobj){
			drugName1.add(i.drugName)
		}
		log.info("&&&&&&&&&& "+drugName1)
		log.info("****************")
		def solrcity = drug_getdata(drugName,locality);
		log.info("solrcity "+solrcity)
		
		if([locality=="" || locality==null] && [drugName=="" || drugName==null]){
			msg="Drug you have Searched is not available"
		}
		else{
			msg=""
		}
		responseData.put("solrcity", solrcity)
		responseData.put("locality", locality1)
		responseData.put("drugName", drugName1)
		responseData.put("message", msg)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	
	public HashMap drug_autofill() throws Exception{
		log.info("UserController drug_autofill method")
		def drugName = params.drugName
		def locality = params.locality
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/pharmacyAvalability");
		
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
		solrobj = new HttpSolrServer("http://localhost:8983/solr/pharmacyAvalability");
		
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
				solrdata.add(results.get(i).drugName)
			}
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(gi))
				providerdata.add(results.get(i).locality)
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
	
	
	public HashMap drug_getdata(drugName,locality) throws Exception{
		log.info("pharmacycontroller drug_getdata method")
		def drugName1 = params.drugName
		def locality1 = params.locality
		log.info(drugName1)
		log.info(locality1)
		
		log.info(drugName=="")
		log.info(locality=="")
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/pharmacyAvalability");
		
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
		solrobj = new HttpSolrServer("http://localhost:8983/solr/pharmacyAvalability");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
		 
		if((drugName==null || drugName=="") && (locality!=null || locality!="") ){
		 query.setQuery("locality:"+locality);
		}
		else if((locality==null || locality=="") && (drugName!=null || drugName!="")  ){
			query.setQuery("drug_name:"+drugName);
		   }
		else if((locality!=null || locality!="")&& (drugName!=null || drugName!="")){
			query.setQuery("locality:"+locality+"&& drug_name:"+drugName);
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
	
	/*public HashMap provider_autofill() throws Exception{
		log.info("pharmacyController provider_autofill method")
		def city = params.city
		def pharmacy_name = params.pharmacyName
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/pharmacySearch");
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
		solrobj = new HttpSolrServer("http://localhost:8983/solr/pharmacySearch");
		
		SolrQuery query = (new SolrQuery("date:"+eDate)).setRows(5).select(of);
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
				providerdata.add(results.get(i).pharmacy_name)
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
	
	
	public HashMap provider_getdata(city,pharmacy_name) throws Exception{
		log.info("pharmacycontroller provider_getdata method")
		log.info(city)
		log.info(pharmacy_name)
		
		log.info(city=="")
		log.info(pharmacy_name=="")
		
		
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/pharmacySearch");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
		 
		if((pharmacy_name==null || pharmacy_name=="") && (city!=null || city!="") ){
		 query.setQuery("city:"+city);
		}
		else if((city==null || city=="") && (pharmacy_name!=null || pharmacy_name!="")  ){
			query.setQuery("pharmacy_name:"+pharmacy_name);
		   }
		else if((city!=null || city!="")&& (pharmacy_name!=null || pharmacy_name!="")){
			query.setQuery("city:"+city+"&& pharmacy_name:"+pharmacy_name);
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
	*/
	
	
	
	def pharmacylist(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def pharmacydata=Pharmacy.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(pharmacydata)
		def totalcount=Pharmacy.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist")
		responseData.put("totalcount",totalcount )
		responseData.put("pharmacydata", pharmacydata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	/*sending user data and outpatient data to offsetlist gsp page*/
	def offsetlist(){
		log.info("pharmacyController offsetlist Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def pharmacydata=Pharmacy.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(pharmacydata)
		def totalcount=Pharmacy.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist")
		responseData.put("totalcount",totalcount )
		responseData.put("pharmacydata", pharmacydata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	
	def pharmacylist1(){
		def responseData = new HashMap<>();
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		
		def mode="web"
		def of=0;
		def pharmacydata=Pharmacy.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(pharmacydata)
		def totalcount=Pharmacy.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist1")
		responseData.put("totalcount",totalcount )
		responseData.put("pharmacydata", pharmacydata)
		responseData.put("uname", user)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	/*sending pharmacy data to offsetlist1 gsp page*/
	def offsetlist1(){
		log.info("pharmacyController offsetlist1 Action")
		def mode="web"
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def pharmacydata=Pharmacy.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(pharmacydata)
		def totalcount=Pharmacy.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist1")
		responseData.put("totalcount",totalcount )
		responseData.put("pharmacydata", pharmacydata)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	   def createpharmacy(){
		   def responseData = new HashMap<>()
		   responseData.put("listId", "createpharmacy")
		   [result:responseData]
	   }
	   

	/* To save the data of Pharmacy */
	@Transactional
	def savepharmacy() {
		log.info("pharmacy Controller savepharmacy action")
		def responseData = new HashMap<>()
		def result = new HashMap<>()
		def url,res1
		url="/pharmacy/savepharmacy.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def regId = params.regId
		log.info(regId)
		def packName = params.packName
		log.info(packName)
		def status = params.status
		log.info(status)
		def firstname=params.firstname
		log.info(firstname)
		def lastname=params.lastname
		log.info(lastname)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		//def alternateNumber=params.alternateNumber
		//log.info(alternateNumber)
		def address=params.address
		log.info(address)
		def locality=params.locality
		log.info(locality)
		def city=params.city
		log.info(city)
		def pharmacyName = params.pharmacyName
		log.info(pharmacyName)
		def pin=params.pin
		log.info(pin)
		def email=params.email
		log.info(email)
		def password=params.password
		log.info(password)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		def locUrl=params.locUrl
		log.info(locUrl)
		
		
		if( ! (isValid(regId)&& isValid(firstname) && isValid(lastname) && isValid(mobileNumber) && isValid(address)&& isValid(locality)&& isValid(city)&& isValid(pin)&& isValid(email)&& 
						isValid(modifiedBy) && isValid(myaction) && isValid(mode))){
					redirect(uri: "/user/pharmacyDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(regId)&& isValid(firstname) && isValid(lastname) && isValid(mobileNumber) && isValid(address)&& isValid(locality)&& isValid(city)&& isValid(pin)&& isValid(email)&& isValid(password)
						&& isValid(pharmacyName)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res=pharmacyService.save(regId,packName,status,firstname,lastname,mobileNumber,address,locality,
					city,pharmacyName,pin,email,password,modifiedBy,locUrl)
				log.info(res)
				
				if(res.get("status") == "success"){
					
					render text: """<script type="text/javascript">
                    alert("Registration Completed Successfully");
                    window.location.href = "/ProviderSearch/pharmacy/createpharmacy";


 </script>""",
					contentType: 'js'
					

					// flash.message = "Welcome!"
				   render(view: "createdoctor")
					
				}else if(res.get("status") == "error"){
				
				render text: """<script type="text/javascript">
                    alert("Email Id Already Exist !");
                    window.location.href = "/ProviderSearch/pharmacy/createpharmacy";


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
		log.info("pharmacy Controller saveupdate action")
		def responseData = new HashMap<>()
		def result = new HashMap<>()
		def url,res1
		def mode=params.mode
		def regId = params.regId
		log.info(regId)
		def packName = params.packName
		log.info(packName)
		def status = params.status
		log.info(status)
		def firstname=params.firstname
		log.info(firstname)
		def lastname=params.lastname
		log.info(lastname)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		//def alternateNumber=params.alternateNumber
		//log.info(alternateNumber)
		def address=params.address
		log.info(address)
		def locality=params.locality
		log.info(locality)
		def city=params.city
		log.info(city)
		def pharmacyName = params.pharmacyName
		log.info(pharmacyName)
		def pin=params.pin
		log.info(pin)
		def email=params.email
		log.info(email)
		def password=params.password
		log.info(password)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		def locUrl=params.locUrl
		log.info(locUrl)
		
		if( ! (isValid(regId)&& isValid(firstname) && isValid(lastname) && isValid(mobileNumber) && isValid(address)&& isValid(locality)&& isValid(city)&& isValid(pin)&& isValid(email)&&
			isValid(modifiedBy) && isValid(mode))){
		redirect(uri: "/user/pharmacyDashboard")
		return
			}
			if( ! (isValid(regId)&& isValid(firstname) && isValid(lastname) && isValid(mobileNumber) && isValid(address)&& isValid(locality)&& isValid(city)&& isValid(pin)&& isValid(email)&& isValid(password)
						&& isValid(pharmacyName)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=pharmacyService.update(regId,packName,status,firstname,lastname,mobileNumber,address,locality,
					city,pharmacyName,pin,email,password,modifiedBy,locUrl)
				url="/pharmacy/saveUpdate.gsp"
				def user= Pharmacy.findByEmail(session.user)
				responseData.put("uname",user)
				responseData.put("message", "Your Profile Updated Successfully")
				responseData.put(getMessages("default.status.label"),"200")
				
			}
				if(mode=="mobile"){
			render responseData as JSON
			return
		}
		
		[result:responseData]
		}
		
	def createdrugs(){
		def responseData = new HashMap<>()
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		responseData.put("uname", user)
		  [result:responseData]
	}
	@Transactional
	def savedrugs() {
		log.info("drugs Controller savepatient action")
		def responseData = new HashMap<>()
		def result,url
		url="/drugs/savedrugs.gsp"
		def mode=params.mode
		
		def drugName=params.drugName
		log.info(drugName)
		def rate=params.rate
		log.info(rate)
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def addedBy=user.id.toString()
		log.info(addedBy)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacylogin1")
		 return
		}
		
		log.info("************")
		log.info(isValid(rate))
		log.info(isValid(drugName))
		log.info(isValid(addedBy))
		log.info("************")
		
		if( ! (isValid(drugName) && isValid(rate) && isValid(addedBy) && isValid(mode) && (username !=null || username!="" ))){
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
				log.info("in else block")
				result=drugsService.save(drugName,rate,addedBy)
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(result.get("status") == "success"){
					//url="/drugs/savedrugs.gsp"
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}else if(result.get("status") == "error"){
					//url="/drugs/savedrugs.gsp"
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
			
			}
			}	
				if(mode=="mobile"){
					render responseData as JSON
					return
				}
				[result:responseData]
	}
		
	def createavailability(){
	log.info("PharmacyController createavailability action")
		def responseData = new HashMap<>()
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		def drug = Drugs.findAll()
		log.info(drug)
		def availability = Availability.findAll()
		log.info(availability)
		
		def pharmacyId=Pharmacy.findByEmail(session.user).pharmacyId
		log.info(pharmacyId)
		def status ="1"
		//def status = Availability.findByPharmacy(user).status
		log.info(status)
		responseData.put("uname", user)
		responseData.put("drug", drug)
		responseData.put("status", status)
		responseData.put("availability", availability)
		responseData.put("message", "")
		  [result:responseData]
	}
	
	@Transactional
	def getdata() {
		log.info("Pharmacy Controller getdata action")
		def responseData = new HashMap<>()
		def result,url,status
		def drugName=params.drugName
		def drugId = Drugs.findByDrugName(drugName).id
		def rate = Drugs.findByDrugName(drugName).rate
		def username= session.user
		
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		log.info("user name" +username)
		
		def user= Pharmacy.findByEmail(session.user)
		log.info(user)
		
		
		def obj=Availability.findByDrugNameAndPharmacy(drugName,user)
		log.info("objj"+obj)
		if(obj!=null){
			status = Availability.findByDrugNameAndPharmacy(drugName,user).status
			log.info(status)
		}
		else{
			status=0
		}
		
		def res=drugId+"#"+rate+"#"+status
		log.info(res)
		render res
	}
	

	
	@Transactional
	def saveavailability() {
		log.info("Pharmacy Controller saveAvailability action")
		def responseData = new HashMap<>()
		def result,url
		url="/drugs/saveavailability.gsp"
		def mode=params.mode
		
		def drug = Drugs.findAll()
		log.info(drug)
		
		def drugId = params.drugId
		def drugName=params.drugName
		log.info(drugName)
		def status=params.status
		log.info(status)
		def discount=params.discount
		log.info(discount)
		
		def pharmacyObj= Pharmacy.findByEmail(session.user)
		log.info(pharmacyObj)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		
		log.info("************")
		log.info(isValid(drugId))
		log.info(isValid(drugName))
		log.info(isValid(status))
		log.info("************")
		
		if( ! (isValid(drugId) && isValid(drugName) && isValid(status) && isValid(mode) && (username !=null || username!="" ))){
		 redirect(uri: "/user/pharmacyDashboard")
			return
		}
		
			if( ! (isValid(drugId) && isValid(drugName)&& isValid(status))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
	
			}
			else {
				log.info("in else block")
				result=availabilityService.save(drugId,drugName,status,discount,pharmacyObj)
				responseData.put("uname", pharmacyObj)
				responseData.put("drug", drug)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(result.get("status") == "success"){
					//url="/drugs/savedrugs.gsp"
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}
			}
				if(mode=="mobile"){
					render responseData as JSON
					return
				}
				[result:responseData]
	}
	
	
	@Transactional
	def updateavailability() {
		log.info("Pharmacy Controller updateavailability action")
		def responseData = new HashMap<>()
		def result,url
		url="/drugs/updateavailability.gsp"
		def mode=params.mode
		
		def drug = Drugs.findAll()
		log.info(drug)
		
		def drugId = params.drugId
		def drugName=params.drugName
		log.info(drugName)
		def status=params.status
		log.info(status)
		def discount=params.discount
		log.info(discount)
		
		def pharmacyObj= Pharmacy.findByEmail(session.user)
		log.info(pharmacyObj)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/pharmacyLogin1")
		 return
		}
		
		log.info("************")
		log.info(isValid(drugId))
		log.info(isValid(drugName))
		log.info(isValid(status))
		log.info("************")
		
		if( ! (isValid(drugId) && isValid(drugName) && isValid(status) && isValid(mode) && (username !=null || username!="" ))){
		 redirect(uri: "/user/pharmacyDashboard")
			return
		}
		
			if( ! (isValid(drugId) && isValid(drugName)&& isValid(status))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
	
			}
			else {
				log.info("in else block")
				result=availabilityService.update(drugId,drugName,status,discount,pharmacyObj)
				responseData.put("uname", pharmacyObj)
				responseData.put("drug", drug)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(result.get("status") == "success"){
					//url="/drugs/savedrugs.gsp"
					responseData.put(getMessages('default.message.label'),result.getAt("message"))
					responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}
			}
				if(mode=="mobile"){
					render responseData as JSON
					return
				}
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
			log.info("pharmacy Controller renderPage Action")
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

