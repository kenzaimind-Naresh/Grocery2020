package skeleton

class Cart {
		String gname
		String gprice
		String tcount
		String tamount
		String usercartId

		String modifiedBy
		
	 
    static constraints = {
		
		gname(maxsize:50, nullable:false)
		gprice(maxsize:50, nullable:false)
		tcount(maxsize:50, nullable:false)
		tamount(maxsize:50, nullable:false)
		usercartId(maxSize:50,nullable:false)
		
		
		}
	
	
		String toString() {
			return gname
		}
		
		
		static mapping = {
			
			id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:50, increment_size:1]
			
			
			}
		
    
}
