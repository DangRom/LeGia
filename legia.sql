-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: LeGia
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `Categorys`
--

DROP TABLE IF EXISTS `Categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorys` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext,
  `Alias` tinytext,
  `IsMenu` tinyint(1) DEFAULT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  `Orders` int(11) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorys`
--

LOCK TABLES `Categorys` WRITE;
/*!40000 ALTER TABLE `Categorys` DISABLE KEYS */;
INSERT INTO `Categorys` VALUES (5,'Trang chủ','trang-chu',1,1,1,'trang chủ more'),(6,'Liên hệ','lien-he',1,1,5,'liên hệ more'),(7,'Dịch vụ','dich-vu',1,1,3,'dich-vu more'),(8,'Giới thiệu','gioi-thieu',1,1,2,'giới thiệu more'),(9,'Tin tức','tin-tuc',1,1,4,'tin tức more');
/*!40000 ALTER TABLE `Categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Name` tinytext NOT NULL,
  `Address` tinytext,
  `Email` tinytext,
  `PhoneNumber` tinytext,
  `TaxCode` tinytext,
  `HotLine` tinytext,
  `About` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES ('Công ty TNHH Xuất Nhập Khẩu - Thương Mại - Dịch Vụ - Vận Tải Lê Gia','gg fff ffff','legia@gmail.com','0901 123 456 - 0933 422 433','chưa có  thiệt','chưa mua','<div class=\"lg__content__box ui segment\">\r\n<div class=\"lg__content__box__header\">\r\n<h1 class=\"lg__content__box__header__title\">Giới Thiệu Về Ch&uacute;ng T&ocirc;i</h1>\r\n</div>\r\n<div class=\"lg__content__box__content\">\r\n<div class=\"\">\r\n<p class=\"lg__content__box__content__title\">C&ocirc;ng ty ch&uacute;ng t&ocirc;i c&oacute; đội ngũ c&aacute;n bộ, nh&acirc;n vi&ecirc;n giỏi chuy&ecirc;n m&ocirc;n nghiệp vụ, rất gi&agrave;u kinh nghiệm trong quản l&yacute;, điều h&agrave;nh vận tải, sẵn s&agrave;ng tư vấn miễn ph&iacute; cho kh&aacute;ch h&agrave;ng. Khi sử dụng dịch vụ ch&uacute;ng t&ocirc;i qu&yacute; kh&aacute;ch chỉ phải bỏ ra ph&iacute; dịch vụ vận chuyển tiết kiệm nhất, nhưng sẽ nhận được chất lượng dịch vụ tốt nhất</p>\r\n<div class=\"row lg__row__margin\">\r\n<div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12\">\r\n<div class=\"lg__content__box__icon\">\r\n<p class=\"lg__content__box__icon__title thumbs__color\">Uy T&iacute;n Được Đảm Bảo</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12\">\r\n<div class=\"lg__content__box__icon\">\r\n<p class=\"lg__content__box__icon__title trophy__color\">Chất lượng Được Kiểm Chứng</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12\">\r\n<div class=\"lg__content__box__icon\">\r\n<p class=\"lg__content__box__icon__title handshake__color\">Tận T&acirc;m Phục Vụ</p>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"lg__about__footer\">\r\n<p><strong>C&ocirc;ng ty TNHH Xuất Nhập Khẩu - Thương Mại - Dịch Vụ - Vận Tải L&ecirc; Gia</strong> l&agrave; một C&ocirc;ng ty năng động, s&aacute;ng tạo vận tải h&agrave;ng h&oacute;a trong cả nước. C&ocirc;ng ty ch&uacute;ng t&ocirc;i c&oacute; gần 20 xe đầu k&eacute;o, với một đội ngũ l&atilde;nh đạo trẻ trung, nhiệt t&igrave;nh, năng động s&aacute;ng tạo v&agrave; một đội ngũ t&agrave;i xế si&ecirc;ng năng, nhiệt t&igrave;nh đ&atilde; qua c&aacute;c lớp đ&agrave;o tạo v&agrave; c&oacute; nhiều năm kinh nghiệm trong nghiệp vụ vận chuyển h&agrave;ng h&oacute;a. Ch&uacute;ng t&ocirc;i cung cấp dịch vụ ho&agrave;n hảo vận tải h&agrave;ng h&oacute;a bằng đường bộ, c&oacute; khả năng đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng về vận tải h&agrave;ng h&oacute;a tr&ecirc;n tất cả c&aacute;c tỉnh trong cả nước&hellip;.</p>\r\n<img class=\"img__article__category\" src=\"images/vantaibacnam.png\" alt=\"C&ocirc;ng ty vận tải L&ecirc; Gia\" />\r\n<p>Hiện nay c&ocirc;ng ty đ&atilde; đầu tư, g&acirc;y dựng v&agrave; ph&aacute;t triển được một đo&agrave;n xe Container lớn thoả m&atilde;n mọi nhu cầu về trọng tải của kh&aacute;ch h&agrave;ng . Với đội ngũ c&aacute;n bộ, nh&acirc;n vi&ecirc;n điều h&agrave;nh v&agrave; đội ngũ l&aacute;i xe nhiệt t&igrave;nh, nhiều kinh nghiệm, ch&uacute;ng t&ocirc;i cam kết đem đến cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng với dịch vụ nhanh ch&oacute;ng v&agrave; tin cậy. <strong>C&ocirc;ng ty TNHH Xuất Nhập Khẩu - Thương Mại - Dịch Vụ - Vận Tải L&ecirc; Gia</strong> sẽ tiếp tục khẳng định, ph&aacute;t triển để cung cấp những dịch vụ ho&agrave;n hảo v&agrave; hiệu quả hơn để đ&aacute;p ứng mọi y&ecirc;u cầu của Qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n<img class=\"img__article__category\" src=\"images/about/2.jpg\" alt=\"C&ocirc;ng ty vận tải L&ecirc; Gia\" />\r\n<p><strong>C&ocirc;ng ty TNHH Xuất Nhập Khẩu - Thương Mại - Dịch Vụ - Vận Tải L&ecirc; Gia</strong> quyền lợi của Qu&yacute; kh&aacute;ch h&agrave;ng lu&ocirc;n lu&ocirc;n được đảm bảo. Hiện nay C&ocirc;ng ty ch&uacute;ng t&ocirc;i đang dần cải tiến phương thức quản l&yacute;, điều h&agrave;nh v&agrave; x&acirc;y dựng một đội ngũ c&aacute;n bộ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp để đ&aacute;p ứng với mọi y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để trở th&agrave;nh một nh&agrave; vận chuyển h&agrave;ng h&oacute;a container bằng đường bộ chuy&ecirc;n nghiệp.</p>\r\n<p>Với bề d&agrave;y kinh nghiệm trong kh&aacute;i th&aacute;c,vận tải h&agrave;ng ho&aacute; bằng Container, ch&uacute;ng t&ocirc;i chắc chắn cung cấp cho kh&aacute;ch h&agrave;ng những dịch vụ tốt nhất. C&oacute; số lưu lượng h&agrave;ng h&oacute;a vận chuyển lớn v&agrave; số lượng xe nhiều, ch&uacute;ng t&ocirc;i c&oacute; khả năng đưa ra mức gi&aacute; cạnh tranh v&agrave; kh&aacute;ch h&agrave;ng sẽ tiết kiệm được nhiều chi ph&iacute; khi sử dụng dịch vụ của ch&uacute;ng t&ocirc;i</p>\r\n</div>\r\n</div>');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contacts`
