<?php

/*
Name:           Fatima Velic
Course:         CS412 Web application development
Assignment:     Drink2Drink - tea and coffee online store. 
Due date:       January 10th, 2020 - final version
last modified:  January 8th, 2020
Purpuse:        Script runs when Logout button is chosen from the menu bar. 
*/

session_start();
$_SESSION['alogin']=="";
session_unset();
//session_destroy();
$_SESSION['errmsg']="You have successfully logout";
?>
<script language="javascript">
document.location="index.php";
</script>
