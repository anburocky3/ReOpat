<? php 
include"../inc/entery.php";
$con=mysqli_connect($connect["host"],$connect["username"],$connect["password"],$connect["db"]);
$email=$_POST["email"];
$patid=$_POST["pid"];
$sql="";
$result=mysqli_query($sql,$con);
mysqli_close($con);
?>