<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
		<title>Department ${currDepartment.departmentName} </title>
	
	</head>
	<body>
	<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
           <g:link class="navbar-brand" controller="main" action="index">Shop Managment </g:link>
        </div>
		<div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><g:link controller="main" action="index">Home </g:link></li>
            <li  class=${currDepartment.departmentName.equals('Fruits') ? 'active' : ''}><g:link controller="managment" action="department" params="[departmentName:"Fruits"]">Friuts </g:link></li>
            <li class=${currDepartment.departmentName.equals('Vegetables') ? 'active' : ''}><g:link controller="managment" action="department" params="[departmentName:"Vegetables"]">Vegetables</g:link></li>
            <li  class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li  class=${currDepartment.departmentName.equals('Cookies') ? 'active' : ''}><g:link controller="managment" action="department" params="[departmentName:"Cookies"]">Cookies</g:link></li>
                <li  class=${currDepartment.departmentName.equals('Sweets') ? 'active' : ''}><g:link controller="managment" action="department" params="[departmentName:"Sweets"]">Sweets</g:link></li>
                <li  class=${currDepartment.departmentName.equals('Bread') ? 'active' : ''} ><g:link controller="managment" action="department" params="[departmentName:"Bread"]">Bread</g:link></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
        </div>
        </nav>

    <!-- Begin page content -->
    <div class="container">
    	<g:message code="${flash.message}" args="${flash.args}"
           default="${flash.default}"/>
           
      <div class="page-header">
        <h1>${currDepartment.departmentName}</h1>
      </div>
      <p class="lead"> <g:if test="${products.size()==0}">
      	<g:message message="No items to Display"/>
      </g:if>
      <g:if test="${products.size()>0}">
      	
      
      <div class="table-responsive">
      <table class="table table-striped">
              <thead>
                <tr>
                <tr>
                  <th>#</th>
                  <th>Product Name</th>
                  <th>Quantity</th>
                  <th>By weight</th>
                  <th>Price</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
      <g:each in="${products}" var="product" status="i">
            <tr>
            <td>${i+1+j}</td>
            <td>${product.productName}</td>
            <td><g:if test="${product.byWeight==true}">
      	${formatNumber(number: product.quantity,type: number, minFractionDigits: 2)}</g:if>
      	<g:elseif test="${product.byWeight==false}">${formatNumber(number: product.quantity,type: number)}</g:elseif></td>
            <td>${product.byWeight}</td>
            <td>  ${formatNumber(number: product.price,type: number, minFractionDigits: 2)}</td>
            <td><g:link controller="managment" action="editProduct" params="[productId:product.id]"><button type="button" class="btn btn-info">Edit</button></g:link></td>
            <td><g:link controller="managment" action="removeProduct" params="[productId:product.id]"><button type="button" class="btn btn-danger">Remove</button></g:link></td>
            </tr>
            <br/>
        </g:each></p>
         
        </tbody>
        </table>
    
      </div>
      
       <div class="pagination">
            <g:paginate total="${numberOfProducts}" params="${[departmentName:currDepartment.departmentName, j:j+10]}"/>
        </div>
        </g:if>

    <g:link controller="managment" action="createProduct" params='[departmentId:currDepartment.id]'>
    <input type="button" value="Add new" class="button" style="float: right;">
    </g:link>
    </div>

    


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>