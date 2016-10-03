<html>
<head>
<title>ReOpat  Patient DashBoard</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style>
body{
	background-color: #fafafa;
	margin:0;
}
box
{
	border:1px solid #cacaca;
	background-color:white;
	border-radius:8px;
	padding:20px;
}
</style>
</head>

<body>

<?php include "../inc/header.php"; ?>
<Style>
a {text-decoration:none;}</Style>
<br><br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"><button type="button" class="btn btn-danger" onClick="location.href='logout.php';"><i class="glyphicon glyphicon-log-out"></i>&nbsp;&nbsp; Logout</button></div>
<div class="col-sm-6 box">
<button onclick="window.location.href='patdet.php'" class="btn-lg btn-block btn-primary">
<i class="glyphicon glyphicon-bookmark"></i>&nbsp;&nbsp;Visit Details</button><br>
<button onclick="window.location.href='phar.php'" class="btn-lg btn-block btn-info">
<i class="glyphicon glyphicon-level-up"></i>&nbsp;&nbsp;Pharmacy</button><br>
<button onclick="window.location.href='lab.php'" class="btn-lg btn-block btn-danger">
<i class="glyphicon glyphicon-picture"></i>&nbsp;&nbsp;Laboratory</button><br>
<button onclick="window.location.href='sh.php'" class="btn-lg btn-block btn-warning">
<i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;Social History</button><br>
<button onclick="window.location.href='upp.php'" class="btn-lg btn-block btn-success"><i class="glyphicon glyphicon-level-up"></i>&nbsp;&nbsp;Update Profile</button>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</body>
</html>