--

DROP TABLE IF EXISTS `Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contacts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext NOT NULL,
  `Phone` tinytext NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Content` text,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacts`
--

LOCK TABLES `Contacts` WRITE;
/*!40000 ALTER TABLE `Contacts` DISABLE KEYS */;
INSERT INTO `Contacts` VALUES (1,'fsdfsdf','dfgdfgg','dfgdfgfdg','sffgfd','2017-05-30 10:51:38'),(2,'d','d','d','d','2017-05-30 10:53:48'),(3,'dfdfdf','fdfdf','dfdfdf','dddd','2017-05-30 11:06:39'),(4,'dfsdf','sdfsdf','sdf','sdf','2017-05-30 11:17:46');
/*!40000 ALTER TABLE `Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext,
  `Alias` tinytext,
  `IsLogo` tinyint(1) DEFAULT NULL,
  `IsProject` tinyint(1) DEFAULT NULL,
  `IsSlide` tinyint(1) DEFAULT NULL,
  `Link` text,
  `Description` text,
  `Image` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (7,'DỊCH VỤ KHAI BÁO HẢI QUAN','dich - vu - khai - bao - hai - quan',0,0,1,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1495095565/4_idf2km.png'),(8,'DỊCH VỤ VẬN CHUYỂN CONTAINER ĐƯỜNG THỦY','dich - vu - van - chuyen - container - duong - thuy',0,0,1,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1495095565/1_pnaivc.png'),(9,'DỊCH VỤ VẬN CHUYỂN CONTAINER ĐƯỜNG BỘ','dich - vu - van - chuyen - container - duong - bo',0,0,1,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1495095565/2_gbkua0.png'),(10,'DỊCH VỤ VẬN CHUYỂN BẮC NAM','dich - vu - van - chuyen - bac - nam',0,0,1,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1495095565/3_xdicpr.png'),(11,'viettel','viettel',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659269/1_aotnpi.png'),(12,'Audi','audi',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659269/2_tqoveq.png'),(13,'Vietin bank','vietin - bank',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659268/3_eowwei.png'),(14,'Kfc','kfc',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659268/4_vqtonh.png'),(15,'Huyndai','huyndai',1,0,0,NULL,NULL,'http://res.cloudinary.com/legiatrans-com/image/upload/v1494659270/5_xo30wl.jpg');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext,
  `Alias` tinytext,
  `Image` text,
  `CategoryId` int(11) DEFAULT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  `ShortContent` tinytext,
  `Content` longtext,
  `Primary` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Posts_Categorys_Id_fk` (`CategoryId`),
  CONSTRAINT `Posts_Categorys_Id_fk` FOREIGN KEY (`CategoryId`) REFERENCES `Categorys` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (23,'Khai báo Hải Quan','khai-bao-hai-quan','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/theuhaiquan_okgvhv.png',7,1,NULL,'',0),(24,'Vận chuyển container đường thủy','van-chuyen-container-duong-thuy','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibien_h04bvp.png',7,1,NULL,'',0),(25,'Vận chuyển Bắc - Nam','van-chuyen-bac-nam','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibacnam_fkknuu.png',7,1,NULL,'',0),(26,'Vận chuyển container đường bộ','van-chuyen-container-duong-bo','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/noi_dia_gjtng5.jpg',7,1,NULL,'',0),(27,'Lorem ipsum dolor sit amet, consectetur adipisicing elit - primary','lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-primary','http://res.cloudinary.com/legiatrans-com/image/upload/v1495365384/Truck_wc3etb.png',9,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolore aliquid officia commodi ipsum itaque!','<p>Sự tăng trưởng mạnh mẽ của vận tải đường bộ và đặc biệt là ngành hàng không đã đẩy vận tải đường sắt vốn èo uột càng trở nên khó khăn gấp bội. Tại cuộc họp Ban Thường trực Ủy ban An toàn giao thông vừa diễn ra, Bộ trưởng\n                                    Bộ Giao thông Vận tải (GTVT) Trương Quang Nghĩa đã chỉ đạo trước mắt phải siết việc cấp phép bay trong dịp Tết để ngành hàng không bớt “vét” khách của đường sắt. Chỉ đạo này đang gây nhiều tranh cãi.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Bế tắc, đi ngược xu thế\n                                    </strong>\n                                </p>\n                                <p>\n                                    TS Nguyễn Xuân Thủy, chuyên gia giao thông đô thị, cho rằng trong cơ chế thị trường, các loại hình vận tải tự do cạnh tranh và người tiêu dùng thoải mái lựa chọn. Xã hội phát triển, không thể để người dân sử dụng dịch vụ của hệ thống đường sắt đơn tuyến,\n                                    lạc hậu như hiện nay. “Tôi cho rằng việc hạn chế khách đi máy bay, buộc họ chuyển sang đi tàu là cách nghĩ bế tắc, đi ngược xu thế, không đúng với cơ chế thị trường” - ông Thủy nói.\n                                </p>\n                                <p>\n                                    rao đổi với phóng viên Báo Người Lao Động, PGS-TS Nguyễn Văn Hùng, nguyên Hiệu trưởng Trường ĐH Xây dựng Hà Nội, nhận định nhà nước không thể tiếp tục hỗ trợ và bao cấp, mà ngành đường sắt phải vận động, thay đổi và “lớn lên” nhằm thích ứng với thị trường,\n                                    hợp quy luật, đáp ứng nhu cầu của khách hàng. Cần trả lại đúng quy luật cạnh tranh thì giao thông Việt Nam mới phát triển được. Việc này sẽ giúp ngành đường sắt tự cải thiện, nâng cao chất lượng phục vụ và giảm giá\n                                    thành để có sự cạnh tranh tốt hơn. Từ cạnh tranh để tạo ra sự lựa chọn tốt nhất cho người tiêu dùng, đó mới là sự phát triển bền vững cho ngành đường sắt\n                                </p>\n                                <img src=\"../images/article/mo-tour-du-lich-bang-tau-hoa-0856.jpg\" class=\"img#_#_article#_#_category\">\n                                <p>\n                                    Chuyên gia giao thông, TS Phạm Sanh, phân tích: Nhu cầu đi lại bằng đường sắt, hàng không hay đường bộ do thị trường quyết định. Dù ngành hàng không quá tải nhưng hành khách thấy tiện lợi hơn đường sắt thì họ vẫn lựa chọn. Đây cũng là tín hiệu vui cho\n                                    thấy thị trường hàng không Việt Nam phát triển nhưng còn cơ hội cho ngành đường sắt, đường bộ “chia lửa” nếu biết khai thác, tận dụng khi thị trường cạnh tranh khốc liệt hơn.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Tụt hậu và yếu kém\n                                    </strong>\n                                </p>\n                                <p>\n                                    ĐBQH Nguyễn Phi Thường (Hà Nội) thẳng thắn cho rằng ngành đường sắt yếu kém bởi bao năm qua vẫn cơ bản sử dụng thế hệ công nghệ đường sắt thứ 2 với hơn 3.100 km đường đơn khổ 1 m có từ thời Pháp, đầu máy diesel tốc độ trung bình thấp. Trong khi đó công\n                                    nghệ đường sắt thế giới đang ở thế hệ thứ 4 với khổ ray đôi 1,435 m, đệm từ trường, đầu máy điện tốc độ cao và chuẩn bị tiến sang thế hệ thứ 5. Yếu kém bởi công nghệ điều hành thủ công, lạc hậu, mạng lưới thiếu kết\n                                    nối, hầu như không kết nối với các đầu mối giao thông, cảng biển, sân bay, khu kinh tế. “Năng lực kinh doanh yếu, tư duy bao cấp, chất lượng dịch vụ kém, doanh thu sản lượng và thị phần vận chuyển suy giảm nghiêm trọng\n                                    là những gì đang diễn ra với ngành đường sắt” - ông Thường đánh giá\n                                </p>\n                                <p>\n                                    Ông Nguyễn Văn Thể, nguyên Thứ trưởng Bộ GTVT, cũng cho rằng đường sắt là một trong những loại hình vận tải ưu việt nhất mà tất cả các nước phát triển đều ưu tiên phát triển. Nhưng 130 năm trở lại đây, Việt Nam hầu như không phát triển đường sắt. “Toàn\n                                    bộ hệ thống chỉ là đường đơn, muốn chạy 2 chiều thì phải vào ga tránh nhau. Đi đường bộ từ Bắc vào Nam mất mười mấy giờ, còn đi đường sắt mất 32 giờ thì sao có thể chấp nhận được” - ông Thể phân tích.\n                                </p>',1),(28,'Lorem ipsum dolor sit amet, consectetur adipisicing elit - 0','lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-0','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/theuhaiquan_okgvhv.png',9,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolore aliquid officia commodi ipsum itaque!','<p>Sự tăng trưởng mạnh mẽ của vận tải đường bộ và đặc biệt là ngành hàng không đã đẩy vận tải đường sắt vốn èo uột càng trở nên khó khăn gấp bội. Tại cuộc họp Ban Thường trực Ủy ban An toàn giao thông vừa diễn ra, Bộ trưởng\n                                    Bộ Giao thông Vận tải (GTVT) Trương Quang Nghĩa đã chỉ đạo trước mắt phải siết việc cấp phép bay trong dịp Tết để ngành hàng không bớt “vét” khách của đường sắt. Chỉ đạo này đang gây nhiều tranh cãi.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Bế tắc, đi ngược xu thế\n                                    </strong>\n                                </p>\n                                <p>\n                                    TS Nguyễn Xuân Thủy, chuyên gia giao thông đô thị, cho rằng trong cơ chế thị trường, các loại hình vận tải tự do cạnh tranh và người tiêu dùng thoải mái lựa chọn. Xã hội phát triển, không thể để người dân sử dụng dịch vụ của hệ thống đường sắt đơn tuyến,\n                                    lạc hậu như hiện nay. “Tôi cho rằng việc hạn chế khách đi máy bay, buộc họ chuyển sang đi tàu là cách nghĩ bế tắc, đi ngược xu thế, không đúng với cơ chế thị trường” - ông Thủy nói.\n                                </p>\n                                <p>\n                                    rao đổi với phóng viên Báo Người Lao Động, PGS-TS Nguyễn Văn Hùng, nguyên Hiệu trưởng Trường ĐH Xây dựng Hà Nội, nhận định nhà nước không thể tiếp tục hỗ trợ và bao cấp, mà ngành đường sắt phải vận động, thay đổi và “lớn lên” nhằm thích ứng với thị trường,\n                                    hợp quy luật, đáp ứng nhu cầu của khách hàng. Cần trả lại đúng quy luật cạnh tranh thì giao thông Việt Nam mới phát triển được. Việc này sẽ giúp ngành đường sắt tự cải thiện, nâng cao chất lượng phục vụ và giảm giá\n                                    thành để có sự cạnh tranh tốt hơn. Từ cạnh tranh để tạo ra sự lựa chọn tốt nhất cho người tiêu dùng, đó mới là sự phát triển bền vững cho ngành đường sắt\n                                </p>\n                                <img src=\"../images/article/mo-tour-du-lich-bang-tau-hoa-0856.jpg\" class=\"img__article__category\">\n                                <p>\n                                    Chuyên gia giao thông, TS Phạm Sanh, phân tích: Nhu cầu đi lại bằng đường sắt, hàng không hay đường bộ do thị trường quyết định. Dù ngành hàng không quá tải nhưng hành khách thấy tiện lợi hơn đường sắt thì họ vẫn lựa chọn. Đây cũng là tín hiệu vui cho\n                                    thấy thị trường hàng không Việt Nam phát triển nhưng còn cơ hội cho ngành đường sắt, đường bộ “chia lửa” nếu biết khai thác, tận dụng khi thị trường cạnh tranh khốc liệt hơn.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Tụt hậu và yếu kém\n                                    </strong>\n                                </p>\n                                <p>\n                                    ĐBQH Nguyễn Phi Thường (Hà Nội) thẳng thắn cho rằng ngành đường sắt yếu kém bởi bao năm qua vẫn cơ bản sử dụng thế hệ công nghệ đường sắt thứ 2 với hơn 3.100 km đường đơn khổ 1 m có từ thời Pháp, đầu máy diesel tốc độ trung bình thấp. Trong khi đó công\n                                    nghệ đường sắt thế giới đang ở thế hệ thứ 4 với khổ ray đôi 1,435 m, đệm từ trường, đầu máy điện tốc độ cao và chuẩn bị tiến sang thế hệ thứ 5. Yếu kém bởi công nghệ điều hành thủ công, lạc hậu, mạng lưới thiếu kết\n                                    nối, hầu như không kết nối với các đầu mối giao thông, cảng biển, sân bay, khu kinh tế. “Năng lực kinh doanh yếu, tư duy bao cấp, chất lượng dịch vụ kém, doanh thu sản lượng và thị phần vận chuyển suy giảm nghiêm trọng\n                                    là những gì đang diễn ra với ngành đường sắt” - ông Thường đánh giá\n                                </p>\n                                <p>\n                                    Ông Nguyễn Văn Thể, nguyên Thứ trưởng Bộ GTVT, cũng cho rằng đường sắt là một trong những loại hình vận tải ưu việt nhất mà tất cả các nước phát triển đều ưu tiên phát triển. Nhưng 130 năm trở lại đây, Việt Nam hầu như không phát triển đường sắt. “Toàn\n                                    bộ hệ thống chỉ là đường đơn, muốn chạy 2 chiều thì phải vào ga tránh nhau. Đi đường bộ từ Bắc vào Nam mất mười mấy giờ, còn đi đường sắt mất 32 giờ thì sao có thể chấp nhận được” - ông Thể phân tích.\n                                </p>',0),(29,'Lorem ipsum dolor sit amet, consectetur adipisicing elit - 1','lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-1','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibien_h04bvp.png',9,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolore aliquid officia commodi ipsum itaque!','<p>Sự tăng trưởng mạnh mẽ của vận tải đường bộ và đặc biệt là ngành hàng không đã đẩy vận tải đường sắt vốn èo uột càng trở nên khó khăn gấp bội. Tại cuộc họp Ban Thường trực Ủy ban An toàn giao thông vừa diễn ra, Bộ trưởng\n                                    Bộ Giao thông Vận tải (GTVT) Trương Quang Nghĩa đã chỉ đạo trước mắt phải siết việc cấp phép bay trong dịp Tết để ngành hàng không bớt “vét” khách của đường sắt. Chỉ đạo này đang gây nhiều tranh cãi.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Bế tắc, đi ngược xu thế\n                                    </strong>\n                                </p>\n                                <p>\n                                    TS Nguyễn Xuân Thủy, chuyên gia giao thông đô thị, cho rằng trong cơ chế thị trường, các loại hình vận tải tự do cạnh tranh và người tiêu dùng thoải mái lựa chọn. Xã hội phát triển, không thể để người dân sử dụng dịch vụ của hệ thống đường sắt đơn tuyến,\n                                    lạc hậu như hiện nay. “Tôi cho rằng việc hạn chế khách đi máy bay, buộc họ chuyển sang đi tàu là cách nghĩ bế tắc, đi ngược xu thế, không đúng với cơ chế thị trường” - ông Thủy nói.\n                                </p>\n                                <p>\n                                    rao đổi với phóng viên Báo Người Lao Động, PGS-TS Nguyễn Văn Hùng, nguyên Hiệu trưởng Trường ĐH Xây dựng Hà Nội, nhận định nhà nước không thể tiếp tục hỗ trợ và bao cấp, mà ngành đường sắt phải vận động, thay đổi và “lớn lên” nhằm thích ứng với thị trường,\n                                    hợp quy luật, đáp ứng nhu cầu của khách hàng. Cần trả lại đúng quy luật cạnh tranh thì giao thông Việt Nam mới phát triển được. Việc này sẽ giúp ngành đường sắt tự cải thiện, nâng cao chất lượng phục vụ và giảm giá\n                                    thành để có sự cạnh tranh tốt hơn. Từ cạnh tranh để tạo ra sự lựa chọn tốt nhất cho người tiêu dùng, đó mới là sự phát triển bền vững cho ngành đường sắt\n                                </p>\n                                <img src=\"../images/article/mo-tour-du-lich-bang-tau-hoa-0856.jpg\" class=\"img__article__category\">\n                                <p>\n                                    Chuyên gia giao thông, TS Phạm Sanh, phân tích: Nhu cầu đi lại bằng đường sắt, hàng không hay đường bộ do thị trường quyết định. Dù ngành hàng không quá tải nhưng hành khách thấy tiện lợi hơn đường sắt thì họ vẫn lựa chọn. Đây cũng là tín hiệu vui cho\n                                    thấy thị trường hàng không Việt Nam phát triển nhưng còn cơ hội cho ngành đường sắt, đường bộ “chia lửa” nếu biết khai thác, tận dụng khi thị trường cạnh tranh khốc liệt hơn.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Tụt hậu và yếu kém\n                                    </strong>\n                                </p>\n                                <p>\n                                    ĐBQH Nguyễn Phi Thường (Hà Nội) thẳng thắn cho rằng ngành đường sắt yếu kém bởi bao năm qua vẫn cơ bản sử dụng thế hệ công nghệ đường sắt thứ 2 với hơn 3.100 km đường đơn khổ 1 m có từ thời Pháp, đầu máy diesel tốc độ trung bình thấp. Trong khi đó công\n                                    nghệ đường sắt thế giới đang ở thế hệ thứ 4 với khổ ray đôi 1,435 m, đệm từ trường, đầu máy điện tốc độ cao và chuẩn bị tiến sang thế hệ thứ 5. Yếu kém bởi công nghệ điều hành thủ công, lạc hậu, mạng lưới thiếu kết\n                                    nối, hầu như không kết nối với các đầu mối giao thông, cảng biển, sân bay, khu kinh tế. “Năng lực kinh doanh yếu, tư duy bao cấp, chất lượng dịch vụ kém, doanh thu sản lượng và thị phần vận chuyển suy giảm nghiêm trọng\n                                    là những gì đang diễn ra với ngành đường sắt” - ông Thường đánh giá\n                                </p>\n                                <p>\n                                    Ông Nguyễn Văn Thể, nguyên Thứ trưởng Bộ GTVT, cũng cho rằng đường sắt là một trong những loại hình vận tải ưu việt nhất mà tất cả các nước phát triển đều ưu tiên phát triển. Nhưng 130 năm trở lại đây, Việt Nam hầu như không phát triển đường sắt. “Toàn\n                                    bộ hệ thống chỉ là đường đơn, muốn chạy 2 chiều thì phải vào ga tránh nhau. Đi đường bộ từ Bắc vào Nam mất mười mấy giờ, còn đi đường sắt mất 32 giờ thì sao có thể chấp nhận được” - ông Thể phân tích.\n                                </p>',0),(30,'Lorem ipsum dolor sit amet, consectetur adipisicing elit - 2','lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-2','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibacnam_fkknuu.png',9,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolore aliquid officia commodi ipsum itaque!','<p>Sự tăng trưởng mạnh mẽ của vận tải đường bộ và đặc biệt là ngành hàng không đã đẩy vận tải đường sắt vốn èo uột càng trở nên khó khăn gấp bội. Tại cuộc họp Ban Thường trực Ủy ban An toàn giao thông vừa diễn ra, Bộ trưởng\n                                    Bộ Giao thông Vận tải (GTVT) Trương Quang Nghĩa đã chỉ đạo trước mắt phải siết việc cấp phép bay trong dịp Tết để ngành hàng không bớt “vét” khách của đường sắt. Chỉ đạo này đang gây nhiều tranh cãi.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Bế tắc, đi ngược xu thế\n                                    </strong>\n                                </p>\n                                <p>\n                                    TS Nguyễn Xuân Thủy, chuyên gia giao thông đô thị, cho rằng trong cơ chế thị trường, các loại hình vận tải tự do cạnh tranh và người tiêu dùng thoải mái lựa chọn. Xã hội phát triển, không thể để người dân sử dụng dịch vụ của hệ thống đường sắt đơn tuyến,\n                                    lạc hậu như hiện nay. “Tôi cho rằng việc hạn chế khách đi máy bay, buộc họ chuyển sang đi tàu là cách nghĩ bế tắc, đi ngược xu thế, không đúng với cơ chế thị trường” - ông Thủy nói.\n                                </p>\n                                <p>\n                                    rao đổi với phóng viên Báo Người Lao Động, PGS-TS Nguyễn Văn Hùng, nguyên Hiệu trưởng Trường ĐH Xây dựng Hà Nội, nhận định nhà nước không thể tiếp tục hỗ trợ và bao cấp, mà ngành đường sắt phải vận động, thay đổi và “lớn lên” nhằm thích ứng với thị trường,\n                                    hợp quy luật, đáp ứng nhu cầu của khách hàng. Cần trả lại đúng quy luật cạnh tranh thì giao thông Việt Nam mới phát triển được. Việc này sẽ giúp ngành đường sắt tự cải thiện, nâng cao chất lượng phục vụ và giảm giá\n                                    thành để có sự cạnh tranh tốt hơn. Từ cạnh tranh để tạo ra sự lựa chọn tốt nhất cho người tiêu dùng, đó mới là sự phát triển bền vững cho ngành đường sắt\n                                </p>\n                                <img src=\"../images/article/mo-tour-du-lich-bang-tau-hoa-0856.jpg\" class=\"img__article__category\">\n                                <p>\n                                    Chuyên gia giao thông, TS Phạm Sanh, phân tích: Nhu cầu đi lại bằng đường sắt, hàng không hay đường bộ do thị trường quyết định. Dù ngành hàng không quá tải nhưng hành khách thấy tiện lợi hơn đường sắt thì họ vẫn lựa chọn. Đây cũng là tín hiệu vui cho\n                                    thấy thị trường hàng không Việt Nam phát triển nhưng còn cơ hội cho ngành đường sắt, đường bộ “chia lửa” nếu biết khai thác, tận dụng khi thị trường cạnh tranh khốc liệt hơn.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Tụt hậu và yếu kém\n                                    </strong>\n                                </p>\n                                <p>\n                                    ĐBQH Nguyễn Phi Thường (Hà Nội) thẳng thắn cho rằng ngành đường sắt yếu kém bởi bao năm qua vẫn cơ bản sử dụng thế hệ công nghệ đường sắt thứ 2 với hơn 3.100 km đường đơn khổ 1 m có từ thời Pháp, đầu máy diesel tốc độ trung bình thấp. Trong khi đó công\n                                    nghệ đường sắt thế giới đang ở thế hệ thứ 4 với khổ ray đôi 1,435 m, đệm từ trường, đầu máy điện tốc độ cao và chuẩn bị tiến sang thế hệ thứ 5. Yếu kém bởi công nghệ điều hành thủ công, lạc hậu, mạng lưới thiếu kết\n                                    nối, hầu như không kết nối với các đầu mối giao thông, cảng biển, sân bay, khu kinh tế. “Năng lực kinh doanh yếu, tư duy bao cấp, chất lượng dịch vụ kém, doanh thu sản lượng và thị phần vận chuyển suy giảm nghiêm trọng\n                                    là những gì đang diễn ra với ngành đường sắt” - ông Thường đánh giá\n                                </p>\n                                <p>\n                                    Ông Nguyễn Văn Thể, nguyên Thứ trưởng Bộ GTVT, cũng cho rằng đường sắt là một trong những loại hình vận tải ưu việt nhất mà tất cả các nước phát triển đều ưu tiên phát triển. Nhưng 130 năm trở lại đây, Việt Nam hầu như không phát triển đường sắt. “Toàn\n                                    bộ hệ thống chỉ là đường đơn, muốn chạy 2 chiều thì phải vào ga tránh nhau. Đi đường bộ từ Bắc vào Nam mất mười mấy giờ, còn đi đường sắt mất 32 giờ thì sao có thể chấp nhận được” - ông Thể phân tích.\n                                </p>',0),(31,'Lorem ipsum dolor sit amet, consectetur adipisicing elit - 3','lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-3','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibacnam_fkknuu.png',9,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolore aliquid officia commodi ipsum itaque!','<p>Sự tăng trưởng mạnh mẽ của vận tải đường bộ và đặc biệt là ngành hàng không đã đẩy vận tải đường sắt vốn èo uột càng trở nên khó khăn gấp bội. Tại cuộc họp Ban Thường trực Ủy ban An toàn giao thông vừa diễn ra, Bộ trưởng\n                                    Bộ Giao thông Vận tải (GTVT) Trương Quang Nghĩa đã chỉ đạo trước mắt phải siết việc cấp phép bay trong dịp Tết để ngành hàng không bớt “vét” khách của đường sắt. Chỉ đạo này đang gây nhiều tranh cãi.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Bế tắc, đi ngược xu thế\n                                    </strong>\n                                </p>\n                                <p>\n                                    TS Nguyễn Xuân Thủy, chuyên gia giao thông đô thị, cho rằng trong cơ chế thị trường, các loại hình vận tải tự do cạnh tranh và người tiêu dùng thoải mái lựa chọn. Xã hội phát triển, không thể để người dân sử dụng dịch vụ của hệ thống đường sắt đơn tuyến,\n                                    lạc hậu như hiện nay. “Tôi cho rằng việc hạn chế khách đi máy bay, buộc họ chuyển sang đi tàu là cách nghĩ bế tắc, đi ngược xu thế, không đúng với cơ chế thị trường” - ông Thủy nói.\n                                </p>\n                                <p>\n                                    rao đổi với phóng viên Báo Người Lao Động, PGS-TS Nguyễn Văn Hùng, nguyên Hiệu trưởng Trường ĐH Xây dựng Hà Nội, nhận định nhà nước không thể tiếp tục hỗ trợ và bao cấp, mà ngành đường sắt phải vận động, thay đổi và “lớn lên” nhằm thích ứng với thị trường,\n                                    hợp quy luật, đáp ứng nhu cầu của khách hàng. Cần trả lại đúng quy luật cạnh tranh thì giao thông Việt Nam mới phát triển được. Việc này sẽ giúp ngành đường sắt tự cải thiện, nâng cao chất lượng phục vụ và giảm giá\n                                    thành để có sự cạnh tranh tốt hơn. Từ cạnh tranh để tạo ra sự lựa chọn tốt nhất cho người tiêu dùng, đó mới là sự phát triển bền vững cho ngành đường sắt\n                                </p>\n                                <img src=\"../images/article/mo-tour-du-lich-bang-tau-hoa-0856.jpg\" class=\"img__article__category\">\n                                <p>\n                                    Chuyên gia giao thông, TS Phạm Sanh, phân tích: Nhu cầu đi lại bằng đường sắt, hàng không hay đường bộ do thị trường quyết định. Dù ngành hàng không quá tải nhưng hành khách thấy tiện lợi hơn đường sắt thì họ vẫn lựa chọn. Đây cũng là tín hiệu vui cho\n                                    thấy thị trường hàng không Việt Nam phát triển nhưng còn cơ hội cho ngành đường sắt, đường bộ “chia lửa” nếu biết khai thác, tận dụng khi thị trường cạnh tranh khốc liệt hơn.\n                                </p>\n                                <p>\n                                    <strong>\n                                        Tụt hậu và yếu kém\n                                    </strong>\n                                </p>\n                                <p>\n                                    ĐBQH Nguyễn Phi Thường (Hà Nội) thẳng thắn cho rằng ngành đường sắt yếu kém bởi bao năm qua vẫn cơ bản sử dụng thế hệ công nghệ đường sắt thứ 2 với hơn 3.100 km đường đơn khổ 1 m có từ thời Pháp, đầu máy diesel tốc độ trung bình thấp. Trong khi đó công\n                                    nghệ đường sắt thế giới đang ở thế hệ thứ 4 với khổ ray đôi 1,435 m, đệm từ trường, đầu máy điện tốc độ cao và chuẩn bị tiến sang thế hệ thứ 5. Yếu kém bởi công nghệ điều hành thủ công, lạc hậu, mạng lưới thiếu kết\n                                    nối, hầu như không kết nối với các đầu mối giao thông, cảng biển, sân bay, khu kinh tế. “Năng lực kinh doanh yếu, tư duy bao cấp, chất lượng dịch vụ kém, doanh thu sản lượng và thị phần vận chuyển suy giảm nghiêm trọng\n                                    là những gì đang diễn ra với ngành đường sắt” - ông Thường đánh giá\n                                </p>\n                                <p>\n                                    Ông Nguyễn Văn Thể, nguyên Thứ trưởng Bộ GTVT, cũng cho rằng đường sắt là một trong những loại hình vận tải ưu việt nhất mà tất cả các nước phát triển đều ưu tiên phát triển. Nhưng 130 năm trở lại đây, Việt Nam hầu như không phát triển đường sắt. “Toàn\n                                    bộ hệ thống chỉ là đường đơn, muốn chạy 2 chiều thì phải vào ga tránh nhau. Đi đường bộ từ Bắc vào Nam mất mười mấy giờ, còn đi đường sắt mất 32 giờ thì sao có thể chấp nhận được” - ông Thể phân tích.\n                                </p>',0),(33,'DDDDDD','dddddd','http://res.cloudinary.com/legiatrans-com/image/upload/v1494659009/vantaibacnam_fkknuu.png',7,1,NULL,'<p>dd</p>',0);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UserName` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `UserPass` text CHARACTER SET latin1,
  `FullName` text,
  `Activited` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('dang','123','dang rom',1),('legia','123456',NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'LeGia'
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostById`(IN pId INT)
BEGIN 
    SELECT p.Id, p.Name, p.Alias, p.Image, p.CategoryId, c.Name AS CategoryName,
            p.Activated, p.Content
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPost`(
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pImage TEXT CHAR SET utf8, 
    IN pCategoryId INT,
    IN pActivated TINYINT(1), 
    IN pContent LONGTEXT CHAR SET utf8
  )
BEGIN 
    INSERT INTO Posts (Name, Alias, Image, CategoryId, Activated, Content)
    VALUES (pName, pAlias, pImage, pCategoryId, pActivated, pContent);
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePost`(
    IN pId INT, 
    IN pName TINYTEXT CHAR SET utf8, 
    IN pAlias TINYTEXT CHAR SET utf8, 
    IN pImage TEXT CHAR SET utf8,
    IN pCategoryId INT, 
    IN pActivated TINYINT(1), 
    IN pContent LONGTEXT CHAR SET utf8)
BEGIN
    UPDATE Posts
    SET Name = pName, Alias = pAlias, Image = pImage, CategoryId = pCategoryId, Activated = pActivated, Content = pContent
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

-- Dump completed on 2017-06-08  3:00:58
