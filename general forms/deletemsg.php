<!DOCTYPE html>
<html>
<head>
<title>Request Delete form!</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="bs/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="cancelformstyle.css" />
<script>
function fun1()
{location.href="successform5.html";}
function fun2()
{location.href="adminmsg.html";
}
</script>
</head>
<body style="background-color:#DFDFDF">
<?php
include "inc/header.php";
?>
<br ><br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3">
</div>
<div class="col-sm-6 bord">
<br />


<div>
<br><br>
<p align="center">Do you want to delete the message?</p><br />
<center><button class="btn btn-danger" onclick="fun1()">Yes</button><button style="margin-left:10px;" class="btn btn-primary" onclick="fun2()">No</button></center><br />
</div>
</div>
<div class="col-sm-3">
</div>
</div>
</div>
<?php include "inc/footer.php"; ?>
</body>
</html>