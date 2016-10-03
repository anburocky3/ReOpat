<?php
include "../inc/db.php";
$laboratoryname = $_POST["Lname"];  
$username = $_POST["Lusername"];
$password = $_POST["pass1"];
$doorno = $_POST["ldn"];	
$street = $_POST["lst"]; 	
$state = $_POST["hstate"]; 	
$city = $_POST["hcity"]; 	
$pincode = $_POST["hcity"];	
$licenseID = $_POST["LliID"]; 	
$phoneno = $_POST["Lphone"];	
$email = $_POST["Lemail"]; 	
$facilities = implode(',', $_POST['m']);
$cost = 10;

$salt = strtr(base64_encode(mcrypt_create_iv(16, MCRYPT_DEV_URANDOM)), '+', '.');

$salt = sprintf("$2a$%02d$",$cost).$salt;

$hash = crypt($password, $salt);

$result = mysqli_query($con,"insert into lab_details(llicense_id ,lab_name,luser_name,ldoor_no,lstreet,lcity,lpin_code,lfacilities,lphone,lemail,lpassword,hashs)
values (".$licenseID.",'".$laboratoryname."','".$username."','".$doorno."','".$street."','".$city."','".$pincode."','".$facilities."','".$phoneno."','".$email."','".$hash."','".$salt."')");
if($result)
{
header("Location:../general forms/loginred.php");
}
else {
	echo 'Error occured';
	}
mysqli_close($con);
?>