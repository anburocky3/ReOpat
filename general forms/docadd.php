<html>
<head>
<title>success</title>
<link rel="stylesheet" type="text/css" href="../externs/bs/css/bootstrap.css" />
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
<div id="abc">
<fieldset>
<legend>
<span style="color: red;" class="glyphicon glyphicon-thumbs-up"></span> 
 Candidate is successfully added to  Doctor Table
</legend>
<center>
<table>
<tr><td>Doctor ID:</td><td><label><?php echo $_SESSION['did'] ?></label></td></tr>
</table><br />
<a href = "../Xadmins/VT/docverify.php"><button class="btn btn-success">OK</button></a>
</center>
</fieldset>
</div>
<?php include "../inc/footer.php"; ?>
</body>
</html>