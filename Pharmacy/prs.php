<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Prescription</title>
<link rel="stylesheet" type="text/css" href="../externs/bs/css/bootstrap.css" />
</head>
<body style="background-color:#FAFAFA;">
<?php
include "../inc/header.php";
include "../inc/db.php";
$sq = "select physician, prescription from p_".$_SESSION['pid']." where rid = '".$_GET['q']."'";
$rs = mysqli_query($con,$sq);
$rw = mysqli_fetch_assoc($rs);
?>
<div class="container">
<div class="row">
<div class="col-sm-12">
<center>
<br><br>
<div style="background-color:white; border:1px solid #CACACA; border-radius:8px; width:600px;margin-bottom:-10px;">
<table class="table-bordered table">
<tr>
	<td>Patient ID: </td>
    <td><?php echo $_SESSION['pid'];?></td>
</tr>
<tr>
	<td>Prescriptions: </td>
    <td><?php echo $rw['prescription'];?></td>
</tr>
</table>
<button type="button" onClick="window.location.href='viewprs.php';" style="margin-bottom:10px;" class="btn btn-info">go Back</button>
</div>
</div>
</div>
</div>
<?php
include "../inc/footer.php";
?>

</body>
</html>



