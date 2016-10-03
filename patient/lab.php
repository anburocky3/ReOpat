<html>
<head>
<title>ReOpat - Lab Report List</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
<?php include "../inc/header.php";
include "../inc/db.php";
$sql = "select * from l_".$_SESSION['id']."";
$patient = "select * from p_".$_SESSION['id']."";
$patientquery = mysqli_query($con, $patient);
$rs = mysqli_query($con, $sql);
?>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10">
<table class="table table-bordered table-hover">
<thead style="font-weight:bold;">
<tr>
<td>Date</td>
<td>Laboratory Name</td>
<td>Report ID</td>
<td>Doctor ID</td>
<td>Requested Scans</td>
<td>Scan image</td>
<td>Result of Analysis</td>
<td>View All Scans</td>
</tr>
</thead>
<tbody>
<?php
while($rw = mysqli_fetch_assoc($rs))

{
	$lab = "SELECT lab_name FROM  lab_details WHERE llicense_id = '".$rw['lab_id']."'";
$labfetch = mysqli_query($con, $lab);
$labrow = mysqli_fetch_assoc($labfetch);

$p = mysqli_fetch_assoc($patientquery);
	
echo'	
<tr>
<td>'.$rw['visit_date'].'</td>
<td>'.$labrow['lab_name'].'</td>
<td>'.$rw['rid'].'</td>
<td>'.$p['did'].'</td>
<td>'.$p['required_scan'].'</td>
<td><img src="../uploads/lab/'.$rw['image'].'" width="50" height="50"/></td>
<td>'.$rw['result'].'</td>
<td><a href="showlab.php?q='.$rw['rid'].'"><button class="btn btn-primary"><span class="glyphicon glyphicon-file"></span> View</button></a></td>
</tr>
';
}
?>
</tbody>
</table>
</div>
<div class="col-sm-1">
<button type="button" class="btn btn-info" onClick="window.location.href='dashboard.php'">Go Back</button>
</div>
</div>
</div>
</body>
</html>