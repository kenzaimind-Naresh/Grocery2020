package skeleton

import java.util.Date;

class OrderStatus {
	
	String orderId
	String groceryName
	String groceryPrice
	String totalQuantity
	String productCount
	String totalAmount
	String usercartId
	String merchantId
	String addressId
	String status
	Date createdDate

	String modifiedBy

    static constraints = {
		
		orderId(maxsize:50, nullable:false)
		groceryName(maxsize:50, nullable:false)
		groceryPrice(maxsize:50, nullable:false)
		totalQuantity(maxsize:50, nullable:false)
		totalAmount(maxsize:50, nullable:false)
		usercartId(maxSize:50,nullable:false)
		merchantId(maxSize:50,nullable:false)
		addressId(maxSize:50,nullable:false)
		status(maxsize:50,nullable:false)
		createdDate(nullable:true)
		
    }
}

