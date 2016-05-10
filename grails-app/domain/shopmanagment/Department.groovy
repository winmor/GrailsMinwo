package shopmanagment

class Department {

	static mapping = {
		table 'department'
		version false
		columns{
			id column: 'department_id'
			departmentName column: 'name'
			product column: 'product_id'
		}
	}
	String departmentName
	static hasMany = [product:Product]
	
    static constraints = {
		departmentName blank: false, nullable: false
    }
	
	

}
