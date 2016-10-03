<?php 
include "../../inc/db.php";
include '../../inc/header.php';
if(isset($_SESSION['vlogged'])){
$fetch = 'select * from vteam where vid = '.$_SESSION['id'].'';
$fetchresult = mysqli_query($con, $fetch);
$fetchrow = mysqli_fetch_assoc($fetchresult);


?>
<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Doctor Verification</title>
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />
</head>
<body style = "background-color: #FAFAFA; ">
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">

<h2 align="center">Welcome, <?php echo $fetchrow['fname']; ?></h2>
<div class="col-sm-2">
<button type="button" class="btn btn-info" value="Refresh" onClick="location.reload();" ><i class="glyphicon glyphicon-log-out"></i>&nbsp;&nbsp;Refresh</button>
</div>
<div class="pull-right">
 <button type="button" class="btn btn-danger" value="Logout" onClick="location.href='logout.php';" ><i class="glyphicon glyphicon-log-out"></i>&nbsp;&nbsp;Logout</button>
</div>
<div class="col-sm-8">
<?php 
$sql = "select * from doctor_details where verified = 0";
$result = mysqli_query($con,$sql);
echo '<table style="background-color: white;text-align:center;" class="table table-hover table-bordered">
<thead>
<tr>
<th style="text-align:center;">Doctor ID</th>
<th style="text-align:center;">Doctor Name</th>
<th style="text-align:center;">Action</th>
</tr>
</thead>
';
while($row = mysqli_fetch_assoc($result))
{
		echo '<tr>
		<td>'.$row["did"].'</td>
		<td>'.$row["fname"].' '.$row["lname"].'</td>
		<td><a href="showdoc.php?q='.$row["did"].'"><button class="btn btn-information"><i class="glyphicon glyphicon-check"></i>&nbsp;&nbsp;Check</button></a></td>
		</tr>';
}

echo '</table>';
?>
</div>
<div class="col-sm-2"></div>
</div>
</div>
</div>
<?php include '../../inc/footer.php';?>
</body>
</html>
<?php 
}
else {
	echo 'Invalid ACCESS';
	}
?>