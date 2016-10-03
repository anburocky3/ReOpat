<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Doctor - Edit Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script type= "text/javascript" src = "state1.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
<script type="text/javascript" src="validation.js" ></script>
</head>
<body style="background-color: #FAFAFA;">
<?php include "../inc/header.php" ;
include "../inc/db.php";

$_SESSION['id'] = "124";
$sql = "SELECT * FROM patient_details WHERE pid = ".$_SESSION['id'];
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
?>
<div style="background-color:white;" class="container">
<div class="row">
<div class="col-sm-12">
<br />
<br />
<br />
<div  style="border: 1px solid #C1C1C1; width:500px; border-radius:8px; padding-top:10px; padding-bottom:20px; padding-left:20px; padding-right:20px;">
<fieldset>
<legend align="center"><span style="color:red;" class="glyphicon glyphicon-exclamation-sign"></span> Security Changes</legend>
<center><a href=".php?pid=123">Change Password</a><br />

</fieldset>
</div>
<br />
<div>
<form action="" method="post">
<?php
echo '

<div class="container-fluid">
<div class="row">
<div class=col-sm-3></div>
<div class=col-sm-6>
<table>
<tr>
<td><span class="asterisk_input">User Name:&nbsp;</span></td><td><input type="text" value = "'.$row['uname'].'" name="uname" class="form-control"></td>
</tr><tr><td><br /></td></tr>
</div>
</table>



<!--Identification-->


<fieldset>
<legend>Identification</legend>
<table>
<tr><td>Aadhar Id:&nbsp;</td><td><input type="text" maxlength="12" value = "'.$row['aadhar_id'].'" name="aadharid" onkeypress="return isNumber(event)"class="form-control"></td>
</tr><tr><td><br /><br /></td></tr>
</table>




</fieldset>
<!--EOF Identification-->
<!--Basic info-->

<fieldset>
<legend>Basic Information</legend>
<table>
<td>Marital Status:&nbsp;</td>
<td><select name="Mstatus" value = "'.$row['m_status'].'" class="form-control">
<option value="Married" >Married</option> 
<option value="Single">Single</option>
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
<td>Door no:&nbsp;</td><td><input name="Aline1" value = "'.$row['p_doorno'].'" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr>
<td>Street:&nbsp;</td><td><input name="Aline2" value = "'.$row['p_street'].'" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr>
<td>Area:&nbsp;</td><td><input name="area" value = "'.$row['p_area'].'" rows="5" cols="50" class="form-control" required></td>
</tr><tr><td><br /></td></tr>
<tr><td><span class="asterisk_input">State:&nbsp;</span></td>
<td><select value = "'.$row['p_state'].'" onchange="print_city2(\'hcity\', this.selectedIndex);" id="hstate" name ="hstate" class="form-control" required=""></select></td>
</tr><tr><td><br></td></tr> 

<tr><td>City/District:&nbsp;  </td>
<td><select name ="hcity" value = "'.$row['p_city'].'" id="hcity" class="form-control" required=""></select>
        <script language="javascript">print_state2("hstate");</script></td> 
</tr><tr><td><br></td></tr>
<tr>
<td>Zip/Postal Code:&nbsp;</td><td><input type="text" value = "'.$row['p_zipcode'].'" name="Postal" class="form-control" onkeypress="return isNumber(event)"><br></td>
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
<td><span class="asterisk_input">Phone:&nbsp;</span></td>
<td><input type="text" name="phone" class="form-control" value = "'.$row['ph_no'].'" onkeypress="return isNumber(event)"></td>
</tr><tr><td><br /></td></tr>

<td><span class="asterisk_input">E-mail:&nbsp;</span></td>
<td><input type="text" name="email" id="txtEmail" value = "'.$row['email_id'].'" class="form-control"></td>
</tr><tr><td><br /><br /></td></tr>
</table>

</fieldset>

<!--Other Info-->


<fieldset>
<legend>Other Information</legend>
<table>
<tr><td><span class="asterisk_input">Blood Group:</span></td><td><select name="bldgrp" value = "'.$row['blood'].'" class="form-control" required="">
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
<td><span class="asterisk_input">Are you willing to donate blood:&nbsp;</span></td><td><input type="radio" value="yes" name="blood">&nbsp;&nbsp;Yes</td><td>&nbsp;&nbsp;</td><td><input type="radio" value="no" name="blood" >&nbsp;No</td>
</tr><tr><td><br /><br /></td></tr>
</table>





</fieldset>
<!--EOF Contact Information-->
<center>
<br />
<div class="g-recaptcha" data-sitekey="6LefzAwTAAAAAKbkBhN7ftDj3FD_CZyaVSCzS7m2"></div>
<br>
<button class="btn btn-success" type="submit" onclick="checkEmail();">SUBMIT</button>
<button class="btn btn-info" type="reset">RESET</button>
</center><br /><br /><br />
</fieldset>
'?>
</div>
<div class="col-sm-3"></div>
</div>
</div>

</form></center>
</body>
</html>

