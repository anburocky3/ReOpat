<!DOCTYPE html>
<html>
<head>
<title>Welcome to ReOpat+</title>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/HomeStyle.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" id="colors" />
<link href="css/font-awesome.min.css" rel="stylesheet">

<script src="js/jquery.js"></script>
<?php 
session_start();
session_unset();
?>
</head>
<body>
<nav class="navbar" style="border-bottom:2px solid blue;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php">ReOpat</a>
  </div>
</nav>
    
<div class="container bgDesc">
<div class="row">
<div class="col-sm-12">
<h2 align="center" class="headerModDes">The ReOpat</h2>
<p align="justify" class="discSiz">Reopat simply streamlines the information gathering processes in the organisation. Right from collating patient data to performing case management and recording patients medical history, this module captures every bit of medical and surgical information about any patient at the entry level. For better accessibility and efficient information processing,this product integrates with every imperative unit.It also captures information such as patient prescription, tests to be performed,information about test reactions,past test reports and current health status.For user convenience,this has been designed using the latest technology and ground breaking ideas. This provides an improved electronic version of public health monitoring that of the key administrative clinical data relevant to that person's care under a particular provider. this consolidates the work of laboratory, hospital and pharmacy into a single integrated unit. </p>
</div>
</div>
</div>
<section>
      <div class="col-md-4"></div>
      <div class="col-md-8">
      <a href="doctor/dlogin.php" class="btn btn-success">Doctor Portal</a>
      <a href="patient/plogin.php" class="btn btn-default">Patient Portal</a>
      <a href="pharmacist/phlogin.php" class="btn btn-default">Pharmacist Portal</a>
      <a href="lab/llogin.php" class="btn btn-default">Laboratory Portal</a>
      <a href="redc.php" class="btn btn-danger">RedC</a>
      </div>
</body>
</html>