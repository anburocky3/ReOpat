<?php 
include "../htconfig/entery.php";
$con=mysqli_connect($connect["$host"],$connect["$username"],$connect["$password"],$connect["db"]);

$ans=$_POST["answer"];
$ans1=$_POST["answer1"];

$sql = "select * from doctor_details where ans1='".$ans."' AND ans2=".$ans1.;
$result = mysqli_query($con,$sql);
if($result)
 {
 header("Location:forgotpass3.php");
 }
mysqli_close($con);
?>