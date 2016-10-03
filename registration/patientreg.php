<?php
include "../inc/db.php";
if(isset($_POST['submit'])){
$UserName = mysqli_real_escape_string($con, $_POST["uname"]);
$password = mysqli_real_escape_string($con, $_POST["pass1"]);
$FirstName = mysqli_real_escape_string($con, $_POST["Fname"]);
$LastName = mysqli_real_escape_string($con, $_POST["Lname"]);
$aadhar_id = mysqli_real_escape_string($con, $_POST["aadharid"]);	
$DateofBirth = mysqli_real_escape_string($con, $_POST["dob"]);	
$Gender = mysqli_real_escape_string($con, $_POST["Gender"]); 
$MaritalStatus = mysqli_real_escape_string($con, $_POST["Mstatus"]);
$Doorno = mysqli_real_escape_string($con, $_POST["Aline1"]);	
$Street = mysqli_real_escape_string($con, $_POST["Aline2"]);
$area  = mysqli_real_escape_string($con, $_POST["area"]); 	
$State = mysqli_real_escape_string($con, $_POST["hstate"]); 
$City = mysqli_real_escape_string($con, $_POST["hcity"]);
$Zip = mysqli_real_escape_string($con, $_POST["Postal"]);
$Phone = mysqli_real_escape_string($con, $_POST["phone"]); 	
$Email = mysqli_real_escape_string($con, $_POST["email"]);	
$BloodGroup = mysqli_real_escape_string($con, $_POST["bldgrp"]);
$blood = mysqli_real_escape_string($con, $_POST["blood"]);
$cost = 10;
$salt = strtr(base64_encode(mcrypt_create_iv(16, MCRYPT_DEV_URANDOM)), '+', '.');

$salt = sprintf("$2a$%02d$",$cost).$salt;

$hash = crypt($password, $salt);

$sql="insert into patient_details (uname, ppassword, fname, lname, aadhar_id,dob,gender,m_status,p_doorno,p_street,p_area,p_state,p_city,p_zipcode,ph_no,email_id,blood,donate,hashs)
values('".$UserName."','".$hash."','".$FirstName."','".$LastName."','".$aadhar_id."','".$DateofBirth."','".$Gender."','".$MaritalStatus."','".$Doorno."','".$Street."','".$area."','".$State."','".$City."','".$Zip."','".$Phone."',
'".$Email."','".$BloodGroup."','".$blood."','".$salt."')";
if(mysqli_query($con,$sql))
{
	 
header ("Location: pattable.php?q=".$aadhar_id);
mysqli_close($con);
}
else {
echo  'Some Error occured!';
}

}
else {
	echo 'INVALID ACCESS';
	}
?>


