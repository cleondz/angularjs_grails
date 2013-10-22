package juicios



import grails.test.mixin.*
import spock.lang.*

@TestFor(JuicioController)
@Mock(Juicio)
class JuicioControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.juicioInstanceList
            model.juicioInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.juicioInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def juicio = new Juicio()
            juicio.validate()
            controller.save(juicio)

        then:"The create view is rendered again with the correct model"
            model.juicioInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            juicio = new Juicio(params)

            controller.save(juicio)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/juicio/show/1'
            controller.flash.message != null
            Juicio.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def juicio = new Juicio(params)
            controller.show(juicio)

        then:"A model is populated containing the domain instance"
            model.juicioInstance == juicio
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def juicio = new Juicio(params)
            controller.edit(juicio)

        then:"A model is populated containing the domain instance"
            model.juicioInstance == juicio
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/juicio/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def juicio = new Juicio()
            juicio.validate()
            controller.update(juicio)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.juicioInstance == juicio

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            juicio = new Juicio(params).save(flush: true)
            controller.update(juicio)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/juicio/show/$juicio.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/juicio/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def juicio = new Juicio(params).save(flush: true)

        then:"It exists"
            Juicio.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(juicio)

        then:"The instance is deleted"
            Juicio.count() == 0
            response.redirectedUrl == '/juicio/index'
            flash.message != null
    }
}
