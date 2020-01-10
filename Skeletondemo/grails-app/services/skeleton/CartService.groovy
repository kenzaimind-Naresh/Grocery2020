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
		
		def save(gname,gprice,tcount,tamount,usercartId){
			log.info("CartService save-params ")
			def resultData=new HashMap<>()
			String []args=["Cart"]
			try{
				def check
				if(!check){
					def cartInstance=getInstance()
					if(cartInstance){
						cartInstance.gname=gname
						log.info(gname)
						cartInstance.gprice=gprice
						log.info(gprice)
						cartInstance.tcount=tcount
						log.info(tcount)
						cartInstance.tamount=tamount
						log.info(usercartId+"CART Id")
						cartInstance.usercartId=usercartId
						cartInstance.status="Placed"
						cartInstance.modifiedBy="Self"

						def sts= save(cartInstance)
						log.info(sts)
						log.info(cartInstance.save(failOnError: true))
						
						def f=Cart.get(sts.id)
						f.cartId=f.id
						def st=save(f)
					
					
						if(sts){
							resultData.put("status","success")
							resultData.put("message","inserted successfully")
							resultData.put("cartInstance",cartInstance)
						
	
						}
						
						else{
							resultData.put("status","error")
							resultData.put("message","Already Existed")
						}
				
					}
					}
				return resultData
			}
			catch(Exception e) {
				log.info("CartService save Exception::"+e)
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
