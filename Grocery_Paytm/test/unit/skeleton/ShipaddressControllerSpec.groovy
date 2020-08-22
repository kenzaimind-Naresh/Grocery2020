package skeleton



import grails.test.mixin.*
import spock.lang.*

@TestFor(ShipaddressController)
@Mock(Shipaddress)
class ShipaddressControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.shipaddressInstanceList
            model.shipaddressInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.shipaddressInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def shipaddress = new Shipaddress()
            shipaddress.validate()
            controller.save(shipaddress)

        then:"The create view is rendered again with the correct model"
            model.shipaddressInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            shipaddress = new Shipaddress(params)

            controller.save(shipaddress)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/shipaddress/show/1'
            controller.flash.message != null
            Shipaddress.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def shipaddress = new Shipaddress(params)
            controller.show(shipaddress)

        then:"A model is populated containing the domain instance"
            model.shipaddressInstance == shipaddress
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def shipaddress = new Shipaddress(params)
            controller.edit(shipaddress)

        then:"A model is populated containing the domain instance"
            model.shipaddressInstance == shipaddress
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/shipaddress/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def shipaddress = new Shipaddress()
            shipaddress.validate()
            controller.update(shipaddress)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.shipaddressInstance == shipaddress

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            shipaddress = new Shipaddress(params).save(flush: true)
            controller.update(shipaddress)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/shipaddress/show/$shipaddress.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/shipaddress/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def shipaddress = new Shipaddress(params).save(flush: true)

        then:"It exists"
            Shipaddress.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(shipaddress)

        then:"The instance is deleted"
            Shipaddress.count() == 0
            response.redirectedUrl == '/shipaddress/index'
            flash.message != null
    }
}
