<html>
<head>
<title>ReOpat - Details</title>
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
include "../inc/db.php";
include "../inc/header.php";
$sql = "select * from l_".$_SESSION['id']." where rid = ".$_GET['q'];
$requiredscan = "SELECT required_scan, body_region  FROM p_".$_SESSION['id']."";
$requireds = mysqli_query($con, $requiredscan);
$rs = mysqli_query($con,$sql);
?>
<div class="container-fluid">
<div class="col-sm-1"></div>
<div class="col-sm-10">
<?php 

while($rw = mysqli_fetch_assoc($rs))
{
	$rss = mysqli_fetch_assoc($requireds);
	echo'<div class="box">
<table class="table table-bordered table-hover" style="margin-top:15px;">
<thead style="font-weight:bold;text-align:center;">
<tr>
<td>Report ID</td>
<td>Scans</td>
<td>Body Region</td>
<td>Scan Image</td>
<td>Result</td>
<td>View Full Screen</td>

</tr>
</thead>
<tbody>
<td>'.$rw['rid'].'</td>
<td>'.$rss['required_scan'].'</td>
<td>'.$rss['body_region'].'</td>
<td><img src="../uploads/lab/'.$rw['image'].'" width="250px" height="250px" /></td>
<td>'.$rw['result'].'</td>
<td><a href="../uploads/lab/'.$rw['image'].'" target="_BLANK"><span class="glyphicon glyphicon-picture" style="width:20px;height:20px"></span> View Full Screen</a></td>
</tbody>
</table>
</div>
';
}

?>
</div>
<div class="col-sm-1"><a href="lab.php" class="btn btn-primary" style="margin-top:15px;">back</a></div>
</div>
</body>
</html>