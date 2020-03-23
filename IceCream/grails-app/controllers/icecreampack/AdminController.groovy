package icecreampack

import grails.converters.JSON
import grails.transaction.Transactional;
import static org.springframework.http.HttpStatus.*
import icecreampack.Admin;

import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;

class AdminController {

	def AdminService
	
//	def stockavail(Integer max) {
//		params.max = Math.min(params.max ? params.int('max') : 10, 100)
//		respond Icecream.list(params), model:[adminInstanceCount: Icecream.count()]
//	}

	def stockavail(){
		
		log.info("adminController stockavail Action")
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminName(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		}
		
		def mode="web"
		def of=0;
		def stock=Icecream.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(stock)
		def totalcount=Icecream.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "stockavail")
		responseData.put("totalcount",totalcount )
		responseData.put("stock", stock)
		responseData.put("admin", admin)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	def login = {}
	def authenticate = {
	def admin = Admin.findByAdminNameAndPassword(params.userName,params.password)
	if(admin){
	
	session.admin=admin
	// flash.message = "Hello ${admin.fullName}:"
	redirect(action:"dashboard")
	}
	else{
	flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	redirect(action:"login")
	}
	}
	
	def stocksold(){
		
		log.info("adminController stocksold Action")
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminName(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		}
		
		def mode="web"
		def of=0;
		def stock=Billing.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(stock)
		def totalcount=Billing.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "stocksold")
		responseData.put("totalcount",totalcount )
		responseData.put("stock", stock)
		responseData.put("uname", admin)
		responseData.put("offset", of)
		[result:responseData]
	
	}
	
	def offsetlist1(){
		
		log.info("adminController offsetlist1 Action")
		
		def responseData = new HashMap<>();
		
		def admin= Admin.findByAdminName(session.admin)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		 }
		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def stock=Billing.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(stock)
		def totalcount=Billing.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("stock", stock)
		responseData.put("uname", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		
	}
	}
	
	def customerlist(){
		
		log.info("adminController customerlist Action")
		def responseData = new HashMap<>();
		def admin= Admin.findByAdminName(session.admin)
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		}
		
		def mode="web"
		def of=0;
		def customer=Billing.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(customer)
		def totalcount=Billing.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "customerlist")
		responseData.put("totalcount",totalcount )
		responseData.put("customer", customer)
		responseData.put("uname", admin)
		responseData.put("offset", of)
		[result:responseData]
		
		
	}
	
	def offsetlist2(){
		
		log.info("adminController offsetlist2 Action")
		
		def responseData = new HashMap<>();
		
		def admin= Admin.findByAdminName(session.admin)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		 }
		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def customer=Billing.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(customer)
		def totalcount=Billing.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("customer", customer)
		responseData.put("uname", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		
	}
	}
	
	def offsetlist(){
		
		log.info("adminController offsetlist Action")
		
		def responseData = new HashMap<>();
		
		def admin= Admin.findByAdminName(session.admin)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login")
		 return
		 }
		
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		
		def of=params.offset;
		def stock=Icecream.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(stock)
		def totalcount=Icecream.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("stock", stock)
		responseData.put("admin", admin)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
		}
	
	def search(){
		
		log.info("AdminController search Action")
		
		def userName= session.admin
		if(userName ==null || userName=="" ){
		redirect(uri: "/admin/login")
		return
		}
		
		def admin= Admin.findByAdminName(session.admin)
		log.info(admin)
		def data = new HashMap<>()
		def icecream=Icecream.getAll()
		def productDesc=params.productDesc
		
		
		def emp=Icecream.findAllByProductDesc(productDesc)
			def msg;
			if(emp==null || emp==[]){
				msg="Data Not Found"
			}
			else{
				msg=""
				
			}
			def user=new ArrayList()
				for(int i=0;i<emp.size();i++){
					user.add(emp[i].productDesc)
				}
			
				data.put("message", msg)
				data.put("emp",emp)
				data.put("uname",admin)
				data.put("icecream",icecream)
				[result:data]
		
	}
	
	
	def logout = {
	flash.message = "Goodbye ${session.admin.fullName}"
	session.invalidate();
	//session.admin= null
	redirect(action:"login")
	}
	
	
	def dashboard(){
		def responseData = new HashMap<>()
		def admin= Admin.findByAdminName(session.admin)
		log.info(admin)
		def userName= session.admin
		if(userName ==null || userName=="" ){
		redirect(uri: "/admin/login")
		return
		}
		
		responseData.put("uname",admin)
		
		[result:responseData]
	}
	def changepass={
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def admin= Admin.findByAdminName(session.admin)
		log.info(admin)
		def userName= session.admin
		if(userName ==null || userName=="" ){
		 redirect(uri: "/admin/login")
		 return
		}
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",admin)
		log.info(responseData)
		[result:responseData]
	}
	
	def passwordSave2(){
		log.info("Admin controller passwordSave2 action")
		def responseData = new HashMap<>()
		def mode=params.mode
		
		def password=params.password
		def newPwd=params.newPwd
		def confirmPwd=params.confirmPwd
		def result,res
		log.info(password)
		log.info(newPwd)
		log.info(confirmPwd)
		
		if(mode=="mobile"){
			def adminId = params.adminId
			def userName = Admin.findByAdminId(adminId).email
			
			if(newPwd != confirmPwd){
				return false
			   }
				else{
			   result=AdminService.passwordSave2(userName,newPwd)
			   
			   if(result.get("status") == "success"){
				   responseData.put(getMessages('default.message.label'),result.getAt("message"))
				   responseData.put(getMessages('default.status.label'),"200")
				   responseData.put("uname",userName)
			   }
				}
					   render responseData as JSON
					   return
		}
		
		if(mode=="web"){
		def userName= session.admin
		log.info(userName)
		if(userName ==null || userName=="" ){
			redirect(uri: "/admin/login")
			return
		   }
		if((userName !=null || userName!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/admin/dashboard")
			return false
		}else{
		
		def url="/admin/passwordSave2.gsp"
		def admin= Admin.findByAdminName(userName)
		log.info(admin)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=AdminService.passwordSave2(userName,newPwd)
		if(result.get("status") == "success"){
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",admin)
		}
		 }
		
		 [result:responseData]
	   }
		}
	}
	

	def create() {
		def responseData = new HashMap<>()
		responseData.put("listId", "create")
		[responseData:responseData]
	}
	@Transactional
	def saveadmin() {
		log.info("admin Controller saveadmin action")
		def responseData = new HashMap<>()
		def result,url
		
		def mode=params.mode
		log.info(mode)
		def myaction = params.myaction
		log.info(myaction)
		def userName=params.userName
		log.info(userName)
		def password=params.password
		log.info(password)
		def fullName=params.fullName
		log.info(mode)
		def email=params.email
		log.info(email)
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		
		
		if( ! (isValid(myaction) && isValid(mode))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
			}
			
			
			if(myaction.equals("save")) {
			
			if( ! (isValid(userName) && isValid(password) && isValid(fullName) && isValid(email) &&isValid(modifiedBy))){
			
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
			}
			else {
			
			result=AdminService.save(userName,password,fullName,email,modifiedBy)
			
			log.info(result)
			
			if(result.get("status") == "success"){
			url="/admin/saveadmin.gsp"
			responseData.put("message", "Your Registration completed Successfully")
			responseData.put(getMessages("default.status.label"),"200")
			}else if(result.get("status") == "error"){
			responseData.put("message", "Already Existed")
			responseData.put(getMessages("default.status.label"),"500")
			url="/admin/saveadmin.gsp"
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
		log.info("admin Controller renderPage Action")
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
