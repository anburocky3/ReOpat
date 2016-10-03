<!DOCTYPE html>
<html>
<head>
<title>ReOStat</title>
<link rel="stylesheet" href="../externs/bs/css/bootstrap.min.css">
</head>
<body  style="background-color:#FAFAFA">
<?php include "../inc/header.php"; ?>
<br /><br />
<div class="container">
<div class="row">
<div style="border:1px solid #CCCCCC; border-radius:8px; background-color:white; margin-top:-20px; margin-bottom:50px;" class="col-sm-12">
<fieldset>
<center><legend style="padding:10px;">REOSTAT</legend></center>
<table class="table table-hover table-bordered">
<thead style="font-weight:bold;">
<tr>
<td>Listing No</td>
<td>Number of Persons affected</td>
<td>Name of the disease</td>
</tr>
</thead>
<tbody>
<?php
include "../inc/db.php";
$city=$_POST['hcity'];
$state=$_POST['hstate'];

$sql="select medical_condition,COUNT(medical_condition) as no from reostat where p_state='".$state."' AND p_city='".$city."' 
GROUP BY medical_condition ORDER BY no DESC";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
for($i=0;$i<=$row['no'];$i++)
{echo "
<tr>
<td></td>
<td>".count($row['no'])."</td><td>".$row['medical_condition']."</td>
</tr>";
}
?>
</tbody>
</table>
<center><button type="text" href="reostat.php" style="margin-bottom:10px;" class="btn btn-sm btn-information">
<i class="glyphicon glyphicon-backward"></i>&nbsp;&nbsp;go BACK</button></center>
</fieldset>
</div>
</div>
</div>
<?php include "../inc/footer.php"; ?>
</body>
</html>