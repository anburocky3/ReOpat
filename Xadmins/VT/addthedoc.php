<?php
include "../../inc/db.php";
session_start();
$pass = rand(100000,999999);
$pin = rand(1000,9999);

$cost = 10;

$salt = strtr(base64_encode(mcrypt_create_iv(16, MCRYPT_DEV_URANDOM)), '+', '.');

$salt = sprintf("$2a$%02d$",$cost).$salt;

$passhash = crypt($pass, $salt);


$pinsalt = strtr(base64_encode(mcrypt_create_iv(16, MCRYPT_DEV_URANDOM)), '+', '.');

$pinsalt = sprintf("$2a$%02d$",$cost).$pinsalt;

$pinhash = crypt($pin, $pinsalt);

$msg = "
<html>
<body>
Greetings from ReOpat,<br> Hello this mail is to verify your mail id and to inform you that<br>you have been successfully verified & registered at ReOpat<br><br>The following is the PIN and PASSWORD that you can use temporary untill you change your PIN and PASSWORD<br>
<b>PASSWORD : ".$pass."</b><br><b>PIN : ".$pin."</b><br>
<b style='color:red;'>Please keep your PIN and PASSWORD secure. if you think it is misused? kindly report to us immediately</b><br>
</body>
</html>
";
$sql = "select email_id from doctor_details where did = ".$_SESSION['did'];
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
$to = $row['email_id'];
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$sql = "UPDATE doctor_details SET dpassword = '".$passhash."' , pin = '".$pinhash."' ,hash='".$salt."', hash1= '"
.$pinsalt."' , 
verified = 1 ,verifiedby = '".$_SESSION['id']."'
 WHERE did = ".$_SESSION['did'];
 if(mysqli_query($con,$sql))
 {
 	mail($to,"Verfication Mail",$msg,$headers);
 	header("Location: ../../general forms/docadd.php");
 }
?>