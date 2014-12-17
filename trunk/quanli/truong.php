<?php

require_once "config.php";
$link = mysqli_connect($db_host, $db_user, $db_pass);
mysqli_select_db($link,$db_name);
mysqli_query($link,"SET NAMES utf8"); //connect in decode utf8
//define("DEBUG",TRUE);
echo "<html><head><title>Trường học</title></head><body>";
if (isset($_POST['search'])) { //tim kiem
	$url=$_POST['url'];
	$email=$_POST['email'];
	
	$sql="";
	if ($url)
		$sql.="trangweb='$url'";
	if ($email) {
		if ($sql) $sql.= " or ";
		$sql.= "email='$email'";
	}
	if ($sql) {
		$sql="select * from truonghoc where ".$sql;
		$ret=mysqli_query($link,$sql);
		if ($row=mysqli_fetch_array($ret)) {
			echo "Đã có:";
			echo "<br/>Tên: ".$row['tentruong'];
			echo "<br/>Địa chỉ: ".$row['diachi'];
			echo "<br/>Điện thoại: ".$row['sodienthoai'];
			echo "<br/>Email: ".$row['email'];
			echo "<br/>Trang web: ".$row['trangweb'];
			echo "<br/><a href='truong.php'>Thêm trường khác</a>";
			redirect("truong.php",10);
		} else {
			echo "Chưa có. Thêm vào: <form action='truong.php' method='post'>";
			echo "<br/>Tên trường: <input type='text' name='ten' size='100'><br/>";
			echo "<br/>Địa chỉ: <input type='text' name='diachi' size='100'><br/>";
			echo "<br/>Điện thoại: <input type='text' name='dienthoai' size='11'><br/>";
			echo "<br/>Email: <input type='text' name='email' size='50' value='$email'><br/>";
			echo "<br/>Trang web: <input type='text' name='web' size='150' value='$url'><br/>";
			echo "<br/><input type='submit' value='Thêm' name='add'>";
			echo "</form>";
		}
	} else {
		echo "Chưa nhập địa chỉ website hoặc email";
		redirect("truong.php",2);
	}
} else if (isset($_POST['add'])) { //them moi
	$url=$_POST['web'];
	$email=$_POST['email'];
	$ten=$_POST['ten'];
	$diachi=$_POST['diachi'];
	$dienthoai=$_POST['dienthoai'];
	$ret=mysqli_query($link,"insert into truonghoc (tentruong,diachi,sodienthoai,email,trangweb,lucnao) value ('$ten','$diachi','$dienthoai','$email','$url',NOW())");
	echo "Đã thêm";
	echo "<br/><a href='truong.php'>Thêm trường khác</a>";
	redirect("truong.php",10);
} else {
	echo "Tìm kiếm: <form action='truong.php' method='post'>";
	echo "URL: <input type='text' name='url' size='200'><br/><br/>";
	echo "Email: <input type='text' name='email' size='50'><br/>";
	echo "<br/><input type='submit' value='Tìm' name='search'>";
	echo "</form>";
	
}
echo "</body></html>";


function redirect($location, $delaytime = 0) {
    if ($delaytime>0) {    
        header( "refresh: $delaytime; url='".str_replace("&amp;", "&", $location)."'" );
    } else {
        header("Location: ".str_replace("&amp;", "&", $location));
    }    
}
?>
