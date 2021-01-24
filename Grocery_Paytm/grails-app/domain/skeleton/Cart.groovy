package skeleton

class Cart {
	
		int cartId
		String gname
		String gprice
		String tcount
		String qCount
		String tamount
		String usercartId
		String status
		String groceryId
		//String merchantId
		String availgName
		String availStock

		String modifiedBy
		
	 
    static constraints = {
		
		cartId(nullable:false)
		gname(maxsize:50, nullable:false)
		gprice(maxsize:50, nullable:false)
		tcount(maxsize:50, nullable:false)
		tamount(maxsize:50, nullable:false)
		usercartId(maxSize:50,nullable:false)
		status(maxSize:50,nullable:false)
		availStock(maxSize:50,nullable:true)
		availgName(maxSize:50,nullable:true)
		//merchantId(maxSize:50,nullable:true)
		groceryId(maxSize:50,nullable:true)
		}
	
	
		String toString() {
			return gname
		}
		
		
		static mapping = {
			
			id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:50, increment_size:1]
			
			
			}
		
    
}
