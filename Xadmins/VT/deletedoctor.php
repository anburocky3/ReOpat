<html>
<head>
<title>Doctor Deletion</title>
<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />
<style>
#abc{
margin:50px auto;
width:350px;
background-color: white;
padding-left :20px;
padding-right: 20px;
padding-bottom: 20px;
padding-top: 10px;
border: 1px solid black;
border-radius: 8px;
}
</style>
</head>
<body style="background-color:#FAFAFA;">
<?php include "../../inc/header.php"; ?>
<form action="delthedoc.php" method="post">
<div id="abc">
<fieldset>
<legend><span style="color:red;" class="glyphicon glyphicon-alert"></span> Confirm deletion</legend>
<p align="center">Do you want to delete the candidate?</p>
<center>
<button type="submit" name="submit" class="btn btn-danger">Yes</button>
<button type="button" onclick ="location.href='docverify.php';" class="btn btn-danger">No</button>
</center>
</fieldset>
</div>
</form>
<?php include "../../inc/footer.php"; ?>
</body>
</html>