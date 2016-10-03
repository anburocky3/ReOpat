<html>
<head>
<title>Forgot password</title>
<link rel="stylesheet" type="text/css" href="../externs/bs/css/bootstrap.min.css" />
<style>
.in
{
border:1px solid #C1C1C1;
border-radius: 8px;
background-color: white;
padding-bottom: 20px;
padding-left: 20px;
padding-right: 20px;
padding-top: 10px;
}
</style>
</head>
<body style="background-color:#FAFAFA;">
<?php include "../inc/header.php";
include "../inc/db.php";
$sql = "select * from doctor_details where did = '".$_SESSION['id']."'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
?>
<br />
<br />
<br />
<div class="container-fluid ">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6 in">
<form action=" forg2.php" method="post">

<center>
<fieldset>
<legend>Security Questions</legend>
<?php
echo '
<table>
<tr><td><label>'.$row['ques1'].'</label></td><td>&nbsp;</td><td><input type="text" name="answer" class="form-control"></td></tr><br />
<tr><td><br /></td></tr>
<tr><td><label>'.$row['ques2'].'</label></td><td>&nbsp;</td><td><input type="text" name="answer1" class="form-control"></td></tr>
</table>';
?>
<br /><button type="submit" class="btn btn-warning">Next</button>
<button type="submit" class="btn btn-success">Done</button>
</fieldset>
</center>
</form>
</div>
<div class="col-sm-3"></div>
</div>
</div>
<?php include "../inc/footer.php"
mysqli_close($con);
?>

</body>
</html>

