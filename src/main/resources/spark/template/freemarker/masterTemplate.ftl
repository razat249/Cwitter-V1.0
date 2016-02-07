<#macro masterTemplate title="Welcome">

    <!DOCTYPE html
            PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
        <title>${title} | Cwitter</title>
        <link rel='shortcut icon' type='image/x-icon' href='favicon.ico'/>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="/css/style.css">
    </head>

    <body>
		<div class="page">

			 <!-- Static navbar -->
		    <nav class="navbar navbar-default navbar-static-top">
		      <div class="container">
		        <div class="navbar-header">
		          
		          <a class="navbar-brand" style="color:white" href="#">Cwitter</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		         	<ul class="nav navbar-nav navbar-right">
		         		<#if user??>
		         			<li ><a href="/public">Home</a></li>
		            		<li><a href="/">${user.username}</a></li>		            		
		            		<li><a href="/logout">sign out</a></li>

		            	<#else>
			    			<li><a href="/public">Home</a></li>
			    			<li><a href="/register">sign up</a></li>
			    			<li><a href="/login">sign in</a></li> 
		  				</#if>

		          	</ul>
		        </div><!--/.nav-collapse -->
		      </div>
		    </nav>

		  	<div class="body container">
		  		<#nested />
		  	</div><hr>
		  	<div class="footer container">
			    Cwitter &copy; Rajat Patwa
		  	</div>
		</div>
    </body>
    </html>
</#macro>