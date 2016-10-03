<html>
<head>
<title>Doctor Confirmation</title>
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />
<style>
#abc{
margin:50px auto;
width:350px;
border:1px solid black;
border-radius: 8px;
padding-bottom: 20px;
padding-left: 20px;
padding-right: 20px;
padding-top: 10px;
background-color: white;
}
</style>
</head>
<body style="background-color: #FAFAFA;">
<?php include "../../inc/header.php"; ?>
<div id="abc">
<fieldset>
<legend><span style="color: red;" class="glyphicon glyphicon-exclamation-sign"></span>  Confirm selection</legend>
<p> Are you sure that the candidate can be added?</p>
<center>
<a href="addthedoc.php"><button class="btn btn-danger">Yes</button></a>
<a href="docverify.php"><button class="btn btn-danger">No</button></a>
</center>
</fieldset>
</div>
<?php include "../../inc/footer.php"; ?>
</body>
</html>