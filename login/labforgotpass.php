<html>
<head>
<title>ReOpat - Forgot Password</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
#sec
{
border:1px solid #CCCCCC;
 border-radius:8px;

}
</style>
</head>
<body style="background-color:#FAFAFA;"><br /><br />
<? php include"../inc/header.php"; ?>
<form action="pharmforgpass.php" method="post">
<div class="container-fluid">

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6"><br />
<div id="sec">
<fieldset>
<legend><center> Forgot Password <center></legend></fieldset>
<center><table>
<tr>
<td>Enter the Laboratory ID : &nbsp;</td><td><input type="text" name="labid" class="form-control" required=""/></td></tr><tr><td><br /></td></tr>
<tr><td>Enter your E-Mail ID : &nbsp;</td><td><input type="text" name="email" class="form-control" required=""/></td>
</tr><tr><td><br /></td></tr></table></center>
<center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
<br /><br/>
</div>
</div>
</div>
<div class="col-sm-3"></div>
</div> 
</form> 
</body>
</html>