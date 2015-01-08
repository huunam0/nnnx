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
	<img src="hinh/trong100.png" height="120px" />
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
	<div class="loicuabac"><b>Dân ta phải biết sử ta<br/>Cho tường gốc tích nước nhà Việt Nam </b><br/><i>(Hồ Chí Minh)</i></div>
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
	<p>GIỚI THIỆU DỰ ÁN</p>
	<p>Lịch sử có vai trò vô cùng quan trọng như vậy trong hệ thống giáo dục của bất kỳ quốc gia nào, không chỉ riêng Việt Nam. </p><p>Tuy nhiên trong những năm gần đây, việc học môn lịch sử không được sự quan tâm của đa số học sinh.</p><p>
Học sinh ngày nay được sử dụng internet nhiều, nhưng ít quan tâm đến các vấn đề lịch sử.</p><p>
Một số trang web cũng có chuyên mục ngày này năm xưa để nhắc nhở người đọc các sự kiện lịch sử, nhưng các bài viết đó không được cập nhật, bổ sung, và thiếu các tư liệu cần thiết để giúp người dùng hiểu rõ hơn về các sự kiện đó.
</p>
	<p>Đề tài này sẽ xây dựng một website “Ngày này năm xưa” nhằm tập hợp tất cả các sự kiện sưu tầm được cùng các tư liệu liên quan đến sự kiện. Các sự kiện phải có ngày, tháng, năm rõ ràng và có ý nghĩa nhất định. Các tư liệu tập trung chủ yếu ở bốn dạng: hình ảnh, video, bài báo và bài viết wiki. Website này chỉ lưu trữ địa chỉ đường dẫn đến tư liệu trên mạng internet.</p><p>
Người sử dụng khi vào trang web, họ sẽ thấy ngay các sự kiện ngày này năm xưa của ngày hôm đó. Nếu họ quan tâm đến sự kiện nào thì trang web sẽ cung cấp các tư liệu liên quan đến sự kiện đó để họ tìm hiểu.
Website này còn là nơi cung cấp nội dung cho các website khác làm chuyên mục ngày này năm xưa. Các website đó chỉ cần nhúng 1 frame (khung) vào bất cứ vị trí nào, thì họ sẽ có ngay chuyên mục ngày này năm xưa một cách đầy đủ mà không cần phải đầu tư viết bài và tìm tư liệu.</p>
<p>Với ý tưởng đó, trong bối cảnh đất nước đang tiến hành sự nghiệp công nghiệp hóa, hiện đại hóa với những thời cơ và thách thức to lớn, chúng em mong muốn được góp phần nhỏ vào việc bảo tồn và phát huy văn hóa dân tộc. </p>
<p>Nhóm thực hiện</p>


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