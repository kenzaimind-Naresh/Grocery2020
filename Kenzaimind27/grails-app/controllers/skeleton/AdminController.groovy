package skeleton

class AdminController {

	def index() {
	 log.info("adminController index Action")
	}
	def login1() {
		log.info("adminController login1 Action")
	}
	
	def adminDashboard() {
		log.info("adminController adminDashboard Action")
		
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}

		def responseData = new HashMap<>()
		def admin= Admin.findByAdminname(session.admin)
	
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
	def merchantlist(){
		log.info("adminController merchantlist Action")
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
	
	def offsetlist1(){
		log.info("adminController offsetlist1 Action")
		
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		 }
		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def merchantdata=User.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(merchantdata)
		def totalcount=User.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
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
	def userlist(){
		
		log.info("adminController userlist Action")
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		
		
		def mode="web"
		def of=0;
		def merchantdata=User.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(merchantdata)
		def totalcount=User.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "userlist")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	
	
	/*def offsetlist(){
		log.info("admin Controller offsetlist Action")
		
		
		def responseData = new HashMap<>();
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}

		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		def admin= Admin.findByAdminname(session.admin)
		log.info(admin)
		def merchantId = admin.id
		log.info(merchantId)
		
		
		def of=params.offset;
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
	}*/
	def offsetlist(){
		log.info("adminController offsetlist Action")
		
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		 }
		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def merchantdata=Merchant.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
	
	
	
	def updateprofile(){
		log.info("adminController updateprofile Action")
		def responseData = new HashMap<>()
		def admin= Admin.findByAdminname(session.admin)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		// redirect(uri: "/user/login1")
		 return
		}
		//responseData.put("listId", "adminDashboard")
		responseData.put("admin",admin)

		[result:responseData]
	}
	
	
	def logout = {
		
    log.info("adminController logout Action")
	//flash.message = "Goodbye ${session.admin.adminname}"
	session.invalidate();
	//session.admin= null
	redirect(action:"login1")
	}
	
	def authenticate = {
		log.info("adminController authenticate Action")
		def admin = Admin.findByAdminnameAndPassword(params.adminname,params.password)
		if(admin){

			session.admin=admin.adminname
			if(session.admin=="admin"){
				redirect(action:"adminDashboard")
			}
			else{
			redirect(action:"login1")
			}
	
		}
		else{
		flash.message = "sorry, ${params.adminname}. please try again"
		redirect(action:"login1")
		}
		
	}
	
	
	
}
