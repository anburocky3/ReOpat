<?php
include "../../inc/db.php";
echo '<link rel="stylesheet" href="../../externs/bs/css/bootstrap.css" />';
include '../../inc/header.php';

if($con)
{
	$id = $_POST['id'];
	$pwd = md5($_POST['pwd']);
	$sql = "select * from vteam where vid='".$id."' AND vpwd='".$pwd."'";
	if($result = mysqli_query($con,$sql))
	{
		$row = mysqli_num_rows($result);
		if($row == 1)
			{
			session_start();
			$_SESSION['id'] = $id;
			$_SESSION['vlogged'] = '1';
			$_SESSION['frole'] = 'vt';
			header ("Location: docverify.php");		
			}
			else {
				echo '<div class="container">
		        <div align="center">
				<h3>Verification ID or Password is Incorrect! </h3><p>(ERROR_CODE: XVP0001)</p>
				<button class="btn" type="button" onclick="javascript:history.back();">Go back</button>
				</div>
				</div>';
				}
	}
	else {
		echo '<div class="container">
		        <div align="center">
				<h3>Verification ID or Password is Incorrect!</h3>
				<button class="btn" type="button" onclick="javascript:history.back();">Go back</button>
				</div>
				</div>';
		}
}
include '../../inc/footer.php';
?>