package skeleton


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;

import java.util.HashMap;
import java.util.regex.Matcher
import java.util.regex.Pattern
import javax.servlet.http.Cookie

import grails.converters.JSON;
class UserController {
	def UserService
	def nexmoService
	def mailService
//	CctvrepairController cctv=new CctvrepairController();
//	ComputersrepairController computer=new ComputersrepairController();
	

static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]

def loadCookie(){
	log.info("UserController loadCookie Action")
	log.info("user controller userlogin1")
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
		if(cookie.getName().equals("userKey")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			username=cookie.getValue()
		}
	 }
	}
	log.info("**************** "+username)
return;
}

def userdashboard() {
	
	log.info("UserController userdashboard Action")
	def responseData = new HashMap<>()
	def mode=params.mode
	log.info("username in session"+session.user)
	
	def merchant=Merchant.getAll()
	def city=params.city
	def street=params.street
	
	Cookie cookie=null
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info(cookies)
	if(!cookies.toString().equals("null")){
	for (int i = 0; i < cookies.length; i++) {
		cookie = cookies[i];

		if(cookie.getName().equals("userKey")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			username=cookie.getValue()
		}
		if(username !=null || username.toString()!="null"){
		log.info("set cookie value into session   username"+username)
		session.user=username
		}
	 }
	 }
	if(username ==null || username=="" ){
	 username= session.user
	 
	 log.info("user in   session"+username)
	 Cookie cookie1 = new Cookie("userKey", ""+username);
	  cookie1.setMaxAge(60*60*24*365)
	 cookie1.setPath("/${grailsApplication.metadata['app.name']}/")
	  log.info("***************** ")
	  log.info(cookie1);
	  log.info(cookie1.getName());
	  log.info(cookie1.getValue());
	  log.info("***************** ")
	  
	  response.addCookie(cookie1);
	}


	def user3= User.findByUserName(username)
	log.info(user3)
	
	def emp=Merchant.findAllByCity(city)
	def msg;
	if(emp==null || emp==[]){
		msg="Data Not Found"
	}
	else{
		msg=""
		
	}
	def user=new ArrayList()
		for(int i=0;i<emp.size();i++){
			user.add(emp[i].city)
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
	
	responseData.put("message", msg)
				responseData.put("emp",emp)
				responseData.put("message1", msg1)
				responseData.put("emp1",emp1)
				responseData.put("uname",user3)
				//responseData.put("user3",user3)
				responseData.put("merchant",merchant)
				responseData.put("city",Merchant.list().unique{ it.city})
				responseData.put("street",Merchant.list().unique{ it.street})
				log.info("UUUUUUUUUU "+responseData)
				[result:responseData]
					
}

def marketdata(){
	
	log.info("UserController marketdata action")
	def responseData = new HashMap<>()
	def result,url
	url="/user/marketdata.gsp"
	def mode=params.mode
	session.setAttribute("merchantName","");
	
	/*if(username ==null || username=="" ){
	 redirect uri: ("/user/userlogin1")
	 return
	}*/
	/*def user= User.findByUserName(session.user)
	log.info(user)
	*/
	
	def merchantshopName
	def paramMName=params.merchantshopName
	log.info("merchant name from param "+paramMName);
	
	
	Cookie cookie=null
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info(cookies)
	if(!cookies.toString().equals("null")){
	for (int i = 0; i < cookies.length; i++) {
		cookie = cookies[i];
		if(cookie.getName().equals("merchantName")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			if(paramMName==null){
			merchantshopName=cookie.getValue()
			log.info("in cookie   " +merchantshopName)
			}
		}
		if(cookie.getName().equals("userKey")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			username=cookie.getValue()
		}
		
	 }
	}
	 	if(username ==null || username=="" ){
	 username= session.user
	 }
	
	if((merchantshopName.equals(null) || merchantshopName=="" || merchantshopName.equals("null"))&& paramMName==null){
	merchantshopName= session.getAttribute("merchantName")
	log.info("in session   " +merchantshopName)
	}
	if(merchantshopName.equals(null) || merchantshopName=="" || merchantshopName.equals("null")){
	
	merchantshopName = params.merchantshopName
	log.info(merchantshopName)
	session.setAttribute("merchantName", merchantshopName)
	Cookie cookie1 = new Cookie("merchantName", ""+merchantshopName);
	cookie1.setMaxAge(60*60*24*365)
	response.addCookie(cookie1);
	}
	
	def data = Grocery.findAllByMerchantshopName(merchantshopName)
	log.info(data)
	session.setAttribute("merchantName", merchantshopName)
	def data2 = Grocery.findByMerchantshopName(merchantshopName)
	
	if(data2){
	def merchShop = data2.merchantshopName
	log.info("merchantshopName "+merchShop)
	
	responseData.put("merchShop",merchShop)
	}
	else{
		render text: """<script type="text/javascript">
                    alert("No Stock Available");
                    window.location.href = "/Skeleton/merchant/location1";


		 </script>""",
		contentType: 'js'
	}
	
	def user= User.findByUserName(username)
	log.info("**********username****" +username)
	
	responseData.put("data", data)
	responseData.put("uname",user)
	
	
	//responseData.put("uname",user)
	
	[result:responseData]

}

		def userverification(){
			
			log.info("UserController userverification Action")
			
			
		}
		
		def validateUser(){
			
			log.info("UserController validateUser Action")
			
			def responseData = new HashMap<>()
			def otpActivation = params.otp
			log.info("otp from page  "+otpActivation)
			log.info("user from page "+params.username)
				
			def user= User.findByUserName(params.username) 
			log.info(user)
			
			
			responseData.put(getMessages('default.message.label')," New Password Created Successfully")
			responseData.put("uname",user)
			log.info(responseData)
			[result:responseData]
		}

		def forgotpass(){
		
		log.info("UserController forgotpass Action")
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def generator = { String alphabet, int n ->
			new Random().with {
				(1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
			}
		}

		def randomValue= generator( (('A'..'Z')+('0'..'9')+('a'..'z')).join(), 6 )
		log.info("Random String Generator...... "+randomValue)
		
		def username = params.username
		log.info(username)
		def otpActivation = randomValue
		log.info(otpActivation)
		def result,res
		
		
		if(mode=="web"){

			
			def url="/user/forgotpass.gsp"
			def user= User.findByUserName(params.username)
			log.info("user existed in db "+user)
			
			if(user){
			result=UserService.forgotpass(params.username,user.mobileNumber,user.email,otpActivation)
			if(result.get("status") == "success"){
				
				def smsResult
				log.info("Nexmo SMS Start ....")
				try {
					log.info("mobile number "+user.mobileNumber)
				  smsResult  = nexmoService.sendSms("91"+user.mobileNumber, "Your Verification Code is "+otpActivation+". Do not forward or share this to anyone.","919533000292");
				  log.info("sms result  "+smsResult)
			
			
				}catch (NexmoException e) {
				  // Handle error if failure
				log.info("failed send sms   ....."+e)
				}
				
				TestController testController=new TestController();
				String smsresp=testController.sendSMSToUser(user.mobileNumber,"Dear Customer, Your Registration was done successfully.....");
				log.info("SMS response"+smsresp);
				
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				responseData.put(getMessages('default.status.label'),result.getAt("status"))
				responseData.put("otp",user.otpActivation)
				responseData.put("uname",user.userName)
			
		   }
			}else{
			responseData.put(getMessages('default.message.label'),"User in Not registerd")
			responseData.put(getMessages('default.status.label'),"error")
			responseData.put("uname",params.username)
			
			}
			

		[result:responseData]
		
			}
		}

	def contact2(){
		
		log.info("UserController contact2 action")
		def responseData = new HashMap<>()
		def result,url
		url="/user/contact2.gsp"
		def mode=params.mode
		def merchant = Merchant.getAll()
		log.info(merchant)
		def city = params.city
		log.info(city)
		def merchantshopName=null;
		def username=null;
		

	log.info("merchantshopName "+merchantshopName)
	if(merchantshopName=="null" || merchantshopName==null || merchantshopName==""){
	merchantshopName= session.getAttribute("merchantName");
	}
	 	if(username ==null || username=="" ){
	 username= session.user
	 }
	log.info("merchantshopName from session "+merchantshopName)
		//session.setAttribute("merchantName", shopName)
		def data =Merchant.findByShopName(merchantshopName)
		log.info(data)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		
		responseData.put("merchant",merchant)
		responseData.put("data",data)
		responseData.put("uname",user)
		
		[result:responseData]
	}
	
	def marketcontactdetails(){
		
		log.info("UserController marketcontactdetails action")
		def responseData = new HashMap<>()
		def result,url
		url="/user/marketcontactdetails.gsp"
		def mode=params.mode
		def shopName = params.shopName
		log.info(shopName)
		//session.setAttribute("merchantName", merchantshopName)
		def data =Merchant.findAllByShopName(shopName)
		log.info(data)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		
		responseData.put("data", data)
		responseData.put("uname",user)
		
		[result:responseData]
		
		
	}


    def userlist(){
	
	log.info("UserController userlist Action")
	def adminname= session.admin
	if(adminname ==null || adminname=="" ){
	 redirect(uri: "/admin/login1")
	 return
	}
	def responseData = new HashMap<>();
	def admin= Admin.findByAdminname(session.admin)
	
	
	def mode="web"
	def of=0;
	def merchantdata=User.list(sort:"id",order:"desc",max: 5, offset: of)
	log.info(merchantdata)
	def totalcount=User.findAll().size()
	log.info(totalcount)
	responseData.put("listId", "userlist")
	responseData.put("totalcount",totalcount )
	responseData.put("merchantdata", merchantdata)
	responseData.put("admin", admin)
	responseData.put("offset", of)
	[result:responseData]
}

def mailAction() {
	log.info("@@@@@@@@@@@@@" )
	
	UserService.sendmail();
	
	   
   }




def logout = {
	log.info("logout  ****")
	session.user=null
	session.invalidate();
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info(cookies)
	if(!cookies.toString().equals("null")){
	for (int i = 0; i < cookies.length; i++) {
		 Cookie cookie = cookies[i];
		log.info("Name :ccccc " + cookies[i].getName() );
		log.info("Value: ccccc" + cookies[i].getValue() );
	//	if(cookie.getName().equals("userKey")){
			log.info("UIIIIIIIIIII  "+cookies[i].getValue())
			cookies[i].setValue("")
			cookies[i].setMaxAge(0)
			response.addCookie(cookie)
			//cookie.setPath("/${grailsApplication.metadata['app.name']}/")
		//}
	 }
	}
	
		//Cookie cookie1=new Cookie("userKey", "");
		//cookie1.setMaxAge(0)
		
		 log.info("********after reset********* ")
		 log.info(cookies);
		 
		 log.info("***************** ")
		// response.addCooki(cookie);
	redirect(uri: "/merchant/logout")
	}

def userlogin = {}


def authenticate2={
	
	def user = User.findByUserNameAndPassword(params.userName,params.password)
	if(user){
	
	session.user=user
	// flash.message = "Hello ${admin.fullName}:
	//redirect(action:"userlogindash")
	redirect(uri: "/user/userdashboard")
	
	}
	else{
	flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	redirect(action:"userlogin1")
	
	}

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

def purched(){
	
	log.info("User Controller purched action ********")
	def username= session.user
	if(username ==null || username=="" ){
	 redirect(uri: "/address/userlogin")
	 return
	}
	
	def responseData = new HashMap<>()
	def mode=params.mode
	log.info(mode)
	
	
	def user= User.findByUserName(session.user)
	log.info(user)
	
	def userNameId = user.id
	def of=0;
	def data=Address.findByUserNameId(userNameId,[sort:"id",max: 5])
	log.info(data)
	def totalcount=Address.findAllByUserNameId(userNameId).size()
	log.info(totalcount)
	
	
	def doctor=User.findByUserName(username)
	log.info(doctor)
	
	responseData.put("totalcount",totalcount)
	responseData.put("data", data)
	
	responseData.put("listId", "dashboard")
	responseData.put("uname",user)
	responseData.put("doctor",doctor)
	
	log.info("************")
	log.info(responseData)
	[result:responseData]
	
	
}
def userdashboard1(){
	
	
	respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
	
	
/*	def responseData = new HashMap<>()
	def user= User.findByUserName(session.user)
	log.info(user)
	def userName= session.user
	if(userName ==null || userName=="" ){
	redirect(uri: "/user/userlogin1")
	return
	}
	
	
	*/
	
/*	HashMap data=new HashMap<String, String>();
	ArrayList clist=new ArrayList();
	
	ArrayList<Cctvrepair> cObject=Cctvrepair.findAll();
	ArrayList<Computersrepair> cmpObject=Computersrepair.findAll();
	Iterator iter = cObject.iterator();
	while (iter.hasNext()) {
	  clist.add(iter.next().ccName);
	}
	Iterator iter1 = cmpObject.iterator();
	while (iter1.hasNext()) {
	  clist.add(iter1.next().cName);
	}
	
	log.info(cObject);
	log.info(cObject.ccName);
	log.info(cmpObject.cName);
	
	*/
	/*clist.add(cObject.ccName);
	clist.add(cmpObject.cName);*/
	
	//log.info("******* "+ clist);
	
	 
	
	
	//responseData.put("uname",user)
	//responseData.put("tableData",clist)
	//responseData.put("tableData",cmpObject.cName)
	//log.info(responseData);
	//[result:responseData]
}

def marketdetails(){
	
	log.info("User Controller marketdetails action")
	def responseData = new HashMap<>()
	def result,url
	url="/user/marketdetails.gsp"
	def mode=params.mode
	def shopName = params.shopName
	log.info(shopName)
	session.setAttribute("shopName", shopName)
	def data = Merchant.findAllByShopName(shopName)
	log.info(data)
	
	def user= User.findByUserName(session.user)
	log.info(user)
	
	responseData.put("data", data)
	responseData.put("uname",user)
	
	[result:responseData]
	
	
	
	}
	
//	def Contact(){
//	log.info("User Controller Contact action")
//	def responseData = new HashMap<>()
//	def result,url
//	url="/user/Contact.gsp"
//	def mode=params.mode
//	def merchant=Merchant.getAll()
//	
//
//	def shopName = params.shopName
//	log.info(shopName)
//	
//	//session.setAttribute("shopName", shopName)
//	def data = Merchant.findByShopName(shopName)
//	log.info(data)
//	
//	def user= User.findByUserName(session.user)
//	log.info(user)
//	
//	responseData.put("data", data)
//	responseData.put("uname",user)
//	responseData.put("merchant",merchant)
//	
//	
//	[result:responseData]
//	
//	
//	}

def paytmTerms(){
	
}
def paytmPolicies(){

}
	
def updateuser(){
	
	log.info("UserController updateuser Action")
	
	def userName= session.user
	if(userName ==null || userName=="" ){
	// redirect(uri: "/user/userlogin1")
	 return
	}
	


	//	def user=User.findByUserName(params.id)
		//[user:user]
		
		
	
	def responseData = new HashMap<>();
	def user= User.findByUserName(session.user)
	
	
	responseData.put("user", user)
	[result:responseData]

	}

	def myorders()
	{
	
		log.info("UserController myorders Action")
		
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
			if(cookie.getName().equals("userKey")){
				if(!(cookie.getValue().equals("null") ||cookie.getValue().equals(""))){
				username=cookie.getValue()
				}
			}
		 }
		}
		log.info("**************** "+username)
		if(username ==null || username=="" ){
		username= session.user
		}
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin1")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		
		
		def user= User.findByUserName(username)
		log.info(user)
		
		
		def usercartId = user.id
		def of=0;
		def data=OrderStatus.findAllByUsercartId(usercartId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		def totalcount=OrderStatus.findAllByUsercartId(usercartId).size()
		log.info(totalcount)
		def userInstance=OrderStatus.findByGroceryName(params.groceryName)
		log.info(userInstance)
		
		responseData.put("data1", userInstance)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]
			
	}
	
	def orderdata(){
		
		log.info("UserController orderdata Action")
		def responseData = new HashMap<>();
		def renderData = new HashMap<>();
		def orderdata=OrderStatus.get(params.orderId)
		def user= User.findByUserName(session.user)
		log.info(user)
		
		def orderId = orderdata.orderId;
		def groceryName = orderdata.groceryName;
		def groceryPrice = orderdata.groceryPrice;
		def quantity = orderdata.totalQuantity;
		def productCount=orderdata.productCount?Integer.parseInt(orderdata.productCount):null;
		def amount = orderdata.totalAmount;
		def status =  orderdata.status;
		log.info(orderId)
		log.info(groceryName)
		log.info(groceryPrice)
		log.info(quantity)
		log.info(productCount)
		log.info(status)
		List<OrderStatus> orderList=new ArrayList<OrderStatus>();
		String[] gnames = groceryName.split("#");
		String[] gprices = groceryPrice.split("#");
		log.info(gnames)
		log.info(gnames[0])
		String[] grocnames = gnames[0].split("00");
		log.info(grocnames)
		log.info(grocnames[0])
		log.info(grocnames[1])
		for(int i=0;i<productCount;i++){
			log.info("incece "+i);
		OrderStatus order=new OrderStatus();
		order.groceryName=gnames[i];
		order.groceryPrice=gprices[i];
		order.totalQuantity=Double.parseDouble(gnames[i].split("00")[1])*Double.parseDouble(gprices[i]);
		orderList.add(order);
		log.info(order);
		log.info("FFFFFFFFFFFFFFFFF  "+order.totalQuantity);
			}

		renderData.put("orderList",orderList);
		renderData.put("count",productCount);
		renderData.put("totAmt",amount);
		
		log.info("Render data "+renderData )
		
		responseData.put("uname", user)
		responseData.put("orderdata", orderdata)
		responseData.put("result",renderData);
		
		[result:responseData]
	}


def changepass={
	
	
	log.info("UserController changepass Action")
	Cookie cookie=null
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info(cookies)
	if(!cookies.toString().equals("null")){
	for (int i = 0; i < cookies.length; i++) {
		cookie = cookies[i];

		if(cookie.getName().equals("userKey")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			username=cookie.getValue()
		}
		
	 }
	}
	
	//def userName= session.user
	if(username ==null || username=="" ){
	 redirect(uri: "/user/userlogin1")
	 return
	}
	def responseData = new HashMap<>()
		
	def user= User.findByUserName(username)
	log.info(user)
	
	
	responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
	responseData.put("uname",user)
	log.info(responseData)
	[result:responseData]
}

/* To update the data of Doctor */
@Transactional
def saveupdate() {
	log.info("User Controller saveupdate action")
	def responseData = new HashMap<>()
	def result,url
	def mode=params.mode
	log.info(mode)
	def firstName=params.firstName
	log.info(firstName)
	def lastName=params.lastName
	log.info(lastName)
	def userName=params.userName
	log.info(userName)
	def password=params.password
	log.info(password)
	def email=params.email
	log.info(email)
	def mobileNumber=params.mobileNumber
	
	log.info(mobileNumber)
	
	def modifiedBy=params.modifiedBy
	
	log.info(modifiedBy)
	

	def userId = params.userId
	log.info(userId)
	
	if(mode == "mobile"){
		
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
	responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
	responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	renderPage(mode, url, responseData)
	return
}
else {
	result=UserService.update(firstName,lastName,userName,password,email,mobileNumber,modifiedBy)
	url="/user/saveupdate.gsp"
	responseData.put("uname",User.findByUserId(userId).userName)
	responseData.put("message", "Your Profile Updated Successfully")
	responseData.put(getMessages("default.status.label"),"200")
	
}
render responseData as JSON
return
	}
	
if(mode=="web")	{
	def user= User.findByEmail(session.user)
	def username= session.user
	if(username ==null || username=="" ){
	 redirect(uri: "/user/userLogin1")
	 return
	}
	
	
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
				redirect(uri: "/user/userdashboard")
		return
	}
		if( ! (isValid(firstName)&&isValid(lastName)&&isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
	result=UserService.update(firstName,lastName,userName,password,email,mobileNumber,modifiedBy)
		url="/user/saveupdate.gsp"
		responseData.put("uname",user)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}

[result:responseData]
}

}


