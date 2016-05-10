package shopmanagment

class ManagmentController {

      def index() { }
	
	def department (String departmentName)
	{
		
		
		Department currentDepartment = Department.findByDepartmentName(departmentName)
		params.max = 5
		int oro
		if(params.offset!=null)
		{
		 oro= params.offset as int
		}
		else
		{
			oro=0
		}
		/*Department department = Department.get(currentDepartment.id)
		params.order= 'desc'*/
	
		[products:Product.findAllByDepartment(currentDepartment, params),
			 currDepartment:currentDepartment, numberOfProducts:Product.countByDepartment(currentDepartment), j:oro]
	}
	def createProduct(Long departmentId)
	{
		Product product = new Product()
		
		Department currentDepartment = Department.get(departmentId)
		[currDepartment:currentDepartment,
			product:product]
	}
	def save(Long departmentId, Product product)
	{
		Department currentDepartment = Department.get(product.department.id)
		if(product.hasErrors()||!product.save(failOnError:true))
		{
			
			render(view:"/managment/createProduct", model:[product:product, currDepartment:currentDepartment])
			return	
		
		}
	
		
			redirect(action: "department", params: [departmentName: currentDepartment.departmentName])

	}
	def editProduct(Long productId)
	{
		Product product = Product.get(productId)
		Department currentDepartment = Department.get(product.department.id)
		
		[product:product, currDepartment:currentDepartment]
	}
	
	def confirmEdit(Long departmentId, Product product)
	{
		
		Department currentDepartment = Department.get(product.department.id)
		if(!product.save(flush: true))
		{
			
			render(view:"/managment/editProduct", model:[product:product,
			 currDepartment:currentDepartment])
			return
		}
		redirect(action: "department", params: [departmentName: currentDepartment.departmentName])
	}
	def removeProduct(Long productId)
	{
		Product product = Product.get(productId)
		Department currentDepartment = Department.get(product.department.id)
		product.delete(flush: true)
		render(view:"/managment/department", model:[products:Product.findAllByDepartment(currentDepartment),
			currDepartment:currentDepartment])
		
	}
}
