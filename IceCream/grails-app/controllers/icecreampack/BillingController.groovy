package icecreampack

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON;
import grails.transaction.Transactional
import icecreampack.Billing;
import icecreampack.Icecream;
import icecreampack.User;

import  java.lang.Float;
import java.time.LocalDate
import java.time.format.DateTimeFormatter;
import java.util.Formatter.DateTime;


@Transactional(readOnly=true)
class BillingController {
	

	def BillingService
	def IcecreamService
	def	IcecreamController
	
	
	
		def index(){}
		
		/* Sending billing data to display gsp page */
	def display(){
		render view:"/billing/display.gsp", model:[billing:Billing.getAll()]
	}
	
	def show(Billing billingInstance) {
		respond billingInstance
		}
	
	/* deletebilling gsp page */
	def deletebilling(){}
	
	/* Sending billing data to updatebilling gsp page */
	def updatebilling(){
		def billing=Billing.findByCustomerName(params.id)
		[billing:billing]
	}
	
	/* Sending billing, Inpatient, Patient, Drugs and User data to crbillingmacy gsp page */
	def createbilling()
	{
	
		def billing=Billing.getAll()
		def icecream=Icecream.getAll()
		def user= User.findByUserName(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin")
		 return
		}
		
		
		def responseData = new HashMap<>();
		
		responseData.put("listId", "Bill")
		responseData.put("icecream",icecream)
		responseData.put("uname",user)
		responseData.put("phar",billing)
		responseData.put(getMessages('default.message.label'),"")
		[result:responseData]
				
	}
	
	def creategold()
	{
	
		def billing=Billing.getAll()
		def icecream=Icecream.getAll()
		def user= User.findByUserName(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin")
		 return
		}
		
		
		def responseData = new HashMap<>();
		
		responseData.put("listId", "Bill")
		responseData.put("icecream",icecream)
		responseData.put("uname",user)
		responseData.put("phar",billing)
		responseData.put(getMessages('default.message.label'),"")
		[result:responseData]
				
	}
	
	
	def icecreamsalereport(Integer max){
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		respond Billing.list(params), model:[billingInstanceCount: Billing.count()]
		
		
	   
		}

	def customreport(Integer max){
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		respond Billing.list(params), model:[billingInstanceCount: Billing.count()]
		
		}
	
	def help(){
		
	}
	@Transactional
	def getPrice(){
		log.info(" BillingController getdata action")
		def responseData = new HashMap<>()
		def result=null;
		def billingType=params.billingType
		log.info(billingType)
		def productDesc=params.productDesc
		log.info(productDesc)
		def weight=params.weight
		log.info(weight)
		def cInstance=Icecream.findByProductDescAndWeight(productDesc,weight);
		log.info("^^^^^^^^^^^^^^ "+cInstance)
		if(cInstance!=null){
		if(billingType.equals("Wholesale")){
			result=cInstance.getWholesalePrice();
		}else{
		result=cInstance.getRetailPrice();
		}
		}
		if( cInstance!=null){
		responseData.put("price", result)
		responseData.put("quanity", cInstance.getQuantity())
		result=result+"#"+cInstance.getQuantity()
		}
		log.info("*****************"+result);
		render result
		
	}
	
