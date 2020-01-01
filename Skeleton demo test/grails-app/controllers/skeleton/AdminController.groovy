package skeleton

class AdminController {

	def index() { }

	def login1() { }
	
	def adminDashboard() {
		log.info("adminController adminDashboard Action")
		
		def responseData = new HashMap<>()
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
	
	def updateprofile(){
		
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
	//flash.message = "Goodbye ${session.admin.adminname}"
	session.invalidate();
	//session.admin= null
	redirect(action:"login1")
	}
	
	def authenticate = {
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
