package skeleton


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON;
import skeleton.User



import java.util.HashMap;
import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;
import java.util.Date;
import java.lang.Object;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;


@Transactional
class AddressController {

static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]

	def AddressService
	def appointmentService
	def OrderStatusService
	def GroceryService
	def GroceryController
	static transactional=true
	
	def MerchantController
	def UserController
	
	// dynamic call made via jquery inside _edit.gsp
	def userlogin = {}
	
	def userlogindash = {
		
		
	}
	
	def checkout(){
		
		log.info("Address Controller checkout action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		def renderData = new HashMap<>()
		
def gname=params.gname;
def gprice=params.gprice;
def qCount=params.qCount?Integer.parseInt(params.qCount):null;
def tamount=params.tamount;

def user= User.findByUserName(session.user)
log.info(user)
def username= session.user
if(username ==null || username=="" ){
	session.setAttribute("gname",gname)
	session.setAttribute("gprice",gprice)

	session.setAttribute("qCount",qCount)
	session.setAttribute("tamount",tamount)



 redirect(uri: "/address/userlogin")
 return
}
gname=gname?gname:session.getAttribute("gname")
gprice=gprice?gprice:session.getAttribute("gprice")

qCount=qCount?qCount:session.getAttribute("qCount")
tamount=tamount?tamount:session.getAttribute("tamount")




log.info(gname)
log.info(gprice)
log.info(qCount)
log.info(tamount)
List<Cart> cartList=new ArrayList<Cart>();
   String[] gnames = gname.split("#");
   String[] gprices = gprice.split("#");
   log.info(gnames)
   log.info(gnames[0].split("00")[0])
   for(int i=0;i<qCount;i++){
	   log.info("incece "+i);
   Cart tcart=new Cart();
   tcart.gname=gnames[i].split("00")[0];
   log.info("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ");
   log.info(tcart.gname);
   tcart.gprice=gprices[i];
   cartList.add(tcart);
   log.info("@@@@@@@@@@@"+tcart);
	   }
   
   renderData.put("cartList",cartList);
   renderData.put("count",qCount);
   renderData.put("totAmt",tamount);
   
log.info("REdnder data "+renderData )
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
	//  responseData.put("totalcount",totalcount)
	//	responseData.put("data", data)
			  
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("result",renderData);
		
		log.info("************"+responseData)
		[result:responseData]
	
	
	}
	
	def conformproduct(){
		
		log.info("Address Controller conformproduct action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		
	/*
		def usercartId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(usercartId,[sort:"id",max: 10])
		log.info(data)
		def totalcount=Address.findAllByUserNameId(usercartId).size()
		log.info(totalcount)
		*/
		
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
	//  responseData.put("totalcount",totalcount)
	//	responseData.put("data", data)
			  
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
		
		
	}
	
/*	def authenticate1={
		
		def user = User.findByUserNameAndPassword(params.userName,params.password)
		if(user){
		
		session.user=user
		// flash.message = "Hello ${admin.fullName}:
		//redirect(action:"userlogindash")
		redirect(uri: "/user/userdashboard")
		
		}
		else{
		flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
		redirect(action:"userlogindash")
		
		}
		
		
	}
	
	*/
	
	def authenticate = {
		log.info("AddressController  authenticate Action")
	def user = User.findByUserNameAndPassword(params.userName,params.password)
	if(user){
	
	session.user=user
	// flash.message = "Hello ${admin.fullName}:
	redirect(action:"checkout")
	}
	else{
	flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	redirect(action:"userlogin")
	
	}
	}
	
	
	def mailAction() {
		log.info("@@@@@@@@@@@@@" )
		
		AddressService.sendmail();
		
		   
	   }
	
	def deleteOrder(){
		log.info("AddressController deleteOrder Action")
		def result,res
		def id = params.id
		log.info(id)
		def responseData = new HashMap<>();
		result=AddressService.delete(id)
			def url="/address/deleteOrder"
			responseData.put(getMessages('default.message.label'),"Your Order Cancelled ")
		[result:responseData]
	}
	
	def logout = {
	log.info("logout  ****")
	
	session.invalidate();
	
	
	redirect(action:"dashboard")
	}
		def index(Integer max) {
			params.max = Math.min(max ?: 10, 100)
			respond Address.list(params), model:[appointmentInstanceCount: Address.count()]
		}
	
		def show(Address addressInstance) {
			respond addressInstance
		}
	
		def purched() {

			log.info("Address Controller create action ********")
			def responseData = new HashMap<>()
			def mode=params.mode
			log.info(mode)
			def groceryName = Grocery.getAll()
			
			def user= User.findByUserName(session.user)
			log.info(user)
			def username= session.user
			if(username ==null || username=="" ){
			 redirect(uri: "/address/userlogin")
			 return
			}
			
			def userNameId = user.id
			def of=0;
			def data=Address.findByUserNameId(userNameId,[sort:"id",max: 5])
			log.info(data)
			def totalcount=Address.findAllByUserNameId(userNameId).size()
			log.info(totalcount)
			
			
			def user1=User.findByUserName(username)
			log.info(user1)
			
			responseData.put("totalcount",totalcount)
			responseData.put("data", data)
			
			responseData.put("listId", "dashboard")
			responseData.put("uname",user)
			responseData.put("user1",user1)
			responseData.put("groceryName",groceryName)
			
			log.info("************")
			log.info(responseData)
			[result:responseData]
		
			
		}
	
		
		def show1(Grocery groceryInstance) {
			respond groceryInstance
			
		
		}
		
		
		def showPayload(Address addressInstance) {
			response.outputStream << addressInstance.uimage // write the grocery to the output stream
			response.outputStream.flush()
			}
		
		
	/* Sending user and user data to createpatient gsp page */
	def create(){
		
		log.info("Address Controller create action ********")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin1")
		 return
		}
		
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		def groceryName = Grocery.getAll()
		
		def user= User.findByUserName(session.user)
		log.info(user)

		def userNameId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(userNameId,[sort:"id",max: 10])
		log.info(data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info(totalcount)
		
		def user1=User.findByUserName(username)	
		log.info(user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data) 
		   
		      
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("groceryName",groceryName)
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
	 
	}
	
	def acreate(){
		
		//respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
		
	/*
		if(session.user=="" || session.user==null ){
			log.info("session check  *"+session.user)
			redirect(action:"userlogin")
			return
		}
		
		respond new Address(params)
		
*/
		log.info("Address Controller acreate action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		
		def userNameId = user.id
		def of=0;
		def data=Address.findByUserNameId(userNameId,[sort:"id",max: 5])
		log.info(data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info(totalcount)
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
	
	}
	
	def newaddress(){
		
		//respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
		
	/*
		if(session.user=="" || session.user==null ){
			log.info("session check  *"+session.user)
			redirect(action:"userlogin")
			return
		}
		
		respond new Address(params)
		
*/
		log.info("Address Controller create action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		def groceryName = Grocery.getAll()
		
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		
		def userNameId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(userNameId,[sort:"id",max: 5])
		log.info(data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info(totalcount)
		
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("groceryName",groceryName)
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
	 
	}
	
	def newaddress1(){
		
		log.info("AddressController newaddress1 Action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		
		def userNameId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(userNameId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info(totalcount)
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]

	}
	
	def payment(){
		
		log.info("Address Controller payment action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		def mobileNumber = params.mobileNumber
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		log.info(params.id+"TTTTTTTTTTTT")
		def address=Address.get(params.id)
		log.info(address)
		
		def addrId = address.id
		def of=0;
		def data=Address.get(params.id)
		session.setAttribute("addressId", params.id);
		log.info(data)
		def totalcount=Address.findAllByAddressId(addrId).size()
		log.info(totalcount)
		
		def addressId = user.id
		def data1=Address.findByAddressId(addressId,[sort:"id",max: 5])
		log.info(data1)
		
		def user1=User.findByUserName(username)
		log.info(user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("data1", data1)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	
	def shipping(){
	
		
		log.info("Address Controller shipping action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		def cartId=session.getAttribute("savedCart");
		def mercName=session.getAttribute("merchantName");
		def addrId=session.getAttribute("addressId");
		log.info("SSSSSSSSSSSSSSS"+addrId)
		log.info("saved cart *********** "+cartId);
		Cart cartInstance=Cart.findByCartId(cartId)
		log.info(" cart object *********** "+cartInstance);
		log.info(cartInstance.gname)
		log.info(cartInstance.gprice)
		log.info(cartInstance.tcount)
		log.info(cartInstance.qCount)
		log.info(cartInstance.tamount)
		log.info(cartInstance.usercartId)
		log.info(cartInstance.status)
		log.info(mercName)
		log.info(addrId)
		log.info(cartInstance.modifiedBy)
		
		//def orderResult=OrderStatusService.saveOrder(cartInstance.gname,cartInstance.gprice,cartInstance.tcount,cartInstance.qCount,cartInstance.tamount,cartInstance.usercartId,cartInstance.status,mercName,addrId,cartInstance.modifiedBy)
		
		//Address addressInst = session.getAttribute("savedAddress");
		//log.info("saved address *********** "+addressInst);
		def addId=session.getAttribute("addressId");
		log.info(addId)
		def addressId = user.id
		def of=0;
		def data=Address.get(addId);
		log.info(data)
		def totalcount=Address.findAllByUserNameId(addressId).size()
		log.info(totalcount)
		def user1=User.findByUserName(username)
		log.info(user1)
		def data1=Address.findByAddressId(params.addressId)
		log.info(data1)
		
	
		def data2=Cart.findByCartId(cartId,[sort:"id",max: 5])
	
		def totalcount2=Cart.findAllByCartId(cartId).size()
					
		
		// grocery quantity update 
		
		log.info(cartInstance.qCount +"eeeeeeeeee")
		
		def merchantInstance = Merchant.findByShopName(mercName)
		log.info(merchantInstance.id + "MMMMMMMMMMMMMM")
		
		String[] gnames= cartInstance.gname.split("#")
		
		log.info(gnames.length + "NNNNNNNNNNNNN")
	
		// def id = params.id
	for(int a=0;a<gnames.length;a++){
			
		
		def instance = Grocery.findByMerchantIdAndGroceryName(merchantInstance.id,gnames[a].split("00")[0])
	

		def value = Integer.parseInt(instance.quantity) - Integer.parseInt(gnames[a].split("00")[1])
		log.info("??????????????? instance.quantity : "+ gnames[a].split("00")[1]);
		log.info("??????????????? finalvalue : "+  value);
		
		//GroceryService.update1(merchantInstance.id,gnames[a].split("00")[0],value);
	}

		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("totalcount2",totalcount2)
		responseData.put("data2", data2)
		responseData.put("listId", "dashboard")
		//responseData.put("instance", instance)		
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("data1",data1)
		
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	def orderconform(){
		
		log.info("Address Controller orderconform action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		
		def userNameId = user.id
		//def of=0;
	//	def data=Address.findByUserNameId(userNameId,[sort:"id",max: 5])
	//	log.info(data)
	//	def totalcount=Address.findAllByUserNameId(userNameId).size()
	//	log.info(totalcount)
		
	//	def user1=User.findByUserName(username)
	//	log.info(user1)
		
		
		
		
		
		def cartId=session.getAttribute("savedCart");
		def mercName=session.getAttribute("merchantName");
		def addrId=session.getAttribute("addressId");
		log.info("SSSSSSSSSSSSSSS"+addrId)
		log.info("saved cart *********** "+cartId);
		Cart cartInstance=Cart.findByCartId(cartId)
		log.info(" cart object *********** "+cartInstance);
		log.info(cartInstance.gname)
		log.info(cartInstance.gprice)
		log.info(cartInstance.tcount)
		log.info(cartInstance.qCount)
		log.info(cartInstance.tamount)
		log.info(cartInstance.usercartId)
		log.info(cartInstance.status)
		log.info(mercName)
		log.info(addrId)
		log.info(cartInstance.modifiedBy)
		
		def orderResult=OrderStatusService.saveOrder(cartInstance.gname,cartInstance.gprice,cartInstance.tcount,cartInstance.qCount,cartInstance.tamount,cartInstance.usercartId,cartInstance.status,mercName,addrId,cartInstance.modifiedBy)
		
		//Address addressInst = session.getAttribute("savedAddress");
		//log.info("saved address *********** "+addressInst);
		def addId=session.getAttribute("addressId");
		log.info(addId)
		def addressId = user.id
		def of=0;
		def data=Address.get(addId);
		log.info(data)
		def totalcount=Address.findAllByUserNameId(addressId).size()
		log.info(totalcount)
		def user1=User.findByUserName(username)
		log.info(user1)
		def data1=Address.findByAddressId(params.addressId)
		log.info(data1)
		
	
		def data2=Cart.findByCartId(cartId,[sort:"id",max: 5])
	
		def totalcount2=Cart.findAllByCartId(cartId).size()
					
		
		// grocery quantity update
		
		log.info(cartInstance.qCount +"eeeeeeeeee")
		
		def merchantInstance = Merchant.findByShopName(mercName)
		log.info(merchantInstance.id + "MMMMMMMMMMMMMM")
		
		String[] gnames= cartInstance.gname.split("#")
		
		log.info(gnames.length + "NNNNNNNNNNNNN")
	
		// def id = params.id
	for(int a=0;a<gnames.length;a++){
			
		
		def instance = Grocery.findByMerchantIdAndGroceryName(merchantInstance.id,gnames[a].split("00")[0])
	

		def value = Integer.parseInt(instance.quantity) - Integer.parseInt(gnames[a].split("00")[1])
		log.info("??????????????? instance.quantity : "+ gnames[a].split("00")[1]);
		log.info("??????????????? finalvalue : "+  value);
		
		GroceryService.update1(merchantInstance.id,gnames[a].split("00")[0],value);
	}
		
		
		
		
		
		
		
		
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put(getMessages('default.message.label'),"Your Order Confirmed Successfully")
		
		log.info("************")
		log.info(responseData)
		[result:responseData]
		
		
	}
	
	def onlinepay(){
		log.info("AddressController onlinepay Action")
		params.max = Math.min(params.max ? params.int('max') : 1, 1)
		respond Merchant.list(params), model:[merchantInstance: Merchant]
		
	}
	
	def wastecreate(){
		log.info("AddressController wastecreate Action")
		def responseData = new HashMap<>()
		def user= User.findByUserName(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/address/userlogin")
		 return
		}
		def user1=User.findByUserName(username)
		log.info(user1)
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		
		responseData.put("user1",user1)
		log.info("************")
		log.info(responseData)
		[result:responseData]
	
		
	}

	/* To save the data of Patient */
	@Transactional
	def saveaddress() {
		log.info("address Controller saveaddress action")
		def responseData = new HashMap<>()
		def result,url
		url="/address/saveaddress.gsp"
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def fullName=params.fullName
		log.info(fullName)
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		//def email = params.email
		//log.info(email)
		
		def pincode=params.pincode
		log.info(pincode)
		def houseNumber=params.houseNumber
		log.info(houseNumber)
		def area=params.area
		log.info(area)
		def landmark=params.landmark
		log.info(landmark)
		def city=params.city
		log.info(city)
		def state = params.state
		log.info(state)
		def deliverhere = params.deliverhere
		log.info(deliverhere)
		
		def userNameId = params.userNameId
		log.info(userNameId)
	
		if( ! (isValid(fullName)&&  isValid(mobileNumber) && isValid(pincode)&& isValid(houseNumber)&& isValid(area)&& isValid(landmark)&& isValid(city)&& isValid(state)&& isValid(deliverhere) && isValid(userNameId) && isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			redirect(uri: "/address/create")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(fullName)&&  isValid(mobileNumber) && isValid(pincode)&& isValid(houseNumber)&& isValid(area)&& isValid(landmark)&& isValid(city)&& isValid(state)&& isValid(deliverhere) && isValid(userNameId) && isValid(mode))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
	
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				 result=AddressService.save(fullName,mobileNumber,pincode,houseNumber,area,landmark,city,state,deliverhere,userNameId)
			//	responseData.put("addressInstance", res.getAt("addressInstance"))
				//responseData.put("AppInstance", res.getAt("appointmentInstance"))
		
				log.info("***********response from AddressService"+result)
				
				log.info("&&&&&&&&&&&&&&"+result.get("addressInstance"));
				//session.setAttribute("savedAddress", result.get("addressInstance"));
				
				log.info(result)
				log.info(mode)
				
				//responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				if(result.get("status") == "success"){
					redirect(uri: "/Address/create")
					flash.message = "Your Order is booked"
					
				//	responseData.put("message", "Your Order is booked")
					
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
					//resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
				}
				
				else{
					responseData.put("message", "You Order is Already Booked")
					url="/address/print.gsp"
					
					//responseData.put(getMessages('default.message.label'),res.getAt("message"))
					//responseData.put(getMessages('default.status.label'),res.getAt("status"))
				}
				
			}
			if(mode=="mobile"){
					render responseData as JSON
					return
				}
				[result:responseData]
		}
	}
		
		 def print(Address addressInstance) {
        respond addressInstance
		log.info("AddressController print Action")
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
			log.info("address Controller renderPage Action")
			log.info(map.get("status"))
			log.info(url)
			log.info(mode)
			log.info(map)
			 if(mode == "web"){
				 
				render view:url,model:[result:map]
			}
			 else{
				 render map as JSON
			 }
		}

	}

