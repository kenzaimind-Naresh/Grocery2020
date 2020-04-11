package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestController {

	// Inject the service

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def nexmoService
	
	def myTest() {
		def smsResult
	log.info("Nexmo SMS Start ....")
		try {

		  smsResult  = nexmoService.sendSms("918096801106", "Hello, welcome to Nexmo SMS....","919533000292");
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

    def edit(Test testInstance) {
		log.info("TestController edit Action")
        respond testInstance
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
}
