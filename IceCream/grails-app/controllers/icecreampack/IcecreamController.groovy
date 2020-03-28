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
	
	def updateIcecream(){
		
		log.info("Icecream Controller updateIcecream action")
		def responseData = new HashMap<>()
		//def icecream=Icecream.getAll()
		Icecream icecreamInstance=new Icecream();
		icecreamInstance=Icecream.get(params.id);
		
		def admin= Admin.findByAdminName(session.admin)

		def userName= session.admin
		if(userName ==null || userName=="" ){
			redirect(uri: "/admin/login")
			return
		}
		responseData.put("listId", "icecream")
		responseData.put("icecream",icecreamInstance)
		responseData.put("uname",admin)

		[result:responseData]
		
	}


	@Transactional
	def saveupdate() {
		log.info("Icecream Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		url="/Icecream/saveupdate.gsp"
		
		def mode= params.mode
		def myaction=params.myaction
		
		def materialId=params.materialId
		def productDesc=params.productDesc
		def icecreamType=params.icecreamType
		def weight=params.weight
		def quantity=params.quantity
		def retailPrice=params.retailPrice
		def wholesalePrice=params.wholesalePrice
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy);
		
		def admin= Admin.findByAdminName(session.admin)
		def userName= session.admin
		if(userName ==null || userName=="" ){
			redirect(uri: "/admin/login")
			return
		}
		
		result=IcecreamService.updateIcecream(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice,modifiedBy)
		url="/Icecream/saveupdate.gsp"
		responseData.put("message", "Your Icecream Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")

		/*if(mode == "mobile"){
			if( ! (isValid(materialId) &&(isValid(productDesc)) && isValid(icecreamType) && isValid(weight) && isValid(quantity)&& isValid(retailPrice)&& isValid(wholesalePrice))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=IcecreamService.updateicecream(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice)
				url="/Icecream/saveupdate.gsp"
				responseData.put("message", "Your Icecream Updated Successfully")
				responseData.put(getMessages("default.status.label"),"200")

			}
			render responseData as JSON
			return
		}

		if(mode=="web")	{
			
			if( ! (isValid(materialId) &&(isValid(productDesc)) && isValid(icecreamType) && isValid(weight) && isValid(quantity)&& isValid(retailPrice)&& isValid(wholesalePrice)&& isValid(myaction) && isValid(mode) && (userName !=null || userName!="" ))){
				redirect(uri: "/admin/dashboard")
				return
			}
			if( ! (isValid(materialId) &&(isValid(productDesc)) && isValid(icecreamType) && isValid(weight) && isValid(quantity)&& isValid(retailPrice)&& isValid(wholesalePrice))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				result=IcecreamService.updateicecream(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice)
				responseData.put("uname", admin)
				responseData.put(getMessages('default.message.label'),result.getAt("message"))
				responseData.put(getMessages('default.status.label'),result.getAt("status"))
			}*/
			responseData.put("uname", admin)
			[result:responseData]
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

	def create() {
		def responseData = new HashMap<>()
		responseData.put("listId", "create")
		[responseData:responseData]
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

