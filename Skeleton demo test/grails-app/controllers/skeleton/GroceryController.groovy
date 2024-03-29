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

@Transactional(readOnly = true)
class GroceryController {

	def GroceryService
	static transactional=true
	def CategoryController
	
	//CategoryController cctv=new CategoryController();
	//ComputersrepairController computer=new ComputersrepairController();
	
	
static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
    }

	
	def pdetails() {
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/pdetails")
		 return
		}
		
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("data", data)
		
		log.info("************")
		log.info(responseData)

		[result:responseData]

}
	
    def show(Grocery groceryInstance) {
        respond groceryInstance
		
		//log.info("address Controller create action ***********")
		
		 def responseData = new HashMap<>()
			
		 def user= User.findByUserName(session.user)
		 log.info(user)
		 def username= session.user
		 if(username ==null || username=="" ){
		 // redirect(uri: "/grocery/show")
		  return
		 }
		 
		 responseData.put("listId", "show")
		 responseData.put("uname",user)
		 
		 log.info("************")
		 log.info(responseData)
 
		 [result:responseData]
		
		
    }
	
	def showPayload(Grocery groceryInstance) {
		response.outputStream << groceryInstance.image // write the grocery to the output stream
		response.outputStream.flush()
		}
	
	/*def showQrcode(Grocery groceryInstance) {
		response.outputStream << groceryInstance.Qrcode // write the grocery to the output stream
		response.outputStream.flush()
		}
	
	*/
	
	
	
    def create() {
       // respond new Grocery(params)
		
		
	//	def categoryName=Category.getAll()
		//	 respond new Category(params), model:[categoryName :categoryName]
		
			def responseData = new HashMap<>()	
			 def categoryName=Category.getAll()
			
		 def user= Merchant.findByEmail(session.user)
		 log.info(user)
		 def username= session.user
		 if(username ==null || username=="" ){
		  redirect(uri: "/merchant/ldashboard")
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
		
		def responseData = new HashMap<>()
		 def categoryName=Category.getAll()
		
	 def user= Merchant.findByEmail(session.user)
	 log.info(user)
	 def username= session.user
	 if(username ==null || username=="" ){
	  redirect(uri: "/merchant/ldashboard")
	  return
	 }
	
	
	 responseData.put("listId", "ldashboard")
	 responseData.put("uname",user)
	 responseData.put("categoryName",categoryName)
	 
	 log.info("************")
	 log.info(responseData)

	 [result:responseData]
	 
	
		
	}
	
	
    @Transactional
    def save(Grocery groceryInstance) {
        if (groceryInstance == null) {
            notFound()
            return
        }

		
        if (groceryInstance.hasErrors()) {
            respond groceryInstance.errors, view:'create'
            return
        }

		def uploadedFile = request.getFile('image')
		groceryInstance.image = uploadedFile.getBytes() //converting the file to bytes
		groceryInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
		groceryInstance.type = uploadedFile.contentType//getting and storing the file type
		
        groceryInstance.save flush:true
		redirect(uri: "/grocery/create")
		flash.message = "Grocery Created Successfully"
	
		
     /*   request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'grocery.label', default: 'Grocery'), groceryInstance.id])
                redirect groceryInstance
            }
            '*' { respond groceryInstance, [status: CREATED] }
        }
   
   */
    
    }
	
	def deleteGrocery(){
	log.info("grocery Controller deleteGrocery action")
		def responseData = new HashMap<>()
		def result,url
		url="/grocery/deleteGrocery.gsp"
		def id=params.id
		log.info(id);
		
		
			def res=GroceryService.delete(id,categoryName,groceryName,cost,weight,quantity,offer,createDate,total,user.firstName)
		log.info("result from service "+res)
		
	}
	
	

	
	
	
	
	
	def list(){
		log.info("GroceryController list Action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/list")
		 return
		}
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("data    ********* "+data.get(1).groceryName)
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
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def merchantId = user.id
		log.info(merchantId)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/offsetlist")
		 return
		}
		
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

    def edit() {
		
	    log.info("GroceryController edit Action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
		
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/grocery/edit")
		 return
		}
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findByMerchantId(merchantId,[sort:"id",max: 5])
		log.info(data)
		def totalcount=Grocery.findAllByMerchantId(merchantId).size()
		log.info(totalcount)
		def groceryInstance=Grocery.findByGroceryName(params.groceryName)
		log.info(groceryInstance)
		
		responseData.put("data1", groceryInstance)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]


		
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
		def responseData = new HashMap<>()
		def result,url
		url="/grocery/edit.gsp"
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
		def createDate=params.createDate
		log.info(createDate);
		def total=params.total
		log.info(total);
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy);
		def user= Merchant.findByEmail(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def res=GroceryService.update(categoryName,groceryName,cost,weight,quantity,offer,createDate,total,user.firstName)
		log.info("result from service "+res)
		/* To update the data of DiagnosticTest */
	//	if(myaction.equals("update")) {
/*			if( ! (isValid(categoryName) && isValid(groceryName) && isValid(cost) && isValid(weight) && isValid(quantity) && isValid(offer) && isValid(createDate)&& isValid(total)&& isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
			}
			else {
				def res=GroceryService.update(categoryName,groceryName,cost,weight,quantity,offer,createDate,total,modifiedBy)
				//if(res.get("status") == "success")
					responseData.put("uname", user)
					redirect(uri: "/grocery/saveupdate")
					flash.message = "Grocery Updated Successfully"
					
				//	responseData.put(getMessages('default.message.label'),res.getAt("message"))
				//	responseData.put(getMessages('default.status.label'),res.getAt("status"))
			}*/
			//	result=responseData
			
		//}
		
		/* To delete the data of DiagnosticTest 
		if(myaction.equals("delete")) {
			result=DiagnosticTestService.delete(testName)
		}
		*/
		//renderPage(mode, url, result)
			
		[username:user.firstName]	
		}
	

	def gedit(Grocery groceryInstance) {
		respond groceryInstance
	}
	
	@Transactional
	def updateGrocery() {
		log.info("update grocery action ")
		log.info(params.id);
		def responseData = new HashMap<>()
		Grocery groceryInstance=new Grocery();
		groceryInstance=Grocery.get(params.id);
		
		log.info(groceryInstance.groceryName)
		def categoryName=Category.getAll()
		
		if (groceryInstance == null) {
			notFound()
			return
		}
		responseData.put("categoryName",categoryName)
		responseData.put("gInstance", groceryInstance)
		log.info(responseData)
		[result:responseData]

/*		if (groceryInstance.hasErrors()) {
			respond groceryInstance.errors, view:'edit'
			return
		}*/

	//	groceryInstance.save flush:true


	  

	}
	
    @Transactional
    def update(Grocery groceryInstance) {
        if (groceryInstance == null) {
            notFound()
            return
        }

        if (groceryInstance.hasErrors()) {
            respond groceryInstance.errors, view:'edit'
            return
        }

        groceryInstance.save flush:true

		redirect(uri: "/grocery/create")
		flash.message = "Update Grocery Successfully"
	
      
		/*  request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Grocery.label', default: 'Grocery'), groceryInstance.id])
                redirect groceryInstance
            }
            '*'{ respond groceryInstance, [status: OK] }
        }
        */
    }

    @Transactional
    def delete(Grocery groceryInstance) {

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
		/*	 if(mode == "web" && map.get("status")=="success"){
				 
				render view:url,model:[result:map]
			}
			
			 else{
				 render map as JSON
			 }
		*/
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
