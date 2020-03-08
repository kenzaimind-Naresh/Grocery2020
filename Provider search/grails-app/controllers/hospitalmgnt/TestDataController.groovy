package hospitalmgnt
import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
import java.text.SimpleDateFormat
import org.apache.solr.client.solrj.SolrQuery
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.CommonsHttpSolrServer
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.request.QueryRequest
import org.apache.solr.client.solrj.response.QueryResponse
import org.apache.solr.common.SolrDocumentList
import org.apache.solr.common.params.ModifiableSolrParams

@Transactional
class TestDataController {
	def TestDataService
	static transactional=true
	LoginController logincontroller=new LoginController()
		def index(){}
		
		/* Sending TestData data to display gsp page */
	def display(){
		render view:"/testData/display.gsp", model:[testData:TestData.getAll()]
	}
	
	/* deleteTestData gsp page */
	def deleteTestData(){}
	
	/* Sending TestData data to updateTestData gsp page */
	def updateTestData(){
		def TestData=TestData.findByPFirstname(params.id)
		[TestData:TestData]
	}
	
	/* Sending TestData,Patient,Inpatient,DiagnosticTest and user data to createTestData gsp page */
	def createTestData()
	{
		def patient=Patient.getAll()
		def inpat=Inpatient.getAll()
		def TestData=TestData.getAll()
		def Diag=DiagnosticTest.getAll()
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		def responseData = new HashMap<>();
		def patId=new ArrayList()
		for(int i=0;i<patient.size();i++){
				log.info(patient[i].patientId)
				patId.add(patient[i])
						
			}
		for(int i=0;i<inpat.size();i++){
			log.info(inpat[i].patientId)
			patId.add(inpat[i])			
		}
		responseData.put("listId", "Bill")
        responseData.put("diag",Diag)
		responseData.put("pat1",patId)
		responseData.put("test",TestData)
		responseData.put("pat",patient)
		responseData.put("uname",user)
		//responseData.put(getMessages('default.message.label'),"")
		[result:responseData]
		
	}
	
