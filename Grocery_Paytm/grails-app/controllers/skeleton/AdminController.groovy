package skeleton

class AdminController {

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
		log.info("merchantdata: "+merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info("Merchant Count: "+totalcount)
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
		log.info("merchantdata: "+merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info("Merchant Count: "+totalcount)
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
		log.info("mode: "+mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def merchantdata=User.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info("User Data: "+merchantdata)
		def totalcount=User.findAll().size()
		log.info("User Count: "+totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
	

	
	def merchantdata(){
		log.info("Admin Controller merchantdata action")

		def responseData = new HashMap<>()
		def result,url
		url="/admin/merchantdata.gsp"
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
			redirect(uri: "/admin/login1")
			return
		}
		def mode=params.mode
		def of=0;
		def shopName = params.shopName
		log.info("shopName: "+shopName)
		def objcount =Grocery.countByMerchantshopName(shopName)
		log.info("Groceries count: "+objcount)
		def data =Grocery.findAllByMerchantshopName(shopName,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery Data: "+data)
		responseData.put("data", data)
		responseData.put("totalcount", objcount)

		responseData.put("merchantCount", Grocery.count())
		responseData.put("admin", admin)
		responseData.put("shopName", shopName)
		responseData.put("offset", of)
		[result:responseData]

      }
	
	
	def offsetlist2(){
		log.info("adminController offsetlist2 Action")
		
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		 }
		
		def mode=params.mode
		log.info("mode: "+mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		
		def shopName = params.shopName
		log.info("shopName: "+shopName)
			def objcount =Grocery.countByMerchantshopName(shopName)
		log.info("Groceries count: "+objcount)
		def data =Grocery.findAllByMerchantshopName(shopName,[sort:"id",order:"desc",max: 5, offset: of])
		log.info("Grocery Data: "+data)
		log.info("Grocery Data count: "+data.size())
		responseData.put("data", data)
		responseData.put("totalcount", objcount)
		responseData.put("admin", admin)
		responseData.put("shopName", shopName)
		responseData.put("offset", Integer.parseInt(of))
		log.info("responseData: "+responseData)
		[result:responseData]
		
		}
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
		log.info("User data: "+merchantdata)
		def totalcount=User.findAll().size()
		log.info("User Count: "+totalcount)
		responseData.put("listId", "userlist")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}
	

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
		log.info("mode: "+mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def merchantdata=Merchant.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info("Merchant data: "+merchantdata)
		def totalcount=Merchant.findAll().size()
		log.info("Merchant count: "+totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("merchantdata", merchantdata)
		responseData.put("admin", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
	
	def packlist(){
		
		log.info("adminController packlist Action")
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminname(session.admin)
		log.info("Admin data: "+admin)
		
		def mode="web"
		def of=0;
		def packdata=Package.list(sort:"id",order:"desc",max: 15, offset: of)
		log.info("Packages data: "+packdata)
		def totalcount=Package.findAll().size()
		log.info("Packages Count: "+totalcount)
		responseData.put("listId", "packlist")
		responseData.put("totalcount",totalcount )
		responseData.put("packdata", packdata)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}

	def logout = {
		
    log.info("adminController logout Action")
	session.invalidate();
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
		render text: """<script type="text/javascript">
                    alert("Enter valid Email/Password");
                    window.location.href = "/Skeleton/admin/login1";


		</script>""",
			contentType: 'js'

		}
		
	}
	
	
	
}
