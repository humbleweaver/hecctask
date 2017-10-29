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
	  
	  function validage(inputtxt)  
      {  
       var letters = /^[0-9]+$/;  
       if(inputtxt.value.match(letters))  
         {  
          return true;  
         }  
       else  
         {  
         alert("Please enter a valid age");  
         return false;  
         }  
      }

		function validzip(inputtxt)
		{
		var letters = /^\d{5}(-\d{4})?$/;  
       if(inputtxt.value.match(letters))  
         {  
          return true;  
         }  
       else  
         {  
         alert("Please enter a valid zipcode");  
         return false;  
         }  
		
		}
	  
  </script>
  
  <style>
  h5{font-weight:bold}
  </style>
<body>
<!--<CFAPPLICATION NAME="HECC task"
SESSIONMANAGEMENT="Yes">-->

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
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a href="contact.cfm">Contact Us</a>
          
        </li>
        
      </ul>
     
    </div>
  </div>
</nav>

<span class="text-danger pull-right" >*-required</span>
<div class="clearfix"></div>

<!---<cfform method="post" action="thankyou.cfm">--->
<cfform method="post" action="validate.cfm">

<div class="col-lg-12"><h5>*Name</h5> <cfinput type="text" name="cname" onchange="validname(this);" placeholder="Enter your name" class="form-control" required="yes" Message="Please enter your name" maxlength="75" /></div>

<div class="col-lg-4"><h5>Age</h5> <cfinput type="text" name="cage" onchange="validage(this);" placeholder="Enter age" class="form-control" maxlength="2"  /></div>


<br/> 

<div class="col-lg-2"><h5>*Gender</h5>
	<cfinput type="radio" name="gender" value="Male" required="yes" Message="Please select your gender"> Male<br/>
	<cfinput type="radio" name="gender" value="Female"> Female<br/>
	<cfinput type="radio" name="gender" value="LGBT"> Other
</div><div class="col-lg-6">
<h5>*Ethnicity</h5>
  <cfselect class="form-control dropdown" id="ethnicity" name="ethnicity" required="yes" Message="Please select your ethnicity">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
   
      <option value="White/Caucasian">White/Caucasian</option>
      <option value="Asian">Asian</option>
      <option value="Black/African-American">Black/African-American</option>
      <option value="Hispanic">Hispanic</option>
      <option value="Latino">Latino</option>
      <option value="Native American">Native American</option>
      <option value="Pacific Islander">Pacific Islander</option>
      <option value="Others">Any other ethnic group</option>
    
  </cfselect>
  
</div> 
<div class="col-lg-12">
  <h5>Education</h5>
  <cfselect name="education" class="form-control dropdown" >
    <option value="0" selected="selected" disabled="disabled">-- select one --</option>
   
      <option value="1">Less than high school degree </option>
      <option value="2">High school degree or equivalent (e.g., GED) </option>
      <option value="3">Some college but no degree </option>
      <option value="4">Associate degree </option>
      <option value="5">Bachelor degree </option>
      <option value="6">Graduate degree </option>
   </cfselect>



  <h5>Work Type</h5>
  <cfselect class="form-control dropdown" id="worktype" name="worktype"> 
  <option value="" selected="selected" disabled="disabled">-- select one --</option>
<optgroup label="Airline">


    <option value="Aircraft Dispatcher">Aircraft Dispatcher</option>
    <option value="Aircraft Mechanic">Aircraft Mechanic</option>
    <option value="Airline Pilot">Airline Pilot</option>
    <option value="Flight Attendant">Flight Attendant</option>
	
	</optgroup>

<optgroup label="Arts">

    <option value="Actor">Actor</option>
    <option value="Architecture">Architecture</option>
    <option value="Art Appraiser">Art Appraiser</option>
    <option value="Art Auctioneer">Art Auctioneer</option>
    <option value="Artist">Artist</option>
    <option value="Museum Jobs">Museum Jobs</option>
    <option value="Music Conductor">Music Conductor</option>
	</optgroup>
	
