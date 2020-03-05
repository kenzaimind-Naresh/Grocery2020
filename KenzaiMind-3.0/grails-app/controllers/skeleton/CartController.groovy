package skeleton

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional

@Transactional
class CartController {
	
	def CartService
	def OrderStatusService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		log.info("CartController index Action")
		
        params.max = Math.min(max ?: 10, 100)
        respond Cart.list(params), model:[cartInstanceCount: Cart.count()]
    }

    def show(Cart cartInstance) {
        respond cartInstance
		log.info("CartController show Action")
    }

    def create() {
		log.info("CartController create Action")
        respond new Cart(params)
		
    }
	

    @Transactional
    def save(Cart cartInstance) {
		log.info("CartController save Action")
		//cartInstance.gname=""
		//cartInstance.gprice=""
		//cartInstance.tcount=""
		//cartInstance.tamount=""
		
		log.info(params.gname)
		log.info(params.gprice)
		log.info(params.tcount)
		log.info("qCount "+params.qCount)
		log.info(params.tamount)
		log.info("*********************************************************")
		def grocname=params.gname.split("#")[0].split("00")[0];
		def merchant=Grocery.findByGroceryName(grocname).merchantId;
		log.info(grocname);
		
		 //def gobject=Grocery.findByGroceryName()
		 //def merchantId= gobject.merchantId
		
        //cartInstance.save flush:true
		
		def result=CartService.save(cartInstance.gname,cartInstance.gprice,cartInstance.tcount,cartInstance.qCount,cartInstance.tamount,cartInstance.usercartId)
		log.info("response from service"+result)
		log.info("((((((((((((((((("+result.get("cartInstance"));
		session.setAttribute("savedCart", result.get("cartInstance"));
		redirect(uri: "/address/create")
		//flash.message = "Create Grocery Successfully"	
    }

    def edit(Cart cartInstance) {
        respond cartInstance
		log.info("CartController edit Action")
    }

    @Transactional
    def update(Cart cartInstance) {
	log.info("CartController update action")
        if (cartInstance == null) {
            notFound()
            return
        }

        if (cartInstance.hasErrors()) {
            respond cartInstance.errors, view:'edit'
            return
        }

        cartInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cart.label', default: 'Cart'), cartInstance.id])
                redirect cartInstance
            }
            '*'{ respond cartInstance, [status: OK] }
        }
    }
	

    @Transactional
    def delete(Cart cartInstance) {
		log.info("CartController delete Action")
        if (cartInstance == null) {
            notFound()
            return
        }

        cartInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cart.label', default: 'Cart'), cartInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cart.label', default: 'Cart'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
