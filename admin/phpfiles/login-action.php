<?php session_start();
 
require "../conn.php";
if($_POST['username'] && $_POST['password'])
{
	$username=$_POST['username'];
	$password=$_POST['password'];
	
//Sql Query for Sign In...
$sql="select * from login where username='$username'";

$smt= mysqli_query($conn,$sql);

	if($rs=mysqli_fetch_assoc($smt))
	{
		if($password==$rs['password'])
		{
			//Creating Session...
			
			$_SESSION['username'] = $rs['username'];
			$_SESSION['password']=$rs['password'];
			$_SESSION['role']=$rs['role'];
			session_write_close();
			echo "Login";
			}
			else
			{
				echo'<div class="alert alert-danger">
				<strong>Required !</strong> Invalid password
			  </div>'.mysqli_error($conn);
			}
	}

	else
	{
		echo'<div class="alert alert-danger">
		<strong>Required !</strong> Invalid username
	  </div>'.mysqli_error($conn);
	}
}
else
{
	echo'<div class="alert alert-danger">
    <strong>Required !</strong> Please enter username and password.
  </div>';
}

?>