
<!DOCTYPE html>
<html>
<head>
<title>Pharmacist Registration</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/ph_reg.css">
<script type="text/javascript" src = "state1.js"></script>
<style>
.important{
	color:red;
	font-weight:bold;
	content:'*'}
</style>
<script>
function fun()
{location.href="../login/pharlog.php";
}
</script>
</head>
<body>
<?php
 include "../inc/header.php";
if($_SESSION['role'] != 'phr')
{
	header("Location: ../general forms/failform.php");
}?>
<div class="container" >
<div class="row">
<div class="col-sm-12  colr">
<center>
<form name="form1" method="post" action="PharmReg.php" onsubmit="return validemail();">
<h1>Pharmacist Registration</h1><br />
<table>
<tr><td><span class="important">*</span> &nbsp;Pharmacy Name:</td><td><input type="text" class="form-control" name="phname"  required="" /></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span> &nbsp;License Id: </td>
<td> <input type="text" maxlength="10" onkeypress="return isNumber(event)" class="form-control" name="plid" maxlength="" required/></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span> &nbsp;User name: </td><td><input type="text" class="form-control" name="puname"  required=""/></td></tr><tr><td><br /></td></tr>
<div class="fieldWrapper">
<tr><td><span class="important">*</span> &nbsp;Password:</td>
<td><input type="password" name="pass1" id= "pass1"  class="form-control" required/></td></tr><tr><td><br /></td></tr>
</div>
<div class="fieldWrapper">
<tr><td><span class="important">*</span> &nbsp;Confirm Password:</label></td><td><input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;" class="form-control" required /></td></tr>
           <td> <span id="confirmMessage" class="confirmMessage"></span></td></tr><tr><td><br/></td></tr>
</div>
<tr><td><span class="important">*</span> &nbsp; Door No: </td><td><input type="text" class="form-control" name="pdno" required/></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span> &nbsp; Street: </td><td><input type="text" class="form-control" name="pstr" required/></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span> &nbsp; Area: </td><td><input type="text" class="form-control" name="parea" required /></td></tr><tr><td><br/></td></tr>

<tr><td><span class="important">*</span> &nbsp;
State:</td><td><select class="form-control" onchange="print_city1('ccity', this.selectedIndex);" id="cstate" name ="cstate" required=""/></select></td>
</tr><tr><td><br></td></tr> 
<tr><td><span class="important">*</span> &nbsp;

City/District:</td>
<td><select name ="ccity"  id="ccity" class="form-control"></select>
        <script language="javascript">print_state1("cstate");</script></td> 
</tr><tr><td><br></td></tr>
<tr><td><span class="important">*</span> &nbsp; Pin/Zip Code: </td><td><input type="text" class="form-control" name="pcode" required/></td></tr><tr><td><br/></td></tr>

<tr><td><span class="important">*</span> &nbsp;Phone Number: </td><td><input type="text" onkeypress="return isNumber(event)" class="form-control" name="pph" maxlength="10" required/></td></tr><tr><td><br/></td></tr>
<tr><td><span class="important">*</span> &nbsp;E-mail id: </td><td><input type="text" id="txtEmail"  class="form-control" name="pem" required/></td></tr><tr><td><br/></td></tr>
</table>
<br />
<center><button type="submit" class="btn btn-success" onclick="checkEmail();" ><i class="glyphicon glyphicon-send"></i>&nbsp;&nbsp;Submit</button>
<button style="margin-left:10px;" type="Reset" class="btn btn-danger">Reset</button>
<button class="btn btn-info" onclick="fun()">Back</button></center>
</form>
</center>
</div>
</div>
<br>
</div>
<script type="text/javascript" src="validation.js" ></script>

</body>
</html>