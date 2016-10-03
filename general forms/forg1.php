<?php 
include "../inc/db.php";
if(isset($_POST['submit'])){
	
$p = mysqli_real_escape_string($con, $_POST["security_pin"]);

$sql = "select * from patient_details where pid='".$_SESSION['pid']."'";
$result = mysqli_query($con,$sql);
if($result)
 {header("Location:forgotpass2.php");}
mysqli_close($con);
}
else {
	echo 'Submitting error...';
	}
?>




