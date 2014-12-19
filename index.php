<?php 
date_default_timezone_set("Asia/Ho_Chi_Minh");
include_once("bbcode.php");
require_once("config.php");
mysql_query("set name utf8");
$theloai=["","camera","video","wiki","article"];
$ngay = date("d");
$thang = date("m");
$nam = date("y");
?>
<html>
<head>
<meta charset="utf8">
<title>Ngày này năm xưa</title>
<link rel="stylesheet" type="text/css" href="kieu.css"/>
</head>
<body>
<div>
<div id='mainpage'>
  <div id="headerpart">
    <div id="logo">
	<img src="hinh/sand-clock.gif" height="100px" />
	</div>
	<div id="title">
	<div style="position:absolute; z-index:1;">
	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="680" height="110">
	<param name="movie" value="hinh/nen2.swf" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent">
	<embed src="hinh/nen2.swf" quality="high" type="application/x-shockwave-flash" width="680" height="110" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
	</div><br/>
	<span>NGày này Năm Xưa</span>
	</div>
	<div style="clear:both;"></div>
  </div>
  <div id="menubar">
  <div class="menu_out">
  <div class="menu_in">
      <a href="#" class="menu">Trang chủ</a>
    </div>
  </div>
  <div class="menu_out">
  <div class="menu_in">
      <a href="#" class="menu">Trang chủ</a>
    </div>
  </div>
  <div id="danhngon">
<?php 
$sql= "select * from danhngon order by rand() limit 1;";
$result=mysql_query($sql);
if ($row=mysql_fetch_array($result)) {
	echo '<div id="danhngon_tren">'.$row['caunoi'].'</div>';
	echo '<div id="danhngon_duoi">'.$row['tacgia'].'</div>';
}
?>
 
  </div>
  </div>
  <div id="content">
    <div id = "leftside">
	  
<?php
if (isset($_GET['id'])) {
	$skid=intval($_GET['id']);
	echo '<div class="tieude">SỰ KIỆN</div>';
	$sql="select * from cacsukien where id=$skid;";
	$result = mysql_query($sql);
	if ($result) {
		if (mysql_num_rows($result)) {
			if ($row = mysql_fetch_array($result)) {
				echo '<div class="motdong"><p class="calendar">'.$row['nam'].'<span>'.$row['ngay'].' / '.$row['thang'].'</span></p><p>'.showBBcodes($row['sukien']).'</p></div>';
				echo '<div class="tieude">TƯ LIỆU</div>';
				$sql="select * from cactulieu where sk=$skid order by theloai";
				$result = mysql_query($sql);
				if ($result) {
					while ($tl = mysql_fetch_array($result)) {
						echo "<div class='tulieu ".$theloai[$tl['theloai']]."'><a href='".$tl['url']."' target='_blank'>".$tl['tieude']."</a></div>";
					}
				}
				//echo "</div>";
			}
		}
		else {
			echo "Không có sự kiện này.";
		}
	}
	else {
		echo "Lỗi";
	}
} 
else {
	echo '<div class="tieude">NGÀY NÀY NĂM XƯA</div>';
	
	$sql="select * from cacsukien where ngay=$ngay and thang=$thang;";
	$result = mysql_query($sql);
	if ($result) {
		if (mysql_num_rows($result)) {
			while ($row = mysql_fetch_array($result)) {
				echo '<div class="motdong"><p class="calendar">'.$row['nam'].'<span>'.$row['ngay'].' / '.$row['thang'].'</span></p><p><a href="index.php?id='.$row['id'].'">'.showBBcodes($row['sukien']).'</a></p></div>';
			}
		}
	}
}
?>

	</div>
	<div id="rightside">
	  <div id="calendar" class="rightwidget">
	  <div>Tháng <?php echo $thang;?></div>
	  <table>
	  <th><td>T2</td><td>T3</td><td>T4</td><td>T5</td><td>T6</td><td>T7</td><td>CN</td>
	  </th>
	  </table>
	  </div>
	  <div id="somevideos" class="rightwidget">
	  video
	  </div>
	  <div id="otherstuff" class="rightwidget">
	  right side
	  </div>
	
	</div>
	<div style="clear:both;">
	</div>
  </div>
</div>
<div id="footerpart">
  <div class="tree">
    <img src="hinh/mountain.png" width="220px"/>
  </div>
  <div class="copyright">
  Nhóm thực hiện dự án: Nguyễn Hữu Tứ, Trần Đình Trị - 2014 
  </div>
</div>

</div>
</body>
</html>