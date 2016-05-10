<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
	
	</head>
	<body>
    <!-- Begin page content -->
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
            <li class="active"><g:link controller="main" action="index">Home </g:link></li>
            <li><g:link controller="managment" action="department" params="[departmentName:"Fruits"]">Friuts </g:link></li>
            <li><g:link controller="managment" action="department" params="[departmentName:"Vegetables"]">Vegetables</g:link></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><g:link controller="managment" action="department" params="[departmentName:"Cookies"]">Cookies</g:link></li>
                <li><g:link controller="managment" action="department" params="[departmentName:"Sweets"]">Sweets</g:link></li>
                <li><g:link controller="managment" action="department" params="[departmentName:"Bread"]">Bread</g:link></li>
          
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
        </div>
        </nav>
    <div class="container">

      <div class="page-header">
        <h1>Welcome</h1>
      </div>
      <p class="lead">Welcome to assortment management site. You can add edit and delete assortment</p> 
      </div>
  </body>
</html>