<!DOCTYPE html>
<html>
<head>
<title>ReOpat - ReOstat</title>

<meta charset="utf-8">
<link rel="stylesheet" href="../externs/bs/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="jquery-ui.css"/>
<script type= "text/javascript" src = "../registration/state1.js"></script>
<script type= "text/javascript" src = "../registration/state2.js"></script>

<style>
#sec
{
border:1px solid #CCCCCC;
 border-radius:8px;
}

.asterisk_input:after {
content:"*"; 
color: #e32;
background-position: right top; 
margin: 0px 0px 0px -20px; 
font-size: xx-large; 
padding: 0 5px 0 0; }

</style>
</head>
<body style="background-color:#FAFAFA">
<?php include "../inc/header.php"; ?>
<form action="Reost.php" method="post"><br />
<h3> <center>ReOstat</center></h3><br /><br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div id="sec">
<fieldset>
<center><table>
<tr><td><br></td></tr>
<tr><td><span class="asterisk_input">Select State:&nbsp;</span></td><td><select onchange="print_city1('hcity', this.selectedIndex);" id="hstate" name ="hstate" class="form-control" required=""></select></td>
</tr><tr><td><br></td></tr> 
<tr><td><span class="asterisk_input">Select City/District:&nbsp;</span>  </td>
<td><select name ="hcity"  id="hcity" class="form-control" required=""></select>
        <script language="javascript">print_state1("hstate");</script></td> 
</tr><tr><td><br></td></tr></table></center></fieldset>
</div><br><br>
<center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
</div>
<div class="col-sm-3"></div>
</form>
<?php include "../inc/footer.php"; ?>
</body>
</html>