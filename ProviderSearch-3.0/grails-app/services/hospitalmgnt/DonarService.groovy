package hospitalmgnt

import grails.transaction.Transactional

@Transactional
class DonarService {

    def serviceMethod() {

    }
	def UserService
	def grailsApplication
	
	def getInstance() {
		log.info("DonarService getInstance ")
		try{
			return new Donar()
		}
		catch(Exception e) {
			log.info("DonarService getInstance Exception::"+e)
		}
	}
	def save(Donar donarInstance) {
		log.info("DonarService save-Object ")
		try{
			if(donarInstance == null) {
				return false
			}
			else{
				def e=donarInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("DonarService save-Object Exception::"+e)
		}
	}
	
	
	/*
	 * To save the data of Donar
	 * save service for saveDoctor action in DonarController */
	def save(dFirstname,dLastname,dAge,dGender,mobileNumber,address,city,pin,email,bloodgroup,password,lastDonation){
		log.info("DonarService save-params ")
		def resultData=new HashMap<>()
		String []args=["Donar"]
				try{
					def check=Donar.findByEmail(email)
					
				if(!check){
				def donarInstance=getInstance()
				log.info(donarInstance)
				if(donarInstance){
					donarInstance.dFirstname=dFirstname
					log.info(dFirstname)
					donarInstance.dLastname=dLastname
					log.info(dLastname)
					donarInstance.dAge=dAge
					log.info(dAge)
					donarInstance.dGender=dGender
					log.info(dGender)
					donarInstance.mobileNumber=mobileNumber
					log.info(mobileNumber)
					donarInstance.address=address
					log.info(address)
					donarInstance.city=city
					log.info(city)
					donarInstance.pin=pin
					log.info(pin)
					donarInstance.email=email
					log.info(email)
					donarInstance.bloodgroup=bloodgroup
					log.info(bloodgroup)
					donarInstance.password=password
					log.info(password)
					donarInstance.lastDonation=lastDonation
					log.info(lastDonation)
					
					donarInstance.createdDate=new Date()
					donarInstance.modifiedDate=new Date()
					//log.info(donarInstance.save(failOnError: true))
					def sts= save(donarInstance)
					log.info(sts)
					if(sts){
						UserService.sendmail(email)
						}
					
					if(sts){
						resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
						resultData.put("donarInstance",donarInstance)
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
			log.info("DoctorService save Exception::"+e)
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
