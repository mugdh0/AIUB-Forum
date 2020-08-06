<?php
include '../models/database.php';
include '../controller/loginController.php';
?>
<html>
	<head>
	<meta charset="utf-8" ></meta>
	<link rel="stylesheet" href="loginStyle.css">
	</head>

	<body>

<?php
        echo "
		<form method='post' action='".getLoginDetails($conn)."' class='center'>
			<div class='s1'>
			<span><b>AIUB Forum</b></span>
			</div>
			<div class='s2'>
			<span >Join, Share and Discuss</span>
			</div>
			<div class='frame'>

			<span ><b>Sign In</b></span>
			<input type='text' name='uid' placeholder='User Name:' required >
		  <input type='password' name='pass' placeholder='Password:' required >
			<button type='submit' name='submitLogin'> Login </button>
			<span >Don't have account? <b><a href='../views/userRegistration.php'>Register </a></b></span>
			</div>

		</div>
		</form>";

        /*	if(isset($_SESSION['id'])){
                echo "<form method='post' action='../views/moderatorHome'>
                <input type'hidden' type>
                            </form>"
            }else{
                echo "not login";
            }*/
?>
	</body>
</html>
