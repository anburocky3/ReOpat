<html>
<head>
<title>ReOpat - Prescription</title>
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
<?php
include "../inc/header.php";
include "../inc/db.php";
$sql = "select prescription from p_".$_SESSION['id']." where rid=".$_GET['q'];
$rs = mysqli_query($con,$sql);
$rw = mysqli_fetch_assoc($rs);
?>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4 box">
<center><h3>Prescription</h3></center>
<br>
<div width="300px">
<?php echo $rw['prescription']; ?>
</div>
</div>
<div class="col-sm-4"><button type="button" class="btn btn-info" onClick="window.location.href='dashboard.php'">go Back</button></div>
</div>
</div>
</body>
</html>