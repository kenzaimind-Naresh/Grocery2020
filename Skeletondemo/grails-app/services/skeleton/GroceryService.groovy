package skeleton

import grails.transaction.Transactional
import skeleton.Grocery;

@Transactional
class GroceryService {

    def serviceMethod() {

    }
	
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
					def e=groceryInstance.save(flush:true)

					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("GroceryService save-Object Exception::"+e)
			}
		}
		
		
		def update(categoryName,groceryName,cost,weight,quantity,offer,createDate,total,modifiedBy){
			log.info("GroceryService update")
			def resultData=new HashMap<>()
			String []args=["Grocery"]
			try{
				def groceryInstance=Grocery.findByGroceryName(groceryName)
				log.info(groceryInstance)
				if(groceryInstance) {
					groceryInstance.categoryName=categoryName
					groceryInstance.groceryName=groceryName
					log.info("g name   "+ groceryName)
					groceryInstance.cost=cost
					
					groceryInstance.weight=weight
					groceryInstance.quantity=quantity
					groceryInstance.offer=offer
					groceryInstance.createDate=createDate
					groceryInstance.total=total
					
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
	
		def deleteGrocery(id){
			
			def groceryInstance=Grocery.get(id);
			groceryInstance.delete flush:true
		log.info(groceryInstance)
		if(groceryInstance) {
			groceryInstance.id=id
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
