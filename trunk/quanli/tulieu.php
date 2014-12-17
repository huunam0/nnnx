<?php

require_once "config2.php";
$link = mysqli_connect($db_host, $db_user, $db_pass);
mysqli_select_db($link,$db_name);
mysqli_query($link,"SET NAMES utf8"); //connect in decode utf8
//define("DEBUG",TRUE);
echo "<html><head><title>Tư liệu</title></head><body>";
if (!isset($_GET['sk'])) {
	
	$skid=intval($_GET['id']);
	if (isset($_GET['delete'])) {
		$sql="delete from cactulieu where id=$skid;";
		$ret=mysqli_query($link,$sql);
		redirect("?",3);
	}
	if (isset($_POST['sua'])) {
		$theloai=$_POST['loaitulieu'];
		$url=$_POST['url'];
		$ghichu=htmlspecialchars($_POST['ghichu']);
		$sudung=isset($_POST['sudung'])?1:0;
		$sql="update cactulieu set theloai='$theloai',url='$url',tieude='$ghichu',sudung=$sudung where id=$skid";
		echo $sql;
		$ret=mysqli_query($link,$sql);
		redirect("tulieu.php?id=$skid",5);
	}
	else {
		$sql="select * from cactulieu where id=$skid";
		$ret=mysqli_query($link,$sql);
		if ($row=mysqli_fetch_array($ret)) {
			//echo "<div>".$row['loai'].". <a href='tulieu.php?id=".$row['id']."'>".$row['tieude']."</a> [<a href='".$row['url']."' target='_blank'>Xem</a>]</div>";
			echo "<hr/>Sửa tư liệu: <form action='tulieu.php?id=$skid' method='post'>";
			echo "Thể loại: <select name='loaitulieu'>";
			$sql="select * from loaitulieu";
			$ret = mysqli_query($link,$sql);
			while ($row2=mysqli_fetch_array($ret)) {
				echo "<option value='".$row2['id']."' ".($row2['id']==$row['theloai']?" selected":"").">".$row2['tenloai']."</option>";
			}
			echo "</select><br/><br/>";
			echo "Tiêu đề: <input type='text' name='ghichu' size='200' value='".$row['tieude']."'><br/>";
			echo "URL: <input type='text' name='url' size='200' value='".$row['url']."'><br/><br/>";
			echo "<br/><input type='checkbox' name='sudung' ".($row['sudung']?"checked":"").">Sử dụng";
			echo "<br/><input type='submit' value='Sửa' name='sua'>";
			echo "</form>";
			echo "<br/><a href='tulieu.php?delete&id=$skid' onclick=\"return (confirm('Bạn muốn xóa tư liệu này'))\">Xoá tư liệu này</a>";
		}
			
	}
} else {
	$skid=intval($_GET['sk']);
	if (isset($_POST['ghi'])) {
		$theloai=$_POST['loaitulieu'];
		$url=$_POST['url'];
		$ghichu=htmlspecialchars($_POST['ghichu']);
		//$sudung=isset($_POST['sudung']);
		$sql="insert into cactulieu (sk,theloai,url,luctao,tieude) value ('$skid','$theloai','$url',NOW(),'$ghichu')";
		$ret=mysqli_query($link,$sql);
		redirect("tulieu.php?sk=$skid",5);
	}  else {
		$sql="select * from cacsukien where id=$skid limit 1";
		$ret=mysqli_query($link,$sql);
		if ($row=mysqli_fetch_array($ret)) {
			echo "<div>".$row['ngay']."/".$row['thang']."/".$row['nam']." (".$row['sudung']."): ".$row['sukien']."</div><hr/>";
		}
		$sql="select * from cactulieu where sk=$skid";
		$ret=mysqli_query($link,$sql);
		while ($row=mysqli_fetch_array($ret)) {
			echo "<div>".$row['theloai'].". <a href='tulieu.php?id=".$row['id']."'>".$row['tieude']."</a> [<a href='".$row['url']."' target='_blank'>Xem</a>]</div>";
		}
		echo "<hr/>Thêm tư liệu: <form action='tulieu.php?sk=$skid' method='post'>";
		echo "Thể loại: <select name='loaitulieu'>";
		$sql="select * from loaitulieu";
		$ret = mysqli_query($link,$sql);
		while ($row=mysqli_fetch_array($ret)) {
			echo "<option value='".$row['id']."'>".$row['tenloai']."</option>";
		}
		echo "</select><br/><br/>";
		echo "Tiêu đề: <input type='text' name='ghichu' size='200'><br/>";
		echo "URL: <input type='text' name='url' size='200'><br/><br/>";
		
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
