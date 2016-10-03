<?php
include "../inc/db.php";
echo '<link rel="stylesheet" type="text/css" href="../externs/bs/css/bootstrap.css" />
';
$result = '';
include "../inc/header.php";
if(isset($_POST['pidsubmit'])){
	$_SESSION['pid'] = mysqli_real_escape_string($con, $_POST['pid']);
}
if(isset($_POST['submitvd'])) {
	$sql = "select visit_Date, rid, prescription, phiysician from p_".$_SESSION['pid']." where visit_Date = '".$_POST['vd']."'";
	
	$rs = mysqli_query($con,$sql);
	while($rw = mysqli_fetch_assoc($rs)) {
$result = '
<tr>
<td>'.$rw['visit_Date'].'</td>
<td>'.$rw['rid'].'</td>
<td>Dr. '.$rw['phiysician'].'</td>

<td><a class="btn btn-success btn-block" href="prs.php?q='.$rw['rid'].'"><i class="glyphicon glyphicon-picture"></i>&nbsp;&nbsp;View</a></td>
</tr>
';
}
}
?>

<!DOCTYPE html>
<html>
<head><title>ReOpat - View Prescription</title>
<link rel="stylesheet" type="text/css" href="../externs/jq/jquery-ui.css"/>
<script src="../externs/jq/jquery-ui.js"></script>
<script type="text/javascript" src="validation.js"></script>
<script src="../externs/jq/jquery.js"></script>
<script>
$(function () {
	$('#datepick').datepicker();
	$('#datepick1').datepicker();
});
</script>
</head>
<body style="background-color:#FAFAFA;">

<br />
<br />
<div class="container">
<div style='float:left;'>
<button onClick="location.href='pharmport.php';" class="btn btn-info"><i class="glyphicon glyphicon-dashboard"></i>&nbsp;Dashboard</button>
</div>
<div style='float:right;'>
<button onClick="location.href='logout.php';" class="btn btn-danger"><i class="glyphicon glyphicon-log-out"></i>&nbsp;Logout</button>
</div>
</div>
<div class="container-fluid">
<div class="row">

<div class="col-sm-4"></div>
<div class="col-sm-4" style="background-color:white; border:1px solid #CACACA; border-radius:8px; padding:20px; padding-top:10px;">
<br />
<form action="" method="post">
<fieldset>
<legend>Search By Visit Date - [<?php echo $_SESSION['pid'];?>]</legend>
<center><table>
<tr>
<td><input type="text" placeholder="yyyy-mm-dd" name="vd" id="datepick" class="form-control" /></td>
<input type="hidden" name="spid" value="<?php echo $_SESSION['pid'];?>" />
<td>&nbsp;</td>
<td><button type="submit"  name="submitvd" class="btn btn-success">Go</button></td>
</tr>
</table></center>
</fieldset>
</form>
<br />
</div>
<div class="col-sm-4"></div>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-sm-12">
<br />
<br />
<table class="table table-bordered table-hover" style="background-color:white; text-align:center;">
<tr>
<td>Visit Date (YYYY-MM-DD)</td>
<td>Report ID</td>
<td>Physician</td>
<td>View Prescription</td>
</tr>
<?php echo $result; ?>
</table>
</div>
</div>
</div>
<?php 

include "../inc/footer.php";
?>
</body>
</html>