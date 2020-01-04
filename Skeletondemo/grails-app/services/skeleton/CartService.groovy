package skeleton

import grails.transaction.Transactional

@Transactional
class CartService {

    def serviceMethod() {

    }
	
	def grailsApplication
	
		def getInstance() {
			log.info("CartService getInstance ")
			try{
				return new Cart()
			}
			catch(Exception e) {
				log.info("CartService getInstance Exception::"+e)
			}
		}
		def save(Cart cartInstance) {
			log.info("CartService save-Object ")
			try{
				if(cartInstance == null) {
					return false
				}
				else{
					def e=cartInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("CartService save-Object Exception::"+e)
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