	/* To save the data of billing */
	@Transactional
	def savebilling() {
		log.info("Billing Controller savebilling action")
		def responseData = new HashMap<>()
		def result,url
		url="/billing/savebilling.gsp"
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		
		def customerName=params.customerName
		log.info(customerName)
		
		
		LocalDate now=LocalDate.now();
		String s=now.format(DateTimeFormatter.ofPattern("dd/MM/YYYY"));
		def createDate=s
		
		log.info("***************"+createDate)
		def mobileNumber=params.mobileNumber
		log.info(mobileNumber)
		def address=params.address
		log.info(address)
		
		def productDesc1=params.productDesc1
		log.info(productDesc1)
		def weight1 =params.weight1
		log.info(weight1)
		def quantity1=params.quantity1
		log.info(quantity1)
		def billingType1 =params.billingType1
		log.info(billingType1)
		def price1=params.price1
		log.info(price1)
		def offerPercentage1 = params.offerPercentage1
		log.info(offerPercentage1)
		def total1=params.total1
		log.info(total1)
		
		def productDesc2=params.productDesc2
		log.info(productDesc2)
		def weight2 =params.weight2
		log.info(weight2)
		def quantity2=params.quantity2
		log.info(quantity2)
		def billingType2 =params.billingType2
		log.info(billingType2)
		def price2=params.price2
		log.info(price2)
		def offerPercentage2 = params.offerPercentage2
		log.info(offerPercentage2)
		def total2=params.total2
		log.info(total2)
		
		def productDesc3=params.productDesc3
		log.info(productDesc3)
		def weight3 =params.weight3
		log.info(weight3)
		def quantity3 =params.quantity3
		log.info(quantity3)
		def billingType3 =params.billingType3
		log.info(billingType3)
		def price3=params.price3
		log.info(price3)
		def offerPercentage3 = params.offerPercentage3
		log.info(offerPercentage3)
		def total3=params.total3
		log.info(total3)
		
		def productDesc4=params.productDesc4
		log.info(productDesc4)
		def weight4 =params.weight4
		log.info(weight4)
		def quantity4 =params.quantity4
		log.info(quantity4)
		def billingType4 =params.billingType4
		log.info(billingType4)
		def price4=params.price4
		log.info(price4)
		def offerPercentage4 = params.offerPercentage4
		log.info(offerPercentage4)
		def total4=params.total4
		log.info(total4)
		
		def productDesc5=params.productDesc5
		log.info(productDesc5)
		def weight5 =params.weight5
		log.info(weight5)
		def quantity5 =params.quantity5
		log.info(quantity5)
		def billingType5 =params.billingType5
		log.info(billingType5)
		def price5=params.price5
		log.info(price5)
		def offerPercentage5 = params.offerPercentage5
		log.info(offerPercentage5)
		def total5=params.total5
		log.info(total5)
		
		def paymentMode =params.paymentMode
		log.info(paymentMode)
		def grandTotal=params.grandTotal
		log.info(grandTotal)
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
	
		
		def user= User.findByUserName(session.user)
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin")
		 return
		}
		
