<?php
include "../inc/db.php";
if(!$con)
{
	header("Location : ../general forms/failform.php");
}

$docId = mysqli_real_escape_string($con,$_POST["docid"]);
$pwd = mysqli_real_escape_string($con,$_POST["pwd"]);
$sql = "select dpassword,hash from doctor_details where did = '".$docId."'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pwd,$row["hash"]) == $row["dpassword"])
{
session_start();
$_SESSION["did"] = $docId;
$_SESSION['dlogin'] = "1";
header ("Location: doctorseclog.php"); 
}

else
{ session_start();
$_SESSION['errormsg'] = 'Oops! invalid login!';
      header("Location:dlogin.php");  
}	
mysqli_close($con);
?>