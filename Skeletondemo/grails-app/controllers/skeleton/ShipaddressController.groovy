package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import grails.converters.JSON;

import java.util.HashMap;
import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.List;
import java.util.Date;
import java.lang.Object;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;



@Transactional(readOnly = true)
class ShipaddressController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		log.info("ShipaddressController index Action")
		
        params.max = Math.min(max ?: 10, 100)
        respond Shipaddress.list(params), model:[shipaddressInstanceCount: Shipaddress.count()]
    }

    def show(Shipaddress shipaddressInstance) {
		log.info("ShipaddressController show Action")
        respond shipaddressInstance
    }

    def create() {
		log.info("ShipaddressController create Action")
        respond new Shipaddress(params)
		
		
		
		
    }

    @Transactional
    def save(Shipaddress shipaddressInstance) {
		log.info("ShipaddressController save Action")
        if (shipaddressInstance == null) {
            notFound()
            return
        }

        if (shipaddressInstance.hasErrors()) {
            respond shipaddressInstance.errors, view:'create'
            return
        }

        shipaddressInstance.save flush:true	

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shipaddress.label', default: 'Shipaddress'), shipaddressInstance.id])
                redirect shipaddressInstance
            }
            '*' { respond shipaddressInstance, [status: CREATED] }
        }
    }
	
	

    def edit(Shipaddress shipaddressInstance) {
		log.info("ShipaddressController edit Action")
        respond shipaddressInstance
    }

	 
	
    @Transactional
    def update(Shipaddress shipaddressInstance) {
		log.info("ShipaddressController update Action")
        if (shipaddressInstance == null) {
            notFound()
            return
        }

        if (shipaddressInstance.hasErrors()) {
            respond shipaddressInstance.errors, view:'edit'
            return
        }

        shipaddressInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Shipaddress.label', default: 'Shipaddress'), shipaddressInstance.id])
                redirect shipaddressInstance
            }
            '*'{ respond shipaddressInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Shipaddress shipaddressInstance) {
   log.info("ShipaddressController delete Action")
        if (shipaddressInstance == null) {
            notFound()
            return
        }

        shipaddressInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Shipaddress.label', default: 'Shipaddress'), shipaddressInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shipaddress.label', default: 'Shipaddress'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
