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
import java.util.Date

@Transactional
class MerchantController {

	def MerchantService
	def nexmoService
	def SubscriptionService
	
	def GroceryController
	TestController testController=new TestController();
	UserController uController=new UserController();
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def showImage(Merchant merchantInstance) {
		response.outputStream << merchantInstance.image // write the grocery to the output stream
		response.outputStream.flush()
		}
	
	def updateprofile(){
		log.info("MerchantController enter updateprofile Action")
		def responseData = new HashMap<>()
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		log.info("username: "+username)
		
	
		if(username.equals(null) ||username.equals("") ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def data=Merchant.findByEmail(username)
		log.info("merchant data: "+data)
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("data",data)
		responseData.put("flag","M")
		log.info("***********flag*"+session.flag)
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	def contact1(){
		
		log.info("MerchantController contact1 Action")
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		log.info("username: "+username)
		
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def mode="web"
		def of=0;
		def contact1=Admin.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info("Admin contact: "+contact1)
		def totalcount=Admin.findAll().size()
		log.info("Admin count: "+totalcount)
		responseData.put("listId", "contact1")
		responseData.put("totalcount",totalcount )
		responseData.put("uname",user)
		responseData.put("contact1", contact1)
		responseData.put("offset", of)
		responseData.put("flag", session.flag)
		[result:responseData]
		
	}
	
	 def proceedtoPaytm(){
		 
		 log.info("MerchantController proceedtoPaytm Action")
		 
		 def user= User.findByUserName(session.user)
		 log.info("User data: "+user)
		 
		 def userNameId = user.id

		 def c=Cart.findAllByUsercartId(userNameId,[max: 1,sort:"cartId",order: "desc"])
		 log.info("cart instance"+c[0])
		 
		 def custid=user.id
		 log.info("customerid: "+custid)
		 def mobile=user.mobileNumber
		 log.info("mobile: "+mobile)
		 def cEmail=user.email
		 log.info("customeremail: "+cEmail)
		 def tranAmount=c[0].tamount
		 def cartId=c[0].cartId
		 log.info("txn amount to pay: "+tranAmount)
		 
		 TestController testController=new TestController();
		 
		 testController.paytmpay2(custid,mobile,cEmail,tranAmount,cartId)
		 return
		 
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
	       log.info("merchant criteria: "+merchant)
		return merchant
	}

	def saveupdate() {
		log.info("MerchantController saveupdate Action")
		def responseData = new HashMap<>()
	def result,url
	def mode=params.mode
	log.info("mode: "+mode)

	def firstName=params.firstName
	log.info("firstName: "+firstName)
	def lastName=params.lastName
	log.info("lastName: "+lastName)
	def email=params.email
	log.info("email: "+email)
	def password=params.password
	log.info("password: "+password)
	def mobileNumber=params.mobileNumber
	log.info("mobileNumber: "+mobileNumber)
	def address=params.address
	log.info("address: "+address)
	def city=params.city
	log.info("city: "+city)
	def street=params.street
	log.info("street: "+street)
	def state=params.state
	log.info("state: "+state)
	def zipCode=params.zipCode
	log.info("zipCode: "+zipCode)
	
	def modifiedBy=params.modifiedBy
	log.info("modifiedBy: "+modifiedBy)
	
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
	responseData.put("flag", session.flag)
	
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
		responseData.put("flag", session.flag)
		
	}

[result:responseData]
}
	
			
		}

		
	def changepass={
		log.info("MerchantController changepass Action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		log.info("username: "+username)
				
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		responseData.put("flag", session.flag)
		log.info("responseData: "+responseData)
		[result:responseData]
	}	
		
	def passwordSave2(){
		log.info("Merchant controller passwordSave2 action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		log.info("username: "+username)

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
		log.info("password: "+password)
		log.info("newPwd: "+newPwd)
		log.info("confirmPwd: "+confirmPwd)
		
		
		
		if(mode=="web"){
	
		if((username !=null || username!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/merchant/ldashboard")
			return false
		}else{
		
		def url="/merchant/passwordSave2.gsp"
		def user= Merchant.findByEmail(username)
		log.info("Merchant data: "+user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=MerchantService.passwordSave2(username,newPwd)
		if(result.get("status") == "success"){
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		}
		 }
		 responseData.put("uname",user)
		 responseData.put("flag", session.flag)
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

	def getStreetData(){
		log.info("MerchantController getStreetData Action")
		def city=params.city
		List<String> stData=new ArrayList<String>();
		log.info("city: "+city);
		def merObjects=Merchant.findAllByCity(city);
		log.info("merObjects: "+merObjects);
		log.info(merObjects.size());
		for(int i=0;i<merObjects.size();i++){
			log.info("street from merObjects: "+merObjects[i].street)
			stData.add(merObjects[i].street);
		}
		log.info("Street data in list: "+stData);
		render stData
		
		
	}
	
	def getCityData(){
		log.info("MerchantController getCityData Action")
		def city=params.city
		List<String> cityData=new ArrayList<String>();
		log.info("city: "+city);
		def merObjects=Merchant.findAllByCity(city);
		log.info("merObjects  "+merObjects);
		for(int i=0;i<merObjects.size();i++){
			log.info("city from merObjects: "+merObjects[i].city)
			cityData.add(merObjects[i].city);
		}
		log.info("cityData in list: "+cityData)
		render cityData
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
			if(cookie.getName().equals("mid")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			merchantshopName=cookie.getValue()
			log.info("in cookie   " +merchantshopName)
		}
		 }
		}
		log.info("username: "+username)
		log.info("user from session: "+session.user)
		if(username ==null || username.toString().equals("null") ||username=="" ){
			log.info("loading user from sesion")
			UserController uController=new UserController();
			uController.loadCookie();
			
			
				username= session.user
		}
		def user= User.findByUserName(username)
		log.info("User data: "+user)
		
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
				data.put("flag", session.flag)
				log.info("data: "+data)
				[result:data]
				
		
	}
	
	def searchlocation(){
		
		log.info("MerchantController searchlocation Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		log.info("merchantData: "+merchant)
		
		def getCity = session.getAttribute("cityName")
		log.info("getCity****"+getCity)
		def getShop = session.getAttribute("mid")
		log.info("getShop******"+getShop)
		def  location = Merchant.findAllByCityAndId(getCity,getShop)
		log.info("location*******"+location)
		
		def city=params.city?params.city:getCity
		log.info("city selected  "+city);
		session.setAttribute("cityName",city)
		def street=params.street
		def shopName=params.shopName
		
		
		def mode=params.mode
		log.info("mode "+mode)
		def user= User.findByUserName(session.user)
		log.info("user "+user)
		
		def emp=Merchant.findAllByCity(city)
		log.info("emp "+emp)
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
				def cityName = user2[0]
				log.info("CityName*****"+cityName)
				
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
				data.put("location", "location")
				data.put("shopName",Merchant.findAllByCity(city))
				data.put("flag", session.flag)
				[result:data]
		
	}
	
	def searchedmarket(){
		
		log.info("MerchantController searchedmarket Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def shopName=params.shopName
		log.info("shopName "+shopName)
		def city =session.getAttribute("cityName")
		def mode=params.mode
		log.info("city name"+city)
		
		def user= User.findByUserName(session.user)
		log.info("User data: "+user)
		
		
		def emp=Merchant.findAllByCityAndShopName(city,shopName)
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
				data.put("uname",user)
				data.put("merchant",merchant)
				data.put("shopName",Merchant.list().unique{ it.shopName})
				data.put("flag", session.flag)
				[result:data]
		
	}
	
	
	def logout = {
		log.info("logout  ****")
		
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		redirect(action:"login")
		}
	
	def login(){ 
	log.info("merchant controller login action")
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		
		log.info("username: "+username)
		if(!(username.equals(null) ||username.equals(""))){
			log.info("set cookie value into session   username"+username)
			session.user=username
			redirect(action:"merchantdashboard")
		}
					
	}
	
	
	
	def authenticate() throws Exception{
		log.info("MerchantController authenticate Action")
			log.info("email params:"+params.email)
			log.info("mobile params:"+params.mobileNumber)
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
				log.info("merchant in session: "+username)
				Cookie cookie1 = new Cookie("merchantKey", ""+username);
				 cookie1.setMaxAge(60*60*24*365)
				 log.info("cookie1: "+cookie1);
	        	 log.info("Name: "+cookie1.getName());
				 log.info("Value: "+cookie1.getValue());
				 
				 response.addCookie(cookie1);
				
				session.user=user.email
				session.flag="M"
				//redirect(action:"ldashboard")
			}else{
			render text: """<script type="text/javascript">
                    alert("Enter valid Email/Mobile or Password");
                    window.location.href = "/Skeleton/merchant/login";
					</script>""",
			contentType: 'js'

			}
			def merchantId = user.id
			def check = Subscription.findAllByMerchantId(merchantId,[max: 1,sort:"createdDate",order: "desc"])
			log.info("package data: "+check[0])
			
			if(check == null || check == ""){
				redirect(uri: "/merchant/ldashboard")
				return
				
			}
			else{
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				def expDate = check[0].expiryDate
				log.info("Expiry Date: "+expDate)
				Date expiryDate=sdf.parse(expDate);
				
				//Calendar calendar = Calendar.getInstance();
				Date date = new Date();
				log.info("Current Date: "+date)
				log.info("expiry date: "+expiryDate)
			
				
				String currentdate = sdf.format(date);
				//log.info("Formatted Current Date: "+currentdate);
				Date todaydate=sdf.parse(currentdate);
				log.info("Formatted Current Date: "+todaydate);
				log.info(expiryDate.compareTo(todaydate)>=0);
				if(expiryDate.compareTo(todaydate)>=0){
					log.info("You still have your package validity")
					render text: """<script type="text/javascript">
	                    window.location.href = "/Skeleton/merchant/ldashboard";
						</script>""",
						contentType: 'js'
				}
				else{
					log.info("Your Package validity has been expired. Please subscribe now.")
					render text: """<script type="text/javascript">
	                    alert("Dear Customer, Your package validity has been expired. Please subscribe now.");
	                    window.location.href = "/Skeleton/package/packview";
						</script>""",
						contentType: 'js'
				}
			}
			
			}
	
		def merchanthome(){
			
			log.info("MerchantController merchanthome action")
			def responseData = new HashMap<>()
			def result
			def user= Merchant.findByEmail(session.user)
			log.info("Merchant data: "+user)
			
			responseData.put("uname",user)
			log.info("responseData: "+responseData)
	
			[result:responseData]
			
		}	
	
	    def ldashboard ={
		log.info("MerchantController ldashboard Action")
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
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
		log.info("username: "+username)
		
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery data: "+data)
		def expiryCheck = Subscription.findAllByMerchantId(merchantId,[max: 1,sort:"createdDate",order: "desc"])
		log.info("Package Validity Check: "+expiryCheck)
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		def expDate = expiryCheck[0].expiryDate
		log.info("Expiry Date: "+expDate)
		Date expiryDate=sdf.parse(expDate);
		
		//Calendar calendar = Calendar.getInstance();
		Date date = new Date();
		log.info("Current Date: "+date)
		log.info("expiry date: "+expiryDate)
	
		
		String currentdate = sdf.format(date);
		//log.info("Formatted Current Date: "+currentdate);
		Date todaydate=sdf.parse(currentdate);
		log.info("Formatted Current Date: "+todaydate);
		log.info(expiryDate.compareTo(todaydate)>=0)
		
		responseData.put("listId", "ldashboard")
		responseData.put("uname",user)
		responseData.put("data", data)
		responseData.put("expiryCheck", expiryCheck)
		responseData.put("flag", session.flag)
		
		log.info("responseData: "+responseData)

		[result:responseData]
	
	}
		
	def	merchantdashboard(){
		log.info("merchantController merchantdashboard Action")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def merchantId = user.id
		def expiryCheck = Subscription.findAllByMerchantId(merchantId,[max: 1,sort:"createdDate",order: "desc"])
		log.info("Package Validity Check: "+expiryCheck)
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		def expDate = expiryCheck[0].expiryDate
		log.info("Expiry Date: "+expDate)
		Date expiryDate=sdf.parse(expDate);
		
		Date date = new Date();
		log.info("Current Date: "+date)
		log.info("expiry date: "+expiryDate)
	
		
		String currentdate = sdf.format(date);
		Date todaydate=sdf.parse(currentdate);
		log.info("Formatted Current Date: "+todaydate);
		log.info(expiryDate.compareTo(todaydate)>=0);
		if(expiryDate.compareTo(todaydate)>=0){
			log.info("You still have your package validity")
			render text: """<script type="text/javascript">
	                    window.location.href = "/Skeleton/merchant/ldashboard";
						</script>""",
				contentType: 'js'
		}
		else{
			log.info("Your Package validity has been expired. Please subscribe now.")
			render text: """<script type="text/javascript">
	                    alert("Dear Customer, Your package validity has been expired. Please subscribe now.");
	                    window.location.href = "/Skeleton/package/packview";
						</script>""",
				contentType: 'js'
		}
		responseData.put("listId", "mdashboard")
		responseData.put("uname",user)
		responseData.put("expiryCheck", expiryCheck)
		responseData.put("flag", session.flag)
		
		log.info("responseData: "+responseData)

		[result:responseData]
	}
	
	def checkpack(){
		
		log.info("merchantController checkpack Action")
		log.info("merchantController totalstock Action")
		def responseData=new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		
		def user = Merchant.findByEmail(session.user)
		log.info("MerchantData: "+user)
		
		def merchantId = user.id
		def expiryCheck = Subscription.findAllByMerchantId(merchantId,[max: 1,sort:"createdDate",order: "desc"])
		log.info("Package Validity Check: "+expiryCheck)
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		def expDate = expiryCheck[0].expiryDate
		log.info("Expiry Date: "+expDate)
		Date expiryDate=sdf.parse(expDate);
		
		Date date = new Date();
		log.info("Current Date: "+date)
		log.info("expiry date: "+expiryDate)
		
		String currentdate = sdf.format(date);
		Date todaydate=sdf.parse(currentdate);
		log.info("Formatted Current Date: "+todaydate);

		log.info(expiryDate.compareTo(todaydate)>=0);
		if(expiryDate.compareTo(todaydate)>=0){
			log.info("You still have your package validity")
			render text: """<script type="text/javascript">
	                    window.location.href = "/Skeleton/merchant/totalstock";
						</script>""",
				contentType: 'js'
		}
		else{
			log.info("Your Package validity has been expired. Please subscribe now.")
			render text: """<script type="text/javascript">
	                    alert("Dear Customer, Your package validity has been expired. Please subscribe now.");
	                    window.location.href = "/Skeleton/package/packview";
						</script>""",
				contentType: 'js'
		}
		responseData.put("listId", "totalstock")
		responseData.put("uname", user)
		responseData.put("expiryCheck", expiryCheck)
		responseData.put("flag", session.flag)
		
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	def totalstock(){
		
		log.info("merchantController totalstock Action")
		def responseData=new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		
		def user = Merchant.findByEmail(session.user)
		log.info("MerchantData: "+user)
		
		def merchantId = user.id
		def expiryCheck = Subscription.findAllByMerchantId(merchantId,[max: 1,sort:"createdDate",order: "desc"])
		log.info("Package Validity Check: "+expiryCheck)
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		def expDate = expiryCheck[0].expiryDate
		log.info("Expiry Date: "+expDate)
		Date expiryDate=sdf.parse(expDate);
		
		Date date = new Date();
		log.info("Current Date: "+date)
		log.info("expiry date: "+expiryDate)
		
		String currentdate = sdf.format(date);
		Date todaydate=sdf.parse(currentdate);
		log.info("Formatted Current Date: "+todaydate);

		responseData.put("listId", "totalstock")
		responseData.put("uname", user)
		responseData.put("expiryCheck", expiryCheck)
		responseData.put("flag", session.flag)
		
		log.info("responseData: "+responseData)
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
		log.info("Random String Generator: "+randomValue)
		
		def email = params.email
		log.info("Merchant email "+email)
		def otpActivation = randomValue
		log.info(" Merchant otp  "+otpActivation)
		def result,res
		
		
		if(mode=="web"){

			
			def url="/merchant/validateCode.gsp"
			def user= Merchant.findByEmailOrMobileNumber(params.email,email)
			log.info("merchant existed in db "+user)
			
			if(user){
			result=MerchantService.validateCode(params.email,user.mobileNumber,otpActivation)
			if(result.get("status") == "success"){
				
				TestController testController=new TestController();
				String smsresp=testController.sendSMSToUser(user.mobileNumber,"Your Verification Code is "+otpActivation+". Do not forward or share this to anyone.");
				log.info("SMS response"+smsresp);
				
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				responseData.put(getMessages('default.status.label'),result.getAt("status"))
				responseData.put("otp",user.otpActivation)
				responseData.put("uname",params.email)
				responseData.put("flag", session.flag)
			
		   }
			}else{
			responseData.put(getMessages('default.message.label'),"User in Not registered")
			responseData.put(getMessages('default.status.label'),"error")
			responseData.put("uname",params.email)
			responseData.put("flag", session.flag)
			
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
			
			def user= Merchant.findByEmailOrMobileNumber(params.email,params.email)
			log.info("merchant existed in db "+user)

		responseData.put(getMessages('default.message.label')," New Password Created Successfully")
		responseData.put("uname",user)
		responseData.put("flag", session.flag)
		log.info("responseData: "+responseData)
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

		log.info("mobileNumber: "+merchantInstance.mobileNumber)
		log.info("shopId: "+merchantInstance.shopId)
		log.info("email: "+merchantInstance.email)
		
		def instance=Merchant.findByShopId(merchantInstance.shopId);
		def instance2=Merchant.findByMobileNumber(merchantInstance.mobileNumber);
		def instance3=Merchant.findByEmail(merchantInstance.email);
		log.info("shopid check "+instance)
		log.info("mobile check "+instance2)
		log.info("mobile check "+instance2.equals(null))
		log.info("email check "+instance3)
		
		
		def uploadedFile = request.getFile('image')
		merchantInstance.image = uploadedFile.getBytes() //converting the file to bytes
		merchantInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
		merchantInstance.type = uploadedFile.contentType//getting and storing the file type
		merchantInstance.createdDate = new Date()
		merchantInstance.modifiedDate = new Date()
		
		if(instance.equals(null) && instance2.equals(null) && instance3.equals(null) ){
		log.info("enter into saving part: ")
        merchantInstance.save flush:true
		redirect(uri: "/merchant/create")
		flash.message = "Merchant Registration done successfully"
		
		def packDuration = "15Days"
		def packdata = Package.findByDuration(packDuration)
		log.info("PackageId: "+packdata.packageId)
		log.info("Package createdDate: "+packdata.createdDate)
		
		Calendar calendar = Calendar.getInstance();
		def createdDate = calendar.getTime()
		log.info("Current date: " + createdDate)
		calendar.add(Calendar.DATE, 15)
		Date expiryDate = calendar.getTime()
		//log.info("ExpiryDate with 1month: " + expiryDate)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
		String expdate = sdf.format(expiryDate);
		log.info("Formatted Expiry Date: "+expdate);
		def paymentKey = "abc123"
		log.info("MerchantId: "+merchantInstance.id)
		
		def subscription = SubscriptionService.saveSubcription(packdata.packageId,merchantInstance.id,createdDate,expdate,paymentKey)
		
		MerchantService.sendmailUser(merchantInstance.email);
		
		TestController testController=new TestController();
		String smsresp=testController.sendSMSToUser(merchantInstance.mobileNumber,"Dear Sir/Madam, Your Registration was done successfully.....");
		log.info("SMS response: "+smsresp);
		
		}
		else if(!instance.equals(null)){
			log.info("existed shopId: ")
			redirect(uri: "/merchant/create")
			flash.message = "ShopId Already Exists, Please try with different ShopId"
		}
		else if(!instance2.equals(null)){
			log.info("existed mobile number: ")
			redirect(uri: "/merchant/create")
			flash.message = "Mobile Number Already Exists, Please try with different Mobile Number"
		}
		else if(!instance3.equals(null)){
			log.info("existed email: ")
			redirect(uri: "/merchant/create")
			flash.message = "Email Already Exists, Please try with different Email"
		}
		else{
			redirect(uri: "/merchant/create")
			flash.message = "Merchant Registration failed, Please try with different credentials"
		}
        
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
		log.info("map: "+map.get("status"))
		log.info("url: "+url)
		log.info("mode: "+mode)
		log.info("map: "+map)
		 if(mode == "web" && map.get("status")=="success"){
			 
			render view:url,model:[result:map]
		}
		 else{
			 render map as JSON
		 }
	}
}
