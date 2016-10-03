<html>
<head>
<title>Successfull change of password</title>
<link rel="stylesheet" href="../externs/bs/css/bootstrap.min.css">
<style>
#abc{
margin:50px auto;
width:600px;
border:1px solid black;
padding-bottom: 20px;
padding-left: 20px;
padding-right: 20px;
padding-top: 10px;
border-radius: 8px;
background-color: white;
}
</style>
</head>
<body style="background-color: #FAFAFA">
<?php include "../inc/header.php"; ?>
<form action="" method="post">

<div id="abc">
<fieldset>
<legend>
<span style="color: red;" class="glyphicon glyphicon-thumbs-up"></span> 
&nbsp;Password is changed successfully!!!
</legend>
<center>
<table>
<tr><td>***For security reasons change your password periodically***</td><td><label></label></td></tr>
<tr><td>You will be redirected to Reopat homepage!!!</td><td><label></label></td></tr>
<?php header('refresh:5;url=../'); ?>
</table>
</center>
</fieldset>
</div>
</form>
<?php include "../inc/footer.php"; ?>
</body>
</html>