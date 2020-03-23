package icecreampack

import icecreampack.Customerdetails;
import grails.transaction.Transactional

@Transactional
class CustomerdetailsService {

    def serviceMethod() {

    }
	static transactional=true
	
	def mailService
	def UserService
	
	
	
	def grailsApplication
	
		def getInstance() {
			log.info("CustomerdetailsService getInstance ")
			try{
				return new Customerdetails()
			}
			catch(Exception e) {
				log.info("CustomerdetailsService getInstance Exception::"+e)
			}
		}
		def save(Customerdetails customerdetailsInstance) {
			log.info("CustomerdetailsService save-Object ")
			try{
				if(customerdetailsInstance == null) {
					return false
				}
				else{
					def e=customerdetailsInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("CustomerdetailsService save-Object Exception::"+e)
			}
		}
		
		//* To save the data of User
		//* save service for saveuser action in UserController */
	   def save(customerName,medicineName,quantity,cPrice,total,medicineName1,quantity1,cPrice1,total1,medicineName2,quantity2,cPrice2,total2,medicineName3,quantity3,cPrice3,total3,modifiedBy){
		   log.info("CustomerdetailsService save-params ")
		   def resultData=new HashMap<>()
		   String []args=["Customerdetails"]
		   try{
		   
			   def check
			   
			   if(!check){
			   
				   def customerdetailsInstance=getInstance()
				   if(customerdetailsInstance){
					   customerdetailsInstance.customerName=customerName
					   customerdetailsInstance.medicineName=medicineName
					   customerdetailsInstance.quantity=quantity
					   
					   customerdetailsInstance.cPrice=cPrice
					   
					   customerdetailsInstance.total=total
					   
					   customerdetailsInstance.medicineName1=medicineName1
					   customerdetailsInstance.quantity1=quantity1
					   
					   customerdetailsInstance.cPrice1=cPrice1
					   
					   customerdetailsInstance.total1=total1
					   
					   customerdetailsInstance.medicineName2=medicineName2
					   customerdetailsInstance.quantity2=quantity2
					   
					   customerdetailsInstance.cPrice2=cPrice2
					   
					   customerdetailsInstance.total2=total2
					   
					   customerdetailsInstance.medicineName3=medicineName3
					   customerdetailsInstance.quantity3=quantity3
					   
					   customerdetailsInstance.cPrice3=cPrice3
					   
					   customerdetailsInstance.total3=total3
					   
					   
					   
					   customerdetailsInstance.modifiedBy=modifiedBy
					   customerdetailsInstance.createdDate=new Date()
					   customerdetailsInstance.modifiedDate=new Date()
					   def sts= save(customerdetailsInstance)
					   log.info(sts)
					   log.info(customerdetailsInstance.save(failOnError: true))
					   
					   def f=Customerdetails.get(sts.id)
					   log.info(f)
					   f.customerId=f.id
					   def st=save(f)
					   log.info(st)
					   
					  
					   
					   if(st){
						   resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						   resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						   resultData.put("customerdetailsInstance",customerdetailsInstance)
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
						   log.info("CustomerdetailsService save Exception::"+e)
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
