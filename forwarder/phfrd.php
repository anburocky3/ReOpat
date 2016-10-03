<?php 

session_start();

$_SESSION['role'] = 'phr';

header ("Location: ../login"); 

?>