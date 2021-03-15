package skeleton



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional;
import java.text.SimpleDateFormat



class PackageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def PackageService
	def SubscriptionService
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Package.list(params), model:[packageInstanceCount: Package.count()]
    }

    def show(Package packageInstance) {
        respond packageInstance
    }
	
	def packview(){
		
		log.info("Package Controller packview action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
		url="/Package/activationPage.gsp"
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def silvr = "Silver"
		def gld = "Gold"
		def Pltnm = "Platinum"
		def spack = Package.findByPackageName(silvr)
		log.info("package from silver: "+spack)
		def gpack = Package.findByPackageName(gld)
		log.info("package from gold: "+gpack)
		def ppack = Package.findByPackageName(Pltnm)
		log.info("package from platinum: "+ppack)
		def pack = Package.findAll()
		log.info("Packages: "+pack)
		def packdata = Package.where { duration != "15Days" }.list()
		log.info("packdata: "+packdata)
		//log.info("packageId from package data: "+packdata.packageId)
		//log.info("createddate from package data: "+packdata.createdDate)
		//log.info("duration from package data: "+packdata.duration)
		//log.info("1 duration value from package data: "+packdata[0].duration)
		log.info("merchantId from merchantdata: "+user.id)
		
		
		
		responseData.put("spack", spack)
		responseData.put("pack", pack)
		responseData.put("packdata", packdata)
		responseData.put("gpack", gpack)
		responseData.put("ppack", ppack)
		responseData.put("listId", "list")
		responseData.put("uname", user)
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	def getSubscription(){
		
		log.info("Package Controller getSubscription action")
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def id = params.id
		def packdata=Package.findByPackageName(id)
		log.info("packageId from package data: "+packdata.packageId)
		log.info("duration from package data: "+packdata.duration)
		log.info("merchantId from merchantdata: "+user.id)
		
		Date expiryDate
		String expdate
		def createdDate
		if(packdata.duration == "1month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 1)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 1month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "2month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 2)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 2month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "3month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
		log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 3)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 3month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "4month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 4)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 4month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "5month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 5)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 5month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "6month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 6)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 6month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "7month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 7)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 7month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "8month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 8)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 8month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "9month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 9)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 9month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "10month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 10)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 10month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "11month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 11)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 11month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		else if(packdata.duration == "12month"){
			Calendar calendar = Calendar.getInstance();
			createdDate = calendar.getTime()
			log.info("Current date: " + createdDate)
			calendar.add(Calendar.MONTH, 12)
			expiryDate = calendar.getTime()
			log.info("ExpiryDate with 12month: " + expiryDate)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			
			expdate = sdf.format(expiryDate);
			log.info("Formatted Expiry Date: "+expdate);
		}
		log.info("ExpiryDate: "+expdate)
		def paymentKey = "abc123"
		
		def subscription = SubscriptionService.saveSubcription(packdata.packageId,user.id,createdDate,expdate,paymentKey)
		
		responseData.put("packdata", packdata)
		responseData.put("listId", "list")
		responseData.put("uname", user)
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	def proceedPayment(){
		
		log.info("PackageController proceedPayment Action")
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def id = params.id
		def packdata=Package.findByPackageName(id)
		log.info("package data: "+packdata)
		
		def custid=user.id
		log.info("customerid: "+custid)
		def mobile=user.mobileNumber
		log.info("mobile: "+mobile)
		def cEmail=user.email
		log.info("customeremail: "+cEmail)
		def tranAmount=packdata.subAmount
				Random rand = new Random(); 
		
		def cartId=rand.nextInt(9000000) + 1000000; 
		log.info("txn amount to pay: "+tranAmount)
		
		TestController testController=new TestController();
		
		testController.paytmpay2(custid,mobile,cEmail,tranAmount,cartId)
		return
		
	}
	
	def groceriesView(){
		
		log.info("PackageController groceriesView Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/package/groceriesView")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info("groceryName: "+groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		
		def merchantId = user.id
		def of=0;
		log.info("Image "+Grocery.findAllByMerchantId(merchantId))
		
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery data: "+data)
		def totalcount=Grocery.findAllByMerchantId(merchantId).size()
		log.info("Grocery count: "+totalcount)
		
		def searchGrocery = Grocery.findAllByMerchantId(merchantId)
		log.info("GroceryNames: "+searchGrocery)
		def msg;
		if(searchGrocery==null || searchGrocery==[]){
			msg="Data Not Found"
		}
		else{
			msg=""
			
		}
		def user1=new ArrayList()
			for(int i=0;i<searchGrocery.size();i++){
				user1.add(searchGrocery[i].groceryName)
			}
			log.info("Grocery Names.......... "+user1)
			
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("user1", user1)
		responseData.put("offset", of)
		responseData.put("groceryName",Grocery.findAllByMerchantId(merchantId))
		log.info("responseData: "+responseData)
		[result:responseData]
	}
	
	def searchedGrocery(){
		
		log.info("PackageController searchedGrocery Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/package/groceriesView")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
		
		def groceryName = params.groceryName
		def groceryId = params.id
		log.info("groceryName: "+groceryName+"-"+groceryId)
		
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		
		def merchantId = user.id
		/*def of=0;		
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery data: "+data)
		def grocName = data.groceryName
		log.info("grocNames: "+grocName)*/
		def searchGrocery = Grocery.findAllByMerchantIdAndGroceryName(merchantId,groceryName)
		log.info("GroceryNames: "+searchGrocery)
		def msg;
		if(searchGrocery==null || searchGrocery==[]){
			msg="Data Not Found"
		}
		else{
			msg=""
			
		}
		def user1=new ArrayList()
			for(int i=0;i<searchGrocery.size();i++){
				user1.add(searchGrocery[i].groceryName)
			}
			
			responseData.put("listId", "list")
			//responseData.put("data", data)
			responseData.put("searchGrocery", searchGrocery)
			responseData.put("uname", user)
			responseData.put("user1", user1)
			//responseData.put("offset", of)
			log.info("responseData: "+responseData)
			[result:responseData]
	}
	
	def offsetlist(){
		log.info("PackageController offsetlist Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
		
		if(mode == "web"){
		def user= Merchant.findByEmail(session.user)
		log.info("Merchant data: "+user)
		def merchantId = user.id
		log.info("merchantId: "+merchantId)
		
		def of=params.offset;
		def data=Grocery.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery data: "+data)
		def totalcount=Grocery.findAllByMerchantId(merchantId).size()
		log.info("Grocery count: "+totalcount)
		
		def searchGrocery = Grocery.findAllByMerchantId(merchantId)
		log.info("GroceryNames: "+searchGrocery)
		def msg;
		if(searchGrocery==null || searchGrocery==[]){
			msg="Data Not Found"
		}
		else{
			msg=""
			
		}
		def user1=new ArrayList()
			for(int i=0;i<searchGrocery.size();i++){
				user1.add(searchGrocery[i].groceryName)
			}
			log.info("Grocery Names.......... "+user1)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		responseData.put("groceryName",Grocery.findAllByMerchantId(merchantId))
		  [result:responseData]
		}
	}
	
	def getPackprice(){
		
		log.info("PackageController getPackprice action")
		def id=params.id
		List<String> packData=new ArrayList<String>();
		log.info("packageName: "+id);
		def packObjects=Package.findAllByPackageName(id);
		def subAmount = packObjects.subAmount
		log.info("subAmount: "+subAmount)
		log.info("packObjects: "+packObjects);
		log.info(packObjects.size());
		for(int i=0;i<packObjects.size();i++){
			log.info("PackagePrice from packObjects: "+packObjects[i].subAmount)
			packData.add(packObjects[i].subAmount);
		}
		log.info("PackagePrice data in list: "+packData);
		render packData
		
	}
	
	def createpackage(){
		
		log.info("PackageController createpackage action")
		def responseData = new HashMap<>()
		def result,url
		url="/Package/createpackage.gsp"
		log.info(url)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}

		def admin= Admin.findByAdminname(session.admin)
		log.info("Admin data: "+admin)
		
		responseData.put("admin", admin)
		responseData.put("listId", "packagelist")
		[result:responseData]
	}
	
	

    @Transactional
    def save(Package packageInstance) {
        if (packageInstance == null) {
            notFound()
            return
        }

        if (packageInstance.hasErrors()) {
            respond packageInstance.errors, view:'create'
            return
        }

        packageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'package.label', default: 'Package'), packageInstance.id])
                redirect packageInstance
            }
            '*' { respond packageInstance, [status: CREATED] }
        }
    }
	
	@Transactional
	def savepackage() {
		log.info("PackageController savepackage action")
		def responseData = new HashMap<>()
		def url
		def mode=params.mode
		log.info(mode)
		
		def packageName=params.packageName
		log.info(packageName)
		def duration=params.duration
		log.info(duration)
		def subAmount=params.subAmount
		log.info(subAmount)
		def createdby=params.createdby
		log.info(createdby)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		 }
		def admin= Admin.findByAdminname(session.admin)
		log.info("Admin data: "+admin)
		
		if( ! (isValid(packageName) && isValid(subAmount) && isValid(duration) && isValid(createdby) && isValid(mode))){
					redirect(uri: "/admin/adminDashboard")
			return
		}
		
			if( ! (isValid(packageName) && isValid(subAmount) && isValid(duration) && isValid(createdby))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=PackageService.save(packageName,subAmount,duration,createdby)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/Package/savepackage.gsp"
					responseData.put("message", "Package Saved Successfully")
					admin= Admin.findByAdminname(session.admin)
					responseData.put("admin",admin)
					responseData.put("listId", "createpackage")
				}else if(result.get("status") == "error"){
				responseData.put("message", "Already Existed")
				admin= Admin.findByAdminname(session.admin)
				responseData.put("admin",admin)
				responseData.put("listId", "createpackage")
					url="/Package/savepackage.gsp"
				}
				[result:responseData]
			}
		}

    def edit(Package packageInstance) {
        respond packageInstance
    }

    @Transactional
    def update(Package packageInstance) {
        if (packageInstance == null) {
            notFound()
            return
        }

        if (packageInstance.hasErrors()) {
            respond packageInstance.errors, view:'edit'
            return
        }

        packageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Package.label', default: 'Package'), packageInstance.id])
                redirect packageInstance
            }
            '*'{ respond packageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Package packageInstance) {

        if (packageInstance == null) {
            notFound()
            return
        }

        packageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Package.label', default: 'Package'), packageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'package.label', default: 'Package'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
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
			log.info("Package Controller renderPage Action")
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
