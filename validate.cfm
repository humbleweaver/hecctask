 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HECC task:Validate</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>

 

  </head>

<body>

<div class="container">
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
        <li ><a href="index.cfm">Home</a></li>
        <li class="dropdown">
          <a href="contact.cfm">Contact Us</a>
          
        </li>
        
      </ul>
     
    </div>
  </div>
</nav>

<h2>Please confirm if the following are correct</h2>

<cfform>

<cfoutput>
<cfif isdefined ("form.cage")>
<cfset age="form.cage">
<cfelse>
<cfset age="">
</cfif>

<cfif isdefined ("form.education")>
<cfset selectededucation="form.education">
<cfelse>
<cfset selectededucation="">
</cfif> 

<cfif isdefined ("form.worktype")>
<cfset form.selectedwork="form.worktype">
<cfelse>
<cfset selectedwork="">
</cfif> 

<cfif isdefined ("form.location")>
<cfset location="form.location">
<cfelse>
<cfset location="">
</cfif> 


<p>Name:&nbsp;#form.cname#</p>
<p>Age: &nbsp;#form.cage#</p>
<p>Gender: &nbsp;#form.gender#</p>
<p>Ethnicity: &nbsp;#form.ethnicity#</p>
<p>Education: &nbsp;#selectededucation#</p>
<p>Work Type: &nbsp;#selectedwork#</p>
<p>Preferred location:&nbsp;#location# </p>

</cfoutput>


<div style="margin: 1em auto; text-align:center">
<button type="submit" class="btn btn-primary">Submit</button>&nbsp; <a href="index.cfm" class="btn btn-default">Go Back</a>

</div>


<hr/>

</cfform>
</div>
</div>
</body>

</html> 

