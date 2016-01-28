/*
Navicat MySQL Data Transfer

Source Server         : BML
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-28 09:04:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `path_img` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES ('1', 'test', 'test', null, '1', '1', '2016-01-03 13:05:17', '2016-01-10 05:04:44');

-- ----------------------------
-- Table structure for assigned_roles
-- ----------------------------
DROP TABLE IF EXISTS `assigned_roles`;
CREATE TABLE `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of assigned_roles
-- ----------------------------
INSERT INTO `assigned_roles` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'About', 'about', '0', null, '1', '1', '2015-08-26 08:09:34', '2015-10-14 03:09:11');
INSERT INTO `categories` VALUES ('2', 'Contact', 'contact', '0', null, '2', '1', '2015-08-26 09:14:52', '2015-08-26 09:14:52');
INSERT INTO `categories` VALUES ('3', 'Services', 'services', '0', null, '3', '1', '2015-08-26 09:15:10', '2015-08-26 09:15:10');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `map` text NOT NULL,
  `sort` int(11) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', '0123456789', '146 Nguyen Dinh Chieu St., Dist 3, HCMC', 'minhliemphp@gmail.com', '094-123456789', '', '0', '1', '2016-01-27 23:57:36', '2016-01-27 16:57:36');

-- ----------------------------
-- Table structure for customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `customer_contact`;
CREATE TABLE `customer_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `messages` text,
  `xem` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_contact
-- ----------------------------
INSERT INTO `customer_contact` VALUES ('3', 'test', '0123456789', 'sdsa', null, null, '1', '2016-01-27 22:21:16', '2016-01-27 15:21:16');
INSERT INTO `customer_contact` VALUES ('4', 'zxczxc', '0123456789', 'zczx', null, null, '1', '2016-01-27 22:21:37', '2016-01-27 15:21:37');

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `mota` text,
  `image_path` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES ('1', 'Áo sơ mi', 'ao-so-mi', '', '/public/backend/img/image_thumbnail.gif', 'image_thumbnail', '1', '1', '2016-01-21 08:34:40', '2016-01-21 08:34:40');
INSERT INTO `danhmuc` VALUES ('2', 'Áo khoác', 'ao-khoac', '', '/public/backend/img/image_thumbnail.gif', 'image_thumbnail', '1', '2', '2016-01-21 08:34:48', '2016-01-21 08:34:48');
INSERT INTO `danhmuc` VALUES ('3', 'Quần tây', 'quan-tay', '', '/public/backend/img/image_thumbnail.gif', 'image_thumbnail', '1', '3', '2016-01-21 08:35:01', '2016-01-21 08:35:01');
INSERT INTO `danhmuc` VALUES ('4', 'Quần short', 'quan-short', '', '/public/backend/img/image_thumbnail.gif', '/public/backend/img/image_thumbnail.gif', '1', '4', '2016-01-21 15:58:00', '2016-01-21 08:58:00');

-- ----------------------------
-- Table structure for gioithieu
-- ----------------------------
DROP TABLE IF EXISTS `gioithieu`;
CREATE TABLE `gioithieu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gioithieu
-- ----------------------------
INSERT INTO `gioithieu` VALUES ('1', '<p>\r\n	Với r&agrave;ng buộc n&agrave;y th&igrave;, việc người sử dụng v&ocirc; t&igrave;nh hay cố &yacute; ph&aacute; hủy c&aacute;c li&ecirc;n kết sẽ bị ngăn chặn. V&agrave;, người sử dụng cũng kh&ocirc;ng thể nhập v&agrave;o cột kh&oacute;a ngoại một gi&aacute; trị m&agrave; gi&aacute; trị đ&oacute; kh&ocirc;ng xuất hiện ở cột kh&oacute;a ch&iacute;nh m&agrave; kh&oacute;a n&agrave;y trỏ tới (kh&ocirc;ng thể nhập điểm cho một sinh vi&ecirc;n, v&agrave;o table DiemSV, m&agrave; m&atilde; của họ kh&ocirc;ng xuất hiện ở cột MaSV ở table HSSV). &nbsp;</p>\r\n', '1', '2016-01-12 21:11:10', '2016-01-12 14:11:10');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_text` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `path_img` text,
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('12', '', '', 'public/upload/images/index.jpg', '1', null, '4', '1', null, '2016-01-09 05:39:31');
INSERT INTO `images` VALUES ('13', '', '', '/public/upload/images/camera-icon.jpg', '1', null, '2', '1', '2016-01-09 12:43:15', '2016-01-09 05:43:15');
INSERT INTO `images` VALUES ('14', '', '', '/public/upload/images/banner.png', '1', 'test', '5', '1', '2016-01-09 12:42:48', '2016-01-09 05:42:48');

-- ----------------------------
-- Table structure for meta
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `email_nhanthongtin` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meta
-- ----------------------------
INSERT INTO `meta` VALUES ('1', '', '', 'minhliemphp@gmail.com', '0000-00-00 00:00:00', '2015-04-09 15:03:06');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2015_09_15_030227_confide_setup_users_table', '1');
INSERT INTO `migrations` VALUES ('2015_09_15_050006_entrust_setup_tables', '2');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `image_path` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Mr. Armani Jones', 'mr-armani-jones', 'Earum dignissimos saepe odit voluptatum provident. Earum magnam error eum non praesentium. Pariatur incidunt libero voluptate est laudantium rerum. Ipsum veniam ut et voluptatem consequatur necessitatibus cum voluptate.', 'http://lorempixel.com/400/300/?98499', 'minus', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('2', 'Larry Kihn', 'larry-kihn', 'Eum esse officia ut eligendi distinctio odit. Temporibus cum sed totam reprehenderit eligendi. Accusamus animi non veritatis similique qui quasi. Ut voluptatum asperiores sapiente nam et voluptatem et.', 'http://lorempixel.com/400/300/?27846', 'id', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('3', 'Mikel Kautzer', 'mikel-kautzer', 'Ducimus aspernatur qui reprehenderit molestias facilis tempore amet vitae. Molestiae et tenetur non dolorum esse hic voluptas. Beatae voluptatem aut qui officia atque non aliquam.', 'http://lorempixel.com/400/300/?59170', 'est', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('4', 'Otto Rice', 'otto-rice', 'Repellat quis rerum alias voluptatem ut quam molestias. Alias enim aliquid amet quis et dolor non. Voluptas quia aspernatur modi et ut. Temporibus voluptatem iure quam qui ipsam accusamus.', 'http://lorempixel.com/400/300/?52686', 'doloremque', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('5', 'Mariane Kuhic', 'mariane-kuhic', 'Et est doloremque blanditiis molestias eligendi eligendi perspiciatis voluptas. Nam eveniet magni eaque autem placeat iusto nemo. Ut natus repellat ut accusantium. Et modi nobis est.', 'http://lorempixel.com/400/300/?22307', 'saepe', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('6', 'Elissa Koch', 'elissa-koch', 'Eos corrupti ullam totam velit accusantium ducimus sint. Amet est rerum sunt at alias esse quibusdam. Deserunt praesentium ipsam accusantium deleniti et molestiae. Et dignissimos et quis et voluptatem voluptatem non.', 'http://lorempixel.com/400/300/?48846', 'esse', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('7', 'Houston Mitchell', 'houston-mitchell', 'Recusandae voluptatem animi ut sapiente ducimus molestias. Laboriosam sapiente voluptate vero eaque quia saepe quae. Quia modi dolores omnis non inventore et perferendis.', 'http://lorempixel.com/400/300/?23080', 'ad', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('8', 'Richard Mertz', 'richard-mertz', 'Ipsa aut qui est ipsum velit. Voluptatem blanditiis sint porro ut beatae nesciunt nihil laboriosam. Iusto aut cupiditate consequuntur exercitationem aperiam est.', 'http://lorempixel.com/400/300/?84989', 'rerum', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('9', 'Miss Beryl Tremblay', 'miss-beryl-tremblay', 'Perspiciatis nisi repellendus voluptas et omnis. Sint ut inventore nam minus nulla et sit et. Nulla qui qui est distinctio.', 'http://lorempixel.com/400/300/?75616', 'ut', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('10', 'Mathew Hilll', 'mathew-hilll', 'Asperiores illum consequatur et delectus fugit. Dicta nisi voluptatem enim officiis quae cupiditate. Provident et blanditiis quibusdam deserunt rerum expedita.', 'http://lorempixel.com/400/300/?64823', 'praesentium', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('11', 'Dr. Titus Ondricka Jr.', 'dr-titus-ondricka-jr-', 'Maxime neque velit tempore perferendis natus. Consequatur eaque laborum aliquid aliquid doloremque modi. Voluptatem aut nulla est perferendis nostrum praesentium est sit. Distinctio et incidunt sit ea fuga.', 'http://lorempixel.com/400/300/?98765', 'sed', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('12', 'Carmine Bins', 'carmine-bins', 'Non necessitatibus dolore qui consectetur et commodi. Praesentium a est praesentium laudantium eaque impedit pariatur. Non labore enim tempora commodi est dolore.', 'http://lorempixel.com/400/300/?20664', 'et', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('13', 'Dayana Miller', 'dayana-miller', 'Id et vel asperiores aperiam facere quia. Harum nulla aperiam est sit voluptatem sequi. Officiis voluptas quia nesciunt saepe sunt cum.', 'http://lorempixel.com/400/300/?34007', 'dolores', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('14', 'Deontae Effertz', 'deontae-effertz', 'Eius commodi libero quos animi et sed odio. Ut accusantium voluptas ipsam harum nesciunt est.', 'http://lorempixel.com/400/300/?85202', 'aliquam', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('15', 'Dr. Elwyn Mitchell', 'dr-elwyn-mitchell', 'Sint suscipit ullam quo quaerat. Dolorum dolor sint ducimus ut et. Dolorem tempora autem eum in animi. Ea officia atque odio architecto voluptatum est.', 'http://lorempixel.com/400/300/?11299', 'aut', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('16', 'Keenan Dickinson', 'keenan-dickinson', 'Voluptas optio vel corporis veniam officiis error aut. Ad delectus tempore asperiores deleniti qui saepe et. Qui omnis accusamus beatae. Nihil harum id ut saepe sed enim.', 'http://lorempixel.com/400/300/?63036', 'veritatis', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('17', 'Dr. Jermey Weimann', 'dr-jermey-weimann', 'Enim voluptatum id quo non expedita sit odit. Aspernatur et labore natus harum autem voluptatem vitae. Cum voluptatem temporibus dolorem itaque.', 'http://lorempixel.com/400/300/?32613', 'a', '1', null, '2016-01-22 23:35:32', '2016-01-22 16:35:32');
INSERT INTO `news` VALUES ('18', 'Mr. Chester Cormier', 'mr-chester-cormier', 'Aliquam rerum aut et ut. Accusantium in deleniti architecto soluta. Est iusto excepturi vel et possimus. Eos assumenda totam dolor fugit corporis.', 'http://lorempixel.com/400/300/?69722', 'ut', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('19', 'Alaina Spinka', 'alaina-spinka', 'Qui error voluptatem ea voluptas ut error similique. Et ipsum quos qui occaecati. Et aperiam non dolor placeat.', 'http://lorempixel.com/400/300/?63573', 'asperiores', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('20', 'Shaylee Robel I', 'shaylee-robel-i', 'Facere aut repellat quis id aspernatur soluta et. Consequatur neque ullam atque amet voluptatibus ut sed.', 'http://lorempixel.com/400/300/?35443', 'itaque', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('21', 'Roderick Herman', 'roderick-herman', 'Eaque sed sit est veniam omnis. Nihil optio omnis sunt beatae adipisci. Sed sint modi hic ducimus dignissimos voluptatum.', 'http://lorempixel.com/400/300/?55385', 'ut', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('22', 'Paxton Batz', 'paxton-batz', 'Facere autem sit blanditiis illo quis aperiam odio. Id inventore nesciunt eos ducimus nihil. Reiciendis voluptatibus necessitatibus sunt eum sapiente.', 'http://lorempixel.com/400/300/?49468', 'sit', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('23', 'Einar Yundt', 'einar-yundt', 'Sit assumenda tempora minus nobis veritatis debitis. Et molestiae occaecati harum deleniti quia ipsam. Nobis eum in ut quia architecto illo voluptas repellat. Id maiores illo sit neque ut magnam cum.', 'http://lorempixel.com/400/300/?78654', 'vel', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('24', 'Viola Champlin', 'viola-champlin', 'Impedit aliquid beatae et nam id quis. Et vero officia blanditiis nesciunt molestiae natus. Esse deleniti illo et rem.', 'http://lorempixel.com/400/300/?22707', 'ex', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('25', 'Baron Klocko', 'baron-klocko', 'Numquam dolor quia distinctio perferendis. Libero quia dolores omnis voluptatibus est quae. Doloremque porro qui non harum aut dicta et. Alias provident quam commodi incidunt velit non.', 'http://lorempixel.com/400/300/?19160', 'consequatur', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('26', 'Brett Franecki', 'brett-franecki', 'Consectetur magni mollitia nisi. Eos sit dolores tenetur doloremque dolore hic perferendis. Laboriosam aut sed facilis. Quis aut tenetur rerum repellendus.', 'http://lorempixel.com/400/300/?73231', 'ea', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('27', 'Avery Wyman II', 'avery-wyman-ii', 'Nesciunt maiores voluptatem beatae aut. Adipisci eum veniam dicta consequatur autem veritatis. Praesentium quis alias autem reprehenderit consequatur. Consectetur est dolor mollitia omnis nobis doloribus ab.', 'http://lorempixel.com/400/300/?11241', 'molestiae', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('28', 'Joaquin Kautzer', 'joaquin-kautzer', 'Alias eum numquam eaque voluptatum est odit. Est maxime qui distinctio quod et quo impedit. Corporis quidem consequatur molestiae reiciendis esse rem. Nobis tempora ut beatae.', 'http://lorempixel.com/400/300/?73352', 'eos', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('29', 'Prof. Jayson Rodriguez', 'prof-jayson-rodriguez', 'Deleniti est ipsam quae placeat occaecati consequatur ut. Nam porro aperiam quos suscipit omnis. Rerum dicta non pariatur qui in. Error deserunt cupiditate ut laborum ipsa nihil.', 'http://lorempixel.com/400/300/?67515', 'voluptatem', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');
INSERT INTO `news` VALUES ('30', 'Sherwood Renner', 'sherwood-renner', 'Omnis minus facilis ut laboriosam natus odio. Consequuntur molestias quia dignissimos impedit praesentium et quidem. Ad dicta necessitatibus iure tempore quod reprehenderit natus. Rerum vel sequi et consequatur sit recusandae sunt. Beatae ut maiores eius dolore et laboriosam.', 'http://lorempixel.com/400/300/?49207', 'aut', '1', null, '2016-01-22 23:35:33', '2016-01-22 16:35:33');

-- ----------------------------
-- Table structure for password_reminders
-- ----------------------------
DROP TABLE IF EXISTS `password_reminders`;
CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_reminders
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'login', 'login', '2015-09-18 07:34:07', '2015-09-18 07:34:07');
INSERT INTO `permissions` VALUES ('2', 'usermanager', 'usermanager', '2015-09-18 07:34:07', '2015-09-18 07:34:07');

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1', '1');
INSERT INTO `permission_role` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `path_image` varchar(255) DEFAULT NULL,
  `alt_img` varchar(255) DEFAULT NULL,
  `path_thumb` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `cate_name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for post_addition
-- ----------------------------
DROP TABLE IF EXISTS `post_addition`;
CREATE TABLE `post_addition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_addition
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Super Admin', '2015-09-18 07:34:07', '2015-09-18 07:34:07');

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `mota` text,
  `chatlieu` varchar(255) DEFAULT NULL,
  `mausac` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `noibat` tinyint(1) DEFAULT '0',
  `khuyenmai` tinyint(1) DEFAULT '0',
  `solanxem` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `order` int(1) DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `mota` (`mota`),
  FULLTEXT KEY `chatlieu` (`chatlieu`),
  FULLTEXT KEY `style` (`style`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES ('1', 'Mr. Emmet Dach DVM', 'mr-emmet-dach-dvm', 'Autem nulla ab consectetur. Et consectetur et porro reiciendis excepturi deleniti voluptatem. Provident magni earum saepe consequuntur facilis. Ut officia optio soluta autem.', 'Neque quaerat sequi nihil enim maiores.', 'LightGoldenRodYellow', 'Camille11', 'Florida', 'http://lorempixel.com/500/320/?29831', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('2', 'Alison Harvey', 'alison-harvey', 'A et consequatur error consequatur voluptatem reiciendis. Veniam autem quos nulla quia sed in. Doloremque quasi est tempora ut voluptatem ipsum.', 'Voluptates autem libero iste id.', 'Orange', 'oWard', 'New Jersey', 'http://lorempixel.com/500/320/?16496', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('3', 'Prof. Deon Leffler', 'prof-deon-leffler', 'Saepe quidem sint fugiat soluta laudantium autem ad est. Ipsum architecto aut qui tempora impedit omnis. Minus molestiae consequatur voluptatem eum non et fugit ut.', 'Eligendi non quis rerum.', 'Aqua', 'Shanelle.Von', 'Massachusetts', 'http://lorempixel.com/500/320/?80534', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('4', 'Arnoldo D\'Amore', 'arnoldo-d-amore', 'Dolores qui rem dolor autem eum deserunt. Explicabo rem rerum laudantium aut et ea. Aut nam quisquam totam molestias sint nihil possimus. Dolor quos et quam et sapiente harum perferendis rerum.', 'Sapiente quam adipisci assumenda dolorum.', 'Beige', 'Anne.Streich', 'Michigan', 'http://lorempixel.com/500/320/?29326', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('5', 'Ms. Virginie Conn PhD', 'ms-virginie-conn-phd', 'Et aut rerum aut repellendus temporibus laboriosam cum aut. Nulla nesciunt recusandae et nostrum quidem autem numquam. Et dolorum enim ut ipsa dolor accusamus minus. Voluptatem quo et vel totam libero repudiandae autem.', 'Illo quia et quibusdam ad qui eum iusto.', 'Lime', 'zFadel', 'Indiana', 'http://lorempixel.com/500/320/?29702', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('6', 'Deion Braun', 'deion-braun', 'Officiis et vel vitae. Nihil sit eum dolor doloremque ut. Aut magnam id consequatur est quos et omnis.', 'Beatae adipisci aut ut dignissimos aut hic.', 'DarkSlateGray', 'Larkin.Piper', 'Delaware', 'http://lorempixel.com/500/320/?63146', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('7', 'Oda Mueller', 'oda-mueller', '<p>\r\n	Accusantium eum aut quia et sed. Fugit et nam numquam at praesentium rerum non. Nostrum sed iste sapiente sed. Neque eveniet mollitia possimus et.</p>\r\n', 'Et et eos architecto id in minus recusandae.', 'Magenta', 'gBlock', 'Minnesota', 'http://lorempixel.com/500/320/?53489', '?53489', '0', '1', '0', '1', '1', '1', '2016-01-21 15:40:34', '2016-01-21 08:40:34');
INSERT INTO `sanpham` VALUES ('8', 'Maci Pouros', 'maci-pouros', 'Quis molestiae quaerat deserunt sint qui placeat reprehenderit esse. Voluptas nemo officia ex blanditiis praesentium rerum vitae. Delectus quibusdam tempore sit beatae accusamus ut id. Beatae cum enim reprehenderit.', 'Vel consequatur provident aliquam qui molestiae.', 'LightSeaGreen', 'Dorcas.Johns', 'Utah', 'http://lorempixel.com/500/320/?22550', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('9', 'Norma Davis I', 'norma-davis-i', 'Dolores placeat sed facere assumenda saepe sit asperiores. Quo praesentium veniam placeat. Consequatur voluptas ea adipisci minima. Exercitationem sed fugit corporis nulla praesentium.', 'Dolor quia aut assumenda reiciendis id veritatis cum.', 'Coral', 'Tillman.Pfannerstill', 'New Jersey', 'http://lorempixel.com/500/320/?99644', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('10', 'Mrs. Beryl Mante II', 'mrs-beryl-mante-ii', 'Autem reiciendis totam omnis placeat quod. Nihil debitis aliquid voluptatem aut nihil. Voluptas esse error rem labore nostrum.', 'Quidem blanditiis qui explicabo eligendi est dolorem incidunt.', 'DarkSlateBlue', 'Ebert.Domenico', 'Delaware', 'http://lorempixel.com/500/320/?25703', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('11', 'Dr. Eduardo Dare', 'dr-eduardo-dare', 'Dignissimos laboriosam aliquam omnis quia reprehenderit voluptate aut enim. Delectus commodi id dolores. Aspernatur tempore repudiandae quos esse. Culpa aut debitis cumque sint.', 'Quos libero doloremque minima nihil distinctio nemo et.', 'FireBrick', 'kStark', 'New Jersey', 'http://lorempixel.com/500/320/?38798', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('12', 'Miss Kelsie Schmitt MD', 'miss-kelsie-schmitt-md', 'Officia ea facilis provident. Ipsum eum quia tenetur quia eos ipsum. Sit rerum molestiae unde. Aut consequatur labore optio rem. Sint fuga saepe amet aut ut reprehenderit rerum exercitationem.', 'Nulla ut nulla dolor eos molestias rerum.', 'LightGreen', 'qFarrell', 'North Dakota', 'http://lorempixel.com/500/320/?23586', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('13', 'Ryleigh Harris', 'ryleigh-harris', 'Dolor sit reiciendis sapiente nostrum eum veniam in. Fugiat blanditiis optio non fuga officia vel voluptates. Fugiat accusamus in temporibus porro et qui.', 'Qui eos voluptatem explicabo molestiae quae provident tenetur.', 'DarkCyan', 'Kunde.Alden', 'Tennessee', 'http://lorempixel.com/500/320/?43309', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('14', 'Myrtle Moore', 'myrtle-moore', 'Ut consectetur dolorum sapiente cumque iusto odit. Nihil iure corrupti eos doloremque animi qui consequuntur quos. Qui ea sunt ut quia quam earum et ipsa. Nulla rerum molestiae magnam vel rem quos et. Eum ad possimus fuga at voluptatum culpa.', 'Alias sed et assumenda aperiam quo ratione aut.', 'Lime', 'vHeaney', 'Mississippi', 'http://lorempixel.com/500/320/?75803', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('15', 'Sherman Rutherford', 'sherman-rutherford', 'Reprehenderit vero repudiandae nihil aut sed. Suscipit rerum voluptatem reprehenderit beatae veritatis blanditiis.', 'Doloremque ea eaque aspernatur culpa itaque et.', 'LightGoldenRodYellow', 'Leonora.Prohaska', 'Montana', 'http://lorempixel.com/500/320/?54824', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('16', 'Anita Kuhlman V', 'anita-kuhlman-v', 'Reprehenderit ratione repudiandae sit provident laudantium. Sit voluptatibus beatae corporis dolor. Ea sed deleniti sed veritatis excepturi maxime enim illum.', 'Eos amet voluptate nulla molestiae.', 'Thistle', 'bGutmann', 'Florida', 'http://lorempixel.com/500/320/?42498', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('17', 'Gregg Roberts III', 'gregg-roberts-iii', 'Officiis laborum accusamus quia sunt nobis nulla. Ut et animi quia blanditiis. Saepe illo eum provident aut aut ipsam.', 'Facilis aut occaecati nobis nihil adipisci.', 'OliveDrab', 'Merritt49', 'Montana', 'http://lorempixel.com/500/320/?79638', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('18', 'Dr. Lisandro McDermott', 'dr-lisandro-mcdermott', 'Quidem similique est quaerat. Rerum rerum hic sit eveniet. Aperiam ullam qui laudantium tenetur consequatur. Laudantium quos eos nihil a dolorem similique.', 'Laboriosam impedit iusto quam nulla quo ea perspiciatis.', 'Silver', 'Kuhn.Virginie', 'Nebraska', 'http://lorempixel.com/500/320/?98430', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('19', 'Yesenia Simonis', 'yesenia-simonis', 'Delectus officia aut ab illum recusandae. Sequi et quia laudantium molestiae voluptates consequatur natus similique. Pariatur ut dignissimos minus quae cum labore. Quam qui qui pariatur modi eum placeat sit molestias.', 'Vel enim dolorem voluptatibus numquam.', 'NavajoWhite', 'Reynolds.Nathanael', 'District of Columbia', 'http://lorempixel.com/500/320/?95705', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('20', 'Dr. Quinton Runolfsson', 'dr-quinton-runolfsson', 'Libero deserunt vero eaque magni. Eveniet nihil praesentium quasi nobis sapiente nisi assumenda. Officiis facilis perferendis delectus mollitia sed voluptas.', 'Est qui et autem autem tenetur.', 'Teal', 'Brandy86', 'Iowa', 'http://lorempixel.com/500/320/?88518', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('21', 'Dr. Jeffry Jacobs V', 'dr-jeffry-jacobs-v', 'Debitis eius id est magni sit ipsa. Perspiciatis non voluptatem voluptates. Assumenda ut repellat cumque. Quis laborum voluptatum qui dolor ipsa veniam saepe.', 'Minus molestiae impedit dolorem vel necessitatibus earum suscipit.', 'RoyalBlue', 'Treutel.Wilburn', 'Rhode Island', 'http://lorempixel.com/500/320/?25456', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('22', 'Ahmed Von', 'ahmed-von', 'Eveniet minima laudantium fugiat quod harum minima error. Voluptatem omnis qui nesciunt soluta quaerat possimus quidem a. Maxime veritatis quod earum.', 'Est hic asperiores dicta maxime corporis accusantium magni.', 'BurlyWood', 'uHerzog', 'Michigan', 'http://lorempixel.com/500/320/?83480', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('23', 'Prof. Cordie Gislason', 'prof-cordie-gislason', 'Dolor et dolore ducimus laboriosam voluptatem aut quia consequatur. Ullam sit labore harum quaerat ut rerum.', 'Laboriosam explicabo ut ut suscipit ut quo.', 'Crimson', 'eOkuneva', 'Wisconsin', 'http://lorempixel.com/500/320/?50940', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('24', 'Toby D\'Amore Sr.', 'toby-d-amore-sr-', 'Et dolorum sed quos explicabo a tempore aut. Eum error eos illum laudantium. Rerum aut et porro nihil enim qui error. Natus iusto amet veritatis numquam.', 'Omnis sapiente ipsam incidunt natus laborum sit non.', 'DeepSkyBlue', 'Logan.Jerde', 'Oklahoma', 'http://lorempixel.com/500/320/?70626', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('25', 'Maiya Sipes', 'maiya-sipes', 'Perspiciatis libero debitis iusto consequatur. Consequatur doloremque exercitationem magni aut cum qui. Aspernatur sit expedita nihil provident occaecati qui rerum et. Sit vero maxime quo ut sed quod harum.', 'Aut id porro minus accusantium et.', 'MediumVioletRed', 'gWilkinson', 'Oklahoma', 'http://lorempixel.com/500/320/?67879', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('26', 'Dashawn Friesen PhD', 'dashawn-friesen-phd', 'Dolor mollitia nostrum tenetur provident fugiat ex. Ut sed voluptas distinctio minus.', 'Reiciendis velit consequatur vel animi ad cumque at.', 'Orchid', 'June49', 'Louisiana', 'http://lorempixel.com/500/320/?71894', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('27', 'Toy O\'Conner', 'toy-o-conner', 'Quia in ut et vel doloremque dolore. Quasi voluptatibus odit tempora sequi aut magni odit. Ipsum veritatis nam perspiciatis praesentium aut velit deserunt. Id dolorem neque cum aut.', 'Sint molestias facilis aut debitis ipsa consectetur consequatur est.', 'LightSlateGray', 'oHackett', 'Illinois', 'http://lorempixel.com/500/320/?33100', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('28', 'Christa Reilly DDS', 'christa-reilly-dds', 'Debitis et quia deleniti ipsa perspiciatis omnis. Temporibus est debitis ratione sunt. Nesciunt vel vitae quis. Alias non tempore consequuntur reiciendis voluptatem.', 'Cum sint possimus omnis amet voluptas modi.', 'LightCyan', 'Shaniya35', 'Nebraska', 'http://lorempixel.com/500/320/?26976', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('29', 'Milton Blick', 'milton-blick', 'Soluta eum voluptatem hic ut sint voluptatem. Ipsam provident tenetur nihil doloribus qui saepe numquam repellat. Est repellat occaecati sunt et a illo reiciendis. Praesentium rem excepturi velit consequatur sit dolorum. Quo illum suscipit nihil aut reprehenderit est.', 'Omnis fugit dolores quisquam.', 'Coral', 'Toby24', 'Virginia', 'http://lorempixel.com/500/320/?95787', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('30', 'Meta Ankunding', 'meta-ankunding', 'Nostrum ipsum dolor facilis totam illo quam. Sit non totam quis porro in delectus illum. In illum perferendis ea ea est aliquam.', 'Sunt suscipit facere officia dolorem.', 'CadetBlue', 'rLuettgen', 'Wisconsin', 'http://lorempixel.com/500/320/?30169', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('31', 'Simone Renner', 'simone-renner', 'Autem explicabo dolorem eum id est est delectus. Maiores atque quo non aut. Magni voluptatem quo impedit laboriosam.', 'Nobis omnis adipisci nemo qui.', 'Sienna', 'fStehr', 'Arkansas', 'http://lorempixel.com/500/320/?53844', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('32', 'Stacy Bahringer', 'stacy-bahringer', 'Repudiandae iusto sint sequi aperiam eos. Vel soluta praesentium optio unde. Cupiditate illum reiciendis et corporis.', 'Dolorum perferendis optio sed optio perspiciatis sint.', 'Ivory', 'wReichel', 'New Mexico', 'http://lorempixel.com/500/320/?22950', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('33', 'Brenden Pagac', 'brenden-pagac', 'Id at nesciunt est repellat. Animi in libero qui quas sequi inventore laudantium aut. Enim quaerat odio voluptatibus eveniet est.', 'Incidunt inventore eos eos voluptatibus tempore ut at.', 'GoldenRod', 'mBarrows', 'California', 'http://lorempixel.com/500/320/?99013', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('34', 'Krystal Runolfsdottir', 'krystal-runolfsdottir', 'Ut at ut deleniti sint. Aliquam alias non ut voluptatem non porro cum. Ut architecto sapiente quia ipsam perspiciatis. Incidunt sed ullam aut molestiae ut alias iste rerum.', 'Nam est tempora eveniet vel quia provident omnis.', 'Black', 'Thurman.Rempel', 'Nebraska', 'http://lorempixel.com/500/320/?73999', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('35', 'Erick Bernhard', 'erick-bernhard', 'Corporis culpa corrupti praesentium possimus ex quod rerum. Nemo dolores ipsam consequuntur assumenda.', 'Voluptatem aliquam voluptas ipsa occaecati.', 'DarkGoldenRod', 'Greenfelder.Uriah', 'District of Columbia', 'http://lorempixel.com/500/320/?97202', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('36', 'Davon Weissnat', 'davon-weissnat', 'Quaerat consequuntur quisquam officiis voluptas est vero nihil nulla. Nesciunt sapiente voluptatem et natus laudantium. Suscipit velit omnis corporis voluptatem impedit deserunt.', 'Veritatis quibusdam animi porro quia assumenda qui voluptatum.', 'Turquoise', 'Ed.Shanahan', 'Mississippi', 'http://lorempixel.com/500/320/?72343', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('37', 'Brain Stark', 'brain-stark', 'Rerum asperiores error est cumque. Voluptatum et consequatur illo. Ea repellendus voluptate voluptatem fuga. Nam modi aspernatur autem ipsa.', 'Ipsa excepturi quis illum rerum voluptas ab.', 'DodgerBlue', 'Ernestine82', 'Alabama', 'http://lorempixel.com/500/320/?48043', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('38', 'Emilia White', 'emilia-white', 'Saepe doloremque beatae iure sunt consectetur id repudiandae. Qui est nesciunt atque est. Sint consequatur non aut. Occaecati in aut est sit vitae.', 'Cupiditate at corrupti vel.', 'LightSalmon', 'Helga22', 'Massachusetts', 'http://lorempixel.com/500/320/?93960', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:02', '2016-01-23 15:20:02');
INSERT INTO `sanpham` VALUES ('39', 'Antonetta Larson III', 'antonetta-larson-iii', 'Non consequuntur est aperiam non architecto. Suscipit eum distinctio tempora quia et. Debitis et beatae sequi itaque expedita sint. Possimus quas optio laborum eligendi doloribus repudiandae ipsa.', 'Tempora vero doloremque est quo.', 'Magenta', 'Hailey.Cruickshank', 'New Mexico', 'http://lorempixel.com/500/320/?87263', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('40', 'Lyda Kuhic', 'lyda-kuhic', 'Nemo sapiente architecto omnis ratione qui voluptatem odio veniam. Quaerat inventore harum blanditiis quo. Eum voluptas cum quis provident incidunt.', 'Laboriosam quasi rerum modi est quis.', 'Cornsilk', 'Skiles.Pierre', 'Wisconsin', 'http://lorempixel.com/500/320/?14411', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('41', 'Mathias Schaefer', 'mathias-schaefer', 'Illo illo aspernatur explicabo et sed sapiente molestiae. Omnis perspiciatis eaque nam laborum voluptatem. Maiores eaque deleniti dolor velit.', 'Omnis quae possimus sit impedit sit est.', 'Aqua', 'Stiedemann.Macy', 'New Mexico', 'http://lorempixel.com/500/320/?85159', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('42', 'Aurelie Herzog', 'aurelie-herzog', 'Quae maiores aut perferendis repellendus accusantium illum in. Voluptas quis modi dolor labore. Modi laudantium quas est. Cupiditate dolorem id reprehenderit placeat laudantium similique.', 'Consequuntur eos nostrum neque.', 'PaleGreen', 'Justina.Reynolds', 'Virginia', 'http://lorempixel.com/500/320/?67812', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('43', 'Constance Breitenberg', 'constance-breitenberg', 'Cumque similique quas quaerat praesentium ut ut velit. Distinctio voluptas enim facere est corporis. Culpa in explicabo quo provident. Natus quos neque laborum.', 'Qui eum eos qui neque recusandae nihil.', 'MediumVioletRed', 'Felicita34', 'Wisconsin', 'http://lorempixel.com/500/320/?58084', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('44', 'Kevon Lindgren', 'kevon-lindgren', 'Praesentium neque non commodi assumenda consequuntur assumenda id eveniet. Ipsam repellat sequi quas voluptatem voluptatem voluptates eos cum.', 'Odit expedita necessitatibus eum dolores et expedita.', 'Darkorange', 'Donald.Hauck', 'Mississippi', 'http://lorempixel.com/500/320/?88549', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('45', 'Ms. Violette Beer', 'ms-violette-beer', 'Non corporis optio accusantium ut sint laudantium. Voluptas voluptas et voluptatem eligendi cumque dignissimos. Quasi aliquam provident error placeat culpa. Illo praesentium dolor ea reiciendis consectetur optio et.', 'Qui voluptatibus et nostrum est molestiae et sit.', 'Thistle', 'Luciano95', 'Delaware', 'http://lorempixel.com/500/320/?97922', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('46', 'Haskell Stamm IV', 'haskell-stamm-iv', 'Necessitatibus quos beatae adipisci aut facere. Odio ea autem quis id laborum vitae. Eligendi incidunt et sapiente delectus accusantium.', 'Facilis nihil et quia in molestias amet dignissimos.', 'SlateBlue', 'Izaiah.Thiel', 'Utah', 'http://lorempixel.com/500/320/?53098', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('47', 'Prof. Milford Graham', 'prof-milford-graham', 'Sit nobis dolores vitae harum in at consequuntur perferendis. Magnam qui eos iure iste quibusdam repellendus.', 'Labore impedit temporibus nam molestiae.', 'Darkorange', 'Harvey.Hank', 'Virginia', 'http://lorempixel.com/500/320/?42703', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('48', 'Stone Sauer', 'stone-sauer', 'Corrupti nulla sint reiciendis recusandae ut dolor nihil. Debitis ut sunt molestiae ipsum. Soluta nisi est ullam.', 'Aperiam minus consectetur dolor deserunt natus omnis eveniet.', 'MediumSlateBlue', 'Kiera.Ondricka', 'Utah', 'http://lorempixel.com/500/320/?33148', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('49', 'Prof. London Keeling PhD', 'prof-london-keeling-phd', 'Corporis et eum ratione quis sapiente amet qui. Fugit suscipit commodi blanditiis sint. Voluptatem fugit non sed itaque et.', 'Sequi dolore autem modi sunt iusto eaque voluptatum.', 'FireBrick', 'Dach.Leone', 'Minnesota', 'http://lorempixel.com/500/320/?45481', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');
INSERT INTO `sanpham` VALUES ('50', 'Mr. Jefferey Auer Jr.', 'mr-jefferey-auer-jr-', 'Rerum porro voluptatem eligendi dignissimos sint qui numquam. Incidunt debitis libero sint eveniet doloremque qui corporis. Autem quisquam minima totam consequatur aut provident. Soluta impedit soluta corrupti officiis ex ipsum ut dolor.', 'Aspernatur nobis voluptates animi nisi quia nemo maiores.', 'DarkKhaki', 'Koepp.Michel', 'North Carolina', 'http://lorempixel.com/500/320/?34284', null, '0', '0', '0', '1', null, '1', '2016-01-23 22:20:03', '2016-01-23 15:20:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'chris86', 'minhliemphp@gmail.com', '$2y$10$0JnQMV.M08gIQ9YJDCgOeugpuV8rGXUoV12BJ8Vvc3nnHHMYUYSte', '', '', '094e40795ddabfbeb95806d03a5f69af', 'ZKlc8fXHfonEfmPQKcsxVSzwxKWxuN90mKnswtF86ldWsypwRtaudVerf8Wx', '0', '2015-09-15 03:53:37', '2016-01-09 03:22:37');
