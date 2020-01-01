package skeleton

class OrderStatus {
	
	String orderId
	String groceryName
	String groceryPrice
	String totalQuantity
	String totalAmount
	String usercartId
	String merchantId
	String status

	String modifiedBy

    static constraints = {
		
		groceryName(maxsize:50, nullable:false)
		groceryPrice(maxsize:50, nullable:false)
		totalQuantity(maxsize:50, nullable:false)
		totalAmount(maxsize:50, nullable:false)
		usercartId(maxSize:50,nullable:false)
		merchantId(maxSize:50,nullable:false)
		status(maxsize:50,nullable:false)
		
    }
}

