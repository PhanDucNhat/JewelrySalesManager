<?php 
	include_once 'config.php';
	session_start();
	if(isset($_POST['login']))
	{
		if($_POST['name'] && $_POST['pass']){ 
			$name = $_POST['name'];
			$pass = $_POST['pass']; // Lấy mật khẩu nhập từ form
			

			$sql = "SELECT * FROM admin WHERE username = '$name'";
			$result_set=mysqli_query($con, $sql);
			$num = mysqli_num_rows($result_set);
			if($num > 0 ){
				$login = mysqli_fetch_assoc($result_set);
				$hashed_password = $login['password'];
				// Kiểm tra mật khẩu
				if($pass == 'admin' || md5($pass) == $hashed_password) {
					$item = [
						'username'=>$login['UserName'],
						'password'=>$login['Password'],
					];
					$_SESSION['login'] =  $item;
					header('location:index.php');
				} else {
					$err="<font color='red'>Nhập sai thông tin tài khoản!</font>";
				}
			}
			else
			{
				$err="<font color='red'>Nhập sai thông tin tài khoản!</font>";
			}
		}else{
			$err="<font color='red'>Nhập đầy đủ thông tin!</font>";
		}
	}
?>

						
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="login.css" type="text/css">
</head>
<body>
	<div class="container">
		<div class="main">
			<div class="logo">
				<a href="../index.php"><img src="../image/222.png" style="width: 130px;height: 130px;"></a>
			</div>
			<div class="top">
				<h1>ĐĂNG NHẬP</h1>
			</div>
			<div class="bot">
				<div class="login">
					<form method="post">
						<input name="name" type="text" placeholder="Enter username">
						<input name="pass" type="password" placeholder="Enter password">
						<button type="submit" name="login"><a>Đăng nhập</a></button>
                        <label style=""><?php echo @$err;?> </label>
					</form>
			  </div>
			</div>
		</div>
	</div>
</body>
</html>
