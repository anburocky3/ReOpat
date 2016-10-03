<?php
include "../inc/db.php";
if(isset($_POST['submit']))
{
$sql = "INSERT INTO doctor_details(fname,lname,aadhar_id,dob,gender,did,email_id, ph_no,specialization,qualification,
ques1,ans1,ques2,ans2,c_name,c_doorno,c_area, c_street,c_state, c_city, c_zipcode,c_mobile, cfrom, cto, cam, cpm, h_name,
h_doorno,h_area,h_street,h_city,h_zipcode,h_state,h_ph,hfrom,hto,ham,hpm,verified) VALUES
(
'".$_POST['fname']."',
'".$_POST['lname']."',
".$_POST['daid'].
",'".$_POST['dob'].
"','".$_POST['gender'].
"',".$_POST['did'].
",'".$_POST['dmail'].
"','".$_POST['dmobile']."',
'".implode(',', $_POST['s']).
"','".$_POST['dqualification'].
"','".$_POST['securityquestion1'].
"','".$_POST['securityanswer1'].
"','".$_POST['securityquestion2'].
"','".$_POST['securityanswer2'].
"','".$_POST['cnm'].
"','".mysqli_real_escape_string($_POST['cdn']).
"','".$_POST['car'].
"','".$_POST['cst'].
"','".$_POST['cstate'].
"','".$_POST['ccity'].
"','".$_POST['ccode'].
"','".$_POST['cph'].
"','".$_POST['Acfrom'].
"','".$_POST['Acto'].
"','".$_POST['fr'].
"','".$_POST['to'].
"','".$_POST['hnm'].
"','".$_POST['hdn'].
"','".$_POST['har'].
"','".$_POST['hst'].
"','".$_POST['hstate'].
"','".$_POST['hcity'].
"','".$_POST['hcode'].
"','".$_POST['hph'].
"','".$_POST['Ahfrom'].
"','".$_POST['Ahto'].
"','".$_POST['hfr'].
"','".$_POST['hto'].
"',0)";
$result = mysqli_query($con,$sql);
if($result)
{
header("Location:../general forms/loginred.php");
}
else {
	echo 'ERROR OCCURED';
	}

}
else {
	echo  'ESSET ERROR';
	}

?>