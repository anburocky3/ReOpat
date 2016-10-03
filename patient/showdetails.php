<html>
<head>
<title>ReOpat - Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
<?php 
include "../inc/db.php";
include "../inc/header.php";
$sql = "select * from p_".$_SESSION['id']." where rid = ".$_GET['q'];
$rs = mysqli_query($con,$sql);
$rw = mysqli_fetch_assoc($rs);
?>
<div class="container-fluid">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<table class="table table-bordered table-hover" style="margin-top:20px;">
<?php
echo'
<thead style="font-weight:bold;text-align:center;">
<tr>
<td>Queries</td>
<td>Result</td>
</tr>
</thead>
<tr>
<td>Chief Complaint</td><td>'.ucwords($rw['chief_Complaint']).'</td></tr>
<tr><td>Location </td><td>'.$rw['location'].'</td></tr>
<tr><td>Quality</td><td>'.$rw['quality'].'</td></tr>
<tr><td>Severity </td><td>'.$rw['severity'].'</td></tr>
<tr><td>Duration</td><td>'.$rw['duration'].'</td></tr>
<tr><td>Timing</td><td>'.$rw['timing'].'</td></tr>
<tr><td>Context</td><td>'.$rw['context'].'</td></tr>
<tr><td>Modifying Factors</td><td>'.$rw['modifying_Factors'].'</td></tr>
<tr><td>Associated Signs & Symptoms</td><td>'.$rw['ass'].'</td></tr>
<tr><td>Blood Pressure</td><td>'.$rw['bloodpressure'].'</td></tr>
<tr><td>Heart Rate</td><td>'.$rw['heart_rate'].'</td></tr>
<tr><td>Respiratory Rate</td><td>'.$rw['respiratory_rate'].'</td></tr>
<tr><td>Remperature</td><td>'.$rw['temperature'].'</td></tr>
<tr><td>Height</td><td>'.$rw['height'].'</td></tr>
<tr><td>Weight</td><td>'.$rw['weight'].'</td></tr>
<tr><td>Physical Exam</td><td>'.$rw['physical_exam'].'</td></tr>
<tr><td>Planned</td><td>'.$rw['planned'].'</td></tr>
<tr><td>Therapeutics</td><td>'.$rw['therapeutics'].'</td></tr>
<tr><td>Other Recommendation</td><td>'.$rw['other_Recommendation'].'</td></tr>
<tr><td>Emergency Response</td><td>'.$rw['emergency_Response'].'</td></tr>
<tr><td>Work Related</td><td>'.$rw['workrelated'].'</td></tr>
<tr><td>Medical Condition</td><td>'.$rw['medical_condition'].'</td></tr>
<tr><td>Diagnosis</td><td>'.$rw['diagnosis'].'</td></tr>
<tr><td>Body Region</td><td>'.$rw['body_region'].'</td></tr>
';
?>
</table>
</div>
<div class="col-sm-2">
<button type="button" onClick="window.location.href='dashboard.php'" class="btn btn-info" style="margin-top:20px;">
<i class="glyphicon glyphicon-backward"></i>&nbsp;go Back</button>
</div>
</div>
</body>
</html>