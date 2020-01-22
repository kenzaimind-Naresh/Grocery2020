package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON;

import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;

@Transactional(readOnly = true)
class MerchantController {

	def MerchantService
	def GroceryController
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		log.info("MerchantController index Action")
        params.max = Math.min(max ?: 10, 100)
        respond Merchant.list(params), model:[merchantInstanceCount: Merchant.count()]
    }

    def show(Merchant merchantInstance) {
        respond merchantInstance
		log.info("MerchantController show Action")
    }
	
	

	def showQrcode(Merchant merchantInstance) {
		response.outputStream << merchantInstance.qrcode // write the grocery to the output stream
		response.outputStream.flush()
		}
	
	def dashboard() {
		log.info("MerchantController dashboard Action")
		params.max = Math.min(params.max ? params.int('max') : 8, 100)
		respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
		
		
		
		
	}
	
	def updateprofile(){
		log.info("MerchantController updateprofile Action")
		def responseData = new HashMap<>()
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def data=Merchant.findByEmail(username)
		log.info(data)
		responseData.put("listId", "dashboard")
		responseData.put("uname",user)
		responseData.put("data",data)
		log.info("************")
		log.info(responseData)
		[result:responseData]
	}
	
	def contact1(){
		
		log.info("MerchantController contact1 Action")
		def responseData = new HashMap<>()
	
		def mode="web"
		def of=0;
		def contact1=Admin.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(contact1)
		def totalcount=Admin.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "contact1")
		responseData.put("totalcount",totalcount )
		responseData.put("contact1", contact1)
		responseData.put("offset", of)
		[result:responseData]
		
	}
	
	
	def merchant(){
		log.info("MerchantController list Action")
		def responseData = new HashMap<>();
			def of=0;
			def newRestdata=Newmerchant.list(sort:"id",order:"desc",max: 5, offset: of)
			log.info(newRestdata)
			def totalcount=Newmerchant.findAll().size()
			log.info(totalcount)
			responseData.put("totalcount",totalcount )
			responseData.put("newRestdata", newRestdata)
			responseData.put("offset", of)
			[result:responseData]
		}

	def offsetlist(){
		log.info("Merchant crontroller merchantdata")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def shopName=params.shopName
		def responseData = new HashMap<>()
		def pat1=grocery.getAll()
		def dissheet=merchantdata.findAllBygroceryId(params.groceryId)
		def user= User.findByshopName(session.user)
		
		
		def mode="web"
		def of=params.offset;
		def dischargedata=merchantdata.findAllBygroceryId(params.groceryId,[max: 5,sort:"createdDate",order: "desc", offset: of])
		def totalcount=merchantdata.findAll().size()
		def patId=new ArrayList()
		def patIdd=new ArrayList()
		
	for(int i=0;i<pat1.size();i++){

			patId.add(pat1[i].groceryId)
			
		}
	for(int i=0;i<pat1.size();i++){
		
					patIdd.add(pat1[i].groceryId)
					
				}
	
	if(dischargedata!=[]){
		responseData.put("listId", "merchantdata")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", dischargedata)
		responseData.put("offset", Integer.parseInt(of))
		responseData.put("dissheet",dissheet)
		responseData.put("pat1",patId)
		responseData.put("pat2",patIdd)
		
			responseData.put("uname",user)
			responseData.put(getMessages('default.message.label'),"")
	}else {
	responseData.put("listId", "merchantdata")
	responseData.put("totalcount",totalcount )
	responseData.put("merchantdata", dischargedata)
	responseData.put("offset", Integer.parseInt(of))
	responseData.put("dissheet",dissheet)
	responseData.put("pat1",patId)
	responseData.put("pat2",patIdd)
		responseData.put("uname",user)
		responseData.put(getMessages('default.message.label'),"Data not found")
	}
		
		[result:responseData]

		
	}

	/*	
	@Transactional
	def saveupdate() {
		log.info("doctor Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		def mode=params.mode
		log.info(mode)
		def shopId = params.shopId
		log.info(shopId)
		def shopName = params.shopName
		log.info(shopName)
		def firstName = params.firstName
		log.info(firstName)
		def lastName=params.lastName
		log.info(lastName)
		def email=params.email
		log.info(email)
		def mobileNumber=params.mobileNumber
		log.info(mobileNumber)
		def address=params.address
		log.info(address)
		def city = params.city
		log.info(city)
		
		def zipCode=params.zipCode
		log.info(zipCode)
		
		
		
		
		if(mode == "mobile"){
			
			if( ! (isValid(shopId)&& isValid(shopName) && isValid(firstName) && isValid(lastName)&& isValid(email)&& isValid(mobileNumber)
				&& isValid(address)&& isValid(city)&& isValid(zipCode))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=DoctorService.update(shopId,shopName,firstName,lastName,email,mobileNumber,address,city,zipCode)
		url="/doctor/saveupdate.gsp"
		responseData.put("uname",Merchant.findByShopId(shopId).firstName)
		responseData.put("message", "Your Profile Updated Successfully")
		//responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
	if(mode=="web")    {
		def user= Merchant.findByEmail(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		else {
			result=MerchantService.update(shopId,shopName,firstName,lastName,email,mobileNumber,address,city,zipCode)
			responseData.put("uname",user)
			
			render text: """<script type="text/javascript">
                    alert("Profile Updated Successfully");
                    window.location.href = "/ProviderSearch/doctor/updatedoctor";


 </script>""",
			contentType: 'js'
			
		}
	
	[result:responseData]
	}
	
	}

*/
		def saveupdate(Merchant merchantInstance) {
			log.info("MerchantController saveupdate Action")
			if (merchantInstance == null) {
				notFound()
				return
			}
	
		/*	if (merchantInstance.hasErrors()) {
				respond merchantInstance.errors, view:'updateprofile'
				return
			}
	
	*/
			
			/*
			def uploadedFile = request.getFile('image')
			merchantInstance.image = uploadedFile.getBytes() //converting the file to bytes
			merchantInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
			merchantInstance.type = uploadedFile.contentType//getting and storing the file type
			
			def uploaded = request.getFile('qrcode')
			merchantInstance.qrcode = uploaded.getBytes() //converting the file to bytes
			merchantInstance.name1 = uploaded.originalFilename //getting the file name from the uploaded file
			merchantInstance.type1 = uploaded.contentType//getting and storing the file type
			
			*/
			
			merchantInstance.save flush:true
			redirect(uri: "/merchant/updateprofile")
			flash.message = "Profile Updated Successfully"
			
	 
			
		}
		
		def merchantdata(){
			log.info("Merchant Controller merchantdata action")
			def responseData = new HashMap<>()
			def result,url
			url="/merchant/merchantdata.gsp"
			def mode=params.mode
			def merchantId = params.merchantId
			log.info(merchantId)
			def data = Grocery.findAllByMerchantId(merchantId)
			log.info(data.size())
			responseData.put("data", Grocery.list())
			responseData.put("merchantCount", Grocery.count())
			
			[merchant:responseData]
			
			}
		
			def list(){
				log.info("MerchantController list Action")
				def responseData = new HashMap<>();
					def of=0;
					def newRestdata=Newmerchant.list(sort:"id",order:"desc",max: 5, offset: of)
					log.info(newRestdata)
					def totalcount=Newmerchant.findAll().size()
					log.info(totalcount)
					responseData.put("totalcount",totalcount )
					responseData.put("newRestdata", newRestdata)
					responseData.put("offset", of)
					[result:responseData]
				}
		
	def changepass={
		log.info("MerchantController changepass Action")
		def userName= session.user
		if(userName ==null || userName=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
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
	
		
	def passwordSave2(){
		log.info("Merchant controller passwordSave2 action")
		
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/merchant/login")
			return
		   }
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def password=params.password
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def result,res
		log.info(password)
		log.info(newPwd)
		log.info(confirmPwd)
		
		
		
		if(mode=="web"){
	
		if((username !=null || username!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/merchant/ldashboard")
			return false
		}else{
		
		def url="/merchant/passwordSave2.gsp"
		def user= Merchant.findByEmail(username)
		log.info(user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=MerchantService.passwordSave2(username,newPwd)
		if(result.get("status") == "success"){
			// flash.message = "Profile Updated Successfully"
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		}
		 }
		
		 [result:responseData]
	   }
		}
	}
	
	def location(){
		log.info("MerchantController location Action")
	}
	
	def location1(){
		log.info("MerchantController location1 Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def city=params.city
		def street=params.street
		
		//log.info("MerchantController Iadashboard Action")
		def username= session.user
/*		if(username ==null || username=="" ){
		 redirect(uri: "/user/userlogin1")
		 return
		}*/
		
		//def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user3= User.findByUserName(session.user)
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
					
				data.put("message", msg)
				data.put("emp",emp)
				data.put("message1", msg1)
				data.put("emp1",emp1)
				data.put("uname",user)
				data.put("user3",user3)
				data.put("merchant",merchant)
				[result:data]
				
		
	}
	
	def searchlocation(){
		
		log.info("MerchantController searchlocation Action")
		def data = new HashMap<>()
		def merchant=Merchant.getAll()
		def city=params.city
		def street=params.street
		
			
/*		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "user/userlogin1")
		 return
		}*/
		
		//def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user3= User.findByUserName(session.user)
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
					
					
				data.put("listId", "searchlocation")
				data.put("message", msg)
				data.put("emp",emp)
				data.put("message1", msg1)
				data.put("emp1",emp1)
				data.put("user3",user3)
				data.put("merchant",merchant)
				[result:data]
		
	}
	
	def getdata(){
		log.info("Merchant Controller getdata action")
		def cost = params.cost
		log.info(cost)
		def merchantshopName = params.merchantshopName
		log.info(merchantshopName)
		def res=cost+"#"+merchantshopName
		render res
	}
	
	
	
	def logout = {
		log.info("logout  ****")
		
		session.invalidate();
		//sessionStorage.clear()
		redirect(action:"location")
		}
	
	def userdashboard() {
		log.info("MerchantController userdashboard Action")
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "user/userlogin1")
		 return
		}
		respond Grocery.list(params), model:[groceryInstanceCount: Grocery.count()]
			
	}
	
	
	def login(){ }
	
	
	
	def authenticate  = {
		log.info("MerchantController authencate Action")
			log.info("#########")
			def user = Merchant.findByEmailAndPassword(params.email,params.password)
			log.info(user)
			if(user){
				session.user=user.email
				redirect(action:"ldashboard")
			}else{
			render text: """<script type="text/javascript">
                    alert("Enter valid Email/Password");
                    window.location.href = "/Skeleton/merchant/login";


 </script>""",
			contentType: 'js'
	
			
			
			//flash.message = "sorry, ${params.email}. please try again"
			//redirect(action:"login")
			}
		
			
			
			}
		
	def ldashboard ={
		log.info("MerchantController Iadashboard Action")
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		
		def responseData = new HashMap<>()
		def mode=params.mode
		log.info(mode)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		
		def merchantId = user.id
		def of=0;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		
		responseData.put("listId", "ldashboard")
		responseData.put("uname",user)
		responseData.put("data", data)
		
		log.info("************")
		log.info(responseData)

		[result:responseData]
	
	}
	
	def merchantlist(){
		log.info("merchantController merchantlist Action")
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def merchantdata=Merchant.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "merchantlist")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}
	
    def create() {
		log.info("MerchantController create Action")
        respond new Merchant(params)
    }
	
    @Transactional
    def save(Merchant merchantInstance) {
		log.info("MerchantController save Action")
        if (merchantInstance == null) {
            notFound()
            return
        }

        if (merchantInstance.hasErrors()) {
            respond merchantInstance.errors, view:'create'
            return
        }

		
		
		def uploadedFile = request.getFile('image')
		merchantInstance.image = uploadedFile.getBytes() //converting the file to bytes
		merchantInstance.name = uploadedFile.originalFilename //getting the file name from the uploaded file
		merchantInstance.type = uploadedFile.contentType//getting and storing the file type
		
		def uploaded = request.getFile('qrcode')
		merchantInstance.qrcode = uploaded.getBytes() //converting the file to bytes
		merchantInstance.name1 = uploaded.originalFilename //getting the file name from the uploaded file
		merchantInstance.type1 = uploaded.contentType//getting and storing the file type
		
		
        merchantInstance.save flush:true
		redirect(uri: "/merchant/create")
		flash.message = "Merchant Registration Successfully"
		
        
    }

    def edit(Merchant merchantInstance) {
		log.info("MerchantController edit Action")
        respond merchantInstance
    }

    @Transactional
    def update(Merchant merchantInstance) {
		log.info("MerchantController update Atction")
        if (merchantInstance == null) {
            notFound()
            return
        }

        if (merchantInstance.hasErrors()) {
            respond merchantInstance.errors, view:'edit'
            return
        }

        merchantInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Merchant.label', default: 'Merchant'), merchantInstance.id])
                redirect merchantInstance
            }
            '*'{ respond merchantInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Merchant merchantInstance) {
		log.info("MerchantController delete Action")
        if (merchantInstance == null) {
            notFound()
            return
        }

        merchantInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Merchant.label', default: 'Merchant'), merchantInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'merchant.label', default: 'Merchant'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
		
	/* To get the messages */
	def getMessages(code) {
		return message(code : code)
	}
	
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
		}	
	
	def renderPage(mode,url,map){
		log.info("Merchant Controller renderPage Action")
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
