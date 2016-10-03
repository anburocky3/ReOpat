<?php
echo '<link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />';
include "../../inc/db.php";
include "../../inc/header.php" ;
if(isset($_POST['submit'])){
if($_SESSION['frole']=='vt') {
$sql= "DELETE FROM doctor_details WHERE did = ".$_SESSION['did']."";
}
if($_SESSION['frole']=='xxadmin') {
$sql= "DELETE FROM patient_details WHERE pid = ".$_SESSION['ids'];
}
if($_SESSION['frole']=='xxadmin') {
$sql= "DELETE FROM lab_details WHERE llicense_id = '".$_SESSION['ids']."'";
}
if($_SESSION['frole']=='xxadmin') {
$sql= "DELETE FROM pharmacist_details WHERE phlicense_id = '".$_SESSION['ids']."'";
}
if($_SESSION['frole']=='xxadmin') {
$sql= "DELETE FROM vteam WHERE vid = ".$_SESSION['ids'];
}
if(mysqli_query($con,$sql))
{
	echo '<h1>Great! Successfully deleted the DOCTOR ID : '.$_SESSION['did'].'</h1>';
	header( "refresh:5;url=docverify.php" );
}
}
else {
	echo 'Error in submitting';
	}

include '../../inc/footer.php'; 
?>