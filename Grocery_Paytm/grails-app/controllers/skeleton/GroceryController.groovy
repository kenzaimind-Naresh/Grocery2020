package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON;

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
class GroceryController {

	def GroceryService
	static transactional=true
	def CategoryController
	
	
static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]

	
	def showPayload(Grocery groceryInstance) {
		log.info("Grocery Controller showPayload action")
		response.outputStream << groceryInstance.image // write the grocery to the output stream
		response.outputStream.flush()
		}

    def create() {
		log.info("Grocery Controller create action")
		
			def responseData = new HashMap<>()	
			 def categoryName=Category.getAll()
			
		 def user= Merchant.findByEmail(session.user)
		 log.info(user)
		 def username= session.user
		 if(username ==null || username=="" ){
		  redirect(uri: "/merchant/login")
		  return
		 }
		 responseData.put("listId", "ldashboard")
		 responseData.put("uname",user)
		 responseData.put("categoryName",categoryName)
		 
		 log.info("************")
		 log.info(responseData)
 
		 [result:responseData]		
    }
	
	
	
	def packagecreate(){
		log.info("Grocery Controller packagecreate action")
		def responseData = new HashMap<>()
		 def categoryName=Category.getAll()
		
	 def user= Merchant.findByEmail(session.user)
	 log.info(user)
	 def username= session.user
	 if(username ==null || username=="" ){
	  redirect(uri: "/merchant/login")
	  return
	 }
	
	
	 responseData.put("listId", "ldashboard")
	 responseData.put("uname",user)
	 responseData.put("categoryName",categoryName)
	 
	 log.info("************")
	 log.info(responseData)

	 [result:responseData]	
	}
	
	def outofstock(){
	
		log.info("GroceryController outofstock Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/list")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantIdAndQuantity(merchantId,0,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("data    ********* "+data)
		def totalcount=Grocery.findAllByMerchantIdAndQuantity(merchantId,0).size()
		log.info("totalcount size "+totalcount)
		def groceryInstance=Grocery.findByGroceryName(params.groceryName)
		
		responseData.put("data1", groceryInstance)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]
	}
	
	def offsetlist1(){
		log.info("groceryController offsetlist Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/login")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def merchantId = user.id
		log.info(merchantId)
		
		
		def of=params.offset;
		def data=Grocery.findAllByMerchantIdAndQuantity(merchantId,0,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("data    ********* "+data)
		def totalcount=Grocery.findAllByMerchantIdAndQuantity(merchantId,0).size()
		log.info("totalcount size "+totalcount)
		
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
		
    @Transactional
    def save(Grocery groceryInstance) {
		log.info("Grocery Controller save action")
		log.info(groceryInstance.categoryName)
		log.info(groceryInstance.cost)
		groceryInstance.createdDate=new Date()
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
        if (groceryInstance == null) {
            notFound()
            return
        }
		
        if (groceryInstance.hasErrors()) {
			log.info("errors "+groceryInstance.errors)
            respond groceryInstance.errors, view:'create'
            return
        }
		def mInstatnce=Merchant.findByEmail(username);

		log.info("gname ************** "+mInstatnce)
		

		def uploadedFile = request.getFile('image')
		groceryInstance.image = uploadedFile.getBytes() //converting the file to bytes
		groceryInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
		groceryInstance.type = uploadedFile.contentType//getting and storing the file type
		
		log.info("*************")
		//log.info(groceryInstance.save(failOnError: true))
		
        groceryInstance.save flush:true
		redirect(uri: "/grocery/create")
		flash.message = "Grocery Created Successfully"
    
    }

	def getavail(){
	def result;
	log.info("Grocery Controller getavail actiotn")
	log.info("params "+params.name);
	def merchantshopName= session.getAttribute("merchantName")
		log.info("merchantshopName "+merchantshopName);
	def groceryInst=Grocery.findByMerchantshopNameAndGroceryName(merchantshopName,params.name);
	log.info("available quanity"+groceryInst.quantity);
	if(groceryInst!=null){
	result= groceryInst.quantity;
	}
	log.info("result "+result)
	render result;
	}
	
	
	def deleteGrocery(){
		log.info("Grocery Controller deleteGrocery actiotn")
		def responseData = new HashMap<>();
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/list")
		 return
		}
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		def result,res
		def id = params.id
		log.info(id)
	
		result=GroceryService.delete(id)
			def url="/grocery/deleteGrocery"
			responseData.put(getMessages('default.message.label'),"You Grocery deleted sucessfully ")
			responseData.put("uname", user)
		[result:responseData]
	}
	
	def list(){
		log.info("GroceryController list Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/list")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		
		def merchantId = user.id
		def of=0;
		log.info("merchantId "+merchantId);
		log.info("Image "+Grocery.findAllByMerchantId(merchantId))
		
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		//log.info("data    ********* "+data.get(1).groceryName)
		def totalcount=Grocery.findAllByMerchantId(merchantId).size()
		log.info(totalcount)
		def groceryInstance=Grocery.findByGroceryName(params.groceryName)
		//log.info("^^^^^^^^^^^^^^^^^^^"+groceryInstance.groceryName)
		
		responseData.put("data1", groceryInstance)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]

		
	}
	
	def offsetlist(){
		log.info("groceryController offsetlist Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/login")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def merchantId = user.id
		log.info(merchantId)
		
		
		def of=params.offset;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		def totalcount=Grocery.findAllByMerchantId(merchantId).size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}	
		
	def getdata() {
		log.info("Grocery Controller getdata action")
		def responseData = new HashMap<>()
		def result,url
		def groceryName=params.groceryName
		//def split=groceryName.split("")
		def groceryNameInstance=Grocery.findByGroceryName(params.groceryName)
		log.info(groceryNameInstance)
		//def res=groceryNameInstance.categoryName+"#"+groceryNameInstance.cost
		//render res
		
		responseData.put("gro", getdata)
		responseData.put("groceryNameInstance", groceryNameInstance)
		log.info(responseData)
		[result:responseData]

	}
	
	/* To save the data of DiagnosticTest */
	@Transactional
	def saveupdate() {
		log.info("grocery Controller saveupdate action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def responseData = new HashMap<>()
		def result,url
		url="/grocery/list.gsp"
		def categoryName=params.categoryName
		log.info(categoryName);
		def groceryName=params.groceryName
		log.info(groceryName);
		def cost=params.cost
		log.info(cost);
		def weight=params.weight
		log.info(weight);
		def quantity=params.quantity
		log.info(quantity);
		def offer=params.offer
		log.info(offer);
		def total=params.total
		log.info(total);
		
		def createdDate=params.createdDate
		log.info(createdDate)
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy);
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		def res=GroceryService.update(categoryName,groceryName,cost,weight,quantity,offer,total,createdDate,user.firstName)
		log.info("result from service "+res)

		responseData.put("uname", user)
		responseData.put(getMessages('default.message.label'),"Your Grocery Updated Successfully")
		[result:responseData]
		}

	
	@Transactional
	def updateGrocery() {
		log.info("Grocery Controller updateGrocery action")
		log.info(params.id);
		def responseData = new HashMap<>()
		Grocery groceryInstance=new Grocery();
		groceryInstance=Grocery.get(params.id);
		
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
	
		log.info(groceryInstance.groceryName)
		def categoryName=Category.getAll()
		
		if (groceryInstance == null) {
			notFound()
			return
		}
		responseData.put("categoryName",categoryName)
		responseData.put("gInstance", groceryInstance)
		log.info(responseData)
		responseData.put("uname", user)
		[result:responseData]

	}
	
    @Transactional
    def update(Grocery groceryInstance) {
		log.info("Grocery Controller update action")
        if (groceryInstance == null) {
            notFound()
            return
        }

        if (groceryInstance.hasErrors()) {
            respond groceryInstance.errors, view:'edit'
            return
        }

        groceryInstance.save flush:true

		redirect(uri: "/grocery/list")
		flash.message = "Updated Grocery Successfully"
		
    }

    @Transactional
    def delete(Grocery groceryInstance) {
		log.info("Grocery Controller delete action")
        if (groceryInstance == null) {
            notFound()
            return
        }

        groceryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Grocery.label', default: 'Grocery'), groceryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
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
			log.info("grocery Controller renderPage Action")
			//log.info(map.get("status"))
			log.info(url)
			log.info(mode)
			log.info(map)

		}
		
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'grocery.label', default: 'Grocery'), params.id])
                redirect action: "index", method: "GET"
            }		
            '*'{ render status: NOT_FOUND }
        }
    }
}
