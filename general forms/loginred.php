<html>
<head>
<title>ReOpat - Thanks for registration</title>
<link rel="stylesheet" href="../externs/bs/css/bootstrap.min.css">
<style>
.bord{
	border:1px solid #CACACA;
	background-color: white;
	border-radius: 8px;
	padding: 20px;
}
</style>
</head>
<body style="background-color: #FAFAFA">
<?php include "../inc/header.php" ?>
<br />
<br />
<br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6 bord">
<center><b>Thanks For Registering!</b><br /><br />You have been successfully Registered,<br />You would be redirected to home page automatically<br />Please Login Once Again.</center>
<?php 
header('refresh:5;url=../');
 ?>
</div>
<div class="col-sm-3"></div>
</div>
</div>
<?php include "../inc/footer.php" ?>
</body>
</html>