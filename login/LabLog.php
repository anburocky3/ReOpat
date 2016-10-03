<?php
include "../inc/db.php";
if(!$con)
{header('Location:../general forms/failform.php');
}
$llId=mysqli_real_escape_string($con,$_POST["llid"]);
$pwd=mysqli_real_escape_string($con,$_POST["pwd"]);
$sql="select lpassword,hashs,lab_name from lab_details where llicense_id = ".$llId;
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pwd,$row["hashs"]) == $row["lpassword"])
{
session_start();
$_SESSION['lab_id'] = $llId;
$_SESSION['lab_name'] = $row['lab_name'];
header('Location: ../lab/labhome.php'); 
}
else
{ session_start();
$_SESSION['errormsg'] = 'Oops! Invalid login !';
        header("Location:laboratorylog.php");  
}
mysqli_close($con);
?>