package skeleton



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional

  
(readOnly = true)
class CategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		log.info("CategoryController index Action")
        params.max = Math.min(max ?: 5, 100)
        respond Category.list(params), model:[categoryInstanceCount: Category.count()]
    }

    def show(Category categoryInstance) {
			log.info("CategoryController show Action")
			def responseData = new HashMap<>()
			def admin= Admin.findByAdminname(session.admin)
			
			def adminname= session.admin
			if(adminname ==null || adminname=="" ){
			 redirect(uri: "/admin/login1")
			 return
			}
			responseData.put("listId", "adminDashboard")
			responseData.put("admin",admin)
			[result:responseData]
    }

    def create() {
		log.info("CategoryController create Action")
		def responseData = new HashMap<>()
		def admin= Admin.findByAdminname(session.admin)
		
		def adminname= session.admin
		if(adminname ==null || adminname=="" ){
		 redirect(uri: "/admin/login1")
		 return
		}
		
		
		responseData.put("listId", "adminDashboard")
		responseData.put("admin",admin)
		[result:responseData]
		
    }

    @Transactional
    def save(Category categoryInstance) {
		log.info("CategoryController save Action")
        if (categoryInstance == null) {
            notFound()
            return
        }

        if (categoryInstance.hasErrors()) {
            respond categoryInstance.errors, view:'create'
            return
        }

        categoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
                redirect categoryInstance
            }
            '*' { respond categoryInstance, [status: CREATED] }
        }
    }

    def edit(Category Instance) {
		log.info("CategoryController edit Action")
        respond categoryInstance
    }

    @Transactional
    def update(Category categoryInstance) {
		log.info("CategoryController update Action")
        if (categoryInstance == null) {
            notFound()
            return
        }

        if (categoryInstance.hasErrors()) {
            respond categoryInstance.errors, view:'edit'
            return
        }

        categoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Category.label', default: 'Category'), categoryInstance.id])
                redirect categoryInstance
            }
            '*'{ respond categoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Category categoryInstance) {
		log.info("CategoryController delete Action")
        if (categoryInstance == null) {
            notFound()
            return
        }

        categoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Category.label', default: 'Category'), categoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
