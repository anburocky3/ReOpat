

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Pharmacy login</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css"/>
<script>
 function fun()
{location.href="../registration/phreg.php";}
 </script>
</head>
<body>
<?php 

if(isset($_SESSION['id']))
{
	header("Location: ../general forms/logoutpls.php");
}

 ?>
<?php include '../inc/header.php';?>

<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="PhrLog.php" method="post">
<?php 
if(isset($_SESSION['errormsg'])) 
{ echo '<div style="padding:5px;background-color:red;color:white;">'.$_SESSION['errormsg']. '</div>';
 unset($_SESSION['errormsg']); } ?>
<fieldset>
<p><input name="phlid" type="text" required value="Pharmacy ID" onBlur="if(this.value=='')this.value='Pharmacy ID'" onFocus="if(this.value=='Pharmacy ID')this.value='' "></p>
<p><input name="pwd" type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><a href="pharmforgotpass.php">Forgot Password?</a></p>
<p><input type="submit" value="Login"></p>

<p class="btn btn-success" style="display:block;" onclick="fun()" >Register Now</p>
</fieldset>
</form>
</div> <!-- end login -->
<?php include '../inc/footer.php';?>
</body>
</html>