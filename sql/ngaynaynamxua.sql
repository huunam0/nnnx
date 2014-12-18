-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2014 at 01:15 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngaynaynamxua`
--
CREATE DATABASE IF NOT EXISTS `ngaynaynamxua` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `ngaynaynamxua`;

-- --------------------------------------------------------

--
-- Table structure for table `cacsukien`
--

CREATE TABLE IF NOT EXISTS `cacsukien` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ngay` tinyint(4) NOT NULL,
  `thang` tinyint(4) NOT NULL,
  `nam` smallint(6) NOT NULL DEFAULT '0',
  `ngaynao` date NOT NULL,
  `sukien` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `theloai` tinyint(1) NOT NULL DEFAULT '1',
  `luctao` datetime NOT NULL,
  `nguoilam` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sudung` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=399 ;

--
-- Dumping data for table `cacsukien`
--

INSERT INTO `cacsukien` (`id`, `ngay`, `thang`, `nam`, `ngaynao`, `sukien`, `theloai`, `luctao`, `nguoilam`, `sudung`) VALUES
(1, 2, 9, 1945, '1945-09-02', 'Bác Hồ đọc bản tuyên ngôn độc lập', 1, '2014-09-08 21:43:37', 'Tư', 0),
(2, 3, 9, 1945, '1945-09-03', 'Không có gì', 1, '2014-09-08 16:55:17', 'Tư', 0),
(4, 1, 11, 1963, '1963-11-01', 'nhóm Dương Vǎn Minh, Trần Vǎn Đôn, Lê Vǎn Kim làm đảo chính, giết anh em Ngô Đình Diệm, Ngô Đình Nhu, lập ngụy quyền theo công thức &quot;quân sự + dân sự + không đảng phái&quot;. \nNhân cơ hội này, nhân dân ở vùng nông thôn bị kìm kẹp đã nổi dậy phá hàng loạt &quot;ấp chiến lược&quot;, mở rộng thêm vùng giải phóng. Chỉ trong tháng 11-1963, quân và dân miền Nam đã bức địch rút 354 đồn bốt và phá g', 1, '2014-09-09 14:22:18', 'Tứ', 0),
(5, 1, 10, 1942, '1942-10-01', 'Thành lập Việt Nam Cách mệnh Đồng minh Hội', 1, '2014-09-10 08:17:12', 'Tư', 0),
(6, 2, 10, 1936, '1936-10-02', ' Khánh thành đường sắt Trans-Indochinois Xuyên Đông Dương, nối liền Hà Nội và Sài Gòn.', 1, '2014-09-10 08:26:02', 'Tư', 0),
(7, 4, 10, 1965, '1965-10-04', ' Mặt trận Dân tộc Giải phóng miền Nam Việt Nam đặt hai quả bom ở sân vận động Cộng Hòa, Sài Gòn.', 1, '2014-09-10 08:28:22', 'Tư', 0),
(9, 5, 10, 1959, '1959-10-05', 'Trung đoàn Tăng 202, trung đoàn tăng thiết giáp đầu tiên của Quân đội Nhân dân Việt Nam được thành lập.', 1, '2014-09-10 08:30:15', 'Tư', 0),
(14, 10, 10, 1427, '1427-10-10', 'Chiến thắng Chi Lăng (Lạng Sơn), Lê Lợi đại phá quân Minh\r\n  \r\n', 1, '2014-09-10 13:43:21', 'Tánh', 0),
(17, 10, 10, 1994, '1994-10-10', 'Thành lập Tổng Công ty Điện Lực Việt Nam', 2, '2014-09-10 13:55:01', 'Tánh', 0),
(18, 11, 10, 1961, '1961-10-11', 'Mỹ đưa ra thực hiện kế hoạch Staley-Taylor nhằm bình định miền Nam trong 18 tháng', 1, '2014-09-10 13:59:55', 'Tánh', 0),
(19, 7, 10, 1961, '1961-10-07', 'Chủ tịch Hồ Chí Minh và đ/c Nguyễn Chí Thanh về thăm và dự Hội nghị Đảng bộ xã Đại Nghĩa, huyện Mỹ Đức, Hà Tây (nay là Hà Nội), nghiên cứu Nghị quyết TƯ 5 (khóa III) về phát triển Nông nghiệp, ngày 7- 10- 1961 (trong ảnh, người đứng bên tay trái Bác là Đại tướng Nguyễn Chí Thanh).', 2, '2014-09-10 14:06:41', 'Tánh', 0),
(20, 14, 10, 1890, '1890-10-14', 'Ngày 14-10-1890 tỉnh Thái Bình được thành lập. ', 1, '2014-09-10 14:11:18', 'Tánh', 0),
(21, 30, 4, 1945, '1945-04-30', 'Giải phóng miền Nam', 1, '2014-09-11 15:13:14', 'Tứ', 0),
(22, 1, 11, 1968, '0000-00-00', 'Chính phủ Mỹ phải ngừng không điều kiện việc ném bom đánh phá miền Bắc và phải nói chuyện với đại diện của Mặt trận Dân tộc giải phóng miền Nam tại Hội nghị bốn bên ở Pa-ri, chấm dứt cuộc chiến tranh phá hoại lần thứ nhất bằng không quân của đế quốc Mỹ ở miền Bắc nước ta.', 1, '2014-09-12 08:05:28', 'Tứ', 0),
(23, 2, 11, 1972, '0000-00-00', 'Từ ngày 2 đến 5-11-1972, quân và dân Gia Lai liên tục mở nhiều trận tiến công tiêu diệt cǎn cứ Đức Cơ và đánh bại hoàn toàn cuộc hành quân của 3 chiến đoàn và liên đoàn quân biệt động ngụy, loại khỏi vòng chiến đấu hơn 2.100 tên địch, đánh thiệt hại nặng 8 tiểu đoàn, bắn rơi 9 máy bay, thu 8 xe quân sự và gần 300 súng. Hàng vạn đồng bào ở khu vực Đức Cơ nổi dậy giành lại quyền làm chủ.', 1, '2014-09-12 08:17:24', 'Tứ', 0),
(24, 3, 11, 1946, '0000-00-00', 'Chính phủ mới do chủ tịch Hồ Chí Minh đứng đầu đã ra mắt các đại biểu Quốc hội khoá I ở kỳ họp thứ hai', 1, '2014-09-12 08:22:03', 'Tứ', 0),
(25, 5, 11, 1426, '0000-00-00', 'Hơn 9 vạn quân Minh do Tổng binh Vương Thông chỉ huy lọt vào trận địa phục kích của nghĩa quân Lam Sơn ở Tốt Động và Chúc Động (nay thuộc tỉnh Chương Mỹ - Hà Tây).\r\nTrong 3 ngày đêm - từ mồng 5 đến mồng 7-11-1426 - chiến đấu liên tục, quân ta đã làm thất bại hoàn toàn cuộc phản công chiến lược của Vương Thông. Hơn 6 vạn quân địch đã bị tiêu diệt.\r\nTrong Đại cáo bình ngô. Nguyễn Trãi đã miêu tả chi', 1, '2014-09-12 08:32:51', 'Tứ', 0),
(26, 5, 11, 1968, '0000-00-00', 'Richớt Nichxơn (Richard Nixon), người của Đảng Cộng hoà, trúng cử Tổng thống Hoa Kỳ, đưa ra thuyết &quot;Việt Nam hoá chiến tranh&quot; nhằm rút quân Mỹ ra khỏi cuộc chiến tranh ở Việt Nam trong danh dự, đồng thời tǎng cường viện trợ quân sự cho chế độ ngụy Sài Gòn. Song học thuyết này đã bị phá sản và dẫn tới sự sụp đổ hoàn toàn của ngụy quân ngụy quyền miền Nam Việt Nam vào mùa xuân 1975.', 1, '2014-09-14 14:03:37', 'Tứ', 0),
(27, 6, 11, 1940, '0000-00-00', 'diễn ra Hội nghị lần thứ 7 của Trung ương Đảng Cộng sản Đông Dương. Hội nghị họp tại làng Đình Bảng, Từ Sơn, Bắc Ninh.', 1, '2014-09-14 14:08:32', 'Tứ', 0),
(28, 6, 11, 1967, '0000-00-00', ' quân và dân Hà Nội đã bắn rơi chiếc máy bay F105 của Giặc Mỹ. Đây là chiếc máy bay Mỹ thứ 2.500 bị bắn rơi trên miền bắc nước ta là chiếc thứ 200 bị quân dân Thủ đô bắn rơi tại Hà Nội.', 1, '2014-09-14 14:11:11', 'Tứ', 0),
(29, 7, 11, 1975, '0000-00-00', 'Hội nghị Đại biểu phụ nữ toàn miền Nam họp tại thành phố Sài Gòn - Gia Định. Hội nghị kiểm điểm phong trào phụ nữ trong 20 nǎm chống Mỹ cứu nước và bàn phương hướng, nhiệm vụ công tác trong giai đoạn xây dựng mới, khi nước nhà đã thống nhất.', 1, '2014-09-14 14:19:36', 'Tứ', 0),
(30, 1, 10, 1226, '0000-00-00', 'Lí Chiêu Hoàng nhường ngôi cho Trần Cảnh. Vương triều Trần được thiết lập.', 1, '2014-09-20 08:43:03', 'Tư', 0),
(31, 1, 10, 1888, '0000-00-00', 'Đồng Khánh ra dụ nhượng cho Pháp quyền sở hữu hoàn toàn thành phố Hà Nội, Tp Hải Phòng và Khu Đà Nẵng.', 1, '2014-09-20 08:44:42', 'Tư', 0),
(32, 1, 10, 1936, '0000-00-00', 'Hoàn thành xây dựng tuyến đường sắt Đông Dương.', 1, '2014-09-20 08:45:54', 'Tư', 0),
(33, 1, 10, 1942, '0000-00-00', 'VN Cách Mệnh Đồng Minh Hội được thành lập tại Liễu Châu.', 1, '2014-09-20 08:47:35', 'Tư', 0),
(34, 1, 10, 1945, '0000-00-00', 'Khóa học thứ tư trường Quân chính VN làm lễ tốt nghiệp. Hồ Chủ tịch đến dự và phát biểu.', 1, '2014-09-20 08:49:08', 'Tư', 0),
(35, 1, 10, 1947, '0000-00-00', 'Ban hành Sắc lệnh quy định hợp nhất Ủy ban kháng chiến và Ủy ban các cấp (tỉnh, huyện, châu, xã) thành Ủy ban kháng chiến kiêm hành chính.', 1, '2014-09-20 08:49:31', 'Tư', 0),
(36, 1, 10, 1952, '0000-00-00', 'Chính Phủ công bố 8 điều mệnh lệnh đối với các vùng mới giải phóng.', 1, '2014-09-20 08:49:52', 'Tư', 0),
(37, 1, 10, 1958, '0000-00-00', 'Khởi công xây dựng công trình thủy nông Bắc-Hưng-Hải.', 1, '2014-09-20 08:50:05', 'Tư', 0),
(38, 1, 10, 1964, '0000-00-00', 'Báo Nhân Dân, cơ quan trung ương của Đảng Nhân Dân Cách mạng VN ra số đầu tiên.', 1, '2014-09-20 08:50:21', 'Tư', 0),
(45, 1, 10, 1980, '0000-00-00', 'Hội Đồng Chính Phủ ra quyết định tăng cường quản lý thị trường nhằm đẩy mạnh công cuộc cải tạo XHCN và xây dựng CNXH.', 1, '2014-09-20 08:53:31', 'Tư', 0),
(46, 1, 10, 1982, '0000-00-00', 'Hội Đồng Bộ Trưởng quyết định lấy ngày 20-11 làm ngày nhà giáo Việt Nam.', 1, '2014-09-20 08:53:53', 'Tư', 0),
(47, 1, 10, 1991, '0000-00-00', 'Ngày hoạt động đầu tiên Ngày Quốc tế người cao tuổi.', 1, '2014-09-20 08:54:18', 'Tư', 0),
(48, 1, 10, 1992, '0000-00-00', 'Bắt đầu thực hiện Pháp lệnh thuế nhà đất.', 1, '2014-09-20 08:54:43', 'Tư', 0),
(49, 2, 10, 1956, '0000-00-00', 'Vụ Cái Sắn (Rạch Giá).', 1, '2014-09-20 08:57:43', 'Tư', 0),
(52, 2, 10, 1989, '0000-00-00', 'Cuộc gặp mặt lần thứ nhất Đại biểu tiên tiến toàn quốc của Hội Liên Hiệp Thanh Niên Việt Nam.', 1, '2014-09-20 08:58:25', 'Tư', 0),
(53, 2, 10, 1992, '0000-00-00', 'Chủ Tịch Nước ký lệnh công bố Luật Tổ chức Chính Phủ.', 1, '2014-09-20 08:58:44', 'Tư', 0),
(54, 2, 10, 1995, '0000-00-00', 'Hội nghị về bình thường hóa quan hệ kinh tế Mỹ-Việt Nam tại Oasinhtơn.', 1, '2014-09-20 08:59:56', 'Tư', 0),
(55, 2, 10, 1997, '0000-00-00', 'Đoàn thể thao VN làm lễ xuất quân  đi dự SEAGAMES 19 tại INDONESIA.', 1, '2014-09-20 09:00:21', 'Tư', 0),
(56, 3, 10, 1950, '0000-00-00', 'Chiến dịch Long Châu Hà I do bộ Tư Lệnh khu 9 tổ chức  chỉ huy với quy mô trung đoàn trên địa bàn 2 huyện Tịnh Biên và Tri Tôn (tỉnh Long Châu Hậu) nhằm giành dân khôi phục cơ sở vùng xung quanh và phối hợp với chiến dịch biên giới.', 1, '2014-09-20 09:00:59', 'Tư', 0),
(57, 3, 10, 1951, '0000-00-00', 'Bộ đội VN thuộc Đại đoàn 312 tiến công tiêu diệt cứ điểm Nghĩa Lộ trong chiến dịch Lý Thường Kiệt.', 1, '2014-09-20 09:01:12', 'Tư', 0),
(59, 3, 10, 1978, '0000-00-00', 'Bộ Ngoại giao ta gửi bị vong lục cho Đại sứ quán Trung Quốc phản đối TQ liên tiếp cho lực lượng vũ trang sang xâm phạm lãnh thổ VN.', 1, '2014-09-20 09:01:50', 'Tư', 0),
(60, 3, 10, 1990, '0000-00-00', 'Ban Bí thư Trung ương ĐCS VN triệu tập hội nghị rút kinh nghiệm về đổi mới công tác quần chúng của Đảng.', 1, '2014-09-20 09:02:07', 'Tư', 0),
(61, 3, 10, 1995, '0000-00-00', 'Kỳ họp thứ 8 Quốc hội khóa IX…', 1, '2014-09-20 09:02:31', 'Tư', 0),
(62, 3, 10, 1995, '0000-00-00', 'Kỳ họp thứ 1 Ủy ban hỗn hợp VN-Iran về hợp tác kinh tế, khoa học kĩ thuật.', 1, '2014-09-20 09:02:44', 'Tư', 0),
(63, 3, 10, 1996, '0000-00-00', 'Thủ tướng Chính phủ ra quyết định thành lập Ban quản lí các khu chế xuất và công nghiệp thành phố HCM.', 1, '2014-09-20 09:03:54', 'Tư', 0),
(64, 4, 10, 1889, '0000-00-00', 'Thực dân Pháp mở cuộc tấn công đàn áp phong trào kháng chiến của nghĩa quân Đổng Phúc Thịnh, Đào Tiến Lộc, Nguyễn Quang Bích ở Tú Lệ và Nghĩa Lộ.', 1, '2014-09-20 09:04:28', 'Tư', 0),
(65, 4, 10, 1953, '0000-00-00', 'Chính phủ ban hành chính sách tôn giáo.', 1, '2014-09-20 09:04:48', 'Tư', 0),
(66, 4, 10, 1960, '0000-00-00', '10000 đồn bào Cao Lãnh (Sa Đéc) biễu tình kéo vào thị xã 3 ngày liền, giằng co với địch.', 1, '2014-09-20 09:05:35', 'Tư', 0),
(67, 4, 10, 1960, '0000-00-00', '10000 đồng bào Cao Lãnh (Sa Đéc) biễu tình kéo vào thị xã 3 ngày liền, giằng co với địch.', 1, '2014-09-20 09:06:37', 'Tư', 0),
(68, 4, 10, 1970, '0000-00-00', 'Tiêu diệt cứ điểm Hòn Ngang (Phú Yên).', 1, '2014-09-20 09:07:18', 'Tư', 0),
(69, 4, 10, 1985, '0000-00-00', 'Trung ương Đoàn TNCS HCM đón nhận Huân Chương Sao Vàng.', 1, '2014-09-20 09:07:35', 'Tư', 0),
(70, 4, 10, 1988, '0000-00-00', 'Hội nghị Khoa giáo các tỉnh miền Nam do ban khoa giáo Trung ương tổ chức.', 1, '2014-09-20 09:08:01', 'Tư', 0),
(71, 4, 10, 1996, '0000-00-00', 'Thủ tướng Chính Phủ ra quyết định thành lập ban chỉ đạo về phát triển Kinh tế-Xã hội Tây Nguyên.', 1, '2014-09-20 09:08:58', 'Tư', 0),
(72, 5, 10, 1433, '0000-00-00', 'Ngày mất Lê Lợi.', 1, '2014-09-20 09:09:35', 'Tư', 0),
(73, 5, 10, 1891, '0000-00-00', 'Thực dân Pháp mở nhiều cuộc hành quân nhỏ nhằm điều tra khu căn cứ và lực lượng nghĩa quân Yên Thế để chuẩn bị đẩy mạnh đàn áp.', 1, '2014-09-20 09:09:52', 'Tư', 0),
(74, 5, 10, 1909, '0000-00-00', 'Chiến thắng Núi Sáng của nghĩa quân Đề Thám.', 1, '2014-09-20 09:10:09', 'Tư', 0),
(75, 5, 10, 1948, '0000-00-00', 'Trận Yên Bình Xã do bộ chỉ huy liên khu 10 tổ chức quy mô tương đương 2 tiểu đoàn đã phá tan âm mưu tiến công Thu Đông 1948 của địch.', 1, '2014-09-20 09:10:26', 'Tư', 0),
(76, 5, 10, 1950, '0000-00-00', 'Quân đội ta thuộc đại đoàn 308 đã tiêu diệt binh đoàn La Page của Pháp tại vùng núi CốC Xá.\r\n1955 Hồ Chủ tịch ký sắc lệnh thành lập Nha Tổng Thanh tra kỹ nghệ và khoáng chất trong Bộ Quốc dân kinh tế (ngày truyền thống ngành địa chất VN).\r\n', 1, '2014-09-20 09:13:39', 'Tư', 0),
(77, 5, 10, 1959, '0000-00-00', 'Ngày truyền thống binh chủng Tăng Thiết Giáp.', 1, '2014-09-20 09:13:56', 'Tư', 0),
(78, 5, 10, 1965, '0000-00-00', 'Bộ đội tên lửa trong 1 ngày bắn rơi 7 máy bay Mỹ.', 1, '2014-09-20 09:14:11', 'Tư', 0),
(79, 5, 10, 1968, '0000-00-00', 'Trong gần 2 tháng, quân dân Biên Hòa- Bà Rịa đánh tan cuộc hành quân bình định cấp tốc của địch, loại khỏi vòng chiến đấu 2345 tên địch.', 1, '2014-09-20 09:14:28', 'Tư', 0),
(80, 5, 10, 1971, '0000-00-00', 'Tổ máy đầu tiên nhà máy Thủy điện Thác Bà bắt đầu phát điện.', 1, '2014-09-20 09:14:41', 'Tư', 0),
(81, 5, 10, 1976, '0000-00-00', 'Hội nghị ngành văn hóa miền Nam họp tại tp HCM.', 1, '2014-09-20 09:14:55', 'Tư', 0),
(82, 5, 10, 1976, '0000-00-00', 'Hội nghị nông nghiệp và thủy lợi miền Nam tại tp HCM.', 1, '2014-09-20 09:15:22', 'Tư', 0),
(83, 5, 10, 1983, '0000-00-00', 'Đại hội lần thứ 2 Hội Mĩ thuật VN, đại biểu quyết dịnh đổi tên thành Hội Nghệ sĩ tạo hình VN.', 1, '2014-09-20 09:15:37', 'Tư', 0),
(84, 6, 10, 1973, '0000-00-00', 'Ban bí thư trung ương Đảng Lao động VN ra chỉ thị:Vấn đề phụ nữ là công tác của toàn Đảng.', 1, '2014-09-20 09:16:07', 'Tư', 0),
(85, 6, 10, 1974, '0000-00-00', 'Nhà máy đóng tàu Bến Kiền(Hải Phòng) chính thức nhận tàu vào sửa chữa.', 1, '2014-09-20 09:16:19', 'Tư', 0),
(86, 6, 10, 1984, '0000-00-00', 'Nhà máy đóng tàu Bến Kiền(Hải Phòng) chính tHội đồng nhân dân nước CHXHCNVN tặng thưởng thủ đô Hà Nội Huân chương Sao Vàng, tặng thưởng Lực lượng vũ trang thủ đô Hà Nội huân chương HCM, tặng thưởng lực lượng Công an nhân dân Thủ đô huân chương HCM.hức nhận tàu vào sửa chữa.', 1, '2014-09-20 09:16:35', 'Tư', 0),
(87, 6, 10, 1988, '0000-00-00', 'Hội đồng bộ trưởng mở hội nghị bàn về khai triển thực hiện luật đất đai.', 1, '2014-09-20 09:16:54', 'Tư', 0),
(88, 6, 10, 1993, '0000-00-00', 'Ban bí thư trung ương Đảng Cộng sản VN triệu tập hội nghị đổi mới phương thức lãnh đạo của các tỉnh ủy, thành ủy.', 1, '2014-09-20 09:17:06', 'Tư', 0),
(89, 6, 10, 1993, '0000-00-00', 'Đại hội thành lập Hiệp hội câu lạc bộ UNESCO VN.', 1, '2014-09-20 09:18:00', 'Tư', 0),
(90, 6, 10, 1998, '0000-00-00', 'Tờ báo Thanh niên Việt Nam của trung ương hội Liên hiệp sinh viên VN ra số đầu tiên.', 1, '2014-09-20 09:18:15', 'Tư', 0),
(91, 7, 10, 1877, '0000-00-00', 'Xây dựng nhà thờ Đức Bà.', 1, '2014-09-20 09:18:41', 'Tư', 0),
(92, 7, 10, 1930, '0000-00-00', 'Cuộc biểu tình vũ trang của công nhân Đức Phổ(Quãng Ngãi), và cao trào cách mạng 1930-1931 nổi lên bởi các cuộc biểu tình  huyện Sơn Tịnh, Mộ Đức(Quãng Ngãi), Triệu Phong(Quãng Trị), Hoài Nhơn(Bình Định),…', 1, '2014-09-20 09:18:54', 'Tư', 0),
(93, 7, 10, 1947, '0000-00-00', 'Mở đầu chiến dịch Việt Bắc Thu Đông 1947…', 1, '2014-09-20 09:19:21', 'Tư', 0),
(94, 7, 10, 1950, '0000-00-00', 'Chiến dịch Bến Cát do Bộ tư lệnh khu 7 tổ chức chỉ đạo quy mô cấp trung đoàn trên các trục đường 14, 7, 13 và đường Thủ Dầu. Một là để tiêu diệt sinh lực địch và phối hợp chiến dịch Biên Giới.', 1, '2014-09-20 09:19:40', 'Tư', 0),
(95, 7, 10, 1950, '0000-00-00', 'Trận vận động tiến công của các tiểu đoàn thuộc đại đoàn 308 diệt binh đoàn Sác Tông của Pháp ', 1, '2014-09-20 09:20:52', 'Tư', 0),
(96, 7, 10, 1950, '0000-00-00', 'Trận vận động tiến công của các tiểu đoàn thuộc đại đoàn 308 diệt binh đoàn Sác Tông của Pháp đang rút chạy ở vùng núi Đông Khê-Thất Khê trong chiến dịch biên giới.', 1, '2014-09-20 09:21:21', 'Tư', 0),
(97, 7, 10, 1956, '0000-00-00', 'Khánh thành mỏ thiếc Tĩnh Túc Cao Bằng.', 1, '2014-09-20 09:22:25', 'Tư', 0),
(98, 7, 10, 1967, '0000-00-00', 'Quân dân miền Bắc trong 1 ngày bắn rơi 11 máy bay Mỹ.', 1, '2014-09-20 09:22:45', 'Tư', 0),
(99, 7, 10, 1998, '0000-00-00', 'Khai mạc hội nghị Ủy ban khoa học và công nghệ ASEAN lần 36, tại Hà Nội.', 1, '2014-09-20 09:23:06', 'Tư', 0),
(100, 7, 10, 1998, '0000-00-00', 'Đại hội công đoàn toàn quân lần thứ 5 họp tại Hà Nội.', 1, '2014-09-20 09:23:17', 'Tư', 0),
(101, 8, 10, 1427, '0000-00-00', 'Chiến thắng Chi Lăng của nghĩa quân Lê Lợi, tiêu diệt một bộ phận lớn nhà Minh do Liễu Thăng cầm đầu trên địa bàn từ Chi Lăng(Lạng Sơn) đến Xương Giang(Bắc Giang) dài 113 km.', 1, '2014-09-20 09:23:57', 'Tư', 0),
(102, 8, 10, 1945, '0000-00-00', 'Tuần lễ văn hóa VN khai mạc tại Hà Nội.', 1, '2014-09-20 09:24:11', 'Tư', 0),
(103, 8, 10, 1946, '0000-00-00', 'Thành lập ngành Sư phạm VN.', 1, '2014-09-20 09:24:29', 'Tư', 0),
(104, 8, 10, 1947, '0000-00-00', 'Quân ta đột kích thị xã Ninh Hòa (Nam Trung Bộ) tiêu diệt 450 tên địch.', 1, '2014-09-20 09:24:49', 'Tư', 0),
(105, 8, 10, 1948, '0000-00-00', 'Mở đầu chiến dịch Đông Bắc I do bộ chỉ huy Liên khu I chỉ huy tiêu diệt các vị trí An Châu, Đồng Dương, Đồng Quy, bứt rút 7 vị trí khác.', 1, '2014-09-20 09:25:13', 'Tư', 0),
(106, 8, 10, 1956, '0000-00-00', 'Đại hội thành lập Hội Liên hiệp Thanh niên VN.', 1, '2014-09-20 09:25:31', 'Tư', 0),
(107, 8, 10, 1960, '0000-00-00', 'Lễ kết nghĩa 3 thành phố lớn Hà Nội-Huế-Sài Gòn và khởi đầu phong trào kết nghĩa giữa các tỉnh miền Bắc và miền Nam(Phong trào kết nghĩa Bắc Nam).', 1, '2014-09-20 09:25:51', 'Tư', 0),
(108, 8, 10, 1974, '0000-00-00', 'Chính phủ cách mạng lâm thời Cộng hòa Miền Nam VN ra tuyên bố về tình hình đấu tranh của các thành thị miền Nam. Bản tuyên bố lên án tội ác Mỹ-Ngụy, đòi Mỹ chấm dứt mọi dính líu quân sự và can thiệp vào công việc nội bộ của miền Nam VN, đòi đánh đổ Nguyễn Văn Thiệu và phe cánh.', 1, '2014-09-20 09:26:04', 'Tư', 0),
(110, 8, 10, 1992, '0000-00-00', 'Khai mạc hội chợ Công nghiệp Châu Âu EMP-Việt Nam 92 đầu tiên ở VN.', 1, '2014-09-20 09:26:45', 'Tư', 0),
(111, 8, 10, 1996, '0000-00-00', 'Người phát ngôn bộ Ngoại giao nước ta tuyên bố phản đối việc sử dụng đài RFA như 1 phương tiện can thiệp  vào công việc nội bộ nước khác.', 1, '2014-09-20 09:27:05', 'Tư', 0),
(113, 9, 10, 1921, '0000-00-00', 'Phiên họp đầu tiên của “Hội Liên hiệp thuộc địa” vừa được thành lập. Hội đã ra tuyên ngôn, xuất bản tờ báo Le Paria (người cùng khổ). Nguyễn Ái Quốc tham gia Ban chấp hành Hội.', 1, '2014-09-20 09:28:03', 'Tư', 0),
(114, 9, 10, 1969, '0000-00-00', 'Thành lập viện Y dược học dân tộc đầu tiên ở khu tự trị Việt Bắc.', 1, '2014-09-20 09:28:43', 'Tư', 0),
(115, 9, 10, 1969, '0000-00-00', 'Thành lập Tổng cục đào tạo công nhân kĩ thuật.', 1, '2014-09-20 09:28:59', 'Tư', 0),
(116, 9, 10, 1972, '0000-00-00', 'Thành lập Ủy ban Pháp chế trung ương.', 1, '2014-09-20 09:29:26', 'Tư', 0),
(117, 9, 10, 1973, '0000-00-00', 'Đại sứ đặc mệnh toàn quyền đầu tiên của nước Cộng hòa Áo  tại nước ta trình Ủy Nhiệm thư.', 1, '2014-09-20 09:29:40', 'Tư', 0),
(118, 9, 10, 1976, '0000-00-00', 'Thành lập công ty giấy và phục vụ trồng rừng thuộc Bộ Lâm Nghiệp.', 1, '2014-09-20 09:29:50', 'Tư', 0),
(120, 9, 10, 1981, '0000-00-00', 'Hội nghị lần thứ 10 Ban chấp hành trung ương Đảng Cộng sản VN khóa IV thảo luận dự thảo báo cáo chính trị và dự thảo báo cáo về công tác xây dựng Đảng sẽ trình tại Đại hội Đại biểu toàn quốc lần thứ V và quyết định Đại hội Đảng sẽ họp vào tháng 3-1982.', 1, '2014-09-20 09:30:21', 'Tư', 0),
(121, 9, 10, 1983, '0000-00-00', 'Khai mạc hội khỏe Phù Đổng lần thứ I tại Hà Nội.', 1, '2014-09-20 09:30:32', 'Tư', 0),
(122, 9, 10, 1986, '0000-00-00', 'Tại Hà Nội, Hội nghị Giám đốc bảo tàng lịch sử cách mạng và phong trào công nhân các nước XHCN.', 1, '2014-09-20 09:30:47', 'Tư', 0),
(123, 9, 10, 1996, '0000-00-00', 'Hội nghị toàn quốc Đảng Cộng sản VN về công tác xây dựng Đảng.', 1, '2014-09-20 09:31:00', 'Tư', 0),
(124, 9, 10, 1996, '0000-00-00', 'Khai mạc Cuộc gặp mặt toàn quốc Thanh niên tình nguyện VN.', 1, '2014-09-20 09:31:28', 'Tư', 0),
(125, 10, 10, 1427, '0000-00-00', 'Chiến thắng Chi Lăng(Lạng Sơn) Lê Lợi đại phá quân Minh.', 1, '2014-09-20 09:32:00', 'Tư', 0),
(126, 10, 10, 1895, '0000-00-00', 'Toàn quyền Đông Dương ra nghị định thành lập tỉnh Bắc Giang.', 1, '2014-09-20 09:32:18', 'Tư', 0),
(127, 10, 10, 1923, '0000-00-00', 'Nguyễn Ái Quốc tham dự Hội nghị lần thứ nhất Quốc tế Nông dân tại Matxcơva. Tại đại hội này Nguyễn Ái Quốc đã được bầu làm Ủy Viên đoàn chủ tịch Hội đồng nông dân Quốc tế.', 1, '2014-09-20 09:32:30', 'Tư', 0),
(128, 10, 10, 1929, '0000-00-00', 'Tòa án Nam Triều họp tại thành phố Vinh kết án tử hình vắng mặt lãnh tụ Nguyễn Ái Quốc (Nguyễn Tất Thành); còn có những án tử hình đối với Trần Phú, Lê Duy Điếm, Phan Tại, Trần Văn Cung, Vương Thúc Oánh và Ngô Thiêm.', 1, '2014-09-20 09:32:42', 'Tư', 0),
(129, 10, 10, 1942, '0000-00-00', 'Báo Cờ Giải Phóng, cơ quan của trung ương Đảng Cộng sản Đông Dương ra số đầu tiên. Tờ báo do tổng bí thư Trường Chinh phụ trách và là cây bút chính. Sau cách mạng tháng 8 báo xuất bản công khai tại Hà Nội.', 1, '2014-09-20 09:33:00', 'Tư', 0),
(130, 10, 10, 1945, '0000-00-00', 'Quân Anh lấy danh nghĩa Đồng Minh đi tước vũ khí quân Nhật ở các thị xã Đông Nam Bộ nhằm giúp Pháp mở rộng chiếm đóng các tỉnh xung quanh Sài Gòn.', 1, '2014-09-20 09:33:14', 'Tư', 0),
(131, 10, 10, 1945, '0000-00-00', 'Chính Phủ ký sắc lệnh thành lập Hội đồng cố vấn học chính.', 1, '2014-09-20 09:33:23', 'Tư', 0),
(132, 10, 10, 1954, '0000-00-00', 'Ngày giải phóng thủ đô: theo hiệp định Giơnevơ, quân đội Pháp phải trao trả lại cho ta thủ đô Hà Nội đúng thời hạn 80 ngày kể từ ngày kí kết. 9-10-1954, tốp lính Pháp cuối cùng rút khỏi. 10-10-1954 các đơn vị tiếp quản thủ đô tiến vào giải phóng Hà Nội.', 1, '2014-09-20 09:34:20', 'Tư', 0),
(133, 10, 10, 1958, '0000-00-00', 'Khởi công xây dựng nhà máy thủy điện Linh Hồ (lớn nhất 3 tỉnh Lào Cai, Hà Giang, Yên Bái).', 1, '2014-09-20 09:34:31', 'Tư', 0),
(134, 10, 10, 1958, '0000-00-00', 'Lực lượng vũ trang cách mạng tiến công quận lỵ Dầu Tiếng(Thủ Dầu Một), phá hủy các cơ quan ngụy quân và ngụy quyền trong quận, chiếm giữ trận địa trong 1 ngày đêm.', 1, '2014-09-20 09:34:42', 'Tư', 0),
(135, 10, 10, 1963, '0000-00-00', 'Hội đồng Chính phủ ra quyết định thành lập thành phố Vinh trực thuộc tỉnh Nghệ An.', 1, '2014-09-20 09:35:07', 'Tư', 0),
(136, 10, 10, 1965, '0000-00-00', 'Chiến thắng Plây Me.', 1, '2014-09-20 09:35:31', 'Tư', 0),
(137, 10, 10, 1965, '0000-00-00', 'Quân và dân tỉnh Thanh Hóa bắn rơi chiếc máy bay thứ 100 trên địa phương.', 1, '2014-09-20 09:35:47', 'Tư', 0),
(138, 10, 10, 1968, '0000-00-00', 'Quân giải phóng Sài Gòn-Gia Định tập kích cảng Nhà Bè đánh chìm 1 tàu tải trọng 13000 tấn chứa khoảng 15 triệu lít xăng.', 1, '2014-09-20 09:35:56', 'Tư', 0),
(139, 10, 10, 1969, '0000-00-00', 'Quân và dân tỉnh Bến Tre tiến công nhiều vị trí địch, diệt 592 tên, đánh thiệt hại nặng 1 tiểu đoàn, bắn cháy 6 tàu chiến, phá hủy 3 xe quân sự, bắn rơi 1 máy bay lên thẳng.', 1, '2014-09-20 09:36:07', 'Tư', 0),
(140, 10, 10, 1974, '0000-00-00', 'Ngày các nhà báo đi ăn mày: là tên cuộc biểu tình của các nhà báo Sài Gòn chống lại hành động bóp nghẹt quyền tự do báo chí của chế độ Thiệu.', 1, '2014-09-20 09:36:29', 'Tư', 0),
(142, 10, 10, 1987, '0000-00-00', 'Khánh thành trung tâm phục hồi chức năng cho trẻ em tàn tật.', 1, '2014-09-20 09:36:58', 'Tư', 0),
(144, 10, 10, 1987, '0000-00-00', 'Đoàn Đại biểu VN tham dự kỳ họp thứ 43 (đặc biệt của hội đồng tương trợ kinh tế).', 1, '2014-09-20 09:37:18', 'Tư', 0),
(145, 10, 10, 1994, '0000-00-00', 'Chủ tịch nước ký lệnh công bố Luật tổ chức Tòa án nhân dân.', 1, '2014-09-20 09:37:29', 'Tư', 0),
(146, 10, 10, 1994, '0000-00-00', 'Chủ tịch nước ký lệnh công bố Luật tổ chức Viện kiểm sát nhân dân.', 1, '2014-09-20 09:37:37', 'Tư', 0),
(147, 10, 10, 1992, '0000-00-00', 'Chủ tịch nước ký lệnh công bố Luật tổ chức Viện kiểm sát nhân dân.', 1, '2014-09-20 09:38:05', 'Tư', 0),
(148, 10, 10, 1992, '0000-00-00', 'Chủ tịch nước ký lệnh công bố Luật tổ chức Tòa án nhân dân.', 1, '2014-09-20 09:38:22', 'Tư', 0),
(151, 10, 10, 1995, '0000-00-00', 'Đoàn đại biểu VN tham dự hội nghị lần thứ 51 Hội đồng thống đốc quỹ tiền tệ Quốc tế(IMF) và ngân hàng thế giới (WB).', 1, '2014-09-20 09:40:07', 'Tư', 0),
(152, 10, 10, 1995, '0000-00-00', 'Thủ tướng Chính phủ quyết định thành lập Ủy ban quốc gia điều phối các hoạt động của VN trong ASEAN.', 1, '2014-09-20 09:40:18', 'Tư', 0),
(153, 9, 11, 226, '0000-00-00', 'ngay sinh cua Ba Trieu', 1, '2014-09-26 13:54:47', 'Tứ', 0),
(154, 9, 11, 1946, '0000-00-00', 'các đại biểu Quốc hội khoá I đã biểu quyết thông qua bản Hiến pháp đầu tiên của nước Việt Nam dân chủ cộng hoà.', 1, '2014-09-26 13:55:38', 'Tứ', 0),
(155, 10, 11, 1978, '0000-00-00', 'Uỷ ban Thường vụ Quốc hội nước Cộng hoà xã hội chủ nghĩa Việt Nam đã ra Quyết nghị: Lực lượng vũ trang nhân dân thành phố Hà Nội được tặng danh hiệu Anh hùng lực lượng vũ trang nhân dân.', 1, '2014-09-26 13:56:46', 'Tứ', 0),
(157, 11, 11, 1945, '0000-00-00', ' Ban chấp hành Trung ương Đảng họp và ra Nghị quyết về việc tuyên bố &quot;Tự giải tán&quot; Đảng cộng sản Đông Dương.', 1, '2014-09-26 13:58:43', 'Tứ', 0),
(158, 12, 11, 1936, '0000-00-00', 'hơn 10 nghìn công nhân mỏ than Cẩm Phả đã giành được thắng lợi sau một tuần bãi công, đấu tranh buộc chủ mỏ phải tǎng lương giảm giờ làm.', 1, '2014-09-26 14:00:16', 'Tứ', 0),
(159, 14, 11, 1953, '0000-00-00', 'Hội nghị toàn quốc lần thứ nhất của Đảng Lao động Việt Nam đã khai mạc.', 1, '2014-09-26 14:02:29', 'Tứ', 0),
(160, 14, 11, 1998, '0000-00-00', 'Việt Nam, Peru và Nga trở thành thành viên chính thức của APEC tại cuộc gặp bộ trưởng của APEC ở Kualar Lumpur.', 1, '2014-09-26 14:03:11', 'Tứ', 0),
(161, 2, 10, 1956, '0000-00-00', 'Vụ Cái Sắn (Rạch Giá): hơn 500 đồng bào di cư từ các con kênh trong phạm vi Cái Sắn biểu tình tuần hành phản đối chính quyền Sài Gòn, đòi quyền lợi và chống thủ đoạn cướp đất. Cuộc biểu tình bị đàn áp dã man, nhưng trước sự đoàn kết đấu tranh của đồng bào chúng phải nhượng bộ.', 1, '2014-10-06 06:40:44', 'Tư', 0),
(162, 11, 10, 1827, '0000-00-00', 'Nhà Nguyên gấp rút điều quân sang xâm lượt nước Đại Việt. Toàn bộ đạo quân dưới sự chỉ huy của Thoát Hoan.\r\n1873 Thực dân Pháp cho Francis Granier ra Bắc kỳ với chiêu bài giải quyết vụ Jean Dupuis, nhưng chính là chuẫn bị đánh chiếm Bắc Kỳ lần thứ nhất.\r\n', 1, '2014-10-06 06:41:16', 'Tư', 0),
(163, 11, 10, 1920, '0000-00-00', 'Khải Định ra dụ thành lập tỉnh Đồng Nai Thượng và thành phố Đà Lạt.', 1, '2014-10-06 06:41:28', 'Tư', 0),
(165, 11, 10, 1962, '0000-00-00', 'Lực lượng vũ trang giải phóng miền Nam đánh trả quyết liệt cuộc hành quân càn quét mang tên Chiến dịch Sao Mai của Mỹ-Diệm càn quét các vùng từ Long An đến Tây Ninh, lưu vực sông Vàm Cỏ Đông, vòng cung phía Nam và Tây bắc Sài Gòn.', 1, '2014-10-06 06:41:59', 'Tư', 0),
(166, 11, 10, 1965, '0000-00-00', 'Ủy ban thường vụ Quốc hội phê chuẩn việc tách bộ giáo dục thành 2 bộ: Bộ Giáo dục và Bộ Đại học và Trung học chuyên nghiệp; tách ủy ban nhà nước thành 2 cơ quan: Ủy ban khoa học và kĩ thuật nhà nước và Viện Khoa học Kĩ thuật(sau đổi lại thành Ủy ban Khoa học xã hội VN), thành lập tổng cục thông tin trực thuộc Hội Đồng Chính phủ.', 1, '2014-10-06 06:42:16', 'Tư', 0),
(169, 11, 10, 1993, '0000-00-00', 'Đại diện mặt trận Tổ quốc VN và ban tôn giáo Chính phủ gặp các vị chủ tịch và tổng thư kí Hội đồng Giám mục Thiên chúa giáo.', 1, '2014-10-06 06:42:51', 'Tư', 0),
(171, 11, 10, 1997, '0000-00-00', 'Thủ tướng Chính phủ ra chỉ thị về đấu tranh chống buôn lậu trong thời kỳ mới.', 1, '2014-10-06 06:43:13', 'Tư', 0),
(172, 12, 10, 1424, '0000-00-00', 'Theo kế hoạch tiến vào Nghệ An của Nguyễn Chính, nghĩa quân Lam Sơn trên đường hành quân đã tiến công Đồn Đa Căn (Nông Đống, Thanh Hóa), bao vây bức hàng thành Trà Long(Trà Lân, Nghệ An), mở rộng vùng giải phóng về miền nam đất nước.', 1, '2014-10-06 06:43:31', 'Tư', 0),
(173, 12, 10, 1923, '0000-00-00', 'Nguyễn Ái Quốc tham dự Đại hội Quốc tế nông dân và được bầu vào Ban chấp hành Quốc tế nông dân.', 1, '2014-10-06 06:43:47', 'Tư', 0),
(174, 12, 10, 1951, '0000-00-00', 'Chia chi khu Nam bộ thành 2 Phân liên khu.', 1, '2014-10-06 06:44:00', 'Tư', 0),
(175, 12, 10, 1971, '0000-00-00', 'Hội đồng Chính phủ quy định tên gọi và nhiệm vụ của cơ quan quân sự tại địa phương các cấp: Ở thành phố trực thuộc trung ương gọi là Bộ tư lệnh; Ở cấp tỉnh gọi là Bộ chỉ huy quân sự tỉnh; Các cấp dưới khác gọi là ban chỉ huy quân sự; Ở cấp xã gọi là ban chỉ huy xã đội.', 1, '2014-10-06 06:44:10', 'Tư', 0),
(176, 12, 10, 1971, '0000-00-00', 'Thành lập Hội các bà mẹ sinh viên, học sinh tại Sài Gòn.', 1, '2014-10-06 06:44:20', 'Tư', 0),
(177, 12, 10, 1971, '0000-00-00', 'Quân giải phóng liên tục đánh thắng ở khu vực Cần Đăng, Thiện ngôn, Xa Mát(trên đường 22).', 1, '2014-10-06 06:44:30', 'Tư', 0),
(178, 12, 10, 1978, '0000-00-00', 'Bộ Ngoại giao VN ra tuyên bố kịch liệt phản đối Trung Quốc ngày càng xâm phạm lãnh thổ, uy hiếp an ninh VN.', 1, '2014-10-06 06:44:53', 'Tư', 0),
(179, 12, 10, 1981, '0000-00-00', 'Đường bay quốc tế VN-Xo6PhiA (Bungari) chính thức hoạt động.', 1, '2014-10-06 06:45:13', 'Tư', 0),
(396, 22, 12, 1944, '0000-00-00', 'Thành lập Đội Việt Nam tuyên truyền giải phóng quân, tiền thân của Quân đội Nhân dân Việt Nam', 1, '2014-12-13 15:41:11', 'x', 1),
(181, 12, 10, 1995, '0000-00-00', 'Hội đồng nghiệm thu công trình đường dây tải điện 500KV Bắc Nam nghiệm thu công trình.', 1, '2014-10-06 06:45:42', 'Tư', 0),
(182, 12, 10, 1998, '0000-00-00', 'Khai mạc tuần lễ Khoa học công nghệ ASEAN lần thứ 5  và hội nghị bộ trưởng Khoa học-Công nghệ  ASEAN lần thứ 8 họp tại Hà Nội.', 1, '2014-10-06 06:45:57', 'Tư', 0),
(183, 12, 10, 1998, '0000-00-00', 'Đoàn đại biểu VN tham dự Hội nghị cấp cao kinh tế Đông Nam Á năm 1998 trong đó có phiên họp đặc biệt về Kinh tế VN.', 1, '2014-10-06 06:46:05', 'Tư', 0),
(184, 12, 10, 1998, '0000-00-00', 'Thủ tướng Chính phủ ký quyết định thành lập khu công nghệ cao Hòa Lạc.', 1, '2014-10-06 06:46:12', 'Tư', 0),
(185, 12, 10, 1998, '0000-00-00', 'Kỳ họp thứ nhất Ủy ban hỗn hợp VN- Séc về hợp tác kinh tế, thương mại họp tại Hà Nội.', 1, '2014-10-06 06:46:20', 'Tư', 0),
(186, 13, 10, 1940, '0000-00-00', 'Đơn vị du kích Bắc Sơn đầu tiên do ban chỉ huy khu căn cứ Bắc Sơn (Lạng Sơn) thành lập tại khu rừng Tân Hương.', 1, '2014-10-06 06:47:21', 'Tư', 0),
(187, 13, 10, 1963, '0000-00-00', 'Đoàn Đại biểu Hội lao động giải phóng miền Nam VN ra thăm miền Bắc và dự hội nghị Ủy ban công đoàn quốc tế đoàn kết với lao động và nhân dân miền Nam họp tại Hà Nội,', 1, '2014-10-06 06:47:34', 'Tư', 0),
(188, 13, 10, 1966, '0000-00-00', 'Quân giải phóng đánh sân bay Sóc Trăng lần thứ 11, phá hủy và phá hỏng 16 máy bay các loại, giết và làm bị thương 141 tên. Tổng 11 lần phá hủy và phá hỏng 242 máy bay các loại, diệt 768 tên địch.', 1, '2014-10-06 06:47:45', 'Tư', 0),
(189, 13, 10, 1966, '0000-00-00', 'Ủy ban thường vụ Quốc Hội thông qua lệnh quy định cấm nấu rượu trái phép.', 1, '2014-10-06 06:47:52', 'Tư', 0),
(190, 13, 10, 1974, '0000-00-00', 'Đoàn đại biểu văn hóa miền Nam do bộ trưởng Bộ Văn Hóa- Thông tin dẫn đầu ra thăm miền Bắc.', 1, '2014-10-06 06:48:03', 'Tư', 0),
(191, 13, 10, 1987, '0000-00-00', 'Khai mạc Ngày hội văn hóa Mông Cổ tại VN.', 1, '2014-10-06 06:48:20', 'Tư', 0),
(192, 13, 10, 1990, '0000-00-00', 'Ngày mất của  Cố vấn Ban chấp hành trung ương Đảng Cộng sản VN Lê Đức Thọ (Phan Đình Khải).', 1, '2014-10-06 06:48:38', 'Tư', 0),
(193, 13, 10, 1993, '0000-00-00', 'Chủ tịch nước ký lệnh công bố pháp lệnh hành nghề Y dược tư nhân', 1, '2014-10-06 06:48:58', 'Tư', 0),
(194, 14, 10, 1890, '0000-00-00', 'Toàn quyền Đông Dương ra nghị định thành lập tỉnh Thái Bình.', 1, '2014-10-06 06:49:35', 'Tư', 0),
(195, 14, 10, 1930, '0000-00-00', 'Hội nghị thứ nhất của Ban chấp hành trung ương Đảng Cộng sản VN họp ở Hương Cảng (Trung Quốc) thông qua luận cương chính trị của Đảng, đổi tên Đảng thành Đảng Cộng sản Đông Dương và ra quyết định thành lập các tổ chức quần chúng của Đảng, trong đó có Hội Nông Dân VN, cử Ban chấp hành trung ương chính thức do Trần Phú làm Tổng Bí thư.', 1, '2014-10-06 06:49:49', 'Tư', 0),
(196, 14, 10, 1930, '0000-00-00', 'Ngày truyền thống của Hội Nông dân VN.', 1, '2014-10-06 06:49:56', 'Tư', 0),
(197, 14, 10, 1946, '0000-00-00', 'Quân và dân Gia Định đánh bại cuộc càn quét của hơn 1000 tên đánh vào Tân Mĩ.', 1, '2014-10-06 06:50:07', 'Tư', 0),
(198, 14, 10, 1952, '0000-00-00', 'Mở đầu chiến dịch Tây Bắc do Bộ Tổng tư lệnh tổ chức chỉ đạo trên địa bàn Nghĩa Lộ, Lai Châu, Sơn La với quy mô 3 đại Đoàn nhằm tiêu diệt sih lực địch, tranh thủ nhân dân vùng Tây Bắc.', 1, '2014-10-06 06:50:19', 'Tư', 0),
(199, 14, 10, 1955, '0000-00-00', 'Đại diện chính phủ VN dân chủ cộng hòa và chính phủ Cộng hòa Pháp ký hiệp định thương mại đầu tiên giữa 2 nước.', 1, '2014-10-06 06:50:42', 'Tư', 0),
(200, 14, 10, 1976, '0000-00-00', 'Thành lập cục khí tượng thủy văn trực thuộc Hội Đồng Chính phủ trên cơ sở hợp nhất Nha Khí Tượng và Cục Thủy Văn.', 1, '2014-10-06 06:51:01', 'Tư', 0),
(201, 14, 10, 1996, '0000-00-00', 'Trung ương Đoàn TNCS HCM công bố giải thưởng Lý Tự Trọng, phần thưởng cao quý dành cho cán bộ Đoàn trong trường THPT có thành tích hoạt động Đoàn xuất sắc.', 1, '2014-10-06 06:51:39', 'Tư', 0),
(202, 14, 10, 1998, '0000-00-00', 'Thủ tướng Chính phủ ký quyết định thành lập Ban chỉ Đạo cải cách hành chính của Chính phủ.', 1, '2014-10-06 06:51:59', 'Tư', 0),
(203, 15, 10, 1893, '0000-00-00', 'Thực dân Pháp xử tử Trần Hữu Châu, 1 thành viên của khởi nghĩa Phan Đình Phùng.', 1, '2014-10-06 06:52:16', 'Tư', 0),
(204, 15, 10, 1945, '0000-00-00', 'Thành lập quân khu IV.', 1, '2014-10-06 06:52:29', 'Tư', 0),
(205, 15, 10, 1953, '0000-00-00', 'Chiến dịch Tây nam Ninh Bình do bộ Tổng tư lệnh tổ chức, chỉ đạo trên địa bàn các huyện Gia Viễn, Gia Khánh, Nho Quan và 1 phần huyện Yên Khánh nhằm phá tan chiến dịch Hải Âu trong kế hoạch Navarre của Pháp.', 1, '2014-10-06 06:52:45', 'Tư', 0),
(206, 15, 10, 1954, '0000-00-00', 'Tờ báo ảnh VN ra số đầu tiên với tên gọi là báo Hình ảnh VN. Năm 1958 đổi thành Báo ảnh VN.', 1, '2014-10-06 06:52:55', 'Tư', 0),
(207, 15, 10, 1960, '0000-00-00', '10000 đồng bào Bến Tre từ khắp các xã  trong huyện kéo vào hô vang khẩu hiệu đấu tranh:Đòi giải tán khu trù mật, hủy bỏ luật 10-59.', 1, '2014-10-06 06:53:10', 'Tư', 0),
(208, 15, 10, 1961, '0000-00-00', 'Thành lập ủy ban Bảo vệ hòa bình thế giới của miền Nam VN. ', 1, '2014-10-06 06:53:23', 'Tư', 0),
(209, 15, 10, 1961, '0000-00-00', 'Trên 1 vạn đồng bào các gia đình binh sĩ ngụy miền Nam kéo đến trại huấn luyện binh sĩ Quang Trung(Gia Định) đấu tranh đòi chồng con về.', 1, '2014-10-06 06:53:33', 'Tư', 0),
(210, 15, 10, 1963, '0000-00-00', 'Đoàn thể thao nước ta do Chính phủ cử đi dự Đại hội thể thao của các lực lượng mới trỗi dậy (GANEFO) tổ chức tại INDONESIA.', 1, '2014-10-06 06:53:43', 'Tư', 0),
(211, 15, 10, 1964, '0000-00-00', 'Chiến sĩ biệt động Sài Gòn Nguyễn Văn Trỗi bị xử bắn.', 1, '2014-10-06 06:53:50', 'Tư', 0),
(212, 15, 10, 1965, '0000-00-00', 'Ủy ban trung ương Mặt trận Dân tộc giải phóng miền Nam VN phát động “tháng căm thù giặc Mỹ, học tập gương anh hùng của liệt sĩ Nguyễn Văn Trổi, đẩy mạnh phong trào diệt Mỹ”.', 1, '2014-10-06 06:54:04', 'Tư', 0),
(213, 15, 10, 1966, '0000-00-00', 'Hơn 8600 đồng bào các quận Ô Môn, Phụng Hiệp, Châu Thành tỉnh Cần Thơ phối hợp với đồng bào trong thị xã đấu tranh chống Mỹ Ngụy đồn dân bắt lính, ném bom rải chất độc giết hại nhân dân, phá hoại mùa màng.', 1, '2014-10-06 06:54:20', 'Tư', 0),
(214, 15, 10, 1968, '0000-00-00', 'Hội nghị chiến tranh du kích toàn miền Nam lần thứ 4. Hội nghị đã chọn 3 ngọn cờ đầu: Bến Tre-anh dũng đồng khởi thắng Mỹ, diệt Ngụy; Trà Vinh- toàn dân nổi dậy, đoàn kết lập công; Thừa Thiên-tiến công nổi dậy, anh dũng kiên cường.', 1, '2014-10-06 06:54:51', 'Tư', 0),
(215, 15, 10, 1968, '0000-00-00', 'Hồ chủ tịch gửi thư cho các cán bộ, thầy giáo, cô giáo, công nhân, nhân viên, học sinh, sinh viên nhân dịp bắt đầu năm học mới.', 1, '2014-10-06 06:55:02', 'Tư', 0),
(216, 15, 10, 1970, '0000-00-00', 'Khai trương chính thức đường hàng không dân dụng Hà Nội-Matxcơva.', 1, '2014-10-06 06:55:12', 'Tư', 0),
(217, 15, 10, 1973, '0000-00-00', 'Bộ chỉ huy các Lực lượng vũ trang giải phóng miền Nam ra lệnh cho quân dân miền Nam đánh trả đích đáng những hành động chiến tranh của Mỹ và chính quyền Sài Gòn, bảo vệ vùng giải phóng, bảo vệ tính mạng, tài sản nhân dân, bảo vệ hiệp định Paris.', 1, '2014-10-06 06:55:22', 'Tư', 0),
(218, 15, 10, 1988, '0000-00-00', 'Kết thúc hoạt động Đảng Xã Hội VN. Đảng XHVN ra tuyên bố kết thúc hoạt động.', 1, '2014-10-06 06:55:31', 'Tư', 0),
(219, 15, 10, 1990, '0000-00-00', 'Hội thảo Quốc tế về “khoa học vật liệu” tổ chức tại Hà Nội.', 1, '2014-10-06 06:55:47', 'Tư', 0),
(220, 15, 10, 1991, '0000-00-00', 'Báo Hoa Học trò ra số đầu tiên.', 1, '2014-10-06 06:55:55', 'Tư', 0),
(221, 15, 10, 1994, '0000-00-00', 'Lần đầu tiên mở cửa Thị trường ngoại tệ Liên Ngân hàng.', 1, '2014-10-06 06:56:04', 'Tư', 0),
(222, 15, 10, 1996, '0000-00-00', 'Kỳ họp thứ 10 Quốc hội khóa IX…', 1, '2014-10-06 06:56:18', 'Tư', 0),
(223, 16, 10, 1945, '0000-00-00', 'Thành lập Quân khu I và Quân khu V', 1, '2014-10-06 06:56:50', 'Tư', 0),
(224, 16, 10, 1948, '0000-00-00', 'Ngày thành lập ngành kiểm tra Đảng của Đảng Cộng sản VN.', 1, '2014-10-06 06:57:19', 'Tư', 0),
(225, 16, 10, 1949, '0000-00-00', 'Thực dân Pháp nhảy dù xuống Phát Diệm (Ninh Bình), sau đó đánh chiếm Bùi Chu (Nam Định). Bọn phản động đứng ra lập khu tự trị và tổ chức quân tự vệ.', 1, '2014-10-06 06:57:40', 'Tư', 0),
(226, 16, 10, 1967, '0000-00-00', 'Thành lập Ủy ban nhân dân miền Nam VN đoàn kết  với nhân dân Mỹ.', 1, '2014-10-06 06:57:59', 'Tư', 0),
(227, 16, 10, 1968, '0000-00-00', 'Đảo Cồn Cỏ lập chiến công lớn: bắn rơi 3 máy bay Mỹ trong vòng 1 giờ.', 1, '2014-10-06 06:58:15', 'Tư', 0),
(228, 16, 10, 1969, '0000-00-00', '200 công nhân nhà máy chỉ sợi Khánh Hội(XICOVINA)tổ chức bãi công.', 1, '2014-10-06 06:58:26', 'Tư', 0),
(229, 16, 10, 1987, '0000-00-00', 'VN và Lào ký nghị định thư xác định lại đường biên giới.', 1, '2014-10-06 06:58:34', 'Tư', 0),
(230, 16, 10, 1989, '0000-00-00', 'Đại hội lần thứ 5 hội nhà báo VN.', 1, '2014-10-06 06:58:43', 'Tư', 0),
(231, 16, 10, 1992, '0000-00-00', 'Đại hội lần thứ 6 Đoàn Thanh Niên Cộng Sản HCM.', 1, '2014-10-06 06:58:53', 'Tư', 0),
(232, 16, 10, 1995, '0000-00-00', 'Khai mạc chương trình hữu nghị thanh niên Việt Nhật cho thế kỉ 21.', 1, '2014-10-06 06:59:07', 'Tư', 0),
(233, 17, 10, 1634, '0000-00-00', 'Ngày mất Đào Duy Từ.', 1, '2014-10-06 06:59:40', 'Tư', 0),
(234, 17, 10, 1809, '0000-00-00', 'Ngày sinh Cao Bá Quát, thủ lĩnh của khởi nghĩa nông dân chống triều đình nhà Nguyễn ở Sơn Tây, Bắc Ninh.', 1, '2014-10-06 06:59:58', 'Tư', 0),
(235, 17, 10, 1887, '0000-00-00', 'Thực dân Pháp ra sắc lệnh thành lập Liên Bang Đông Dương lúc đầu trực thuộc bộ Hải Quân và Thuộc đia và đến ngày 20.3.1894 trực thuộc Bộ thuộc địa Pháp. Đứng đầu là toàn quyền Đông Dương.', 1, '2014-10-06 07:00:08', 'Tư', 0),
(236, 17, 10, 1921, '0000-00-00', 'Thực dân Pháp ra nghị định thành lập thành phố Nam Định.', 1, '2014-10-06 07:00:22', 'Tư', 0),
(237, 17, 10, 1921, '0000-00-00', 'Thành lập lại tỉnh Phú Yên.', 1, '2014-10-06 07:00:28', 'Tư', 0),
(238, 17, 10, 1945, '0000-00-00', 'Chính phủ ra sắc lệnh về thể lệ bầu cử Quốc Hội chuẩn bị cho cuộc Tổng tuyển cử đầu tiên ở nước ta.', 1, '2014-10-06 07:00:44', 'Tư', 0),
(239, 17, 10, 1952, '0000-00-00', 'Trận tấn công đồn Pú Chạng của trung đoàn 102 (Đại đoàn 308) thuộc phân khu Nghĩa Lộ (Văn Chấn, Yên Bái) trong chiến dịch Tây Bắc.', 1, '2014-10-06 07:00:53', 'Tư', 0),
(240, 17, 10, 1954, '0000-00-00', 'Hồ Chủ tịch tiếp đoàn đại biểu nhân dân Thủ đô tại Bắc Bộ phủ(Hà Nội).', 1, '2014-10-06 07:01:01', 'Tư', 0),
(241, 17, 10, 1965, '0000-00-00', 'Trong 1 ngày quân và dân miền Bắc bắn rơi 13 máy bay Mỹ.', 1, '2014-10-06 07:01:10', 'Tư', 0),
(242, 17, 10, 1967, '0000-00-00', 'Trong vòng 2 phút các chiến sĩ của 1 đơn vị pháo cao xạ Hà Bắc đã bắn rơi 5 máy bay Mỹ.', 1, '2014-10-06 07:01:28', 'Tư', 0),
(243, 17, 10, 1970, '0000-00-00', 'Hơn 6000 công nhân hãng thầu Mỹ RMK-BRJ tại 7 công trường khu vực Sài Gòn –Gia Định nhất loạt bãi công không thời hạn.', 1, '2014-10-06 07:01:36', 'Tư', 0),
(244, 17, 10, 1988, '0000-00-00', 'Khai mạc đại hội lần thứ 6 Tổng công đoàn VN. Tại đại hội này Tổng công đoàn VN đổi tên thành Tổng Liên Đoàn lao động VN.', 1, '2014-10-06 07:01:45', 'Tư', 0),
(245, 17, 10, 1991, '0000-00-00', 'Ủy ban hỗn hợp về hợp tác kinh tế VN –Thái Lan họp phiên đầu tiên.', 1, '2014-10-06 07:01:56', 'Tư', 0),
(246, 18, 10, 1945, '0000-00-00', 'Trận quyêt chiến ở Thị Nghè(Sài Gòn), một đơn vị vệ quốc đoàn trong đoàn quân Nam Tiến cùng lực lượng vũ trang nhân dân Sài Gòn tiêu diệt lực lượng tiến công quy mô của Pháp.', 1, '2014-10-06 07:02:22', 'Tư', 0),
(247, 18, 10, 1953, '0000-00-00', 'Trận Văn Lý-Xương Điền: trận tập kích của Lực lượng vũ trang Liên khu 3 tỉnh Nam Định vào 2 tiểu đoàn quân Ngụy ở Văn Lý –Xương Điền (Hải Hậu- Nam Định).', 1, '2014-10-06 07:02:31', 'Tư', 0),
(248, 18, 10, 1961, '0000-00-00', 'Ủy ban trung ương lâm thời Mặt trận dân tộc giải phóng miền Nam ra tuyên bố vạch trần âm mưu của đế quốc Mỹ chuẩn bị trực tiếp vũ trang sang xâm lược miền Nam trước việc cử tướng Taylo sang miền Nam.', 1, '2014-10-06 07:02:44', 'Tư', 0),
(249, 18, 10, 1966, '0000-00-00', 'Chiến thắng Gò Quao(Rạch Giá):quân dân Rạch Giá đánh bại cuộc hành quân cướp phá của địch, tiêu diệt 4 đại đội bộ binh, 1 đại đội chỉ huy thuộc Trung đoàn chủ lực số 31, Sư đoàn 25 quân ngụy loại khỏi vòng chiến đấu 1000 tên địch.', 1, '2014-10-06 07:03:01', 'Tư', 0),
(250, 18, 10, 1988, '0000-00-00', 'Hội đồng bộ trưởng ra quyết định vế 1 số chính sách về công tác dân số và kế hoạch hóa gia đình.', 1, '2014-10-06 07:03:18', 'Tư', 0),
(251, 18, 10, 1988, '0000-00-00', 'Đại hội cuối cùng của Đảng Dân chủ VN. Đảng Dân chủ VN ra tuyên bố kết thúc hoạt động.', 1, '2014-10-06 07:03:24', 'Tư', 0),
(252, 18, 10, 1988, '0000-00-00', 'Tuyên bố của Bộ Ngoại giao VN về dự thảo nghị quyết của các nước ASEAN tại Liên hợp quốc.', 1, '2014-10-06 07:03:44', 'Tư', 0),
(253, 18, 10, 1988, '0000-00-00', 'Hội đồng bộ trưởng ra nghị định ban hành điều lệ quản lí đối ngoại.', 1, '2014-10-06 07:03:50', 'Tư', 0),
(254, 18, 10, 1994, '0000-00-00', 'Thủ tướng Chính phủ ký nghị định hướng dẫn thi hành luật bảo vệ môi trường.', 1, '2014-10-06 07:03:58', 'Tư', 0),
(255, 19, 10, 1898, '0000-00-00', 'Hơn 400 công nhân mỏ than khu Cái Đài, Kế Bào đình công đòi phải trả lương và đòi trở về quê quán.', 1, '2014-10-06 07:04:31', 'Tư', 0),
(256, 19, 10, 1946, '0000-00-00', 'Khai mạc hội nghị Quân sự toàn quốc của Đảng Cộng sản Đông Dương.', 1, '2014-10-06 07:04:49', 'Tư', 0),
(257, 19, 10, 1955, '0000-00-00', 'Thực hiện chủ trương của Bộ chính trị, Ban bí thư trung ương  Đảng Lao Động VN ra nghị quyết đổi tên đoàn Thanh Niên cứu quốc VN thành Đoàn thanh niên lao động VN.', 1, '2014-10-06 07:04:57', 'Tư', 0),
(258, 19, 10, 1956, '0000-00-00', 'Thành lập Ủy ban Đoàn kết Á Phi của VN.', 1, '2014-10-06 07:05:05', 'Tư', 0),
(259, 19, 10, 1962, '0000-00-00', 'Đoàn đại biểu Mặt trận dân tộc giải phóng miền Nam VN  ra thăm miền Bắc.', 1, '2014-10-06 07:05:25', 'Tư', 0),
(260, 19, 10, 1963, '0000-00-00', 'Chiến thắng Lộc Ninh(Bạc Liêu): Địch dùng chiến thuật “Phượng hoàng vồ mồi” cho 17 máy bay lên thẳng đổ 2000 quân xuống 1 thị xã nhỏ bé. Trận đánh diễn ra ác liệt, địch bị diệt 600 tên, 4 máy bay bị bắn rơi, 320 máy bay khác bị trúng đạn.', 1, '2014-10-06 07:05:37', 'Tư', 0);
INSERT INTO `cacsukien` (`id`, `ngay`, `thang`, `nam`, `ngaynao`, `sukien`, `theloai`, `luctao`, `nguoilam`, `sudung`) VALUES
(261, 19, 10, 1973, '0000-00-00', 'Chính phủ Cách mạng lâm thời Cộng hòa miền Nam VN công bố chính sách dân tộc.', 1, '2014-10-06 07:05:58', 'Tư', 0),
(262, 19, 10, 1976, '0000-00-00', 'Thủ tướng Chính phủ ra quyết định về việc mở hệ cao đẳng nghiệp vụ văn hóa quần chúng.', 1, '2014-10-06 07:06:11', 'Tư', 0),
(263, 19, 10, 1982, '0000-00-00', 'VN và Cu ba ký hiệp ước hữu nghị và hợp tác giữa 2 nước.', 1, '2014-10-06 07:06:20', 'Tư', 0),
(264, 20, 10, 1459, '0000-00-00', 'Ngày mất vua Lê Nhân Tông(Lê Bang Cơ), vua thứ 3 của nhà Hậu Lê.', 1, '2014-10-06 07:10:16', 'Tư', 0),
(265, 20, 10, 1890, '0000-00-00', 'Toàn quyền Đông Dương ra nghị định thành lập tỉnh Hà Nam.', 1, '2014-10-06 07:10:40', 'Tư', 0),
(266, 20, 10, 1898, '0000-00-00', 'Thành Thái ra dụ thành lập thị xã Vinh, thị xã Huế, thị xã Thanh Hóa, thị xã Quy Nhơn, thị xã Hội An, thị xã Phan Thiết.', 1, '2014-10-06 07:10:55', 'Tư', 0),
(267, 20, 10, 1911, '0000-00-00', 'Chính phủ Pháp ra sắc lệnh đổi Hội Đồng tối cao Đông Dương gọi là Hội đồng chính phủ Đông Dương.', 1, '2014-10-06 07:11:10', 'Tư', 0),
(268, 20, 10, 1930, '0000-00-00', 'Hội Phụ nữ Phản đế VN được thành lập. Nguyễn Thị Minh Khai là chủ tịch đầu tiên. Đó là tổ chức tiền thân của Hội Liên hiệp Phụ Nữ VN ngày nay.', 1, '2014-10-06 07:11:25', 'Tư', 0),
(269, 20, 10, 1945, '0000-00-00', 'Lễ xuất phát của Hội tuyên truyền xung phong lần thứ nhất: 500 đội viên nhận tờ ủy nhiệm thư và những huấn lệnh của Chính phủ để lên đường làm nhiệm vụ.', 1, '2014-10-06 07:11:35', 'Tư', 0),
(270, 20, 10, 1945, '0000-00-00', 'Hồ Chủ tịch khai mạc ngày cứu quốc của sinh viên, khuyến khích lòng yêu nước của quốc dân và ủng hộ đồng bào miền Nam.', 1, '2014-10-06 07:11:41', 'Tư', 0),
(271, 20, 10, 1950, '0000-00-00', 'Ngày báo Quân dội nhân dân ra số đầu tiên. Báo do 2 tờ Vệ quốc quân và Quân du kích sáp nhập.', 1, '2014-10-06 07:11:51', 'Tư', 0),
(272, 20, 10, 1960, '0000-00-00', 'Cuộc nổi dậy đồng loạt của nhân dân các dân tộc Tây Nguyên: quân và dân  Công Tum, Dak Lak, Gia Lai đã đồng loạt nổi dậy tiến công vào 1 số đồn địch.', 1, '2014-10-06 07:12:01', 'Tư', 0),
(273, 20, 10, 1963, '0000-00-00', 'Hội đồng chính phủ phát động phong trào “3 xây 3 chống”.', 1, '2014-10-06 07:12:10', 'Tư', 0),
(274, 20, 10, 1970, '0000-00-00', 'Quân và dân Cà Mau tiến công căn cứ nổi của địch trên vàm sông Ông Đốc phá hủy hoàn toàn căn cứ này , bắn chìm và bắn cháy 1 đoàn tàu quân sự gồm 17 chiếc đậu tại căn cứ, phá hủy 2 kho đạn, 1 kho xăng.', 1, '2014-10-06 07:12:23', 'Tư', 0),
(275, 20, 10, 1994, '0000-00-00', 'Kỳ họp thứ 6 khóa IX…', 1, '2014-10-06 07:12:33', 'Tư', 0),
(276, 20, 10, 1995, '0000-00-00', 'Khánh thành Nhà Bảo tàng Phụ Nữ VN.', 1, '2014-10-06 07:12:44', 'Tư', 0),
(277, 20, 10, 1997, '0000-00-00', 'Khai mạc hội nghị quân chính toàn quốc 1997.', 1, '2014-10-06 07:12:54', 'Tư', 0),
(278, 21, 10, 1965, '0000-00-00', 'Ngày mất tướng Nguyễn Sơn (Vũ Nguyên Bác).', 1, '2014-10-06 07:13:16', 'Tư', 0),
(279, 21, 10, 1970, '0000-00-00', 'Ủy ban Thường vụ Quốc hội thông qua Pháp lệnh trừng trị các tội xâm phạm tài sản XHCN.', 1, '2014-10-06 07:13:25', 'Tư', 0),
(280, 21, 10, 1970, '0000-00-00', 'Ủy ban Thường Vụ Quốc hội thông qua Pháp lệnh trừng trị các tội xâm phạm tài sản riêng của công dân.', 1, '2014-10-06 07:13:33', 'Tư', 0),
(281, 21, 10, 1985, '0000-00-00', 'Hội đồng Liên doanh dầu khí VN –Liên Xô họp kỳ thứ 6 tại Vùng Tàu, ký các văn kiện về hợp tác dầu khí trong kế hoạch 1986-1990.', 1, '2014-10-06 07:13:43', 'Tư', 0),
(282, 21, 10, 1993, '0000-00-00', 'Lần đầu tiên mở quỹ tín dụng hỗ trợ sinh viên nghèo học tốt.', 1, '2014-10-06 07:13:51', 'Tư', 0),
(283, 21, 10, 1997, '0000-00-00', 'Khánh thành việc xây dựng, tôn tạo nhà tù Hỏa Lò.', 1, '2014-10-06 07:13:59', 'Tư', 0),
(284, 21, 10, 1997, '0000-00-00', 'Thủ tướng Chính phủ ký quyết định thành lập Ban Quản lí khu Công nghiệp Quảng Ninh.', 1, '2014-10-06 07:14:09', 'Tư', 0),
(285, 22, 10, 1117, '0000-00-00', 'Ngày mất Nguyên phi Ỷ Lan (Lê Thị Ỷ Lan): nguyên phi vua Lý Thánh Tông, Hoàng Thái hậu nhà Lý.', 1, '2014-10-06 07:14:27', 'Tư', 0),
(286, 22, 10, 1907, '0000-00-00', 'Ngày thành lập thị xã Phú Thọ và thị xã Việt Trì.', 1, '2014-10-06 07:14:36', 'Tư', 0),
(287, 22, 10, 1922, '0000-00-00', 'Nguyễn Ái Quốc tham dự đại hội lần thứ 2 Đảng Cộng sản Pháp họp tại Pari.', 1, '2014-10-06 07:14:49', 'Tư', 0),
(288, 22, 10, 1954, '0000-00-00', 'Khởi công khôi phục đường sắt Hà Nội –Lạng Sơn.', 1, '2014-10-06 07:14:58', 'Tư', 0),
(289, 22, 10, 1978, '0000-00-00', 'Lễ trao tặng huân chương hữu nghị cho Hội nghị Xtôckhôm về VN do ủy ban Thụy Điển-Việt Nam và ủy ban quốc tế điều tra tội ác của Mỹ ở VN tổ chức tại Hà Nội.', 1, '2014-10-06 07:15:32', 'Tư', 0),
(290, 22, 10, 1979, '0000-00-00', 'Người phát ngôn Bộ Ngoại giao nước Cộng hòa XHCN VN ra tuyên bố bác bỏ việc Trung Quốc quy định 4 vùng nguy hiểm trên các vùng biển Quốc tế và trên vùng biển thuộc quần đảo Hoàng Sa của VN.', 1, '2014-10-06 07:15:42', 'Tư', 0),
(291, 22, 10, 1987, '0000-00-00', 'Chủ tịch Hội đồng bộ trưởng gửi thư đến Chủ tịch Phong trào không liên kết.', 1, '2014-10-06 07:15:57', 'Tư', 0),
(292, 22, 10, 1990, '0000-00-00', 'Liên Minh Châu Âu lập quan hệ ngoại giao với VN.', 1, '2014-10-06 07:16:06', 'Tư', 0),
(293, 22, 10, 1993, '0000-00-00', 'Hội thảo quốc tế về khuyến khích đầu tư ở VN.', 1, '2014-10-06 07:16:18', 'Tư', 0),
(294, 22, 10, 1995, '0000-00-00', 'Khai mạc hội nghị quốc tế Vật lý năng lượng cao và Vật lý thiên văn lần thứ 2 tại tp HCM.', 1, '2014-10-06 07:16:28', 'Tư', 0),
(295, 22, 10, 1997, '0000-00-00', 'Khai mạc hội thảo quốc tế về Vai trò kiểm toán Nhà nước trong nền kinh tế thị trường.', 1, '2014-10-06 07:16:39', 'Tư', 0),
(296, 23, 10, 1896, '0000-00-00', 'Thành Thái ra dụ thành lập trường Quốc học Huế.', 1, '2014-10-06 07:17:47', 'Tư', 0),
(297, 23, 10, 1945, '0000-00-00', 'Quân Pháp đổ bộ xâm lược lên thành phố Nha Trang sau đúng 1 tháng tấn công Nam Bộ. Mặt trận Nha Trang được mở, mở đầu phong trào chống Pháp ở tỉnh Khánh Hòa.', 1, '2014-10-06 07:17:57', 'Tư', 0),
(298, 23, 10, 1947, '0000-00-00', 'Trận Sông Lô: lực lượng pháo binh khu 10, bộ đội chủ lực và quân du kích địa phương chặn đánh tàu Pháp trên sông Lô(địa phận Tuyên Quang, Phú Thọ).', 1, '2014-10-06 07:18:07', 'Tư', 0),
(299, 23, 10, 1954, '0000-00-00', 'Bắt đầu đợt 2 cải cách ruộng đất, kết thúc ngày 15/1/1955.', 1, '2014-10-06 07:18:22', 'Tư', 0),
(300, 23, 10, 1955, '0000-00-00', 'Ngô Đình Diệm tổ chức trưng cầu ý dân nhằm phế truất vua Bảo Đại lên làm Tổng thống. Nhân dân nhiều nơi biểu tình chống lại, không đi bỏ phiếu; Riêng Sài Gòn -Chợ Lớn trên 50% không đi bầu.', 1, '2014-10-06 07:18:32', 'Tư', 0),
(301, 23, 10, 1961, '0000-00-00', 'Thành lập Lữ Đoàn hải quân 125 làm nhiệm vụ vận tải trên biển. Ngày ra đời Đường Hồ Chí Minh trên biển.', 1, '2014-10-06 07:18:42', 'Tư', 0),
(302, 23, 10, 1962, '0000-00-00', 'Khai mạc kỳ họp thứ 5 Quốc hội khóa II…', 1, '2014-10-06 07:18:50', 'Tư', 0),
(303, 23, 10, 1967, '0000-00-00', 'Chiến thắng Lộc Ninh –Phước Bình.Tại Lộc Ninh, Quân giải phóng đã loại ra ngoài vòng chiến đấu 3500 tên địch (hơn 2000 lính Mỹ), diệt 5 tiểu đoàn và 13 đại đội Mỹ, ngụy, 45 xe tăng và xe bọc thép, 13 máy bay, 36 đại bác.', 1, '2014-10-06 07:19:00', 'Tư', 0),
(304, 23, 10, 1973, '0000-00-00', '1200 công nhân viên chức nhà máy dệt Xicôvina ở Sài Gòn nhất loạt tuyệt thực để ủng hộ yêu sách do Liên đoàn công nhân kỹ nghệ bông vải nêu ra đòi tăng phụ cấp đắt đỏ và trợ cấp xã hội.', 1, '2014-10-06 07:19:47', 'Tư', 0),
(305, 23, 10, 1975, '0000-00-00', 'VN Dân chủ cộng hòa và Cộng hòa Nhân dân Hungari ký kế hoạch hợp tác văn hóa giữa 2 nước.', 1, '2014-10-06 07:20:09', 'Tư', 0),
(306, 23, 10, 1990, '0000-00-00', 'Hội nghị hội đồng Ngân hàng hợp tác kinh tế quốc tế (MBES) và Hội nghị hội đồng ngân hàng đầu tư quốc tế (MIB) tổ chức tại tp HCM.', 1, '2014-10-06 07:20:20', 'Tư', 0),
(307, 23, 10, 1997, '0000-00-00', 'Hội nghị lần thứ 3 Bộ trưởng các nước có sử dụng tiếng Pháp về giảng dạy Đại học và nghiên cứu, khai mạc tại Hà Nội.', 1, '2014-10-06 07:20:28', 'Tư', 0),
(308, 23, 10, 1997, '0000-00-00', 'Văn phòng trung ương Đảng Cộng sản VN tổ chức hội nghị tổng kết 10 năm thực hiện quyết định 20 về phòng lưu trữ của Đảng Cộng sản VN.', 1, '2014-10-06 07:20:38', 'Tư', 0),
(309, 24, 10, 1856, '0000-00-00', 'Hạm đội Pháp nổ súng bắn phá các đồn lũy trên bán đảo Sơn Trà(Đà Nẵng).', 1, '2014-10-06 07:20:59', 'Tư', 0),
(310, 24, 10, 1961, '0000-00-00', 'Khai mạc kỳ họp thứ 3 Quốc hội khóa II…', 1, '2014-10-06 07:21:09', 'Tư', 0),
(311, 24, 10, 1973, '0000-00-00', 'Chính phủ Cách mạng lâm thời Cộng hòa Miền Nam VN lập quan hệ ngoại giao với Bănglađét.', 1, '2014-10-06 07:21:20', 'Tư', 0),
(312, 24, 10, 1973, '0000-00-00', 'Ngày thành lập quân đoàn 1 Quân đội nhân dân VN gồm các sư đoàn 308(Sư đoàn quân tiên phong), sư đoàn 312 và 320B.', 1, '2014-10-06 07:21:26', 'Tư', 0),
(313, 24, 10, 1986, '0000-00-00', 'VN-Liên Xô ký kế hoạch hợp tác về khoa học- Văn hóa 1986-1990.', 1, '2014-10-06 07:21:36', 'Tư', 0),
(314, 24, 10, 1995, '0000-00-00', 'Chính phủ ra quyết định thành lập bảo tàng Dân tộc học VN trực thuộc trung tâm Khoa học và xã hội nhân văn quốc gia.', 1, '2014-10-06 07:21:44', 'Tư', 0),
(315, 24, 10, 1997, '0000-00-00', 'Khởi công xây dựng đường quốc lộ 1A vào khu công nghiệp Dung Quốc.', 1, '2014-10-06 07:21:58', 'Tư', 0),
(316, 25, 10, 1894, '0000-00-00', 'Thực dân Pháp thương lượng đình chiến với Đề Thám, xin chuộc lại tên Chesnay. Đề Thám lợi dụng lúc đình chiến này củng cố lực lượng và phát triển phong trào ở các nơi khác.', 1, '2014-10-06 07:22:24', 'Tư', 0),
(317, 25, 10, 1904, '0000-00-00', 'Toàn quyền Đông Dương ra quyết định thành lập Trường Cao Đẳng Y Khoa Đông Dương.', 1, '2014-10-06 07:22:32', 'Tư', 0),
(318, 25, 10, 1941, '0000-00-00', 'Tổng bộ Việt Minh chính thức công bố chương trình Việt Minh. Đây là bản cương lĩnh hoạt động do Tổng Bộ Việt Minh công bố để phổ biến rộng rãi trong quần chúng nhân dân.', 1, '2014-10-06 07:22:42', 'Tư', 0),
(319, 25, 10, 1944, '0000-00-00', 'Tổng bộ Việt Minh gửi thư cho các đoàn thể cách mạng VN ở hải ngoại nhằm thống nhất các lực lượng cách mạng trong và ngoài nước, thỏa thuận về chương trình xây dựng 1 nước VN hùng mạnh sau khi quét sạch quân thù.', 1, '2014-10-06 07:22:58', 'Tư', 0),
(320, 25, 10, 1956, '0000-00-00', 'Đại hội Đoàn Thanh niên cứu quốc lần thứ 2, quyết định đổi tên thành Đoàn Thanh Niên Lao Động VN.', 1, '2014-10-06 07:23:12', 'Tư', 0),
(321, 25, 10, 1958, '0000-00-00', 'Lực lượng vũ trang cách mạng đã đột nhập vào trụ sở phái bộ MAAG ở Biên Hòa, diệt 13 sĩ quan Mỹ và 6 tên bị thương nặng.', 1, '2014-10-06 07:23:21', 'Tư', 0),
(322, 25, 10, 1970, '0000-00-00', '500 nhân sĩ, trí thức tại Hà Nội tổ chức hội thảo tại Gia Định đòi Mỹ rút quân khỏi miền Nam, lập lại hòa bình.', 1, '2014-10-06 07:23:50', 'Tư', 0),
(323, 25, 10, 1974, '0000-00-00', 'Đoàn đại biểu kinh tế chính phủ nước ta sang thăm Trung Quốc, đàm phán và ký hiệp định về việc Trung Quốc viện trợ không hoàn lại về kinh tế và quân sự cho VN năm 1975.', 1, '2014-10-06 07:23:58', 'Tư', 0),
(324, 25, 10, 1989, '0000-00-00', 'Hội nghị lần thứ 16 đại biểu các Viện Hàn Lâm khoa học các nước XHCN.', 1, '2014-10-06 07:24:12', 'Tư', 0),
(325, 26, 10, 1898, '0000-00-00', 'Thành Thái ra dụ thành lập trường Canh Nông Huế.', 1, '2014-10-06 07:24:30', 'Tư', 0),
(326, 26, 10, 1961, '0000-00-00', 'Hội đồng chính phủ ra quyết định thành lập thị xã Sơn La trực thuộc khu tự trị Thái Mèo.', 1, '2014-10-06 07:24:46', 'Tư', 0),
(327, 26, 10, 1966, '0000-00-00', 'Thành lập học viện Kỹ thuật quân sự.', 1, '2014-10-06 07:24:56', 'Tư', 0),
(328, 26, 10, 1970, '0000-00-00', '1800 công nhân và nhân viên người VN làm việc cho hãng thầu RMK-BRJ nhất loạt bãi công.', 1, '2014-10-06 07:25:08', 'Tư', 0),
(329, 26, 10, 1972, '0000-00-00', 'Hơn 3000 đồng bào, trong đó có 300 nhà sư ở 2 huyện Cầu Ngang và Trà Cú(Trà Vinh) biểu tình tuần hành đả đảo chính quyền độc tài Mỹ Thiệu, ủng hộ lập trường của phái đoàn ta ở Hội nghị Pari.', 1, '2014-10-06 07:25:15', 'Tư', 0),
(330, 26, 10, 1978, '0000-00-00', 'Hoàn thành công trình lấn biển Sông Khoai(Huyện Yên Hưng, tỉnh Quảng Ninh).', 1, '2014-10-06 07:25:27', 'Tư', 0),
(331, 26, 10, 1988, '0000-00-00', 'Khai mạc hội nghị quốc tế về du lịch các chính phủ XHCN ở thành phố HCM.', 1, '2014-10-06 07:25:37', 'Tư', 0),
(332, 26, 10, 1991, '0000-00-00', 'Hội đồng bộ trưởng ra nghị định về thi hành luật Phổ cập giáo dục tiểu học.', 1, '2014-10-06 07:25:47', 'Tư', 0),
(333, 26, 10, 1992, '0000-00-00', 'Chính phủ ra nghị định thành lập Tổng cục du lịch VN.', 1, '2014-10-06 07:25:55', 'Tư', 0),
(334, 27, 10, 1075, '0000-00-00', 'Thực hiện chiến lược “Tấn công trước để chặn thế mạnh của giặc”, Lý Thường Kiệt cầm quân chủ lực vượt biển đổ bộ triệt phá các căn cứ hậu cần chuẩn bị chiến tranh của nhà Tống ở 2 châu Khâm và châu Liêm (Trung Quốc).', 1, '2014-10-06 07:26:16', 'Tư', 0),
(335, 27, 10, 1868, '0000-00-00', 'Ngày hi sinh của Nguyễn Trung Trực thủ lĩnh nghĩa quân chống pháp ở Nam Kỳ.', 1, '2014-10-06 07:26:28', 'Tư', 0),
(336, 27, 10, 1911, '0000-00-00', 'Thực dân Pháp ban bố sắc lệnh quy định dùng các đơn vị cân đo đong đếm sử dụng thống nhất ở Nam Kỳ là mét, kylogam, lít.', 1, '2014-10-06 07:26:37', 'Tư', 0),
(337, 27, 10, 1924, '0000-00-00', 'Toàn quyền Đông Dương ra nghị định thành lập trường Mỹ Thuật Đông Dương. Ngày 22.10.1942 gọi là trường Cao Đẳng Mỹ Thuật Đông Dương.', 1, '2014-10-06 07:26:46', 'Tư', 0),
(338, 27, 10, 1966, '0000-00-00', 'Chủ tịch nước VN Dân chủ cộng hòa ký lệnh công bố pháp lệnh cấm nấu rượu trái phép.', 1, '2014-10-06 07:27:03', 'Tư', 0),
(339, 27, 10, 1967, '0000-00-00', 'Mở đầu chiến dịch Lộc Ninh: sau hơn 1 tháng tiến công với 60 trận đánh, Quân giải phóng đã loại khỏi vòng chiến đấu 5400 tên địch, phá hủy 103 xe quân sự…', 1, '2014-10-06 07:27:13', 'Tư', 0),
(340, 27, 10, 1968, '0000-00-00', '500 đồng bào các giới, đại biểu cho 24 đoàn thể tôn giáo, nghiệp đoàn thành phố Sài Gòn mở cuộc họp lớn tại chùa Ân Quang, đấu tranh đòi lập lại hòa bình, lật đổ nội các chiến tranh của Thiệu, Kỳ, Hương, lập nội các hòa bình.', 1, '2014-10-06 07:27:24', 'Tư', 0),
(341, 27, 10, 1976, '0000-00-00', 'Hội nghị về công tác dân vận và mặt trận miền Nam họp tại thành phố Hồ Chí Minh.', 1, '2014-10-06 07:27:34', 'Tư', 0),
(342, 27, 10, 1997, '0000-00-00', 'Khai mạc hội nghị các hợp tác xã tiên tiến điển hình toàn quốc.', 1, '2014-10-06 07:27:46', 'Tư', 0),
(343, 27, 10, 1998, '0000-00-00', 'Khai mạc hội nghị quốc tế về sáng kiến 20/20 với sự tham gia của 72 đoàn đại biểu đại diện cho các nước đang phát triển họp tại Hà Nội.', 1, '2014-10-06 07:27:53', 'Tư', 0),
(344, 27, 10, 1998, '0000-00-00', 'Tại Hà Nội, khai mạc phiên họp lần thứ 5 Hội đồng Ủy ban quốc tế sông Mê Công.', 1, '2014-10-06 07:28:01', 'Tư', 0),
(345, 27, 10, 1998, '0000-00-00', 'Thủ tướng Chính phủ ký quyết định về chức năng, nhiệm vụ, quyền hạn và tổ chức bộ máy ban Chỉ đạo Quy hoạch và xây dựng thủ đô Hà Nội.', 1, '2014-10-06 07:28:08', 'Tư', 0),
(346, 28, 10, 1946, '0000-00-00', 'Khai mạc kỳ họp thứ 2 Quốc hội khóa I nước VN Dân chủ cộng hòa.', 1, '2014-10-06 07:28:40', 'Tư', 0),
(347, 28, 10, 1963, '0000-00-00', 'Khai mạc kỳ họp thứ 7 Quốc hội khóa II.', 1, '2014-10-06 07:28:55', 'Tư', 0),
(348, 28, 10, 1965, '0000-00-00', 'Quân giải phóng tấn công sân bay Chu Lai (Quảng Nam), Nước Mặn (Đà Nẵng) phá hủy 163 máy bay, diệt 600 phi công và nhân viên kỹ thuật.', 1, '2014-10-06 07:29:07', 'Tư', 0),
(349, 28, 10, 1966, '0000-00-00', 'Chiến thắng lớn Tây Ninh: Mỹ- Ngụy mở cuộc hành quân Attơnborơ vào khu vực đông và đông bắc tỉnh Tây Ninh, đánh phá vùng giải phóng với lực lượng 30000 quân gồm 2 sư đoàn và 2 lữ đoàn bộ binh, 6 tiểu đoàn xe bọc thép gồm 300 chiếc M113 và xe tăng, 100 khẩu đại bác và rất nhiều máy bay. Quân và dân Tây Ninh đã bẻ gãy cuộc hành quân của địch, diệt 3200 tên hầu hết là Mỹ, diệt gọn 1 tiểu đoàn, 3 đại ', 1, '2014-10-06 07:29:22', 'Tư', 0),
(350, 28, 10, 1966, '0000-00-00', 'Chiến thắng Long Bình(Biên Hòa): Quân giải phóng bắn phá căn cứ hậu cần quan trọng của địch ở Long Bình, phá hủy hoàn toàn 3 nhà kho chứa 125.000 quả bom, đạn đại bác 203 và 105mm.', 1, '2014-10-06 07:29:30', 'Tư', 0),
(351, 28, 10, 1966, '0000-00-00', 'Pháo binh và quân dân Hà Tĩnh- Nghệ An bắn cháy 2 tàu chiến Mỹ và bắn phá bờ biển nước ta.', 1, '2014-10-06 07:29:37', 'Tư', 0),
(352, 28, 10, 1969, '0000-00-00', 'Các lực lượng vũ trang nhân dân giải phóng miền Quảng Đức liên tục tiến công bọn Mỹ- Ngụy ở khu vực Đức Lập, Bu Prăng, giành thắng lợi to lớn: tiêu diệt 2810 tên địch ( có 230 tên Mỹ), bắn rơi 19 máy bay, 13 kho tàng quân sự.', 1, '2014-10-06 07:29:48', 'Tư', 0),
(353, 28, 10, 1982, '0000-00-00', 'Thanh niên 3 nước VN –Lào –Campuchia đã tổ chức cuộc gặp gở hữu nghị tại Hà Nội.', 1, '2014-10-06 07:30:01', 'Tư', 0),
(354, 28, 10, 1987, '0000-00-00', 'Đại biểu Giáo hội Phật giáo VN lần thứ 2 thông qua tuyên bố hòa bình.', 1, '2014-10-06 07:30:09', 'Tư', 0),
(355, 28, 10, 1989, '0000-00-00', 'Đại hội lần thứ 4 Hội nhà văn VN.', 1, '2014-10-06 07:30:18', 'Tư', 0),
(356, 28, 10, 1995, '0000-00-00', 'Quốc hội khóa IX kỳ họp thứ 8 thông qua Bộ luật Dân sự.', 1, '2014-10-06 07:30:26', 'Tư', 0),
(357, 28, 10, 1995, '0000-00-00', 'Đại hội lần 1 thành lập Hội môi trường đô thị VN.', 1, '2014-10-06 07:30:34', 'Tư', 0),
(358, 28, 10, 1998, '0000-00-00', 'Khai mạc kỳ họp thứ 4 quốc hội khóa X.', 1, '2014-10-06 07:30:44', 'Tư', 0),
(359, 29, 10, 1940, '0000-00-00', 'Ngày mất Phan Bội Châu.', 1, '2014-10-06 07:31:06', 'Tư', 0),
(360, 29, 10, 1945, '0000-00-00', 'Bác Hồ kêu gọi nhân dân Nam bộ quyết chiến đến giọt máu cuối cùng để bảo vệ cho nền độc lập của VN.', 1, '2014-10-06 07:31:15', 'Tư', 0),
(361, 29, 10, 1968, '0000-00-00', 'Thành lập cơ quan thông tin Mặt trận dân tộc giải phóng miền Nam VN tại Thụy Điển.', 1, '2014-10-06 07:31:33', 'Tư', 0),
(362, 29, 10, 1993, '0000-00-00', 'Đại hội toàn quốc lần thứ 1Hội đồng các hợp tác xã VN.', 1, '2014-10-06 07:31:42', 'Tư', 0),
(363, 29, 10, 1996, '0000-00-00', 'Kỳ họp thứ 3 Hội đồng Ủy ban quốc tế sông Mê Công họp tại Viên Chăn.', 1, '2014-10-06 07:31:50', 'Tư', 0),
(364, 29, 10, 1997, '0000-00-00', 'Thủ tướng Chính phủ ký quyết định thành lập Ủy ban An toàn giao thông quốc gia.', 1, '2014-10-06 07:31:59', 'Tư', 0),
(365, 30, 10, 1906, '0000-00-00', 'Toàn quyền Đông Dương ra nghị quyết thiết lập chương trình giáo dục Pháp Việt ở Trung Kỳ nhằm loại bỏ nền giáo dục Hán học ở Trung Kỳ.', 1, '2014-10-06 07:32:13', 'Tư', 0),
(366, 30, 10, 1945, '0000-00-00', 'Trận chiến đấu của Lực lượng vũ trang Nam bộ đánh bại liên quân Anh –Ấn –Nhật tại Xuân Lộc những ngày đầu kháng chiến.', 1, '2014-10-06 07:32:23', 'Tư', 0),
(367, 30, 10, 1954, '0000-00-00', 'Bộ đội ta tiếp quản Thị xã Hải Dương.', 1, '2014-10-06 07:32:32', 'Tư', 0),
(368, 30, 10, 1962, '0000-00-00', 'Thành lập hội đồng thập tự giải phóng miền Nam.', 1, '2014-10-06 07:32:42', 'Tư', 0),
(369, 30, 10, 1962, '0000-00-00', 'Hội đồng Chính phủ ra nghị định thành lập ngân hàng ngoại thương nước VN Dân chủ cộng hòa.', 1, '2014-10-06 07:32:53', 'Tư', 0),
(370, 30, 10, 1967, '0000-00-00', 'Quân giải phóng tấn công sân bay An Hòa (Quảng Nam): trong 5 phút diệt 50 máy bay và 300 tên Mỹ.', 1, '2014-10-06 07:33:03', 'Tư', 0),
(371, 30, 10, 1974, '0000-00-00', 'Các tầng lớp nhân dân tại Sài Gòn biểu tình đòi Nguyễn Văn Thiệu từ chức ngay.', 1, '2014-10-06 07:33:12', 'Tư', 0),
(372, 30, 10, 1986, '0000-00-00', 'Tại Hà Nội, khai mạc Những ngày văn hóa các dân tộc VN chào mừng Đại hội VI của Đảng.', 1, '2014-10-06 07:33:22', 'Tư', 0),
(373, 31, 10, 1957, '0000-00-00', 'Đoàn đại biểu Đảng Lao Động VN do Hồ Chủ tịch dẫn đầu lên đường sang Liên Xô dự lễ kỷ niệm 40 năm cách mạng tháng Mười, dự hội nghị các Đại biểu các Đảng Cộng sản và công nhân các nước XHCN, và hội nghị các Đảng Cộng sản và công nhân thế giới.', 1, '2014-10-06 07:33:47', 'Tư', 0),
(374, 31, 10, 1964, '0000-00-00', 'Quân giải phóng tấn công căn cứ không quân chiến lược của địch ở Biên Hòa cách Sài gòn 30km về phía đông bắc, phá hủy 59 máy bay Mỹ, diệt 293 tên Mỹ, phá hủy 2 kho đạn và làm cháy 1 kho xăng.', 1, '2014-10-06 07:34:02', 'Tư', 0),
(375, 31, 10, 1967, '0000-00-00', 'Đoàn đại biểu Đảng Lao Động VN, Quốc hội và Chính phủ VN Dân chủ cộng hòa đi dự lễ kỷ niệm 50 năm cách mạng tháng Mười.', 1, '2014-10-06 07:34:11', 'Tư', 0),
(376, 31, 10, 1968, '0000-00-00', 'Tổng thống Mỹ Giônxơn buộc phải tuyên bố chấm dứt ném bom miền Bắc từ 1.11.1968 bất chấp sự phản đối của chính quyền Nguyễn Văn Thiệu.', 1, '2014-10-06 07:34:22', 'Tư', 0),
(377, 31, 10, 1972, '0000-00-00', 'Sau 45 ngày bao vây liên tục, Quân giải phóng Quãng Ngãi đã tiêu diệt hoàn toàn căn cứ biệt kích Đá Bàn, tiêu diệt Tiểu đoàn 69 quân biệt động biên phòng Ngụy, làm bị thương và bắt hơn 1800 tên địch trong đó diệt gọn và đánh thiệt hại nặng 6 tiểu đoàn, 10 đại đội, 13 trung đội, san bằng 1 chi khu quân sự, 1 căn cứ biệt kích, 4 cứ điểm khác, thu và phá hơn 200 súng các loại, Hơn 5000 đồng bào nổi d', 1, '2014-10-06 07:34:33', 'Tư', 0),
(378, 31, 10, 1996, '0000-00-00', 'Chính phủ ra nghị định ban hành Quy chế hoạt động thông tin báo chí của phóng viên nước ngoài, các cơ quan, tổ chức nước ngoài tại VN.', 1, '2014-10-06 07:34:43', 'Tư', 0),
(379, 31, 10, 1998, '0000-00-00', 'Thủ tướng Chính phủ ban hành nghị định về việc phát hành thu hồi và thay thế tiền giấy, tiền kim loại.', 1, '2014-10-06 07:34:53', 'Tư', 0),
(380, 12, 11, 1886, '0000-00-00', 'cuộc khởi nghĩa Ba Đình chống quân Pháp, do Phạm Bành và Đinh Công Tráng lãnh đạo.', 1, '2014-10-11 13:56:59', 'Tứ', 0),
(381, 18, 11, 1964, '0000-00-00', 'đại đội 3 pháo cao xạ đã bắn rơi một chiếc máy bay RF101 và 2 chiếc T28 của Mỹ ở miền Tây tỉnh Quảng Bình.', 1, '2014-10-11 14:17:42', 'Tứ', 0),
(382, 19, 11, 1958, '0000-00-00', ' ký hiệp định thương mại chính thức đầu tiên giữa Việt Nam và Campuchia.', 1, '2014-10-11 14:26:07', 'Tứ', 0),
(383, 1, 9, 1858, '0000-00-00', 'Liên quân Pháp Tây Ban Nha nổ súng tấn công bán đảo Sơn Trà', 1, '2014-10-13 04:46:47', 'Tánh', 0),
(384, 1, 9, 1939, '0000-00-00', 'Phát xít Đức tấn công Ba Lan. Chiến tranh thế giới thứ lần thứ 2 bùng nổ', 1, '2014-10-13 04:53:14', 'Tánh', 0),
(385, 2, 9, 1945, '0000-00-00', 'Chủ tịch Hồ Chí Minh đọc Bản Tuyên ngôn Độc lập khai sinh nước Việt Nam Dân Chủ Cộng Hòa', 1, '2014-10-13 04:59:46', 'Tánh', 0),
(386, 3, 9, 1300, '0000-00-00', 'Ngày mất của Hưng Đạo Vương Trần Quốc Tuấn', 1, '2014-10-13 05:05:28', 'Tánh', 0),
(387, 4, 9, 1945, '0000-00-00', 'Ngày 4-9-1945 Hồ Chủ tịch đã ký sắc lệnh &quot;Tổ chức quỹ Độc lập&quot;', 1, '2014-10-13 05:10:08', 'Tánh', 0),
(388, 4, 9, 1958, '0000-00-00', 'Công hàm của Thủ tướng Việt Nam dân chủ cộng hòa Phạm Văn Đồng gửi cho thủ tướng Cộng hòa Nhân dân Trung Hoa Chu Ân Lai', 1, '2014-10-13 05:13:16', 'Tánh', 0),
(389, 4, 9, 1977, '0000-00-00', 'Tuyên bố của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam về lãnh hải, vùng tiếp giáp, vùng đặc quyền kinh tế và thềm lục địa của Việt Nam', 1, '2014-10-13 05:15:39', 'Tánh', 0),
(390, 5, 9, 1907, '0000-00-00', 'Vua Duy Tân (chữ Hán: 維新; 19 tháng 9, 1900 – 26 tháng 12, 1945) là vị Hoàng đế thứ 11 của nhà Nguyễn (ở ngôi từ 1907 tới 1916), sau vua Thành Thái', 1, '2014-10-13 05:19:23', 'Tánh', 0),
(391, 5, 9, 1962, '0000-00-00', 'Quan hệ Việt Nam - Lào', 1, '2014-10-13 05:21:36', 'Tánh', 0),
(392, 6, 9, 1931, '0000-00-00', 'Ngày mất của Trần Phú', 1, '2014-10-13 05:26:33', 'Tánh', 0),
(393, 6, 9, 1931, '0000-00-00', 'Ngày mất của Lê Hồng Phong', 1, '2014-10-13 05:28:23', 'Tánh', 0),
(394, 6, 9, 1942, '0000-00-00', 'Ngày mất của Lê Hồng Phong', 1, '2014-10-13 05:28:36', 'Tánh', 0),
(395, 7, 9, 1887, '0000-00-00', 'Ngày mất Đinh Công Tráng', 1, '2014-10-13 05:34:46', 'Tánh', 0),
(398, 18, 12, 1985, '0000-00-00', 'Ngày mất nhà thơ Xuân Diệu &lt;br/&gt; Hưởng thọ 69 tuổi.', 2, '2014-12-18 01:17:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cactulieu`
--

