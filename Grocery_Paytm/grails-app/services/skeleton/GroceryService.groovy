package skeleton

import grails.transaction.Transactional
import skeleton.Grocery;
import grails.transaction.Transactional


@Transactional
class GroceryService {

    def serviceMethod() {

    }
	
	static transactional=true
	def AddressService
	
	def grailsApplication
	
		def getInstance() {
			log.info("GroceryService getInstance ")
			try{
				return new Grocery()
			}
			catch(Exception e) {
				log.info("GroceryService getInstance Exception::"+e)
			}
		}
		def save(Grocery groceryInstance) {
			log.info("GroceryService save-Object ")
			try{
				if(groceryInstance == null) {
					return false
				}
				else{
						log.info(groceryInstance.save(failOnError: true))
					def e=groceryInstance.save(flush:true)

					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("GroceryService save-Object Exception::"+e)
			}
		}
		
		
		def update(categoryName,groceryName,cost,weight,quantity,offer,total,reducedQuantity,createdDate,mid,modifiedBy){
			log.info("GroceryService update")
			def resultData=new HashMap<>()
			String []args=["Grocery"]
			try{
				def groceryInstance=Grocery.findByGroceryNameAndMerchantIdAndWeight(groceryName,mid,weight)
				log.info(groceryInstance)
				if(groceryInstance) {
					groceryInstance.categoryName=categoryName
					groceryInstance.groceryName=groceryName
					log.info("gname   "+ groceryName)
					groceryInstance.cost=cost
					groceryInstance.weight=weight
					log.info("weight  "+weight)
					groceryInstance.quantity=quantity
					groceryInstance.offer=offer
					groceryInstance.total=total
					groceryInstance.reducedQuantity=reducedQuantity
					log.info("reducedQuantity  "+reducedQuantity)
					groceryInstance.createdDate=new Date()
					groceryInstance.modifiedBy=modifiedBy
					
					def sts=save(groceryInstance)
					//def st=save(f)
					if(sts){
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
					}
				}
				else {
					resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
				}
				return resultData
			}
			catch(Exception e) {
				log.info("GroceryService update Exception")
			}
		}
	
		
		
		def update1(merchantId,groceryName,reducedQuantity,id){
			log.info("GroceryService ***************** update1")
			log.info("groceryName  "+groceryName)
			def resultData=new HashMap<>()
			String []args=["Grocery"]
			try{
				def groceryInstance=Grocery.findByMerchantIdAndId(merchantId,id)
				log.info(groceryInstance)
				if(groceryInstance) {
					groceryInstance.merchantId=groceryInstance.merchantId
					groceryInstance.groceryName=groceryInstance.groceryName
					groceryInstance.quantity=groceryInstance.quantity
					groceryInstance.categoryName=groceryInstance.categoryName
					groceryInstance.cost=groceryInstance.cost
					groceryInstance.weight=groceryInstance.weight
					groceryInstance.offer=groceryInstance.offer
					groceryInstance.total=groceryInstance.total
					groceryInstance.modifiedBy=groceryInstance.modifiedBy
					groceryInstance.id= groceryInstance.id
					groceryInstance.name= groceryInstance.name
					groceryInstance.type= groceryInstance.type
					groceryInstance.image= groceryInstance.image
					groceryInstance.merchantshopName= groceryInstance.merchantshopName
					groceryInstance.reducedQuantity=reducedQuantity
					
					log.info("groceryInstance********   "+ groceryInstance)

					log.info(groceryInstance.merchantId)
					log.info(groceryInstance.groceryName)
					log.info(groceryInstance.quantity)
					log.info(groceryInstance.categoryName)
					log.info(groceryInstance.cost)
					log.info(groceryInstance.weight)
					log.info(groceryInstance.offer)
					log.info(groceryInstance.total)
					log.info(groceryInstance.modifiedBy)
					log.info(groceryInstance.id)
					log.info(groceryInstance.name)
					log.info(groceryInstance.type)
					log.info(groceryInstance.image)
					log.info(groceryInstance.merchantshopName)
					log.info(groceryInstance.reducedQuantity)
					
				
						log.info(groceryInstance.save(failOnError: true))
					
					def sts=save(groceryInstance)
			
									
					//def st=save(f)
					if(sts){
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.update.updatepatient",args))
					}
					else{
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
					}
				}
				else {
					resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
				}
				
				log.info("rrrrrrrrrrr "+ resultData)
				return resultData
				
			}
			catch(Exception e) {
				log.info("GroceryService update1 Exception"+e)
			}
		}
		
		
		
		def delete(id) {
			log.info("GroceryService delete")
			def resultData=new HashMap<>()
			String []args=["Grocery"]
			try{
				def groceryInstance=Grocery.get(id)
				//log.info(groceryInstance)
				if(groceryInstance) {
			      //log.info(groceryInstance.delete(failOnError: true))
					groceryInstance.delete flush:true
					resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.successmessage",args))
				}
				else{
					resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.errormessage",args))
				}
				return resultData
			}
			catch(Exception e) {
				log.info("GroceryService delete Exception::"+e)
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
