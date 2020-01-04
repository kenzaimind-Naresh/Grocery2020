package skeleton

import java.util.Date;

class Category {

  //int categoryId
	String categoryName
	//Date createdDate
	//Date modifiedDate
	
	String getCategoryName(){
		this?.categoryName
	}
	
	static constraints = { ['categoryName']
		//categoryId(nullable:false)
		categoryName(unique: true)
		//createdDate(nullable:false)
		//modifiedDate(nullable:false)
		}
	
	
	
	static mapping = {
		id generator: "org.hibernate.id.enhanced.SequenceStyleGenerator", params: [initial_value:1000, increment_size:1]
		
		}
}
