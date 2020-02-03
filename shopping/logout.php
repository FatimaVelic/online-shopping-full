<?php

/*
Name:           Fatima Velic
Course:         CS412 Web application development
Assignment:     Drink2Drink - tea and coffee online store. 
Due date:       January 10th, 2020 - final version
last modified:  January 8th, 2020
Purpuse:        Page runs when user clicks on logut button.
*/

session_start();
include("includes/config.php");
$_SESSION['login']=="";
date_default_timezone_set('Asia/Kolkata');
$ldate=date( 'd-m-Y h:i:s A', time () );
mysqli_query($con,"UPDATE userlog  SET logout = '$ldate' WHERE userEmail = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");
session_unset();
$_SESSION['errmsg']="You have successfully logout";
?>
<script language="javascript">
document.location="index.php";
</script>
