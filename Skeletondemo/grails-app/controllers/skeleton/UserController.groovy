package skeleton


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;

import java.util.HashMap;

import grails.converters.JSON;
class UserController {
	def UserService
//	CctvrepairController cctv=new CctvrepairController();
//	ComputersrepairController computer=new ComputersrepairController();
	

static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]


def userdashboard() {
	
	log.info("UserController userdashboard Action")
	def username= session.user
	if(username ==null || username=="" ){
	 redirect uri: ("/user/userlogin1")
	 return
	}
	
	
	def responseData = new HashMap<>()
	def mode=params.mode
	log.info(mode)
	
	def user= User.findByUserName(session.user)
	log.info(user)
	
	
	//params.max = Math.min(params.max ? params.int('max') : 8, 100)
	//respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
	
	
	responseData.put("listId", "dashboard")
	responseData.put("uname",user)
	
	log.info("************")
	log.info(responseData)
	[result:responseData]

	
	/*
	log.info("User Controller userdashboard action ********")
	def responseData = new HashMap<>()
	def mode=params.mode
	log.info(mode)
	def grocery=Grocery.getAll() 
	
	def user= User.findByUserName(session.user)
	log.info(user)
	def username= session.user
	if(username ==null || username=="" ){
	 redirect(uri: "/user/userdashboard")
	 return
	}
	
	def mode="web"
	def of=0;
	def data=Grocery.list(sort:"id",order:"desc",max: 5, offset: of)
	log.info(data)
	def totalcount=Merchant.findAll().size()
	log.info(totalcount)
	
	
	def doctor=User.findByUserName(username)
	log.info(doctor)
	
	responseData.put("grocery",grocery)
	responseData.put("data", data)
	responseData.put("listId", "dashboard")
	responseData.put("uname",user)
	responseData.put("doctor",doctor)
	
	log.info("************")
	log.info(responseData)
	[result:responseData]

*/
	
}

def marketdata(){
	
	log.info("UserController marketdata action")
	def responseData = new HashMap<>()
	def result,url
	url="/user/marketdata.gsp"
	def mode=params.mode
	def merchantshopName = params.merchantshopName
	log.info(merchantshopName)
	session.setAttribute("merchantName", merchantshopName)
	def data = Grocery.findAllByMerchantshopName(merchantshopName)
	log.info(data)
	
	def user= User.findByUserName(session.user)
	log.info(user)
	
	responseData.put("data", data)
	responseData.put("uname",user)
	
	[result:responseData]
	
	

}

	def contact2(){
		
		log.info("UserController contact2 action")
		def responseData = new HashMap<>()
		def result,url
		url="/user/contact2.gsp"
		def mode=params.mode
		def merchant = Merchant.getAll()
		/*def shopName = params.shopName
		log.info(shopName)
		//session.setAttribute("merchantName", merchantshopName)
		def data =Merchant.findAllByShopName(shopName)
		log.info(data)*/
		
		def user= User.findByUserName(session.user)
		log.info(user)
		
		responseData.put("merchant", merchant)
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
	
	session.invalidate();
	redirect(uri: "/user/userlogin1")
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


def updateuser(){
	
	log info("UserController updateuser Action")
	
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
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/myorders")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= User.findByUserName(session.user)
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


def changepass={
	
	
	log.info("UserController changepass Action")
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

/* To update the data of Doctor */
@Transactional
def saveupdate() {
	log.info("User Controller saveupdate action")
	def responseData = new HashMap<>()
	def result,url
	def mode=params.mode
	log.info(mode)
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
		
		if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
	responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
	responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	renderPage(mode, url, responseData)
	return
}
else {
	result=UserService.update(userName,password,email,mobileNumber,modifiedBy)
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
	
	
	if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
				redirect(uri: "/user/userdashboard")
		return
	}
	if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=UserService.update(userName,password,email,mobileNumber,modifiedBy)
		url="/user/saveupdate.gsp"
		responseData.put("uname",user)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}

[result:responseData]
}

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
			}
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


def aboutus={}

def contactusadd={}

def userlogin1 = {
	
}
def authenticate1 = {
	def user = User.findByUserNameAndPassword(params.userName,params.password)
	if(user){
	
	session.user=user
	// flash.message = "Hello ${admin.fullName}:"
	redirect(action:"userdashboard")
	}
	else{
	//flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	//redirect(action:"userlogin1")
	
	render text: """<script type="text/javascript">
                    alert("Enter Valid UserName/Password");
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
	def userName=params.userName
	def password=params.password
	def email=params.email
	def mobileNumber=params.mobileNumber
	def modifiedBy=params.modifiedBy
	if( ! (isValid(myaction) && isValid(mode))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		
		
		if(myaction.equals("save")) {
		
		if( ! (isValid(userName) && isValid(password) && isValid(email)&& isValid(mobileNumber) &&isValid(modifiedBy))){
		
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		else {
		
		result=UserService.save(userName,password,email,mobileNumber,modifiedBy)
		
		log.info(result)
		
		if(result.get("status") == "success"){
		
			redirect(uri: "/user/createuser")
			flash.message = "User Registration Completed Successfully"
				
	
		
		
	//	responseData.put("message", "Your Registration complited Successfully")
	//	responseData.put(getMessages("default.status.label"),"200")
		
		
		
		}else if(result.get("status") == "error"){
		responseData.put("message", "Already Existed")
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
