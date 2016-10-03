<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Admin Login</title>
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />
</head>
<body style="background-color: #FAFAFA;">
<?php include "../../inc/header.php" ;
$_SESSION['role'] = 'adm';
?><br /><br /><br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-4"></div>
<!--verif port-->
<div class="col-sm-4">
<h3 align="center">Verfication Team</h3>
<form action="chvrf.php" method="post">
<p>Enter Login ID:</p>
<input type="text" name="id" class="form-control" /><br /><br />
<p>Enter Password:</p>
<input type="password" name="pwd" class="form-control" /><br /><br />
<button type="submit" name="submit" class="btn btn-success btn-block btn-lg"><i class="glyphicon glyphicon-log-in"></i>&nbsp;&nbsp;Login</button>
</form>
</div>
<div class="col-sm-4"></div>

<div class="container-fluid">
<div class="row">
</div>
<!--eof verif port-->
</div>
</div>
</div>
<?php include "../../inc/footer.php" ?>
</body>
</html>