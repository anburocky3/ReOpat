<?php 
include "../inc/header.php"; 

if(isset($_SESSION['dlogin']))
{
?><html>
<head>
<title>Doctor security login page</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<script src="https://www.google.com/recaptcha/api.js"></script>

<style>
.bord
{
	border: 1px solid #C1C1C1;
	border-radius: 8px;
	background-color: white;
	padding-bottom: 20px;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 10px;
}
</style>
</head>
<body>
<?php 
if(isset($_SESSION['errormsg'])) 
{ echo '<p style="text-color:red;">'.$_SESSION['errormsg'].'</p>';
 unset($_SESSION['errormsg']); }
  ?>
<br />
<br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6 bord">
<form action="seccheck.php" method="post">
<fieldset>
<legend align="center"><span style="color: blue;" class="glyphicon glyphicon-info-sign"></span> Security Pin Login</legend>
<br />
<center>
<table>
<tr>
<td>Enter Security Pin : &nbsp;</td>
<td><input type="number" name="pin" class="form-control"/></td>
</tr><tr><td><br /></td></tr>
<tr><td></td><td></tr>
<tr><tr><td><br /></td></tr>
<td>Enter Captcha : &nbsp;</td>
<td>
<div class="g-recaptcha" data-sitekey="6Lf-NRATAAAAAKUrInVSEPb2sz9GaOHSqNkDZJYM"></div>
<br>
</td>
</tr><tr><td><br /></td></tr>
<tr>
</tr><tr><td><br /></td></tr>
</table>
<button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-send"></i>&nbsp;Login</button>
<button type="button" class="btn btn-danger" onClick="window.location.href='../doctor/logout.php'"><i class="glyphicon glyphicon-lock"></i>&nbsp;Logout</button>
</center>
<br />
</fieldset>
</form>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</body>
</html>

<?php 
}
else {
	echo '<h1>Invalid Access</h1>';
	header('Location: dlogin.php');
	}
?>