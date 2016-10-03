<?php 

if(isset($_SESSION['id']))
{
	header("Location: ../general forms/logoutpls.php");
}

 ?>

<!DOCTYPE html><!-- PAtient login-->
<html>
<head>
<meta charset="utf-8">
<title>Patient login</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php include '../inc/header.php';
$_SESSION['role'] = 'pat';?>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="PatLog.php" method="post">
<?php 
if(isset($_SESSION['errormsg'])) 
{ echo $_SESSION['errormsg'];
 unset($_SESSION['errormsg']); } ?>

<fieldset>
<p><input name="pid" type="text" required value="Patient ID" onBlur="if(this.value=='')this.value='PatientID'" onFocus="if(this.value=='PatientID')this.value='' "></p>
<p><input name="pwd" type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><a href="patientforgotpass.php">Forgot Password?</a></p>
<p><input type="submit" value="Login"></p>
<a style='text-decoration:none;' href="../registration/addpatrec.php"><p class="btn btn-success" style="display:block;" >Register Now</p></a>
</fieldset>
</form> 
</div> <!-- end login -->
</body>
</html>