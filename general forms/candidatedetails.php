<!DOCTYPE html>
<html>
<head>
<title>ReOpat-Doctor Verification Form</title>
<link rel="stylesheet" type="text/css" href="../bs/css/bootstrap.css" />
</head>
<body>
<?php include "../inc/header.php"; ?>
<div class="container-fluid">
<h1><center>Doctor Verification Form</center></h1>
<form action="" method="post">
<table>
<tr><td>First Name:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Last Name:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Doctor ID:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Aadhar ID:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Email ID:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Mobile:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Qualification:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Specification:</td><td></td></tr><tr><td><br /></td></tr>
</table>

<fieldset>
<legend>Clinic Details</legend>
<table>
<tr><td>Door No:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Street:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Area:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>District:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>State:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Pin code:</td><td></td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<fieldset>
<legend>Hospital Details</legend>
<table>
<tr><td>Door No:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Street:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Area:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>District:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>State:</td><td></td></tr><tr><td><br /></td></tr>
<tr><td>Pin code:</td></tr><tr><td></td></tr><tr><td><br /></td></tr>
<tr><td>Available From:</td><td><input type="number" class="form-control" min="1" max="12" name="af"/>
<td><select name="ftime" class="form-control">
<option value="AM">AM</option>
<option value="PM">PM</option>
</select></td>
<td style="padding-left: 10px;">To:</td><td><input type="number" class="form-control" min="1" max="12" name="af"/>
<td><select name="ttime" class="form-control">
<option value="AM">AM</option>
<option value="PM">PM</option>
</select></td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<fieldset>
<legend>Produced Credentials</legend>
<table>
<tr><td><input type="checkbox" name="acx"/>Aadhar Card Xerox</td><td></td><td><input type="checkbox" name="dc"/>Degree Certificates</td></tr><tr><td><br /></td></tr>
<tr><td><input type="checkbox" name="cap"/>Clinic Address Proof</td><td></td><td><input type="checkbox" name="bc"/>Bonafide Certificates</td></tr><tr><td><br /></td></tr>
<tr><td><input type="checkbox" name="others"/>Others</td><td>Specify</td><td><input type="text" class="form-control" name="specify"/></td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<fieldset>
<legend>Verified By</legend>
<table>
<tr><td>Admin Code:</td><td><input type="text" class="form-control" name="ac" required=""/><td>    </td><td ><p  style="margin-left:10px;">Name:</p></td><td><input type="text" class="form-control" name="name" required=""/></td></tr><tr><td><br /></td></tr>
<tr><td>Password:</td><td><input type="text" class="form-control" name="pwd" required=""/><td>    </td><td><p  style="margin-left:10px;">Date:</p></td><td></td></tr><tr><td><br /></td></tr>
</table>
</fieldset>

<center>
<button type="submit" class="btn btn-danger">SAVE</button>
<button style="margin-left: 10px;" type="medhist" class="btn btn-danger">CANCEL</button>
<button style="margin-left: 10px;" type="reset" class="btn btn-info">RESET</button>
</center>

</form>
</div>
<br /><br />
<?php include "../inc/footer.php" ?>
</body>
</html>
