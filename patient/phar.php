<html>
<head>
<title>ReOpat - Prescription List</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
<?php include "../inc/header.php";
include "../inc/db.php";
$sql = "select * from p_".$_SESSION['id']." WHERE phiysician IS NOT NULL ORDER BY rid DESC";
$rs = mysqli_query($con,$sql);
?>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<table class="table table-bordered table-hover">
<thead style="font-weight:bold;text-align:center;">
<tr>
<td>Date</td>
<td>Report ID</td>
<td>Doctor</td>
<td>Prescription</td>
</tr>
</thead>
<tbody align="center" style="text-decoration:none;">
<?php
while($rw = mysqli_fetch_assoc($rs))
{
echo'	
<tr>
<td>'.$rw['visit_Date'].'</td>
<td>'.$rw['rid'].'</td>
<td>Dr. '.$rw['phiysician'].'</td>
<td><a href="showpre.php?q='.$rw['rid'].'" class="btn btn-success btn-block">
<span class="glyphicon glyphicon-file"></span>&nbsp; View</a></td>
</tr>
';
}
?>
</tbody>
</table>
</div>
<div class="col-sm-2">
<button type="button" class="btn btn-default" onClick="javascript:history.back();">Go Back</button>
</div>
</div>
</div>
</body>
</html>