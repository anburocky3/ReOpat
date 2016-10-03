<html>
<head>
<title>ReOpat - Social History</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style>
body{
	background-color: #fafafa;
	margin:0;
}
box
{
	margin:50px auto;
	border:1px solid #cacaca;
	background-color:white;
	border-radius:8px;
	padding:20px;
}
</style>
</head>
<?php include "../inc/header.php";
include "../inc/db.php";
$sql = "select tobacco, Alcohol, IllicitDrug from patient_details where pid= '".$_SESSION['id']."'";
$rs = mysqli_query($con,$sql);
$rw = mysqli_fetch_assoc($rs);
?>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<center>
<fieldset class="box">
<legend>Tobacco Use</legend>
<?php echo $rw['tobacco']; ?>
</fieldset>
<br>
<fieldset class="box">
<legend>Alcohol Use</legend>
<?php echo $rw['Alcohol']; ?>
</fieldset>
<br>
<fieldset class="box">
<legend>Illicit Drug Use</legend>
<?php echo $rw['IllicitDrug']; ?>
</fieldset>
<br>
<button type="button" class="btn btn-default" onClick="javascript:history.back();">Go Back</button>
</center>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</html>