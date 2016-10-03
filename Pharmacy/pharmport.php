<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Pharmacy Portal</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<style>
<link rel="stylesheet" type="text/css" href="js/jquery-ui.css"/>
<script src="jquery.js"></script>
<script src="jquery-ui.js"></script>
.boxs
{
	border: 1px solid #E4E3E3;
	background-color: white;
	border-radius: 8px;
	padding-bottom: 20px;
	padding-left:20px;
	padding-right:20px;
	padding-top:10px;
}
</style>
<script>
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

</script>
</head>
<body style="background-color:#FAFAFA">
<?php include "../inc/header.php";
include "../inc/db.php";

$sq = "select * from pharmacist_details where phlicense_id = '".$_SESSION['id']."'";
$rs = mysqli_query($con,$sq);
$rw = mysqli_fetch_assoc($rs);
?>
<br /><br />
<div class="container">
<div class="row">
<div class="col-sm-6">
<table cellpadding="10">
  <tr>
     <td>Pharmacy Name: &nbsp;</td>
     <td>  <label>   <?php echo $rw['pharm_name']; ?></label></td>
  </tr>
  <tr>
     <td>Pharmacy ID: </td>
     <td>  <label><?php echo $_SESSION['id']; ?></label></td>
  </tr>
</table>
<label></label><br />
<label></label>
</div>
<div class="col-sm-6">
<label>Date:</label><label><?php echo date("m/d/Y"); ?></label><br />
<label>Time:</label><label><?php echo date("h:i:s"); ?></label>
<div style="float:right">
<button class="btn btn-danger" onClick="location.href='logout.php';"><i class="glyphicon glyphicon-log-out"></i>&nbsp;Logout</button>
</div>
</div>

</div>
</div>
<br />
<br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4 boxs" style="background-color:white; border:1px solid #CACACA; border-radius:8px; padding:20px; padding-top:10px;">
<form action="viewprs.php" method="post">
<fieldset>
<legend>Enter Patient ID</legend>
<input type="text"  name="pid" class="form-control" onkeypress="return isNumber(event)" /><br />
<center><button type="submit" name="pidsubmit" class="btn btn-primary" >Prescriptions</button></center>
</fieldset>
</form>
</div>
<div class="col-sm-4"></div>
</div>
</div>

<?php include "../inc/footer.php" ?>
</body>
</html>