

package icecreampack

import grails.converters.JSON
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;
import icecreampack.Admin;
import icecreampack.Billing;
import icecreampack.Icecream;
import icecreampack.User;

import java.util.Date
import java.text.Format
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;



class IcecreamController {


	def IcecreamService
	def BillingService
	def GoldController

	static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]

	
	def icecreamviewlist(Integer max) {
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		respond Icecream.list(params), model:[IcecreamInstanceCount: Icecream.count()]



	}

	def icecreamreport(Integer max){
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		respond Icecream.list(params), model:[IcecreamInstanceCount: Icecream.count()]

		Date today = new Date().clearTime()
		Date yesterday = today - 1


	}



	def report(){
		// def resposeData=Icecream.getAll()
		// respond new Createjewellery(params), model:[resposeData :resposeData]

		log.info("IcecreamController report Action")
		def mode="web"
		def url="/Icecream/report.gsp"
		def data = new HashMap<>()
		def productDesc=params.productDesc
		def emp = Icecream.findAll();
		def username= getSession().user
		if(username ==null || username=="" ){
			redirect(uri: "/Employee/index1")
			return
		}
		def emp2= Icecream.findByCompanyEmail(username)

		def usertype=getSession().userType
		def emp1=Icecream.findAllByProductDesc(productDesc)
		def msg;
		if(emp1==null || emp1==[]){
			msg="Data Not Found"
		}
		else{
			msg=""
		}
		def user=new ArrayList()
		for(int i=0;i<emp.size();i++){
			user.add(emp[i].productDesc)
		}
		data.put("emp", emp)
		data.put("emp1", emp1)
		data.put("username", emp2)
		if(usertype == "Executive"){
			data.put("listId", "executiveList")
		}else{
			data.put("listId", "list")
		}
		data.put("message", msg)
		data.put("emp", emp)
		data.put("emp1",emp1)
		data.put("username", emp2)
		if(usertype == "Executive"){
			data.put("listId", "executiveList")
		}else{
			data.put("listId", "list")
		}
		renderPage(mode,url,data)
	}




	def report1(){
		def resposeData=Icecream.getAll()
		respond new Icecream(params), model:[resposeData :resposeData]


	}


	def createicecream() {
		
		log.info("IcecreamController createicecream action")
		
		def userName= session.admin
		if(userName ==null || userName=="" ){
		redirect(uri: "/admin/login")
		return
		}
		
		def admin= Admin.findByAdminName(session.admin)
		log.info(admin)

		def responseData = new HashMap<>()
		def icecream=Icecream.getAll()
		def pharmacy=Billing.getAll()
		responseData.put("uname",admin)
		responseData.put("listId", "icecream")
		responseData.put("icecream", "icecream")
		responseData.put("pharmacy", "Pharmacy")

		[result:responseData]
	}
	@Transactional
	def saveicecream() {
		log.info("Icecream Controller saveicecream action")
		def responseData = new HashMap<>()
		def result,url

		def mode="web"
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		
		def materialId=params.materialId
		log.info("material-Id "+materialId)
		
		def productDesc=params.productDesc
		log.info("product-Desc "+productDesc)
		
		def icecreamType=params.icecreamType
		log.info("icecream-Type "+icecreamType)
		
		def weight=params.weight
		log.info("weight "+weight)
		
		def quantity=params.quantity
		log.info("quantity "+quantity)
		
		def retailPrice=params.retailPrice
		log.info("retail-Price "+retailPrice)
		
		def wholesalePrice=params.wholesalePrice
		log.info("wholesale-Price "+wholesalePrice)
		
			
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		
		def admin= Admin.findByAdminName(session.admin)
		log.info(admin)

		def userName= session.admin
		if(userName ==null || userName=="" ){
		redirect(uri: "/admin/login")
		return
		}
		
		

		if( ! (isValid(mode))){
			log.info("*********** "+mode)
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}


		if(myaction.equals("save")) {

			if( ! (isValid(materialId)&& isValid(productDesc)&& isValid(icecreamType)&& isValid(weight)&& isValid(quantity)&& isValid(retailPrice)&& isValid(wholesalePrice)&&isValid(modifiedBy) && (userName !=null || userName!="" ))){

				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {

				result=IcecreamService.save(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice,modifiedBy)

				log.info(result)
				responseData.put("uname",admin)
				//responseData.put("adminName", admin.adminName)
				if(result.get("status") == "success"){
					url="/Icecream/saveicecream.gsp"
					responseData.put("message", "Your Registration completed Successfully")
					responseData.put(getMessages("default.status.label"),"200")
				}else if(result.get("status") == "error"){
					responseData.put("message", "Already Existed")
					responseData.put(getMessages("default.status.label"),"500")
					url="/Icecream/saveicecream.gsp"
				}
			}
			if(mode=="mobile"){
				render responseData as JSON
				return
			}
			[result:responseData]
		}
		//	Icecream.executeUpdate("update Icecream set rate = rate- where jewellery_name = '?'")
		//Icecream.executeUpdate("update Icecream set rate = quantity-rate where jewellery_name = '?'")
	}

	def show(Icecream IcecreamInstance){

		respond IcecreamInstance
	}
	def edit(Icecream IcecreamInstance) {
		respond IcecreamInstance
	}

	@Transactional
	def update(Icecream IcecreamInstance) {
		if (IcecreamInstance == null) {
			notFound()
			return
		}

		if (IcecreamInstance.hasErrors()) {
			respond IcecreamInstance.errors, view:'edit'
			return
		}

		IcecreamInstance.save flush:true
		request.withFormat{
			form multipartForm{
				flash.message=message(code:'default.updated.message',args:[message(code:'Icecream.label',default:'Icecream'),IcecreamInstance.id])
				redirect IcecreamInstance
			}
			'*'{respond IcecreamInstance,[status:OK]}

		}

	}


	def updatejewellery(){

		def responseData = new HashMap<>()
		def icecream=Icecream.getAll()
		def admin= Admin.findByAdminName(session.admin)

		def userName= session.admin
		if(userName ==null || userName=="" ){
			redirect(uri: "/admin/login")
			return
		}
		responseData.put("listId", "icecream")
		responseData.put("icecream",icecream)
		responseData.put("uname",admin)

		[result:responseData]
	}

	@Transactional
	def saveupdate() {
		log.info("Icecream Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		url="/Icecream/saveupdate.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def materialId=params.materialId
		def productDesc=params.productDesc
		def icecreamType=params.icecreamType
		def weight=params.weight
		def quantity=params.quantity
		def retailPrice=params.retailPrice
		def wholesalePrice=params.wholesalePrice
		def totalAmount=params.totalAmount

		def totalAvailable=params.totalAvailable

		if(mode == "mobile"){
			if( ! (isValid(materialId) &&(isValid(productDesc)) && isValid(icecreamType) && isValid(weight) && isValid(quantity)&& isValid(retailPrice)&& isValid(wholesalePrice)&&isValid(totalAvailable))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=IcecreamService.update(materialId,productDesc,icecreamType,retailPrice,quantity,weight,wholesalePrice,totalAmount)
				url="/Icecream/saveupdate.gsp"
				responseData.put("message", "Your Profile Updated Successfully")
				responseData.put(getMessages("default.status.label"),"200")

			}
			render responseData as JSON
			return
		}

		if(mode=="web")	{
			def admin= Admin.findByAdminName(session.admin)
			def userName= session.admin
			if(userName ==null || userName=="" ){
				redirect(uri: "/admin/login")
				return
			}
			if( ! (isValid(productDesc) && isValid(retailPrice)&& isValid(quantity)&& isValid(weight) && isValid(materialId)&&isValid(totalAvailable)&&isValid(icecreamType)&&isValid(totalAmount)&& isValid(myaction) && isValid(mode) && (userName !=null || userName!="" ))){
				redirect(uri: "/admin/dashboard")
				return
			}
			if( ! (isValid(productDesc) &&isValid(retailPrice)&& isValid(quantity)&& isValid(weight) && isValid(materialId)&&isValid(totalAvailable) &&isValid(icecreamType)&&isValid(totalAmount))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=IcecreamService.update(productDesc,retailPrice,quantity,weight,materialId,totalAvailable,icecreamType,totalAmount)
				responseData.put("uname", admin)
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}
			[result:responseData]
		}
	}





	def list(){
		log.info("IcecreamController list Action")
		def responseData = new HashMap<>();
		def of=0;
		def icecreamdata=Icecream.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(icecreamdata)
		def totalcount=Icecream.findAll().size()
		log.info(totalcount)
		responseData.put("totalcount",totalcount )
		responseData.put("icecreamdata", icecreamdata)
		responseData.put("offset", of)
		[result:responseData]
	}


	def offsetlist(){
		log.info("CreatemedicneController offsetlist Action")


		def of=params.offset;
		def responseData = new HashMap<>()
		def icecreamdata=Icecream.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(icecreamdata)
		def totalcount=Icecream.findAll().size()
		log.info(totalcount)
		responseData.put("totalcount",totalcount )
		responseData.put("icecreamdata", icecreamdata)
		responseData.put("offset", Integer.parseInt(of))
		[result:responseData]
	}

	/* To check parameters are valid or not */
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
	}

	def createcustomer(){
		def responseData = new HashMap<>()
		responseData.put("listId", "createcustomer")
		[responseData:responseData]
	}


	def create() {
		def responseData = new HashMap<>()
		responseData.put("listId", "create")
		[responseData:responseData]
	}
	@Transactional
	def saveCustomer() {
		log.info("customerdetails Controller saveCustomer action")
		def responseData = new HashMap<>()
		def result,url

		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def customerName=params.customerName
		log.info(customerName)
		def productDesc=params.productDesc
		log.info(productDesc)
		def sellQuantity=params.sellQuantity
		log.info(sellQuantity)
		def priceType=params.priceType
		log.info(priceType)
		def cPrice=params.cPrice
		log.info(cPrice)
		def percentage=params.percentage
		log.info(percentage)
		def createdBy=params.createdBy
		log.info(createdBy)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)


		if( ! (isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}


		if(myaction.equals("save")) {

			if( ! (isValid(customerName)&&isValid(productDesc) && isValid(sellQuantity) && isValid(priceType) && isValid(cPrice)&&isValid(percentage) &&isValid(createdBy)&&isValid(modifiedBy))){

				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {

				result=CustomerdetailsService.save(customerName,productDesc,sellQuantity,priceType,cPrice,percentage,createdBy,modifiedBy)
				responseData.put("customerdetailsInstance", result.getAt("customerdetailsInstance"))
				log.info(result)

				if(result.get("status") == "success"){
					url="/customerdetails/saveCustomer.gsp"
					responseData.put("message", "Your Registration completed Successfully")
					responseData.put(getMessages("default.status.label"),"200")
				}else if(result.get("status") == "error"){
					responseData.put("message", "Already Existed")
					responseData.put(getMessages("default.status.label"),"500")
					url="/customerdetails/saveCustomer.gsp"
				}
			}
			if(mode=="mobile"){
				render responseData as JSON
				return
			}

			[result:responseData]
		}
	}

	@Transactional
	def getdata() {
		log.info("Icecream Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def productDesc=params.productDesc
		def split=productDesc.split("")
		def icecreamInstance=Icecream.findByProductDesc(params.productDesc)
		log.info(icecreamInstance)
		def res=icecreamInstance.retailPrice+"#"+"#"+icecreamInstance.quantity
		render res
	}

	@Transactional
	def getdata1() {
		log.info("Icecream Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def productDesc=params.productDesc
		def split=productDesc.split("")
		def icecreamInstance=Icecream.findByQuantity(params.quantity)
		log.info(icecreamInstance)
		def res=icecreamInstance.retailPrice+"#"+icecreamInstance.totalAvailable+"#"+icecreamInstance.quantity
		render res
	}




	def createpharmacy()
	{

		def pharmacy=Billing.getAll()
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
		responseData.put("phar",pharmacy)
		responseData.put(getMessages('default.message.label'),"")
		[result:responseData]

	}

	/* To save the data of Pharmacy */
	@Transactional
	def savepharmacy() {
		log.info("pharmacy Controller savepharmacy action")
		def responseData = new HashMap<>()
		def result,url
		url="/pharmacy/savepharmacy.gsp"
		def mode=params.mode
		def myaction = params.myaction
		def pFirstname=params.pFirstname
		def pLastname=params.pLastname
		def drugdetails=params.drugdetails
		def drugdetails2=params.drugdetails2
		def drugdetails3=params.drugdetails3
		def drugdetails4=params.drugdetails4
		def drugdetails5=params.drugdetails5
		def tax=params.tax
		def rate=params.rate
		def rate2=params.rate2
		def rate3=params.rate3
		def rate4=params.rate4
		def rate5=params.rate5
		def quantity=params.quantity
		def quantity2=params.quantity2
		def quantity3=params.quantity3
		def quantity4=params.quantity4
		def quantity5=params.quantity5

		def total = params.total
		def total2 = params.total2
		def total3 = params.total3
		def total4 = params.total4
		def total5 = params.total5
		def grandTotal=params.grandTotal
		def pMode=params.pMode
		def modifiedBy=params.modifiedBy
		def user= User.findByUserName(session.user)

		def username= session.user
		if(username ==null || username=="" ){
			redirect(uri: "/user/userlogin")
			return
		}

		if( ! ( isValid(pFirstname)&& isValid(pLastname) && isValid(drugdetails)&& isValid(tax)&& isValid(rate)&& isValid(quantity)&& isValid(total)
		&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy) && isValid(myaction) && isValid(mode) && (username !=null || username!="" ))){
			redirect(uri: "/user/userDashboard")
			return
		}
		if(myaction.equals("save")) {
			if( ! (isValid(pFirstname)&& isValid(pLastname) && isValid(drugdetails)&& isValid(tax)&& isValid(rate)&& isValid(quantity)&& isValid(total)
			&& isValid(grandTotal)&& isValid(pMode)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return

			}
			else {
				def res1,res2,res3,res4,res5


				res1=billingService.save(pFirstname,pLastname,drugdetails,tax,rate,quantity,total,grandTotal,pMode,modifiedBy)
				responseData.put("PInstance1", res1.getAt("pharmacyInstance"))
				responseData.put("PInstance2", null)
				responseData.put("PInstance3", null)
				responseData.put("PInstance4", null)
				responseData.put("PInstance5", null)

				if(drugdetails2!="" && quantity2!="" && rate2!="" && total2!=""){
					res2=billingService.save(pFirstname,pLastname,drugdetails2,tax,rate2,quantity2,total2,grandTotal,pMode,modifiedBy)
					responseData.put("PInstance2", res2.getAt("pharmacyInstance"))
				}

				if(drugdetails3!="" && quantity3!="" && rate3!="" && total3!=""){
					res3=billingService.save(pFirstname,pLastname,drugdetails3,tax,rate3,quantity3,total3,grandTotal,pMode,modifiedBy)
					responseData.put("PInstance3", res3.getAt("pharmacyInstance"))
				}
				if(drugdetails4!="" && quantity4!="" && rate4!="" && total4!=""){
					res4=billingService.save(pFirstname,pLastname,drugdetails4,tax,rate4,quantity4,total4,grandTotal,pMode,modifiedBy)
					responseData.put("PInstance4", res4.getAt("pharmacyInstance"))
				}
				if(drugdetails5!="" && quantity5!="" && rate5!="" && total5!=""){
					res5=billingService.save(pFirstname,pLastname,drugdetails5,tax,rate5,quantity5,total5,grandTotal,pMode,modifiedBy)
					responseData.put("PInstance5", res5.getAt("pharmacyInstance"))

				}

				responseData.put("uname", user)
				responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
				responseData.put("Date", res1.getAt("date"))
				result=responseData
			}
		}
	}
	/* To get the messages */
	def getMessages(code) {
		return message(code : code)
	}

	def renderPage(mode,url,map){
		log.info("Icecream Controller renderPage Action")
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

