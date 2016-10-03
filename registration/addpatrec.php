<!DOCTYPE html>
<html>
<head>
<title>Patient registeration</title>

<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="js/jquery-ui.css"/>
<script src="jquery.js"></script>
<script src="jquery-ui.js"></script>
<script type="text/javascript" src="validation.js"></script>
<style>
.important {
	color:red;
	font-weight:bold;
}
</style>
<script>
$(function () {
	$('#datepick').datepicker();
	$('#datepick1').datepicker();
});
</script>
<script src="js/bootstrap.js"></script>
<script type= "text/javascript" src = "state1.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
</head>
<body>
<?php 
include "../inc/header.php";
error_reporting(0);
if($_SESSION["role"] == "pat" || $_SESSION["dlogin"] == "1" ) {
}
else
{
	header ("Location: ../general forms/failform.php");
}
?>
<center>
<form action="patientreg.php" method="post" >
<h2>Patient Registration</h2><br /><br />

<div class="container-fluid">
<div class="row">
<div class=col-sm-2></div>
<div class=col-sm-8>
<table>
<tr>
<td><span class="important">*</span>&nbsp;User Name:&nbsp;</td><td><input type="text" name="uname" class="form-control" required></td>
</tr><tr><td><br /></td></tr>

<tr><td><span class="important">*</span>&nbsp;Password:</td>
<td><input type="password" name="pass1" id= "pass1"  class="form-control" required/></td>
</tr><tr><td><br /></td></tr>


<tr><td><span class="important">*</span>&nbsp;Confirm Password:</td><td><input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;" class="form-control" required /></td>
 <td> &nbsp;&nbsp;&nbsp;<span id="confirmMessage" class="confirmMessage"></span></td>
</tr>
          </tr><tr><td><br/></td></tr>

</table>



<!--Identification-->


<fieldset>
<legend>Identification</legend>
<table>
<tr>
<td><span class="important">*</span>&nbsp;First Name:&nbsp;</td><td><input type="text" name="Fname" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr>
<td>Last Name:&nbsp;</td><td><input type="text" name="Lname" class="form-control" ></td>
</tr><tr><td><br /></td></tr>

<tr><td>Aaadhar Id:&nbsp;</td><td><input type="text" maxlength="11" name="aadharid" onkeypress="return isNumber(event)"class="form-control"></td>
</tr><tr><td><br /><br /></td></tr>
</table>




</fieldset>
<!--EOF Identification-->
<!--Basic info-->

<fieldset>
<legend>Basic Information</legend>
<table>
<tr>
<td><span class="important">*</span>&nbsp; Date of Birth:&nbsp;</td><td><input type="text" id='datepick' name="dob" class="form-control" required/></td>

</tr><tr><td><br /></td></tr>
<tr>
<td><span class="important">*</span>&nbsp; Gender:&nbsp;</td>
<td>
<select name="Gender" class="form-control">
<option>Male</option> 
<option>Female</option>
</select>
</td>
</tr><tr><td><br /></td></tr>
<tr>
<td><span class="important">*</span>&nbsp; Marital Status:&nbsp;</td>
<td><select name="Mstatus" class="form-control">
<option >Married</option> 
<option >Single</option>
</select></td>
</tr><tr><td><br /><br /></td></tr>
</fieldset>
</table>

<!--EOF Basic Info-->
<!--Address Information-->

<fieldset>
<legend>Address Information</legend>
<table>
<tr>
<td><span class="important">*</span>&nbsp; Door no:&nbsp;</td><td><input name="Aline1" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr>
<td><span class="important">*</span>&nbsp; Street:&nbsp;</td><td><input name="Aline2" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr>
<td><span class="important">*</span>&nbsp; Area:&nbsp;</td><td><input name="area" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr><td><span class="important">*</span>&nbsp;State:&nbsp;</td><td><select onchange="print_city2('hcity', this.selectedIndex);" id="hstate" name ="hstate" class="form-control" required=""></select></td>
</tr><tr><td><br></td></tr> 

<tr><td><span class="important">*</span>&nbsp;City/District:&nbsp;  </td>
<td><select name ="hcity"  id="hcity" class="form-control" required=""></select>
        <script language="javascript">print_state2("hstate");</script></td> 
</tr><tr><td><br></td></tr>
<tr>
<td><span class="important">*</span>&nbsp; Zip/Postal Code:&nbsp;</td><td><input type="text" name="Postal" class="form-control" onkeypress="return isNumber(event)"><br></td>
</tr><tr><td><br /><br /></td></tr>
<tr>


</table>
</fieldset>

<!--EOF Address Information -->
<!--Contact Information-->
<fieldset>

<legend>Contact Information</legend>
<table>
<tr>
<td><span class="important">*</span>&nbsp;Phone:&nbsp;</td>
<td><input type="text" name="phone" class="form-control" onkeypress="return isNumber(event)"></td>
</tr><tr><td><br /></td></tr>

<td><span class="important">*</span>&nbsp; E-mail:&nbsp;</td>
<td><input type="text" name="email" id="txtEmail" class="form-control"></td>
</tr><tr><td><br /><br /></td></tr>
</table>

</fieldset>

<!--Other Info-->


<fieldset>
<legend>Other Information</legend>
<table>
<tr><td><span class="important">*</span>&nbsp; Blood Group:</td><td><select name="bldgrp" class="form-control" required="">
<option name="1" value="A -ve">A -ve</option>
<option name="2" value="A +ve">A +ve</option>
<option name="3" value="A1 +ve">A1 +ve</option>
<option name="4" value="A1 -ve">A1 -ve</option>
<option name="5" value="A1B -ve">A1B -ve</option>
<option name="6" value="A1B +ve">A1B +ve</option>
<option name="7" value="A2B -ve">A2B -ve</option>
<option name="8" value="A2B +ve">A2B +ve</option>
<option name="9" value="B -ve">B -ve</option>
<option name="10" value="B +ve">B +ve</option>
<option name="11" value="B1 +ve">B1 +ve</option>
<option name="12" value="AB -ve">AB -ve</option>
<option name="13" value="AB +ve">AB +ve</option>
<option name="14" value="O -ve">O -ve</option>
<option name="15" value="O +ve">O +ve</option></select></td></tr></tr><tr><td><br /></td></tr>

<tr>
<td><span class="important">*</span>&nbsp; Are you willing to donate blood:&nbsp;</td><td>
<input type="radio" value="yes" name="blood">&nbsp;&nbsp;Yes</td><td>&nbsp;&nbsp;</td><td><input type="radio" value="no" name="blood" >&nbsp;No</td>
</tr><tr><td><br /><br /></td></tr>
</table>





</fieldset>
<!--EOF Contact Information-->
<center>
<br />
<div class="g-recaptcha" data-sitekey="6LefzAwTAAAAAKbkBhN7ftDj3FD_CZyaVSCzS7m2"></div>
<br>
<button class="btn btn-success" type="submit" name="submit" onclick="checkEmail();"><i class="glyphicon glyphicon-send"></i>&nbsp;&nbsp;SUBMIT</button>
<button class="btn btn-info" type="reset">RESET</button>
</center><br /><br /><br />
</fieldset>

</div>
<div class="col-sm-2"></div>
</div>
</div>

</form></center>
</body>
</html>

