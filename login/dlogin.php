

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Doctor login</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="style.css">
</head>
<body>
<?php

if(isset($_SESSION['id']))
{
	header("Location: ../general forms/logoutpls.php");
}

?>
<div>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="DocLog.php" method="post">
<?php 
if(isset($_SESSION['errormsg'])) 
{ echo '<div style="padding:5px;background-color:red;color:white;">'.$_SESSION['errormsg']. '</div>';
 unset($_SESSION['errormsg']); } ?>

<fieldset >
<p><input name="docid" type="text" required value="DoctorID" onBlur="if(this.value=='')this.value='DoctorID'" onFocus="if(this.value=='DoctorID')this.value='' "></p>
<p><input name="pwd" type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><a href="../general forms/forgotpass1.php">Forgot Password?</a></p>
<p><input type="submit" name="submit" value="Login"></p>

<a href="../registration/doctorreg.php" style="text-decoration:none;"><p class="btn btn-success" style="display:block;text-decoration:none;">Register Now</p></a>
</fieldset>
</form>
</div> <!-- end login -->
</div>
</body>
</html>