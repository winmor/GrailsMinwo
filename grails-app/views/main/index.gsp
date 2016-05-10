<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
	<div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><g:link controller="main" action="index">Home </g:link></li>
            <li><g:link controller="managment" action="department" params="[departmentName:"Fruits"]">Friuts </g:link></li>
            <li><g:link controller="managment" action="department" params="[departmentName:"Vegetables"]">Vegetables</g:link></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><g:link controller="managment" action="department" params="[departmentName:"Cookies"]">Cookies</g:link></li>
                <li><g:link controller="managment" action="department" params="[departmentName:"Sweets"]">Sweets</g:link></li>
                <li><g:link controller="managment" action="department" params="[departmentName:"Bread"]">Bread</g:link></li>
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
    <!-- Begin page content -->
    <div class="container">

      <div class="page-header">
        <h1>Welcome</h1>
      </div>
      <p class="lead">Welcome to assortment management site. You can add edit and delete assortment</p> 
      </div>
  </body>
</html>