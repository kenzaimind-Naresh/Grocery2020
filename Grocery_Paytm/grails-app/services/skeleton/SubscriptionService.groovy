package skeleton

import grails.transaction.Transactional

@Transactional
class SubscriptionService {

    def serviceMethod() {}
	
	def grailsApplication
	def getInstance() {
		log.info("SubscriptionService getInstance ")
		try{
			return new Subscription()
		}
		catch(Exception e) {
			log.info("SubscriptionService getInstance Exception::"+e)
		}
	}
	def save(Subscription subscriptionInstance) {
		log.info("SubscriptionService save-Object ")
		try{
			if(subscriptionInstance == null) {
				return false
			}
			else{
				def e=subscriptionInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("SubscriptionService save-Object Exception::"+e)
		}
	}
	
			
	def saveSubcription(packageId,merchantId,paymentDate,expiryDate,paymentKey){
		log.info("SubscriptionService save-params ")
		def resultData=new HashMap<>()
		String []args=["Subscription"]
				try{
					
				def subscriptionInstance=getInstance()
				log.info(subscriptionInstance)
				
					subscriptionInstance.packageId=packageId
					log.info(packageId)
					subscriptionInstance.merchantId=merchantId
					log.info(merchantId)
					subscriptionInstance.paymentDate=paymentDate
					log.info(paymentDate)
					subscriptionInstance.expiryDate=expiryDate
					log.info(expiryDate)
					subscriptionInstance.paymentKey=paymentKey
					log.info(paymentKey)
					subscriptionInstance.createdDate=new Date()
					subscriptionInstance.modifiedDate=new Date()
					
					def sts= save(subscriptionInstance)
					log.info(sts)
					
					log.info(subscriptionInstance.save(failOnError: true))
				
			return resultData
		}
		catch(Exception e) {
			log.info("SubscriptionService save Exception::"+e)
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