<optgroup label="Business">

    <option value="Accountant">Accountant</option>
    <option value="Administrative Assistant/Secretary">Administrative Assistant/Secretary</option>
    <option value="Advertising">Advertising</option>
    <option value="Consultant">Consultant</option>
    <option value="Financial Advisor">Financial Advisor</option>
    <option value="Fundraiser">Fundraiser</option>
    <option value="Government Jobs">Government Jobs</option>

    <option value="Human Resources">Human Resources</option>
    <option value="Insurance Agent">Insurance Agent</option>
    <option value="Investment Banker">Investment Banker</option>
    <option value="Lawyer">Lawyer</option>
    <option value="Management">Management</option>
    <option value="Market Research Analyst">Market Research Analyst</option>
    <option value="Nonprofit Job">Nonprofit Job</option>
</optgroup>


<optgroup label="Law Enforcement">

    <option value="Criminal Justice">Criminal Justice</option>
    <option value="Federal Law Enforcement">Federal Law Enforcement</option>
    <option value="Police Officer">Police Officer</option>
</optgroup>
<optgroup label="Media">

    <option value="Book Publishing">Book Publishing</option>
    <option value="Freelance Editor">Freelance Editor</option>
    <option value="Freelance Writer">Freelance Writer</option>
    <option value="Public Relations">Public Relations</option>
    <option value="Web Developer">Web Developer</option>
    <option value="Writer/Editor">Writer/Editor</option>
</optgroup>
<optgroup label="Medical">

    <option value="Doctor">Doctor</option>
    <option value="Nurse">Nurse</option>
    <option value="Paramedic">Paramedic</option>
    <option value="Psychologist">Psychologist</option>

    <option value="Social Worker">Social Worker</option>
    <option value="Veterinarian">Veterinarian</option>
</optgroup>

<optgroup label="Technology">

   
    <option value="Computer Programmer">Computer Programmer</option>
    <option value="Database Administrator">Database Administrator</option>
    <option value="Programmer">Programmer</option>
    <option value="Software Developer">Software Developer</option>
    <option value="Web Developer">Web Developer</option>

</optgroup>
  </cfselect>

<h5> Preferred location of employment(Zip code)</h5>
 <cfinput name="location" onchange="validzip(this);" id="worklocation" class="form-control"/>  
 
 <div style="margin: 1em auto; text-align:center">
<button type="submit" class="btn btn-primary">Send</button>&nbsp;<button type="reset" class="btn btn-default">Cancel</button>
</div>
 </div>
 <div style="clear:both"/>




<cfif isdefined ("form.cname")>
<cfset cname="#form.cname#">
<cfelse>
<cfset cname="">
</cfif>

<cfif isdefined ("form.cage")>
<cfset cage="form.cage">
<cfelse>
<cfset cage="">
</cfif>


<cfif isdefined ("form.gender")>
<cfset gender="#form.gender#">
<cfelse>
<cfset gender="">
</cfif>

<cfif isdefined ("form.ethnicity")>
<cfset form.selectedethnicity="#form.ethnicity#">
<cfelse>
<cfset selectedethnicity="">
</cfif> 

<cfif isdefined ("form.education")>
<cfset selectededucation="#form.education#">
<cfelse>
<cfset selectededucation="">
</cfif> 

<cfif isdefined ("form.worktype")>
<cfset form.selectedwork="#form.worktype#">
<cfelse>
<cfset selectedwork="">
</cfif> 

<cfif isdefined ("form.location")>
<cfset location="#form.location#">
<cfelse>
<cfset location="">
</cfif> 



</cfform>

<hr/>

</div>
</div>
<div style="clear:both"/>

<!---<button type="button" class="label label-info" data-toggle="collapse" data-target="#demo">View Output</button>
  <div id="demo" class="collapse">
    <cfoutput>#cname#, #cage#, #gender#, #selectedethnicity#, #selectededucation#, #selectedwork#</cfoutput>
  </div>



<cfdump var="#cname#, #fcage#, #selectedethnicity#, #selectededucation#, #selectedwork#" output="C:\ColdFusion2016\cfusion\wwwroot\hecc\output.txt"> --->



</body>

</html> 