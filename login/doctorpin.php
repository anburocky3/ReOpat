<html>
<head>
<title>doctorpin</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="passtest.js" ></script>
</head>
<body style="background-color:#FAFAFA; font-family:comic sans MS">
<?php include "..\inc\header.php" ?>

<div class="container-fluid">
<form action="" method="post">

<center><h2>Security Pin</h2><br /><br />

<table>
<tr><td> <label for="pass1">Enter PIN:</label></td><td><input type="password" name="pass1" id= "pass1"  class="form-control" required=""/></td><td><br></br></td></tr>
<tr><td><label for="pass2">Re-enter PIN:</label></td><td><input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;" class="form-control" required=""/></td><td><br></br></td>
<td><span id="confirmMessage" class="confirmMessage"></span></td></tr>s
<tr><td>Expires by:</td>
<td><select name="exp">
<option name="1" value="3">3 months</option>
<option name="2" value="6">6 months</option>
</select></td><td><br></br></td></tr>
<tr><td><input type="checkbox" name="c1">I agree to the terms and conditions</td><td><br></br></td></tr>
</table>


<button type="submit" class="btn btn-danger">Ok</button>
<button type="submit" class="btn btn-danger">Cancel</button>

</center>
</form>
</div>
</body>
</html>


