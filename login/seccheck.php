<?php

include "../inc/db.php";
include "../inc/header.php";

$pi = mysqli_real_escape_string($con,$_POST["pin"]);
$sql = "select pin,hash1 from doctor_details where did = '".$_SESSION['did']."'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pi,$row['hash1']) == $row['pin'])
{
	header ("Location: ../doctor/dashboard");
}
else
{
	header ("Location: doctorseclog.php");
}

?>