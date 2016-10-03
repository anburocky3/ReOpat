<?php
include "../inc/db.php";
if($con)
{
$pats = $_GET['q'];
$sq = "select pid from patient_details where aadhar_id = '".$pats."'";
$getsql = "SELECT email_id, pid, fname, lname from patient_details WHERE aadhar_id = '".$pats."'";
$getsqlq  = mysqli_query($con, $getsql);
$info = mysqli_fetch_assoc($getsqlq);
$resultr = mysqli_query($con,$sq);
$rown = mysqli_fetch_assoc($resultr);
if($resultr)
{
$name = "p_".$rown['pid'];
$sql="create table ".$name."(
rid int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
pid  varchar (1000),
visit_Date date,	
did varchar(10),
phiysician varchar(25),
chief_Complaint varchar(1000),	
location varchar(1000),	
quality	varchar(1000),
severity varchar(1000),	
duration varchar(1000),	
timing	varchar(25),
context	varchar(1000),
modifying_Factors varchar(1000),	
ass varchar(1000),	
bloodpressure varchar(100),	
heart_rate varchar(100),		
respiratory_rate varchar(100),	
temperature varchar(100),		
height varchar(25),		
weight varchar(25),		
physical_exam	varchar(1000),	
prescription LONGTEXT,			
therapeutics TEXT,
other_Recommendation TEXT,
emergency_Response TEXT,
workrelated TEXT,
medical_condition TEXT,
diagnosis LONGTEXT,
required_scan TEXT,
body_region TEXT,
planned int(1))";
$result=mysqli_query($con,$sql);


$labname = "l_".$rown['pid'];
$sql1="CREATE TABLE ".$labname." (
lrid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
rid INT ,
lab_id VARCHAR(25),
visit_date	VARCHAR(20),
image VARCHAR( 25 ) ,
result TEXT,
uploaded varchar(2)
)";

$result1 = mysqli_query($con,$sql1);
if($result)
{
	if($result1){
header("Location:../general forms/psendmail.php");
$msg = "
<html>
<body>
Greetings from ReOpat,<br> Hello ".$info['fname']." ".$info['lname']." you have been successfully registered with us! You can check your Medical details, Medical history and so on! by logging into ReOpat Website with your PATIENT ID: ".$rown['pid']."<br> 
regards,<br>
<b>ReOpat</b>
<b style='color:red;'>Please keep your Patient ID secret. if you think it is misused? kindly report to us immediately</b><br>
</body>
</html>
";
$to = $info['email_id'];
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
mail($to,"Welcome to ReOpat Space",$msg,$headers);
}
}
mysqli_close($con);
}
else
{
echo 'Mistake in Table creation';
}
}
else{
header("Location: ../general forms/failform.php");
}
?>