package icecreampack

import icecreampack.Customerdetails;
import grails.converters.JSON
import grails.transaction.Transactional;

class CustomerdetailsController {

   def CustomerdetailsService
   static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]
   def createmedicine
   
   
   def createcustomer(){
	   log.info("Customerdetails Controller createcustomer action ********")
	   
	   def d=Icecream.get(params.icecreamid)
	   log.info(d)
	   def responseData = new HashMap<>()
	   responseData.put("listId", "createcustomer")
	   responseData.put("MedicineId",params.icecreamid)
	   responseData.put("Mname",d)
	   [responseData:responseData]
   }
   def viewlist(Integer max) {
	   params.max = Math.min(params.max ? params.int('max') : 5, 100)
	   respond Customerdetails.list(params), model:[customerdetailsInstanceCount: Customerdetails.count()]
	   }
   
   def create() {
	   
	   def responseData = new HashMap<>()
	   responseData.put("listId", "create")
	   [responseData:responseData]
   }
   
   @Transactional
   def getdata() {
	   log.info("Customerdetails Controller getdata action")
	   def responseData = new HashMap<>()
	   def result,url
	   def productDesc=params.productDesc
	   def split=productDesc.split("")
	   def createmedicineInstance=Icecream.findByProductDesc(params.productDesc)
	   log.info(createmedicineInstance)
	   def res=createmedicineInstance.wholesalePrice
	   render res
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
	   def medicineName=params.medicineName
	   log.info(medicineName)
	   def quantity=params.quantity
	   log.info(quantity)
	   
	   def cPrice=params.cPrice
	   log.info(cPrice)
	   
	   def total=params.total
	   log.info(total)
	   
	   
	   
	   
	   
	   def medicineName1=params.medicineName1
	   log.info(medicineName1)
	   def quantity1=params.quantity1
	   log.info(quantity1)
	   
	   def cPrice1=params.cPrice1
	   log.info(cPrice1)
	   
	  
	   def total1=params.total1
	   log.info(total1)
	   
	   def medicineName2=params.medicineName2
	   log.info(medicineName2)
	   def quantity2=params.quantity2
	   log.info(quantity2)
	   
	   def cPrice2=params.cPrice2
	   log.info(cPrice2)
	   
	  
	   def total2=params.total2
	   log.info(total2)
	   
	   def medicineName3=params.medicineName3
	   log.info(medicineName3)
	   def quantity3=params.quantity3
	   log.info(quantity3)
	   
	   def cPrice3=params.cPrice3
	   log.info(cPrice3)
	   
	  
	   def total3=params.total3
	   log.info(total3)
	   
	   
	   def modifiedBy=params.modifiedBy
	   log.info(modifiedBy)
	   
	   
	   if( ! (isValid(myaction) && isValid(mode))){
		   responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		   responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		   renderPage(mode, url, responseData)
		   return
		   }
		   
	  
		   
		   if(myaction.equals("save")) {
		   
		   if( ! (isValid(customerName)&&isValid(medicineName) && isValid(quantity) && isValid(cPrice)&&isValid(total)&&isValid(modifiedBy))){
		   
		   responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		   responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		   renderPage(mode, url, responseData)
		   return
		   }
		   else {
		   
		  result=CustomerdetailsService.save(customerName,medicineName,quantity,cPrice,total,medicineName1,quantity1,cPrice1,total1,medicineName2,quantity2,cPrice2,total2,modifiedBy)
		   responseData.put("customerdetailsInstance", result.getAt("customerdetailsInstance"))
		   
		  
		   log.info("***********")
		   
		   log.info(result)
		   log.info(mode)
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
	   log.info("customerdetails Controller renderPage Action")
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
