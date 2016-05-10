<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <asset:stylesheet src="application.css"/>
	<asset:stylesheet src="sticky-footer.css"/>
	<asset:stylesheet src="ie10-viewport-bug-workaround.css"/>
	
	<g:javascript library="jquery" plugin="jquery"/>
    <g:layoutTitle/>
    
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
         <g:link class="navbar-brand" controller="main" action="index">Shop Managment</g:link>
        </div>
        <g:layoutHead/>
        
      </div>
    </nav>

<g:layoutBody/>

<footer class="footer">
      <div class="container">
        <p class="text-muted">Final paper from MiNWO. Topic Grails</p>
      </div>
    </footer>
<asset:javascript src="application.js"/>
</body>
</html>