package shopmanagment

class Product {

	String productName
	Long id
	boolean byWeight
	double quantity
	double price
	static hasOne= [department: Department]
	
	static mapping = {
		table 'product'
		version false
		
			id column: 'product_id', generator: 'native', params:[sequence:'product_id_seq']
			productName column: 'name'
			department column: 'department_id',  upcatable: false
			quantity column: 'quantity'
			price column: 'price'
			byWeight column: 'by_weight'
		
	}
	static constraints = {
		productName blank: false, nullable: false
		quantity blank: false, nullable: false,  validator: {
			value, object -> if(object.byWeight==false){
				if(value%1!=0)
				{
					return false;
				}
			}
		}
		price blank: false, nullable: false,  scale: 2
		byWeight blank: false, nullable: false
	}
	public long getNumberOfProduct() {
		Product.countByDepartment(this)
	}
   
}