	def testdatalist(){
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		def mode="web"
		def of=0;
		def testdatadata=TestData.list(sort:"id",order:"desc",max: 5, offset: of)
		def totalcount=TestData.findAll().size()
		responseData.put("listId", "outpatientlist1")
		responseData.put("totalcount",totalcount )
		responseData.put("testdatadata", testdatadata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[responseData:responseData]
	   }
	   
	   /*sending user data and outpatient data to offsetlist gsp page*/
	   def offsetlist(){
		log.info("TestDataController offsetlist Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def testdatadata=TestData.list(sort:"id",order:"desc",max: 5, offset: of)
		def totalcount=TestData.findAll().size()
		responseData.put("listId", "outpatientlist1")
		responseData.put("totalcount",totalcount )
		responseData.put("testdatadata", testdatadata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [responseData:responseData]
		}
	   
	   def search(){
		log.info("TestDataController search Action")
		def mode="web"
		def url="/testData/search.gsp"
		def responseData = new HashMap<>()
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		def user= User.findByUsername(session.user)
		responseData.put("user", user)
		responseData.put("listId", "list")
		[responseData:responseData]
		  }
	   
	   def search1(){
		log.info("TestDataController search1 Action")
		def mode="web"
		def url="/testData/search1.gsp"
		def responseData = new HashMap<>()
		def date = params.eDate
		log.info(date)
		def username= session.user
		
		if(! (isValid(date))){
		 redirect(uri: "/testData/search")
		 return
		   }
		if(username ==null || username==""){
		 redirect(uri: "/user/login1")
		 return
		   }
		def user= User.findByUsername(session.user)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date strDate = sdf.parse(date);
		log.info(strDate)
		SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		String eDate = sdf1.format(strDate);
		
		log.info(eDate)
		
		int of=0;
		log.info("****************")
			def solrresult=new HashMap<>()
			solrresult=solr(of)
			log.info("^^^^^^^^^^^^^^^^")
			log.info(solrresult.getClass())
			
		/* def msg;
		 if(emp1==null || emp1==[]){
		  msg="Data Not Found"
		 }
		 else{
		  msg=""
		 }*/
		 def emp = TestData.findAll();
		 def user1=new ArrayList()
		  for(int i=0;i<emp.size();i++){
		   user1.add(emp[i].pFirstname)
		  }
		  responseData.put("solrresult", solrresult)
		  responseData.put("offset", of)
		  responseData.put("date", date)
		  responseData.put("emp", emp)
		  //responseData.put("message", msg)
		  //responseData.put("emp1", emp1)
		  responseData.put("user", user)
		  responseData.put("listId", "list")
		  [responseData:responseData]
			}
	   
	   def searchof(){
		   log.info("TestDataController searchof Action")
		   def mode="web"
		   def responseData = new HashMap<>()
		   def date = params.eDate
		   String of=params.offset;
		   log.info(date)
		   log.info(of)
		   def username= session.user
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		   Date strDate = sdf.parse(date);
		   log.info(strDate)
		   SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		   String eDate = sdf1.format(strDate);
		   
		   log.info(eDate)
		   if(! (isValid(date))){
			redirect(uri: "/testData/search")
			return
			  }
		   if(username ==null || username==""){
			redirect(uri: "/user/login1")
			return
			  }
		   def user= User.findByUsername(session.user)
		  
		   
		   log.info("****************" +of)
			   def solrresult=new HashMap<>()
			   solrresult=solr(Integer.parseInt(of))
			   log.info(solrresult)
			   
			/*def msg;
			if(emp1==null || emp1==[]){
			 msg="Data Not Found"
			}
			else{
			 msg=""
			}*/
			def emp = TestData.findAll();
			def user1=new ArrayList()
			 for(int i=0;i<emp.size();i++){
			  user1.add(emp[i].pFirstname)
			 }
			responseData.put("solrresult", solrresult)
			responseData.put("date", date)
			responseData.put("offset", Integer.parseInt(of))
			 responseData.put("emp", emp)
			 //responseData.put("message", msg)
			 //responseData.put("emp1", emp1)
			 responseData.put("user", user)
			 responseData.put("listId", "list")
			 log.info(responseData)
			 [responseData:responseData]
			   }
	
	   public HashMap solr(int of) throws Exception{
		   log.info("TestDataController solr method")
		   def date = params.eDate
		   log.info(date)
		   if(! (isValid(date))){
			redirect(uri: "/testData/search")
			return
			  }
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		   Date strDate = sdf.parse(date);
		   log.info(strDate)
		   SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		   String eDate = sdf1.format(strDate);
		   
		   log.info(eDate)
		   HttpSolrServer solr=null;
		   solr = new HttpSolrServer("http://localhost:8983/solr/testdata");
		   log.info(solr)
		   
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
		   solrobj = new HttpSolrServer("http://localhost:8983/solr/testdata");
		   
		   /*SolrQuery query = (new SolrQuery("date:"+eDate)).setRows(5).select(of);*/
			SolrQuery query = new SolrQuery();
			   query.setQuery("date:"+eDate);
			   query.setStart(of);
			   query.setRows(5);
			   log.info(query)
			   def solrdata=new ArrayList()
			   log.info(solrdata)
			   int numFound;
			   
	   try{
			   QueryResponse response = solrobj.query(query);
			   SolrDocumentList results = response.getResults();
			   log.info(results)
				numFound = results.getNumFound();
			   log.info(numFound)
			  
			   for (int i = 0; i < results.size(); i++) {
				   solrdata.add(results.get(i))
			   }
			   
	   }
	   catch(Exception e){
	   }
	   def data = new HashMap<>()
	   data.put("size", numFound)
	   data.put("solrdata", solrdata)
	   log.info(data.getClass())
	   log.info(data)
	   return data;
	   }
	   
	@Transactional
	def getdata() {
		log.info("TestData Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def testName=params.testName
		log.info(testName)
		def split=testName.split(" ")
		def testInstance=DiagnosticTest.findByTestName(params.testName)
		log.info(testInstance)
		def res=testInstance.icdCode+"#"+testInstance.rate
		render res
	}
	
	/* To save the data of TestData */
	@Transactional
	def saveTestData() {
		log.info("TestData Controller saveTestData action")
		def responseData = new HashMap<>()
		def result,url
		url="/TestData/saveTestData.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def patientId = params.patientId
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname
		def tax=params.tax
		
		
		def testName,testName1,testName2,testName3,testName4,testName5,testName6,testName7,testName8,testName9,testName0
		def rate,rate1,rate2,rate3,rate4,rate5,rate6,rate7,rate8,rate9,rate0
		def icdCode,icdCode1,icdCode2,icdCode3,icdCode4,icdCode5,icdCode6,icdCode7,icdCode8,icdCode9,icdCode0
		def total,total1,total2,total3,total4,total5,total6,total7,total8,total9,total0
		
		testName1=(params.t1=="" || params.t1==null)? "":params.t1;
		log.info(testName1);
		log.info("LLLLLLLLLLLLLLLLLLLLLL")
		testName2=(params.testName2=="" || params.testName2==null)? "":","+params.testName2;
		testName3=(params.testName3=="" || params.testName3==null)? "":","+params.testName3;
		testName4=(params.testName4=="" || params.testName4==null)? "":","+params.testName4;
		testName5=(params.testName5=="" || params.testName5==null)? "":","+params.testName5;
		testName6=(params.testName6=="" || params.testName6==null)? "":","+params.testName6;
		testName7=(params.testName7=="" || params.testName7==null)? "":","+params.testName7;
		testName8=(params.testName8=="" || params.testName8==null)? "":","+params.testName8;
		testName9=(params.testName9=="" || params.testName9==null)? "":","+params.testName9;
		testName0=(params.testName0=="" || params.testName0==null)? "":","+params.testName0;
		
		rate1=(params.rate1=="" || params.rate1==null)? "":params.rate1;
		rate2=(params.rate2=="" || params.rate2==null)? "":","+params.rate2;
		rate3=(params.rate3=="" || params.rate3==null)? "":","+params.rate3;
		rate4=(params.rate4=="" || params.rate4==null)? "":","+params.rate4;
		rate5=(params.rate5=="" || params.rate5==null)? "":","+params.rate5;
		rate6=(params.rate6=="" || params.rate6==null)? "":","+params.rate6;
		rate7=(params.rate7=="" || params.rate7==null)? "":","+params.rate7;
		rate8=(params.rate8=="" || params.rate8==null)? "":","+params.rate8;
		rate9=(params.rate9=="" || params.rate9==null)? "":","+params.rate9;
		rate0=(params.rate0=="" || params.rate0==null)? "":","+params.rate0;
		
		icdCode1=(params.icdCode1=="" || params.icdCode1==null)? "":params.icdCode1;
		icdCode2=(params.icdCode2=="" || params.icdCode2==null)? "":","+params.icdCode2;
		icdCode3=(params.icdCode3=="" || params.icdCode3==null)? "":","+params.icdCode3;
		icdCode4=(params.icdCode4=="" || params.icdCode4==null)? "":","+params.icdCode4;
		icdCode5=(params.icdCode5=="" || params.icdCode5==null)? "":","+params.icdCode5;
		icdCode6=(params.icdCode6=="" || params.icdCode6==null)? "":","+params.icdCode6;
		icdCode7=(params.icdCode7=="" || params.icdCode7==null)? "":","+params.icdCode7;
		icdCode8=(params.icdCode8=="" || params.icdCode8==null)? "":","+params.icdCode8;
		icdCode9=(params.icdCode9=="" || params.icdCode9==null)? "":","+params.icdCode9;
		icdCode0=(params.icdCode0=="" || params.icdCode0==null)? "":","+params.icdCode0;
		
		total1=(params.total1=="" || params.total1==null)? "":params.total1;
		total2=(params.total2=="" || params.total2==null)? "":","+params.total2;
		total3=(params.total3=="" || params.total3==null)? "":","+params.total3;
		total4=(params.total4=="" || params.total4==null)? "":","+params.total4;
		total5=(params.total5=="" || params.total5==null)? "":","+params.total5;
		total6=(params.total6=="" || params.total6==null)? "":","+params.total6;
		total7=(params.total7=="" || params.total7==null)? "":","+params.total7;
		total8=(params.total8=="" || params.total8==null)? "":","+params.total8;
		total9=(params.total9=="" || params.total9==null)? "":","+params.total9;
		total0=(params.total0=="" || params.total0==null)? "":","+params.total0;
		
		
		testName=testName1+testName2+testName3+testName4+testName5+testName6+testName7+testName8+testName9+testName0
		rate=rate1+rate2+rate3+rate4+rate5+rate6+rate7+rate8+rate9+rate0
		icdCode=icdCode1+icdCode2+icdCode3+icdCode4+icdCode5+icdCode6+icdCode7+icdCode8+icdCode9+icdCode0
		total=total1+total2+total3+total4+total5+total6+total7+total8+total9+total0
		
		log.info(testName1)
		log.info(testName2)
		
		def grandTotal=params.grandTotal
		def pMode=params.pMode
		def modifiedBy=params.modifiedBy
		
		
		log.info(mode)
		log.info(myaction)
		log.info(patientId)
		log.info(pFirstname)
		log.info(pLastname)
		log.info(icdCode)
		log.info(testName)
		log.info(tax)
		log.info(rate)
		log.info(total)
		log.info(grandTotal)
		log.info(pMode)
		log.info(modifiedBy)
	
        def user= User.findByUsername(session.user)
        def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		SimpleDateFormat format3=new SimpleDateFormat("dd/MM/yyyy");
		String dt1=format3.format(new Date());
		def date=dt1
		
		if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname)&& isValid(icdCode) && isValid(testName)&& isValid(tax)&& isValid(rate)&& isValid(total)
						&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
         redirect(uri: "/user/userDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname) && isValid(icdCode)&& isValid(testName)&& isValid(tax)&& isValid(rate)&& isValid(total)
						&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def res1
				
				 res1=TestDataService.save(patientId,pFirstname,pLastname,icdCode,testName,tax,rate,total,grandTotal,pMode,modifiedBy,date)
				 responseData.put("TdInstance1", res1.getAt("TestDataInstance"))
				/* responseData.put("TdInstance2", null)
				 responseData.put("TdInstance3", null)
				 responseData.put("TdInstance4", null)
				 responseData.put("TdInstance5", null)
				 responseData.put("TdInstance6", null)
				 responseData.put("TdInstance7", null)
				 responseData.put("TdInstance8", null)
				 responseData.put("TdInstance9", null)
				 responseData.put("TdInstance0", null)
				
				if(testName2!="" && rate2!="" && total2!="" && icdCode2!=""){
					res2=TestDataService.save(patientId,pFirstname,pLastname,icdCode2,testName2,tax,rate2,total2,grandTotal,pMode,modifiedBy,date)
					responseData.put("TdInstance2", res2.getAt("TestDataInstance"))
					}
					
					if(testName3!="" && rate3!="" && total3!="" && icdCode3!=""){
					 res3=TestDataService.save(patientId,pFirstname,pLastname,icdCode3,testName3,tax,rate3,total3,grandTotal,pMode,modifiedBy,date)
					 responseData.put("TdInstance3", res3.getAt("TestDataInstance"))
					 }
					if(testName4!="" && rate4!="" && total4!="" && icdCode4!=""){
					 res4=TestDataService.save(patientId,pFirstname,pLastname,icdCode4,testName4,tax,rate4,total4,grandTotal,pMode,modifiedBy,date)
					 responseData.put("TdInstance4", res4.getAt("TestDataInstance"))
					 }
					if(testName5!="" && rate5!="" && total5!="" && icdCode5!=""){
					 res5=TestDataService.save(patientId,pFirstname,pLastname,icdCode5,testName5,tax,rate5,total5,grandTotal,pMode,modifiedBy,date)
					 responseData.put("TdInstance5", res5.getAt("TestDataInstance"))
					 }
					if(testName6!="" && rate6!="" && total6!="" && icdCode6!=""){
						res6=TestDataService.save(patientId,pFirstname,pLastname,icdCode6,testName6,tax,rate6,total6,grandTotal,pMode,modifiedBy,date)
						responseData.put("TdInstance6", res6.getAt("TestDataInstance"))
						}
					if(testName7!="" && rate7!="" && total7!="" && icdCode7!=""){
						res7=TestDataService.save(patientId,pFirstname,pLastname,icdCode7,testName7,tax,rate7,total7,grandTotal,pMode,modifiedBy,date)
						responseData.put("TdInstance7", res7.getAt("TestDataInstance"))
						}
					if(testName8!="" && rate8!="" && total8!="" && icdCode8!=""){
						res8=TestDataService.save(patientId,pFirstname,pLastname,icdCode8,testName8,tax,rate8,total8,grandTotal,pMode,modifiedBy,date)
						responseData.put("TdInstance8", res5.getAt("TestDataInstance"))
						}
					if(testName9!="" && rate9!="" && total9!="" && icdCode9!=""){
						res9=TestDataService.save(patientId,pFirstname,pLastname,icdCode9,testName9,tax,rate9,total9,grandTotal,pMode,modifiedBy,date)
						responseData.put("TdInstance9", res9.getAt("TestDataInstance"))
						}
					if(testName0!="" && rate0!="" && total0!="" && icdCode0!=""){
						res0=TestDataService.save(patientId,pFirstname,pLastname,icdCode0,testName0,tax,rate0,total0,grandTotal,pMode,modifiedBy,date)
						responseData.put("TdInstance0", res0.getAt("TestDataInstance"))
						}*/
				
				
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				responseData.put("TdInstance", res1.getAt("TestDataInstance"))
				responseData.put("Date", res1.getAt("date"))
				result=responseData
				
					
			}
		}
		
		/* To update the data of TestData */
		if(myaction.equals("update")) {
			if( ! (isValid(patientId)&& isValid(pFirstname)&& isValid(pLastname)&& isValid(icdCode) && isValid(testName)&& isValid(tax)&& isValid(rate)&& isValid(total)
						&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=TestDataService.update(patientId,pFirstname,pLastname,icdCode,testName,tax,rate,total,grandTotal,pMode,modifiedBy,date)
			}
		}
		
		/* To delete the data of TestData */
		if(myaction.equals("delete")) {
			result=TestDataService.delete(pFirstname)
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

