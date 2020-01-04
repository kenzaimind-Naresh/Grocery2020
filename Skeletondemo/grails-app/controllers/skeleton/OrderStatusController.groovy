package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrderStatusController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def OrderStatusService orderStatusService;
	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OrderStatus.list(params), model:[orderStatusInstanceCount: OrderStatus.count()]
    }

    def show(OrderStatus orderStatusInstance) {
        respond orderStatusInstance
		
	 def responseData = new HashMap<>()
		
	 def user= User.findByUserName(session.user)
	 log.info(user)
	 def username= session.user
	 if(username ==null || username=="" ){
	 // redirect(uri: "/grocery/show")
	  return
	 }
	 
	 responseData.put("listId", "show")
	 responseData.put("uname",user)
	 
	 log.info("************")
	 log.info(responseData)

	 [result:responseData]
		
    }

    def create() {
        respond new OrderStatus(params)
    }
	
	
	def orderstatuslist(){
		
		log.info("OrderController orderstatuslist Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/orderStatus/orderstatuslist")
		 return
		}
		
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
			
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		
		def merchantId = user.id
		def of=0;
		def data=OrderStatus.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		def totalcount=OrderStatus.findAllByMerchantId(merchantId).size()
		log.info(totalcount)
		def orderStatusInstance=OrderStatus.findByGroceryName(params.groceryName)
		log.info(orderStatusInstance)
		
		responseData.put("data1", orderStatusInstance)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount)
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", of)
		log.info(responseData)
		[result:responseData]
	}
	
	def acceptorder(){
		log.info("OrderController acceptorder Action")
		def acceptance=OrderStatus.get(params.id)
		[result:acceptance]
		
		/*def responseData = new HashMap<>()
		
	 def user= User.findByUserName(session.user)
	 log.info(user)
	 def username= session.user
	 if(username ==null || username=="" ){
	 // redirect(uri: "/grocery/show")
	  return
	 }
	 
	 responseData.put("listId", "show")
	 responseData.put("uname",user)
	 
	 log.info("************")
	 log.info(responseData)

	 [result:responseData]*/
	}
	
	def updateOrder(){
				log.info("OrderStatusController updateOrder Action")
				log.info(params.orderId)
				log.info(params.status);
				def orderInstance=OrderStatus.get(params.orderId)
				log.info(orderInstance)
				
				log.info(session.user)
				
				def user = Merchant.findByEmail(session.user)
				log.info(user)
				
				orderStatusService.update(params.orderId,params.status,user.firstName);
			
	}


    @Transactional
    def save(OrderStatus orderStatusInstance) {
        if (orderStatusInstance == null) {
            notFound()
            return
        }

        if (orderStatusInstance.hasErrors()) {
            respond orderStatusInstance.errors, view:'create'
            return
        }

        orderStatusInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), orderStatusInstance.id])
                redirect orderStatusInstance
            }
            '*' { respond orderStatusInstance, [status: CREATED] }
        }
    }

    def edit(OrderStatus orderStatusInstance) {
        respond orderStatusInstance
    }

    @Transactional
    def update(OrderStatus orderStatusInstance) {
        if (orderStatusInstance == null) {
            notFound()
            return
        }

        if (orderStatusInstance.hasErrors()) {
            respond orderStatusInstance.errors, view:'edit'
            return
        }

        orderStatusInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OrderStatus.label', default: 'OrderStatus'), orderStatusInstance.id])
                redirect orderStatusInstance
            }
            '*'{ respond orderStatusInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OrderStatus orderStatusInstance) {

        if (orderStatusInstance == null) {
            notFound()
            return
        }

        orderStatusInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OrderStatus.label', default: 'OrderStatus'), orderStatusInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
