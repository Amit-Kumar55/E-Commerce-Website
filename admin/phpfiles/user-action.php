<?php session_start();
 
require "../conn.php";
if($_POST['username'] && $_POST['password'])
{

	$username=$_POST['username'];
	$password=$_POST['password'];
	$role=$_POST['role'];
	$contact=$_POST['contact'];
	
					
//Sql Query for Sign In...
$sql=" INSERT INTO tbl_users(username,role,contact,password)VALUES('$username','$role','$contact','$password')";

$res=mysqli_query($conn,$sql);
if($res)
		{
		   echo'<div class="alert alert-success">
		    <strong>Success !</strong> User Added Successfully
	        </div>'.mysqli_error($conn);
        }
	else
{
	echo'<div class="alert alert-danger">
    <strong>Failed !</strong> Sorry user cant be added 
  </div>';
}
}

?>