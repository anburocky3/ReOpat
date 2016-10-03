<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Laboratary login</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php include '../inc/header.php';
if(isset($_SESSION['id']))
{
	header("Location: ../general forms/logoutpls.php");
}

?>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="LabLog.php" method="post">
<?php 
if(isset($_SESSION['errormsg'])) 
{ echo $_SESSION['errormsg'];
 unset($_SESSION['errormsg']); } ?>

<fieldset>
<p><input name="llid" type="text" required value="Laboratary ID" onBlur="if(this.value=='')this.value='LabID'" onFocus="if(this.value=='LabID')this.value='' "></p>
<p><input name="pwd" type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><a href="labforgotpass.php">Forgot Password?</a></p>
<p><input type="submit" value="Login"></p>
<a style='text-decoration:none;' href="../registration/laborataryreg.php">
<p class="btn btn-success" style="display:block;" >Register Now</p></a>
</fieldset>
</form>
</div> <!-- end login -->
</body>
</html>