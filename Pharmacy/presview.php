<!DOCTYPE html>
<html>
<head>
<title> Pharmacy-Success form </title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script>
function fun()
{
location.href="pharmport.php";
}
</script>

</head>
<body class="in" style="background-color:#FAFAFA">
<?php include "../inc/header.php"?>
<form action="" method="post">
<center><h2>Medical Prescription</h2></center><br /><br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-4">
<label>Date:</label><label></label><br />
<label>Doctor Name:</label><label></label><br />
<label>Chief Complaint:</label><label></label><br /> 
<table>                  
<tr><td><br /></td></tr>
<tr><td>Prescription:</td>
<tr><td></td><td><label><label><br/></td></tr>
<tr><td><br /></td></tr>
<table>
<button class="btn btn-success" onclick="fun()">Save</button>
</div>
</div>
</div>

</form>
<?php include "../inc/footer.php"?>
</body>
</html>