package skeleton

import grails.transaction.Transactional
import skeleton.Package;

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
	
			
	def save(packageName,subAmount,duration,createdby){
		log.info("PackageService save-params ")
		def resultData=new HashMap<>()
		String []args=["Package"]
				try{
					def check=Package.findByPackageName(packageName)
				if(!check){
				def packageInstance=getInstance()
				log.info(packageInstance)
				if(packageInstance){
					packageInstance.packageName=packageName
					log.info(packageName)
					packageInstance.subAmount=subAmount
					log.info(subAmount)
					packageInstance.duration=duration
					log.info(duration)
					packageInstance.createdby=createdby
					log.info(createdby)
					packageInstance.createdDate=new Date()
					packageInstance.modifiedDate=new Date()
					def sts= save(packageInstance)
					log.info(sts)
					def f=Package.get(packageInstance.id)
					log.info(f)
					f.packageId=f.id
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
	
	def getMessage(String code) {
		return getMessage(code,null)
	}

	def getMessage(String code,String[] args) {
		def appCtx = grailsApplication.getMainContext()
		return appCtx.getMessage(code,args,Locale.default)
	}

		
}


