-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: thuanphong
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.15-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorys` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext DEFAULT NULL,
  `Alias` tinytext DEFAULT NULL,
  `IsMenu` tinyint(1) DEFAULT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  `Orders` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (5,'Trang chủ','trang-chu',1,1,1,'trang chủ more'),(6,'Liên hệ','lien-he',1,1,5,'liên hệ more'),(7,'Dịch vụ','dich-vu',1,1,3,'dich-vu more'),(8,'Giới thiệu','gioi-thieu',1,1,2,'giới thiệu more'),(9,'Bài viết','bai-viet',1,1,4,'Bài viết');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Name` tinytext NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `Email` tinytext DEFAULT NULL,
  `PhoneNumber` tinytext DEFAULT NULL,
  `TaxCode` tinytext DEFAULT NULL,
  `HotLine` tinytext DEFAULT NULL,
  `About` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Công Ty TNHH Xây Dựng Và Thang Máy Thuận Phong','3A18 Trần Văn Giàu, Ấp 3, Xã Phạm Văn Hai, Huyện Bình Chánh, TP.Hồ Chí Minh','thuanphongelevator@gmail.com','0945415275','0315699245','0945415275','<div class=\"row\" style=\"margin-left: 10%; margin-right: 10%;\">\r\n<h1 id=\"mcetoc_1dcu73c4e0\" style=\"text-align: center;\"><span style=\"color: #808000;\"><strong>LỜI ĐẦU</strong></span></h1>\r\n<ul>\r\n<li style=\"text-align: left;\">\r\n<h5 style=\"text-align: center;\"><span style=\"color: #808000;\">Lời đầu ti&ecirc;n to&agrave;n thể c&aacute;n bộ - c&ocirc;ng nh&acirc;n vi&ecirc;n C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong xin gửi đến Qu&yacute; kh&aacute;ch h&agrave;ng lời ch&agrave;o, lời ch&uacute;c sức khỏe v&agrave; th&agrave;nh c&ocirc;ng.</span></h5>\r\n</li>\r\n<li style=\"text-align: center;\">\r\n<h5><span style=\"color: #808000;\">C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong . từ khi được th&agrave;nh lập đến nay đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh một c&ocirc;ng ty c&oacute; uy t&iacute;n tr&ecirc;n thị trường trong việc cung cấp, lắp đặt v&agrave; bảo tr&igrave; c&aacute;c loại thang m&aacute;y tại Việt Nam.</span></h5>\r\n</li>\r\n<li style=\"text-align: center;\">\r\n<h5><span style=\"color: #808000;\">Mục ti&ecirc;u của C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong l&agrave; đ&aacute;p ứng một c&aacute;ch đầy đủ nhất những nhu cầu của kh&aacute;ch h&agrave;ng bằng c&aacute;ch cung cấp, lắp đặt v&agrave; bảo tr&igrave; c&aacute;c thiết bị thang m&aacute;y với t&iacute;nh năng kỹ thuật ưu việt, an to&agrave;n v&agrave; kinh tế. Bảo đảm t&iacute;nh bền vững của thiết bị so với tuổi thọ của c&ocirc;ng tr&igrave;nh th&ocirc;ng qua dịch vụ bảo tr&igrave; tin cậy với lượng cuộc gọi sửa chữa thấp nhất. Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt quyền lợi của kh&aacute;ch h&agrave;ng l&ecirc;n vị tr&iacute; h&agrave;ng đầu v&agrave; xem quyền lợi của kh&aacute;ch h&agrave;ng như của ch&iacute;nh m&igrave;nh để xứng đ&aacute;ng với vai tr&ograve; l&agrave; người bạn đối t&aacute;c th&acirc;n thiết, tin cậy v&agrave; l&acirc;u d&agrave;i của Qu&yacute; kh&aacute;ch h&agrave;ng.</span></h5>\r\n</li>\r\n<li style=\"text-align: center;\">\r\n<h5><span style=\"color: #808000;\">C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong lu&ocirc;n hoạt động với t&ocirc;n chỉ: &ldquo; An to&agrave;n của bạn l&agrave; tương lai của ch&uacute;ng t&ocirc;i&rdquo;. Ch&iacute;nh t&ocirc;n chỉ đ&oacute; m&agrave; to&agrave;n thể c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n của C&ocirc;ng Ty lu&ocirc;n nỗ lực, năng động, nhiệt t&igrave;nh để đem lại hiệu quả tối ưu nhất nhằm đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng.</span></h5>\r\n</li>\r\n<li>\r\n<h5 style=\"text-align: center;\"><span style=\"color: #808000;\">Với phương ch&acirc;m lu&ocirc;n học hỏi lắng nghe &yacute; kiến đ&oacute;ng g&oacute;p, ph&ecirc; b&igrave;nh từ ph&iacute;a kh&aacute;ch h&agrave;ng sử dụng, trong thời gian tới Thuận Phong sẽ lu&ocirc;n cải tiến c&ocirc;ng nghệ, kỹ thuật để x&acirc;y dựng một thương hiệu c&oacute; t&iacute;nh đồng bộ về thiết bị v&agrave; dịch vụ n&acirc;ng cao chất lượng ng&agrave;y c&agrave;ng tốt hơn.</span></h5>\r\n</li>\r\n</ul>\r\n<h5 style=\"text-align: center;\">&nbsp;</h5>\r\n<h1 id=\"mcetoc_1dcu73c4e1\" style=\"text-align: center;\"><strong><span style=\"color: #808000;\">TẦM NH&Igrave;N</span></strong></h1>\r\n<ul>\r\n<li style=\"text-align: left;\">\r\n<h5 style=\"text-align: center;\"><span style=\"color: #808000;\">C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong hoạt động v&agrave; ph&aacute;t triển với định hướng trở th&agrave;nh nh&agrave; sản xuất v&agrave; bảo tr&igrave; thang m&aacute;y, thang cuốn h&agrave;ng đầu tại Việt Nam. </span></h5>\r\n</li>\r\n<li style=\"text-align: left;\">\r\n<h5 style=\"text-align: center;\"><span style=\"color: #808000;\">C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong lu&ocirc;n ti&ecirc;n phong trong lĩnh vực c&ocirc;ng nghệ kh&ocirc;ng gian chiều thẳng đứng, cung cấp giải ph&aacute;p tối ưu, phục vụ cho t&iacute;nh hiện đại, thẩm mỹ v&agrave; an to&agrave;n của những c&ocirc;ng tr&igrave;nh cao, kh&ocirc;ng chỉ tại thị trường Việt Nam m&agrave; c&ograve;n c&oacute; mặt v&agrave; ph&aacute;t triển tại nhiều thị trường kh&aacute;c nhau trong khu vực v&agrave; ch&acirc;u lục.</span></h5>\r\n</li>\r\n</ul>\r\n<h5 id=\"mcetoc_1dcu73c4e2\" style=\"text-align: center;\">&nbsp;</h5>\r\n<h1 id=\"mcetoc_1dcu73c4e3\" style=\"text-align: center;\"><span style=\"color: #808000;\">SỨ MỆNH</span></h1>\r\n<h5 style=\"text-align: center;\"><span style=\"color: #808000;\">C&ocirc;ng Ty TNHH x&acirc;y dựng v&agrave; thang m&aacute;y Thuận Phong kh&ocirc;ng ngừng n&acirc;ng cao, cập nhật v&agrave; vận dụng c&ocirc;ng nghệ kỹ thuật ti&ecirc;n tiến, n&acirc;ng cao chất lượng phục vụ v&agrave; lắng nghe phản hồi từ kh&aacute;ch h&agrave;ng. Từ đ&oacute; ch&uacute;ng t&ocirc;i mong muốn tạo n&ecirc;n những sản phẩm mang t&iacute;nh bền vững, đ&aacute;ng tin cậy nhất cho đối t&aacute;c v&agrave; kh&aacute;ch h&agrave;ng.<br /></span></h5>\r\n</div>\r\n<p><br /><br /><br /></p>\r\n<div style=\"margin-left: 5%; margin-right: 5%;\">\r\n<div class=\"row\">\r\n<div><img style=\"width: 100%; height: 100%;\" src=\"https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/test32120323_u0bonc.jpg\" alt=\"\" width=\"1349\" height=\"527\" /></div>\r\n</div>\r\n</div>');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext NOT NULL,
  `Phone` tinytext NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'fsdfsdf','dfgdfgg','dfgdfgfdg','sffgfd','2017-05-30 10:51:38'),(2,'d','d','d','d','2017-05-30 10:53:48'),(3,'dfdfdf','fdfdf','dfdfdf','dddd','2017-05-30 11:06:39'),(4,'dfsdf','sdfsdf','sdf','sdf','2017-05-30 11:17:46');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext DEFAULT NULL,
  `Alias` tinytext DEFAULT NULL,
  `IsLogo` tinyint(1) DEFAULT NULL,
  `IsProject` tinyint(1) DEFAULT NULL,
  `IsSlide` tinyint(1) DEFAULT NULL,
  `Link` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (7,'A','a',0,0,1,NULL,NULL,'https://res.cloudinary.com/dangpt/image/upload/v1559973190/thuanphong/slide/301300230_abznpa.png'),(8,'D','d',0,0,1,NULL,NULL,'https://res.cloudinary.com/dangpt/image/upload/v1559973169/thuanphong/slide/tttt31113213_ulg9np.jpg'),(9,'C','c',0,0,1,NULL,NULL,'https://res.cloudinary.com/dangpt/image/upload/v1559973170/thuanphong/slide/221103000_wudvql.jpg'),(10,'B','b',0,0,1,NULL,NULL,'https://res.cloudinary.com/dangpt/image/upload/v1559973178/thuanphong/slide/test32120323_ccod86.jpg'),(11,'viettel','viettel',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659269/1_aotnpi.png'),(12,'Audi','audi',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659269/2_tqoveq.png'),(13,'Vietin bank','vietin - bank',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659268/3_eowwei.png'),(14,'Kfc','kfc',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659268/4_vqtonh.png'),(15,'Huyndai','huyndai',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659270/5_xo30wl.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext DEFAULT NULL,
  `Alias` tinytext DEFAULT NULL,
  `Image` text DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  `ShortContent` tinytext DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Primary` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`Id`),
  KEY `Posts_Categorys_Id_fk` (`CategoryId`),
  CONSTRAINT `Posts_Categorys_Id_fk` FOREIGN KEY (`CategoryId`) REFERENCES `categorys` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (23,'Bảo trì - sửa chữa','bao-tri-sua-chua','https://res.cloudinary.com/dangpt/image/upload/v1560096619/thuanphong/category/Lift-Reapirs-Row1-1200x360_fjta98.jpg',7,1,NULL,'<p>Sửa chữa thang m&aacute;y</p>',0),(25,'Tư vấn - thiết kế','tu-van-thiet-ke','https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/test32120323_u0bonc.jpg',7,1,NULL,'<p>Tư vấn - thiết kế</p>',0),(26,'Thi công - lắp đặt','thi-cong-lap-dat','https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/tttt31113213_fcodcq.jpg',7,1,NULL,NULL,0),(27,'Lựa Chọn Thang Máy An Toàn Cho Gia Đình','lua-chon-thang-may-an-toan-cho-gia-dinh','https://res.cloudinary.com/dangpt/image/upload/v1560099452/thuanphong/category/d-ch-v-s-a-ch-a-thang-may-dvsctm_rgdrv4.jpg',9,1,'Tìm hiểu kĩ sản phẩm cũng nhà cung cấp, tỉnh táo trước những lời quảng cáo là 3 điều kiện quan trọng để người tiêu dùng chọn được sản phẩm thang máy thẩm mỹ và an toàn cho gia đình','<div style=\"width: 100%; height: 100%;\"><img src=\"https://res.cloudinary.com/dangpt/image/upload/v1560099551/thuanphong/category/hqdefault_vwtkty.jpg\" /></div>\r\n<div>\r\n<p>&nbsp;</p>\r\n<p>khi bị mắc kẹt thang tương đối đơn giản. Nhưng tại nh&agrave; ri&ecirc;ng, khi cụ gi&agrave;, trẻ em, phụ nữ mang thai bị nhốt trong thang m&agrave; kh&ocirc;ng c&oacute; ai ở nh&agrave; rất nguy hiểm. Để hạn chế v&agrave; khắc phục những vấn đề n&agrave;y th&igrave; nh&agrave; thiết kế thang m&aacute;y gia đ&igrave;nh phải đảm bảo một số yếu tố.&nbsp;&nbsp;</p>\r\n<p>Đầu ti&ecirc;n, thang m&aacute;y phải c&oacute; thiết bị tốt, đồng bộ, sản phẩm phải đạt ti&ecirc;u chuẩn quốc tế (ti&ecirc;u chuẩn Nhật Bản JIS, ch&acirc;u &Acirc;u EN...), ti&ecirc;u chuẩn khu vực v&agrave; quốc gia. Điều n&agrave;y sẽ giải th&iacute;ch l&yacute; do hai sản phẩm giống hệt nhau về k&iacute;ch thước, mẫu m&atilde; nhưng chất lượng vận h&agrave;nh ho&agrave;n to&agrave;n kh&aacute;c nhau. V&igrave; sản phẩm được sản xuất c&oacute; ti&ecirc;u chuẩn cụ thể sẽ t&iacute;nh to&aacute;n cẩn thận đến khả năng chịu uốn, n&eacute;n của thiết bị v&agrave; sẽ lựa chọn chất lượng vật liệu ph&ugrave; hợp.</p>\r\n<p>&nbsp;</p>\r\n<p>Thứ hai, thiết kế thang m&aacute;y gia đ&igrave;nh n&ecirc;n c&oacute; &iacute;t nhất một v&aacute;ch k&iacute;nh trong suốt để khi bị nhốt trong cabin th&igrave; phụ nữ, trẻ em, người gi&agrave; kh&ocirc;ng bị rơi v&agrave;o t&igrave;nh trạng hoảng loạn do cảm gi&aacute;c bị t&aacute;ch biệt với thế giới b&ecirc;n ngo&agrave;i. Theo nghi&ecirc;n cứu, kh&aacute;ch đi thang thường mất b&igrave;nh tĩnh, giẫm đạp, la h&eacute;t khi bị nhốt v&agrave;o c&aacute;i hộp tối đen... v&agrave; sẽ g&acirc;y nguy hiểm nếu hệ thống đ&egrave;n cứu hộ v&agrave; quạt th&ocirc;ng gi&oacute; kh&ocirc;ng hoạt động trong khi nhu cầu oxi lớn.</p>\r\n<p>&nbsp;</p>\r\n<p>Thứ ba, thiết bị cứu hộ tự động của thang m&aacute;y, đ&egrave;n chiếu s&aacute;ng khẩn cấp, quạt th&ocirc;ng gi&oacute;, chu&ocirc;ng cấp cứu phải lu&ocirc;n đảm bảo hoạt động tốt. Thang m&aacute;y gia đ&igrave;nh cần được bộ phận bảo tr&igrave; h&agrave;ng th&aacute;ng giả định t&igrave;nh huống mất điện để kiểm tra c&aacute;c t&iacute;nh năng tr&ecirc;n trước sự chứng kiến của người sử dụng nhằm tr&aacute;nh mọi trường hợp rủi ro.</p>\r\n<p>&nbsp;</p>\r\n<p>Thứ tư, c&aacute;c hệ thống cảnh b&aacute;o ngập nước, hệ thống điện thoại cố định để li&ecirc;n lạc với b&ecirc;n ngo&agrave;i cũng cần kiểm tra hoạt động b&igrave;nh thường, ph&ograve;ng trường hợp mất s&oacute;ng hoặc kh&ocirc;ng cầm di động theo khi bị nhốt trong cabin thang m&aacute;y.&nbsp;Ngo&agrave;i ra, đối với những gia đ&igrave;nh c&oacute; người gi&agrave; th&igrave; thang m&aacute;y phải c&oacute; hệ thống ph&aacute;t tin nhắn cảnh b&aacute;o cho người nh&agrave; hoặc đơn vị cung cấp dịch vụ trong trường hợp người gi&agrave; bị đột quỵ trong thang.</p>\r\n<p>C&ocirc;ng ty&nbsp;Thuận Phong&nbsp;sẽ hỗ trợ dịch vụ v&agrave; tư vấn kỹ thuật để gia đ&igrave;nh bạn c&oacute; thể lựa chọn sản phẩm thang m&aacute;y ph&ugrave; hợp. Thang m&aacute;y gia đ&igrave;nh Domuslift tải trọng từ 250 kg đến 400 kg (3 người đến 5 người) được bảo h&agrave;nh to&agrave;n bộ thiết bị theo ti&ecirc;u chuẩn to&agrave;n cầu của IGV Spa trong 36 th&aacute;ng. C&aacute;c chỉ số kỹ thuật được kiểm định theo ti&ecirc;u chuẩn ch&acirc;u &Acirc;u, thang m&aacute;y gia đ&igrave;nh&nbsp;an to&agrave;n cho người th&acirc;n của bạn.</p>\r\n</div>',1),(30,'Quy chuẩn kỹ thuật quốc gia - Thang máy gia đình phải chịu được tối thiểu 115kg','quy-chuan-ky-thuat-quoc-gia-thang-may-gia-dinh-phai-chiu-duoc-toi-thieu-115kg','https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/htp1f23002_uzxhif.jpg',9,1,'Thông tư 15/2018/TT-BLĐTBXH về Quy chuẩn kỹ thuật quốc gia về an toàn lao động đối với Thang máy gia đình...','<div><img style=\"width: 100%; heigh: 100%;\" src=\"https://res.cloudinary.com/dangpt/image/upload/v1560098803/thuanphong/category/mau-thang-may-gia-dinh-dep-nam-2019_zxxnzr.jpg\" /></div>\r\n<div>\r\n<p>&nbsp;</p>\r\n<p>Theo Quy chuẩn:<br />- Diện t&iacute;ch hữu &iacute;ch s&agrave;n cabin th&aacute;ng m&aacute;y gia đ&igrave;nh kh&ocirc;ng lớn hơn 1,6 m2 v&agrave; k&iacute;ch thước c&aacute;c cạnh của s&agrave;n cabin kh&ocirc;ng nhỏ hơn 0,6m;</p>\r\n<p>- Tải trọng định mức kh&ocirc;ng nhỏ hơn 200kg/m2 s&agrave;n cabin v&agrave; chịu được tối thiểu l&agrave; 115kg;</p>\r\n<p>- H&agrave;nh tr&igrave;nh n&acirc;ng của cabin kh&ocirc;ng lớn hơn 15m; Chiều cao trong l&ograve;ng cabin kh&ocirc;ng được nhỏ hơn 2m;</p>\r\n<p>- Lối v&agrave;o tầng phải được bảo vệ bởi cửa tầng, kh&ocirc;ng được ph&eacute;p d&ugrave;ng tấm che để che chắn; Cửa cabin kh&ocirc;ng được mở ra b&ecirc;n ngo&agrave;i s&agrave;n tầng;</p>\r\n<p>- Thang m&aacute;y phải c&oacute; hệ thống cứu hộ bằng tay v&agrave; bằng điện để c&oacute; thể sử dụng linh hoạt trong qu&aacute; tr&igrave;nh cứu hộ thang m&aacute;y khi gặp sự cố;</p>\r\n<p>- Chỉ những người c&oacute; tr&aacute;ch nhiệm mới được ph&eacute;p tiếp cận m&aacute;y dẫn động&hellip;</p>\r\n<p>Th&ocirc;ng tư n&agrave;y c&oacute; hiệu lực từ ng&agrave;y 01/03/2019.</p>\r\n</div>',0),(31,'Lời Khuyên Dành Cho Người Mua Thang Máy','loi-khuyen-danh-cho-nguoi-mua-thang-may','https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/thi-truong-thang-may-dang-can-cu-hich33300_pvrfrr.jpg',9,1,'Trước khi bạn có quyết định mua bất kì đồ vật có giá trị lớn, bạn cũng đều tham khảo ý kiến những người xung quanh, đặc biệt là những người có kinh nghiệm.','<div><img style=\"width: 100%; height: 100%;\" src=\"https://res.cloudinary.com/dangpt/image/upload/v1560096546/thuanphong/category/test32120323_u0bonc.jpg\" /></div>\r\n<div>\r\n<p>&nbsp;</p>\r\n<p><strong>Thang m&aacute;y</strong>&nbsp;v&agrave; những lợi &iacute;ch m&agrave; phương tiện n&agrave;y mang lại thực sự l&agrave;m cho cuộc sống con người trở n&ecirc;n thoải m&aacute;i hơn. V&agrave; dần dần việc lắp đặt thang m&aacute;y l&agrave; điều một điều thiết yếu cho tất cả c&aacute;c c&ocirc;ng tr&igrave;nh hiện nay. Bạn muốn sở hữu một phương tiện di chuyển &ndash; thang m&aacute;y tốt, chất lượng v&agrave; vận h&agrave;nh hiệu quả th&igrave; bạn cần ch&uacute; trọng tới những yếu tố trước, trong v&agrave; sau khi lắp đặt thang m&aacute;y. Những lời khuy&ecirc;n sau đ&acirc;y bạn c&oacute; thể &aacute;p dụng cho cầu&nbsp;<strong>thang m&aacute;y gia đ&igrave;nh</strong>, thang m&aacute;y tải kh&aacute;ch, thang m&aacute;y bệnh viện,.. hầu hết c&aacute;c loại thang m&aacute;y tr&ecirc;n thị trường.</p>\r\n<p><strong><em>Trước khi lắp đặt thang m&aacute;y</em></strong></p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bạn cần lựa chọn loại thang m&aacute;y ph&ugrave; hợp cho mục đ&iacute;ch của bạn, mỗi thang m&aacute;y đều c&oacute; chức năng vận chuyển đối tượng kh&aacute;c nhau.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Để c&oacute; được một hệ thống thang m&aacute;y chuẩn nhất cho c&ocirc;ng tr&igrave;nh của m&igrave;nh, người sử dụng thang m&aacute;y cần c&oacute; sự t&igrave;m hiểu kỹ lưỡng về kiến thức cũng như mẹo nhỏ để c&oacute; sự hiểu biết nhất định về thang m&aacute;y. Nhờ đ&oacute;, bạn c&oacute; thể dễ d&agrave;ng lựa chọn được thiết bị thang m&aacute;y chất lượng tốt, mang tới hiệu quả sử dụng cao cho con người.</p>\r\n<p>Một hệ thống thang m&aacute;y ho&agrave;n chỉnh cần phải c&oacute; đầy đủ c&aacute;c thiết bị li&ecirc;n quan tới hệ thống cơ kh&iacute; v&agrave; những thiết bị li&ecirc;n quan tới hệ thống điện. Tất cả mới đảm bảo cho thang m&aacute;y vận h&agrave;nh tốt nhất v&agrave; đảm bảo an to&agrave;n cho người sử dụng.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Để c&oacute; được thiết bị thang m&aacute;y chất lượng mỗi người khi chọn mua thang m&aacute;y cần thực sự hiểu biết về chất lượng, thương hiệu uy t&iacute;n để lựa chọn được c&aacute;c thiết bị thang m&aacute;y với gi&aacute; hợp l&yacute; nhất.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mẫu m&atilde; của thang m&aacute;y cũng l&agrave; một yếu tố cần được quan t&acirc;m g&oacute;p phần l&agrave;m tăng gi&aacute; trị của c&ocirc;ng tr&igrave;nh thang m&aacute;y được lắp đặt. Đơn giản v&igrave; khi bạn chọn kiểu buồng thang m&aacute;y đẹp, ho&agrave;n hảo từng chi tiết như từ chất liệu v&aacute;ch cabin, s&agrave;n cabin cho đến chi tiết chạm khắc v&aacute;ch cabin, m&agrave;u đ&egrave;n led,&hellip; C&aacute;c c&ocirc;ng ty thang m&aacute;y sẽ cung cấp cho bạn rất nhiều mẫu thang m&aacute;y kh&aacute;c nhau cho người sử dụng thoả th&iacute;ch chọn loại thang m&aacute;y th&iacute;ch hợp nhất.</p>\r\n<p><strong><em>Những quy tr&igrave;nh khi lắp đặt thang m&aacute;y</em></strong></p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khi kh&aacute;ch h&agrave;ng đ&atilde; chọn lựa được loại thang m&aacute;y ph&ugrave; hợp với những thiết bị, vật liệu đ&atilde; được y&ecirc;u cầu theo sở th&iacute;ch c&aacute; nh&acirc;n v&agrave; c&aacute;c yếu tố ph&ugrave; hợp với nhu cầu sử dụng của mỗi c&ocirc;ng tr&igrave;nh, th&igrave; nh&acirc;n vi&ecirc;n thang m&aacute;y sẽ tiến h&agrave;nh c&aacute;c bước lắp đặt thang m&aacute;y theo đ&uacute;ng tr&igrave;nh tự. Điều n&agrave;y nhằm mang tới t&iacute;nh độ chuẩn x&aacute;c cao v&agrave; đảm bảo c&aacute;c thiết bị c&oacute; thể phục vụ tốt nhất cho sự an to&agrave;n người sử dụng.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng việc lắp đặt thang m&aacute;y phải tiến h&agrave;nh song song với việc x&aacute;c định r&otilde; r&agrave;ng vị tr&iacute; hố thang.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c chi tiết bộ phận thang m&aacute;y cần được kiểm tra lại theo đ&uacute;ng k&iacute;ch thước như buồng thang m&aacute;y, giếng thang m&aacute;y để kh&ocirc;ng l&agrave;m ảnh hưởng tới qu&aacute; tr&igrave;nh lắp đặt.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một điều trọng nhất l&agrave; nh&acirc;n vi&ecirc;n phải x&acirc;y dựng v&agrave; lắp đặt thang m&aacute;y theo tr&igrave;nh tự nhất định (lộ tr&igrave;nh mẫu), để đảm bảo cho việc lắp đặt đạt chất lượng tốt cũng như đạt được ti&ecirc;u chuẩn quốc tế (nếu bạn sử dụng thang m&aacute;y nhập khẩu).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div><img style=\"width: 100%; height: 100%;\" src=\"https://res.cloudinary.com/dangpt/image/upload/v1560096545/thuanphong/category/302212000_bx3ijg.png\" /></div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<p><strong><em>Sau khi lắp đặt thang m&aacute;y</em></strong></p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước khi đưa thang m&aacute;y v&agrave;o sử dụng, nh&acirc;n vi&ecirc;n cần phải kiểm tra, đo đạc kỹ lưỡng, kiểm chứng c&aacute;c bộ phận một lần cuối cho đ&uacute;ng th&ocirc;ng số kỹ thuật v&agrave; đ&uacute;ng vị tr&iacute;, để chắc chắn rằng sẽ kh&ocirc;ng c&oacute; bất kỳ sự cố, rủi ro n&agrave;o c&oacute; thể xảy ra l&agrave;m ảnh hưởng tới con người.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một số lưu &yacute; về việc khi đưa thang m&aacute;y v&agrave;o sử dụng:</p>\r\n<ol>\r\n<li>Bạn cần c&agrave;i đặt thiết bị b&aacute;o qu&aacute; tải để đảm bảo lượng người sử dụng bước v&agrave;o b&ecirc;n trong cabin c&oacute; khối lượng ph&ugrave; hợp với tải trọng của thang m&aacute;y. Tr&aacute;nh t&igrave;nh trạng thang m&aacute;y vận chuyển qu&aacute; tải nhiều lần, v&igrave; đ&oacute; l&agrave; dấu hiệu khiến cầu thang bạn dễ bị hư, c&aacute;c bộ phận sẽ hoạt động kh&ocirc;ng b&igrave;nh thường v&agrave; đặc biệt l&agrave; khiến bạn phải đối đầu với nhiều hiểm nguy khi sử dụng thang m&aacute;y.</li>\r\n<li>Bạn cần vệ sinh thang m&aacute;y thường xuy&ecirc;n hơn: để bụi bẩn, r&aacute;c, vi khuẩn kh&ocirc;ng tập trung nhiều trong hệ thống thang m&aacute;y, nhất l&agrave; buồng thang m&aacute;y tiếp x&uacute;c trực tiếp với người sử dụng. H&atilde;y đảm bảo rằng thang m&aacute;y lu&ocirc;n c&oacute; m&ocirc;i trường trong sạch v&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh.</li>\r\n<li>Mỗi người sử dụng thang m&aacute;y n&ecirc;n sử dụng thang m&aacute;y đ&uacute;ng c&aacute;ch để vừa bảo vệ cho sự an to&agrave;n của ch&iacute;nh m&igrave;nh, n&acirc;ng cao hiệu quả sử dụng thang m&aacute;y đồng thời gi&uacute;p giữ g&igrave;n tốt nhất cho thiết bị thang m&aacute;y của c&ocirc;ng tr&igrave;nh bạn đang sử dụng.</li>\r\n<li>Đừng để c&aacute;c vật dễ ch&aacute;y nổ, dễ vỡ ở trong thang m&aacute;y hay những khu vực xung quanh thang m&aacute;y. &nbsp;</li>\r\n<li>V&agrave; điều quan trọng m&agrave; bạn kh&ocirc;ng bao giờ qu&ecirc;n được đ&oacute; l&agrave; việc ch&uacute; trọng v&agrave;o c&ocirc;ng t&aacute;c b&agrave;o tr&igrave;, bảo dưỡng, kiểm tra thang m&aacute;y thường xuy&ecirc;n nhằm khắc phục mọi hỏng h&oacute;c.</li>\r\n</ol>\r\n<p>&gt;&gt; Như vậy, người mua thang m&aacute;y cần phải t&igrave;m hiểu về quy tr&igrave;nh cơ bản cũng như kiến thức phổ th&ocirc;ng li&ecirc;n quan đến<strong>&nbsp;thang m&aacute;y</strong>&nbsp;từ kh&acirc;u chuẩn bị cho tới khi lắp đặt v&agrave; đưa thang m&aacute;y v&agrave;o sử dụng.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserName` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `UserPass` text CHARACTER SET latin1 DEFAULT NULL,
  `FullName` text DEFAULT NULL,
  `Activited` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('dang','123','dang rom',1),('legia','123456',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'thuanphong'
--
/*!50003 DROP PROCEDURE IF EXISTS `changepass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changepass`(IN pUserName VARCHAR(25), IN pUserPass TEXT)
BEGIN 
    UPDATE Users SET UserPass = pUserPass WHERE UserName = pUserName;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkUser`(IN pUserName VARCHAR(25), IN pUserPass TEXT)
BEGIN
    DECLARE checkuser INT;
    SET checkuser = (SELECT count(Users.UserName) FROM LeGia.Users
                    WHERE UserName = pUserName AND UserPass = pUserPass
                    AND Activited = TRUE LIMIT 1);
    IF checkuser = 1 THEN
      SELECT UserName, FullName FROM LeGia.Users LIMIT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCategory`(IN pId INT)
BEGIN
    UPDATE Categorys
    SET Activated = 0
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteImage`(IN pId INT)
BEGIN
    DELETE FROM Images WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletePost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePost`(IN pId INT)
BEGIN
    DELETE FROM Posts WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser`(IN pUserName VARCHAR(25))
BEGIN 
    UPDATE LeGia.Users SET Activited = FALSE
    WHERE UserName = pUserName;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findCategoryName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findCategoryName`(IN pName TINYTEXT CHAR SET utf8)
BEGIN
    DECLARE _findname INT;
    SET _findname =(SELECT count(Id) FROM Categorys WHERE Name = pName);
    IF _findname = 0 THEN
      SELECT 0;
    ELSE
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findCompany` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findCompany`()
BEGIN
    SELECT Name, Address, Email, PhoneNumber, TaxCode, HotLine, About
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findImageName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findImageName`(IN pName TINYTEXT CHAR SET utf8)
BEGIN
    DECLARE _findname INT;
    SET _findname =(SELECT count(Id) FROM Images WHERE Name = pName);
    IF _findname = 0 THEN
      SELECT 0;
    ELSE
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findPostName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findPostName`(IN pName TINYTEXT CHAR SET utf8)
BEGIN
    DECLARE _findname INT;
    SET _findname =(SELECT count(Id) FROM Posts WHERE Name = pName);
    IF _findname = 0 THEN
      SELECT 0;
    ELSE
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCategory`()
BEGIN
    SELECT Id, Name, Alias, IsMenu, Activated, Orders, Description
    FROM Categorys
    ORDER BY Id, Name, Alias;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCategoryForPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCategoryForPost`()
BEGIN 
    SELECT Id, Name
    FROM Categorys
    WHERE Activated = 1
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllImage`()
BEGIN
    SELECT Id, Name, Alias, Image, IsLogo, IsSlide, IsProject, Link, Description
    FROM Images
    ORDER BY Name, Id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPost`()
BEGIN
    SELECT p.Id, p.Name, p.Alias, p.Image, p.CategoryId, c.Name AS CategoryName, p.Activated, p.Content
    FROM Posts p
    INNER JOIN Categorys c ON c.Id = p.CategoryId
    ORDER BY Id, p.Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUser`()
BEGIN 
    SELECT UserName, UserPass, Activited, FullName
    FROM LeGia.Users
    ORDER BY UserName, FullName;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCategoryById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategoryById`(IN pId INT)
BEGIN
    SELECT Id, Name, Alias, IsMenu, Activated, Orders, Description
    FROM Categorys
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompanyAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompanyAbout`()
BEGIN 
    SELECT About FROM Company LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompanyForHome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompanyForHome`()
BEGIN
    SELECT Name, Address, Email, PhoneNumber, TaxCode, HotLine
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getHeadMenu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHeadMenu`()
BEGIN
	select Id, Name, Alias, Orders
    from Categorys
    where Activated = 1 and IsMenu = 1
    order by Orders;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getImageById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getImageById`(IN pId INT)
BEGIN
    SELECT Id, Name, Alias, Image, IsLogo, IsSlide, IsProject, Link, Description 
    FROM Images
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLogo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogo`()
BEGIN
    SELECT Id, Name, Alias, Image
    FROM Images
    WHERE IsLogo = 1
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMenuItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMenuItems`()
BEGIN
	select p.Id, p.Name, p.Alias, p.CategoryId
    from Posts p
    Inner Join Categorys c on c.Id = p.CategoryId
    and c.Activated = 1 and c.IsMenu = 1
    and p.Activated = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostById`(IN pId INT)
BEGIN 
    SELECT p.Id, p.Name, p.Alias, p.Image, p.CategoryId, c.Name AS CategoryName,
            p.Activated, p.Content, p.ShortContent
    FROM Posts p
    INNER JOIN Categorys c on p.CategoryId = c.Id
    AND p.Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostDetail`(IN pAlias TINYTEXT CHAR SET utf8)
BEGIN
    SELECT Id, Name, Alias, Content
    FROM Posts
    WHERE Alias = pAlias
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostForFooter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostForFooter`()
BEGIN
    SELECT p.Id, p.Name, p.Alias
    FROM Posts p
    inner join Categorys c on p.CategoryId = c.Id
    WHERE c.Orders = 3
    ORDER BY Name
    LIMIT 4;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostForHomePage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostForHomePage`()
BEGIN
    SELECT p.Id, p.Name, p.Alias, p.Image, p.Alias, p.ShortContent
    FROM Posts p
    INNER JOIN Categorys c on p.CategoryId = c.Id
    WHERE c.Orders = 4 AND p.Activated = 1
    LIMIT 7;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostForList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostForList`(IN pCateAlias TINYTEXT CHAR SET utf8)
BEGIN
    SELECT p.Id, p.Name, p.Alias, p.Image, p.ShortContent
    FROM Posts p
    INNER JOIN Categorys c ON p.CategoryId = c.Id
    AND c.Alias = pCateAlias AND p.Activated = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getServices` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getServices`()
BEGIN
    SELECT p.Id, p.Name, p.Alias, p.Image
    FROM Posts p
    INNER JOIN Categorys c ON c.Id = p.CategoryId   
    WHERE c.Orders = 3;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSlide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSlide`()
BEGIN 
    SELECT Id, Name, Alias, Image
    FROM Images
    WHERE IsSlide = 1
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTopNews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTopNews`()
BEGIN
    SELECT p.Id, p.Name, p.Alias, p.Image, p.ShortContent
    FROM Posts p
    INNER JOIN Categorys c ON p.CategoryId = c.Id
    AND p.Activated = 1 AND c.Orders = 4
    ORDER BY RAND()
    LIMIT 3;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCategory`( IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pIsMenu TINYINT(1),
    IN pActivated TINYINT(1), 
    IN pOrders INT, IN pDescription TEXT
  )
BEGIN
    INSERT INTO Categorys(Name, IsMenu, Activated, Description, Alias, Orders)
    VALUES (pName, pIsMenu, pActivated, pDescription, pAlias, pOrders);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertImage`(
    IN pName TINYTEXT CHAR SET utf8,
    IN pAlias TINYTEXT,
    IN pIsLogo TINYINT(1),
    IN pIsSlide     TINYINT(1),
    IN pIsProject TINYINT(1),
    IN pLink TEXT,
    IN pImage TEXT,
    IN pDescription TEXT CHAR SET utf8
  )
BEGIN
    INSERT INTO Images(Name, Alias, Image, IsLogo, IsSlide, IsProject, Link, Description)
    VALUES (pName, pAlias, pImage, pIsLogo, pIsSlide, pIsProject, pLink, pDescription);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPost`(
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pImage TEXT CHAR SET utf8, 
    IN pCategoryId INT,
    IN pActivated TINYINT(1), 
    in pShortContent TINYTEXT,
    IN pContent LONGTEXT CHAR SET utf8
  )
BEGIN 
    INSERT INTO Posts (Name, Alias, Image, CategoryId, Activated,ShortContent, Content)
    VALUES (pName, pAlias, pImage, pCategoryId, pActivated, pShortContent, pContent);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(
    IN pUserName VARCHAR(25),
    IN pUserPass TINYTEXT,
    IN pFullName TINYTEXT CHAR SET utf8,
    IN pActivited BOOLEAN
  )
BEGIN
    INSERT INTO Users(UserName, UserPass, FullName, Activited)
    VALUES (pUserName, pUserPass, pFullName, pActivited);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(IN pUserName VARCHAR(25), IN pUserPass TEXT)
BEGIN 
    DECLARE checklogin INT;
    SET checklogin = (SELECT count(UserName) from Users WHERE UserName = pUserName AND UserPass = pUserPass);
    IF checklogin = 0 THEN
      SELECT 0;
    ELSE 
      SELECT 1; 
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCategory`(
    IN pId INT, 
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pIsMenu TINYINT(1),
    IN pActivated TINYINT(1), 
    IN pOrders INT, 
    IN pDescription TEXT CHAR SET utf8
  )
BEGIN
    UPDATE Categorys
    SET Name = pName, Alias = pAlias, IsMenu = pIsMenu, Activated = pActivated, Description = pDescription,
        Orders = pOrders
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCompany` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCompany`(
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAddress TINYTEXT CHAR SET utf8, 
    IN pEmail TINYTEXT CHAR SET utf8,
    IN pPhoneNumber TINYTEXT CHAR SET utf8, 
    IN pTaxCode TINYTEXT CHAR SET utf8, 
    IN pHotLine TINYTEXT CHAR SET utf8,
    IN pAbout LONGTEXT CHAR SET utf8)
BEGIN 
    UPDATE Company
    SET Name = pName, Address = pAddress, Email = pEmail, PhoneNumber = pPhoneNumber,
        TaxCode = pTaxCode, HotLine = pHotLine, About = pAbout;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateImage`(
    IN pId INT, 
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pIsLogo TINYINT(1),
    IN pIsProject TINYINT(1), 
    IN pLink TEXT CHAR SET utf8, 
    IN pDescription TEXT CHAR SET utf8, 
    IN pImage TEXT CHAR SET utf8,
    IN pIsSlide   TINYINT(1))
BEGIN
    UPDATE Images
    SET Name = pName, Alias = pAlias, IsLogo = pIsLogo, IsSlide = pIsSlide, Link = pLink, Description = pDescription,
        IsProject = pIsProject, Image = pImage
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePost`(
    IN pId INT, 
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pImage TEXT CHAR SET utf8,
    IN pCategoryId INT, 
    IN pActivated TINYINT(1), 
    in pShortContent TINYTEXT,
    IN pContent LONGTEXT CHAR SET utf8)
BEGIN
    UPDATE Posts
    SET Name = pName,
    	Alias = pAlias,
    	Image = pImage,
    	CategoryId = pCategoryId,
    	Activated = pActivated,
    	ShortContent = pShortContent,
    	Content = pContent
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser`(IN pUserName  VARCHAR(25), IN pUserPass TEXT, IN pFullName TEXT CHAR SET utf8,
                                  IN pActivited TINYINT(1))
BEGIN
    UPDATE LeGia.Users
    SET UserPass = pUserPass, FullName = pFullName, Activited = pActivited
    WHERE UserName = pUserName;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-11 19:17:05
