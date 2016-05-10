<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
	
		<script>
	
		$(document).ready(function() {
		    if($("#byWeight").is(':checked'))
			{
		    	$("#quantity").attr("pattern", "[0-9]+|([0-9]+.[0-9]{1,2})")
			}
		    else
			{
		    	$("#quantity").attr("pattern", "[0-9]+")
			}   
    
		    $("#byWeight").change(function() {
		    	
		    	if($("#byWeight").is(':checked'))
				{
			    	$("#quantity").attr("pattern", "[0-9]+|([0-9]+.[0-9]{1,2})")
			    	
				}
			    else
				{
			    	$("#quantity").attr("pattern", "[0-9]+")
				}   
		  
		    });
		});
	</script>
	
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
              <!--  <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li> --> 
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
	</head>
	<body>

     
        
      <p class="lead">
      
      
      

    <!-- Begin page content -->
    <div class="container">

      <div class="page-header">
        <h1>${currDepartment.departmentName}</h1>
      </div>

    <g:form action="save"  class="form-horizontal" role="form">
    
			<div class="form-group">
	      		<label class="col-sm-2 control-label" for="product.productName">Product Name: </label>
	      		<div class="col-sm-10">
	    		<g:textField name="product.productName"  class="form-control" id="productName" value="${product.productName}"/>
	    		 <g:hasErrors bean="${product}" field="productName">
	    		 	<g:eachError bean="${product}" field="productName">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
	    		</div>
	    		</div>
	    		
	    	
	    	<div class="form-group">
	    		<label class="col-sm-2 control-label" for="product.byWeight">By weight: </label>
	      		<div class="col-sm-1">
				<g:checkBox name="product.byWeight" id="byWeight" value="${product.byWeight}" onchange="changepattern(this, 'quantity');"/>
				</div>
	      		<label class="col-sm-1 control-label" for="product.quantity">Quantity: </label>
	      		<div class="col-sm-8">
				<g:textField name="product.quantity" pattern="[0-9]+" class="form-control"  id="quantity" value="${product.quantity=0}" />
				
	    		<g:hasErrors bean="${product}" field="quantity">
	    		 	<g:eachError bean="${product}" field="quantity">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
	    		
				</div>
			</div>
			<div class="form-group">
	      		<label class="col-sm-2 control-label" for="product.price">Price: </label>
	      		<div class="col-sm-10">
				<g:textField name="product.price" value="${formatNumber(number: product.price, minFractionDigits: 2) }" class="form-control"  id="price"  />
				<g:hasErrors bean="${product}" field="price">
	    		 	<g:eachError bean="${product}" field="price">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
				</div>
			</div>
			<g:hiddenField name="product.department" id="department" value="${currDepartment.id}" />
    	<g:submitButton name="submit" value="save" style="float: right;"/>
	</g:form>

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