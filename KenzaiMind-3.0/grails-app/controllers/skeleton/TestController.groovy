package skeleton



import static org.springframework.http.HttpStatus.*
import com.paytm.pg.merchant.CheckSumServiceHelper
import grails.transaction.Transactional
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException
import java.util.Random;

@Transactional(readOnly = true)
class TestController {

	// Inject the service

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def nexmoService
	private Integer error;
	
	 CheckSumServiceHelper checkSumServiceHelper=new CheckSumServiceHelper()
	
	def myTest() {
		def smsResult
				def smsResult1
	log.info("Nexmo SMS Start ....")
		try {

		//  smsResult  = nexmoService.sendSms("918096801106", "Hello, welcome to Nexmo SMS....","919533000292");
		  
		  		  smsResult1  = nexmoService.sendSms("919491230995", "Hello, welcome to updateddd Nexmo SMS....","919533000292");
				  
			//	  smsResult  = nexmoService.sendSms("919533000292", "Hello, welcome to upgraded Nexmo SMS....","919533000292");
		  log.info("sms result  "+smsResult)
	
	
		}catch (NexmoException e) {
		  // Handle error if failure
		log.info("failed   ....."+e)
		}
	  }


	def index(Integer max) {
		log.info("TestController index Action")
		params.max = Math.min(max ?: 10, 100)
		respond Test.list(params), model:[testInstanceCount: Test.count()]
	}
	

	    def show(Test testInstance) {
		log.info("TestController show Action")
        respond testInstance
    }

    def create() {
		log.info("TestController create Action")
        respond new Test(params)
    }

