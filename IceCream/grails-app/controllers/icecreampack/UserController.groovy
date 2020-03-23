package icecreampack

import grails.converters.JSON
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;
import icecreampack.Icecream;
import icecreampack.User;

import java.text.SimpleDateFormat
import java.lang.Object;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


class UserController {

	def UserService
	static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST", delete: "DELETE"]
	

	def viewlist(Integer max) {
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		def viewList = Icecream.createCriteria().list (params) {
			if ( params.query ) {
				ilike("description", "%${params.jewelleryName}%")
			}
		}
 
		[createmedicineInstanceList: viewList, createmedicineInstanceTotal: viewList.totalCount]
	}
		
	
	def expire(Integer max){
	
	params.max = Math.min(params.max ? params.int('max') : 5, 100)
	   respond User.list(params), model:[userInstanceCount: User.count()]
	
	}
	
	def login(){}
	
		
		
	def logout = {
		log.info("logout  ****")
		
		session.invalidate();
		redirect(action:"userdashboard")
		}
	def userdashboard(){
		
		def responseData = new HashMap<>()
		def icecream=Icecream.getAll()
		def user= User.findByUserName(session.user)
		log.info(user)
		def userName= session.user
		if(userName ==null || userName=="" ){
		redirect(uri: "/user/userlogin")
		return
		}
		responseData.put("uname",user)
		responseData.put("icecream",icecream)
		log.info(responseData);
		[result:responseData]
			
		
	}
	def updateuser(Integer max){
		
		def responseData = new HashMap<>();
		def user= User.findByUserName(session.user)
		
		def userName= session.user
		if(userName ==null || userName=="" ){
		 redirect(uri: "/user/userlogin")
		 return
		}
		
		/*params.max = Math.min(max ?: 30, 100)
		def userInstanceList=User.list(params)
		println "-- $params"
		render template: params.template, model:[userInstanceList:userInstanceList,userInstanceCount: User.count()]*/
		responseData.put("user", user)
		[result:responseData]
	
		}
	
	def changepass={
		def responseData = new HashMap<>()
		//def username= User.findByUsername(session.user)
		
		def user= User.findByUserName(session.user)
		log.info(user)
		def userName= session.user
		if(userName ==null || userName=="" ){
		 redirect(uri: "/user/userlogin1")
		 return
		}
		
		responseData.put(getMessages('default.message.label'),"Password Changed Successfully")
		responseData.put("uname",user)
		log.info(responseData)
		[result:responseData]
	}
	
	/* To update the data of Doctor */
	@Transactional
	def saveupdate() {
		log.info("user Controller saveupdate action")
		def responseData = new HashMap<>()
		def result,url
		def mode=params.mode
		log.info(mode)
		def userName=params.userName
		log.info(userName)
		def password=params.password
		log.info(password)
		def email=params.email
		log.info(email)
		def mobileNumber=params.mobileNumber
		
		log.info(mobileNumber)
		
		def modifiedBy=params.modifiedBy
		
		log.info(modifiedBy)
		
	
		def userId = params.userId
		log.info(userId)
		
		
		
		if(mode == "mobile"){
			
			if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
	}
	else {
		result=UserService.update(userName,password,email,mobileNumber,modifiedBy)
		url="/user/saveupdate.gsp"
		responseData.put("uname",User.findByUserId(userId).userName)
		responseData.put("message", "Your Profile Updated Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		
	}
	render responseData as JSON
	return
		}
		
	if(mode=="web")	{
		def user= User.findByEmail(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/userLogin1")
		 return
		}
		
		
		if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
					redirect(uri: "/user/userdashboard")
			return
		}
		if( ! (isValid(userName)&&isValid(password)&&isValid(email)&&isValid(mobileNumber)&&isValid(modifiedBy))){
			responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
			responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
			renderPage(mode, url, responseData)
			return
		}
		else {
			result=UserService.update(userName,password,email,mobileNumber,modifiedBy)
			url="/user/saveupdate.gsp"
			responseData.put("uname",user)
			responseData.put("message", "Your Profile Updated Successfully")
			responseData.put(getMessages("default.status.label"),"200")
			
		}
	
	[result:responseData]
	}
	
	}
	
	def passwordSave2(){
		log.info("User controller passwordSave2 action")
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
			def userId = params.userId
			def userName = User.findByUserId(userId).email
			
			if(newPwd != confirmPwd){
				return false
			   }
				else{
			   result=UserService.passwordSave2(userName,newPwd)
			   
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
		def userName= session.user
		log.info(userName)
		if(userName ==null || userName=="" ){
			redirect(uri: "/user/userlogin1")
			return
		   }
		if((userName !=null || userName!="") && (password ==null || password=="") && (newPwd ==null || newPwd=="") && (confirmPwd ==null || confirmPwd=="")){
			redirect(uri: "/user/userdashboard")
			return false
		}else{
		
		def url="/user/passwordSave2.gsp"
		def user= User.findByUserName(userName)
		log.info(user)
		if(newPwd != confirmPwd){
		 return false
		}
		 else{
		result=UserService.passwordSave2(userName,newPwd)
		if(result.get("status") == "success"){
			responseData.put(getMessages('default.message.label'),result.getAt("message"))
			responseData.put(getMessages('default.status.label'),result.getAt("status"))
			responseData.put("uname",user)
		}
		 }
		
		 [result:responseData]
	   }
		}
	}
	
	
	
	
	
	def userlogin = {
	
}
def authenticate = {
	def user = User.findByUserNameAndPassword(params.userName,params.password)
	if(user){
	
	session.user=user
	// flash.message = "Hello ${admin.fullName}:"
	redirect(action:"userdashboard")
	}
	else{
	flash.message = "sorry, ${params.userName}. Enter Valid UserName/Password"
	redirect(action:"userlogin")
	}
	}

def createuser() {
	def responseData = new HashMap<>()
	responseData.put("listId", "createuser")
	[responseData:responseData]
}

/* To save the data of user*/
@Transactional
def saveuser() {
	log.info("user Controller saveuser action")
	def responseData = new HashMap<>()
	def result,url
	
	def mode=params.mode
	def myaction = params.myaction
	def userName=params.userName
	def password=params.password
	def email=params.email
	def mobileNumber=params.mobileNumber
	def modifiedBy=params.modifiedBy
	if( ! (isValid(myaction) && isValid(mode))){
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		
		
		if(myaction.equals("save")) {
		
		if( ! (isValid(userName) && isValid(password) && isValid(email)&& isValid(mobileNumber) &&isValid(modifiedBy))){
		
		responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
		responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
		renderPage(mode, url, responseData)
		return
		}
		else {
		
		result=UserService.save(userName,password,email,mobileNumber,modifiedBy)
		
		log.info(result)
		
		if(result.get("status") == "success"){
		url="/user/saveuser.gsp"
		responseData.put("message", "Your Registration completed Successfully")
		responseData.put(getMessages("default.status.label"),"200")
		}else if(result.get("status") == "error"){
		responseData.put("message", "Already Existed")
		responseData.put(getMessages("default.status.label"),"500")
		url="/user/saveuser.gsp"
		}
		}
		if(mode=="mobile"){
		render responseData as JSON
		return
		}
		
		[result:responseData]
		}
	}
	
	
	
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
	log.info("User Controller renderPage Action")
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
