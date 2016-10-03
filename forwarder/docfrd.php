<?php 

session_start();

$_SESSION['role'] = 'doc';

header ("Location: ../login/dlogin.php"); 

?>