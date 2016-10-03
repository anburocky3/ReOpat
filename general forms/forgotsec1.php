<html>
<head>
<title>Forgot password</title>
<link rel="stylesheet" href="../newworks/bs/css/bootstrap.css" />
<style>
.in
{
border:1px solid #C1C1C1;
border-radius: 8px;
background-color: white;
padding-bottom: 20px;
padding-left: 20px;
padding-right: 20px;
padding-top: 10px;
}
</style>
</head>
<body style="background-color:#FAFAFA;">
<?php include "../inc/header.php"?>
<br />
<br />
<br />
<div class="container-fluid ">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6 in">
<form action="" method="post">

<center>
<fieldset>
<legend>Forgot Pin</legend>
<table>
<tr><td>Enter Your Password :</td><td>&nbsp;</td><td><input type="text" name="answer" class="form-control"></td></tr><br />
<tr><td><br /></td></tr>
<tr><td><a href="forgotpass2.php">Forgot Password also?</a></td></tr>
</table>

<br /><button type="submit" class="btn btn-warning">Next</button>
<button type="submit" class="btn btn-success">Cancel</button>
</fieldset>
</center>
</form>
</div>
<div class="col-sm-3"></div>
</div>
</div>
<?php include "../inc/footer.php"?>

</body>
</html>