    @Transactional
    def save(Test testInstance) {
		log.info("TestController save Action")
        if (testInstance == null) {
            notFound()
            return
        }

        if (testInstance.hasErrors()) {
            respond testInstance.errors, view:'create'
            return
        }

        testInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'test.label', default: 'Test'), testInstance.id])
                redirect testInstance
            }
            '*' { respond testInstance, [status: CREATED] }
        }
    }

    def edit() {
		log.info("TestController edit Action")
    }
	
	
		def paytmpay2(orderid,custid,mobile,cEmail,tranAmount) {
		log.info("TestController paytm2 Action")
		//orderId,customerId,mobileNumber,custEmail,taxAmount
		
		def orderId=orderid;
		def customerId=custid;
		def mobileNumber=mobile;
		def custEmail=cEmail;
		def taxAmount=tranAmount;
				
		log.info("Order Id :"+orderId);
		log.info("Customer Id :"+customerId);
		log.info("Customer Mobile number :"+mobileNumber);
		log.info("Customer email: "+custEmail);
		log.info(" Transaction Amount :" +taxAmount);
		
		
		
		/* initialize a TreeMap object */
		TreeMap<String, String> paytmParams = new TreeMap<String, String>();
		
		/* Find your MID in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		//paytmParams.put("MID", "FJyzZS17862127734203");
		paytmParams.put("MID", "kfvcFU91325011852224");
		
		/* Find your WEBSITE in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		paytmParams.put("WEBSITE", "WEBSTAGING");
		
		/* Find your INDUSTRY_TYPE_ID in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		paytmParams.put("INDUSTRY_TYPE_ID", "Retail");
		
		/* WEB for website and WAP for Mobile-websites or App */
		paytmParams.put("CHANNEL_ID", "WEB");
		
		/* Enter your unique order id */
		paytmParams.put("ORDER_ID", orderId);
		
		/* unique id that belongs to your customer */
		paytmParams.put("CUST_ID", customerId);
		
		/* customer's mobile number */
		paytmParams.put("MOBILE_NO", mobileNumber);
		
		/* customer's email */
		paytmParams.put("EMAIL", custEmail);
		
		/**
		* Amount in INR that is payble by customer
		* this should be numeric with optionally having two decimal points
		*/
		paytmParams.put("TXN_AMOUNT", taxAmount);
		
		/* on completion of transaction, we will send you the response on this URL */
		paytmParams.put("CALLBACK_URL", "http://localhost:8080/Skeleton/");
		
		/**
		* Generate checksum for parameters we have
		* You can get Checksum JAR from https://developer.paytm.com/docs/checksum/
		* Find your Merchant Key in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys
		*/
		//String checksum = checkSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum("3cSNtT3reNGebU6P", paytmParams);
		String checksum = checkSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum("pOzscXM5eOFfZ@SZ", paytmParams);
		
		/* for Staging */
		String url = "https://securegw-stage.paytm.in/order/process";
		
		/* for Production */
		// String url = "https://securegw.paytm.in/order/process";
		PrintWriter writer = response.getWriter();
		/* Prepare HTML Form and Submit to Paytm */
		StringBuilder outputHtml = new StringBuilder();
		outputHtml.append("<html>");
		outputHtml.append("<head>");
		outputHtml.append("<title>Merchant Checkout Page</title>");
		outputHtml.append("</head>");
		outputHtml.append("<body>");
		outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");
		outputHtml.append("<form method='post' action='" + url + "' name='paytm_form'>");
		
		for(Map.Entry<String,String> entry : paytmParams.entrySet()) {
			outputHtml.append("<input type='hidden' name='" + entry.getKey() + "' value='" + entry.getValue() + "'>");
		}
		
		outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>");
		outputHtml.append("</form>");
		outputHtml.append("<script type='text/javascript'>");
		outputHtml.append("document.paytm_form.submit();");
		outputHtml.append("</script>");
		outputHtml.append("</body>");
		outputHtml.append("</html>");
		
		
		writer.println(outputHtml);

log.info("end of the code")
//[values:values]
		render outputHtml;
		return
	}
	
	def paytmpay() {
		log.info("TestController paytm Action")
		
		
		/* initialize a TreeMap object */
		TreeMap<String, String> paytmParams = new TreeMap<String, String>();
		
		/* Find your MID in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		//paytmParams.put("MID", "FJyzZS17862127734203");
		paytmParams.put("MID", "kfvcFU91325011852224");
		
		/* Find your WEBSITE in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		paytmParams.put("WEBSITE", "WEBSTAGING");
		
		/* Find your INDUSTRY_TYPE_ID in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys */
		paytmParams.put("INDUSTRY_TYPE_ID", "Retail");
		
		/* WEB for website and WAP for Mobile-websites or App */
		paytmParams.put("CHANNEL_ID", "WEB");
		
		Random rand = new Random(); 
		int num = rand.nextInt(9000000) + 1000000; 
		
		/* Enter your unique order id */
		paytmParams.put("ORDER_ID", ""+num);
		
		/* unique id that belongs to your customer */
		paytmParams.put("CUST_ID", "100001");
		
		/* customer's mobile number */
		paytmParams.put("MOBILE_NO", "7777777777");
		
		/* customer's email */
		paytmParams.put("EMAIL", "manojlakkampally@gmail.com");
		
		/**
		* Amount in INR that is payble by customer
		* this should be numeric with optionally having two decimal points
		*/
		paytmParams.put("TXN_AMOUNT", "2");
		
		/* on completion of transaction, we will send you the response on this URL */
		paytmParams.put("CALLBACK_URL", "http://localhost:8080/Skeleton/");
		
		/**
		* Generate checksum for parameters we have
		* You can get Checksum JAR from https://developer.paytm.com/docs/checksum/
		* Find your Merchant Key in your Paytm Dashboard at https://dashboard.paytm.com/next/apikeys
		*/
		//String checksum = checkSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum("3cSNtT3reNGebU6P", paytmParams);
		String checksum = checkSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum("pOzscXM5eOFfZ@SZ", paytmParams);
		
		/* for Staging */
		String url = "https://securegw-stage.paytm.in/order/process";
		
		/* for Production */
		// String url = "https://securegw.paytm.in/order/process";
		PrintWriter writer = response.getWriter();
		/* Prepare HTML Form and Submit to Paytm */
		StringBuilder outputHtml = new StringBuilder();
		outputHtml.append("<html>");
		outputHtml.append("<head>");
		outputHtml.append("<title>Merchant Checkout Page</title>");
		outputHtml.append("</head>");
		outputHtml.append("<body>");
		outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");
		outputHtml.append("<form method='post' action='" + url + "' name='paytm_form'>");
		
		for(Map.Entry<String,String> entry : paytmParams.entrySet()) {
			outputHtml.append("<input type='hidden' name='" + entry.getKey() + "' value='" + entry.getValue() + "'>");
		}
		
		outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>");
		outputHtml.append("</form>");
		outputHtml.append("<script type='text/javascript'>");
		outputHtml.append("document.paytm_form.submit();");
		outputHtml.append("</script>");
		outputHtml.append("</body>");
		outputHtml.append("</html>");
		
		
		writer.println(outputHtml);

log.info("end of the code")
//[values:values]
		render outputHtml;
		return
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

	
	
    @Transactional
    def update(Test testInstance) {
		log.info("TestController update Action")
        if (testInstance == null) {
            notFound()
            return
        }

        if (testInstance.hasErrors()) {
            respond testInstance.errors, view:'edit'
            return
        }

        testInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Test.label', default: 'Test'), testInstance.id])
                redirect testInstance
            }
            '*'{ respond testInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Test testInstance) {
		log.info("TestController delete Action")
        if (testInstance == null) {
            notFound()
            return
        }

        testInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Test.label', default: 'Test'), testInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'test.label', default: 'Test'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	public boolean empty(String s) {
		if (s == null || s.trim().equals("")) {
			return true;
		} else {
			return false;
		}
	}

}
