package icecreampack

class Customerdetails {
int customerId
String customerName
String productName
String quantity
String cPrice
String total

String productName1
String quantity1
String cPrice1
String total1

String productName2
String quantity2
String cPrice2
String total2

String productName3
String quantity3
String cPrice3
String total3


String modifiedBy
Date createdDate
Date modifiedDate
    static constraints = {
		customerId(nullable:false)
		customerName(nullable:false,maxSize:50)
		productName(nullable:false,maxSize:50)
		quantity(nullable:false,maxSize:50)
		cPrice(nullable:false,maxSize:50)
		total(nullable:false,maxSize:50)
		modifiedBy(nullable:false,maxSize:50)
		createdDate(nullable:false)
		modifiedDate(nullable:false)
		
		
		productName1 nullable:true
		quantity1 nullable: true
		cPrice1   nullable: true
		total1 nullable:true
		
		
		productName2 nullable:true
		quantity2 nullable: true
		cPrice2   nullable: true
		total2 nullable:true
		
		productName3 nullable:true
		quantity3 nullable: true
		cPrice3   nullable: true
		total3 nullable:true
		
    }
	
	
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1001, increment_size:1]
		
		}
}
