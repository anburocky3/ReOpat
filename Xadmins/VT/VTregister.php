<?php 
include '../../inc/db.php';
if(isset($_POST['submit']))
{
$fname =mysqli_real_escape_string($con, $_POST['fname']);
$lname = mysqli_real_escape_string($con, $_POST['lname']);
$state =mysqli_real_escape_string($con, $_POST['state']);
$district =mysqli_real_escape_string($con, $_POST['district']);
$password = md5(mysqli_real_escape_string($con, $_POST['password']));

$sql = 'INSERT INTO `vteam`(`fname`, `lname`, `vid`, `state`, `district`, `vpwd`) 
VALUES ("'.$fname.'","'.$lname.'","","'.$state.'","'.$district.'","'.$password.'")';
if(mysqli_query($con, $sql)){
	 echo '<script>alert("Import Successfull");</script>';
	 header('Location: VTregister.php');
	}
	else {
		echo 'Error in updating';
		}
}

else {
?>
<html>
  <head>
  <title>Verification Team Registration</title>
  <link rel="stylesheet" type="text/css" href="../../externs/bs/css/bootstrap.css" />

  </head>
  <body>
  <div class="container">
  <h3>Registration for Verification Team</h3>
  <form method="post" action="">
      <p>First Name : </p><input type="text" name="fname" />
      <p>Last Name : </p><input type="text" name="lname" />
	  <p>State : </p><input type="text" name="state" />
      <p>District : </p><input type="text" name="district" />
      <p>Password : </p><input type="password" name="password" />
      <input type="submit" class="btn btn-success" name="submit" value="Submit" />
  </form>
  </div>
  </body>
 </html>
 <?php 
}
 ?>