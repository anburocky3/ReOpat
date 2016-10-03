<?php 
session_start();

if($_SESSION['role'] == 'doc')
{
	header("Location: doctorlog.php");
}
if($_SESSION['role'] == 'pat')
{
	header("Location: patientlog.php");
}
if($_SESSION['role'] == 'phr')
{
	header("Location: pharlog.php");
}
if($_SESSION['role'] == 'lab')
{
	header("Location: laboratorylog.php");
}


?>