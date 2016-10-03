<!DOCTYPE html>
<html>
<head>
<title>Doctor Verification Form</title>
<link rel="stylesheet" type="text/css" href="../externs/bs/css/bootstrap.css" />
</head>
<body>
<?php include "../inc/header.php"; 
$sql = "select * from doctor_details where did = ".$_GET['q'];
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
echo '
<div class="container-fluid">
<h1><center>Doctor Verification Form</center></h1>
<form action="" method="post">
<table>
<tr><td>First Name:</td><td>'.$row["fname"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Last Name:</td><td>'.$row["lname"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Doctor ID:</td><td>'.$row["did"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Aadhar ID:</td><td>'.$row["aadhar_id"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Email ID:</td><td>'.$row["email_id"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Mobile:</td><td>'.$row["ph_no"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Qualification:</td><td>'.$row["qualification"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Specification:</td><td>'.$row["specialization"].'</td></tr><tr><td><br /></td></tr>
</table>

<fieldset>
<legend>Clinic Details</legend>
<table>
<tr><td>Name:</td><td>'.$row["c_name"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Door No:</td><td>'.$row["c_doorno"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Street:</td><td>'.$row["c_street"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Area:</td><td>'.$row["c_area"].'</td></tr><tr><td><br /></td></tr>
<tr><td>District:</td><td>'.$row["c_city"].'</td></tr><tr><td><br /></td></tr>
<tr><td>State:</td><td>'.$row["c_state"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Pin code:</td><td>'.$row["c_zipcode"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Available From:</td><td></td>'.$row["cfrom"].' '.$row["cam"]'<td style="padding-left: 10px;">To:</td><td>'.$row["cto"].' '.$row["cpm"]'</td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<fieldset>
<legend>Hospital Details</legend>
<table>
<tr><td>Name:</td><td>'.$row["h_name"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Door No:</td><td>'.$row["h_doorno"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Street:</td><td>'.$row["h_street"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Area:</td><td>'.$row["h_area"].'</td></tr><tr><td><br /></td></tr>
<tr><td>District:</td><td>'.$row["h_city"].'</td></tr><tr><td><br /></td></tr>
<tr><td>State:</td><td>'.$row["h_state"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Pin code:</td><td>'.$row["h_zipcode"].'</td></tr><tr><td><br /></td></tr>
<tr><td>Available From:</td><td></td>'.$row["hfrom"].' '.$row["ham"]'<td style="padding-left: 10px;">To:</td><td>'.$row["hto"].' '.$row["hpm"]'</td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<center>
<button type="submit" class="btn btn-danger">SAVE</button>
<button style="margin-left: 10px;" type="medhist" class="btn btn-danger">CANCEL</button>
<button style="margin-left: 10px;" type="reset" class="btn btn-info">RESET</button>
</center>
'; ?>
</form>
</div>
<br /><br />
<?php include "../inc/footer.php" ?>
</body>
</html>
