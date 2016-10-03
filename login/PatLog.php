<?php

include "../inc/db.php";
if(!$con)
{header('Location:../general forms/failform.php');
}
$patId=mysqli_real_escape_string($con,$_POST["pid"]);
$pwd=mysqli_real_escape_string($con,$_POST["pwd"]);
$sql="select ppassword,hashs from patient_details where pid = ".$patId;
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pwd,$row["hashs"]) == $row["ppassword"])
{
session_start();
$_SESSION['id'] = $patId;
header ("Location: ../patient/dashboard.php");

}
else
{ session_start();
$_SESSION['errormsg'] = 'Error. No match found !';
        header("Location:patientlog.php");  
}
mysqli_close($con);
?>