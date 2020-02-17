package skeleton

class NexmoController {

   // Inject the service
  def nexmoService

  def index() {
    def smsResult
    def callResult

    try {
      // Send the message "What's up?" to 1-500-123-4567
      smsResult  = nexmoService.sendSms("15001234567", "What's up?")

      // Call the number and tell them a message
      callResult = nexmoService.call("15001234567", "Have a great day! Goodbye.")
    }

   catch(NexmoException e) {
      // Handle error if failure
    }
  }
}
