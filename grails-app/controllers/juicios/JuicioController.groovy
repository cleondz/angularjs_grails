package juicios



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class JuicioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Juicio.list(params), model:[juicioInstanceCount: Juicio.count()]
    }

    def show(Juicio juicioInstance) {
        respond juicioInstance
    }

    def create() {
        respond new Juicio(params)
    }

    @Transactional
    def save(Juicio juicioInstance) {
        if (juicioInstance == null) {
            notFound()
            return
        }

        if (juicioInstance.hasErrors()) {
            respond juicioInstance.errors, view:'create'
            return
        }

        juicioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'juicioInstance.label', default: 'Juicio'), juicioInstance.id])
                redirect juicioInstance
            }
            '*' { respond juicioInstance, [status: CREATED] }
        }
    }

    def edit(Juicio juicioInstance) {
        respond juicioInstance
    }

    @Transactional
    def update(Juicio juicioInstance) {
        if (juicioInstance == null) {
            notFound()
            return
        }

        if (juicioInstance.hasErrors()) {
            respond juicioInstance.errors, view:'edit'
            return
        }

        juicioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Juicio.label', default: 'Juicio'), juicioInstance.id])
                redirect juicioInstance
            }
            '*'{ respond juicioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Juicio juicioInstance) {

        if (juicioInstance == null) {
            notFound()
            return
        }

        juicioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Juicio.label', default: 'Juicio'), juicioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'juicioInstance.label', default: 'Juicio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
