-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2015 at 08:34 PM
-- Server version: 5.5.45
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `number_selected` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `sv_id`, `content`, `number_selected`) VALUES
(10, 21, 'Ngu', 4),
(11, 21, 'Trung bình', 8),
(12, 21, 'Kém', 8),
(16, 21, 'Ngu', 7),
(93, 34, 'Ngon', 3),
(94, 34, 'Thơm', 2),
(95, 34, 'Rẻ', 1),
(102, 35, 'eqwewq', 0),
(103, 35, 'qewew', 0),
(104, 35, 'qweqwe', 0),
(105, 35, 'eqweqw', 0),
(106, 36, 'Ăn cơm', 0),
(107, 36, 'Ăn cám', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE IF NOT EXISTS `homepage` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `path` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE IF NOT EXISTS `new` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_updated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`id`, `tch_id`, `title`, `content`, `time_created`, `time_updated`) VALUES
(5, 1, 'Công Ty Phần Mềm HOSCO Tuyển Thực Tập Viên Kĩ Thuật Phần Mềm', '<p>HOSCO&nbsp; mong muốn mang đến cơ hội c&ugrave;ng l&agrave;m gi&agrave;u, c&ugrave;ng ph&aacute;t triển cho c&aacute;c th&agrave;nh vi&ecirc;n nhiệt huyết, c&oacute; ch&iacute; tiến thủ, t&acirc;m huyết với c&ocirc;ng ty. M&ocirc;i trường c&ocirc;ng ty năng động, định hướng tạo m&ocirc;i trường startup, nơi m&agrave; lu&ocirc;n đề cao sự s&aacute;ng tạo, th&uacute;c đẩy tư duy, tầm nh&igrave;n doanh nghiệp.</p>\r\n\r\n<p>Trung th&agrave;nh với quan điểm ph&aacute;t triển dựa tr&ecirc;n nền tảng chất lượng v&agrave; dịch vụ, c&aacute;c th&agrave;nh vi&ecirc;n của&nbsp;HOSCO lu&ocirc;n ghi nhớ khẩu hiệu &ldquo;HOSCO, niềm tin đi c&ugrave;ng chữ T&iacute;n&rdquo;. Sản phẩm phần mềm v&agrave; giải ph&aacute;p của HOSCO đ&atilde; mang lại sự tin tưởng cho c&aacute;c doanh nghiệp, c&aacute;c đơn vị kinh doanh. Li&ecirc;n tiếp trong 3 năm 2013, 2014, 2015, HOSCO vinh dự nhận danh hiệu Sao Khu&ecirc; về sản phẩm, giải ph&aacute;p v&agrave; dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin do Hiệp hội Phần mềm v&agrave; Dịch vụ CNTT Việt Nam VINASA b&igrave;nh chọn v&agrave; c&ocirc;ng nhận</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>1.&nbsp;</strong><strong>M&ocirc; tả cv</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Tham gia nghi&ecirc;n cứu, x&acirc;y dựng, ph&aacute;t triển c&aacute;c hệ thống phần mềm của c&ocirc;ng ty</p>\r\n\r\n<p>- Ph&acirc;n t&iacute;ch, lập tr&igrave;nh, chỉnh sửa c&aacute;c y&ecirc;u cầu kỹ thuật cụ thể theo sự ph&acirc;n c&ocirc;ng của c&aacute;n bộ quản l&yacute;</p>\r\n\r\n<p>- L&agrave;m việc tại : H&agrave; Nội</p>\r\n\r\n<p><strong>2.&nbsp;</strong><strong>Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&agrave; sinh vi&ecirc;n từ năm thứ 3 trở l&ecirc;n.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đam m&ecirc; c&ocirc;ng nghệ th&ocirc;ng tin, tư duy giải quyết vấn đề tốt, nhiệt t&igrave;nh, ham học hỏi</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&agrave;m việc partime hoặc fulltime từ 02 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; hiểu biết về c&aacute;c c&ocirc;ng nghệ :</p>\r\n\r\n<p>+/ C,C++, C# winform/ webform, Web Service, Entity Framework.</p>\r\n\r\n<p>+/ Web browser technology: HTML5, AJAX, JQuery.</p>\r\n\r\n<p>+/ Versioning tool: SVN.</p>\r\n\r\n<p>+/ OS: Windows or Linux.</p>\r\n\r\n<p>+/ IDE: Eclipse, Visual Studio 2010.</p>\r\n\r\n<p>+/ Web server: Weblogic, Tomcat, Apache or IIS.</p>\r\n\r\n<p>+/ Java (jsp) + Android</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +/ Database: MS SQL Server or Oracle.</p>\r\n\r\n<p><strong>3.&nbsp;</strong><strong>Quyền lợi d&agrave;nh cho thực tập vi&ecirc;n :</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tạo điều kiện tiếp cận với c&ocirc;ng việc thực tế, ph&ugrave; hợp với chuy&ecirc;n ng&agrave;nh</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tạo điều kiện học tập v&agrave; nghi&ecirc;n cứu về phần mềm đ&atilde; triển khai của c&ocirc;ng ty</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; nhiều cơ hội để ph&aacute;t triển năng lực bản th&acirc;n, r&egrave;n luyện c&aacute;c kỹ năng trong c&ocirc;ng việc</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia v&agrave;o m&ocirc;i trường l&agrave;m việc năng động v&agrave; c&aacute;c hoạt động &ldquo;tinh thần&rdquo;, giải tr&iacute; do C&ocirc;ng ty tổ chức.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được l&agrave;m việc trong m&ocirc;i trường năng động, cảm nhận được tinh thần startup, nơi m&agrave; t&iacute;nh s&aacute;ng tạo lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p><strong>Đặc biệt c&aacute;c ứng vi&ecirc;n c&oacute; kết quả thực tập tốt sẽ c&oacute; cơ hội trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức tại HOSCO ngay sau khi tốt nghiệp</strong></p>\r\n\r\n<p><strong>4.&nbsp;</strong><strong>Hồ sơ bao gồm</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sơ yếu l&yacute; lịch</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CV hoặc 01 bản tờ khai ứng vi&ecirc;n download theo mẫu tại địa chỉ:&nbsp;<a href="http://hosgroup.com.vn/tokhaiungvien.doc">http://hosgroup.com.vn/tokhaiungvien.doc</a></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bản sao CMTND, văn bằng, chứng chỉ li&ecirc;n quan</p>\r\n\r\n<p><strong>Li&ecirc;n hệ hồ sơ:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>C&aacute;ch 1:</u></strong>Nhận hồ sợ qua email:&nbsp;<a href="mailto:hr@hosgroup.com.vn">hr@hosgroup.com.vn</a></p>\r\n\r\n<p>C&aacute;ch đặt ti&ecirc;u đề mail dự tuyển:&nbsp; (Họ, t&ecirc;n ứng vi&ecirc;n)_(Vị tr&iacute; ứng tuyển)</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>C&aacute;ch 2:</u></strong>Nộp trực tiếp ph&ograve;ng nh&acirc;n sự theo địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng H&agrave;nh ch&iacute;nh Nh&acirc;n sự - C&ocirc;ng ty Cổ phần HOSCO</p>\r\n\r\n<p>HOSCO Miền Bắc: P 816, To&agrave; nh&agrave; CT5, KĐT Mỹ Đ&igrave;nh- S&ocirc;ng Đ&agrave;, Từ Li&ecirc;m, H&agrave; Nội</p>\r\n\r\n<p>Tel: 046 291 7845 - 046682 7126</p>\r\n\r\n<p>Website:&nbsp;<a href="http://hosgroup.com.vn/">http://hosgroup.com.vn</a>&nbsp;-&nbsp;<a href="http://hosco.com.vn/">http://hosco.com.vn</a></p>\r\n\r\n<p>&nbsp;(<em>Khuyến kh&iacute;ch &nbsp;ứng vi&ecirc;n gửi hồ sơ qua email,&nbsp;kh&ocirc;ng ho&agrave;n lại hồ sơ kh&ocirc;ng đạt y&ecirc;u cầu&nbsp;đối với ứng vi&ecirc;n nộp hồ sơ trực tiếp)</em></p>\r\n', '2015-11-23 22:26:49', '2015-11-23 22:26:49'),
(6, 1, 'Trung tâm Giải pháp Công nghê thông tin và Viễn thông Viettel tuyển sinh viên thực tập', '<p>L&agrave; đơn vị kinh doanh ti&ecirc;n phong của Tập đo&agrave;n viễn th&ocirc;ng Qu&acirc;n đội trong lĩnh vực C&ocirc;ng nghệ th&ocirc;ng tin (CNTT), Trung t&acirc;m Giải ph&aacute;p C&ocirc;ng ngh&ecirc; th&ocirc;ng tin v&agrave; Viễn th&ocirc;ng Viettel (Trung t&acirc;m Viettel ICT) đang tr&ecirc;n đ&agrave; ph&aacute;t triển mạnh mẽ với mục ti&ecirc;u đưa CNTT v&agrave;o mọi lĩnh vực của đời sống.</p>\r\n\r\n<p>Trung t&acirc;m Ph&aacute;t triển Khởi nghiệp (ICT HUB) thuộc Trung t&acirc;m Viettel ICT được th&agrave;nh lập với mục đ&iacute;ch x&acirc;y dựng v&agrave; ph&aacute;t hiện được c&aacute;c &yacute; tưởng/sản phẩm mang t&iacute;nh đột ph&aacute;. L&agrave; nơi c&oacute; m&ocirc;i trường l&agrave;m việc khoa học, &nbsp;chuy&ecirc;n nghiệp rất ph&ugrave; hợp để c&aacute;c em sinh vi&ecirc;n đam m&ecirc; về CNTT hiện thực h&oacute;a c&aacute;c &yacute; tưởng/sản phẩm đưa v&agrave;o &aacute;p dụng trong cuộc sống.</p>\r\n\r\n<p>Hiện ICT HUB đang cần tuyển dụng sinh vi&ecirc;n thực tập tham gia l&agrave;m dự &aacute;n với c&aacute;c vị tr&iacute; sau sau:</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vị tr&iacute; tuyển dụng</strong></p>\r\n\r\n<p>-&nbsp; &nbsp;Lập tr&igrave;nh Java</p>\r\n\r\n<p>-&nbsp; Lập tr&igrave;nh Android</p>\r\n\r\n<p><strong>-&nbsp; Số lượng tuyển dụng: 20</strong></p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dự &aacute;n tham gia</strong></p>\r\n\r\n<p>-&nbsp; Hệ thống quản l&yacute; nghiệp vụ.</p>\r\n\r\n<p>-&nbsp; Ứng dụng mạng x&atilde; hội, chat OTT.</p>\r\n\r\n<p><strong>-&nbsp; Thời gian l&agrave;m việc: Tối thiểu 5 buổi/tuần (c&oacute; thể đăng k&yacute; l&agrave;m s&aacute;ng/chiều hoặc cả ng&agrave;y)</strong></p>\r\n\r\n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>-&nbsp; L&agrave; sinh vi&ecirc;n&nbsp;<strong>năm thứ 4,5</strong>&nbsp;khối CNTT, To&aacute;n Tin ứng dụng c&aacute;c trường: ĐHQGHN, ĐH B&aacute;ch Khoa, ĐH FPT, HV Bưu ch&iacute;nh Viễn th&ocirc;ng v&agrave; c&aacute;c trường đ&agrave;o tạo tương đương.</p>\r\n\r\n<p>-&nbsp; Ưu ti&ecirc;n đặc biệt với sinh vi&ecirc;n đến từ hệ đ&agrave;o tạo chất lượng cao, t&agrave;i năng.</p>\r\n\r\n<p>-&nbsp; Đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch c&ocirc;ng nghệ</p>\r\n\r\n<p>-&nbsp; C&oacute; khả năng l&agrave;m việc theo nh&oacute;m, khả năng tự học hỏi v&agrave; l&agrave;m việc, nghi&ecirc;n cứu độc lập</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quyền lợi, cơ hội khi tham gia dự &aacute;n tại ICT HUB: Đến với ICT HUB bạn sẽ c&oacute; cơ hội</strong></p>\r\n\r\n<p>-&nbsp; Được tuyển dụng v&agrave;o l&agrave;m việc ch&iacute;nh thức tại Viettel</p>\r\n\r\n<p>-&nbsp; Được bổ nhiệm v&agrave;o những vị tr&iacute; quan trong trong dự &aacute;n</p>\r\n\r\n<p>-&nbsp; Được tiếp x&uacute;c, ph&aacute;t triển ra c&aacute;c thị trường nước ngo&agrave;i</p>\r\n\r\n<p>-&nbsp; Được ph&acirc;n chia lợi nhuận doanh thu xứng đ&aacute;ng sau khi dự &aacute;n th&agrave;nh c&ocirc;ng</p>\r\n\r\n<p>-&nbsp; Được l&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, được học hỏi, kinh nghiệm từ nhiều kỹ sư, chuy&ecirc;n gia giỏi</p>\r\n\r\n<p>-&nbsp; Được tạo điều kiện đ&agrave;o tạo kỹ năng, chuy&ecirc;n m&ocirc;n, nghi&ecirc;n cứu ph&aacute;t triển c&ocirc;ng nghệ</p>\r\n\r\n<p>-&nbsp; Được thỏa sức s&aacute;ng tạo, ph&aacute;t triển &yacute; tưởng sản phẩm</p>\r\n\r\n<p><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thời hạn đăng k&yacute;: Trước ng&agrave;y 30/11/2015</strong></p>\r\n\r\n<p><strong>SINH VI&Ecirc;N ĐĂNG K&Yacute; TRỰC TIẾP TẠI LINK</strong>:&nbsp;<strong><a href="http://bitly.com/ict_hub">http://bitly.com/ict_hub</a></strong></p>\r\n', '2015-11-23 22:29:13', '2015-11-23 22:29:13'),
(7, 1, 'Thông tin tuyển dụng Application Engineer của JAPAN RAKUTEN ICHIBA', '<p><strong>A.&nbsp;&nbsp;&nbsp; Th&ocirc;ng tin doanh nghiệp</strong></p>\r\n\r\n<p>Rakuten, Inc. l&agrave; 1 trong 4 &ldquo;cột trụ&rdquo; của thương mại điện tử thế giới, với trụ sở nằm ở cả 3 ch&acirc;u lục &Aacute;, &Acirc;u, Mỹ.</p>\r\n\r\n<p>Trang dịch vụ &ldquo;Rakuten Ichiba&rdquo; hiện l&agrave; trung t&acirc;m mua sắm trực tuyến lớn nhất của Nhật.</p>\r\n\r\n<p>Tập đo&agrave;n Rakuten cung cấp c&aacute;c dịch vụ kinh doanh trực tuyến đa dạng v&agrave; đứng h&agrave;ng đầu ở hầu hết c&aacute;c lĩnh vực hoạt động. V&igrave; vậy c&aacute;c bạn chắc chắn sẽ c&oacute; cơ hội thể hiện một c&aacute;ch tốt nhất, l&agrave;m việc với những th&agrave;nh vi&ecirc;n ưu t&uacute; tại Rakuten để cung cấp dịch vụ tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Mục ti&ecirc;u của tập đo&agrave;n l&agrave; trở th&agrave;nh c&ocirc;ng ty dịch vụ Internet tốt nhất thế giới!</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy ch&uacute;ng t&ocirc;i đang cần những con người xuất sắc từ tr&ecirc;n khắp thế giới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu bạn l&agrave; người y&ecirc;u th&iacute;ch tạo n&ecirc;n những điều mới mẻ, mưu cầu ph&aacute;t triển, t&iacute;ch luỹ kinh nghiệm qua nỗ lực hết m&igrave;nh hướng tới mục ti&ecirc;u r&otilde; r&agrave;ng, Rakuten ch&iacute;nh l&agrave; nơi d&agrave;nh cho bạn.</p>\r\n\r\n<p>Corporate Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Established&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feb. 7th. 1997</p>\r\n\r\n<p>Stock Exchange Listings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apr. 19, 2000</p>\r\n\r\n<p>Headquarters&nbsp;&nbsp;&nbsp;&nbsp; Tokyo, Japan</p>\r\n\r\n<p>Revenue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 599 billion JPY (Dec 2014) *International Financial Reporting</p>\r\n\r\n<p>URL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://global.rakuten.com/corp/</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>B.&nbsp;&nbsp;&nbsp; TH&Ocirc;NG TIN VỊ TR&Iacute; TUYỂN DỤNG</strong></p>\r\n\r\n<p>Địa điểm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rakuten Tower (Tokyo) v&agrave; c&aacute;c chi nh&aacute;nh của trong Nhật Bản</p>\r\n\r\n<p>Mức lương tham khảo</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ 2.500USD~/th&aacute;ng</p>\r\n\r\n<p>*Mức lương thay đổi tuỳ theo năng lực v&agrave; số năm kinh nghiệm.</p>\r\n\r\n<p>Thưởng: 2 lần/năm (th&aacute;ng 6, th&aacute;ng 12) dựa tr&ecirc;n doanh thu v&agrave; th&agrave;nh t&iacute;ch l&agrave;m việc c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Xem x&eacute;t thay đổi lương: 2 lần/năm (th&aacute;ng 6, th&aacute;ng 12) dựa tr&ecirc;n thực t&iacute;ch kinh doanh của c&ocirc;ng ty v&agrave; đ&aacute;nh gi&aacute; đối với c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Giờ l&agrave;m việc v&agrave; ng&agrave;y nghỉ :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - từ 9:30 &ndash; 18:00 (7.5 tiếng, nghỉ 1 tiếng)</p>\r\n\r\n<p>*Tuy nhi&ecirc;n những ng&agrave;y họp buổi s&aacute;ng trong tập đo&agrave;n, giờ l&agrave;m sẽ l&agrave; 8:00 &ndash; 16:30</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ng&agrave;y nghỉ: thứ 7, Chủ nhật, ng&agrave;y lễ</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghỉ ph&eacute;p: nghỉ h&egrave;, nghỉ đ&ocirc;ng, nghỉ ph&eacute;p c&oacute; lương, nghỉ ph&eacute;p c&oacute; l&yacute; do.</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghỉ thai sản, con nhỏ, hỷ hiếu&hellip;</p>\r\n\r\n<p>Đ&atilde;i ngộ</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c bảo hiểm x&atilde; hội (bảo hiểm nh&acirc;n thọ, bảo hiểm sức khoẻ, bảo hiểm lao động, bảo hiểm tuyển dụng)</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi ph&iacute; đi lại</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia Hội cổ đ&ocirc;ng c&ocirc;ng ty</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia c&aacute;c c&acirc;u lạc bộ thể thao</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Visa</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi ph&iacute; khi thay đổi địa điểm l&agrave;m việc</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dịch vụ trong c&ocirc;ng ty</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khu ăn uống (ăn s&aacute;ng v&agrave; trưa miễn ph&iacute;, phục vụ ăn tối c&oacute; ph&iacute;)</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thư viện (c&oacute; kh&ocirc;ng gian nghi&ecirc;n cứu c&aacute; nh&acirc;n)</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph&ograve;ng tập gym &ldquo;Rakuten Fitness Club&rdquo; (c&oacute; ph&iacute;)</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sự kiện sinh nhật, hoạt động sinh hoạt c&acirc;u lạc bộ,Halloween party, Tiệc cuối năm, đầu năm&hellip;</p>\r\n\r\n<p><strong><u>M&ocirc; tả c&ocirc;ng việc:</u></strong></p>\r\n\r\n<p>-&nbsp; Phụ tr&aacute;ch nhiều c&ocirc;ng việc như thiết kế, ph&aacute;t triển, vận h&agrave;nh , sử dụng nhiều kĩ thuật v&agrave; trải nghiệm nhiều dịch vụ c&ugrave;ng một số th&agrave;nh vi&ecirc;n kh&aacute;c. Tương lai sẽ mở rộng nghiệp vụ sang đề xuất, cải tiến hệ thống dịch vụ đảm nhiệm, c&ugrave;ng với c&aacute;c kĩ sư leader kh&aacute;c trở th&agrave;nh đội ngũ ti&ecirc;n phong.</p>\r\n\r\n<p><strong>&nbsp;Y&ecirc;u cầu về kĩ thuật</strong></p>\r\n\r\n<p>- C&oacute; kinh nghiệm ph&aacute;t triển bằng JAVA hoặc PHP (1 năm trở l&ecirc;n)</p>\r\n\r\n<p>- C&oacute; kiến thức, kinh nghiệm cơ bản về Linux hoặc Unix</p>\r\n\r\n<p>- C&oacute; kinh nghiệm sử dụng SQL</p>\r\n\r\n<p><strong>Y&ecirc;u cầu về ng&ocirc;n ngữ giao tiếp</strong></p>\r\n\r\n<p>- Tiếng Anh giao tiếp th&ocirc;ng thường</p>\r\n\r\n<p>*Sau khi tr&uacute;ng tuyển, c&ocirc;ng ty hỗ trợ việc học tiếng Anh. Mục ti&ecirc;u trước khi ch&iacute;nh thức v&agrave;o c&ocirc;ng ty c&oacute; chứng chỉ TOEIC từ 800 trở l&ecirc;n.</p>\r\n\r\n<p>Ưu ti&ecirc;n người biết th&ecirc;m tiếng Nhật thương mại</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hạn nộp CV: ng&agrave;y 7/11/2015</strong></p>\r\n\r\n<p><strong>Phỏng vấn v&ograve;ng 1 qua Skype trước ng&agrave;y 10/11/2015</strong></p>\r\n\r\n<p><strong>H&igrave;nh thức v&agrave; lịch phỏng vấn:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; - gửi CV đến địa chỉ email:&nbsp;<a href="mailto:talent.div@framgia.com">talent.div@framgia.com</a></strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; - Trước ng&agrave;y 10/11 phỏng vấn v&ograve;ng 1 qua Skype</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; - Ng&agrave;y 19/11, 20/11: phỏng vấn v&ograve;ng 2 với sinh vi&ecirc;n năm cuối</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; - Ng&agrave;y 21/11, 22/11: phỏng vấn v&ograve;ng 2 với người đ&atilde; tốt nghiệp/ đang đi l&agrave;m</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ:&nbsp;&nbsp; Framgia Vietnam&nbsp; - Talent Consulting Division</strong></p>\r\n\r\n<p><strong>Email:&nbsp;<a href="mailto:talent.div@framgia.com">talent.div@framgia.com</a></strong></p>\r\n\r\n<p><strong>Tel:+(84-4) 3765 5417 Mobile 0949 310 094</strong></p>\r\n\r\n<p><strong>Facebook: https://www.facebook.com/framgia.talent</strong></p>\r\n', '2015-11-23 22:31:00', '2015-11-24 08:27:40'),
(8, 2, 'daasddsa dadsa das ', '<p>adsdsad dasd sad d as dad&nbsp;</p>\r\n', '2015-11-24 09:49:05', '2015-11-24 09:49:23'),
(9, 2, '12da123d12312', '<p>a12d213213d123212</p>\r\n', '2015-11-24 09:53:52', '2015-11-24 09:53:52'),
(10, 1, 'ICT/SW Experts training Program 2016', '<p>Tiếp theo chương tr&igrave;nh ICT/SW Experts training Program 2015, năm nay KAIST kết hợp với HUST tiếp tục tổ chức ICT/SW Experts training Program 2016 với nội dung mới:</p>\r\n\r\n<p>&quot;2016 ICT/SW Experts training Program: KAIST Tech Startup Program&quot;</p>\r\n\r\n<p>Introduction:&nbsp;<a href="https://goo.gl/Tw1S3d">https://goo.gl/Tw1S3d</a></p>\r\n\r\n<p>Focusing on students who are interested in start-up after graduate university. KAIST will select startup items and provide educational training, technical assistance, prototyping, entrepreneurship and marketing strategies to the selected teams.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>■ Who can apply : about 10 students who have graduated from undergraduate school &amp; prospective graduate from graduate school (2~5 pers/1 team)<br />\r\n■ Application field : all IT/SW areas that start-up is available after graduate<br />\r\n■ How to apply: 2~5 students make a team and submit Start-up Plan&nbsp;<br />\r\n■ Main Schedule:&nbsp;<br />\r\n-Application Period : 21 Nov, 2015 ~ 5 Dec, 2015<br />\r\n-Receiving applications : Fill out the application Start-up Plan) and submit by e-mail:&nbsp;<a href="mailto: &lt;script type=''text/javascript''&gt; &lt;!-- var prefix = ''ma'' + ''il'' + ''to''; var path = ''hr'' + ''ef'' + ''=''; var addy16439 = ''icd.hust'' + ''@''; addy16439 = addy16439 + ''hust'' + ''.'' + ''edu'' + ''.'' + ''vn''; document.write(''&lt;a '' + path + ''\\'''' + prefix + '':'' + addy16439 + ''\\''&gt;''); document.write(addy16439); document.write(''&lt;\\/a&gt;''); //--&gt;\\n &lt;/script&gt;&lt;script type=''text/javascript''&gt; &lt;!-- document.write(''&lt;span style=\\''display: none;\\''&gt;''); //--&gt; &lt;/script&gt;This email address is being protected from spambots. You need JavaScript enabled to view it. &lt;script type=''text/javascript''&gt; &lt;!-- document.write(''&lt;/''); document.write(''span&gt;''); //--&gt; &lt;/script&gt;" target="_blank">&nbsp;</a><a href="mailto:icd.hust@hust.edu.vn">icd.hust@hust.edu.vn</a>&nbsp;<br />\r\n-1st step of Team Selection (Document screening): 1 Dec, 2015 ~ 6 Dec, 2015<br />\r\n-2nd step of Team Selection (Presentation and Interview): 12 Dec, 2015 (Saturday)<br />\r\n-Final Selected members : About 10 students (Within 3 teams)&nbsp;<br />\r\n-Orientation for participants: 13 Dec, 2015 (Sunday)</p>\r\n\r\n<p>Đăng k&yacute;:<br />\r\n1) Điền th&ocirc;ng tin đăng k&yacute; v&agrave;o form<br />\r\n<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgoo.gl%2Fforms%2F3yI0rMXGWO&amp;h=BAQFKXuPfAQF81mmyZpFdjugBm-akXKVV27bsYINPXcvxQQ&amp;enc=AZPOTCpXDNI0epBs7DdqMlHSK8iITkHA3ZUXz2RmrFGLYKTX3V2I2tEs0xP-k2cY6SxlEEv8AFVlVC168CsRnKvf34b3GnnvBulZQXrUJF9G95iHDIw9_3kKAeJH39egDqIcGx964ZmkSrDELG6Zeoq9KnZ_PyFtS-FVoemfVP2qZ7OkHGkTDxLG6szQHcSt2KKwPZXj3g6f0oCH_i-KD1k4&amp;s=1" rel="nofollow" target="_blank">http://goo.gl/forms/3yI0rMXGWO</a><br />\r\n2) Viết application presentation theo mẫu tại:<br />\r\n<a href="https://drive.google.com/file/d/0B1FG1fzF2A_7ZGU5T2lvQTZ0Njg/view?usp=sharing">https://drive.google.com/file/d/0B1FG1fzF2A_7ZGU5T2lvQTZ0Njg/view?usp=sharing</a></p>\r\n', '2015-11-26 13:50:04', '2015-11-26 13:52:55'),
(11, 1, 'Seminar Xử lý ảnh dựa trên mô hình tham số Markov không vòng', '<p>Thời gian: 14h00 thứ 2 ng&agrave;y 07/12/2015</p>\r\n\r\n<p>Địa điểm: 803 B1, Đại học B&aacute;ch Khoa H&agrave; Nội</p>\r\n\r\n<p>Người tr&igrave;nh b&agrave;y: GS. TSKH. Sergey Dvoenko</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ti&ecirc;u đề: Xử l&yacute; ảnh dựa tr&ecirc;n m&ocirc; h&igrave;nh tham số Markov kh&ocirc;ng v&ograve;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&oacute;m tắt: C&ocirc;ng tr&igrave;nh n&agrave;y nghi&ecirc;n cứu vấn đề nhận dạng c&aacute;c đối tượng cấu th&agrave;nh một mảng dữ liệu c&oacute; li&ecirc;n kết. Trong học m&aacute;y, c&aacute;c th&agrave;nh phần của mảng thường thuộc một trong hữu hạn c&aacute;c lớp n&agrave;o đ&oacute;. Quan hệ giữa c&aacute;c đối tượng trong mảng được m&ocirc; tả bằng đồ thị li&ecirc;n kết.&nbsp; Trong c&ocirc;ng tr&igrave;nh n&agrave;y, ch&uacute;ng t&ocirc;i đề xuất giải thuật hiệu quả để đ&aacute;nh gi&aacute; ph&acirc;n bố bi&ecirc;n hậu nghiệm của c&aacute;c biến ẩn tương ứng với c&aacute;c đối tượng trong mảng đối với trường hợp đồ thị li&ecirc;n kết c&oacute; dạng c&acirc;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng thường, đồ thị li&ecirc;n kết để m&ocirc; tả dữ liệu thực thường chứa chu tr&igrave;nh. V&iacute; dụ để m&ocirc; tả sự li&ecirc;n kết giữa c&aacute;c điểm ảnh c&oacute; thể sử dượng đồ thị li&ecirc;n kết dạng lưới h&igrave;nh chữ nhật 2D. V&igrave; vậy, việc xấp xỉ đồ thị n&agrave;y bằng đồ thị li&ecirc;n kết dạng c&acirc;y sẽ l&agrave;m mất m&aacute;t nhiều th&ocirc;ng tin về sự li&ecirc;n kết giữa c&aacute;c phần tử. Trong c&ocirc;ng tr&igrave;nh n&agrave;y, ch&uacute;ng t&ocirc;i đề xuất sử dụng một tập c&aacute;c đồ thị dạng c&acirc;y kh&aacute;c nhau để xấp xỉ đồ thị ban đầu, nhờ đ&oacute; c&acirc;n bằng được sự mất m&aacute;t th&ocirc;ng tin khi xấp xỉ bằng từng c&acirc;y ri&ecirc;ng bi&ecirc;t.</p>\r\n\r\n<p>Người tr&igrave;nh b&agrave;y: GS. TSKH. Sergey Dvoenko, Viện to&aacute;n học ứng dụng v&agrave; Khoa học m&aacute;y t&iacute;nh, Trường đại học tổng hợp quốc gia Tula, LB Nga.</p>\r\n\r\n<p>Hướng nghi&ecirc;n cứu quan t&acirc;m của &ocirc;ng l&agrave; xử l&yacute; ảnh, m&ocirc; h&igrave;nh Markov ẩn, học m&aacute;y v&agrave; nhận dạng mẫu, ph&acirc;n t&iacute;ch cụm v&agrave; khai ph&aacute; dữ liệu.</p>\r\n\r\n<p>&Ocirc;ng l&agrave; th&agrave;nh viện của Hiệp hội nhận dạng mẫu v&agrave; xử l&yacute; ảnh (RAPRIA) của LB Nga.</p>\r\n\r\n<p>&Ocirc;ng nhận bằng tiến sỹ khoa học năm 2002 tai Trung t&acirc;m t&iacute;nh to&aacute;n Dorodnitsyn, Viện h&agrave;n l&acirc;m v&agrave; khoa học Nga, chuy&ecirc;n ng&agrave;nh Cơ sở l&yacute; thuyết th&ocirc;ng tin với đề t&agrave;i &ldquo;C&aacute;c phương ph&aacute;p nhận dạng mẫu cho mảng dữ liệu li&ecirc;n kết&rdquo;.</p>\r\n\r\n<p>&Ocirc;ng nhận bằng Tiến sỹ năm 1992 tại Viện Khoa học điều khiển, Viện h&agrave;n l&acirc;m v&agrave; khoa học LB Nga.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>------------------------------------------------------------------</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sergei D. Dvoenko</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Laboratory of Data Analysis,</p>\r\n\r\n<p>Institute of Applied Mathematics and Computer Sciences</p>\r\n\r\n<p>of the Tula State University</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Title:&nbsp;<strong>Image Processing Based on Parametric Acyclic Markov Models</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Abstract</strong></p>\r\n\r\n<p>The problem to recognize objects that form an array of interrelated data is investigated. In the problem of machine learning, the array components belong to some class of a finite set. The interrelationship of array elements is presented by its adjacency graph. An efficient non-iterative recognition algorithm for restoring a posteriori marginal distributions of hidden classes for array elements is developed for a treelike adjacency graph. This algorithm modifies for each array element the hidden class distribution obtained as a result of learning for independent objects.</p>\r\n\r\n<p>Usually arbitrary graphs for real data contain cycles, for example, the 2D rectangular adjacency lattice of points for raster images. The treelike approximation of such graphs inevitably strongly distorts the interrelations between array elements. Here, the reduced set of interrelations between array elements is balanced by an extended set of acyclic graphs themselves.</p>\r\n\r\n<p>By the example of the segmentation problem for texture raster images, we investigate a set of acyclic graphs and present results of experiments.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sergei D. Dvoenko is a professor</strong>at the Institute of Applied Mathematics and Computer Sciences of the Tula State University (IAMCS of&nbsp;TSU) in the Tula city, Russia.</p>\r\n\r\n<p><strong>Now he is a lecturer</strong>at the Tula State University. Some recent courses: Data Analysis (Machine Learning and Clustering), Decision Theory, Operational Research, Functional and Logical Programming, System Analysis, Algorithms and Calculus Theory.</p>\r\n\r\n<p><strong>His scientific and research interests</strong>include the following fields: image processing, hidden Markov models and fields in applied problems, machine learning and pattern recognition, cluster analysis and data mining.</p>\r\n\r\n<p><strong>He is a member</strong>of the Russian &ldquo;Association for Pattern Recognition and Image Analysis&rdquo; (RAPRIA).</p>\r\n\r\n<p><strong>He received his Dr.&nbsp;Sci. degree</strong>in 2002 at the Dorodnitsyn Computing Centre of the Russian Academy of Sciences (CS of RAS), in the field of Theoretical Foundations of Informatics (05.13.17 of&nbsp;RAS) with the thesis &ldquo;Pattern Recognition Methods for Arrays of Interconnected Data&rdquo;.</p>\r\n\r\n<p><strong>He received his Ph.&nbsp;D. degree</strong>in 1992 after the postgraduate course at the Institute of Control Sciences of the Russian Academy of Sciences (ICS of RAS), in the field of Computer Sciences (05.13.16 of&nbsp;RAS) with the thesis &ldquo;Learning Algorithms for Event Recognition in Experimental Waveforms&rdquo;.</p>\r\n', '2015-11-26 13:50:57', '2015-11-26 13:52:23'),
(12, 1, 'Thủ Đô Multimedia tuyển Lập Trình Ứng Dụng Mobile Trên Nền Adroid/ IOS/ Window Phone và PHP Programmer Position', '<h3>Lập Tr&igrave;nh Ứng Dụng Mobile Tr&ecirc;n Nền Adroid/ IOS/ Window Phone</h3>\r\n\r\n<h3>Số lượng: 6 người.</h3>\r\n\r\n<p>KINH NGHIỆM</p>\r\n\r\n<p>1 năm trở l&ecirc;n.</p>\r\n\r\n<p>M&Ocirc; TẢ C&Ocirc;NG VIỆC</p>\r\n\r\n<p>-&nbsp;<a href="http://mywork.com.vn/tuyen-dung/38/it-phan-mem.html">Lập tr&igrave;nh</a>&nbsp;ứng dụng tr&ecirc;n điện thoại di dộng (news, multimedia, sport,&nbsp;<a href="http://mywork.com.vn/tuyen-dung/40/thuong-mai-dien-tu.html">thương mại điện tử</a>&nbsp;&hellip;)<br />\r\n- Sử dụng c&aacute;c giao thức như tcp/ip, http, https (được&nbsp;<a href="http://mywork.com.vn/tuyen-dung/58/giao-duc-dao-tao.html">đ&agrave;o tạo</a>&nbsp;nếu chưa biết)<br />\r\n- Tham gia qu&aacute; tr&igrave;nh ph&acirc;n t&iacute;ch,&nbsp;<a href="http://mywork.com.vn/tuyen-dung/81/thiet-ke-my-thuat.html">thiết kế</a>&nbsp;ứng dụng (UI/UIX)</p>\r\n\r\n<p>QUYỀN LỢI ĐƯỢC HƯỞNG</p>\r\n\r\n<p>Mức&nbsp;<a href="http://mywork.com.vn/tuyen-dung/91/luong-cao.html">lương cao</a>, cạnh tranh, nhận được 18-22 th&aacute;ng lương/năm<br />\r\n- Thưởng lương năng suất theo th&aacute;ng<br />\r\n- Thưởng lương mềm theo qu&yacute;, năm<br />\r\n- Cam kết tăng lương theo định kỳ (6 th&aacute;ng, 12 th&aacute;ng)<br />\r\n- Thưởng ng&agrave;y lễ, tết, ng&agrave;y th&agrave;nh lập c&ocirc;ng ty<br />\r\n- Khen thưởng c&aacute;c &yacute; tưởng xuất sắc<br />\r\n- Đảm bảo c&aacute;c chế độ cho người lao động theo Luật doanh nghiệp hiện h&agrave;nh<br />\r\n- Được đ&agrave;o tạo chuy&ecirc;n m&ocirc;n bởi c&aacute;c chuy&ecirc;n gia gi&agrave;u kinh nghiệm<br />\r\n- Khả năng thăng tiến cao<br />\r\n- Nhiều cơ hội được đi đ&agrave;o tạo ở nước ngo&agrave;i<br />\r\n- Được trang bị đầy đủ c&aacute;c trang&nbsp;<a href="http://mywork.com.vn/tuyen-dung/23/vat-tu-thiet-bi.html">thiết bị</a>&nbsp;<a href="http://mywork.com.vn/">việc l&agrave;m</a>&nbsp;hiện đại: m&aacute;y t&iacute;nh, điện thoại &hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</p>\r\n\r\n<p>C&oacute; kinh nghiệm l&agrave;m ứng dụng Client-Server, Socket l&agrave; một lợi thế<br />\r\n- Sử dụng th&agrave;nh thạo ng&ocirc;n ngữ JAVA, hiểu s&acirc;u về JAVA Core.<br />\r\n- C&oacute; kinh nghiệm lập tr&igrave;nh tr&ecirc;n Android SDK / IOS/ Windowphone<br />\r\n- Nắm vững c&aacute;c kh&aacute;i niệm lập tr&igrave;nh hướng đối tượng OOP.<br />\r\n- C&oacute; khả năng custom layout xml tốt<br />\r\n- Biết sử dụng OpenGL l&agrave; một lợi thế<br />\r\n- Sử dụng c&aacute;c framework lập tr&igrave;nh&nbsp;<a href="http://mywork.com.vn/tuyen-dung/36/games.html">game</a>&nbsp;l&agrave; một lợi thế. Ưu ti&ecirc;n: AndEngine, Libgdx, Cocos2d-x.<br />\r\nTốt nghiệp đại học ng&agrave;nh CNTT, to&aacute;n tin. Ưu ti&ecirc;n ứng vi&ecirc;n đến từ c&aacute;c trường: Đại học B&aacute;ch Khoa, Đại học C&ocirc;ng nghệ - ĐH Quốc Gia v&agrave; Học viện BCVT.<br />\r\n- Ưu ti&ecirc;n c&oacute; kinh nghiệm ph&aacute;t triển tr&ecirc;n mobile platforms, c&oacute; sản phẩm demo tương ứng với ng&ocirc;n ngữ lập tr&igrave;nh đ&atilde; chọn<br />\r\n- Nắm chắc về lập tr&igrave;nh hướng đối tượng<br />\r\n- Đọc hiểu tốt Tiếng Anh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Li&ecirc;n hệ: Ms. Hồng Dự.</p>\r\n\r\n<p>Email:&nbsp;<a href="mailto:nhansu@gviet.vn">nhansu@gviet.vn</a></p>\r\n\r\n<p>Handphone: 0925001088</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>PHP Programmer Position</strong></p>\r\n\r\n<p>(02 vị tr&iacute;)</p>\r\n\r\n<p><strong>KINH NGHIỆM</strong></p>\r\n\r\n<p>1 năm trở l&ecirc;n</p>\r\n\r\n<p><strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong><br />\r\n<a href="http://mywork.com.vn/tuyen-dung/10/xay-dung.html">X&acirc;y dựng</a>&nbsp;hệ thống web, wap&nbsp;<a href="http://mywork.com.vn/tuyen-dung/57/dich-vu.html">dịch vụ</a>&nbsp;VAS<br />\r\n<br />\r\nX&acirc;y dựng hệ thống CMS backend quản trị v&agrave; vận h&agrave;nh web<br />\r\n<br />\r\nKết nối c&aacute;c đối t&aacute;c cung cấp dịch vụ qua webservices, api..</p>\r\n\r\n<p><strong>QUYỀN LỢI ĐƯỢC HƯỞNG</strong><br />\r\nMức&nbsp;<a href="http://mywork.com.vn/tuyen-dung/91/luong-cao.html">lương cao</a>, cạnh tranh, nhận được 18-22 th&aacute;ng lương/năm<br />\r\n<br />\r\n- Thưởng lương năng suất theo th&aacute;ng<br />\r\n<br />\r\n- Thưởng lương mềm theo qu&yacute;, năm<br />\r\n<br />\r\n- Cam kết tăng lương theo định kỳ (6 th&aacute;ng, 12 th&aacute;ng)<br />\r\n<br />\r\n- Thưởng ng&agrave;y lễ, tết, ng&agrave;y th&agrave;nh lập c&ocirc;ng ty<br />\r\n<br />\r\n- Khen thưởng c&aacute;c &yacute; tưởng xuất sắc<br />\r\n<br />\r\n- Đảm bảo c&aacute;c chế độ cho người lao động theo Luật doanh nghiệp hiện h&agrave;nh<br />\r\n<br />\r\n- Được&nbsp;<a href="http://mywork.com.vn/tuyen-dung/58/giao-duc-dao-tao.html">đ&agrave;o tạo</a>&nbsp;chuy&ecirc;n m&ocirc;n bởi c&aacute;c chuy&ecirc;n gia gi&agrave;u kinh nghiệm<br />\r\n<br />\r\n- Khả năng thăng tiến cao<br />\r\n<br />\r\n- Nhiều cơ hội được đi đ&agrave;o tạo ở nước ngo&agrave;i<br />\r\n<br />\r\n- Được trang bị đầy đủ c&aacute;c trang&nbsp;<a href="http://mywork.com.vn/tuyen-dung/23/vat-tu-thiet-bi.html">thiết bị</a>&nbsp;<a href="http://mywork.com.vn/">việc l&agrave;m</a>&nbsp;hiện đại: m&aacute;y t&iacute;nh, điện thoại &hellip;</p>\r\n\r\n<p><strong>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</strong><br />\r\nTốt nghiệp ĐH c&aacute;c trường chuy&ecirc;n về CNTT<br />\r\n<br />\r\nC&oacute; &iacute;t nhất 1 năm kinh nghiệm với PHP v&agrave; 1 trong c&aacute;c framework: CI, Phalcon<br />\r\n<br />\r\nTh&agrave;nh thạo HTML, CSS, Javascript<br />\r\n<br />\r\nHiểu r&otilde; v&agrave; nắm vững&nbsp;<a href="http://mywork.com.vn/tuyen-dung/38/it-phan-mem.html">lập tr&igrave;nh</a>&nbsp;OOP<br />\r\n<br />\r\nTh&agrave;nh thạo cơ sở dữ liệu MySQL<br />\r\n<br />\r\nC&oacute; khả năng tuy duy tốt về To&aacute;n v&agrave; Lập tr&igrave;nh<br />\r\n<br />\r\nC&oacute; tr&aacute;ch nhiệm &amp; kỷ luật cao trong c&ocirc;ng việc<br />\r\n<br />\r\nƯu ti&ecirc;n:<br />\r\n<br />\r\nỨng vi&ecirc;n học chuy&ecirc;n to&aacute;n, tin khi học phổ th&ocirc;ng<br />\r\n<br />\r\nHiểu biết về NoSQL, performance, unit testing l&agrave; 1 lợi thế</p>\r\n\r\n<p><strong>Y&Ecirc;U CẦU HỒ SƠ</strong><br />\r\n- Đơn xin việc.<br />\r\n<br />\r\n- Sơ yếu l&yacute; lịch.<br />\r\n<br />\r\n- Hộ khẩu, chứng minh nh&acirc;n d&acirc;n v&agrave; giấy kh&aacute;m sức khỏe.<br />\r\n<br />\r\n- C&aacute;c bằng cấp c&oacute; li&ecirc;n quan.</p>\r\n\r\n<p><strong>NG&Ocirc;N NGỮ HỒ SƠ</strong></p>\r\n\r\n<p>Bất kỳ</p>\r\n', '2015-11-26 13:53:51', '2015-11-26 13:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `tch_id`, `username`, `password`, `fullname`, `class`) VALUES
(5, 1, 'adssd', 'asddasads', 'dasadsads', 'dassd');

-- --------------------------------------------------------

--
-- Table structure for table `student_idea`
--

CREATE TABLE IF NOT EXISTS `student_idea` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sumary` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `tch_id`, `name`, `sumary`) VALUES
(1, 1, 'Lập trình hướng đối tượng', '<p>Sau khi kết th&uacute;c m&ocirc;n học, sinh vi&ecirc;n sẽ c&oacute; thể:</p>\r\n\r\n<ul>\r\n	<li>Giải th&iacute;ch được c&aacute;c kh&aacute;i niệm, c&aacute;c kỹ thuật lập tr&igrave;nh v&agrave; thiết kế chương tr&igrave;nh theo hướng tiếp cận hướng đối tượng tr&ecirc;n 1 ng&ocirc;n ngữ LTHĐT (Java/C++/C#).</li>\r\n	<li>Nắm được kiến thức cơ bản về 1 ng&ocirc;n ngữ LTHĐT (Java/C++/C#), c&aacute;c kỹ năng sử dụng ng&ocirc;n ngữ đ&oacute; minh họa c&aacute;c kỹ thuật LTHĐT.</li>\r\n	<li>Hiểu được c&aacute;c k&yacute; ph&aacute;p của ng&ocirc;n ngữ UML v&agrave; sử dụng trong LTHĐT.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><strong>T&agrave;i liệu tham khảo</strong></h4>\r\n\r\n<p><span style="font-size:14px">Slide1: <a href="http://adsds">www.xxx.video.vn</a></span></p>\r\n\r\n<p><span style="font-size:14px">Slide1: <a href="http://sadasd">www.xxx.video.vn</a></span></p>\r\n\r\n<p><span style="font-size:14px">Slide1: <a href="http://adsasd">www.xxx.video.vn</a></span></p>\r\n\r\n<p><span style="font-size:14px">Slide1: <a href="http://dsasad">www.xxx.video.vn</a></span></p>\r\n'),
(2, 1, 'Công nghệ đồ họa và hiện thực ảo', '<p>Sau khi kết thúc môn học, sinh viên sẽ có thể:</p>\r\n<ul>\r\n<li>Làm quen với các kiến thức cơ bản về đồ hoạ và lập trình đồ họa dựa trên cơ chế hoạt động chung của các chương trình đồ hoạ ứng dụng, trên cơ sở các giải thuật đồ họa, các phương pháp xử lý, biến đổi đồ họa không gian 2D và 3D. Các phép chiếu, nguyên lý mô hình hoá các thực thể hình học.</li>\r\n<li>Nắm vững và có khả năng ứng dụng các giải thuật đồ hoạ, cách tiếp cận với thư viện và công nghệ đồ hoạ tiên tiến, phương pháp lập trình xây dựng các phần mềm đồ hoạ, lập trình game hay xây dựng các ứng dụng trong thực tại ảo và tương tác giao diện đồ họa.</li>\r\n</ul>'),
(7, 1, 'Tương tác người máy', '<p>There are lots of projects available on java and jsp servlet but none of them providerstep by step guide. U can try mvnForum is a open source, powerful, easy to use/setup bulletin board (forum) built on the <span style="color:#FF0000">J2EE</span> technology(<span style="color:#FF0000">Jsp/Servlet</span>) and compatible with any Servlet Container which supports Jsp 1.2 and Servlet 2.3. The official home page is www.mvnForum.com</p>\r\n'),
(9, 1, 'Quản trị học đại cương', '<p><strong>Real muốn thắng Barca</strong>&nbsp;để đ&ograve;i lại ng&ocirc;i đầu bảng, điều đ&oacute; khiến HLV Benitez đ&atilde; mạo hiểm thay đổi chiến thuật. &Ocirc;ng chủ động chỉ đạo c&aacute;c học tr&ograve; chơi đ&ocirc;i c&ocirc;ng ngay sau tiếng c&ograve;i khai cuộc h&ograve;ng &ldquo;ăn tươi nuốt sống&quot; đối thủ. N&ecirc;n nhớ, Rafa nổi tiếng l&agrave; người chơi chắc chắn, thậm ch&iacute; lu&ocirc;n đặt t&iacute;nh an to&agrave;n l&ecirc;n h&agrave;ng đầu, nhưng đ&atilde; kh&ocirc;ng d&ugrave;ng &ldquo;sở trường&rdquo; để đối ph&oacute; với Barca đang c&oacute; phong độ rất cao</p>\r\n'),
(24, 2, 'eqwewq', '<p>eqweqw</p>\r\n'),
(25, 1, 'IT1110: Tin đại cương', '<p><strong>Khối lượng:</strong>&nbsp;4(3-1-1-8)</p>\r\n\r\n<ul>\r\n	<li>L&yacute; thuyết: 45 tiết</li>\r\n	<li>B&agrave;i tập: 15 tiết</li>\r\n	<li>Thực h&agrave;nh: 5 b&agrave;i (x 3 tiết)</li>\r\n</ul>\r\n\r\n<p><strong>Mục ti&ecirc;u:</strong>&nbsp;Sinh vi&ecirc;n nắm được c&aacute;c kiến thức cơ bản về tin học, biết m&ocirc; tả thuật to&aacute;n v&agrave; biểu diễn bằng ng&ocirc;n ngữ lập tr&igrave;nh. Sau khi học xong học phần n&agrave;y, y&ecirc;u cầu sinh vi&ecirc;n c&oacute; khả năng:</p>\r\n\r\n<ul>\r\n	<li>Nắm bắt được c&aacute;c kiến thức cơ bản về tin học, hiểu kh&aacute;i niệm th&ocirc;ng tin, biểu diễn th&ocirc;ng tin trong m&aacute;y t&iacute;nh. C&oacute; kiến thức v&agrave; kỹ năng về nguy&ecirc;n l&yacute; hoạt động của hệ thống m&aacute;y t&iacute;nh, bao gồm phần cứng, phần mềm, hệ điều h&agrave;nh, mạng m&aacute;y t&iacute;nh.</li>\r\n	<li>C&oacute; kỹ năng v&agrave; hiểu biết về c&aacute;c phần mềm ứng dụng th&ocirc;ng thường cho t&iacute;nh to&aacute;n, văn ph&ograve;ng.</li>\r\n	<li>Diễn giải b&agrave;i to&aacute;n đặt ra trong thực tiễn, biết m&ocirc; tả thuật to&aacute;n</li>\r\n	<li>Nắm bắt được c&aacute;c nguy&ecirc;n l&yacute; lập tr&igrave;nh, v&agrave; c&aacute;c cấu tr&uacute;c lập tr&igrave;nh cơ bản, minh hoạ bằng ng&ocirc;n ngữ lập tr&igrave;nh C</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nội dung vắn tắt học phần:</strong>&nbsp;Kh&aacute;i niệm th&ocirc;ng tin, biểu diễn th&ocirc;ng tin trong m&aacute;y t&iacute;nh. Hệ thống m&aacute;y t&iacute;nh: phần cứng, phần mềm, hệ điều h&agrave;nh, mạng m&aacute;y t&iacute;nh. Giải quyết b&agrave;i to&aacute;n bằng m&aacute;y t&iacute;nh. C&aacute;c cấu tr&uacute;c lập tr&igrave;nh cơ bản...</p>\r\n\r\n<p><strong>S&Aacute;CH THAM KHẢO:</strong></p>\r\n\r\n<p>[1]&nbsp;<strong>Gi&aacute;o tr&igrave;nh Tin học đại cương</strong>, T&aacute;i bản lần 1,&nbsp;<em>Viện CNTT-TT, Đại học BKHN bi&ecirc;n soạn</em>, NXB B&aacute;ch khoa 2012&nbsp;<br />\r\n[2]&nbsp;<strong>B&agrave;i tập Tin học đại cương</strong>,&nbsp;<em>Viện CNTT-TT, Đại học BKHN bi&ecirc;n soạn</em>, NXB B&aacute;ch khoa 2012&nbsp;<br />\r\n[3]&nbsp;<strong>The C Programming Language</strong>, 2nd Edition&nbsp;<em>Brian W. Kernighan, Dennis M. Ritchie</em>, Prentice Hall 1988&nbsp;</p>\r\n'),
(26, 1, 'IT3080: Mạng máy tính', '<p><strong>Khối lượng:</strong>&nbsp;3(3-1-0-6)</p>\r\n\r\n<p><strong>Học phần học trước:</strong>&nbsp;IT2000 - Nhập m&ocirc;n KTMT-TT hoặc IT2001-Nhập m&ocirc;n CNTT-TT</p>\r\n\r\n<p><strong>Mục ti&ecirc;u:</strong>&nbsp;M&ocirc;n học cho ph&eacute;p sinh vi&ecirc;n c&oacute; những kiến thức cơ bản về mạng m&aacute;y t&iacute;nh v&agrave; Internet. Sau khi học xong học phần n&agrave;y, y&ecirc;u cầu sinh vi&ecirc;n c&oacute; khả năng:</p>\r\n\r\n<ul>\r\n	<li>Nắm được c&aacute;c kiến thức cơ bản về hoạt động mạng m&aacute;y t&iacute;nh</li>\r\n	<li>Hiểu được &yacute; nghĩa của m&ocirc; h&igrave;nh OSI</li>\r\n	<li>Vai tr&ograve; của IP v&agrave; họ giao thức TCP/IP</li>\r\n	<li>Vận dụng kiến thức để giải quyết một số b&agrave;i to&aacute;n cấu h&igrave;nh hệ thống mạng tr&ecirc;n thực tế</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nội dung vắn tắt học phần:</strong>&nbsp;Tổng quan về mạng m&aacute;y t&iacute;nh. Kh&aacute;i niệm về m&ocirc; h&igrave;nh OSI v&agrave; mục đ&iacute;ch của m&ocirc; h&igrave;nh OSI. Mạng LAN v&agrave; họ giao thức 802.x. Mạng diện rộng. Giao thức IP (Internet Protocol) v&agrave; c&aacute;c giao thức định tuyến. Họ giao thức TCP v&agrave; UDP. Tắc nghẽn v&agrave; chống tắc nghẽn tr&ecirc;n Internet. C&aacute;c giao thức điển h&igrave;nh tầng ứng dụng.</p>\r\n\r\n<p><strong>S&Aacute;CH THAM KHẢO</strong></p>\r\n\r\n<p>[1]&nbsp;<strong>Networking: a top-down approach featuring the Internet</strong>, 6th Edition,&nbsp;<em>James F. Kurose, Keith W. Ross</em>, Addison Wesley 2012&nbsp;<br />\r\n[2]&nbsp;<strong>TCP/IP tutorial and technical overview</strong>,&nbsp;<em>Lydia Parziale, David T.Britt</em>, IBM Redbooks 2006&nbsp;<br />\r\n[3]&nbsp;<strong>Data and Computer Communications</strong>, 8th Edition&nbsp;<em>William Stallings</em>, Pearson Prentice Hall 2007&nbsp;</p>\r\n\r\n<p><strong>B&Agrave;I GIẢNG</strong></p>\r\n\r\n<p><a href="http://soict.hust.edu.vn/~tungbt/it3080/Chap1.pdf">Chương 1. Tổng quan về mạng m&aacute;y t&iacute;nh v&agrave; truyền th&ocirc;ng</a></p>\r\n\r\n<p><a href="http://soict.hust.edu.vn/~tungbt/it3080/Chap2.pdf">Chương 2. Tầng ứng dụng</a></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `sv_id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ask` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_updated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`sv_id`, `tch_id`, `title`, `ask`, `time_created`, `time_updated`) VALUES
(21, 1, 'Khảo sát 1', 'Tư vấn tiêu dùng', '2015-11-25 00:00:38', '2015-11-25 00:00:38'),
(34, 1, 'Khảo sát 2', 'Ăn shit có ngon không?', '2015-11-25 16:01:33', '2015-11-25 18:21:22'),
(35, 2, 'qweqwe', 'eqweqw', '2015-11-26 13:48:47', '2015-11-26 13:49:08'),
(36, 1, 'Khảo sát 3', 'Nên ăn cơm hay ăn cám?', '2015-11-26 14:10:41', '2015-11-26 14:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `regency` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_com` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_home` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_com` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `password`, `fullname`, `regency`, `mobile_number`, `phone_com`, `add_home`, `add_com`, `avatar`) VALUES
(1, 'kay', '827ccb0eea8a706c4c34a16891f84e7b', 'Trương Văn Bắc', 'Ts', '0983048031', '32312321', 'Phần Lâm, Đào Dương, Ân Thi, Hưng Yên', 'Số 3 ngách 23 Tân Lạc, Đại La', 'tải xuống.jpg'),
(2, 'bactv', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Van An', 'Ts', '123213', '', '', '', 'ga_con.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_idea`
--
ALTER TABLE `student_idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`sv_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_idea`
--
ALTER TABLE `student_idea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
