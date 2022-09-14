<?php

$conn =mysqli_connect("localhost","root","","admin_db");
	if($conn!=true)
	{
		echo "Connection failed.".mysqli_error($conn);
		exit();
	}

?>
