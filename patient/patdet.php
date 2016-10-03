<html>
<head>
<title>ReOpat - Visit Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<style>
body
{
	background-color:#fafafa;
	margin:0;
}
</style>
</head>
<body>
<?php include "../inc/header.php";

include "../inc/db.php";
$sql =  "select * from p_".$_SESSION['id']." WHERE phiysician IS NOT NULL ORDER BY rid DESC";
$result = mysqli_query($con,$sql);
 ?>

<div class="container-fluid">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<table class="table table-bordered table-hover" style="margin-top:20px;padding-top:10px;">
<thead style="font-weight:bold; text-align:center;">
<tr>
<td>Date</td>
<td>Report ID</td>
<td>Doctor</td>
<td>View</td>
</tr>
</thead>
<tbody style="text-align:center;">
<?php

while($rw = mysqli_fetch_assoc($result))
{
echo '<tr>
<td>'.$rw['visit_Date'].'</td>
<td>'.$rw['rid'].'</td>
<td>Dr. '.$rw['phiysician'].'</td>
<td><a href="showdetails.php?q='.$rw['rid'].'"class="btn btn-success btn-block"><span class="glyphicon glyphicon-file"></span> &nbsp;View</a></td>
</tr>';
}
?>
</tbody>
</table>
</div>
<div class="col-sm-2">
<button style="margin-top:20px;" type="button" class="btn btn-default" onClick="javascript:history.back();">
<i class="glyphicon glyphicon-backward"></i>&nbsp; Go Back</button>

</div>
</div>
</div>
</body>
</html>