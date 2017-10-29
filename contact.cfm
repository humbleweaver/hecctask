 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HECC task</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>

  <script type="text/javascript">
      function validname(inputtxt)  
      {  
       var letters = /^[A-Za-z]+$/;  
       if(inputtxt.value.match(letters))  
         {  
          return true;  
         }  
       else  
         {  
         alert("Please enter a valid name");  
         return false;  
         }  
      }  
	  
	  
	  
  </script>
  
  <style>
  h5{font-weight:bold}
  </style>
<body>


<div class="container ">
<div class="col-lg-8" style="margin: 0 auto">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Oregon Workers' Demographic Survey</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.cfm">Home</a></li>
        <li  class="active">
          <a href="#">Contact Us</a>
          
        </li>
        
      </ul>
     
    </div>
  </div>
</nav>

<span class="text-danger pull-right" >*-required</span>
<div class="clearfix"></div>

<!---<cfform method="post" action="thankyou.cfm">--->
<cfform method="post" action="thankyou.cfm">

<div class="col-lg-12">
<h5>*Name</h5> <cfinput type="text" name="name" class="form-control" required="yes" message="Please enter a name" onchange="validname(this);" placeholder="Enter your name" maxlength="75" />
<h5>*Email</h5> <cfinput type="email" name="email" required="yes" message="Please enter an email address" placeholder="Enter a valid email" class="form-control"  />
<h5>*Message</h5>
 <cftextarea  name="message" class="form-control" required="yes" message="Please enter your message" />  
 </div>
 <div style="margin: 1em auto; text-align:center">
<button type="submit" class="btn btn-primary">Submit</button>&nbsp;<button type="reset" class="btn btn-default">Cancel</button>
</div>
 </div>
 <div style="clear:both"/>



<cfif isdefined ("form.name")>
<cfset form.name="#form.name#">
<cfelse>
<cfset name="">
</cfif>

<cfif isdefined ("form.email")>
<cfset form.email="#form.email#">
<cfelse>
<cfset email="">
</cfif>

<cfif isdefined ("form.message")>
<cfset form.cmessage="#form.message#">
<cfelse>
<cfset cmessage="">
</cfif>



</cfform>

<hr/>

</div>
</div>
<div style="clear:both"/>

<!---<button type="button" class="label label-info" data-toggle="collapse" data-target="#demo">View Output</button>
  <div id="demo" class="collapse">
    <cfoutput>#name#, #email#, #cmessage#</cfoutput> --->
	
  </div>



</body>

</html> 