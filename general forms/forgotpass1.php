<html>
<head>
<title>Forgot password</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

<script>
function fun()
{
location.href="../doctor/doctoreditprof.php";
}
</script>
</head>
<body>

<center>
<p style="font-size:20px;">Forgot Password?<br>Dont Worry!!</br></p>
<table>
<tr><td>Enter your security pin</td><td><input type="text" name="security_pin"/></td></tr>
</table>
</center>
<br>
<form action="forg1.php" method="post"> 
<center>
<button  type="submit" class="btn btn-info">Next</button>
<button type="button" class="btn btn-danger" onClick="fun()">Cancel</button>
</center>
</form>
</body>
</html>