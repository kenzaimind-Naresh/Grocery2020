package skeleton

import grails.transaction.Transactional

@Transactional
class CategoryService {
	static transactional=true
	def CategoryService
	
	
	def serviceMethod() {

	}
	
	def grailsApplication
	
	
	def getInstance() {
		log.info("CategoryService getInstance ")
		try{
			return new Category()
		}
		catch(Exception e) {
			log.info("CategoryService getInstance Exception::"+e)
		}
	}
	def save(Category categoryInstance) {
		log.info("CategoryService save-Object ")
		try{
			if(categoryInstance == null) {
				return false
			}
			else{
				def e=categoryInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("CategoryService save-Object Exception::"+e)
		}
	}
	
	def save(categoryName){
		log.info("CategoryService save-params ")
		def resultData=new HashMap<>()
		String []args=["Category"]
	
				try{
						def check
					
				if(!check){
				def categoryInstance=getInstance()
				log.info(categoryInstance)
				
				if(categoryInstance){
					
					categoryInstance.categoryName=categoryName
					log.info(categoryName)
					
					categoryInstance.createdDate=new Date()
					categoryInstance.modifiedDate=new Date()
				   
					
						def sts= save(categoryInstance)
					log.info(sts)
					log.info(categoryInstance.save(failOnError: true))
				
					  def f=Category.get(sts.id)
					   log.info(f)
					   f.categoryId=f.id
					   def st=save(f)
					   log.info(st)
					   
					  
					
					if(st){
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						resultData.put("categoryInstance",categoryInstance)
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
			log.info("CategoryService save Exception::"+e)
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
