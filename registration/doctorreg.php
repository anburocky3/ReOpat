 <!DOCTYPE html>
<html>
<head>
<title>Doctor registration</title>
<meta charset="utf-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../js/jquery-ui.css">
<script src="../js/bootstrap.js"></script>
<script type= "text/javascript" src = "state1.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
<script src="jquery.js"></script>
<script src="jquery-ui.js"></script>
<script type="text/javascript" src="validation.js" ></script>
<!--<script src='https://www.google.com/recaptcha/api.js'></script> -->
<style type="text/css">
body {
background-color: #FAFAFA;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}

/*#docr {
margin: 50px auto;
width: 300px;
}*/
form fieldset input[type="text"] {
background-color: white;
border: 1px solid black;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}

.important {
color: red; }

</style>
</head>
<body>
<?php include "../inc/header.php"; 
if($_SESSION['role'] != "doc")
{
	header("Location: ../general forms/failform.php");
}
?>
<form id="formname" name="formname" method="post" action="docreg.php" >
<center>
<div style="padding-bottom:5px; padding:30px;">
Doctor Registration</div>
</center>
<form class ="form-control">
<div class="form-group">
   <div class="container-fluid">
<div class="row" >
<div class="col-sm-2"></div>
 		<div class="col-sm-8" style="margin-bottom:30px;">

       <center>
	     <fieldset>
	     <table>
	       <tr>
		     <td><span class="important">*</span>  First Name: </td> <td><input type="text" name="fname" required/></td>
           </tr>
           <tr>
             <td><br /></td>
           </tr>
		     <td><span class="important">*</span> Last Name:</td> 
             <td><input type="text" name="lname" required/></td>
           </tr>
           <tr>
              <td><br /></td>
           </tr>			 
			<tr> 
             	<td><span class="important">*</span>Doctor ID:</td>
                <td><input type="text" name="did" maxlength="8" onkeypress="return isNumber(event)" required/></td>
            </tr>
            <tr>
            	<td><br /></td>
            </tr>
			 <tr>
             <td>Aadhar ID:</td>
             	<td><input type="text"   maxlength="12" name="daid" onkeypress="return isNumber(event)"></td>
             </tr>
             <tr>
             	<td><br /></td>
             </tr>
			 <tr>
             	<td><span class="important">*</span>Date of birth:</td>
                <td><div class="input-group input-append date" >
                <input type="text"  id="datePicker" name="dob" required/>
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
            </td>
             </tr>
             <tr>
             	<td><br /></td>
             </tr>
          <tr><td><span class="asterisk_input"><span class="important">*</span>E-mail ID:</span></td>  
          <td><input type="text" name="dmail"  required/></td>
          </tr>
          <tr>
          <td><br /></td>
          	</tr>
			 <tr><td><span class="asterisk_input"><span class="important">*</span>Mobile:</span></td>
               <td><input type="text" max="10" name="dmobile" onkeypress="return isNumber(event)" required/></td></tr><tr><td><br /></td></tr>
			 <tr><td><span class="asterisk_input"><span class="important">*</span>Gender:</span></td>  
			  <td><select name="gender" class="form-control" required>
			 <option name="g1" value="Male">Male</option>
			 <option name="g2" value="Female">Female</option>
			 <option name="g3" value="Others">Others</option>

			 </select> </td></tr><tr><td><br /></td></tr>
			 <tr><td><span class="asterisk_input"><span class="important">*</span>Qualification:</span></td>  <td><input type="text" name="dqualification" required/></td></tr><tr><td><br /></td></tr>
			 <tr>
			 
			 <div class="col-sm-4" >
             <tr><td><span class="asterisk_input"><span class="important">*</span>Specialization:</span></td></tr>
	<tr>		       
	<td> 
<ul>	
<li><input type="checkbox" name="s[]" value="Anesthesiologist"/>Anesthesiologist<br></li>
<li><input type="checkbox" name="s[]" value="Cardiologist"/>Cardiologist<br></li>
<li><input type="checkbox" name="s[]" value="Spiral CT Scan"/>Dermatologist<br> </li>
<li><input type="checkbox" name="s[]" value="Gastroenterologist"/>Gastroenterologist<br></li> 
<li><input type="checkbox" name="s[]" value="Hematologist/Oncologist"/>Hematologist/Oncologist<br></li>
<li><input type="checkbox" name="s[]" value="Internal Medicine Physician"/>Internal Medicine Physician<br></li>
<li><input type="checkbox" name="s[]" value="Nephrologist"/>Nephrologist<br></li>
<li><input type="checkbox" name="s[]" value="Neurologist"/>Neurologist<br></li>
<li><input type="checkbox" name="s[]" value="Neurosurgeon"/>Neurosurgeon<br></li>
<li><input type="checkbox" name="s[]" value="Obstetrician"/>Obstetrician<br> </li>
<li><input type="checkbox" name="s[]" value="Nurse-Midwifery"/>Nurse-Midwifery<br></li> 
<li><input type="checkbox" name="s[]" value="Occupational Medicine Physician"/>occupational Medicine Physician<br></li>
</ul>
</td>
</div>

			

			 <div class="col-sm-4" >

<td>
<ul>
<li><input type="checkbox" name="s[]" value="Ophthalmologist"/>Ophthalmologist<br></li>
<li><input type="checkbox" name="s[]" value="Oral and Maxillofacial Surgeon"/>Oral and Maxillofacial Surgeon<br></li>
<li><input type="checkbox" name="s[]" value="Orthopaedic Surgeon"/>Orthopaedic Surgeon<br></li>
<li><input type="checkbox" name="s[]" value="Otolaryngologist (Head and Neck Surgeon"/>Otolaryngologist (Head and Neck Surgeon)<br></li>
<li><input type="checkbox" name="s[]" value="Pathologist"/>Pathologist<br></li>
<li><input type="checkbox" name="s[]" value="Pediatrician"/>Pediatrician<br></li>
<li><input type="checkbox" name="s[]" value="MPlastic Surgeon"/>Plastic Surgeon<br></li>
<li><input type="checkbox" name="s[]" value="Pulmonary Medicine Physician"/>Pulmonary Medicine Physician<br> </li>
<li><input type="checkbox" name="s[]" value="Radiation Onconlogist"/>Radiation Onconlogist<br></li>
<li><input type="checkbox" name="s[]" value="Diagnostic Radiologist"/>Diagnostic Radiologist<br></li>
<li><input type="checkbox" name="s[]" value="Rheumatologist"/>Rheumatologist<br></li>
<li><input type="checkbox" name="s[]" value="Urologist"/>Urologist<br></li>
<li><input type="checkbox" name="s[]" value="General"/>General<br></li>
</ul>
</td>
</div>


</td></tr>
</table>
</tr>

</table>
<fieldset>
<legend></legend>
<table>
<tr><td style="padding-right:20px;"><span class="asterisk_input"><span class="important">*</span>&nbsp;Security Question 1: &nbsp; <br></span></td>
<td>
 <select class="form-control"  name="securityquestion1" required="">
 <option  value="What is your pet name?">What is your pet name?</option>
 <option  value="Who was your childhood hero?">Who was your childhood hero?</option>
 <option  value="What is your favourite color?">What is your favourite color?</option></td>
</tr><tr><td><br /></td></tr><tr><td><span class="asterisk_input">Answer: </span></td><td><input class="form-control" type="text" name="securityanswer1" required></td></tr><tr><td><br /></td></tr>
<tr><td><span class="asterisk_input"><span class="important">*</span>
Security Question 2:</span></td>
<td>
<select class="form-control" name="securityquestion2" required=""> 
 <option  value="What is your hobby?">What is your hobby?</option>
 <option  value="what is your all time sports team?">what is your all time sports team?</option>
 <option  value="which is your favourite city?">which is your favourite city?</option></td>
</tr><tr><td><br /></td></tr><tr><td><span class="asterisk_input">Answer: </span></td><td><input class="form-control" type="text" name="securityanswer2" required> </td></tr><tr><td><br /></td></tr>

</tr><tr><td><br /></td></tr>
		</table>
</fieldset>			
<!--Clinic details-->
<br>
<fieldset>
<legend>Clinic Details<span style="color:#666;font-size:20px;">&nbsp;(optional)</span></legend>
<table>
<tr><td>Clinic name:</td>
<td><input type="text" name="cnm"/></td></tr><tr><td><br /></td></tr>
<tr><td>Door No.:</td><td><input type="text" name="cdn"/></td></tr><tr><td><br /></td></tr>
<tr><td>Street:</td><td><input type="text" name="cst"/></td></tr><tr><td><br /></td></tr>
<tr><td>Area:</td><td><input type="text" name="car"/></td></tr><tr><td><br /></td></tr>
<tr><td>State:</td><td><select class="form-control" name ="cstate" id="cstate" onchange="print_city1('ccity', this.selectedIndex);"  ></select></td>
</tr><tr><td><br></td></tr> 
   
                        
<tr><td>City/District:  </td>
<td><select name="ccity"  id="ccity" class="form-control">
<option value=""></option><script language="javascript">print_state1('cstate');</script>
</select>
       </td> 
</tr><tr><td><br></td></tr>
  <tr><td>Pin/Zip Code:</td><td><input type="text" name="ccode" onkeypress="return isNumber(event)"></td></tr><tr><td><br></td></tr>

<tr><td>Phone:</td><td><input type="text" maxlength="10" name="cph"onkeypress="return isNumber(event)"><tr><td><tr><td><br /></td></tr>
<tr><td>

Available Time:
</td>
</tr>
<tr>
<td></td>
<td>
From &nbsp;<input type="number" min="1" max="12" name="Acfrom" onkeypress="return isNumber(event)">
<select name="fr">
<option name="cpm" value="PM">PM</option>
<option name="cam" value="AM">AM</option> 
 </select>&nbsp;&nbsp;
to &nbsp;&nbsp;<input type="number" min="1" max="12" name="Acto" onkeypress="return isNumber(event)">
<select name="to">
<option name="cam1" value="AM">AM</option> 
<option name="cpm1" value="PM">PM</option>
 </select></td>
<tr><td> 
</td>
</tr></td> </tr>
</table>
</tr></td>
</fieldset>
<!--Hospital details-->
<br>
<fieldset>
<legend>Hospital Details </legend>
<table>
<tr><td>Hospital name:</td>
<td><input type="text" name="hnm"></td></tr><tr><td><br /></td></tr>
<tr><td>Door No.:</td>
<td><input type="text" name="hdn"></td></tr>
<tr><td><br /></td></tr>
<tr><td>Street:</td>
<td><input type="text" name="hst"></td>
</tr>
<tr><td><br /></td></tr>
<tr><td>Area:</td>
<td><input type="text" name="har"></td>
</tr>
<tr><td><br /></td></tr>
<tr><td>State:</td><td><select class="form-control" onchange="print_city2('hcity', this.selectedIndex);" id="hstate" name ="hstate"></select></td>
</tr><tr><td><br></td></tr> 
   
                        
<tr><td>City/District: </td>
<td><select name="hcity"  id="hcity" class="form-control">
<option value=""></option><script language="javascript">print_state2('hstate');</script></select></td> 
</tr><tr><td><br></td></tr>
  
<tr><td>Pin/Zip Code:</td><td><input type="text" name="hcode" onkeypress="return isNumber(event)"></td></tr><tr><td><br></td></tr>

<tr><td>Phone:</td><td><input type="text" max="10" name="hph" onkeypress="return isNumber(event)"></td></tr><tr><td><br /></td></tr>
<tr>
<td>Available Time:</td>
</tr>
<tr>
<td></td>
<td> 
 From &nbsp;<input type="number" min="1" max="12" name="Ahfrom" onkeypress="return isNumber(event)">
<select name="hfr">
<option name="hpm" value="PM">PM</option>
<option name="ham" value="AM">AM</option> 
 </select>
&nbsp;&nbsp;
to &nbsp;&nbsp;<input type="number" min="1" max="12" name="Ahto" onkeypress="return isNumber(event)">
<select name="hto">
<option name="ham1" value="AM">AM</option> 
<option name="hpm1" value="PM">PM</option>
 </select>
 
 
 </td>
</tr></td> </tr>
</table>
<br />
<p><input type="checkbox" name="license"  required/> I, hereby accept the <a href="terms.php" target="_blank">terms and conditions</a></p>
</fieldset>
<div class="g-recaptcha" data-sitekey="6LefzAwTAAAAAKbkBhN7ftDj3FD_CZyaVSCzS7m2"></div>
<br>
<center><button type="submit" name="submit" class="btn btn-success"  onclick="checkEmail();"><i class="glyphicon glyphicon-send"></i>&nbsp;Send Request</button>
<button type="reset" class="btn btn-danger">Reset</button>
<button type="button" class="btn btn-danger" onclick="location.href='../general forms/cancelform.php';"><i class="glyphicon glyphicon-remove"></i>&nbsp;Cancel</button></center>
</div>
</div>
</div>
</div>
</center>
<div class="col-sm-2"></div>	 
</form>	
<script>
$(document).ready(function() {
    $('#datePicker')
        .datepicker({
            format: 'mm/dd/yyyy'
        })
        .on('changeDate', function(e) {
            // Revalidate the date field
            $('#eventForm').formValidation('revalidateField', 'date');
        });

    $('#eventForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                validators: {
                    notEmpty: {
                        message: 'The name is required'
                    }
                }
            },
            date: {
                validators: {
                    notEmpty: {
                        message: 'The date is required'
                    },
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The date is not a valid'
                    }
                }
            }
        }
    });
});
</script>
</body>
</html>