def errorpage(){

}

def notFoundpage(){

	render(view:"notFoundpage");
}




def passwordSave2(){
	log.info("User controller passwordSave2 action")
	def responseData = new HashMap<>()
	def mode=params.mode
	
	def password=params.password
	def newPwd=params.newPwd
	def confirmPwd=params.confirmPwd
	def result,res
	log.info(password)
	log.info(newPwd)
	log.info(confirmPwd)
	
	/*
	if(mode=="mobile"){
		def userId = params.userId
		def userName = User.findByUserId(userId).email
		
		if(newPwd != confirmPwd){
			return false
		   }
			else{
		   result=UserService.passwordSave2(userName,newPwd)
		   
		   if(result.get("status") == "success"){
			   responseData.put(getMessages('default.message.label'),result.getAt("message"))
			   responseData.put(getMessages('default.status.label'),"200")
			   responseData.put("uname",userName)
		   }
			}log.info(result)log.info(result)
				   render responseData as JSON
				   return
	}
	
	*/
	
	if(mode=="web"){
	def userName= session.user
	log.info(userName)
	if(userName ==null || userName=="" ){
		redirect(uri: "/user/userlogin1")
		return
	   }
	if((userName !=null || userName!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
		redirect(uri: "/user/userdashboard1")
		return false
	}else{
	
	def url="/user/passwordSave2.gsp"
	def user= User.findByUserName(userName)
	log.info(user)
	if(newPwd != confirmPwd){
	 return false
	}
	 else{
	result=UserService.passwordSave2(userName,newPwd)
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

def passwordSave3(){
	log.info("User controller passwordSave3 action")
	def responseData = new HashMap<>()
	def mode=params.mode
	
	def newPwd=params.newPwd
	def confirmPwd=params.confirmPwd
	def result,res
	log.info("newPwd "+newPwd)
	log.info("confirmPwd "+confirmPwd)
	
	
	if(mode=="web"){

	def user= User.findByUserName(params.username)
	log.info(user)
	if(newPwd != confirmPwd){
	 return false
	}
	 else{
	result=UserService.passwordSave3(params.username,newPwd)
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


def aboutus={}

def contactusadd={}

def userlogin1 = {
	log.info("user controller userlogin1")
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info(cookies)
	if(!cookies.toString().equals("null")){
	for (int i = 0; i < cookies.length; i++) { 
		 Cookie cookie = cookies[i];
		log.info("Name : " + cookie.getName() );
		log.info("Value: " + cookie.getValue() );
		if(cookie.getName().equals("userKey")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			username=cookie.getValue()
		}
	 }
	 }
	log.info("**************** "+username)
	if(!(username.equals(null) ||username.equals(""))){
		log.info("set cookie value into session   username"+username)
		session.user=username
	redirect(action:"userdashboard")
	
	}
	
}
def authenticate1 = {
	
	log.info("authenticate1")
	log.info("params:"+params.email)
	String pattern = ".*[^0-9].*";
	Pattern p = Pattern.compile(pattern);
	Matcher m = p.matcher(params.email);
	boolean b = Pattern.compile(pattern).matcher(params.email).matches();
	log.info("reg test "+b);
	def user
	if(b){
	user = User.findByEmailAndPassword(params.email,params.password)
	log.info("User with email in if "+user)
	}else{
	user = User.findByMobileNumberAndPassword(params.email,params.password)
	log.info("User with mobile number in else "+user)
	}
	if(user){
	
	session.user=user
	// flash.message = "Hello ${admin.fullName}:"
	
/*	log.info("user in   session"+user)
	Cookie cookie1 = new Cookie("userKey", ""+user);
	 cookie1.setMaxAge(60*60*24*365)
	 log.info("***************** ")
	 log.info(cookie1);
	 log.info(cookie1.getName());
	 log.info(cookie1.getValue());
	 log.info("***************** ")
	 
	 response.addCookie(cookie1);*/
	 log.info("grocery in session "+session.getAttribute("gname"))
	 log.info("grocery in session "+session.getAttribute("gname").toString().equals("null"))
	 if( !session.getAttribute("gname").toString().equals("null")){
	 redirect(controller:"address",action:"checkout")
	 }
	 else{
	redirect(action:"userdashboard")	
	}
	
	}
	else{
	//flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	//redirect(action:"userlogin1")
	
	render text: """<script type="text/javascript">
                    alert("Enter Valid Email/Password");
                    window.location.href = "/Skeleton/user/userlogin1";


					</script>""",
		contentType: 'js'
	}
	}
	
def createappointment(){
	
	log.info("Appointment Controller createappointment action")
	def responseData = new HashMap<>()
	def result,url
	url="/appointment/createappointment.gsp"
	def mode=params.mode
	[appointment:responseData]
}

def passwordSave2={
	def userName= session.user
	if(userName ==null || userName=="" ){
	 redirect(uri: "/user/userlogin1")
	 return
	}
	def responseData = new HashMap<>()
	//def username= User.findByUsername(session.user)
	
	def user= User.findByUserName(session.user)
	log.info(user)
	
	
	responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
	responseData.put("uname",user)
	log.info(responseData)
	[result:responseData]
}
def _form(){
	respond new Address(params)
	
}

def edit(User userInstance) {
	respond userInstance
}
 


def create() { 
	
	if(session.user=="" || session.user==null ){
		log.info("session check  *"+session.user)
		redirect(action:"userlogin1")
		return
	}
	
	respond new Address(params)
	
}

def address() {
	
	respond new Address(params)
}

def show(User userInstance) {
	respond userInstance
}


def wastecreate(){
	
	
	
}



def createuser() {
	def responseData = new HashMap<>()
	responseData.put("listId", "createuser")
	[responseData:responseData]
}

/* To save the data of user*/
@Transactional
def saveuser() {
	log.info("User Controller saveuser action")
	def responseData = new HashMap<>()
	def result,url
	
	def mode=params.mode
	def myaction = params.myaction
	def firstName=params.firstName
	def lastName=params.lastName
	def userName=params.userName
	def password=params.password
	def email=params.email
	def mobileNumber=params.mobileNumber
	def otpActivation=params.otpActivation
	def modifiedBy=params.modifiedBy
	if( ! (isValid(myaction) && isValid(mode))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		
		
		if(myaction.equals("save")) {
		
		if( ! (isValid(firstName) && isValid(lastName) && isValid(userName) && isValid(password) && isValid(email) && isValid(mobileNumber) && isValid(modifiedBy))){
		
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		else {
		
		result=UserService.save(firstName,lastName,userName,password,email,mobileNumber,otpActivation,modifiedBy)
		
		log.info(result)
		
		if(result.get("status") == "success"){
		
			redirect(uri: "/user/createuser")
			flash.message = "User Registration Completed Successfully"
				
			def smsResult
			log.info("Nexmo SMS Start ....")
			try {
	log.info("mobile number"+mobileNumber)
			  smsResult  = nexmoService.sendSms("91"+mobileNumber, "Dear Customer, Your Registration was done successfully.....","919533000292");
			  log.info("sms result  "+smsResult)
		
		
			}catch (NexmoException e) {
			  // Handle error if failure
			log.info("failed send sms   ....."+e)
			}
			
			TestController testController=new TestController();
			String smsresp=testController.sendSMSToUser(mobileNumber,"Dear Customer, Your Registration was done successfully.....");
			log.info("SMS response"+smsresp);
		
		
	//	responseData.put("message", "Your Registration complited Successfully")
	//	responseData.put(getMessages("default.status.label"),"200")
		
		
		
		}else if(result.get("status") == "error"){
		responseData.put("message", "User Not Created,Something went Wrong..")
		responseData.put(getMessages("default.status.label"),"500")
		url="/user/saveuser.gsp"
		
		}
		else if(result.get("status") == "existed"){
			responseData.put("message", "User is Already Existed, Try With Other Details..")
			responseData.put(getMessages("default.status.label"),"500")
			url="/user/saveuser.gsp"
			
			}
		}
		if(mode=="mobile"){
		render responseData as JSON
		return
		}
		
		[result:responseData]
		}
	}
	
	
	
/*

def createcontactus() {
	respond new Contactus(params)
	}
	
	*/

	/*
	@Transactional
	def savecontactus(Contactus contactusInstance) {
	if (contactusInstance == null) {
	notFound()
	return
	}
	
	if (contactusInstance.hasErrors()) {
	respond contactusInstance.errors, view:'createcontactus'
	return
	}
	
	contactusInstance.save flush:true
	
	request.withFormat {
	form multipartForm {
	// flash.message = message(code: 'default.created.message', args: [message(code: 'computers.label', default: 'Computers'), computersInstance.id])
	// redirect computersInstance
	}
	//'*' { respond computersInstance, [status: CREATED] }
	}
	}
	
	*/
	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
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
		log.info("User Controller renderPage Action")
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
