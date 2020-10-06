package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON;
import javax.servlet.http.Cookie;

import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;
import java.util.regex.Matcher
import java.util.regex.Pattern

@Transactional
class MerchantController {

	def MerchantService
	def nexmoService
	
	def GroceryController
	TestController testController=new TestController();
	UserController uController=new UserController();
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		log.info("MerchantController index Action")
        params.max = Math.min(max ?: 10, 100)
        respond Merchant.list(params), model:[merchantInstanceCount: Merchant.count()]
    }

    def show(Merchant merchantInstance) {
        respond merchantInstance
		log.info("MerchantController show Action")
    }
	
	

	def showQrcode(Merchant merchantInstance) {
		response.outputStream << merchantInstance.qrcode // write the grocery to the output stream
		response.outputStream.flush()
		}
	
	def dashboard() {
		log.info("MerchantController dashboard Action")
		params.max = Math.min(params.max ? params.int('max') : 8, 100)
		respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
			
	}
	
	def updateprofile(){
		log.info("MerchantController enter updateprofile Action")
		def responseData = new HashMap<>()
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
				username=cookie.getValue()
		
			}
		 }
		}
		log.info("**************** "+username)
		
	
		if(username.equals(null) ||username.equals("") ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def data=Merchant.findByEmail(username)
		log.info("merchant data"+data)
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("data",data)
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	def contact1(){
		
		log.info("MerchantController contact1 Action")
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
		 
			}
		 }
		}
		log.info("**************** "+username)
		
		
		//def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		def mode="web"
		def of=0;
		def contact1=Admin.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(contact1)
		def totalcount=Admin.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "contact1")
		responseData.put("totalcount",totalcount )
		responseData.put("uname",user)
		responseData.put("contact1", contact1)
		responseData.put("offset", of)
		[result:responseData]
		
	}
	
	 def proceedtoPaytm(){
		 
		 log.info("MerchantController proceedtoPaytm Action")
		 
		 def user= User.findByUserName(session.user)
		 log.info(user)
		 
		 def userNameId = user.id
		 
/*		 def c = Cart.createCriteria()
		 def results = c.list {
			 eq("usercartId",userNameId)
			 maxResults(1)
			 order("usercartId","desc")
		 }*/
		 def c=Cart.findAllByUsercartId(userNameId,[max: 1,sort:"cartId",order: "desc"])
		 log.info("cart instace"+c[0])
		 
		 def custid=user.id
		 log.info(custid)
		 def mobile=user.mobileNumber
		 log.info(mobile)
		 def cEmail=user.email
		 log.info(cEmail)
		 def tranAmount=c[0].tamount
		 def cartId=c[0].cartId
		 log.info("txn amount to pay "+tranAmount)
		 
		 TestController testController=new TestController();
		 
		 testController.paytmpay2(custid,mobile,cEmail,tranAmount,cartId)
		 return
		 
	 }
	
	
	def merchant(){
		log.info("MerchantController list Action")
		def responseData = new HashMap<>();
			def of=0;
			def newRestdata=Newmerchant.list(sort:"id",order:"desc",max: 5, offset: of)
			log.info(newRestdata)
			def totalcount=Newmerchant.findAll().size()
			log.info(totalcount)
			responseData.put("totalcount",totalcount )
			responseData.put("newRestdata", newRestdata)
			responseData.put("offset", of)
			[result:responseData]
		}

	def offsetlist(){
		log.info("Merchant crontroller merchantdata")
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
		
			}
		 }
		}
		log.info("**************** "+username)
		
		//def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def shopName=params.shopName
		def responseData = new HashMap<>()
		def pat1=Grocery.getAll()
		def dissheet=merchantdata.findAllBygroceryId(params.groceryId)
		def user= User.findByUserName(session.user)
		
		
		def mode="web"
		def of=params.offset;
		def dischargedata=merchantdata.findAllBygroceryId(params.groceryId,[max: 5,sort:"createdDate",order: "desc", offset: of])
		def totalcount=merchantdata.findAll().size()
		def patId=new ArrayList()
		def patIdd=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].groceryId)
			
		}
	for(int i=0;i<pat1.size();i++){
		
					patIdd.add(pat1[i].groceryId)
					
				}
	
	if(dischargedata!=[]){
		responseData.put("listId", "merchantdata")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", dischargedata)
		responseData.put("offset", Integer.parseInt(of))
		responseData.put("dissheet",dissheet)
		responseData.put("pat1",patId)
		responseData.put("pat2",patIdd)
		
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
	}else {
	responseData.put("listId", "merchantdata")
	responseData.put("totalcount",totalcount )
	responseData.put("merchantdata", dischargedata)
	responseData.put("offset", Integer.parseInt(of))
	responseData.put("dissheet",dissheet)
	responseData.put("pat1",patId)
	responseData.put("pat2",patIdd)
		responseData.put("uname",user)
		responseData.put(getMessages('default.message.label'),"Data not found")
	}
		
		[result:responseData]

		
	}
	def criteria(){
		def criteria = Merchant.createCriteria()
		def test = Merchant.list().unique{ it.city}
		log.info("Merchant controller criteria action "+test)
		def merchant = criteria.list() {
				projections {
				distinct("city")
			}
		
		}
	       log.info(merchant)
		return merchant
	}

	/*	
	@Transactional
	def saveupdate() {
		log.info("doctor Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		def mode=params.mode
		log.info(mode)
		def shopId = params.shopId
		log.info(shopId)
		def shopName = params.shopName
		log.info(shopName)
		def firstName = params.firstName
		log.info(firstName)
		def lastName=params.lastName
		log.info(lastName)
		def email=params.email
		log.info(email)
		def mobileNumber=params.mobileNumber
		log.info(mobileNumber)
		def address=params.address
		log.info(address)
		def city = params.city
		log.info(city)
		
		def zipCode=params.zipCode
		log.info(zipCode)
		
		
		
		
		if(mode == "mobile"){
			
			if( ! (isValid(shopId)&& isValid(shopName) && isValid(firstName) && isValid(lastName)&& isValid(email)&& isValid(mobileNumber)
				&& isValid(address)&& isValid(city)&& isValid(zipCode))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=DoctorService.update(shopId,shopName,firstName,lastName,email,mobileNumber,address,city,zipCode)
		url="/doctor/saveupdate.gsp"
		responseData.put("uname",Merchant.findByShopId(shopId).firstName)
		responseData.put("message", "Your Profile Updated Successfully")
		//responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
	if(mode=="web")    {
		def user= Merchant.findByEmail(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		else {
			result=MerchantService.update(shopId,shopName,firstName,lastName,email,mobileNumber,address,city,zipCode)
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

*/
	def saveupdate() {
		log.info("MerchantController saveupdate Action")
		def responseData = new HashMap<>()
	def result,url
	def mode=params.mode
	log.info(mode)
	/*def shopId=params.shopId
	log.info(shopId)
	def shopName=params.shopName
	log.info(shopName)*/
	def firstName=params.firstName
	log.info(firstName)
	def lastName=params.lastName
	log.info(lastName)
	def email=params.email
	log.info(email)
	def password=params.password
	log.info(password)
	def mobileNumber=params.mobileNumber
	log.info(mobileNumber)
	def address=params.address
	log.info(address)
	def city=params.city
	log.info(city)
	def street=params.street
	log.info(street)
	def state=params.state
	log.info(state)
	def zipCode=params.zipCode
	log.info(zipCode)
	
	def modifiedBy=params.modifiedBy
	log.info(modifiedBy)
	
	if(mode == "mobile"){
		
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(email)&&isValid(password)
			&&isValid(mobileNumber)&&isValid(address)&&isValid(city)&&isValid(street)&&isValid(state)&&isValid(zipCode)&&isValid(modifiedBy))){
	responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
	responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	renderPage(mode, url, responseData)
	return
}
else {
	result=MerchantService.update(firstName,lastName,email,password,mobileNumber,address,city,street,state,zipCode,modifiedBy)
	url="/merchant/updateprofile.gsp"
	responseData.put("uname",Merchant.findByEmail(email).firstName)
	responseData.put("message", "Your Profile Updated Successfully")
	responseData.put(getMessages("default.status.label"),"200")
	
}
render responseData as JSON
return
	}
	
