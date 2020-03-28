package icecreampack

import icecreampack.Icecream;
import grails.transaction.Transactional

@Transactional
class IcecreamService {
	
	
	static transactional=true
	
	def mailService
	def UserService
	def goldservice
	
	
	
	def serviceMethod() {
	
		}
	
	def grailsApplication
	
		def getInstance() {
			log.info("IcecreamService getInstance ")
			try{
				return new Icecream()
			}
			catch(Exception e) {
				log.info("IcecreamService getInstance Exception::"+e)
			}
		}
		def save(Icecream IcecreamInstance) {
			log.info("IcecreamService save-Object ")
			try{
				if(IcecreamInstance == null) {
					return false
				}
				else{
					def e=IcecreamInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("IcecreamService save-Object Exception::"+e)
			}
		}
		
		//* To save the data of User
		//* save service for saveuser action in UserController */
	   def save(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice,modifiedBy){
		   log.info("IcecreamService save-params ")
		   def resultData=new HashMap<>()
		   String []args=["Icecream"]
		   try{
		   
			   def check=Icecream.findByProductDesc(productDesc)
			   
			   if(!check){
			   
				   def IcecreamInstance=getInstance()
				   if(IcecreamInstance){
				   
					   IcecreamInstance.materialId=materialId
					   IcecreamInstance.productDesc=productDesc
					   IcecreamInstance.icecreamType=icecreamType
					   IcecreamInstance.weight=weight
					   IcecreamInstance.quantity=quantity
					   IcecreamInstance.retailPrice=retailPrice
					   IcecreamInstance.wholesalePrice=wholesalePrice
					   
					   IcecreamInstance.modifiedBy=modifiedBy
					   
					   IcecreamInstance.createdDate=new Date()
					   IcecreamInstance.modifiedDate=new Date()
					   
					   def sts= save(IcecreamInstance)
					   log.info(sts)
					   log.info(IcecreamInstance.save(failOnError: true))
					   
					   def f=Icecream.get(sts.id)
					   log.info(f)
					   f.icecreamId=f.id
					   def st=save(f)
					   log.info(st)
					   
					  
					   
					   if(st){
						   resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						   resultData.put("IcecreamInstance",IcecreamInstance)
						   }
						   else{
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						   }
						   }
						   else {
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
						   }
						   }
						   else{
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
						   }
						   return resultData
						   }
		   
						   catch(Exception e) {
						   log.info("IcecreamService save Exception::"+e)
						   }
						   
						
						   }
	   
	   
	  
	  def update(productDesc,buyquantity,modifiedBy){
			   log.info("IcecreamService ************update")
			   def resultData=new HashMap<>()
			   String []args=["Icecream"]
			   try{
				   def IcecreamInstance=Icecream.findByProductDesc(productDesc)
				   
				   if(IcecreamInstance) {
					   
					   IcecreamInstance.productDesc=productDesc
					   log.info(productDesc)
					   log.info("quantity value from DB "+IcecreamInstance.quantity)
					   IcecreamInstance.quantity=Integer.parseInt(IcecreamInstance.quantity)-Integer.parseInt(buyquantity)
					   
					   log.info("buyquantity "+buyquantity)
					   log.info("******%%%%%****** "+IcecreamInstance.quantity)
					   IcecreamInstance.modifiedBy=modifiedBy
					   IcecreamInstance.modifiedDate=new Date()
					   
					   def sts=save(IcecreamInstance)
					   log.info(sts)
					   if(sts){
						   resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
					   }
					   else{
						   resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
					   }
				   }
				   
				   return resultData
			   }
			   catch(Exception e) {
				   log.info("IcecreamService update Exception")
			   }
		   }
	  
	  def updateIcecream(materialId,productDesc,icecreamType,weight,quantity,retailPrice,wholesalePrice,modifiedBy){
		  
		  log.info("IcecreamService save-params ")
		  def resultData=new HashMap<>()
		  String []args=["Icecream"]
		  try{
		  
			  def IcecreamInstance=Icecream.findByProductDesc(productDesc)
			  log.info(IcecreamInstance)
			  
				  if(IcecreamInstance){
				  
					  IcecreamInstance.materialId=materialId
					  IcecreamInstance.productDesc=productDesc
					  IcecreamInstance.icecreamType=icecreamType
					  IcecreamInstance.weight=weight
					  IcecreamInstance.quantity=quantity
					  IcecreamInstance.retailPrice=retailPrice
					  IcecreamInstance.wholesalePrice=wholesalePrice
					  
					  IcecreamInstance.modifiedBy=modifiedBy
					  
					  IcecreamInstance.createdDate=new Date()
					  IcecreamInstance.modifiedDate=new Date()
					  
					  def sts= save(IcecreamInstance)
					  log.info(sts)
					  //log.info(IcecreamInstance.save(failOnError: true))
					  
					  
					  if(sts){
						  resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						  resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						  resultData.put("IcecreamInstance",IcecreamInstance)
						  }
						  else{
						  resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						  resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						  }
				  		}
						
						  else{
						  resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						  resultData.put(getMessage("default.message.label"),getMessage("default.object.alreadyexist",args))
						  }
						  return resultData
						  }
		  
						  catch(Exception e) {
						  log.info("IcecreamService save Exception::"+e)
						  }
						  
	  }
	   
	   
	   def getMessage(String code) {
		   return getMessage(code,null)
	   }
   
	   def getMessage(String code,String[] args) {
		   def appCtx = grailsApplication.getMainContext()
		   return appCtx.getMessage(code,args,Locale.default)
	   }
}
