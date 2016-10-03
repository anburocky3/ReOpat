<html>
<head>
<title>ReOpat - Admin Dashboard</title>
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/HomeStyle.css" />
</head>
<body style="background-color: #FAFAFA;">
<?php
include "../../inc/header.php";
$_SESSION['role'] = 'ads';
?>

<center><h2>Enter any section to perform the required operation</h2></center>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<div class="container">
<div class="row">
<div class="col-sm-6">
<!--doctor login-->
<a href="ids.php?q=doc">
<div class="container-fluid log">
<div class="row">
<div class="col-sm-12" style="padding: 5px;">
<center><span class="glyphicon glyphicon-plus"></span><p style="color:white; font-size: 150%;">Doctor Portal</p></center>
</div>
</div>
</div>
</a>
<!--eof doctor login-->
</div>
<div class="col-sm-6">
<!--patient login-->
<a href="ids.php?q=pat">
<div class="container-fluid log">
<div class="row">
<div class="col-sm-12" style="padding: 5px;">
<center><span class="glyphicon glyphicon-heart"></span><p style="color:white; font-size: 150%;">Patient Portal</p></center>
</div>
</div>
</div>
</a>
<!--eof patient login-->
</div>
</div>
</div>


<div class="container">
<div class="row">
<div class="col-sm-6">
<!--doctor login-->
<a href="ids.php?q=phr">
<div class="container-fluid log">
<div class="row">
<div class="col-sm-12" style="padding: 5px;">
<center><span class="glyphicon glyphicon-leaf"></span><p style="color:white; font-size: 150%;">Pharmacy Portal</p></center>
</div>
</div>
</div>
</a>
<!--eof doctor login-->
</div>
<div class="col-sm-6">
<!--patient login-->
<a href="ids.php?q=lab">
<div class="container-fluid log">
<div class="row">
<div class="col-sm-12" style="padding: 5px;">
<center><span class="glyphicon glyphicon-pencil"></span><p style="color:white; font-size: 150%;">Laboratory Portal</p></center>
</div>
</div>
</div>
</a>
<!--eof patient login-->
</div>
</div>
</div>


<div class="container">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div style="background-color:#FF4D4D; border-radius:8px; margin-top: 10px;" class="container-fluid">
<div class="row">
<a href="ids.php?q=vt">
<div class="col-sm-12" style="padding: 5px;">
<center><span class="glyphicon glyphicon-ok"></span><p style="color:white; font-size: 150%;">Verfication Team</p></center>
</div>
</a>
</div>
</div>
</div>

<div class="col-sm-3"></div>
</div>
</div>

</div>
</div>
<br />
<br />
<div class="container">
<div class="row">
<div class="col-sm-6">
<a href="admsg.php"><button class="btn btn-info btn-block">Messages</button></a>
</div>
<div class="col-sm-6">
<a href="adntf.php"><button class="btn btn-info btn-block">Notification</button></a>
</div>
</div>
</div>

</div>
<br />
<br />
<br />
<?php 
include "../../inc/footer.php";
?>
</body>
</html>