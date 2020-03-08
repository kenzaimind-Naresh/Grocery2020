package hospitalmgnt

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;
import grails.converters.JSON

class ContactusController {
	
	def ContactusService
	static transactional=true
	
	static allowedMethods = [save: "POST", update: "PUT", myUpdate: "POST",  delete: "DELETE"]
	
	@Transactional
	def savecontact() {
		log.info("contactus Controller savecontact action")
		def responseData = new HashMap<>()
		def result = new HashMap<>()
		def url,res1
		def mode=params.mode
		log.info(mode)
		
		def myaction = params.myaction
		log.info(myaction)
		
		def firstName = params.firstName
		log.info(firstName)
		
		def lastName=params.lastName
		log.info(lastName)
		
		def email=params.email
		log.info(email)
		
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		
		def address=params.address
		log.info(address)
		
		def city=params.city
		log.info(city)
				
		def state=params.state
		log.info(state)
		
		def zipCode=params.zipCode
		log.info(zipCode)
		
		def modifiedBy=params.modifiedBy
		log.info(modifiedBy)
		
		
		if( ! (isValid(firstName) && isValid(lastName) && isValid(email) && isValid(mobileNumber) && isValid(address) && isValid(city)
			&& isValid(state) && isValid(zipCode) && isValid(modifiedBy) &&  isValid(myaction)  && isValid(mode))){
			redirect(uri: "/user/providerSearch")
			return
		}
						
			if(myaction.equals("save")) {
				if( ! (isValid(firstName) && isValid(lastName) && isValid(email) && isValid(mobileNumber) && isValid(address) && isValid(city)
					&& isValid(state) && isValid(zipCode) && isValid(modifiedBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				
					 def res=ContactusService.save(firstName,lastName,email,mobileNumber,address,city,state,zipCode,modifiedBy)
					 responseData.put("contactusInstance", res.getAt("contactusInstance"))
					 log.info("***********")
					 
					 log.info(res)
					 log.info(mode)
					 //responseData.put(getMessages("default.status.label"),getMessages("default.success.message"))
					 if(res.get("status") == "success"){
						 
						 render text: """<script type="text/javascript">
                    alert("Thanks For Contacting us ! Our Team will Contact You Soon. ");
                    window.location.href = "/ProviderSearch/user/providerSearch";


 </script>""",
						 contentType: 'js'
						 
	 
						 // flash.message = "Welcome!"
						render(view: "providersearch")
						 
					 }else if(res.get("status") == "error"){
					 
					 render text: """<script type="text/javascript">
                    alert("Email Id Already Exist !");
                    window.location.href = "/ProviderSearch/user/providerSearch";


 </script>""",
					 contentType: 'js'
					 
					 }
				 
					 if(mode=="mobile"){
						 render responseData as JSON
						 return
					 }
					 [result:responseData]
			}
	
			}
			
			
	}
	
	
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
		}
	
	/* To get the messages */
		def getMessages(code) {
			return message(code : code)
		}
		
		def renderPage(mode,url,map){
			log.info("contactus Controller renderPage Action")
			log.info(map.get("status"))
			log.info(url)
			log.info(mode)
			log.info(map)
			 if(mode == "web" && map.get("status")=="success"){
				 
				render view:url,model:[result:map]
			}
			 else{
				 render map as JSON
			 }
		}
		
		
	}


