package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


@Transactional
class OrderStatusController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def OrderStatusService orderStatusService;
	def index(Integer max) {
		log.info("OrderStatusController index Action")
        params.max = Math.min(max ?: 10, 100)
        respond OrderStatus.list(params), model:[orderStatusInstanceCount: OrderStatus.count()]
    }

    def show(OrderStatus orderStatusInstance) {
	log.info("OrderStatusController show Action")
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
	log.info("OrderStatusController create Action")
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
		def renderData = new HashMap<>(); 
	 
		def groceryName = params.groceryName
		log.info(groceryName)
		
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		

		def merchantId = user.shopName
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
	
	def offsetlist(){
		log.info("OrderStatusController offsetlist Action")
		
		def username= session.user
		if(username ==null || username=="" ){
		 redirect(uri: "/merchant/login")
		 return
		}
		def responseData = new HashMap<>();
		def mode=params.mode
		log.info(mode)
		def result,url
		
		if(mode == "web"){
		def user= Merchant.findByEmail(session.user)
		log.info(user)
		
		def merchantId = user.shopName
		log.info(merchantId)
		def of=params.offset;
		def data=OrderStatus.findAllByMerchantId(merchantId,[sort:"id",order:"desc",max: 5, offset: of])
		log.info(data)
		def totalcount=OrderStatus.findAllByMerchantId(merchantId).size()
		log.info(totalcount)
		responseData.put("listId", "list")
		responseData.put("totalcount",totalcount )
		responseData.put("data", data)
		responseData.put("uname", user)
		responseData.put("offset", Integer.parseInt(of))
		  [result:responseData]
		}
	}
	
	def acceptorder(){
		log.info("OrderController acceptorder Action")
		def responseData = new HashMap<>();
		def renderData = new HashMap<>();
		def acceptance=OrderStatus.get(params.id)
		def user = Merchant.findByEmail(session.user)
		log.info(user)
		
		def orderId = acceptance.orderId;
		def groceryName = acceptance.groceryName;
		def groceryPrice = acceptance.groceryPrice;
		def quantity = acceptance.totalQuantity;
		def productCount=acceptance.productCount?Integer.parseInt(acceptance.productCount):null;
		def amount = acceptance.totalAmount;
		def status = acceptance.status;
		log.info("orderId "+orderId)
		log.info("groceryName "+groceryName)
		log.info("groceryPrice "+groceryPrice)
		log.info("quantity "+quantity)
		log.info("productCount "+productCount)
		log.info("amount "+amount)
		log.info("status "+status)
		List<OrderStatus> orderList=new ArrayList<OrderStatus>();
		String[] gnames = groceryName.split("#");
		String[] gprices = groceryPrice.split("#");
		log.info(gnames)
		log.info(gnames[0]) 
		String[] grocnames = gnames[0].split("00");
		log.info(grocnames)
		log.info(grocnames[0])
		log.info(grocnames[1])
		for(int i=0;i<productCount;i++){
			log.info("incece "+i);
		OrderStatus order=new OrderStatus();
		order.groceryName=gnames[i];
		order.groceryPrice=gprices[i];
		orderList.add(order);
		log.info(order);
			}

		renderData.put("orderList",orderList);
		renderData.put("count",productCount);
		renderData.put("totAmt",amount);
		renderData.put("status",status);
		
		log.info("Render data "+renderData )
		
		responseData.put("uname", user)
		responseData.put("acceptance", acceptance)
		responseData.put("result",renderData);
		
		[result:responseData]
		
	}
	
	def updateOrder(){
				log.info("OrderStatusController updateOrder Action")
				def responseData = new HashMap<>();
				log.info(params.orderId)
				log.info(params.status);
				def orderInstance=OrderStatus.get(params.orderId)
				log.info(orderInstance)
				
				log.info(session.user)
				
				def user = Merchant.findByEmail(session.user)
				log.info(user)
				responseData.put("uname", user)
				orderStatusService.update(params.orderId,params.status,user.firstName);
				[result:responseData]
	}


    @Transactional
    def save(OrderStatus orderStatusInstance) {
		log.info("OrderStatusController  save Action")
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
		log.info("OrderStatusController edit Action")
        respond orderStatusInstance
    }

    @Transactional
    def update(OrderStatus orderStatusInstance) {
		log.info("OrderStatusController update Action")
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
		log.info("OrderStatusController delete Action")
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
