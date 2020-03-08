package hospitalmgnt
import grails.converters.JSON;
import grails.transaction.Transactional;
@Transactional
class LoginController {

    def index() { }
	def renderPage(mode,url,map){
		log.info("LoginController renderPage Action")
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
