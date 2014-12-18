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
	<img src="hinh/dong-ho-cat.png" />
	</div>
	<div id="title">
	<span>NGày này Năm Xưa</span>
	</div>
	<div style="clear:both;"></div>
  </div>
  <div id="menubar">
  menu bar
  </div>
  <div id="content">
    <div id = "leftside">
	  <div class="tieude">NGÀY NÀY NĂM XƯA
	  </div>
<?php
date_default_timezone_set("Asia/Ho_Chi_Minh");
include_once("bbcode.php");
require_once("config.php");
mysql_query("set name utf8");
$ngay = date("d");
$thang = date("m");
$nam = date("y");
$sql="select * from cacsukien where ngay=$ngay and thang=$thang;";
$result = mysql_query($sql);
if ($result) {
	if (mysql_num_rows($result)) {
		while ($row = mysql_fetch_array($result)) {
			echo '<div class="motdong"><p class="calendar">'.$row['nam'].'<span>'.$row['ngay'].' / '.$row['thang'].'</span></p><p><a href="http://ngaynaynamxua.info/'.$row['id'].'">'.showBBcodes($row['sukien']).'</a></p></div>';
		}
	}
}
?>
	  <div class="motdong">
	    <p class="calendar">1945 <span>02 / 9</span></p>
        <p><a href="#">Bác Hồ đọc bản tuyên ngôn độc lập<br/>
		Khai sinh ra nước Việt Nam Dân Chủ Cộng Hoà</a><img class="miniicon" src="hinh/camera.png" height="18px"/><img class="miniicon" src="hinh/video.png" height="18px"/><img class="miniicon" src="hinh/article.png" height="18px"/></p>
	  </div>
	  <div class="motdong">
	    <p class="calendar">1969 <span>02 / 9</span></p>
        <p>Ngày mất của Bác Hồ<br/>
		Hưởng thọ 79 tuổi</p>
	  </div>
	</div>
	<div id="rightside">
	  <div id="calendar" class="rightwidget">
	  <table cellspacing="0" class="ct1 cl4 cp7 cc6 cd2 cf17 ci9 cu10 cj2 mct" id="mct12" style="width:100%;"><tbody><tr><th>December</th></tr><tr><td class="cbm cba cbo"><table class="ca ca2" style="width:100%;"><thead><tr class="cl"><td class="datecol">Sun</td><td class="datecol">Mon</td><td class="datecol">Tue</td><td class="datecol">Wed</td><td class="datecol">Thu</td><td class="datecol">Fri</td><td class="cr datecol">Sat</td></tr></thead><tbody><tr><td>&nbsp;</td><td><div class="ccd">1</div></td><td><div class="ccd">2</div></td><td><div class="ccd">3</div></td><td><div class="ccd">4</div></td><td><div class="ccd">5</div></td><td class="cr"><div class="ccd">6</div></td></tr><tr><td><div class="ccd">7</div></td><td class="chi" title="This date is marked because it is the current date in this time zone. It will disappear if you print the calendar."><div class="ccd">8</div></td><td><div class="ccd">9</div></td><td><div class="ccd">10</div></td><td><div class="ccd">11</div></td><td><div class="ccd">12</div></td><td class="cr"><div class="ccd">13</div></td></tr><tr><td><div class="ccd">14</div></td><td><div class="ccd">15</div></td><td><div class="ccd">16</div></td><td><div class="ccd">17</div></td><td><div class="ccd">18</div></td><td><div class="ccd">19</div></td><td class="cr"><div class="ccd">20</div></td></tr><tr><td><div class="ccd">21</div></td><td><div class="ccd">22</div></td><td><div class="ccd">23</div></td><td><div class="ccd">24</div></td><td><div class="ccd">25</div></td><td><div class="ccd">26</div></td><td class="cr"><div class="ccd">27</div></td></tr><tr class="cb"><td><div class="ccd">28</div></td><td><div class="ccd">29</div></td><td><div class="ccd">30</div></td><td><div class="ccd">31</div></td><td>&nbsp;</td><td>&nbsp;</td><td class="cr">&nbsp;</td></tr></tbody></table></td></tr></tbody>
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
    <img src="hinh/caycanh.png"/>
  </div>
  <div class="copyright">
  Written by 
  </div>
</div>

</div>
</body>
</html>