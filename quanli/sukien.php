<?php

require_once "config2.php";
$link = mysqli_connect($db_host, $db_user, $db_pass);
mysqli_select_db($link,$db_name);
mysqli_query($link,"SET NAMES utf8"); //connect in decode utf8
//define("DEBUG",TRUE);
echo "<html><head><title>Sự kiện</title></head><body>";
$thang = isset($_GET['thang'])?$_GET['thang']:"";
$ngay = isset($_GET['ngay'])?$_GET['ngay']:"";
$dieukien="";
if ($thang) {
	$dieukien=" where thang=$thang";
}
if ($ngay) {
	if ($dieukien) {
		$dieukien.=" and ngay=$ngay";
	}
	else {
		$dieukien.=" where ngay=$ngay";
	}
}
$act="view";
if (isset($_GET['act'])) $act=$_GET['act'];
$skid = isset($_GET['id'])?$_GET['id']:"";
if ($act=="delete") {
	$sql="delete from cacsukien where id=$skid;";
	$ret=mysqli_query($link,$sql);
	redirect("?".($thang?"thang=".$thang:"").($ngay?"&ngay=".$ngay:""),3);
}
elseif ($act=="edit") {
	if (isset($_POST['sua'])) {
		$ngay=$_POST['ngay'];
		$thang=$_POST['thang'];
		$nam=$_POST['nam'];
		$sukien=htmlspecialchars($_POST['sukien']);
		$theloai=$_POST['loaisukien'];
		$sudung=isset($_POST['sudung']);
		
		$sql="update cacsukien set ngay='$ngay',thang='$thang',nam='$nam',sukien='$sukien',theloai='$theloai',sudung='$sudung' where id=$skid;";
		$ret=mysqli_query($link,$sql);
		redirect("?".($thang?"thang=".$thang:"").($ngay?"&ngay=".$ngay:""),3);
	} 
	else {
		$sql="select * from cacsukien where id=$skid;";
		$ret=mysqli_query($link,$sql);
		if ($row=mysqli_fetch_array($ret)) {
			echo "<hr/><form action='sukien.php?act=edit&id=$skid' method='post'>";
			echo "Ngày: <input type='text' name='ngay' size='2' value='".$row['ngay']."'> ";
			echo "tháng <input type='text' name='thang' size='2' value='".$row['thang']."'> ";
			echo "năm <input type='text' name='nam' size='4' value='".$row['nam']."'><br/>";
			echo "Sự kiện:<br/> <textarea name='sukien' cols='50' rows='4'>".$row['sukien']."</textarea><br/>";
			echo "Thể loại: <select name='loaisukien'>";
			$sql="select * from loaisukien";
			$ret = mysqli_query($link,$sql);
			while ($row2=mysqli_fetch_array($ret)) {
				echo "<option value='".$row2['id']."' ".($row2['id']==$row['theloai']?"selected":"").">".$row2['theloai']."</option>";
			}
			echo "</select>";
			echo " <input type='checkbox' name='sudung' ".($row['sudung']?"checked":"").">Sử dụng<br/>";
			echo "<br/><input type='submit' value='Sửa' name='sua'>";
			echo "</form>";
			echo "<br/><a href='tulieu.php?sk=$skid'>Xem tư liệu</a>";
			echo "<br/><a href='sukien.php?act=delete&id=$skid' onclick=\"return (confirm('Bạn muốn xóa sự kiện này'))\">Xoá sự kiện này</a>";
		}
		else {
			echo "Không thấy.";
		}
	}
}
else {
	if (isset($_POST['ghi'])) {
		$ngay=$_POST['ngay'];
		$thang=$_POST['thang'];
		$nam=$_POST['nam'];
		$sukien=htmlspecialchars($_POST['sukien']);
		$theloai=$_POST['loaisukien'];
		$sudung=isset($_POST['sudung']);
		
		$sql="insert into cacsukien (ngay,thang,nam,sukien,theloai,luctao,sudung) value ('$ngay','$thang','$nam','$sukien','$theloai',NOW(),'$sudung')";
		$ret=mysqli_query($link,$sql);
		$skid = 0;
		if ($ret) $skid=mysqli_insert_id($link);
		if ($skid) {
			echo "Đã thêm sự kiện thành công. <a href='tulieu.php?sk=$skid'>Thêm tư liệu</a> cho sự kiện này.";
		}
		redirect("sukien.php?".($thang?"thang=".$thang:"").($ngay?"&ngay=".$ngay:""),5);
	}  else {
		$sql="select * from cacsukien $dieukien order by luctao desc limit 100;";
		$ret=mysqli_query($link,$sql);
		echo "<table><tr><td>Ngay</td><td>SD</td><td>Su kien</td></tr>";
		while ($row=mysqli_fetch_array($ret)) {
			echo "<tr><td>".$row['ngay']."/<a href='sukien.php?thang=".$row['thang']."'>".$row['thang']."</a>/".$row['nam']."</td><td>".$row['sudung']."</td><td><a href='sukien.php?act=edit&id=".$row['id']."'>".$row['sukien']."</a></td></tr>";
		}
		echo "</table>";
		echo "<hr/><form action='sukien.php?".($thang?"thang=".$thang:"").($ngay?"&ngay=".$ngay:"")."' method='post'>";
		echo "Ngày: <input type='text' name='ngay' size='2' value='$ngay'> ";
		echo "tháng <input type='text' name='thang' size='2' value='$thang'> ";
		echo "năm <input type='text' name='nam' size='4'><br/>";
		echo "Sự kiện:<br/> <textarea name='sukien' cols='50' rows='4'></textarea><br/>";
		echo "Thể loại: <select name='loaisukien'>";
		$sql="select * from loaisukien";
		$ret = mysqli_query($link,$sql);
		while ($row=mysqli_fetch_array($ret)) {
			echo "<option value='".$row['id']."'>".$row['theloai']."</option>";
		}
		echo "</select>";
		echo " <input type='checkbox' name='sudung' checked>Sử dụng<br/>";
		echo "<br/><input type='submit' value='Thêm' name='ghi'>";
		echo "</form>";
	}
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
