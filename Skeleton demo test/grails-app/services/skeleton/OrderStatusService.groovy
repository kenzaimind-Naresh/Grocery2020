package skeleton

import grails.transaction.Transactional

@Transactional
class OrderStatusService {

    def serviceMethod() {

    }
	
	def grailsApplication
	
		def getInstance() {
			log.info("OrderStatusService getInstance ")
			try{
				return new OrderStatus()
			}
			catch(Exception e) {
				log.info("OrderStatusService getInstance Exception::"+e)
			}
		}
		def save(OrderStatus orderStatusInstance) {
			log.info("OrderStatusService save-Object ")
			try{
				if(orderStatusInstance == null) {
					return false
				}
				else{
					def e=orderStatusInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("OrderStatusService save-Object Exception::"+e)
			}
		}
		
		def save(orderId,status){
			log.info("OrderStatusService save-params ")
			def resultData=new HashMap<>()
			String []args=["OrderStatus"]
			def check=OrderStatus.findByOrderId(orderId)
			log.info(check)
			try{
			if(check==null){
			
			
				
					def orderInstance=getInstance()
						orderInstance.orderId=orderId
						log.info(orderId)
						orderInstance.status=status
						log.info(status)
						
						def sts= save(orderInstance)
						
			}
			else{
						log.info("update block in service")
							def orderInstance=check
								orderInstance.orderId=orderId
								log.info(orderId)
								orderInstance.status=status
								log.info(status)
								
								def sts= save(orderInstance)
								
					}
				
			
				return resultData
			}
			catch(Exception e) {
				log.info("orderStatusService save Exception::"+e)
			}
		}
		
		
		def update(orderId,status,username){
			log.info("OrderStatusService update")
			def resultData=new HashMap<>()
			String []args=["OrderStatus"]
			try{
			def orderInstance=OrderStatus.get(orderId)
			log.info(orderInstance)
			if(orderInstance){
				orderInstance.orderId=orderId
				log.info(orderId)
				orderInstance.status = status
				log.info(status)
				
				def sts=save(orderInstance)
			}
			return resultData
			}
			catch(Exception e) {
					log.info("OrderStatusService update Exception")
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
