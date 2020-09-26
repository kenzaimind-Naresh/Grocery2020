package hospitalmgnt

import grails.transaction.Transactional
import grails.converters.JSON;

@Transactional
class PackageService {

    def serviceMethod() {}

   def grailsApplication
		def getInstance() {
			log.info("PackageService getInstance ")
			try{
				return new Package()
			}
			catch(Exception e) {
				log.info("PackageService getInstance Exception::"+e)
			}
		}
		def save(Package packageInstance) {
			log.info("PackageService save-Object ")
			try{
				if(packageInstance == null) {
					return false
				}
				else{
					def e=packageInstance.save(flush:true)
					log.info("*******"+e)
					return e
				}
			}
			catch(Exception e) {
				log.info("PackageService save-Object Exception::"+e)
			}
		}
		
				
		def save(packName,packPrice,duration,createdBy){
			log.info("PackageService save-params ")
			def resultData=new HashMap<>()
			String []args=["Package"]
					try{
						def check=Package.findByPackName(packName)
					if(!check){				
					def packageInstance=getInstance()
					log.info(packageInstance)
					if(packageInstance){
						packageInstance.packName=packName
						log.info(packName)
						packageInstance.packPrice=packPrice
						log.info(packPrice)
						packageInstance.duration=duration
						log.info(duration)
						packageInstance.createdBy=createdBy
						log.info(createdBy)
						packageInstance.createdDate=new Date()
						packageInstance.modifiedDate=new Date()
						def sts= save(packageInstance)
						log.info(sts)
						def f=Package.get(packageInstance.id)
						log.info(f)
						f.pId=f.id
						def st=save(f)
						log.info(st)
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
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
				log.info("PackageService save Exception::"+e)
			}
		}
		
		def update(packName,packPrice,duration,createdBy){
			log.info("PackageService update-params ")
			def resultData=new HashMap<>()
			String []args=["Package"]
					try{
						def packageInstance=Package.findByPackName(packName)
					
					if(packageInstance){
						packageInstance.packName=packName
						log.info(packName)
						packageInstance.packPrice=packPrice
						log.info(packPrice)
						packageInstance.duration=duration
						log.info(duration)
						packageInstance.createdBy=createdBy
						log.info(createdBy)
						packageInstance.createdDate=new Date()
						packageInstance.modifiedDate=new Date()
						def sts= save(packageInstance)
						log.info(sts)
						def f=Package.get(packageInstance.id)
						log.info(f)
						f.pId=f.id
						def st=save(f)
						log.info(st)
						
						if(st){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
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
					
				return resultData
			}
			catch(Exception e) {
				log.info("PackageService save Exception::"+e)
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
