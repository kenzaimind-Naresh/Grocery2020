package skeleton


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON;
import skeleton.User

import javax.servlet.http.Cookie;



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
	def nexmoService
	
	static transactional=true
	
	def MerchantController
	def UserController
	
	def checkout(){
		
		log.info("Address Controller checkout action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		def renderData = new HashMap<>()
		
	def gname=params.gname;
	log.info("Gnames "+gname)
	def gprice=params.gprice;
	def qCount=params.qCount?Integer.parseInt(params.qCount):null;
	def tamount=params.tamount;
	def grocid = params.grocid;
	log.info("groceryId "+grocid)
		Cookie cookie=null
	Cookie[] cookies = null;
	def username
	cookies=request.getCookies();
	log.info("cookies: "+cookies)
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
	
	def user= User.findByUserName(session.user)
	log.info("User Data: "+user)
	
	username= session.user
	log.info("UserName from session: "+username)
	if(user ==null || user=="" ){
		session.setAttribute("gname",gname)
		session.setAttribute("gprice",gprice)
		session.setAttribute("qCount",qCount)
		session.setAttribute("tamount",tamount)
		session.setAttribute("grocid",grocid)
	  redirect(uri: "/user/userlogin1")
	 return
	}
	gname=gname?gname:session.getAttribute("gname")
	gprice=gprice?gprice:session.getAttribute("gprice")
	qCount=qCount?qCount:session.getAttribute("qCount")
	tamount=tamount?tamount:session.getAttribute("tamount")
	grocid=grocid?grocid:session.getAttribute("grocid")
	def smid=session.getAttribute("mid");
	log.info("merchantid from session "+smid)
	def shopName;
	if(smid)
	shopName=Merchant.get(smid).shopName
	
	log.info("gname: "+gname)
	log.info("gprice: "+gprice)
	log.info("qCount: "+qCount)
	log.info("tamount: "+tamount)
	log.info("grocid: "+grocid)
	log.info("shopName: "+shopName);
	List<Cart> cartList=new ArrayList<Cart>();
	   String[] gnames = gname.split("#");
	   String[] gprices = gprice.split("#");
	   String[] groceryId = grocid.split("#");
	   log.info("GroceryNames: "+gnames)
	   log.info("GroceryPrices: "+gnames[0])
	   for(int i=0;i<qCount;i++){
		   log.info("Count: "+i);
	   Cart tcart=new Cart();
	   Cart emptycheck=new Cart();
	   tcart.groceryId=groceryId[i];
	   tcart.gname=gnames[i];
	   tcart.gprice=gprices[i];
	   tcart.tcount=Double.parseDouble(gnames[i].split("00")[1])*Double.parseDouble(gprices[i]);
	    tcart.availStock=0;
	   if(shopName!=null && shopName!=""){
		   log.info("shopname and gname: "+shopName+","+tcart.gname.split("00")[0])
		   log.info("groceryId from tcart: "+tcart.groceryId)
		   def grocInstance=Grocery.findByMerchantshopNameAndId(shopName,tcart.groceryId);
		   log.info("available stock "+grocInstance.reducedQuantity);
		   tcart.availStock=grocInstance.reducedQuantity;
		   tcart.availgName=tcart.gname.split("00")[0];
	   }
	   
	   cartList.add(tcart);
	   log.info("TotalCount: "+ tcart.tcount)
	   log.info("Availablegname and AvailableStock: "+tcart.availgName+tcart.availStock);
	   log.info("groceryId : "+tcart.groceryId);
		   }
	   
	   renderData.put("cartList",cartList);
	   renderData.put("count",qCount);
	   renderData.put("totAmt",tamount);
	   
	   log.info("Render data "+renderData )
		
		def user1=User.findByUserName(username)
		log.info("User Data: "+user1)
			  
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("result",renderData);
		
		log.info("responseData: "+responseData)
		[result:responseData]
	
	
	}

	
	def authenticate = {
		log.info("AddressController  authenticate Action")
	def user = User.findByUserNameAndPassword(params.userName,params.password)
	if(user){
	
	session.user=user
	redirect(action:"checkout")
	}
	else{
	flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	redirect(action:"userlogin")
	
	}
	}
	
	
	def mailAction() {
		log.info("MailAction: " )
		
		AddressService.sendmail();
		
		   
	   }
	
	def deleteOrder(){
		log.info("AddressController deleteOrder Action")
		def result,res
		def id = params.id
		log.info("id "+id)
		def responseData = new HashMap<>();
		result=AddressService.delete(id)
			def url="/address/deleteOrder"
			responseData.put(getMessages('default.message.label'),"Your Order Cancelled ")
		[result:responseData]
	}
	
	def logout = {
	log.info("logout******")
	
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
		log.info("mode: "+mode)
		def groceryName = Grocery.getAll()
		
		def user= User.findByUserName(session.user)
		log.info("User Data: "+user)
		
		def userNameId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(userNameId,[sort:"id",max: 10])
		log.info("User Address: "+data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info("Address totalcount: "+totalcount)
		
		def user1=User.findByUserName(username)	
		log.info("User data: "+user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data) 
		   
		      
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("groceryName",groceryName)
		
		log.info("responseData: "+responseData)
		[result:responseData]
	 
	}

	
	def newaddress(){
		
		log.info("Address Controller newaddress action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		def groceryName = Grocery.getAll()
		
		def user= User.findByUserName(session.user)
		log.info("user data: "+user)
		
		def username= session.user
		if(username ==null || username=="" ){
		  redirect(uri: "/user/userlogin1")
		 return
		}
		
		def userNameId = user.id
		def of=0;
		def data=Address.findAllByUserNameId(userNameId,[sort:"id",max: 5])
		log.info("User data: "+data)
		def totalcount=Address.findAllByUserNameId(userNameId).size()
		log.info("Address Totalcount: "+totalcount)
		
		
		def user1=User.findByUserName(username)
		log.info("User data: "+user1)
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("groceryName",groceryName)

		log.info("responseData s"+responseData)
		[result:responseData]
	 
	}
	
	def payment(){
		
		log.info("Address Controller payment action ********")
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		def mobileNumber = params.mobileNumber
		
		Cookie cookie=null
		Cookie[] cookies = null;
		def username
		def merchantshopId
		cookies=request.getCookies();
		log.info("cookies: "+cookies)
		if(cookies!=null){
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];
			log.info("Name : " + cookie.getName() );
			log.info("Value: " + cookie.getValue() );
			if(cookie.getName().equals("userKey")){
				if(!(cookie.getValue().toString().equals("null") ||cookie.getValue().equals(""))){
				username=cookie.getValue()
				}
			}
			if(cookie.getName().equals("mid")){
			if(!(cookie.getValue().equals("null") ||cookie.getValue().equals("")))
			merchantshopId=cookie.getValue()
			log.info("in cookie  merchantshop " +merchantshopId)
		}
		 }
		}
		log.info("**************** "+username)
		if(username ==null || username=="" || username.toString()=="null" ){
		username= session.user
		}

		if(username ==null || username=="" ){
			redirect(uri: "/user/userlogin1")
			return
		 }
		
		def user= User.findByUserName(username)
		log.info("User Data: "+user)
		log.info("User id: "+params.id)
		def address=Address.get(params.id)
		log.info("address id: "+address)
		
		def addrId = address.id
		def of=0;
		def data=Address.get(params.id)
		session.setAttribute("addressId", params.id);
		log.info("User Address: "+data)
		def totalcount=Address.findAllByAddressId(addrId).size()
		log.info("Address TotalCount: "+totalcount)
		
		def addressId = user.id
		def data1=Address.findByAddressId(addressId,[sort:"id",max: 5])
		log.info("Address: "+data1)
		
		def cartId=session.getAttribute("savedCart");
		def mercId=session.getAttribute("mid");
		log.info("merchantid from session"+mercId);
		def mercName
		if(mercId)
		mercName=Merchant.get(mercId).shopName;
		log.info("merchantName: "+mercName)
		def addId=session.getAttribute("addressId");
		log.info("AddressId from session: "+addrId)
		log.info("saved cart *********** "+cartId);
		Cart cartInstance=Cart.findByCartId(cartId)
		log.info(" cart object *********** "+cartInstance);
		log.info("gname from cartInstance: "+cartInstance.gname)
		log.info("gprice from cartInstance: "+cartInstance.gprice)
		log.info("tcount from cartInstance: "+cartInstance.tcount)
		log.info("qCount from cartInstance: "+cartInstance.qCount)
		log.info("tamount from cartInstance: "+cartInstance.tamount)
		log.info("usercartId from cartInstance: "+cartInstance.usercartId)
		log.info("status from cartInstance: "+cartInstance.status)
		log.info("groceryId from cartInstance: "+cartInstance.groceryId)
		log.info("merchantName: "+mercName)
		log.info("AddressId: "+addId)
		log.info("gname from cartInstance: "+cartInstance.modifiedBy)
		
		def user1=User.findByUserName(username)
		log.info("User data: "+user1)
		
		/*def orderResult=OrderStatusService.saveOrder(cartInstance.gname,cartInstance.gprice,cartInstance.tcount,cartInstance.qCount,cartInstance.tamount,cartInstance.usercartId,cartInstance.status,mercName,addId,cartInstance.modifiedBy)
		
		// grocery quantity update
		
		log.info("qCount from cartInstance: "+cartInstance.qCount)
		
		def merchantInstance = Merchant.get(mercId)
		log.info("merchantid: "+merchantInstance.id)
		
		String[] gnames= cartInstance.gname.split("#")
		String[] groceryId = cartInstance.groceryId.split("#")
		log.info("gnames length: "+gnames.length)
		
	for(int a=0;a<gnames.length;a++){
		
		log.info("groceryId and gname from cartInstance: "+groceryId[a]+"-"+gnames[a].split("00")[0])
		def instance = Grocery.findByMerchantIdAndId(merchantInstance.id,groceryId[a])
		log.info("weight from grocery: "+instance.weight)
		def value = Integer.parseInt(instance.reducedQuantity) - Integer.parseInt(gnames[a].split("00")[1])
		log.info("Quantity to be reduced : "+ gnames[a].split("00")[1]);
		log.info("final Reduced Quantity : "+  value);
		log.info("groceryId of the updating item: "+groceryId[a])
		GroceryService.update1(merchantInstance.id,gnames[a].split("00")[0],value,groceryId[a]);
	}
		
		TestController testController=new TestController();
		String smsresp=testController.sendSMSToUser(user1.mobileNumber,"Dear "+user1.userName+",your Grocery Order has been placed successfully. Your Order Amount: Rs."+cartInstance.tamount+" and your Order Items:"+gnames+". Delivery Charges applicable depends on below distance:  0 to 1Km - Free, 1 to 3Kms - Rs.30, 3 to 5Kms - Rs.50, 5 to 7Kms - Rs.70.");
		log.info("SMS response "+smsresp);*/
		
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("data1", data1)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		
		log.info("************")
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	
	def shipping(){
		
		log.info("Address Controller shipping action ********")
		def responseData = new HashMap<>()
		def renderData = new HashMap<>()
		def renderdata = new HashMap<>()
		def mode=params.mode
		log.info("mode: "+mode)
		
		def user= User.findByUserName(session.user)
		log.info("User data: "+user)
		
		def username= session.user
		if(username ==null || username=="" ){
		  redirect(uri: "/user/userlogin1")
		 return
		}
		def cartId=session.getAttribute("savedCart");
		def mercId=session.getAttribute("mid");
		def mercName=Merchant.get(mercId).shopName;
		log.info("merchantid: "+mercName)
		def addrId=session.getAttribute("addressId");
		log.info("AddressId: "+addrId)
		log.info("saved cart: "+cartId);
		Cart cartInstance=Cart.findByCartId(cartId)
		
		def quantityCount=cartInstance.qCount?Integer.parseInt(cartInstance.qCount):null;
		
		log.info(" cart object *********** "+cartInstance);
		log.info("gprice from cartInstance: "+cartInstance.gprice)
		log.info("tcount from cartInstance: "+cartInstance.tcount)
		log.info("qCount from cartInstance: "+cartInstance.qCount)
		log.info("tamount from cartInstance: "+cartInstance.tamount)
		log.info("usercartId from cartInstance: "+cartInstance.usercartId)
		log.info("status from cartInstance: "+cartInstance.status)
		log.info("groceryId from cartInstance: "+cartInstance.groceryId)
		log.info("merchantName: "+mercName)
		log.info("AddressId: "+addrId)
		log.info("gname from cartInstance: "+cartInstance.modifiedBy)
		
		def orderResult=OrderStatusService.saveOrder(cartInstance.gname,cartInstance.gprice,cartInstance.tcount,cartInstance.qCount,cartInstance.tamount,cartInstance.usercartId,cartInstance.status,mercName,addrId,cartInstance.modifiedBy)
		
		// grocery quantity update
		
		log.info("qCount from cartInstance: "+cartInstance.qCount)
		
		def merchantInstance = Merchant.get(mercId)
		log.info("merchantid: "+merchantInstance.id)
		
		String[] gnames= cartInstance.gname.split("#")
		String[] groceryId = cartInstance.groceryId.split("#")
		log.info("gnames length: "+gnames.length)
		
	for(int a=0;a<gnames.length;a++){
		
		log.info("groceryId and gname from cartInstance: "+groceryId[a]+"-"+gnames[a].split("00")[0])
		def instance = Grocery.findByMerchantIdAndId(merchantInstance.id,groceryId[a])
		log.info("weight from grocery: "+instance.weight)
		def value = Integer.parseInt(instance.reducedQuantity) - Integer.parseInt(gnames[a].split("00")[1])
		log.info("Quantity to be reduced : "+ gnames[a].split("00")[1]);
		log.info("final Reduced Quantity : "+  value);
		log.info("groceryId of the updating item: "+groceryId[a])
		GroceryService.update1(merchantInstance.id,gnames[a].split("00")[0],value,groceryId[a]);
	}
	
		def user1=User.findByUserName(username)
		log.info("User data: "+user1)
		
		TestController testController=new TestController();
		String smsresp=testController.sendSMSToUser(user1.mobileNumber,"Dear "+user1.userName+",your Grocery Order has been placed successfully. Your Order Amount: Rs."+cartInstance.tamount+" and your Order Items:"+gnames+". Delivery Charges applicable depends on below distance:  0 to 1Km - Free, 1 to 3Kms - Rs.30, 3 to 5Kms - Rs.50, 5 to 7Kms - Rs.70.");
		log.info("SMS response "+smsresp);
		
		log.info("*********Split function in shipping page*******")
		List<Cart> cartlist=new ArrayList<Cart>();
		String[] names = cartInstance.gname.split("#");
		String[] prices = cartInstance.gprice.split("#");
		log.info("gnames: "+names)
		log.info("gnames[0]: "+names[0])
		String[] grocnames = names[0].split("00");
		log.info("grocnames: "+grocnames)
		log.info("grocnames[0]: "+grocnames[0])
		log.info("grocnames[1]: "+grocnames[1])
		for(int i=0;i<quantityCount;i++){
			log.info("incece "+i);
		Cart product=new Cart();
		product.gname=names[i];
		product.gprice=prices[i];
		product.tcount=Double.parseDouble(names[i].split("00")[1])*Double.parseDouble(prices[i]);
		cartlist.add(product);
		log.info("product added to cart: "+product);
			}

		renderdata.put("cartlist",cartlist);
		renderdata.put("tcount",cartInstance.tcount);
		renderdata.put("totAmt",cartInstance.tamount);
		
		log.info("Render data "+renderdata )
	
		responseData.put("result",renderdata);
		
		def addId=session.getAttribute("addressId");
		log.info("addressId"+addId)
		def addressId = user.id
		def of=0;
		def data=Address.get(addId);
		log.info("User Address: "+data)
		def totalcount=Address.findAllByUserNameId(addressId).size()
		log.info("Address Total Count:"+totalcount)
		
		def data1=Address.findByAddressId(params.addressId)
		log.info("Address: "+data1)
		
	
		def data2=Cart.findByCartId(cartId,[sort:"id",max: 5])
	
		def totalcount2=Cart.findAllByCartId(cartId).size()
		
		
		def groceryName = data2.gname;
		def groceryPrice = data2.gprice;
		def quantity = data2.tcount;
		def qCount=params.qCount?Integer.parseInt(params.qCount):null;
		def amount = data2.tamount;
		log.info("groceryName "+groceryName)
		log.info("groceryPrice "+groceryPrice)
		log.info("quantity "+quantity)
		log.info("qCount "+qCount)
		log.info("amount "+amount)
		
		List<Cart> cartList=new ArrayList<Cart>();
		String[] grocNames = groceryName.split("#");
		String[] gprices = groceryPrice.split("#");
		log.info("grocNames: "+grocNames)
		log.info("grocNames[0]: "+grocNames[0])
		for(int i=0;i<qCount;i++){
			log.info("incece "+i);
		Cart tcart=new Cart();
		tcart.gname=grocNames[i];
		tcart.gprice=gprices[i];
		cartList.add(tcart);
		log.info("tcart object: "+tcart);
			}
		
		renderData.put("cartList",cartList);
		renderData.put("count",qCount);
		renderData.put("totAmt",amount);
		
		log.info("Render data "+renderData )
					
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("totalcount2",totalcount2)
		responseData.put("data2", data2)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("user1",user1)
		responseData.put("data1",data1)
		responseData.put(getMessages('default.message.label'),"Thank you. Your order has been received.")
				
		log.info("responseData: "+responseData)
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
		log.info("mode: "+mode)
		def myaction = params.myaction
		log.info("myaction: "+myaction)
		def fullName=params.fullName
		log.info("fullName: "+fullName)
		def mobileNumber = params.mobileNumber
		log.info("mobileNumber: "+mobileNumber)
		def pincode=params.pincode
		log.info("pincode: "+pincode)
		def houseNumber=params.houseNumber
		log.info("houseNumber: "+houseNumber)
		def area=params.area
		log.info("area: "+area)
		def landmark=params.landmark
		log.info("landmark: "+landmark)
		def city=params.city
		log.info("city: "+city)
		def state = params.state
		log.info("state: "+state)
		def deliverhere = params.deliverhere
		log.info("deliverhere: "+deliverhere)
		
		def userNameId = params.userNameId
		log.info("userNameId: "+userNameId)
	
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
		
				log.info("response from AddressService "+result)
				
				log.info("result from addressInstance "+result.get("addressInstance"));
				
				log.info("result: "+result)
				log.info("mode: "+mode)
				
				if(result.get("status") == "success"){
					redirect(uri: "/Address/create")
					flash.message = "Your Order is booked"

				}
				
				else{
					responseData.put("message", "You Order is Already Booked")
					url="/address/print.gsp"

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
			log.info("map: "+map.get("status"))
			log.info("url: "+url)
			log.info("mode: "+mode)
			log.info("map: "+map)
			 if(mode == "web"){
				 
				render view:url,model:[result:map]
			}
			 else{
				 render map as JSON
			 }
		}

	}

