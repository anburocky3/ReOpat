<!DOCTYPE html>
<html>
<head>
<title>ReOpat-Admin messages</title>
<link rel="stylesheet" type="text/css" href="bs/css/bootstrap.css" />
<style>
table, th, td {
    border: 1px solid black;
}
#admsg
{margin: 50px auto;
width: 300px;}
</style>
<script>
function fun()
{
  location.href="deletemsg.html";
}
</script>
</head>
<body  style="background-color:#DFDFDF">
<?php include "inc/header.php"; ?>
<br /><br />
<center><h3>Messages from ADMIN!</h3></center>

<div class="container-fluid">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8"></div>
<div id="admsg">
<table style="width:100%">
  <tr>
    <td>Subject</td>
    <td>Date</td>		
    <td>Time</td>
    <td>Cancel</td>
  </tr>
  <tr>
    <td></td>
    <td></td>		
    <td></td>
    <td><button type="button" class="btn btn-danger" onclick="fun()">Delete</button></td>
  </tr>
  <tr>
    <td></td>
    <td></td>		
    <td></td>
    <td><button type="button" class="btn btn-danger" onclick="fun()">Delete</button></td>
  </tr>
  </div>
  <div class="col-sm-2"></div>
  </div>
  </div>
</table>
<?php include "inc/footer.php"; ?>
</body>
</html>