		if( ! ( isValid(customerName)&& isValid(createDate)&& isValid(mobileNumber) && isValid(address) && isValid(productDesc1) && isValid(weight1) && isValid(quantity1)&& isValid(billingType1) && isValid(price1) 
			&& isValid(offerPercentage1)&& isValid(total1)/*&&isValid(productDesc2) && isValid(weight2) && isValid(quantity2)&& isValid(billingType2) && isValid(price2)&& isValid(offerPercentage2)&& isValid(total2)
			&&isValid(productDesc3) && isValid(weight3) && isValid(quantity3)&& isValid(billingType3) && isValid(price3)&& isValid(offerPercentage3)&& isValid(total3)
			&&isValid(productDesc4) && isValid(weight4) && isValid(quantity4)&& isValid(billingType4) && isValid(price4)&& isValid(offerPercentage4)&& isValid(total4)
			&&isValid(productDesc5) && isValid(weight5) && isValid(quantity5)&& isValid(billingType5) && isValid(price5)&& isValid(offerPercentage5)&& isValid(total5)*/
			&& isValid(paymentMode)&& isValid(grandTotal)&& isValid(modifiedBy) && (username !=null || username!="" ))){
			redirect(uri: "/user/userdashboard")
			return
		}
		
	
			if( ! (isValid(customerName)&& isValid(createDate)&& isValid(mobileNumber) && isValid(address) && isValid(productDesc1) && isValid(weight1) && isValid(quantity1)&& isValid(billingType1) && isValid(price1) 
			&& isValid(offerPercentage1)&& isValid(total1)/*&&isValid(productDesc2) && isValid(weight2) && isValid(quantity2)&& isValid(billingType2) && isValid(price2)&& isValid(offerPercentage2)&& isValid(total2)
			&&isValid(productDesc3) && isValid(weight3) && isValid(quantity3)&& isValid(billingType3) && isValid(price3)&& isValid(offerPercentage3)&& isValid(total3)
			&&isValid(productDesc4) && isValid(weight4) && isValid(quantity4)&& isValid(billingType4) && isValid(price4)&& isValid(offerPercentage4)&& isValid(total4)
			&&isValid(productDesc5) && isValid(weight5) && isValid(quantity5)&& isValid(billingType5) && isValid(price5)&& isValid(offerPercentage5)&& isValid(total5)*/
			&& isValid(paymentMode)&& isValid(grandTotal)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				
				result=BillingService.save(customerName,createDate,mobileNumber,address,productDesc1,weight1,quantity1,billingType1,price1,offerPercentage1,total1,
					productDesc2,weight2,quantity2,billingType2,price2,offerPercentage2,total2,productDesc3,weight3,quantity3,billingType3,price3,offerPercentage3,total3,
					productDesc4,weight4,quantity4,billingType4,price4,offerPercentage4,total4,productDesc5,weight5,quantity5,billingType5,price5,offerPercentage5,total5,paymentMode,grandTotal,modifiedBy)
				
				
				responseData.put("PInstance1", result.getAt("billingInstance"))
				if(result.get("status") == "success"){
				if(productDesc1!=null || productDesc1 ==""){
					IcecreamService.update(productDesc1,quantity1,modifiedBy)
				}
				if(productDesc2!=null){
					IcecreamService.update(productDesc2,quantity2,modifiedBy)
				}
				if(productDesc3!=null){
					IcecreamService.update(productDesc3,quantity3,modifiedBy)
				}
				if(productDesc4!=null){
					IcecreamService.update(productDesc4,quantity4,modifiedBy)
				}
				if(productDesc5!=null){
					IcecreamService.update(productDesc5,quantity5,modifiedBy)
				}
				}
				
				
				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				responseData.put("Date", result.getAt("date"))
				result=responseData
			}
		
		
		/* To update the data of billing */
		if(myaction.equals("update")) {
			if( ! (isValid(customerName)&& isValid(createDate)&& isValid(mobileNumber) && isValid(address) && isValid(productDesc1) && isValid(weight1) && isValid(quantity1)&& isValid(billingType1) && isValid(price1) 
			&& isValid(offerPercentage1)&& isValid(total1)/*&&isValid(productDesc2) && isValid(weight2) && isValid(quantity2)&& isValid(billingType2) && isValid(price2)&& isValid(offerPercentage2)&& isValid(total2)
			&&isValid(productDesc3) && isValid(weight3) && isValid(quantity3)&& isValid(billingType3) && isValid(price3)&& isValid(offerPercentage3)&& isValid(total3)
			&&isValid(productDesc4) && isValid(weight4) && isValid(quantity4)&& isValid(billingType4) && isValid(price4)&& isValid(offerPercentage4)&& isValid(total4)
			&&isValid(productDesc5) && isValid(weight5) && isValid(quantity5)&& isValid(billingType5) && isValid(price5)&& isValid(offerPercentage5)&& isValid(total5)*/
			&& isValid(paymentMode)&& isValid(grandTotal)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=BillingService.update(customerName,createDate,mobileNumber,address,productDesc1,weight1,quantity1,billingType1,price1,offerPercentage1,total1,
					productDesc2,weight2,quantity2,billingType2,price2,offerPercentage2,total2,productDesc3,weight3,quantity3,billingType3,price3,offerPercentage3,total3,
					productDesc4,weight4,quantity4,billingType4,price4,offerPercentage4,total4,productDesc5,weight5,quantity5,billingType5,price5,offerPercentage5,total5,paymentMode,grandTotal,modifiedBy)
			}
		}
		
		/* To delete the data of billing */
		if(myaction.equals("delete")) {
			result=BillingService.delete(customerName)
		}
		
		renderPage(mode, url, result)
				
		}
		
	@Transactional
	def getdata() {
		log.info("Billing Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def available=params.available
		def split=available.split("")
		def billingInstance=Billing.findByAvailable(params.available)
		log.info(billingInstance)
		def res=billingInstance.available
		render res
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
			log.info("billing Controller renderPage Action")
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