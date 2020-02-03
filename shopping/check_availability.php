<?php 

/*
Name:           Fatima Velic
Course:         CS412 Web application development
Assignment:     Drink2Drink - tea and coffee online store. 
Due date:       January 10th, 2020 - final version
last modified:  January 8th, 2020
Purpuse:        Page checks if email is already used in the database. 
*/

require_once("includes/config.php");
if(!empty($_POST["email"])) {
	$email= $_POST["email"];
	
		$result =mysqli_query($con,"SELECT  email FROM  users WHERE  email='$email'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
