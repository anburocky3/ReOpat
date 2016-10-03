<!DOCTYPE html>
<html>
<head>
<title>ReOpat - Doctor - Edit Profile</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type= "text/javascript" src = "state1.js"></script>
<script type= "text/javascript" src = "state2.js"></script>
<script type="text/javascript" src="validation.js" ></script>
</head>
<body style="background-color: #FAFAFA;">
<?php include "../inc/header.php" ;

$_SESSION['id'] = "123";
$con = mysqli_connect($connect["host"],$connect["username"],$connect["password"],$connect["db"]);
$sql = "SELECT * FROM lab_details WHERE pid = ".$_SESSION['id'];
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($result);
?>
<div style="background-color:white;" class="container">
<div class="row">
<div class="col-sm-12">
<br />
<br />
<br />
<div  style="border: 1px solid #C1C1C1; width:500px; border-radius:8px; padding-top:10px; padding-bottom:20px; padding-left:20px; padding-right:20px;">
<fieldset>
<legend align="center"><span style="color:red;" class="glyphicon glyphicon-exclamation-sign"> Security Changes</legend>
<center><a href=".php?lid=123">Change Password</a><br />

</fieldset>
</div>
<br />
<div>
<form action="" method="post">
<body>
<?php
echo '
<div class="container colr" >
<div class="row">
<div class="col-sm-3"></div>
<div style="margin-left:25px;" class="col-sm-6">
<table>
<tr><td>Pharmacy Name: </td><td><input type="text" value="'.$row['pharm_name'].'"  class="form-control" name="phname"  required="" /></td></tr><tr><td><br/></td></tr>
<tr><td>License Id: </td><td> <input type="text" value="'.$row['phlicense_id'].'" onkeypress="return isNumber(event)" class="form-control" name="plid" maxlength="" required/></td></tr><tr><td><br/></td></tr>
<tr><td>User name: </td><td><input type="text" value="'.$row['phuser_name'].'" class="form-control" name="puname"  required=""/></td></tr><tr><td><br /></td></tr>

<tr><td>Door No: </td><td><input type="text" value="'.$row['phdoor_no'].'" class="form-control" name="pdno" /></td></tr><tr><td><br/></td></tr>
<tr><td>Street: </td><td><input type="text" value="'.$row['phstreet'].'" class="form-control" name="pstr" /></td></tr><tr><td><br/></td></tr>
<tr><td>Area: </td><td><input type="text" value="'.$row['pharea'].'" class="form-control" name="pstr" /></td></tr><tr><td><br/></td></tr>

<tr><td>
State:</td><td><select class="form-control" value="'.$row['phstate'].'" onchange="print_city1(\'ccity\', this.selectedIndex);" id="cstate" name ="cstate"></select></td>
</tr><tr><td><br></td></tr> 
<tr><td>

City/District: </td>
<td><select name ="ccity" value="'.$row['phcity'].'" id="ccity" class="form-control"></select>
        <script language="javascript">print_state1("cstate");</script></td> 
</tr><tr><td><br></td></tr>
<tr><td>Pin/Zip Code: </td><td><input type="text"value="'.$row['phpin_code'].'" class="form-control" name="pcode"></td></tr><tr><td><br/></td></tr>

<tr><td>Phone Number: </td><td><input type="text" value="'.$row['phphone'].'" onkeypress="return isNumber(event)" class="form-control" name="pph" maxlength="10"></td></tr><tr><td><br/></td></tr>
<tr><td>E-mail id: </td><td><input type="text" value="'.$row['phemail'].'"  id="txtEmail" class="form-control" name="pem"></td></tr><tr><td><br/></td></tr>
</table>
<br />
<center><button type="submit" class="btn btn-success" onclick="checkEmail();">Submit</button>
<button style="margin-left:10px;" type="Reset" class="btn btn-danger">Reset</button>
<button class="btn btn-info" onclick="fun()">Back</button></center>

</center>
</div>
</div>
<br>
</div>'; ?>
</form>
<?php include "../inc/footer.php"; ?>
</body>
</html>