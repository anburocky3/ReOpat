<?php
include "../inc/db.php";
if(!$con)
{header('Location:../general forms/failform.php');
}
$phId=mysqli_real_escape_string($con,$_POST["phlid"]);
$pwd=mysqli_real_escape_string($con,$_POST["pwd"]);
$sql="select phpassword,hashs from pharmacist_details where phlicense_id = '".$phId."'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
if(crypt($pwd,$row["hashs"]) == $row["phpassword"])
{
session_start();
$_SESSION['id'] = $phId; 
header("Location:../pharmacy/pharmport.php");
}
else
{ session_start();
$_SESSION['errormsg'] = 'Oops! invalid login!';
        header("Location:pharlog.php");  
}

?>