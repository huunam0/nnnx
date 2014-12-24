<?php 
date_default_timezone_set("Asia/Ho_Chi_Minh");
include_once("bbcode.php");
require_once("config.php");

$theloai=["","camera","video","wiki","article"];
$ngay = date("d");
$thang = date("m");
$nam = date("Y");
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
	<img src="hinh/trong100.jpg" height="106px" />
	</div>
	<div id="title">
	<div style="position:absolute; z-index:1;display:none;">
	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="680" height="110">
	<param name="movie" value="hinh/nen2.swf" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent">
	<embed src="hinh/nen2.swf" quality="high" type="application/x-shockwave-flash" width="680" height="110" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
	</div>
	<div class="tieude">Ngày Này Năm Xưa</div>
	<div class="loicuabac">Dân ta phải biết sử ta<br/>Cho tường gốc tích nước nhà Việt Nam <br/><i>(Hồ Chí Minh)</i></div>
	</div>
	<div style="clear:both;"></div>
  </div>
  <div id="menubar">
  <div class="menu_out">
  <div class="menu_in">
      <a href="." class="menu">Trang chủ</a>
    </div>
  </div>
  <div class="menu_out">
  <div class="menu_in">
      <a href="gioithieu.html" class="menu">Giới thiệu</a>
    </div>
  </div>
  <div id="danhngon">
<?php 
$sql= "select * from danhngon order by rand() limit 1;";
$result=mysql_query($sql);
if ($row=mysql_fetch_array($result)) {
	echo '<div id="danhngon_tren">'.$row['caunoi'].str_repeat("&nbsp;",2*strlen($row['tacgia'])).'</div>';
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
	if (isset($_GET['date'])) {
		$ngaythang = explode("-",$_GET['date']);
		$ngay=$ngaythang[0];
		$thang=$ngaythang[1];
	}
	echo '<div class="tieude">NGÀY NÀY NĂM XƯA '.$ngay.'/'.$thang.'</div>';
	
	$sql="select * from cacsukien where ngay=$ngay and thang=$thang and sudung=1 order by thutu ;";
	$result = mysql_query($sql);
	if ($result) {
		if (mysql_num_rows($result)) {
			while ($row = mysql_fetch_array($result)) {
				if ($row['nam'])
					echo '<div class="motdong"><p class="calendar">'.$row['nam'].'<span>'.$row['ngay'].' / '.$row['thang'].'</span></p><p><a href="index.php?id='.$row['id'].'">'.showBBcodes($row['sukien']).'</a></p></div>';
				else
					echo '<div class="motdong"><p class="calendar">'.$row['ngay'].'/'.$row['thang'].'<span></span></p><p><a href="index.php?id='.$row['id'].'">'.showBBcodes($row['sukien']).'</a></p></div>';
			}
		}
	}
}
?>

	</div>
	<div id="rightside">
	  <div id="calendar" class="rightwidget"><div class="centertitle">LỊCH</div>
	  <div style="text-align:center;background:#FAD4F6;"><b>Tháng <?php echo $thang." năm ".$nam;?></b></div>
	  <table>
	  <tr align="center"><td width="15%">Thứ2</td><td width="15%">Thứ3</td><td width="15%">Thứ4</td><td width="15%">Thứ5</td><td width="15%">Thứ6</td><td width="15%">Thứ7</td><td width="15%">CN</td>
	  </tr>
	  <tr align="center">
<?php 
$thu = date( "w", strtotime("$nam-$thang-1"));
$numday = date("t");
if ($thu==0) $thu=7;
$i=1; 
while ($i<$thu) {
	echo "<td>&nbsp;</td>";
	$i++;
}
for ($i=1; $i<=$numday; $i++) {
	echo "<td><a href='index.php?date=$i-$thang'>$i</a></td>";
	if ($thu==7) {
		echo "</tr>\n<tr align='center'>";
		$thu=0;
	}
	$thu++;
}
while ($thu<7) {
	echo "<td>&nbsp;</td>";
	$thu++;
}
echo "<td>&nbsp;</td></tr>";
?>
	  </table>
	  </div>
	  <div id="somevideos" class="rightwidget"><div class="centertitle">VIDEO</div>
<?php 
$ngaythang=(strlen($ngay)==1?"0":"").$ngay.(strlen($thang)==1?"0":"").$thang;
$sql="select * from phimtulieu where sudung=1 and ngaythang='$ngaythang' order by rand() limit 1;";
$result=mysql_query($sql);
if ($result) {
	if (mysql_num_rows($result)) { //co
		if ($row=mysql_fetch_array($result)) {
			
			echo '<iframe width="280" src="//www.youtube.com/embed/'.$row['youtubeid'].'" frameborder="0" allowfullscreen></iframe>';
			echo "<div class='vtitle'>".$row['tieude']."</div>";
		}
	} 
	else { //khong co
		$sql="select * from phimtulieu where sudung=1 order by rand() limit 1;";
		$result=mysql_query($sql);
		if ($row=mysql_fetch_array($result)) {
			
			echo '<iframe width="280" src="//www.youtube.com/embed/'.$row['youtubeid'].'" frameborder="0" allowfullscreen></iframe>';
			echo "<div class='vtitle'>".$row['tieude']."</div>";
		}
	}
}
?>	  
		
	  </div>
	  <!--
	  <div id="otherstuff" class="rightwidget">
	  right side
	  </div>
	-->
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
  Nhóm thực hiện dự án: Nguyễn Hữu Tứ, Trần Đình Trị - 2014 <a href="http://thptnguyendu.edu.vn">THPT Nguyễn Du</a>
  </div>
</div>

</div>
</body>
</html>