package hospitalmgnt

import java.util.HashMap;
import org.apache.solr.client.solrj.SolrQuery
import org.apache.solr.client.solrj.impl.HttpSolrServer
import org.apache.solr.client.solrj.request.QueryRequest
import org.apache.solr.client.solrj.response.QueryResponse
import org.apache.solr.common.SolrDocumentList
import org.apache.solr.common.params.ModifiableSolrParams
import org.apache.noggit.JSONUtil;

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DonarController {
	
	def donarService
	static transactional=true

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


  def createdonar(){
		def responseData = new HashMap<>()
	}

    @Transactional
    def saveDonar() {
		log.info("Donar Controller savedonar action")
		def responseData = new HashMap<>()
		def result = new HashMap<>()
		def url,res1
		def mode=params.mode
		
		def dFirstname = params.dFirstname
		log.info(dFirstname)
		
		def dLastname=params.dLastname
		log.info(dLastname)
		
		def dAge=params.dAge
		log.info(dAge)
		
		def dGender=params.dGender
		log.info(dGender)
		
		def mobileNumber = params.mobileNumber
		log.info(mobileNumber)
		
		def address=params.address
		log.info(address)
		
		def city=params.city
		log.info(city)

		def pin=params.pin
		log.info(pin)

		def email=params.email
		log.info(email)
		
		def bloodgroup=params.bloodgroup
		log.info(bloodgroup)

		
		def password=params.password
		log.info(password)
		
		def lastDonation=params.lastDonation
		log.info(lastDonation)
		
		
		if( ! (isValid(dFirstname)&& isValid(dLastname) && isValid(dAge) && isValid(mobileNumber) && isValid(address)&& isValid(city)&& isValid(pin)&& isValid(email)&&
						isValid(bloodgroup)  && isValid(password)  && isValid(mode))){
					redirect(uri: "/donar/createdonar")
			return
		}
						
						
						
						
							def res=donarService.save(dFirstname,dLastname,dAge,dGender,mobileNumber,address,city,pin,email,bloodgroup,password,lastDonation)
							responseData.put("donarInstance", res.getAt("donarInstance"))
							log.info("***********")
							
							log.info(res)
							log.info(mode)
							
							if(res.get("status") == "success"){
								
								render text: """<script type="text/javascript">
                    alert("Registration Completed Successfully");
                    window.location.href = "/ProviderSearch/donar/createdonar";


 </script>""",
								contentType: 'js'
								
			
								// flash.message = "Welcome!"
							   render(view: "createdonar")
								
							}else if(res.get("status") == "error"){
							
							render text: """<script type="text/javascript">
                    alert("Email Id Already Exist !");
                    window.location.href = "/ProviderSearch/donar/createdonar";


 </script>""",
							contentType: 'js'
							
							}
						
	
						
			if(mode=="mobile"){
					render responseData as JSON
					return
				}
				[result:responseData]						
    }

	public HashMap donar_autofill() throws Exception{
		log.info("DonarController donar_autofill method")
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/blooddonar");
		
		ModifiableSolrParams params = new ModifiableSolrParams();
		params.set("command", "full-import");
		params.set("clean", true);
		params.set("commit", true);
		params.set("optimize", true);
		QueryRequest request = new QueryRequest(params);
		request.setPath("/dataimport");
		solr.request(request);
		
		Thread.sleep(1000)
		log.info("******************ddddd")
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/blooddonar");
		 SolrQuery query = new SolrQuery();
			query.setQuery("*:*")
			int num = solrobj.query(query).getResults().getNumFound();
			query.setRows(num);
			query.setStart(0);
			def solrdata=new ArrayList()
			def providerdata = new ArrayList()
			int numFound;
	try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			 numFound = results.getNumFound();
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i).city)
			}
			 Object[] st = solrdata.toArray();
	  for (Object s : st) {
		if (solrdata.indexOf(s) != solrdata.lastIndexOf(s)) {
			solrdata.remove(solrdata.lastIndexOf(s));
		 }
	  }
	}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("size", numFound)
	data.put("solrdata", solrdata)
	return data;
	}
	
	def donarSearch(){
		log.info("donarcontroller donarSearch Action")
		def mode=params.mode
		
		def url="/donar/donarSearch.gsp"
		def responseData = new HashMap<>()
		log.info("****************")
		
		def solrresult = donar_autofill();
		log.info(solrresult)
		responseData.put("solrresult", solrresult)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	def donarSearchinfo(){
		log.info("donarcontroller donarSearchinfo Action")
		def mode=params.mode
		def url="/donar/donarSearchinfo.gsp"
		def city= params.city1
		log.info(city)
		def bloodgroup= params.bloodgroup
		log.info(bloodgroup)
		def responseData = new HashMap<>()
		def msg;
		def solrresult = donar_autofill();
		log.info("****************")
		def solrcity = donar_getdata(bloodgroup,city);
		log.info(solrcity)
		
		if([city=="" || city==null] && [bloodgroup=="" || bloodgroup==null]){
			msg="Donar you have Searched is not available"
		}
		else{
			msg=""
		}
		responseData.put("solrcity", solrcity)
		responseData.put("solrresult", solrresult)
		responseData.put("city", city)
		responseData.put("bloodgroup", bloodgroup)
		responseData.put("message", msg)
		
		if(mode=="mobile"){
			render responseData as JSON
			return
		}
		[result:responseData]
	}
	
	
	public HashMap donar_getdata(bloodgroup,city) throws Exception{
		log.info("donarcontroller donar_getdata method")
		log.info(bloodgroup)
		log.info(city)
		
		log.info(bloodgroup=="")
		log.info(city=="")
		HttpSolrServer solr=null;
		solr = new HttpSolrServer("http://localhost:8983/solr/blooddonar");
		
		ModifiableSolrParams params = new ModifiableSolrParams();
		params.set("command", "full-import");
		params.set("clean", true);
		params.set("commit", true);
		params.set("optimize", true);
		QueryRequest request = new QueryRequest(params);
		request.setPath("/dataimport");
		solr.request(request);
		
		Thread.sleep(1000)
		log.info("******************ddddd")
		
		HttpSolrServer solrobj=null;
		solrobj = new HttpSolrServer("http://localhost:8983/solr/blooddonar");
		log.info(solrobj)
		 SolrQuery query = new SolrQuery();
		 
		if((bloodgroup==null || bloodgroup=="") && (city!=null || city!="") ){
		 query.setQuery("city:"+city);
		}
		else if((city==null || city=="") && (bloodgroup!=null || bloodgroup!="")  ){
			query.setQuery("bloodgroup:"+bloodgroup);
		   }
		else if((city!=null || city!="")&& (bloodgroup!=null || bloodgroup!="")){
			query.setQuery("city:"+city+"&& bloodgroup:"+bloodgroup);
		}
		
			query.setStart(0);
			query.setRows(10);
			log.info(query)
			def solrdata=new ArrayList()
			log.info(solrdata)
		try{
			QueryResponse response = solrobj.query(query);
			SolrDocumentList results = response.getResults();
			log.info(results)
			for (int i = 0; i < results.size(); i++) {
				//solrdata.add(results.get(i))
				solrdata.add(results.get(i))
			}
			
			}
	catch(Exception e){
		log.info("error message "+e)
	}
	def data = new HashMap<>()
	data.put("solrdata", solrdata)
	log.info(data.getClass())
	log.info(data)
	return data;
	}
	
	def donarlist(){
	log.info("DonarController donarlist Action")
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def donardata=Donar.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(donardata)
		def totalcount=Donar.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist")
		responseData.put("totalcount",totalcount )
		responseData.put("donardata", donardata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	
	def offsetlist(){
		log.info("DonarController offsetlist Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def donardata=Donar.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(donardata)
		def totalcount=Donar.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "pharmacylist")
		responseData.put("totalcount",totalcount )
		responseData.put("donardata", donardata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	
	/* To check parameters are valid or not */
	def isValid(param){
		if(null == param || param.trim() == "")
			return false;
		return true;
		}
	
	
    def edit(Donar donarInstance) {
        respond donarInstance
    }

    @Transactional
    def update(Donar donarInstance) {
        if (donarInstance == null) {
            notFound()
            return
        }

        if (donarInstance.hasErrors()) {
            respond donarInstance.errors, view:'edit'
            return
        }

        donarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Donar.label', default: 'Donar'), donarInstance.id])
                redirect donarInstance
            }
            '*'{ respond donarInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Donar donarInstance) {

        if (donarInstance == null) {
            notFound()
            return
        }

        donarInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Donar.label', default: 'Donar'), donarInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'donar.label', default: 'Donar'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
