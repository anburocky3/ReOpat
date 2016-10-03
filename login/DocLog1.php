<?php
include "../inc/header.php";
include "../inc/db.php";
if(!$con)
{
	header("Location : ../general forms/failform.php");
}
$_SESSION['logintrue'] = mysqli_real_escape_string($con, $_POST['submit']);
if(isset($_SESSION['logintrue']))
{
$docId = mysqli_real_escape_string($con,$_POST["docid"]);
$pwd = mysqli_real_escape_string($con,$_POST["pwd"]);
$sql = "select dpassword,hash from doctor_details where did = '".$docId."'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pwd,$row["hash"]) == $row["dpassword"])
{
$_SESSION["did"] = $docId;
header ("Location: ../doctor/doctorseclog.php"); 
}

else
{ session_start();
$_SESSION['errormsg'] = 'Error. No match found !';
      header("Location:doctorlog.php");  
}	

mysqli_close($con);
}
{
		echo 'Invalid Access';
	}
?>