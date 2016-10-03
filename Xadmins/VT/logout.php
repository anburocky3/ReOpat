<?php
 session_start();
 session_destroy();
	echo '<script>alert("You have successfully Logged OUT");</script>';
	header('Location: index.php');
	
?>