CREATE TABLE IF NOT EXISTS `cactulieu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sk` int(11) NOT NULL,
  `theloai` tinyint(1) NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tieude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `luctao` datetime NOT NULL,
  `sudung` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `cactulieu`
--

INSERT INTO `cactulieu` (`id`, `sk`, `theloai`, `url`, `tieude`, `luctao`, `sudung`) VALUES
(1, 1, 1, 'http', 'Hinh anh', '2014-09-08 22:42:34', 1),
(2, 4, 4, 'http://motgoctroi.com/StLichsu/LSCandai/NgoDinhDiem/AigietAnhemOngDiem.htm', 'tham khao', '2014-09-09 14:29:50', 1),
(3, 4, 2, 'https://www.youtube.com/watch?v=pv0Nmdq6cpc', 'tham khao', '2014-09-09 14:32:58', 1),
(4, 4, 1, 'http://www.reds.vn/index.php/khoanh-khac-lich-su/5714-sai-gon-trong-cuoc-dao-chinh-1963', 'tham khao', '2014-09-09 14:34:32', 1),
(5, 4, 1, '', '', '2014-09-09 14:35:44', 1),
(6, 5, 4, 'http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_C%C3%A1ch_m%E1%BB%87nh_%C4%90%E1%BB%93ng_minh_H%E1%BB%99i', '', '2014-09-10 08:18:49', 1),
(7, 13, 4, 'http://www.lichsuvietnam.vn/home.php?option=com_content&task=view&id=1511&Itemid=5', '', '2014-09-10 11:23:32', 1),
(8, 13, 1, 'http://cms.kienthuc.net.vn/uploaded/maianh/2013_07_26/ktt_27.7_chieuhoang1_kienthuc_xaul.jpg', 'Ảnh tượng thờ Lý Chiê Hoàng ở đền Rồng', '2014-09-10 12:15:05', 1),
(9, 14, 4, 'http://dangcongsan.vn/cpv/Modules/News/NewsDetail.aspx?co_id=30473&cn_id=76779', 'Chiến thắng Chi Lăng (Mục 4 nhỏ)', '2014-09-10 13:44:30', 1),
(10, 14, 1, 'http://dantri4.vcmedia.vn/gLC4WLlnU8F79RboyWSp/Image/2014/07/chi-lang1-a57cc.JPG', '', '2014-09-10 13:49:24', 1),
(11, 17, 4, 'http://thuvienphapluat.vn/archive/Quyet-dinh/Quyet-dinh-562-TTg-thanh-lap-Tong-cong-ty-Dien-luc-Viet-Nam-vb38892t17.aspx', '', '2014-09-10 13:55:33', 1),
(12, 18, 4, 'http://thuvienhoasen.org/a18011/my-da-thay-mat-nam-viet-nam-tu-cuoi-nam-1961', '', '2014-09-10 14:01:09', 1),
(13, 19, 1, 'http://baotanglichsu.vn/Uploaded/image/data%20Hung/dai%20tuong%20nguyen%20chi%20thanh/11.jpg', '', '2014-09-10 14:06:59', 1),
(14, 20, 1, 'http://www.vietnamtravels.vn/vietnam-travel-information/Vietnam_files/Yen-Bai-map.gif', 'Hiện nay tỉnh có diện tích 1.508 km2 và khoảng 1.789.200 người. Thái Bình có các đơn vị hành chính: thị xã Thái Bình và 7 huyện là Quỳnh Phụ, Hưng Hà, Đông Hưng, Vũ Thư, Kiến Xương, Tiền Hải và Thái T', '2014-09-10 14:14:11', 1),
(15, 22, 4, 'http://vietnamdefence.com/Home/quansuvietnam/khoinghiachientranh/Chien-tranh-pha-hoai-lan-1-7219651111968-cua-de-quoc-My/200911/48908.vnd', 'tham khao', '2014-09-12 08:08:59', 1),
(16, 22, 2, 'https://www.youtube.com/watch?v=-eF-EL_PFaQ', 'tham khao', '2014-09-12 08:14:17', 1),
(17, 24, 4, 'http://chinhphu.vn/portal/page/portal/chinhphu/thanhvienchinhphuquacacthoiky?governmentId=608', 'thanh vien', '2014-09-12 08:25:05', 1),
(18, 24, 1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTEhQUEhQUFBUXGRcYFxYXGBgYFxcbHBYYGxgYFxgYHCggGBslHhgXITEiJSkrLi4uFx8zODMsNygtLisBCgoKDgwOFA8PFCwcFBwsLCwsLCwrLCwsKywsLCwsLCwsLCwsLDg4LCw3L', 'anh 1', '2014-09-12 08:28:58', 1),
(19, 24, 1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUUExQWFhUXGR0aGRgYGBweIBwgHSAfHSAcHB4cHSggIB8lGxsgIjEhJSksLi4uGx8zODMsNygtLiwBCgoKDg0OFA8QFCwcHBwsLCwsLCwsLCwsLCwsLCwsLCwsLDcsLCwsLDcsL', 'anh 2', '2014-09-12 08:29:24', 1),
(20, 24, 1, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR77m6vRgpkLhs_k7hSqGRoNs3ppTuPXaCDwIWseITHV-AozbVqjg', 'anh 3', '2014-09-12 08:29:46', 1),
(21, 25, 4, 'http://voer.edu.vn/m/tran-tot-dong-truc-dong/76ef13af', 'chien thang Tot Dong-Chot Dong', '2014-09-12 08:36:39', 1),
(22, 25, 4, 'http://www.thuvienlichsu.com/su-kien/tran-tot-dong-chuc-dong', 'tu lieu', '2014-09-12 08:37:32', 1),
(23, 30, 4, 'http://vi.wikipedia.org/wiki/L%C3%BD_Chi%C3%AAu_Ho%C3%A0ng', '', '2014-09-20 08:44:14', 1),
(24, 32, 4, 'http://vi.wikipedia.org/wiki/%C4%90%C6%B0%E1%BB%9Dng_s%E1%BA%AFt_B%E1%BA%AFc_Nam', '', '2014-09-20 08:46:41', 1),
(25, 33, 4, 'http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_C%C3%A1ch_m%E1%BB%87nh_%C4%90%E1%BB%93ng_minh_H%E1%BB%99i', '', '2014-09-20 08:48:27', 1),
(26, 383, 4, 'http://www.lichsuvietnam.vn/home.php?option=com_content&task=view&id=181&Itemid=33', '', '2014-10-13 04:47:08', 1),
(27, 384, 4, 'http://vi.wikipedia.org/wiki/Cu%E1%BB%99c_t%E1%BA%A5n_c%C3%B4ng_Ba_Lan_(1939)', '', '2014-10-13 04:54:08', 1),
(28, 384, 1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTEhUUExQWFhUXGSAaFxgYGRoeHBkgGiAeGBwaHhocHCggHB0mHBwdITIiJSkrLi4uGB8zODQsNygtLisBCgoKDg0OFxAQGiwcHBwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsL', '', '2014-10-13 04:55:22', 1),
(29, 384, 1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTEhUUExQWFhUXGSAaFxgYGRoeHBkgGiAeGBwaHhocHCggHB0mHBwdITIiJSkrLi4uGB8zODQsNygtLisBCgoKDg0OFxAQGiwcHBwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsL', 'Wieluń sau khi bị không quân Đức Luftwaffe oanh tạc ngày 1 tháng 9 1939', '2014-10-13 04:55:46', 1),
(30, 384, 1, 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/An_official_order_of_Adolf_Hitler_for_attack_on_Poland_31.08.1939.jpg/250px-An_official_order_of_Adolf_Hitler_for_attack_on_Poland_31.08.1939.j', 'Mật lệnh tấn công Ba Lan do Hitler đưa ra ngày 31 tháng 8 năm 1939', '2014-10-13 04:56:31', 1),
(31, 385, 2, 'http://www.youtube.com/watch?v=qv_uf7fvKIQ', 'Bản Tuyên Ngôn Độc Lập - Ngày 2 Tháng 9 năm 1945', '2014-10-13 05:00:12', 1),
(32, 385, 4, 'http://vi.wikipedia.org/wiki/Tuy%C3%AAn_ng%C3%B4n_%C4%91%E1%BB%99c_l%E1%BA%ADp_(Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a)', 'Tuyên ngôn độc lập (Việt Nam Dân chủ Cộng hòa)', '2014-10-13 05:00:53', 1),
(33, 385, 1, 'http://img.webphunu.net/Upload/images/hang/2014/9-2014/01-9-14/quoc-khanh-2-9-2.jpg', 'Ngày 2/9/1945, Chủ tịch Hồ Chí Minh bước lên lễ đài, đọc bản Tuyên ngôn độc lập lịch sử, khai sinh ra nước Việt Nam dân chủ cộng hòa', '2014-10-13 05:02:16', 1),
(34, 386, 4, 'http://www.baothainguyen.org.vn/tin-tuc/ngay-nay-nam-xua/mot-so-su-kien-trong-ngay-3-thang-9-219986-46225.html', 'Ông mất ngày 3-9-1300, thọ 74 tuổi.', '2014-10-13 05:06:04', 1),
(35, 386, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-Cx9YnfMh-ifRciCcgzJSFpW2ZLikswF6stlG-5XKywtxfOdNfQ', 'Danh tiếng lẫy lừng của Trần Hưng Đạo gắn liền với cuộc chiến tranh vệ quốc vĩ đại hồi thế kỉ 13 chống quân xâm lược Nguyên Mông', '2014-10-13 05:07:00', 1),
(36, 387, 4, 'http://yume.vn/hopsexy/article/mot-so-su-kien-trong-ngay-4-thang-9-35C7F854.htm', 'Ngày 4-9-1945 Hồ Chủ tịch đã ký sắc lệnh &quot;Tổ chức quỹ Độc lập&quot;', '2014-10-13 05:10:32', 1),
(37, 388, 4, 'http://vi.wikipedia.org/wiki/C%C3%B4ng_h%C3%A0m_n%C4%83m_1958_c%E1%BB%A7a_Th%E1%BB%A7_t%C6%B0%E1%BB%9Bng_Ph%E1%BA%A1m_V%C4%83n_%C4%90%E1%BB%93ng', '', '2014-10-13 05:13:32', 1),
(38, 389, 4, 'Tuyên bố của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam về lãnh hải, vùng tiếp giáp, vùng đặc quyền kinh tế và thềm lục địa của Việt Nam', '', '2014-10-13 05:15:50', 1),
(39, 390, 4, 'http://vi.wikipedia.org/wiki/Duy_T%C3%A2n', '', '2014-10-13 05:19:37', 1),
(40, 391, 4, 'http://vi.wikipedia.org/wiki/Quan_h%E1%BB%87_Vi%E1%BB%87t_Nam_-_L%C3%A0o', 'Quan hệ Việt Nam - Lào', '2014-10-13 05:22:15', 1),
(41, 392, 4, 'http://vi.wikipedia.org/wiki/Tr%E1%BA%A7n_Ph%C3%BA', 'Ngày mất của Trần Phú', '2014-10-13 05:26:51', 1),
(42, 394, 1, 'http://vi.wikipedia.org/wiki/L%C3%AA_H%E1%BB%93ng_Phong', '', '2014-10-13 05:29:12', 1),
(43, 395, 4, 'http://vi.wikipedia.org/wiki/%C4%90inh_C%C3%B4ng_Tr%C3%A1ng', '', '2014-10-13 05:35:01', 1),
(44, 396, 4, 'http://thainguyen.edu.vn/Thanhvien/c2bacson/602/1872/Lich-su-hinh-thanh-ngay-quan-doi-nhan-dan-Viet-Nam.aspx', 'Lịch sử hình thành ngày quân đội nhân dân Việt Nam', '2014-12-13 15:44:04', 0),
(45, 396, 1, 'http://www.thanhdoan.hochiminhcity.gov.vn/ThanhDoan/webtd_/data/news/2014/11/21003/Le%20xuat%20quan%20ngay%2022-12-1944.jpg', 'Đội Việt Nam tuyên truyền giải phóng quân', '2014-12-13 15:46:54', 1),
(46, 398, 1, 'http://www.tanhieptho.com/ti%E1%BB%83u-s%E1%BB%AD-s%E1%BB%B1-nghi%E1%BB%87p-va-thi-ca-c%E1%BB%A7a-nha-th%C6%A1-xuan-di%E1%BB%87u/2009/01/', 'Tiểu sử, sự nghiệp và thi ca của nhà thơ Xuân Diệu', '2014-12-18 01:26:32', 1),
(47, 398, 1, 'http://upload.wikimedia.org/wikipedia/vi/2/20/Xuandieu1.jpg', 'Ảnh chân dung Xuân Diệu', '2014-12-18 01:27:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhngon`
--

CREATE TABLE IF NOT EXISTS `danhngon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `caunoi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loaisukien`
--

CREATE TABLE IF NOT EXISTS `loaisukien` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `theloai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `loaisukien`
--

INSERT INTO `loaisukien` (`id`, `theloai`) VALUES
(1, 'Lịch sử'),
(2, 'Xã hội'),
(3, 'Khoa học');

-- --------------------------------------------------------

--
-- Table structure for table `loaitulieu`
--

CREATE TABLE IF NOT EXISTS `loaitulieu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `loaitulieu`
--

INSERT INTO `loaitulieu` (`id`, `tenloai`) VALUES
(1, 'Hình ảnh'),
(2, 'Phim ngắn'),
(3, 'Âm thanh'),
(4, 'Bài báo');

-- --------------------------------------------------------

--
-- Table structure for table `truonghoc`
--

CREATE TABLE IF NOT EXISTS `truonghoc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tentruong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangweb` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `lucnao` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `truonghoc`
--

INSERT INTO `truonghoc` (`id`, `tentruong`, `diachi`, `sodienthoai`, `email`, `trangweb`, `lucnao`) VALUES
(1, 'THPT Nguyễn Du', 'Hoài Nhơn, Bình Định', '0563868799', 'vanphong@thptnguyendu.edu.vn', 'http://thptnguyendu.edu.vn', '2014-09-11 16:01:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
