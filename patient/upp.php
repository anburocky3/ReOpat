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
<script src="js/bootstrap.js"></script>
<script type= "text/javascript" src = "state1.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
</head>
<body>
<?php include "../inc/header.php";

include "../inc/db.php";
$sql =  "select * from patient_details where pid = '".$_SESSION['id']."'";
$result = mysqli_query($con,$sql);
$rw = mysqli_fetch_assoc($result);
 ?>



<?php
echo '
<div class="container-fluid">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<form action="profileUpdate.php" method="post">
<table class="table table-bordered table-hover">
<tr>
<td>Door No.</td><td><input type="text" name="dn" value="'.$rw['p_doorno'].'"></td>
</tr>
<tr>
<td>Street:</td><td><input type="text" name="st" value="'.$rw['p_street'].'"></td>
</tr>

<tr>
<td>Area:</td><td><input type="text" name="a" value="'.$rw['p_area'].'"></td>
</tr>
<tr>
<td>Pin/Zip Code:</td><td><input type="text" name="cd" value="'.$rw['p_zipcode'].'"></td>
</tr>
<tr>
<td>Phone Number:</td><td><input type="text" name="ph" value="'.$rw['ph_no'].'" /></td>
</tr>
<tr>
<td>Email id:</td><td><input type="text" name="mail" value="'.$rw['email_id'].'" /></td>
</tr>
<tr>
<td><p style="color:red">(Please Select the Below compulsarily)</p></td>
<td></td>
</tr>
<tr><td>State:&nbsp;</td><td><select onchange="print_city2(\'hcity\', this.selectedIndex);" id="hstate" name ="hstate" class="form-control" required=""></select>
</td>
</tr>
<tr>
<td><p style="color:red">(Please Select the Below compulsarily)</p></td>
<td></td>
</tr>

<tr><td>City/District:&nbsp; * </td>
<td><select name ="hcity"  id="hcity" class="form-control" required=""></select>
        <script language="javascript">print_state2("hstate");</script></td> 
</tr>
';
?>
</table>
<center><button type="submit" class="btn btn-success">Submit</button></center>
</div>
<div class="col-sm-2"></div>
</div>
</div>
</body>
</html>