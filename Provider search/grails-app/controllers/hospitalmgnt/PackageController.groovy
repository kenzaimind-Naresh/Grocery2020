package hospitalmgnt

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import groovy.io.FileType;
import java.security.NoSuchAlgorithmException;
import java.security.MessageDigest
import java.text.SimpleDateFormat
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException
import java.security.cert.X509Certificate
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import grails.converters.JSON
import grails.transaction.Transactional;

class PackageController {

    def index() { }
	def PackageService
	static transactional=true
	private Integer error;
	LoginController logincontroller=new LoginController()
	
	
	def packCreate(){
		log.info("PackageController packCreate action")
		def responseData = new HashMap<>()
		def result,url
		url="/Package/packCreate.gsp"
		log.info(url)
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/login1")
			return
		   }
		def user= User.findByUsername(session.user)
		log.info(user)
		responseData.put("user",user)
		log.info("************")
		log.info(responseData)
		responseData.put("listId", "packlist")
		[result:responseData]
		
	}
	
	def packUpdate(){
		log.info("PackageController packUpdate action")
		def responseData = new HashMap<>()
		def result,url
		url="/Package/packUpdate.gsp"
		log.info(url)
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/login1")
			return
		   }
		def user= User.findByUsername(session.user)
		log.info(user)
		def id = params.id
		log.info(id)
		def pack = Package.findByPId(id)
		log.info(pack)
		responseData.put("user",user)
		responseData.put("pack",pack)
		log.info("************")
		log.info(responseData)
		responseData.put("listId", "packlist")
		[result:responseData]
		
	}
	
	def packlist(){
		log.info("PackageController packlist Action")
		def responseData = new HashMap<>();
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def mode="web"
		def of=0;
		def packdata=Package.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(packdata)
		def totalcount=Package.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "packlist")
		responseData.put("totalcount",totalcount )
		responseData.put("packdata", packdata)
		responseData.put("user", user)
		responseData.put("offset", of)
		[result:responseData]
	}
	
	/*sending user data and outpatient data to offsetlist gsp page*/
	def offsetlist(){
		log.info("PackageController offsetlist Action")
		def mode="web"
		def user= User.findByUsername(session.user)
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/user/login1")
		 return
		}
		
		def of=params.offset;
		def responseData = new HashMap<>()
		def packdata=Package.list(sort:"id",order:"desc",max: 5, offset: of)
		log.info(packdata)
		def totalcount=Package.findAll().size()
		log.info(totalcount)
		responseData.put("listId", "packlist")
		responseData.put("totalcount",totalcount )
		responseData.put("packdata", packdata)
		responseData.put("user", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	
	def activationPage(){
		log.info("PackageController activationPage Action")
		def mode="web"
		def url="/Package/activationPage.gsp"
		def responseData = new HashMap<>()
		def user= Doctor.findByEmail(session.user)
		def username= session.user
		def silvr = "Silver"
		def gld = "Gold"
		def Pltnm = "Platinum"
		def spack = Package.findByPackName(silvr)
		log.info(spack)
		def gpack = Package.findByPackName(gld)
		log.info(gpack)
		def ppack = Package.findByPackName(Pltnm)
		log.info(ppack)
		def pack = Package.findAll()
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		responseData.put("spack", spack)
		responseData.put("pack", pack)
		responseData.put("gpack", gpack)
		responseData.put("ppack", ppack)
		responseData.put("uname", user)
		responseData.put("listId","activationPage")
		  [result:responseData]
		}
	
	/* To save the data of DoctorSchedule */
	@Transactional
	def savepackage() {
		log.info("PackageController savepackage action")
		def responseData = new HashMap<>()
		def url
		def mode=params.mode
		log.info(mode)
		
		def packName=params.packName
		log.info(packName)
		def packPrice=params.packPrice
		log.info(packPrice)
		def duration=params.duration
		log.info(duration)
		def createdBy=params.createdBy
		log.info(createdBy)
		
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/login1")
			return
		   }
		def user= User.findByUsername(username)
		log.info(user)
		
		if( ! (isValid(packName) && isValid(packPrice) && isValid(duration) && isValid(createdBy) && isValid(mode))){
					redirect(uri: "/user/adminDashboard")
			return
		}
		
			if( ! (isValid(packName) && isValid(packPrice) && isValid(duration) && isValid(createdBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=PackageService.save(packName,packPrice,duration,createdBy)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/Package/savepackage.gsp"
					responseData.put("message", "Package Saved Successfully")
					user= User.findByUsername(session.user)
					responseData.put("user",user)
					responseData.put("listId", "packCreate")
				}else if(result.get("status") == "error"){
				responseData.put("message", "Already Existed")
				user= User.findByUsername(session.user)
				responseData.put("user",user)
				responseData.put("listId", "packCreate")
					url="/Package/savepackage.gsp"
				}
				[result:responseData]
			}
		}
	
	@Transactional
	def updatepackage() {
		log.info("PackageController updatepackage action")
		def responseData = new HashMap<>()
		def url
		def mode=params.mode
		log.info(mode)
		
		def packName=params.packName
		log.info(packName)
		def packPrice=params.packPrice
		log.info(packPrice)
		def duration=params.duration
		log.info(duration)
		def createdBy=params.createdBy
		log.info(createdBy)
		
		def username= session.user
		log.info(username)
		if(username ==null || username=="" ){
			redirect(uri: "/user/login1")
			return
		   }
		def user= User.findByUsername(username)
		log.info(user)
		
		if( ! (isValid(packName) && isValid(packPrice) && isValid(duration) && isValid(createdBy) && isValid(mode))){
					redirect(uri: "/user/adminDashboard")
			return
		}
		
			if( ! (isValid(packName) && isValid(packPrice) && isValid(duration) && isValid(createdBy))){
				responseData.put(getMessages('default.status.label'),getMessages('default.error.message'))
				responseData.put(getMessages('default.message.label'),getMessages('default.params.missing'))
				renderPage(mode, url, responseData)
				return
				
			}
			else {
				def result=PackageService.update(packName,packPrice,duration,createdBy)
				log.info(result)
				
				if(result.get("status") == "success"){
					url="/Package/updatepackage.gsp"
					responseData.put("message", "Package Updated Successfully")
					user= User.findByUsername(session.user)
					responseData.put("user",user)
					responseData.put("listId", "packlist")
				}
				[result:responseData]
			}
		}
	def payee(){
		log.info("PackageController payee Action")
		def mode="web"
		def url
		def responseData = new HashMap<>()
		def user= Doctor.findByEmail(session.user)
		def username= session.user
		def id = params.id
		def pack = Package.findByPackName(id)
		log.info(pack)
		if(username ==null || username=="" ){
		 redirect(uri: "/user/doctorLogin1")
		 return
		}
		
		responseData.put("pack", pack)
		responseData.put("uname", user)
		responseData.put("listId","activationPage")
		  [result:responseData]
		}
		
	public String hashCal(String type, String str) {
		byte[] hashseq = str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try {
			MessageDigest algorithm = MessageDigest.getInstance(type);
			algorithm.reset();
			algorithm.update(hashseq);
			byte[] messageDigest = algorithm.digest();
			for (int i = 0; i < messageDigest.length; i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if (hex.length() == 1) {
					hexString.append("0");
				}
				hexString.append(hex);
			}

		} catch (NoSuchAlgorithmException nsae) {
		}
		return hexString.toString();
	}




	protected Map<String, String> hashCalMethod( Map<String, String> params)
	throws Exception {
		response.setContentType("text/html;charset=UTF-8");

		String salt ="e5iIg1jwi8";
		String action1 = "";
		String base_url = "https://test.payu.in";
		error = 0;
		String hashString = "";
		// Enumeration paramNames = request.getParameterNames();
		//	Map<String, String> params = new HashMap<String, String>();
		Map<String, String> urlParams = new HashMap<String, String>();
		/*while (paramNames.hasMoreElements()) {
		 String paramName = (String) paramNames.nextElement();
		 String paramValue = request.getParameter(paramName);
		 params.put(paramName, paramValue);
		 }*/

		String txnid = "";
		if (empty(params.get("txnid"))) {
			Random rand = new Random();
			String rndm = Integer.toString(rand.nextInt()) + (System.currentTimeMillis() / 1000L);

			txnid = rndm;
			params.remove("txnid");
			params.put("txnid", txnid);
			txnid = hashCal("SHA-256", rndm).substring(0, 20);
		} else {
			txnid = params.get("txnid");
		}

		log.info("txd id ... "+txnid)
		String txn = "abcd";
		String hash = "";


		log.info("hash   "+hash)
		log.info("action1   "+action1)
		log.info("hashString  "+hashString)


		log.info(params.get("key"))
		log.info(txnid)
		log.info("KKKKKKKKKKKKKKKKKKKKKKKKKK")
		log.info(params.get("amount"))
		log.info(params.get("firstname"))
		log.info(params.get("email"))
		log.info(params.get("phone"))
		log.info(params.get("productinfo"))
		log.info(params.get("surl"))
		log.info(params.get("furl"))
		log.info(params.get("service_provider"))


		log.info("*****************************")

		String otherPostParamSeq = "phone|surl|furl|lastname|curl|address1|address2|city|state|country|zipcode|pg";
		String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
		if (empty(params.get("hash")) && params.size() > 0) {
			if (empty(params.get("key")) || empty(txnid) || empty(params.get("amount")) || empty(params.get("firstname")) ||
			empty(params.get("email")) || empty(params.get("phone")) || empty(params.get("productinfo")) || empty(params.get("surl")) || empty(params.get("furl")) || empty(params.get("service_provider"))) {
				error = 1;
			} else {

				String[] hashVarSeq = hashSequence.split("\\|");
				for (String part : hashVarSeq) {
					if (part.equals("txnid")) {
						hashString = hashString + txnid;
						urlParams.put("txnid", txnid);
					} else {
						hashString = (empty(params.get(part))) ? hashString.concat("") : hashString.concat(params.get(part).trim());
						urlParams.put(part, empty(params.get(part)) ? "" : params.get(part).trim());
					}
					hashString = hashString.concat("|");
				}
				hashString = hashString.concat(salt);
				log.info("hash string  >>>>>>>> "+hashString)
				hash = hashCal("SHA-512", hashString);
				action1 = base_url.concat("/_payment");
				String[] otherPostParamVarSeq = otherPostParamSeq.split("\\|");
				for (String part : otherPostParamVarSeq) {
					urlParams.put(part, empty(params.get(part)) ? "" : params.get(part).trim());
				}

			}
		} else if (!empty(params.get("hash"))) {
			hash = params.get("hash");
			action1 = base_url.concat("/_payment");
		}


		log.info("hash   "+hash)
		log.info("action1   "+action1)
		log.info("hashString  "+hashString)



		urlParams.put("hash", hash);
		urlParams.put("action", action1);
		urlParams.put("hashString", hashString);
		log.info("DDDDDDDDDDDDDDDDDDDDDDDDDDDd")
		log.info(urlParams)

		return urlParams;
	}






	public boolean empty(String s) {
		if (s == null || s.trim().equals("")) {
			return true;
		} else {
			return false;
		}
	}



	def paymentdo(){
		log.info("Package Controller paymentdo Action")
		
		
		
		def key=params.key
		def hash = params.hash
		def txnid=params.txnid
		def firstname=params.firstname
		def email=params.email
		def phone=params.phone
		def amount=params.amount
		
		
		
		def productinfo=params.productinfo
		def surl = params.surl
		def furl=params.furl
		def service_provider=params.service_provider
		def lastname=params.lastname
		def curl=params.curl
		
		def address1=params.address1
		def address2=params.address2
		def city=params.city
		def state=params.state
		def country=params.country
		def zipcode=params.zipcode
		
		def udf1=params.udf1
		def udf2=params.udf2
		def udf3=params.udf3
		def udf4=params.udf4
		def udf5=params.udf5
		def pg=params.pg
	
		Map<String, String> params = new HashMap<String, String>();
		Map<String, String> urlParams = new HashMap<String, String>();
		
			params.put("amount", amount);
			params.put("key", key);
			params.put("hash", hash);
			params.put("txnid", txnid);
			params.put("firstname", firstname);
			params.put("email", email);
			params.put("phone", phone);
			
			params.put("productinfo", productinfo);
			params.put("surl", surl);
			params.put("furl", furl);
			params.put("service_provider", service_provider);
			params.put("lastname", lastname);
			
			params.put("curl", curl);
			params.put("address1", address1);
			params.put("address2", address2);
			params.put("city", city);
			params.put("state", state);
			params.put("country", country);
			params.put("zipcode", zipcode);
			params.put("udf1", udf1);
			
			params.put("udf2", udf2);
			params.put("udf3", udf3);
			params.put("udf4", udf4);
			params.put("udf5", udf5);
			params.put("pg", pg);
				
		log.info(params)
		
		
		Map<String, String> values= hashCalMethod(params);
		log.info("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		log.info(values)
		
		
		PrintWriter writer = response.getWriter();
		// build HTML code
				String htmlResponse =new String( "<html> <body> \n"
						+ "      \n"
						+ "  \n"
						
						+ "  \n" + "<div>"
						+ "        <form id=\"payuform\" action=\"" + values.get("action") + "\"  name=\"payuform\" method=POST >\n"
						+ "      <input type=\"hidden\" name=\"key\" value=" + values.get("key").trim() + ">"
						+ "      <input type=\"hidden\" name=\"hash\" value=" + values.get("hash").trim() + ">"
						+ "      <input type=\"hidden\" name=\"txnid\" value=" + values.get("txnid").trim() + ">"
						+ "      <table>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"amount\" value=" + values.get("amount").trim() + " /></td>\n"
						+ "          <td><input type=\"hidden\" name=\"firstname\" id=\"firstname\" value=" + values.get("firstname").trim() + " /></td>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"email\" id=\"email\" value=" + values.get("email").trim() + " /></td>\n"
						+ "          <td><input type=\"hidden\" name=\"phone\" value=" + values.get("phone") + " ></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "<td><input  type=\"hidden\" name=\"productinfo\" value=" + values.get("productinfo").trim() + " ></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td colspan=\"3\"><input type=\"hidden\" name=\"surl\"  size=\"64\" value=" + values.get("surl") + "></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td colspan=\"3\"><input type=\"hidden\" name=\"furl\" value=" + values.get("furl") + " size=\"64\" ></td>\n"
						+ "        </tr>\n"
						+ "<p align=\"center\"><font color=\"gray\" style=\"font-size:40px\">Please Don't Refresh Page</font></p>"

						+ "        <tr>\n"
						+ "          <td colspan=\"3\"><input type=\"hidden\" name=\"service_provider\" value=\"payu_paisa\" /></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"lastname\" id=\"lastname\" value=" + values.get("lastname") + " ></td>\n"
						+ "          <td><input  type=\"hidden\" name=\"curl\" value=" + values.get("curl") + " ></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"address1\" value=" + values.get("address1") + " ></td>\n"
						+ "          <td><input type=\"hidden\" name=\"address2\" value=" + values.get("address2") + " ></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"city\" value=" + values.get("city") + "></td>\n"
						+ "          <td><input type=\"hidden\" name=\"state\" value=" + values.get("state") + "></td>\n"
						+ "        </tr>\n"
						+ "        <tr>\n"
						+ "          <td><input type=\"hidden\" name=\"country\" value=" + values.get("country") + " ></td>\n"
						+ "          <td><input type=\"hidden\" name=\"zipcode\" value=" + values.get("zipcode") + " ></td>\n"
						+ "        </tr>\n"
						+ "          <td><input type=\"hidden\" name=\"udf1\" value=" + values.get("udf1") + "></td>\n"
						+ "          <td><input type=\"hidden\" name=\"udf2\" value=" + values.get("udf2") + "></td>\n"
						+ " <td><input type=\"hidden\" name=\"hashString\" value=" + values.get("hashString") + "></td>\n"
						+ "          <td><input type=\"hidden\" name=\"udf3\" value=" + values.get("udf3") + " ></td>\n"
						+ "          <td><input type=\"hidden\"  name=\"udf4\" value=" + values.get("udf4") + " ></td>\n"
					   + "          <td><input type=\"hidden\" name=\"udf5\" value=" + values.get("udf5") + " ></td>\n"
					   + "          <td><input type=\"hidden\" name=\"pg\" value=" + values.get("pg") + " ></td>\n"
						//+ "        <td colspan=\"4\"><input type=\"submit\" value=\"Submit\"  /></td>\n"
						+ "      \n"
						+ "    \n"
						+ "      </table>\n"
						+ "    </form>\n"
						+ " <script> "
						+"document.getElementById(\"payuform\").disabled = true;"
						+ " document.getElementById(\"payuform\").submit(); "
						
						+ " </script> "
						+ "       </div>   "
						+ "  \n"
						+ "  </body>\n"
						+ "</html>");
		// return response
				writer.println(htmlResponse);
		
	log.info("end of the code")
		//[values:values]
				render htmlResponse;
				return
	}
	
	def trustAllCerts = [
		new X509TrustManager() {
			public X509Certificate[] getAcceptedIssuers() {
				return null
			}
	
			public void checkServerTrusted(X509Certificate[] certs, String authType) throws CertificateException {
			}
	
			public void checkClientTrusted(X509Certificate[] certs, String authType) throws CertificateException {
			}
		}
	] as TrustManager[]
	
	
		/* To check parameters are valid or not */
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
				log.info("Package Controller renderPage Action")
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
