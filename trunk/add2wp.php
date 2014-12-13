<?php
header('Content-Type: text/html; charset=utf-8');
require("config.php");
$http = "http://restos.me/datacenter/";

$sql= "SELECT * FROM ypvnn_cty where (xuli=0) limit 20;";
$ret = mysql_query($sql);
while ($row = mysql_fetch_array($ret)) {
	$id = $row['id'];
	//echo "<p>add listing: $id - ".$row['ten']." </p>";
	/**/
	$pid = insert_listing($row['ten'],$row['gioithieu']);
	if ($pid>0) {
		echo "<p>add listing: $pid -".$row['ten']." </p>";
		if ($row['huyen']) add_meta_post($pid,"dia_chi_huyen",$row['huyen']);
		add_meta_post($pid,"dia_chi_tinh",$row['tinh']);
		if ($row['lienhe_ten']) 
			add_meta_post($pid,"geocraft_contact",$row['lienhe_ten']);
		add_meta_post($pid,"geo_address",$row['diachi']);
		add_meta_post($pid,"geocraft_phone",$row['dienthoai']);
		if ($row['email'])
			add_meta_post($pid,"geocraft_meta_email",$row['email']);
		if ($row['website'])
			add_meta_post($pid,"geocraft_website",$row['website']);
		if ($row['hinhanh']) 
			add_meta_post($pid,"geocraft_meta_image2",$row['hinhanh']);
		add_meta_post($pid,"geocraft_dummy_content","1");
		add_meta_post($pid,"geocraft_listing_type","pro");
		if ($row['logo']) {
			add_meta_post($pid,"geocraft_meta_image1",$row['logo']);
			add_meta_post($pid,"geocraft_f_checkbox1","on");
			add_meta_post($pid,"geocraft_f_checkbox2","on");
		}
		$catname = explode(";", $row['linhvuc']);
		for ($i=0; $i<count($catname);$i++) {
			if ($catname[$i]) {
				$catid=add_listcat($catname[$i]);
				add_post_2cat($pid, $catid);
			}
		}
		mysql_query("update ypvnn_cty set xuli='1' where id = '$id';");
		//echo "update ypvnn_cty set xuli='1' where id = '$id';<br/>";
	}
	else {
		mysql_query("update ypvnn_cty set xuli='2' where id = '$id';");
		//echo "update ypvnn_cty set xuli='2' where id = '$id';<br/>";
	}
	header("Refresh: 2;url='http://localhost/danhba/add2wp.php'");
}
echo "Khong thay nua";

/*---------------------------------------------------function--------------------------------------------------------------*/
function add_meta_post($postid,$metakey, $metavalue) {
	echo "add meta: $postid - $metakey = $metavalue<br/>";
	mysql_query("INSERT INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES ($postid,'$metakey', '$metavalue');");
}
function add_term($cat) {
	$cat_slug = make_slug($cat);
	$ret = mysql_query("select term_id from wp_terms where name = '$cat';");
	if ($data=mysql_fetch_array($ret)) {
		return $data['term_id'];
	} else {
		echo "<p>add term: $cat</p>";
		mysql_query("INSERT INTO `wp_terms` (`name`, `slug`, `term_group`) VALUES ('$cat', '$cat_slug', 0);");
		return mysql_insert_id();
	}
}
function add_listcat($cat) {
	$catid = add_term($cat);
	$ret = mysql_query("SELECT `term_taxonomy_id` FROM `wp_term_taxonomy` WHERE (`term_id`=$catid) and (`taxonomy`='listcat');");
	if ($data = mysql_fetch_array($ret)) {
		return $data['term_taxonomy_id'];
	}
	else {
		echo "<p>add list cat: $cat</p>";
		mysql_query("INSERT INTO `wp_term_taxonomy` (`term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES ($catid, 'listcat', '', 0, 0)"); 
		return mysql_insert_id();
	}
}
function add_post_2cat($postid, $catid) {
	echo "<p>add post  $postid  to cat.   $catid</p>";
	mysql_query("INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES ($postid, $catid, 0)");
	mysql_query("UPDATE `wp_term_taxonomy` SET `count`=`count`+1 WHERE `term_taxonomy_id` = $catid");
}
function make_slug($text)
{ 
	// replace non letter or digits by -
	$text = preg_replace('~[^\\pL\d]+~u', '-', $text);
	// trim
	$text = trim($text, '-');
	// transliterate
	//$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
	$text = removesign($text);
	// lowercase
	$text = strtolower($text);
	// remove unwanted characters
	$text = preg_replace('~[^-\w]+~', '', $text);
	if (empty($text))
	{
		return 'n-a';
	}
	return $text;
}
function insert_listing($tieude, $gioithieu) {
	global $http;
	$slug = make_slug($tieude);
	mysql_query("INSERT INTO `wp_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (1, NOW(), NOW(), '$gioithieu', '$tieude', '', 'publish', 'open', 'open', '', '$slug', '', '', NOW(), NOW(), '', 0, '$http$slug', 0, 'listing', '', 0);");
	return mysql_insert_id();
}
function removesign($str)
{
$coDau=array("à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă","ằ","ắ"
,"ặ","ẳ","ẵ","è","é","ẹ","ẻ","ẽ","ê","ề","ế","ệ","ể","ễ","ì","í","ị","ỉ","ĩ",
"ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ"
,"ờ","ớ","ợ","ở","ỡ",
"ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
"ỳ","ý","ỵ","ỷ","ỹ",
"đ",
"À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă"
,"Ằ","Ắ","Ặ","Ẳ","Ẵ",
"È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
"Ì","Í","Ị","Ỉ","Ĩ",
"Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ"
,"Ờ","Ớ","Ợ","Ở","Ỡ",
"Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
"Ỳ","Ý","Ỵ","Ỷ","Ỹ",
"Đ","ê","ù","à");
$khongDau=array("a","a","a","a","a","a","a","a","a","a","a"
,"a","a","a","a","a","a",
"e","e","e","e","e","e","e","e","e","e","e",
"i","i","i","i","i",
"o","o","o","o","o","o","o","o","o","o","o","o"
,"o","o","o","o","o",
"u","u","u","u","u","u","u","u","u","u","u",
"y","y","y","y","y",
"d",
"A","A","A","A","A","A","A","A","A","A","A","A"
,"A","A","A","A","A",
"E","E","E","E","E","E","E","E","E","E","E",
"I","I","I","I","I",
"O","O","O","O","O","O","O","O","O","O","O","O"
,"O","O","O","O","O",
"U","U","U","U","U","U","U","U","U","U","U",
"Y","Y","Y","Y","Y",
"D","e","u","a");
return str_replace($coDau,$khongDau,$str);
}

?>

