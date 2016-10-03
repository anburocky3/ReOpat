<?php
 session_start();
 session_destroy();
	echo 'Successfully logging off';
	header('Location: ../login/patientlog.php');
?>