if(mode=="web")	{
	def user= Merchant.findByEmail(session.user)
	def username= session.user
	if(username ==null || username=="" ){
	 redirect(uri: "/merchant/login")
	 return
	}
	
	
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(email)&&isValid(password)
			&&isValid(mobileNumber)&&isValid(address)&&isValid(city)&&isValid(street)&&isValid(state)&&isValid(zipCode)&&isValid(modifiedBy))){
				redirect(uri: "/merchant/ldashboard")
		return
	}
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(email)&&isValid(password)
			&&isValid(mobileNumber)&&isValid(address)&&isValid(city)&&isValid(street)&&isValid(state)&&isValid(zipCode)&&isValid(modifiedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
	result=MerchantService.update(firstName,lastName,email,password,mobileNumber,address,city,street,state,zipCode,modifiedBy)
	url="/merchant/updateprofile.gsp"
		responseData.put("uname",user)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}

[result:responseData]
}
	
			
		}
		
		def merchantdata(){
			log.info("Merchant Controller merchantdata action")
			def responseData = new HashMap<>()
			def result,url
			url="/merchant/merchantdata.gsp"
			def mode=params.mode
			def merchantId = params.merchantId
			log.info(merchantId)
			def data = Grocery.findAllByMerchantId(merchantId)
			log.info(data.size())
			responseData.put("data", Grocery.list())
			responseData.put("merchantCount", Grocery.count())
			
			[merchant:responseData]
			
			}
		
			def list(){
				log.info("MerchantController list Action")
				def responseData = new HashMap<>();
					def of=0;
					def newRestdata=Newmerchant.list(sort:"id",order:"desc",max: 5, offset: of)
					log.info(newRestdata)
					def totalcount=Newmerchant.findAll().size()
					log.info(totalcount)
					responseData.put("totalcount",totalcount )
					responseData.put("newRestdata", newRestdata)
					responseData.put("offset", of)
					[result:responseData]
				}
		
	def changepass={
		log.info("MerchantController changepass Action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
		 
			}
		 }
		}
		log.info("**************** "+username)
		
		
		//def userName= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	
	
	def search(){
		
		log.info("MerchantController search Action")
		def data = new HashMap<>()
		def grocery=Grocery.getAll()
		def groceryName=params.groceryName
		
		
	
	def emp=Grocery.findAllByGroceryName(groceryName)
			def msg;
			if(emp==null || emp==[]){
				msg="Data Not Found"
			}
			else{
				msg=""
				
			}
			def user=new ArrayList()
				for(int i=0;i<emp.size();i++){
					user.add(emp[i].groceryName)
				}
			
				data.put("message", msg)
				data.put("emp",emp)
				data.put("grocery",grocery)
				[result:data]
				
	}
	
		
	def passwordSave2(){
		log.info("Merchant controller passwordSave2 action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
		  
			}
		}
		 }
		log.info("**************** "+username)
		
		
		//def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/merchant/login")
			return
		   }
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def password=params.password
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def result,res
		log.info(password)
		log.info(newPwd)
		log.info(confirmPwd)
		
		
		
		if(mode=="web"){
	
		if((username !=null || username!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/merchant/ldashboard")
			return false
		}else{
		
		def url="/merchant/passwordSave2.gsp"
		def user= Merchant.findByEmail(username)
		log.info(user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=MerchantService.passwordSave2(username,newPwd)
		if(result.get("status") == "success"){
			// flash.message = "Profile Updated Successfully"
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		}
		 }
		 responseData.put("uname",user)
		 [result:responseData]
	   }
		}
	}
	
	def passwordSave3(){
		log.info("MerchantControllerr passwordSave3 action")
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def result,res
		log.info("newPwd "+newPwd)
		log.info("confirmPwd "+confirmPwd)
		
		
		if(mode=="web"){
	
		//def user= User.findByUserName(params.username)
		//log.info(user)
		
		def user= Merchant.findByEmail(params.email)
		log.info("merchant existed in db "+user)
		
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=MerchantService.passwordSave3(params.email,newPwd)
		if(result.get("status") == "success"){
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			
		}
		else{
				responseData.put(getMessages('default.message.label'),"Something went wrong")
			responseData.put(getMessages('default.status.label'),"error")
		}
		 }
		
		 [result:responseData]
	   
		}
	}
	
	
	def location(){
		log.info("MerchantController location Action")
		
		
	}
	def getStreetData(){
		log.info("MerchantController getStreetData Action")
		def city=params.city
		List<String> stData=new ArrayList<String>();
		log.info(city);
		def merObjects=Merchant.findAllByCity(city);
		log.info(merObjects);
		log.info(merObjects.size());
		for(int i=0;i<merObjects.size();i++){
			log.info(merObjects[i].street)
			stData.add(merObjects[i].street);
		}
		log.info(stData);
		render stData
		
		
	}
	
	def location1(){
		log.info("MerchantController location1 Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def city=params.city
		def street=params.street
		def mode=params.mode
		def merchantshopName
		log.info(mode)
		Cookie cookie=null
		//cookies;
		def username
		Cookie[] cookies=request.getCookies();
		log.info("cookies :"+cookies.toString())
		log.info("cookies :"+!cookies.toString().equals("null"))
		log.info("cookies :"+cookies==null)
		log.info("cookies :"+cookies.toString().equals("null"))
		log.info("cookies :"+cookies.equals("null"))
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("userKey")){
				if(!(cookie.getValue().equals("null") ||cookie.getValue().equals(""))){
				username=cookie.getValue()}
			}
			if(cookie.getName().equals("merchantName")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			merchantshopName=cookie.getValue()
			log.info("in cookie   " +merchantshopName)
		}
		 }
		}
		log.info("**************** "+username)
		log.info("**************user* "+session.user)
		if(username ==null || username.toString().equals("null") ||username=="" ){
			//redirect uri: ("/user/userdashboard")
			//forward controller: "user", action: "userdashboard"
			log.info("loading user from sesion")
			UserController uController=new UserController();
			uController.loadCookie();
			
			
				username= session.user
		}
		def user= User.findByUserName(username)
		log.info(user)
		
			def emp=Merchant.findAllByCity(city)
			def msg;
			if(emp==null || emp==[]){
				msg="Data Not Found"
			}
			else{
				msg=""
				
			}
			def user2=new ArrayList()
				for(int i=0;i<emp.size();i++){
					user2.add(emp[i].city)
				}
			
				def emp1=Merchant.findAllByStreet(street)
				def msg1;
				if(emp1==null || emp1==[]){
					msg1="Data Not Found"
				}
				else{
					msg1=""
					
				}
				def user1=new ArrayList()
					for(int i=0;i<emp1.size();i++){
						user1.add(emp1[i].street)
					}
					
				data.put("message", msg)
				data.put("emp",emp)
				data.put("message1", msg1)
				data.put("emp1",emp1)
				data.put("uname",user)
				data.put("merchant",merchant)
				data.put("city",Merchant.list().unique{ it.city})
				data.put("street",Merchant.list().unique{ it.street})
				log.info("UUUUUUUUUU "+data)
				[result:data]
				
		
	}
	
	def searchlocation(){
		
		log.info("MerchantController searchlocation Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def city=params.city
		def street=params.street
		def shopName=params.shopName
		
			
/*		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "user/userlogin1")
		 return
		}*/
		
		//def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		
		
	def emp=Merchant.findAllByCity(city)
			def msg;
			if(emp==null || emp==[]){
				msg="Data Not Found"
			}
			else{
				msg=""
				
			}
			def user2=new ArrayList()
				for(int i=0;i<emp.size();i++){
					user2.add(emp[i].city)
				}		
	def emp1=Merchant.findAllByCityAndShopName(city,shopName)
				def msg1;
				if(emp1==null || emp1==[]){
					msg1="Data Not Found"
				}
				else{
					msg1=""
					
				}
				def user1=new ArrayList()
					for(int i=0;i<emp1.size();i++){
						user1.add(emp1[i].shopName)
					}
					
					
				data.put("listId", "searchlocation")
				data.put("message", msg)
				data.put("emp",emp)
				data.put("message1", msg1)
				data.put("emp1",emp1)
				data.put("uname",user)
				data.put("merchant",merchant)
				data.put("shopName",Merchant.findAllByCity(city))
				[result:data]
		
	}
	
	def searchedmarket(){
		
		log.info("MerchantController searchedmarket Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def shopName=params.shopName
		
		def mode=params.mode
		log.info(mode)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		
		
	def emp=Merchant.findAllByShopName(shopName)
			def msg;
			if(emp==null || emp==[]){
				msg="Data Not Found"
			}
			else{
				msg=""
				
			}
			def user2=new ArrayList()
				for(int i=0;i<emp.size();i++){
					user2.add(emp[i].shopName)
				}
					
					
				data.put("listId", "searchlocation")
				data.put("message", msg)
				data.put("emp",emp)
				//data.put("message1", msg1)
				//data.put("emp1",emp1)
				data.put("uname",user)
				data.put("merchant",merchant)
				data.put("shopName",Merchant.list().unique{ it.shopName})
				[result:data]
		
	}
	
	
	def logout = {
		log.info("logout  ****")
		
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			 Cookie cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			cookies[i].setValue("")
			cookies[i].setMaxAge(0)
			response.addCookie(cookie)
			}
		}
		 

		
		
		session.invalidate();
		//sessionStorage.clear()
		redirect(action:"location1")
		}
	
	def userdashboard() {
		log.info("MerchantController userdashboard Action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
			}
		 }
		}
		log.info("**************** "+username)
		
		//def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "user/userlogin1")
		 return
		}
		respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
			
	}
	
	
	def login(){ 
	log.info("merchant controller login action")
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			 Cookie cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
				username=cookie.getValue()
			}
		 }
		 }
		
		log.info("**************** "+username)
		if(!(username.equals(null) ||username.equals(""))){
			log.info("set cookie value into session   username"+username)
			session.user=username
			redirect(action:"ldashboard")
		}
			
		
		
	}
	
	
	
	def authenticate  = {
		log.info("MerchantController authenticate Action")
			log.info("#########")
			log.info("params:"+params.email)
			String pattern = ".*[^0-9].*";
			Pattern p = Pattern.compile(pattern);
			Matcher m = p.matcher(params.email);
			boolean b = Pattern.compile(pattern).matcher(params.email).matches();
			log.info("reg test "+b);
			def user
			if(b){
			user = Merchant.findByEmailAndPassword(params.email,params.password)
			log.info("Merchant with email in if "+user)
			}else{
			user = Merchant.findByMobileNumberAndPassword(params.email,params.password)
			log.info("Merchant with mobile number in else "+user)
			}
			
			if(user){
		   def username= user.email
				log.info("merchant in   session"+username)
				Cookie cookie1 = new Cookie("merchantKey", ""+username);
				 cookie1.setMaxAge(60*60*24*365)
				 log.info("***************** ")
				 log.info(cookie1);
	        	 log.info(cookie1.getName());
				 log.info(cookie1.getValue());
				 log.info("***************** ")
				 
				 response.addCookie(cookie1);
				
				session.user=user.email
				redirect(action:"ldashboard")
			}else{
			render text: """<script type="text/javascript">
                    alert("Enter valid Email or Mobile/Password");
                    window.location.href = "/Skeleton/merchant/login";


 </script>""",
			contentType: 'js'
	
			
			
			//flash.message = "sorry, ${params.email}. please try again"
			//redirect(action:"login")
			}
		
			
			
			}
		
	    def ldashboard ={
		log.info("MerchantController ldashboard Action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info(cookies)
		if(!cookies.toString().equals("null")){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("merchantKey")){
				username=cookie.getValue()
		  
			}
		 }
		}
		log.info("**************** "+username)
		
		//def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		
		responseData.put("listId", "ldashboard")
		responseData.put("uname",user)
		responseData.put("data", data)
		
		log.info("************")
		log.info(responseData)

		[result:responseData]
	
	}
	
	def merchantlist(){
		log.info("merchantController merchantlist Action")
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def merchantdata=Merchant.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "merchantlist")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	def forgotpass(){
		
		log.info("merchantController forgotpass Action")
		
	}
	
	def validateCode(){
		
		log.info("merchantController validateCode Action")
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def generator = { String alphabet, int n ->
			new Random().with {
				(1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
			}
		}

		def randomValue= generator( (('A'..'Z')+('0'..'9')+('a'..'z')).join(), 6 )
		log.info("Random String Generator...... "+randomValue)
		
		def email = params.email
		log.info("Merchant email "+email)
		def otpActivation = randomValue
		log.info(" Merchant otp  "+otpActivation)
		def result,res
		
		
		if(mode=="web"){

			
			def url="/merchant/validateCode.gsp"
			def user= Merchant.findByEmail(params.email)
			log.info("merchant existed in db "+user)
			
			//def user= User.findByUserName(params.username)
			//log.info("user existed in db "+user)
			
			if(user){
			result=MerchantService.validateCode(params.email,otpActivation)
			if(result.get("status") == "success"){
				
				/*def smsResult
				log.info("Nexmo SMS Start ....")
				try {
					log.info("mobile number "+user.mobileNumber)
				  smsResult  = nexmoService.sendSms("91"+user.mobileNumber, "Your Verification Code is "+otpActivation+". Do not forward or share this to anyone.","919533000292");
				  log.info("sms result  "+smsResult)
			
			
				}catch (NexmoException e) {
				  // Handle error if failure
				log.info("failed send sms   ....."+e)
				}*/
				
				TestController testController=new TestController();
				String smsresp=testController.sendSMSToUser(user.mobileNumber,"Your Verification Code is "+otpActivation+". Do not forward or share this to anyone.");
				log.info("SMS response"+smsresp);
				
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				responseData.put(getMessages('default.status.label'),result.getAt("status"))
				responseData.put("otp",user.otpActivation)
				responseData.put("uname",params.email)
			
		   }
			}else{
			responseData.put(getMessages('default.message.label'),"User in Not registerd")
			responseData.put(getMessages('default.status.label'),"error")
			responseData.put("uname",params.email)
			
			}
			

		[result:responseData]
		
			}
		}
	
	def newPassword(){
		
		log.info("merchantController newPassword Action")
		
		def responseData = new HashMap<>()
		def otpActivation = params.otp
			log.info("otp from page  "+otpActivation)
			log.info("merchant from page "+params.email)
		
			
			def user= Merchant.findByEmail(params.email)
			log.info("merchant existed in db "+user)
			
		//def user= User.findByUserName(params.username)
		//log.info(user)
		
		
		responseData.put(getMessages('default.message.label')," New Password Created Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	

	
    def create() {
		log.info("MerchantController create Action")
        respond new Merchant(params)
    }
	
    @Transactional
    def save(Merchant merchantInstance) {
		log.info("MerchantController save Action")
        if (merchantInstance == null) {
            notFound()
            return
        }

		log.info(merchantInstance.mobileNumber)
		log.info(merchantInstance.shopId)
		log.info(merchantInstance.email)
		
		def instance=Merchant.findByShopId(merchantInstance.shopId);
		def instance2=Merchant.findByMobileNumber(merchantInstance.mobileNumber);
		def instance3=Merchant.findByEmail(merchantInstance.email);
		log.info("shopid check "+instance)
		log.info("mobile check "+instance2)
		//log.info("mobile check "+instance2.equals("null"))	
		log.info("mobile check "+instance2.equals(null))
		//log.info("mobile check "+instance2==null)+
		log.info("email check "+instance3)
		
		
		def uploadedFile = request.getFile('image')
		merchantInstance.image = uploadedFile.getBytes() //converting the file to bytes
		merchantInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
		merchantInstance.type = uploadedFile.contentType//getting and storing the file type
		merchantInstance.createdDate = new Date()
		merchantInstance.modifiedDate = new Date()
		
		//def uploaded = request.getFile('qrcode')
		//merchantInstance.qrcode = uploaded.getBytes() //converting the file to bytes
		//merchantInstance.name1 = uploaded.originalFilename //getting the file name from the uploaded file
		//merchantInstance.type1 = uploaded.contentType//getting and storing the file type
		
		if(instance.equals(null) && instance2.equals(null) && instance3.equals(null) ){
		log.info("enter into saving part	")
        merchantInstance.save flush:true
		redirect(uri: "/merchant/create")
		flash.message = "Merchant Registration done Successfully"
		
		MerchantService.sendmailUser(merchantInstance.email);
		
		TestController testController=new TestController();
		String smsresp=testController.sendSMSToUser(merchantInstance.mobileNumber,"Dear Sir/Madam, Your Registration was done successfully.....");
		log.info("SMS response"+smsresp);
		
		}
		else if(!instance.equals(null)){
			log.info("existed shopId		")
			redirect(uri: "/merchant/create")
			flash.message = "ShopId Already Exists, Please try with different ShopId"
		}
		else if(!instance2.equals(null)){
			log.info("existed mobile number		")
			redirect(uri: "/merchant/create")
			flash.message = "Mobile Number Already Exists, Please try with different Mobile Number"
		}
		else if(!instance3.equals(null)){
			log.info("existed email		")
			redirect(uri: "/merchant/create")
			flash.message = "Email Already Exists, Please try with different Email"
		}
		else{
			redirect(uri: "/merchant/create")
			flash.message = "Merchant Registration failed, Please try with different credentials"
		}
        
    }

    def edit(Merchant merchantInstance) {
		log.info("MerchantController edit Action")
        respond merchantInstance
    }

    @Transactional
    def update(Merchant merchantInstance) {
		log.info("MerchantController update Atction")
        if (merchantInstance == null) {
            notFound()
            return
        }

        if (merchantInstance.hasErrors()) {
            respond merchantInstance.errors, view:'edit'
            return
        }

        merchantInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Merchant.label', default: 'Merchant'), merchantInstance.id])
                redirect merchantInstance
            }
            '*'{ respond merchantInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Merchant merchantInstance) {
		log.info("MerchantController delete Action")
        if (merchantInstance == null) {
            notFound()
            return
        }

        merchantInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Merchant.label', default: 'Merchant'), merchantInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'merchant.label', default: 'Merchant'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
		
	/* To get the messages */
	def getMessages(code) {
		return message(code : code)
	}
	
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
		}	
	
	def renderPage(mode,url,map){
		log.info("Merchant Controller renderPage Action")
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
