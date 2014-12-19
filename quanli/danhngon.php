<?php

require_once "config2.php";
$link = mysqli_connect($db_host, $db_user, $db_pass);
mysqli_select_db($link,$db_name);
mysqli_query($link,"SET NAMES utf8"); //connect in decode utf8
//define("DEBUG",TRUE);
echo "<html><head><title>Danh ngôn</title></head><body>";
if (isset($_POST['search'])) { //tim kiem
	$caunoi=$_POST['caunoi'];
	$tacgia=$_POST['tacgia'];
	
	$sql="";
	if ($caunoi)
		$sql.="caunoi='$caunoi'";
	if ($tacgia) {
		if ($sql) $sql.= " or ";
		$sql.= "tacgia='$tacgia'";
	}
	if ($sql) {
		$sql="select * from danhngon where ".$sql;
		$ret=mysqli_query($link,$sql);
		if ($row=mysqli_fetch_array($ret)) {
			echo "Đã có:";
			echo "<br/>Câu nói: ".$row['caunoi'];
			echo "<br/>Tac giã: ".$row['tacgia'];
			echo "<br/><a href='danhngon.php'>Thêm câu khác</a>";
			redirect("danhngon.php",10);
		} else {
			echo "Chưa có. Thêm vào: <form action='danhngon.php' method='post'>";
			echo "<br/>Câu nói: <input type='text' name='caunoi' size='150' value='$caunoi'><br/>";
			echo "<br/>Tác giả: <input type='text' name='tacgia' size='50' value='$tacgia'><br/>";
			echo "<br/>Ý nghĩa:<br/><textarea name='ynghia' cols='100' rows='20'></textarea>";
			echo "<br/><input type='submit' value='Thêm' name='add'>";
			echo "</form>";
		}
	} else {
		echo "Chưa nhập câu nói hoặc tác giả";
		redirect("danhngon.php",2);
	}
} else if (isset($_POST['add'])) { //them moi
	$caunoi=$_POST['caunoi'];
	$tacgia=$_POST['tacgia'];
	$ynghia = mysql_real_escape_string($_POST['ynghia']);
	$sql="insert into danhngon (caunoi,tacgia,ynghia) value ('$caunoi','$tacgia','$ynghia')";
	echo $sql;
	$ret=mysqli_query($link,$sql);
	echo "Đã thêm";
	echo "<br/><a href='danhngon.php'>Thêm câu khác</a>";
	redirect("danhngon.php",10);
} else {
	echo "Tìm kiếm: <form action='danhngon.php' method='post'>";
	echo "Câu nói: <input type='text' name='caunoi' size='200'><br/><br/>";
	echo "Tác giả: <input type='text' name='tacgia' size='50'><br/>";
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
