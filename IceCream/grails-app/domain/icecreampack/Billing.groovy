 package icecreampack

import java.util.Date;
import java.lang.Float

class Billing {
	
	int billId
	
	String customerName
	String createDate
	String mobileNumber
	String address
	
	String productDesc1
	String weight1
	String quantity1
	String billingType1
	String price1
	String offerPercentage1
	String total1
	
	
	String productDesc2
	String weight2
	String quantity2
	String billingType2
	String price2
	String offerPercentage2
	String total2
	
	String productDesc3
	String weight3
	String quantity3
	String billingType3
	String price3
	String offerPercentage3
	String total3
	
	String productDesc4
	String weight4
	String quantity4
	String billingType4
	String price4
	String offerPercentage4
	String total4
	
	String productDesc5
	String weight5
	String quantity5
	String billingType5
	String price5
	String offerPercentage5
	String total5
	
	
	
	String paymentMode
	String grandTotal
	
	String modifiedBy
	Date createdDate
	Date modifiedDate
	

	static constraints = {
		billId(maxSize:20,nullable:false)
		customerName(maxSize:50)
		createDate(nullable:false)
		mobileNumber(maxSize:10,nullable:false)
		address(maxSize:300)
		
		productDesc1(maxSize:300)
		weight1(maxSize:50)
		quantity1(maxSize:300)
		price1(maxSize:25)
		offerPercentage1(maxSize:25)
		total1(maxSize:25)
		
		
		productDesc2(maxSize:300)
		weight2(maxSize:50)
		quantity2(maxSize:300)
		price2(maxSize:25)
		offerPercentage2(maxSize:25)
		total2(maxSize:25)
		
		
		productDesc3(maxSize:300)
		weight3(maxSize:50)
		quantity3(maxSize:300)
		price3(maxSize:25)
		offerPercentage3(maxSize:25)
		total3(maxSize:25)
		
		productDesc4(maxSize:300)
		weight4(maxSize:50)
		quantity4(maxSize:300)
		price4(maxSize:25)
		offerPercentage4(maxSize:25)
		total4(maxSize:25)
		
		productDesc5(maxSize:300)
		weight5(maxSize:50)
		quantity5(maxSize:300)
		price5(maxSize:25)
		offerPercentage5(maxSize:25)
		total5(maxSize:25)
		
		grandTotal(maxSize:25)
		
		modifiedBy(maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
	}
	static mapping = {
	id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
	}
}

