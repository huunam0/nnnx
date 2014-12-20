<html>
<head>
<meta charset="utf8">
<title>Ngày này năm xưa</title>
<style>
a {
	text-decoration: none;
}
.motdong {
	background-image:url("hinh/icon-calendar.png");
	background-repeat:no-repeat;
	padding-left:16px;
}
</style>
</head>
<body style="font-size:5.2vw;">
<div style="position:relative;">
<div id='mainpage'>
  <div id="content">
  
<?php 
date_default_timezone_set("Asia/Ho_Chi_Minh");
require_once("config.php");
$ngay = date("d");
$thang = date("m");
$nam = date("y");

if (isset($_GET['title'])) echo '<div style="text-align:center;">NGÀY NÀY NĂM XƯA</div>';
$sql="select * from cacsukien where ngay=$ngay and thang=$thang order by rand();";
//echo $sql;
$result = mysql_query($sql);
if ($result) {
	if (mysql_num_rows($result)) {
		//echo "<ul>";
		while ($row = mysql_fetch_array($result)) {
			echo '<div class="motdong">'.$row['ngay'].'.'.$row['thang'].'.'.$row['nam'].': <a href="http://ngaynaynamxua.info/sk.php?id='.$row['id'].'" target="_blank">'.$row['sukien'].'</a></div>';
		}
		//echo "</ul>";
	}
}
?>  
  </div>

</div>
<div style="color:white;">.</div>
<div id="footerpart" style="text-align: right;font-size:4vw; position:absolute; right:0; bottom:0;">
  <a href="http://ngaynaynamxua.info/" target="_blank">Xem thêm</a>
</div>

</div>
</body>
</html>