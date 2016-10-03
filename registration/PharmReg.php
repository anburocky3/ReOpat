<?php
include "../inc/db.php";

$pharmacyname=$_POST["phname"];

$licenseid=$_POST["plid"];

$username=$_POST["puname"];	

$password=$_POST["pass1"];	

$doorno=$_POST["pdno"];	

$street=$_POST["pstr"]; 	

$area = $_POST["parea"];

$state=$_POST["cstate"];

$district=$_POST["ccity"]; 	

$pincode=$_POST["pcode"]; 	

$phonenumber=$_POST["pph"];	

$emailid=$_POST["pem"];

$cost = 10;

$salt = strtr(base64_encode(mcrypt_create_iv(16, MCRYPT_DEV_URANDOM)), '+', '.');

$salt = sprintf("$2a$%02d$",$cost).$salt;

$hash = crypt($password, $salt);

$sq = "insert into pharmacist_details(phlicense_id,pharm_name,phuser_name,phdoor_no,phstreet,pharea,phcity,phpin_code,phstate,phphone
,phemail,phpassword,hashs) 
values (".$licenseid.",'".$pharmacyname."','".$username."','".$doorno."','".$street."','".$area."','".$district."','".$pincode."',
'".$state."','".$phonenumber."','".$emailid."','".$hash."','".$salt."')";

$result = mysqli_query($con,$sq);

if($result)
{
	header ("Location: ../general forms/loginred.php");
}
else {
	echo 'Some error caused!';
	}
mysqli_close($con);
?>

