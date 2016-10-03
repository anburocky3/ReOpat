<?php

include "../inc/db.php";
session_start();
$sql= "UPDATE patient_details SET p_doorno ='".$_POST['dn']."',  p_area='".$_POST['a']."', p_street='".$_POST['st']."', p_zipcode='".$_POST['cd']."', p_city='".$_POST['hcity']."', p_state='".$_POST['hstate']."', ph_no='".$_POST['ph']."', email_id='".$_POST['mail']."' where pid = '".$_SESSION['id']."'";
if(mysqli_query($con,$sql))
{
	
	header("Location: dashboard.php");
		
}
else
{
	echo 'failed to update profile';
	echo 'ERROR';
}

?>