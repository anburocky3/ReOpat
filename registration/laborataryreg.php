<!DOCTYPE html>
<html>
<head>
<title>Laboratary regiteration</title>
<meta charset="utf-8">
<link rel="stylesheet" href=" css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/ph_reg.css" />
<script type="text/javascript" src="validation.js" ></script>

<link rel="stylesheet" type="text/css" href="jquery-ui.css"/>
<script src="jquery.js"></script>
<script src="jquery-ui.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<style>
.important {
	color:red;
	font-weight:bold;
	}
</style>
</head>
<body>
<?php 
include "../inc/header.php";
if($_SESSION['role'] != 'lab')
{
	header("Location: ../general forms/failform.php");
}
?>
<div class="container colr" >
<div class="row">
<div class="col-sm-3"></div>
<div style="margin-left:25px;" class="col-sm-6">
<form action="Labreg.php" method="post" >
<h3 align="center">Laboratory Registration</h3>
<table>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Laboratory Name &nbsp;</td><td><input type="text" name="Lname" class="form-control" required/></td></tr><tr><td><br/></td></tr>
<tr> <td> <span class="important">*</span>&nbsp;&nbsp; User Name </span></td><td><input type="text" name="Lusername" class="form-control" required/></td></tr><tr><td><br/></td></tr>
<div class="fieldWrapper">
<tr><td> <span class="important">*</span>&nbsp;&nbsp; Password:</label></span></td><td><input type="password" name="pass1" id= "pass1"  class="form-control" required/></td></tr><tr><td><br /></td></tr>
</div>
<div class="fieldWrapper">
<tr><td><span class="important">*</span>&nbsp;&nbsp; Confirm Password:</label></span></td><td><input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;" class="form-control" required /></td></tr>
           <td> <span id="confirmMessage" class="confirmMessage"></span></td></tr><tr><td><br/></td></tr>
</div>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Door No.: </span></td><td><input type="text" name="ldn" class="form-control" required></td></tr><tr><td><br/></td></tr>		 
<tr><td><span class="important">*</span>&nbsp;&nbsp; Street:</span> </td><td><input type="text" name="lst" class="form-control" required></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; State: </span></td><td><select onchange="print_city2('hcity', this.selectedIndex);" id="hstate" name ="hstate" class="form-control" required=""></select></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; City/District:</span></td><td><select name ="hcity"  id="hcity" class="form-control"></select>
        <script language="javascript">print_state2("hstate");</script></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Pin/Zip Code:</span> </td><td><input type="text" name="lcode" class="form-control" onkeypress="return isNumber(event)" required></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; License ID </span></td><td><input type="text" name="LliID" class="form-control" onkeypress="return isNumber(event)" required/><br></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Phone no </span> </td><td><input type="text" name="Lphone" maxlength="10" class="form-control" onkeypress="return isNumber(event)" required/><br></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Email </span></td><td><input type="text" name="Lemail"  id="txtEmail" class="form-control" required/><br></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span>&nbsp;&nbsp; Facilities:</span></td>
<td><input type="checkbox" name="m[]" value="1.5 T MRI (1.5 Tesla) Scan">&nbsp;&nbsp;1.5 T MRI (1.5 Tesla) Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="CT (128 Slice) Cardiac Scan">&nbsp;&nbsp;CT (128 Slice) Cardiac Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="CT (64 Slice) Cardiac Scan">&nbsp;&nbsp;CT (64 Slice) Cardiac Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Spiral CT Scan">&nbsp;&nbsp;Spiral CT Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Ultra Sound 3D,4D Scan">&nbsp;&nbsp;Ultra Sound 3D,4D Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Dexa Scan (BMD)">&nbsp;&nbsp;Dexa Scan (BMD)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Colour Doppler Scan">&nbsp;&nbsp;Colour Doppler Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Bone Densitometry (BMD) Scan">&nbsp;&nbsp;Bone Densitometry (BMD) Scan</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Digital Mammogram">&nbsp;&nbsp;Digital Mammogram</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Digital Ortho Pantomogram (OPG)">&nbsp;&nbsp;Digital Ortho Pantomogram (OPG)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Cone Beam CT(CBCT)">&nbsp;&nbsp;Cone Beam CT(CBCT)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Echo Cardiogram">&nbsp;&nbsp;Echo Cardiogram </td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="EMG">&nbsp;&nbsp;EMG</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="EEG (Digital)">&nbsp;&nbsp;EEG (Digital)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Nerve Conduction Studies">&nbsp;&nbsp;Nerve Conduction Studies</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Tread Mill Test (TMT)">&nbsp;&nbsp;Tread Mill Test (TMT)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="Spirometry (PFT)">&nbsp;&nbsp;Spirometry (PFT)</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value="X-Rays with Digital Radiography">&nbsp;&nbsp;X-Rays with Digital Radiography</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value=" Computerized clinical Lab">&nbsp;&nbsp;Computerized clinical Lab</td></tr>
<tr><td></td><td><input type="checkbox" name="m[]" value=" Master Health Checkup">&nbsp;&nbsp;Master Health Checkup</td></tr>

</table>
<div class="g-recaptcha" data-sitekey="6LefzAwTAAAAAKbkBhN7ftDj3FD_CZyaVSCzS7m2"></div>
<br />


<center><button type="submit" class="btn btn-success" onclick="checkEmail();">Send Request</button>
<button style="margin-left:10px;" type="Reset" class="btn btn-danger">Reset</button></center><br /><br /><br />
</form>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</body>
</html>