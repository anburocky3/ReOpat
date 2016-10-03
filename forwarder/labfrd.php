<?php 

session_start();

$_SESSION['role'] = 'lab';

header ("Location: ../login"); 

?>