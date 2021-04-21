

DROP TABLE IF EXISTS `webtoffee_commentmeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;/*END*/






DROP TABLE IF EXISTS `webtoffee_comments` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;/*END*/






DROP TABLE IF EXISTS `webtoffee_links` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_links VALUES
("1","https://dailypost.wordpress.com/","Get Inspired","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("2","http://longreads.com/","Great Reads","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("3","https://discover.wordpress.com/","Discover New Voices","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("4","https://en.blog.wordpress.com/","WordPress.com Blog","","","","Y","1","0","0000-00-00 00:00:00","","","https://en.blog.wordpress.com/feed/"),
("5","https://en.support.wordpress.com/go-mobile/","Get Mobile","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("6","https://crowdsignal.com/","Get Polling","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("7","https://learn.wordpress.com/","Learn WordPress.com","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("8","https://en.forums.wordpress.com/","Discuss","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("9","https://en.support.wordpress.com/","Get Support","","","","Y","1","0","0000-00-00 00:00:00","","",""),
("10","https://wordpress.com/themes/","Theme Showcase","","","","Y","1","0","0000-00-00 00:00:00","","","");/*END*/




DROP TABLE IF EXISTS `webtoffee_options` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_options VALUES
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("29","rewrite_rules","a:142:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"amp_validated_url/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"amp_validated_url/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"amp_validated_url/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amp_validated_url/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amp_validated_url/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"amp_validated_url/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"amp_validated_url/([^/]+)/embed/?$\";s:50:\"index.php?amp_validated_url=$matches[1]&embed=true\";s:38:\"amp_validated_url/([^/]+)/trackback/?$\";s:44:\"index.php?amp_validated_url=$matches[1]&tb=1\";s:46:\"amp_validated_url/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?amp_validated_url=$matches[1]&paged=$matches[2]\";s:53:\"amp_validated_url/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?amp_validated_url=$matches[1]&cpage=$matches[2]\";s:40:\"amp_validated_url/([^/]+)/amp(/(.*))?/?$\";s:55:\"index.php?amp_validated_url=$matches[1]&amp=$matches[3]\";s:42:\"amp_validated_url/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?amp_validated_url=$matches[1]&page=$matches[2]\";s:34:\"amp_validated_url/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"amp_validated_url/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"amp_validated_url/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amp_validated_url/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amp_validated_url/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"amp_validated_url/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"amp_validation_error/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?amp_validation_error=$matches[1]&feed=$matches[2]\";s:56:\"amp_validation_error/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?amp_validation_error=$matches[1]&feed=$matches[2]\";s:37:\"amp_validation_error/([^/]+)/embed/?$\";s:53:\"index.php?amp_validation_error=$matches[1]&embed=true\";s:49:\"amp_validation_error/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?amp_validation_error=$matches[1]&paged=$matches[2]\";s:31:\"amp_validation_error/([^/]+)/?$\";s:42:\"index.php?amp_validation_error=$matches[1]\";s:45:\"jetpack_migration/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"jetpack_migration/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"jetpack_migration/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"jetpack_migration/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"jetpack_migration/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"jetpack_migration/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"jetpack_migration/([^/]+)/embed/?$\";s:50:\"index.php?jetpack_migration=$matches[1]&embed=true\";s:38:\"jetpack_migration/([^/]+)/trackback/?$\";s:44:\"index.php?jetpack_migration=$matches[1]&tb=1\";s:46:\"jetpack_migration/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?jetpack_migration=$matches[1]&paged=$matches[2]\";s:53:\"jetpack_migration/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?jetpack_migration=$matches[1]&cpage=$matches[2]\";s:40:\"jetpack_migration/([^/]+)/amp(/(.*))?/?$\";s:55:\"index.php?jetpack_migration=$matches[1]&amp=$matches[3]\";s:42:\"jetpack_migration/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?jetpack_migration=$matches[1]&page=$matches[2]\";s:34:\"jetpack_migration/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"jetpack_migration/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"jetpack_migration/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"jetpack_migration/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"jetpack_migration/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"jetpack_migration/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/amp(/(.*))?/?$\";s:96:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&amp=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/amp(/(.*))?/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&amp=$matches[5]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/([0-9]{1,2})/amp(/(.*))?/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&amp=$matches[4]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:25:\"([0-9]{4})/amp(/(.*))?/?$\";s:42:\"index.php?year=$matches[1]&amp=$matches[3]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("33","active_plugins","a:10:{i:0;s:19:\"akismet/akismet.php\";i:1;s:11:\"amp/amp.php\";i:2;s:27:\"coblocks/class-coblocks.php\";i:3;s:39:\"crowdsignal-forms/crowdsignal-forms.php\";i:4;s:46:\"full-site-editing/full-site-editing-plugin.php\";i:5;s:23:\"gutenberg/gutenberg.php\";i:6;s:19:\"jetpack/jetpack.php\";i:7;s:21:\"layout-grid/index.php\";i:8;s:31:\"page-optimize/page-optimize.php\";i:9;s:51:\"wp-migration-duplicator/wp-migration-duplicator.php\";}","yes"),
("48","upload_path","","yes"),
("52","tag_base","","yes"),
("55","upload_url_path","","yes"),
("79","uninstall_plugins","a:1:{s:31:\"page-optimize/page-optimize.php\";s:23:\"page_optimize_uninstall\";}","no"),
("85","finished_splitting_shared_terms","1","yes"),
("87","medium_large_size_w","768","yes"),
("88","medium_large_size_h","0","yes"),
("90","show_comments_cookies_opt_in","1","yes"),
("91","admin_email_lifespan","1634575133","yes"),
("92","disallowed_keys","","no"),
("93","comment_previously_approved","1","yes"),
("94","auto_plugin_theme_update_emails","a:0:{}","no"),
("95","auto_update_core_dev","enabled","yes"),
("96","auto_update_core_minor","enabled","yes"),
("97","auto_update_core_major","unset","yes"),
("98","initial_db_version","49752","yes"),
("99","webtoffee_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("100","fresh_site","1","yes"),
("105","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("113","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("114","nonce_key","301rG n{D{L{<Ct#ii<G|]joLd1r}R-Kqeh[2vRt#U%a!DwXg9DU=thOWx0ivgJ]","no"),
("115","nonce_salt","G[35+%9=NbE3X-sY6.VNoH~~a@b_7ZW(%,ShuI/~NE>dZreEV3p{L4t|ZDPV]~bG","no"),
("116","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("117","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("118","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("119","jetpack_activated","1","yes"),
("120","jetpack_activation_source","a:2:{i:0;s:6:\"wp-cli\";i:1;N;}","yes"),
("121","jetpack_sync_settings_disable","0","yes"),
("122","jetpack_options","a:11:{s:7:\"version\";s:16:\"9.6.1:1619023134\";s:11:\"old_version\";s:16:\"9.6.1:1619023134\";s:11:\"master_user\";i:205217499;s:2:\"id\";s:9:\"192203375\";s:21:\"publicize_connections\";b:0;s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;s:14:\"last_heartbeat\";i:1619023155;s:22:\"image_widget_migration\";b:1;s:24:\"gallery_widget_migration\";b:1;s:24:\"custom_css_4.7_migration\";b:1;}","yes"),
("123","theme_mods_twentytwentyone","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619023135;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}","yes"),
("125","theme_switched","","yes"),
("126","theme_mods_varia","a:1:{s:18:\"nav_menu_locations\";a:0:{}}","yes"),
("127","crowdsignal_forms_admin_notices","[\"core_setup\",\"setup_success\"]","no"),
("129","at_options","a:1:{s:9:\"plan_slug\";s:8:\"business\";}","yes"),
("130","siteurl","http://alicelinlin.wpcomstaging.com/","yes"),
("131","home","http://alicelinlin.wpcomstaging.com/","yes"),
("132","blogname","Site Title","yes"),
("133","blogdescription","","yes"),
("134","users_can_register","0","yes"),
("135","admin_email","alicel@hotmail.com.au","yes"),
("136","start_of_week","1","yes"),
("137","use_balanceTags","0","yes"),
("138","use_smilies","1","yes"),
("139","require_name_email","1","yes"),
("140","comments_notify","1","yes"),
("141","posts_per_rss","10","yes"),
("142","rss_use_excerpt","0","yes"),
("143","default_category","1","yes"),
("144","default_comment_status","open","yes"),
("145","default_ping_status","open","yes"),
("146","default_pingback_flag","1","yes"),
("147","posts_per_page","10","yes"),
("148","date_format","F j, Y","yes"),
("149","time_format","g:i a","yes"),
("150","links_updated_date_format","F j, Y g:i a","yes"),
("151","comment_moderation","0","yes"),
("152","moderation_notify","1","yes"),
("153","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes"),
("154","hack_file","0","yes"),
("155","blog_charset","UTF-8","yes"),
("156","moderation_keys","","yes"),
("157","category_base","","yes"),
("158","ping_sites","http://rpc.pingomatic.com/","yes"),
("159","comment_max_links","2","yes"),
("160","gmt_offset","0","yes"),
("161","default_email_category","1","yes"),
("162","recently_edited","","yes"),
("163","template","varia","yes"),
("164","stylesheet","mayland","yes"),
("167","comment_registration","0","yes"),
("168","html_type","text/html","yes"),
("169","use_trackback","0","yes"),
("170","default_role","subscriber","yes"),
("171","db_version","49752","yes"),
("172","uploads_use_yearmonth_folders","1","yes"),
("173","blog_public","0","yes"),
("174","default_link_category","1356","yes"),
("175","show_on_front","page","yes"),
("176","show_avatars","1","yes"),
("177","avatar_rating","G","yes"),
("178","thumbnail_size_w","150","yes"),
("179","thumbnail_size_h","150","yes"),
("180","thumbnail_crop","1","yes"),
("181","medium_size_w","300","yes"),
("182","medium_size_h","300","yes"),
("183","avatar_default","identicon","yes"),
("184","large_size_w","1024","yes"),
("185","large_size_h","1024","yes"),
("186","image_default_link_type","none","yes");/*END*/
INSERT INTO webtoffee_options VALUES
("187","image_default_size","","yes"),
("188","image_default_align","","yes"),
("189","close_comments_for_old_posts","0","yes"),
("190","close_comments_days_old","14","yes"),
("191","thread_comments","1","yes"),
("192","thread_comments_depth","3","yes"),
("193","page_comments","1","yes"),
("194","comments_per_page","50","yes"),
("195","default_comments_page","newest","yes"),
("196","comment_order","asc","yes"),
("197","sticky_posts","a:0:{}","yes"),
("198","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("199","widget_text","a:0:{}","yes"),
("200","widget_rss","a:0:{}","yes"),
("201","timezone_string","Asia/Seoul","yes"),
("202","page_for_posts","0","yes"),
("203","page_on_front","2","yes"),
("204","default_post_format","0","yes"),
("205","link_manager_enabled","0","yes"),
("206","site_icon","0","yes"),
("207","wp_page_for_privacy_policy","0","yes"),
("208","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("209","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("210","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("211","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("212","sidebars_widgets","a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("213","theme_mods_mayland","a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:1357;s:6:\"social\";i:1358;s:6:\"menu-2\";i:1357;}s:18:\"custom_css_post_id\";i:-1;s:21:\"hide_front_page_title\";b:1;s:11:\"custom_logo\";s:0:\"\";s:16:\"enable_side_menu\";i:1;s:14:\"colors_manager\";a:2:{i:0;b:0;s:6:\"cached\";b:0;}}","yes"),
("214","sharing-services","a:2:{s:7:\"visible\";a:3:{i:0;s:10:\"press-this\";i:1;s:7:\"twitter\";i:2;s:8:\"facebook\";}s:6:\"hidden\";a:0:{}}","yes"),
("215","sharing-options","a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";b:0;s:10:\"open_links\";s:4:\"same\";s:4:\"show\";s:5:\"posts\";s:6:\"custom\";a:0:{}}}","yes"),
("216","cron","a:12:{i:1619026767;a:1:{s:31:\"amp_validated_url_stylesheet_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619027050;a:2:{s:17:\"jetpack_sync_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}s:22:\"jetpack_sync_full_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1619030343;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619030350;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619066343;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619107759;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619107760;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619109543;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619109550;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619109567;a:2:{s:33:\"amp_monitor_css_transient_caching\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:24:\"jp_purge_transients_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619109568;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("217","launch-status","unlaunched","yes"),
("218","WPLANG","en_US","yes"),
("219","wpcom_public_coming_soon","1","yes"),
("220","theme_mods_pique","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619021354;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:0:{}}}}","yes"),
("221","current_theme","Mayland","yes"),
("222","safecss_rev","1","yes"),
("223","site_creation_flow","gutenboarding","yes"),
("224","jetpack_testimonial","0","yes"),
("225","jetpack_fonts","a:2:{s:8:\"migrated\";b:1;s:14:\"selected_fonts\";a:0:{}}","yes"),
("226","jetpack_private_options","a:2:{s:11:\"user_tokens\";a:1:{i:205217499;s:75:\"XHLPTO^g)FjYgEMd3qGGx6l@N0*8R#0h.V1lKEb6MTBlbkKaECfL8yf621423yXlY.205217499\";}s:10:\"blog_token\";s:65:\"G!bZFQpz6@1mMegBze1Wad6L8P!nkYwn.1Qk(iI^n&xV9SF8R0p^xLUbj9Hb%xwux\";}","yes"),
("228","jetpack_active_modules","a:37:{i:0;s:8:\"carousel\";i:1;s:13:\"comment-likes\";i:2;s:8:\"comments\";i:3;s:12:\"contact-form\";i:4;s:9:\"copy-post\";i:5;s:20:\"custom-content-types\";i:6;s:10:\"custom-css\";i:7;s:21:\"enhanced-distribution\";i:8;s:16:\"google-analytics\";i:9;s:19:\"gravatar-hovercards\";i:10;s:15:\"infinite-scroll\";i:11;s:8:\"json-api\";i:12;s:5:\"latex\";i:13;s:11:\"lazy-images\";i:14;s:5:\"likes\";i:15;s:6:\"manage\";i:16;s:9:\"masterbar\";i:17;s:5:\"notes\";i:18;s:6:\"photon\";i:19;s:10:\"photon-cdn\";i:20;s:13:\"post-by-email\";i:21;s:7:\"protect\";i:22;s:9:\"publicize\";i:23;s:6:\"search\";i:24;s:9:\"seo-tools\";i:25;s:10:\"sharedaddy\";i:26;s:10:\"shortcodes\";i:27;s:10:\"shortlinks\";i:28;s:8:\"sitemaps\";i:29;s:3:\"sso\";i:30;s:5:\"stats\";i:31;s:13:\"subscriptions\";i:32;s:13:\"tiled-gallery\";i:33;s:18:\"verification-tools\";i:34;s:10:\"videopress\";i:35;s:17:\"widget-visibility\";i:36;s:7:\"widgets\";}","yes"),
("229","finished_updating_comment_type","1","yes"),
("230","db_upgraded","","yes"),
("231","wpcomsh_upgraded_db","1","yes"),
("232","jetpack_available_modules","a:1:{s:5:\"9.6.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}","yes"),
("233","jetpack_sync_settings_sync_via_cron","1","yes"),
("234","jetpack_sync_settings_max_queue_size","5000","yes"),
("235","jetpack_sync_settings_max_queue_lag","7200","yes"),
("236","jetpack_connection_active_plugins","a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}","yes"),
("238","widget_links","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("239","widget_gravatar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("240","widget_music-player","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("241","widget_jetpack_posts_i_like","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("242","widget_tlkio_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("243","widget_akismet_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("244","widget_wpcom-mailerlite","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("245","widget_blog_subscription","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("246","widget_authors","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("247","widget_wpcom_instagram_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("248","widget_eu_cookie_law_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("249","widget_facebook-likebox","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("250","widget_flickr","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("251","widget_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("252","widget_wpcom-goodreads","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("253","widget_google_translate_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("254","widget_grofile","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("255","widget_internet_defense_league_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("256","widget_widget_mailchimp_subscriber_popup","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("257","widget_milestone_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("258","widget_jetpack_my_community","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("259","widget_rss_links","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("260","widget_jetpack_widget_social_icons","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("261","widget_twitter_timeline","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("262","widget_upcoming_events_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("263","widget_jetpack_display_posts_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("264","widget_wpcom_category_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("266","jetpack_portfolio","0","yes"),
("268","jetpack_sync_settings_dequeue_max_bytes","500000","yes"),
("269","jetpack_sync_settings_upload_max_bytes","600000","yes"),
("270","jetpack_sync_settings_upload_max_rows","500","yes"),
("271","jetpack_sync_settings_sync_wait_time","10","yes"),
("272","jetpack_sync_settings_sync_wait_threshold","10","yes"),
("273","jetpack_sync_settings_enqueue_wait_time","1","yes"),
("274","jetpack_sync_settings_queue_max_writes_sec","100","yes"),
("275","jetpack_sync_settings_post_types_blacklist","a:34:{i:0;s:17:\"jp_sitemap_master\";i:1;s:10:\"jp_sitemap\";i:2;s:16:\"jp_sitemap_index\";i:3;s:14:\"jp_img_sitemap\";i:4;s:20:\"jp_img_sitemap_index\";i:5;s:14:\"jp_vid_sitemap\";i:6;s:20:\"jp_vid_sitemap_index\";i:7;s:6:\"ai_log\";i:8;s:17:\"amp_validated_url\";i:9;s:11:\"ai1ec_event\";i:10;s:9:\"bwg_album\";i:11;s:11:\"bwg_gallery\";i:12;s:19:\"customize_changeset\";i:13;s:12:\"dn_wp_yt_log\";i:14;s:16:\"flamingo_contact\";i:15;s:16:\"flamingo_inbound\";i:16;s:17:\"flamingo_outbound\";i:17;s:4:\"http\";i:18;s:8:\"idx_page\";i:19;s:17:\"jetpack_migration\";i:27;s:11:\"msm_sitemap\";i:28;s:17:\"postman_sent_mail\";i:29;s:10:\"rssap-feed\";i:30;s:15:\"rssmi_feed_item\";i:31;s:16:\"scheduled-action\";i:32;s:20:\"secupress_log_action\";i:33;s:17:\"sg_optimizer_jobs\";i:34;s:6:\"snitch\";i:35;s:19:\"vip-legacy-redirect\";i:36;s:12:\"wp_automatic\";i:37;s:6:\"wp_log\";i:38;s:15:\"wp-rest-api-log\";i:39;s:17:\"wpephpcompat_jobs\";i:40;s:15:\"wprss_feed_item\";}","yes"),
("277","jetpack_sync_settings_taxonomies_blacklist","a:150:{i:0;s:9:\"ancestors\";i:1;s:13:\"archives_link\";i:2;s:13:\"attached_file\";i:3;s:14:\"attached_media\";i:4;s:19:\"attached_media_args\";i:5;s:10:\"attachment\";i:6;s:19:\"available_languages\";i:7;s:6:\"avatar\";i:8;s:20:\"avatar_comment_types\";i:9;s:11:\"avatar_data\";i:10;s:10:\"avatar_url\";i:11;s:12:\"bloginfo_rss\";i:12;s:13:\"blogs_of_user\";i:13;s:13:\"bookmark_link\";i:14;s:9:\"bookmarks\";i:15;s:8:\"calendar\";i:16;s:13:\"canonical_url\";i:17;s:19:\"categories_per_page\";i:18;s:19:\"categories_taxonomy\";i:19;s:13:\"category_form\";i:20;s:20:\"category_form_fields\";i:21;s:17:\"category_form_pre\";i:22;s:7:\"comment\";i:23;s:14:\"comment_author\";i:24;s:20:\"comment_author_email\";i:25;s:17:\"comment_author_IP\";i:26;s:19:\"comment_author_link\";i:27;s:18:\"comment_author_url\";i:28;s:23:\"comment_author_url_link\";i:29;s:12:\"comment_date\";i:30;s:15:\"comment_excerpt\";i:31;s:10:\"comment_ID\";i:32;s:12:\"comment_link\";i:33;s:20:\"comment_misc_actions\";i:34;s:12:\"comment_text\";i:35;s:12:\"comment_time\";i:36;s:12:\"comment_type\";i:37;s:13:\"comments_link\";i:38;s:15:\"comments_number\";i:39;s:21:\"comments_pagenum_link\";i:40;s:11:\"custom_logo\";i:41;s:8:\"date_sql\";i:42;s:22:\"default_comment_status\";i:43;s:16:\"delete_post_link\";i:44;s:18:\"edit_bookmark_link\";i:45;s:17:\"edit_comment_link\";i:46;s:14:\"edit_post_link\";i:47;s:13:\"edit_tag_link\";i:48;s:14:\"edit_term_link\";i:49;s:14:\"edit_user_link\";i:50;s:8:\"enclosed\";i:51;s:15:\"feed_build_date\";i:52;s:13:\"form_advanced\";i:53;s:17:\"form_after_editor\";i:54;s:16:\"form_after_title\";i:55;s:21:\"form_before_permalink\";i:56;s:8:\"form_top\";i:57;s:18:\"handle_product_cat\";i:58;s:16:\"header_image_tag\";i:59;s:16:\"header_video_url\";i:60;s:9:\"image_tag\";i:61;s:15:\"image_tag_class\";i:62;s:12:\"lastpostdate\";i:63;s:16:\"lastpostmodified\";i:64;s:4:\"link\";i:65;s:18:\"link_category_form\";i:66;s:25:\"link_category_form_fields\";i:67;s:22:\"link_category_form_pre\";i:68;s:15:\"main_network_id\";i:69;s:5:\"media\";i:70;s:15:\"media_item_args\";i:71;s:7:\"ms_user\";i:72;s:7:\"network\";i:73;s:12:\"object_terms\";i:74;s:6:\"option\";i:75;s:4:\"page\";i:76;s:9:\"page_form\";i:77;s:15:\"page_of_comment\";i:78;s:8:\"page_uri\";i:79;s:12:\"pagenum_link\";i:80;s:5:\"pages\";i:81;s:6:\"plugin\";i:82;s:4:\"post\";i:83;s:14:\"post_galleries\";i:84;s:12:\"post_gallery\";i:85;s:9:\"post_link\";i:86;s:18:\"post_modified_time\";i:87;s:11:\"post_status\";i:88;s:9:\"post_time\";i:89;s:8:\"postmeta\";i:90;s:14:\"posts_per_page\";i:91;s:11:\"product_cat\";i:92;s:19:\"product_search_form\";i:93;s:11:\"profile_url\";i:94;s:4:\"pung\";i:95;s:9:\"role_list\";i:96;s:16:\"sample_permalink\";i:97;s:21:\"sample_permalink_html\";i:98;s:8:\"schedule\";i:99;s:11:\"search_form\";i:100;s:12:\"search_query\";i:101;s:9:\"shortlink\";i:102;s:4:\"site\";i:103;s:18:\"site_email_content\";i:104;s:13:\"site_icon_url\";i:105;s:11:\"site_option\";i:106;s:13:\"space_allowed\";i:107;s:3:\"tag\";i:108;s:8:\"tag_form\";i:109;s:15:\"tag_form_fields\";i:110;s:12:\"tag_form_pre\";i:111;s:8:\"tag_link\";i:112;s:4:\"tags\";i:113;s:13:\"tags_per_page\";i:114;s:4:\"term\";i:115;s:9:\"term_link\";i:116;s:18:\"term_relationships\";i:117;s:15:\"term_taxonomies\";i:118;s:13:\"term_taxonomy\";i:119;s:5:\"terms\";i:120;s:10:\"terms_args\";i:121;s:14:\"terms_defaults\";i:122;s:12:\"terms_fields\";i:123;s:13:\"terms_orderby\";i:124;s:23:\"the_archive_description\";i:125;s:17:\"the_archive_title\";i:126;s:14:\"the_categories\";i:127;s:8:\"the_date\";i:128;s:11:\"the_excerpt\";i:129;s:8:\"the_guid\";i:130;s:17:\"the_modified_date\";i:131;s:17:\"the_modified_time\";i:132;s:25:\"the_post_type_description\";i:133;s:8:\"the_tags\";i:134;s:9:\"the_terms\";i:135;s:8:\"the_time\";i:136;s:21:\"theme_starter_content\";i:137;s:7:\"to_ping\";i:138;s:4:\"user\";i:139;s:17:\"user_created_user\";i:140;s:9:\"user_form\";i:141;s:12:\"user_profile\";i:142;s:19:\"user_profile_update\";i:143;s:8:\"usermeta\";i:144;s:12:\"usernumposts\";i:145;s:12:\"users_drafts\";i:146;s:7:\"webhook\";i:147;s:6:\"widget\";i:148;s:19:\"woocommerce_archive\";i:149;s:12:\"wp_title_rss\";}","yes"),
("279","jetpack_sync_settings_render_filtered_content","0","yes"),
("280","jetpack_sync_settings_post_meta_whitelist","a:52:{i:0;s:24:\"_feedback_akismet_values\";i:1;s:15:\"_feedback_email\";i:2;s:22:\"_feedback_extra_fields\";i:3;s:21:\"_g_feedback_shortcode\";i:4;s:23:\"_jetpack_post_thumbnail\";i:5;s:25:\"_last_editor_used_jetpack\";i:6;s:18:\"_menu_item_classes\";i:7;s:27:\"_menu_item_menu_item_parent\";i:8;s:17:\"_menu_item_object\";i:9;s:20:\"_menu_item_object_id\";i:10;s:19:\"_menu_item_orphaned\";i:11;s:15:\"_menu_item_type\";i:12;s:14:\"_menu_item_xfn\";i:13;s:24:\"_publicize_facebook_user\";i:14;s:23:\"_publicize_twitter_user\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:27:\"_wp_attachment_backup_sizes\";i:18;s:22:\"_wp_attachment_context\";i:19;s:24:\"_wp_attachment_image_alt\";i:20;s:35:\"_wp_attachment_is_custom_background\";i:21;s:31:\"_wp_attachment_is_custom_header\";i:22;s:23:\"_wp_attachment_metadata\";i:23;s:17:\"_wp_page_template\";i:24;s:30:\"_wp_trash_meta_comments_status\";i:25;s:10:\"_wpas_mess\";i:26;s:19:\"_wpas_is_tweetstorm\";i:27;s:13:\"content_width\";i:28;s:14:\"custom_css_add\";i:29;s:23:\"custom_css_preprocessor\";i:30;s:9:\"enclosure\";i:31;s:9:\"imagedata\";i:32;s:10:\"nova_price\";i:33;s:17:\"publicize_results\";i:34;s:16:\"sharing_disabled\";i:35;s:18:\"switch_like_status\";i:36;s:15:\"videopress_guid\";i:37;s:18:\"vimeo_poster_image\";i:38;s:24:\"advanced_seo_description\";i:39;s:25:\"jetpack_memberships_price\";i:40;s:28:\"jetpack_memberships_currency\";i:41;s:14:\"spay_paypal_id\";i:42;s:11:\"spay_status\";i:43;s:15:\"spay_product_id\";i:44;s:13:\"spay_quantity\";i:45;s:10:\"spay_price\";i:46;s:19:\"spay_customer_email\";i:47;s:13:\"spay_currency\";i:48;s:8:\"spay_cta\";i:49;s:10:\"spay_email\";i:50;s:13:\"spay_multiple\";i:51;s:20:\"spay_formatted_price\";}","yes"),
("282","jetpack_sync_settings_comment_meta_whitelist","a:4:{i:0;s:9:\"hc_avatar\";i:1;s:10:\"hc_post_as\";i:2;s:15:\"hc_wpcom_id_sig\";i:3;s:18:\"hc_foreign_user_id\";}","yes"),
("284","jetpack_sync_settings_max_enqueue_full_sync","100","yes"),
("285","jetpack_sync_settings_max_queue_size_full_sync","1000","yes"),
("286","jetpack_sync_settings_cron_sync_time_limit","240","yes"),
("287","jetpack_sync_settings_known_importers","a:6:{s:16:\"Blogger_Importer\";s:7:\"blogger\";s:13:\"LJ_API_Import\";s:11:\"livejournal\";s:9:\"MT_Import\";s:2:\"mt\";s:10:\"RSS_Import\";s:3:\"rss\";s:20:\"WC_Tax_Rate_Importer\";s:12:\"woo-tax-rate\";s:9:\"WP_Import\";s:9:\"wordpress\";}","yes"),
("288","jetpack_sync_settings_term_relationships_full_sync_item_size","100","yes"),
("289","jetpack_sync_settings_sync_sender_enabled","1","yes"),
("290","jetpack_sync_settings_full_sync_sender_enabled","1","yes"),
("291","jetpack_sync_settings_full_sync_send_duration","9","yes"),
("292","jetpack_sync_settings_full_sync_limits","a:5:{s:5:\"users\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:5:\"terms\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}s:5:\"posts\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:1;}s:8:\"comments\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:18:\"term_relationships\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}}","yes"),
("293","jetpack_sync_settings_checksum_disable","0","yes"),
("294","sharedaddy_disable_resources","0","yes");/*END*/
INSERT INTO webtoffee_options VALUES
("295","gutenberg_version_migration","9.8.0","yes"),
("296","crowdsignal_api_key","44f26806-5be6-d768-8ae1-000063e4e4e3","yes"),
("310","jetpack_constants_sync_checksum","a:20:{s:16:\"EMPTY_TRASH_DAYS\";i:2473281379;s:17:\"WP_POST_REVISIONS\";i:4261170317;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:1973374899;s:14:\"WP_CONTENT_DIR\";i:4025282661;s:9:\"FS_METHOD\";i:3577458903;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:734881840;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:1818540554;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:3994858278;s:11:\"PHP_VERSION\";i:3817528485;s:15:\"WP_MEMORY_LIMIT\";i:1474498405;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1474498405;s:8:\"WP_DEBUG\";i:734881840;}","yes"),
("311","jetpack_sync_https_history_main_network_site_url","a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}","yes"),
("312","jetpack_sync_https_history_site_url","a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}","yes"),
("313","jetpack_sync_https_history_home_url","a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}","yes"),
("318","jetpack_callables_sync_checksum","a:36:{s:18:\"wp_max_upload_size\";i:3201742935;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:4030420679;s:26:\"main_network_site_wpcom_id\";i:516954877;s:8:\"site_url\";i:4030420679;s:8:\"home_url\";i:4030420679;s:28:\"has_file_system_write_access\";i:4261170317;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:2854950463;s:10:\"post_types\";i:1116636200;s:18:\"post_type_features\";i:13245128;s:10:\"shortcodes\";i:985640229;s:27:\"rest_api_allowed_post_types\";i:554231017;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:10:\"wp_version\";i:2736397588;s:11:\"get_plugins\";i:1424924746;s:24:\"get_plugins_action_links\";i:3582731144;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:110763218;s:13:\"site_icon_url\";i:545804802;s:5:\"roles\";i:1426873501;s:8:\"timezone\";i:3143223349;s:13:\"paused_themes\";i:223132457;s:14:\"paused_plugins\";i:223132457;s:13:\"theme_support\";i:345575571;s:23:\"wp_get_environment_type\";i:1138987844;s:16:\"single_user_site\";i:4261170317;s:7:\"updates\";i:2903718415;s:14:\"active_modules\";i:3074255279;s:24:\"available_jetpack_blocks\";i:690809948;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:4261170317;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:4261170317;}","no"),
("319","jpsq_sync_checkout","0:0","no"),
("320","jetpack_plugin_api_action_links","a:4:{s:19:\"akismet/akismet.php\";a:1:{s:8:\"Settings\";s:79:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=akismet-key-config\";}s:39:\"crowdsignal-forms/crowdsignal-forms.php\";a:2:{s:15:\"Getting Started\";s:84:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=crowdsignal-forms-setup\";s:8:\"Settings\";s:87:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=crowdsignal-forms-settings\";}s:19:\"jetpack/jetpack.php\";a:3:{s:7:\"Jetpack\";s:68:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=jetpack\";s:8:\"Settings\";s:78:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=jetpack#/settings\";s:7:\"Support\";s:77:\"https://alicelinlin.wpcomstaging.com/wp-admin/admin.php?page=jetpack-debugger\";}s:31:\"page-optimize/page-optimize.php\";a:1:{s:8:\"Settings\";s:84:\"https://alicelinlin.wpcomstaging.com/wp-admin/options-general.php?page=page-optimize\";}}","yes"),
("321","jp_sync_retry_after_sync","","no"),
("322","jetpack_next_sync_time_sync","1619026770","yes"),
("323","jetpack_next_sync_time_full-sync-enqueue","1619026816","yes"),
("324","crowdsignal_user_code","$P$BmeNFZW2ciZHaaVnTqj9LPZhknXJjQ.","yes"),
("330","recovery_keys","a:0:{}","yes"),
("331","disabled_likes","0","yes"),
("333","gravatar_disable_hovercards","0","yes"),
("335","safecss_add","","yes"),
("336","verification_services_codes","0","yes"),
("338","stats_options","a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";s:9:\"192203375\";s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}","yes"),
("340","safecss_revision_migrated","0","yes"),
("341","safecss","","yes"),
("342","wt_mgdp_admin_modules","a:8:{s:6:\"logger\";i:1;s:6:\"export\";i:1;s:6:\"import\";i:1;s:7:\"backups\";i:1;s:18:\"uninstall-feedback\";i:1;s:3:\"ftp\";i:1;s:11:\"googledrive\";i:1;s:2:\"s3\";i:1;}","yes"),
("344","https_detection_errors","a:0:{}","yes"),
("345","jetpack_updates_sync_checksum","a:2:{s:14:\"update_plugins\";i:2262551309;s:13:\"update_themes\";i:34762399;}","yes"),
("355","jetpack_site_products","a:0:{}","yes"),
("356","jetpack_active_plan","a:9:{s:10:\"product_id\";i:1008;s:12:\"product_slug\";s:15:\"business-bundle\";s:12:\"product_name\";s:22:\"WordPress.com Business\";s:18:\"product_name_short\";s:8:\"Business\";s:7:\"expired\";b:0;s:14:\"billing_period\";s:6:\"Yearly\";s:13:\"user_is_owner\";b:0;s:7:\"is_free\";b:0;s:8:\"features\";a:2:{s:6:\"active\";a:24:{i:0;s:9:\"free-blog\";i:1;s:13:\"custom-domain\";i:2;s:5:\"space\";i:3;s:25:\"no-adverts/no-adverts.php\";i:4;s:13:\"custom-design\";i:5;s:10:\"videopress\";i:6;s:16:\"unlimited_themes\";i:7;s:12:\"live_support\";i:8;s:13:\"private_whois\";i:9;s:14:\"premium-themes\";i:10;s:16:\"google-analytics\";i:11;s:15:\"simple-payments\";i:12;s:8:\"calendly\";i:13;s:9:\"opentable\";i:14;s:14:\"send-a-message\";i:15;s:15:\"whatsapp-button\";i:16;s:15:\"social-previews\";i:17;s:9:\"donations\";i:18;s:10:\"core/video\";i:19;s:10:\"core/cover\";i:20;s:10:\"core/audio\";i:21;s:25:\"premium-content/container\";i:22;s:7:\"support\";i:23;s:15:\"wordads-jetpack\";}s:9:\"available\";a:23:{s:9:\"free-blog\";a:14:{i:0;s:9:\"free_plan\";i:1;s:15:\"personal-bundle\";i:2;s:12:\"value_bundle\";i:3;s:16:\"ecommerce-bundle\";i:4;s:18:\"personal-bundle-2y\";i:5;s:15:\"value_bundle-2y\";i:6;s:18:\"business-bundle-2y\";i:7;s:14:\"blogger-bundle\";i:8;s:17:\"blogger-bundle-2y\";i:9;s:19:\"ecommerce-bundle-2y\";i:10;s:23:\"personal-bundle-monthly\";i:11;s:20:\"value_bundle_monthly\";i:12;s:23:\"business-bundle-monthly\";i:13;s:24:\"ecommerce-bundle-monthly\";}s:5:\"space\";a:14:{i:0;s:9:\"free_plan\";i:1;s:15:\"personal-bundle\";i:2;s:12:\"value_bundle\";i:3;s:16:\"ecommerce-bundle\";i:4;s:18:\"personal-bundle-2y\";i:5;s:15:\"value_bundle-2y\";i:6;s:18:\"business-bundle-2y\";i:7;s:14:\"blogger-bundle\";i:8;s:17:\"blogger-bundle-2y\";i:9;s:19:\"ecommerce-bundle-2y\";i:10;s:23:\"personal-bundle-monthly\";i:11;s:20:\"value_bundle_monthly\";i:12;s:23:\"business-bundle-monthly\";i:13;s:24:\"ecommerce-bundle-monthly\";}s:7:\"support\";a:14:{i:0;s:9:\"free_plan\";i:1;s:15:\"personal-bundle\";i:2;s:12:\"value_bundle\";i:3;s:16:\"ecommerce-bundle\";i:4;s:18:\"personal-bundle-2y\";i:5;s:15:\"value_bundle-2y\";i:6;s:18:\"business-bundle-2y\";i:7;s:14:\"blogger-bundle\";i:8;s:17:\"blogger-bundle-2y\";i:9;s:19:\"ecommerce-bundle-2y\";i:10;s:23:\"personal-bundle-monthly\";i:11;s:20:\"value_bundle_monthly\";i:12;s:23:\"business-bundle-monthly\";i:13;s:24:\"ecommerce-bundle-monthly\";}s:13:\"custom-domain\";a:13:{i:0;s:15:\"personal-bundle\";i:1;s:12:\"value_bundle\";i:2;s:16:\"ecommerce-bundle\";i:3;s:18:\"personal-bundle-2y\";i:4;s:15:\"value_bundle-2y\";i:5;s:18:\"business-bundle-2y\";i:6;s:14:\"blogger-bundle\";i:7;s:17:\"blogger-bundle-2y\";i:8;s:19:\"ecommerce-bundle-2y\";i:9;s:23:\"personal-bundle-monthly\";i:10;s:20:\"value_bundle_monthly\";i:11;s:23:\"business-bundle-monthly\";i:12;s:24:\"ecommerce-bundle-monthly\";}s:9:\"donations\";a:11:{i:0;s:15:\"personal-bundle\";i:1;s:12:\"value_bundle\";i:2;s:16:\"ecommerce-bundle\";i:3;s:18:\"personal-bundle-2y\";i:4;s:15:\"value_bundle-2y\";i:5;s:18:\"business-bundle-2y\";i:6;s:19:\"ecommerce-bundle-2y\";i:7;s:23:\"personal-bundle-monthly\";i:8;s:20:\"value_bundle_monthly\";i:9;s:23:\"business-bundle-monthly\";i:10;s:24:\"ecommerce-bundle-monthly\";}s:10:\"core/audio\";a:11:{i:0;s:15:\"personal-bundle\";i:1;s:12:\"value_bundle\";i:2;s:16:\"ecommerce-bundle\";i:3;s:18:\"personal-bundle-2y\";i:4;s:15:\"value_bundle-2y\";i:5;s:18:\"business-bundle-2y\";i:6;s:19:\"ecommerce-bundle-2y\";i:7;s:23:\"personal-bundle-monthly\";i:8;s:20:\"value_bundle_monthly\";i:9;s:23:\"business-bundle-monthly\";i:10;s:24:\"ecommerce-bundle-monthly\";}s:25:\"premium-content/container\";a:11:{i:0;s:15:\"personal-bundle\";i:1;s:12:\"value_bundle\";i:2;s:16:\"ecommerce-bundle\";i:3;s:18:\"personal-bundle-2y\";i:4;s:15:\"value_bundle-2y\";i:5;s:18:\"business-bundle-2y\";i:6;s:19:\"ecommerce-bundle-2y\";i:7;s:23:\"personal-bundle-monthly\";i:8;s:20:\"value_bundle_monthly\";i:9;s:23:\"business-bundle-monthly\";i:10;s:24:\"ecommerce-bundle-monthly\";}s:25:\"no-adverts/no-adverts.php\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:13:\"custom-design\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:10:\"videopress\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:16:\"unlimited_themes\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:12:\"live_support\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:13:\"private_whois\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:15:\"simple-payments\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:8:\"calendly\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:9:\"opentable\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:14:\"send-a-message\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:15:\"whatsapp-button\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:10:\"core/video\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:10:\"core/cover\";a:8:{i:0;s:12:\"value_bundle\";i:1;s:16:\"ecommerce-bundle\";i:2;s:15:\"value_bundle-2y\";i:3;s:18:\"business-bundle-2y\";i:4;s:19:\"ecommerce-bundle-2y\";i:5;s:20:\"value_bundle_monthly\";i:6;s:23:\"business-bundle-monthly\";i:7;s:24:\"ecommerce-bundle-monthly\";}s:14:\"premium-themes\";a:5:{i:0;s:16:\"ecommerce-bundle\";i:1;s:18:\"business-bundle-2y\";i:2;s:19:\"ecommerce-bundle-2y\";i:3;s:23:\"business-bundle-monthly\";i:4;s:24:\"ecommerce-bundle-monthly\";}s:16:\"google-analytics\";a:5:{i:0;s:16:\"ecommerce-bundle\";i:1;s:18:\"business-bundle-2y\";i:2;s:19:\"ecommerce-bundle-2y\";i:3;s:23:\"business-bundle-monthly\";i:4;s:24:\"ecommerce-bundle-monthly\";}s:15:\"social-previews\";a:5:{i:0;s:16:\"ecommerce-bundle\";i:1;s:18:\"business-bundle-2y\";i:2;s:19:\"ecommerce-bundle-2y\";i:3;s:23:\"business-bundle-monthly\";i:4;s:24:\"ecommerce-bundle-monthly\";}}}}","yes"),
("360","widget_jetpack-search-filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("361","widget_jetpack_simple_payments_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("364","jetpack_nonce_1619023161_mRanWLRlUy","1619023161","no"),
("365","jetpack_nonce_1619023163_P8Z5f3ks6A","1619023163","no"),
("366","jetpack_nonce_1619023163_Eu67ygzSRC","1619023163","no"),
("367","jetpack_nonce_1619023163_bcNypoCCRd","1619023163","no"),
("368","jetpack_nonce_1619023164_B6OjdMlspM","1619023164","no"),
("369","jetpack_protect_error","API Key Required","no"),
("371","recently_activated","a:1:{s:35:\"wpcom-file-shim/wpcom-file-shim.php\";i:1619023167;}","yes"),
("374","amp-options","a:10:{s:13:\"theme_support\";s:12:\"transitional\";s:20:\"supported_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:9:\"analytics\";a:0:{}s:23:\"all_templates_supported\";b:1;s:19:\"supported_templates\";a:1:{i:0;s:11:\"is_singular\";}s:7:\"version\";s:6:\"2.0.11\";s:12:\"reader_theme\";s:6:\"legacy\";s:17:\"plugin_configured\";b:0;s:15:\"mobile_redirect\";b:0;s:18:\"suppressed_plugins\";a:0:{}}","no"),
("376","do_activate","0","yes"),
("378","jetpack_log","a:1:{i:0;a:5:{s:4:\"time\";i:1619023167;s:7:\"user_id\";i:205217499;s:7:\"blog_id\";s:9:\"192203375\";s:4:\"code\";s:24:\"custom_css_4.7_migration\";s:4:\"data\";s:5:\"start\";}}","no"),
("379","trusted_ip_header","","no"),
("382","jetpack_nonce_1619023168_AqHtUmVPch","1619023168","no"),
("383","jetpack_sync_full_status","a:4:{s:7:\"started\";i:1619023168;s:8:\"finished\";i:1619023172;s:8:\"progress\";a:10:{s:9:\"constants\";a:1:{s:8:\"finished\";b:1;}s:9:\"functions\";a:1:{s:8:\"finished\";b:1;}s:7:\"options\";a:1:{s:8:\"finished\";b:1;}s:7:\"updates\";a:1:{s:8:\"finished\";b:1;}s:6:\"themes\";a:1:{s:8:\"finished\";b:1;}s:5:\"users\";a:4:{s:5:\"total\";s:1:\"1\";s:4:\"sent\";i:1;s:8:\"finished\";b:1;s:9:\"last_sent\";s:9:\"205217499\";}s:5:\"terms\";a:4:{s:5:\"total\";s:1:\"4\";s:4:\"sent\";i:4;s:8:\"finished\";b:1;s:9:\"last_sent\";s:1:\"1\";}s:5:\"posts\";a:4:{s:5:\"total\";s:2:\"16\";s:4:\"sent\";i:16;s:8:\"finished\";b:1;s:9:\"last_sent\";s:1:\"2\";}s:8:\"comments\";a:4:{s:5:\"total\";s:1:\"0\";s:4:\"sent\";i:0;s:8:\"finished\";b:1;s:9:\"last_sent\";s:2:\"~0\";}s:18:\"term_relationships\";a:4:{s:5:\"total\";s:2:\"13\";s:4:\"sent\";i:13;s:8:\"finished\";b:1;s:9:\"last_sent\";a:2:{s:9:\"object_id\";s:1:\"1\";s:16:\"term_taxonomy_id\";s:1:\"2\";}}}s:6:\"config\";a:10:{s:9:\"constants\";i:1;s:9:\"functions\";i:1;s:7:\"options\";i:1;s:7:\"updates\";i:1;s:6:\"themes\";i:1;s:5:\"users\";i:1;s:5:\"terms\";i:1;s:5:\"posts\";i:1;s:8:\"comments\";i:1;s:18:\"term_relationships\";i:1;}}","no"),
("384","jp_sync_lock_full_sync","","no"),
("386","jetpack_nonce_1619023169_99c5nINNyv","1619023169","no"),
("387","jetpack_nonce_1619023169_sezvvaznmQ","1619023169","no"),
("388","jetpack_nonce_1619023170_OIJkMZiFQw","1619023170","no"),
("389","jetpack_sync_health_status","a:2:{s:6:\"status\";s:7:\"in_sync\";s:9:\"timestamp\";d:1619023172.198904;}","yes"),
("390","jetpack_nonce_1619023172_1Q1mjXbSiy","1619023173","no"),
("392","jetpack_nonce_1619023176_A22rQnGPOk","1619023176","no"),
("393","jetpack_nonce_1619023179_eZRArZtFUJ","1619023179","no"),
("394","jetpack_nonce_1619023182_ioKZwiuM8b","1619023182","no"),
("396","jetpack_nonce_1619023185_w69x8WGsXN","1619023185","no"),
("397","jetpack_nonce_1619023188_Jg02zTPwLd","1619023188","no"),
("398","jetpack_nonce_1619023191_ZAMppDudYu","1619023191","no"),
("400","jetpack_nonce_1619023194_2NEMUN45d4","1619023194","no"),
("401","jetpack_nonce_1619023197_X0leRexLt9","1619023198","no"),
("402","jetpack_nonce_1619023201_OTjhlzww8d","1619023201","no"),
("403","jetpack_nonce_1619023204_zYuoOBB0Fh","1619023204","no"),
("405","jetpack_nonce_1619023207_CKjeZsTK2o","1619023207","no"),
("407","jetpack_nonce_1619023210_jlE71PPS44","1619023210","no"),
("408","jetpack_nonce_1619023211_0ASd1ZsyHG","1619023211","no"),
("409","jetpack_nonce_1619023212_mprNN90KqZ","1619023212","no"),
("410","jetpack_nonce_1619023212_HM3ZFnw5HB","1619023212","no"),
("411","jetpack_nonce_1619023212_ZLQs4V8mnl","1619023212","no"),
("412","jetpack_nonce_1619023212_qEvrwkljSE","1619023212","no"),
("413","jetpack_nonce_1619023212_dc7WTJhIcs","1619023212","no"),
("417","jetpack_nonce_1619023213_I3Tux8mSlV","1619023213","no"),
("418","jetpack_nonce_1619023216_7ybRn0uTSE","1619023216","no"),
("419","jetpack_nonce_1619023219_yzFVJewir2","1619023219","no"),
("420","jetpack_nonce_1619023223_VlzFkqR9eq","1619023223","no"),
("421","jetpack_nonce_1619023226_xOWsnJXqBX","1619023226","no"),
("422","jetpack_nonce_1619023229_xaNsb60Ezx","1619023229","no"),
("423","jetpack_nonce_1619026593_qcB8naWK97","1619026593","no"),
("424","jetpack_nonce_1619026593_3h8bjy1SCp","1619026593","no"),
("425","jetpack_nonce_1619026593_C9vC4MvRbe","1619026593","no"),
("426","jetpack_nonce_1619026593_IsqExiM9Io","1619026593","no"),
("427","jetpack_nonce_1619026593_xGKghvEtgR","1619026593","no"),
("428","jetpack_nonce_1619026593_ZGn8leKYfL","1619026593","no"),
("429","can_compress_scripts","0","no"),
("433","jetpack_nonce_1619026760_MSBx3RIA4C","1619026760","no"),
("434","jetpack_nonce_1619026760_bLj8c7LKyN","1619026760","no"),
("435","jetpack_nonce_1619026760_1oWmobp8kB","1619026760","no"),
("436","jetpack_nonce_1619026760_FGbWJ2q92S","1619026760","no"),
("439","jetpack_nonce_1619026760_zRiXAllOga","1619026760","no"),
("440","post_by_email_address205217499","NULL","yes"),
("441","monitor_receive_notifications","1","yes"),
("443","jetpack_nonce_1619026808_hegZ6b8xFf","1619026808","no");/*END*/




DROP TABLE IF EXISTS `webtoffee_postmeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_postmeta VALUES
("3","2","sharing_disabled","a:1:{i:0;N;}"),
("4","2","switch_like_status","a:1:{i:0;N;}"),
("5","2","_starter_page_template",""),
("7","2","_publicize_pending","1"),
("8","4","_publicize_pending","1"),
("9","4","_menu_item_type","post_type"),
("10","4","_menu_item_menu_item_parent","0"),
("11","4","_menu_item_object_id","2"),
("12","4","_menu_item_object","page"),
("13","4","_menu_item_target",""),
("14","4","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("15","4","_menu_item_xfn",""),
("16","4","_menu_item_url",""),
("17","4","_menu_item_content",""),
("18","5","_publicize_pending","1"),
("19","5","_menu_item_type","custom"),
("20","5","_menu_item_menu_item_parent","0"),
("21","5","_menu_item_object_id","5"),
("22","5","_menu_item_object","custom"),
("23","5","_menu_item_target",""),
("24","5","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("25","5","_menu_item_xfn",""),
("26","5","_menu_item_url","http://instagram.com"),
("27","5","_menu_item_content",""),
("28","6","_publicize_pending","1"),
("29","6","_menu_item_type","custom"),
("30","6","_menu_item_menu_item_parent","0"),
("31","6","_menu_item_object_id","6"),
("32","6","_menu_item_object","custom"),
("33","6","_menu_item_target",""),
("34","6","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("35","6","_menu_item_xfn",""),
("36","6","_menu_item_url","http://twitter.com"),
("37","6","_menu_item_content",""),
("39","7","_wp_attached_file","2021/04/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg"),
("40","7","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1448;s:6:\"height\";i:2049;s:4:\"file\";s:55:\"2021/04/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:159592;}"),
("41","8","_wp_attached_file","2021/04/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg"),
("42","8","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:2049;s:4:\"file\";s:57:\"2021/04/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:213563;}"),
("43","2","_elasticsearch_indexed_on","2021-04-21 16:04:14"),
("44","9","_wp_attached_file","2021/04/steve-long-k53cu6aycz4-unsplash-minified-2.jpg"),
("45","9","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1368;s:6:\"height\";i:2048;s:4:\"file\";s:54:\"2021/04/steve-long-k53cu6aycz4-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:167696;}"),
("46","4","_elasticsearch_indexed_on","2021-04-21 16:09:16"),
("47","10","_wp_attached_file","2021/04/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg"),
("48","10","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:2049;s:4:\"file\";s:55:\"2021/04/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:86725;}"),
("49","5","_elasticsearch_indexed_on","2021-04-21 16:09:16"),
("50","11","_wp_attached_file","2021/04/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg"),
("51","6","_elasticsearch_indexed_on","2021-04-21 16:09:16"),
("52","11","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1364;s:6:\"height\";i:2047;s:4:\"file\";s:57:\"2021/04/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:270634;}"),
("53","12","_wp_attached_file","2021/04/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg"),
("54","12","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1368;s:6:\"height\";i:2049;s:4:\"file\";s:55:\"2021/04/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:156460;}"),
("55","13","_wp_attached_file","2021/04/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg"),
("56","13","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1108;s:4:\"file\";s:58:\"2021/04/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:134379;}"),
("57","14","_wp_attached_file","2021/04/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg"),
("58","14","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:58:\"2021/04/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:91828;}"),
("59","15","_wp_attached_file","2021/04/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg"),
("60","15","_wp_attachment_metadata","a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:54:\"2021/04/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:8:\"filesize\";i:186247;}"),
("61","2","_edit_lock","1619022414:205217499"),
("62","2","_last_editor_used_jetpack","block-editor");/*END*/




DROP TABLE IF EXISTS `webtoffee_posts` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_posts VALUES
("2","205217499","2021-04-21 16:04:14","2021-04-21 16:04:14","<!-- wp:paragraph -->
<p>this is chatbots</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>what are you doing</p>
<!-- /wp:paragraph -->

<!-- wp:group {\"align\":\"full\",\"backgroundColor\":\"background\"} -->
<div class=\"wp-block-group alignfull has-background-background-color has-background\"><!-- wp:coblocks/gallery-masonry {\"align\":\"full\",\"gutter\":30,\"lightbox\":true,\"gridSize\":\"lrg\"} -->
<div class=\"wp-block-coblocks-gallery-masonry alignfull\"><div class=\"coblocks-gallery has-caption-style-dark has-gutter has-lightbox\"><ul class=\"has-grid-lrg has-gutter-30 has-gutter-mobile-15\"><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg?w=683\" alt=\"\" data-id=\"58\" class=\"wp-image-58\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"51\" class=\"wp-image-51\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg?w=682\" alt=\"\" data-id=\"55\" class=\"wp-image-55\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg?w=684\" alt=\"\" data-id=\"54\" class=\"wp-image-54\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"52\" class=\"wp-image-52\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg?w=750\" alt=\"\" data-id=\"53\" class=\"wp-image-53\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/steve-long-k53cu6aycz4-unsplash-minified-2.jpg?w=684\" alt=\"\" data-id=\"57\" class=\"wp-image-57\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg?w=683\" alt=\"\" data-id=\"56\" class=\"wp-image-56\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg?w=724\" alt=\"\" data-id=\"59\" class=\"wp-image-59\" /></figure></li></ul></div></div>
<!-- /wp:coblocks/gallery-masonry --></div>
<!-- /wp:group -->","helllo my name is alice","","publish","closed","closed","","home","","","2021-04-22 01:27:21","2021-04-21 16:27:21","","0","https://alicelinlin.wpcomstaging.com/?page_id=2","0","page","","0"),
("3","205217499","2021-04-21 16:09:14","2021-04-21 16:09:14","<!-- wp:group {\"align\":\"full\",\"backgroundColor\":\"background\"} -->
<div class=\"wp-block-group alignfull has-background-background-color has-background\"><div class=\"wp-block-group__inner-container\"><!-- wp:coblocks/gallery-masonry {\"align\":\"full\",\"gutter\":30,\"lightbox\":true,\"gridSize\":\"lrg\"} -->
<div class=\"wp-block-coblocks-gallery-masonry alignfull\"><div class=\"coblocks-gallery has-caption-style-dark has-gutter has-lightbox\"><ul class=\"has-grid-lrg has-gutter-30 has-gutter-mobile-15\"><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg?w=683\" alt=\"\" data-id=\"58\" class=\"wp-image-58\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"51\" class=\"wp-image-51\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg?w=682\" alt=\"\" data-id=\"55\" class=\"wp-image-55\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg?w=684\" alt=\"\" data-id=\"54\" class=\"wp-image-54\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"52\" class=\"wp-image-52\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg?w=750\" alt=\"\" data-id=\"53\" class=\"wp-image-53\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/steve-long-k53cu6aycz4-unsplash-minified-2.jpg?w=684\" alt=\"\" data-id=\"57\" class=\"wp-image-57\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg?w=683\" alt=\"\" data-id=\"56\" class=\"wp-image-56\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg?w=724\" alt=\"\" data-id=\"59\" class=\"wp-image-59\" /></figure></li></ul></div></div>
<!-- /wp:coblocks/gallery-masonry --></div></div>
<!-- /wp:group -->","Home","","inherit","closed","closed","","2-revision-v1","","","2021-04-21 16:09:14","2021-04-21 16:09:14","","2","https://alicelinlin.wpcomstaging.com/?p=3","0","revision","","0"),
("4","205217499","2021-04-21 16:09:15","2021-04-21 16:09:15"," ","","","publish","closed","closed","","4","","","2021-04-21 16:09:15","2021-04-21 16:09:15","","0","https://alicelinlin.wpcomstaging.com/2021/04/21/4/","1","nav_menu_item","","0"),
("5","205217499","2021-04-21 16:09:15","2021-04-21 16:09:15","","Instagram","","publish","closed","closed","","instagram","","","2021-04-21 16:09:15","2021-04-21 16:09:15","","0","https://alicelinlin.wpcomstaging.com/2021/04/21/instagram/","1","nav_menu_item","","0"),
("6","205217499","2021-04-21 16:09:15","2021-04-21 16:09:15","","Twitter","","publish","closed","closed","","twitter","","","2021-04-21 16:09:15","2021-04-21 16:09:15","","0","https://alicelinlin.wpcomstaging.com/2021/04/21/twitter/","2","nav_menu_item","","0"),
("7","205217499","2021-04-22 01:09:15","2021-04-21 16:09:15","","Placeholder Image","","inherit","open","closed","","placeholder-image","","","2021-04-22 01:09:15","2021-04-21 16:09:15","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("8","205217499","2021-04-22 01:09:16","2021-04-21 16:09:16","","Placeholder Image","","inherit","open","closed","","placeholder-image-2","","","2021-04-22 01:09:16","2021-04-21 16:09:16","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg","0","attachment","image/jpeg","0"),
("9","205217499","2021-04-22 01:09:16","2021-04-21 16:09:16","","Placeholder Image","","inherit","open","closed","","placeholder-image-3","","","2021-04-22 01:09:16","2021-04-21 16:09:16","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/steve-long-k53cu6aycz4-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("10","205217499","2021-04-22 01:09:16","2021-04-21 16:09:16","","Placeholder Image","","inherit","open","closed","","placeholder-image-4","","","2021-04-22 01:09:16","2021-04-21 16:09:16","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("11","205217499","2021-04-22 01:09:16","2021-04-21 16:09:16","","Placeholder Image","","inherit","open","closed","","placeholder-image-5","","","2021-04-22 01:09:16","2021-04-21 16:09:16","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("12","205217499","2021-04-22 01:09:16","2021-04-21 16:09:16","","Placeholder Image","","inherit","open","closed","","placeholder-image-6","","","2021-04-22 01:09:16","2021-04-21 16:09:16","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg","0","attachment","image/jpeg","0"),
("13","205217499","2021-04-22 01:09:17","2021-04-21 16:09:17","","Placeholder Image","","inherit","open","closed","","placeholder-image-7","","","2021-04-22 01:09:17","2021-04-21 16:09:17","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg","0","attachment","image/jpeg","0"),
("14","205217499","2021-04-22 01:09:17","2021-04-21 16:09:17","","Placeholder Image","","inherit","open","closed","","placeholder-image-8","","","2021-04-22 01:09:17","2021-04-21 16:09:17","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("15","205217499","2021-04-22 01:09:17","2021-04-21 16:09:17","","Placeholder Image","","inherit","open","closed","","placeholder-image-9","","","2021-04-22 01:09:17","2021-04-21 16:09:17","","0","http://alicelinlin.wpcomstaging.com/wp-content/uploads/2021/04/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg","0","attachment","image/jpeg","0"),
("16","205217499","2021-04-22 01:27:21","2021-04-21 16:27:21","<!-- wp:paragraph -->
<p>this is chatbots</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>what are you doing</p>
<!-- /wp:paragraph -->

<!-- wp:group {\"align\":\"full\",\"backgroundColor\":\"background\"} -->
<div class=\"wp-block-group alignfull has-background-background-color has-background\"><!-- wp:coblocks/gallery-masonry {\"align\":\"full\",\"gutter\":30,\"lightbox\":true,\"gridSize\":\"lrg\"} -->
<div class=\"wp-block-coblocks-gallery-masonry alignfull\"><div class=\"coblocks-gallery has-caption-style-dark has-gutter has-lightbox\"><ul class=\"has-grid-lrg has-gutter-30 has-gutter-mobile-15\"><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yannes-kiefer-vzfsq4tqthy-unsplash-minified-3.jpg?w=683\" alt=\"\" data-id=\"58\" class=\"wp-image-58\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/eddy-klaus-bhnxfaencti-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"51\" class=\"wp-image-51\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/paola-aguilar-lkqhgsvzfsk-unsplash-minified-2.jpg?w=682\" alt=\"\" data-id=\"55\" class=\"wp-image-55\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/nino-ubezio-2580l2jw4qk-unsplash-minified-3.jpg?w=684\" alt=\"\" data-id=\"54\" class=\"wp-image-54\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/griffin-taylor-fwzg7xfav-w-unsplash-minified-2.jpg?w=750\" alt=\"\" data-id=\"52\" class=\"wp-image-52\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/jeison-higuita-80meoxgb0n0-unsplash-minified-3.jpg?w=750\" alt=\"\" data-id=\"53\" class=\"wp-image-53\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/steve-long-k53cu6aycz4-unsplash-minified-2.jpg?w=684\" alt=\"\" data-id=\"57\" class=\"wp-image-57\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/rene-bohmer-1odk5-rmata-unsplash-minified-2.jpg?w=683\" alt=\"\" data-id=\"56\" class=\"wp-image-56\" /></figure></li><li class=\"coblocks-gallery--item\"><figure class=\"coblocks-gallery--figure\"><img src=\"https://maylandstarter.files.wordpress.com/2020/06/yoshua-giri-65bbd4hlzgk-unsplash-minified-2.jpg?w=724\" alt=\"\" data-id=\"59\" class=\"wp-image-59\" /></figure></li></ul></div></div>
<!-- /wp:coblocks/gallery-masonry --></div>
<!-- /wp:group -->","helllo my name is alice","","inherit","closed","closed","","2-revision-v1","","","2021-04-22 01:27:21","2021-04-21 16:27:21","","2","https://alicelinlin.wpcomstaging.com/?p=16","0","revision","","0"),
("17","205217499","2021-04-21 16:39:27","0000-00-00 00:00:00","","widget_image","","draft","closed","closed","","","","","2021-04-21 16:39:27","0000-00-00 00:00:00","a:1:{s:12:\"_multiwidget\";i:1;}","0","https://alicelinlin.wpcomstaging.com/?post_type=jetpack_migration&p=17","0","jetpack_migration","","0"),
("18","205217499","2021-04-21 16:39:27","0000-00-00 00:00:00","","sidebars_widgets","","draft","closed","closed","","","","","2021-04-21 16:39:27","0000-00-00 00:00:00","a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}","0","https://alicelinlin.wpcomstaging.com/?post_type=jetpack_migration&p=18","0","jetpack_migration","","0"),
("19","205217499","2021-04-22 01:39:28","0000-00-00 00:00:00","","Auto Draft","","auto-draft","open","open","","","","","2021-04-22 01:39:28","0000-00-00 00:00:00","","0","https://alicelinlin.wpcomstaging.com/?p=19","0","post","","0");/*END*/




DROP TABLE IF EXISTS `webtoffee_term_relationships` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_term_relationships VALUES
("1","2","0"),
("2","2","0"),
("3","2","0"),
("4","2","0"),
("4","3","0"),
("5","2","0"),
("5","4","0"),
("6","2","0"),
("6","4","0"),
("7","2","0"),
("8","2","0"),
("9","2","0"),
("10","2","0");/*END*/




DROP TABLE IF EXISTS `webtoffee_term_taxonomy` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_term_taxonomy VALUES
("1","1","category","","0","0"),
("2","1356","link_category","","0","7"),
("3","1357","nav_menu","","0","1"),
("4","1358","nav_menu","","0","2");/*END*/




DROP TABLE IF EXISTS `webtoffee_termmeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;/*END*/






DROP TABLE IF EXISTS `webtoffee_terms` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1359 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_terms VALUES
("1","Uncategorized","uncategorized","0"),
("1356","Blogroll","blogroll","0"),
("1357","Primary","primary","0"),
("1358","Social Links","social-links","0");/*END*/




DROP TABLE IF EXISTS `webtoffee_usermeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_usermeta VALUES
("16","205217499","nickname","alicelinlin"),
("17","205217499","rich_editing","true"),
("18","205217499","comment_shortcuts","false"),
("19","205217499","admin_color","fresh"),
("20","205217499","show_admin_bar_front","true"),
("21","205217499","webtoffee_capabilities","a:1:{s:13:\"administrator\";b:1;}"),
("22","205217499","webtoffee_user_level","10"),
("23","205217499","webtoffee_user-settings","mfold=o"),
("24","205217499","webtoffee_user-settings-time","1619026593"),
("25","205217499","wp_admin_color","sakura"),
("26","205217499","wp_wpcom_is_nav_unification_enabled","1"),
("27","205217499","wp_wpcom_site_count","1"),
("28","205217499","wp_jetpack_wpcom_is_rtl",""),
("29","205217499","wp_jetpack_admin_menu_link_destination",""),
("30","205217499","wpcom_user_id","205217499"),
("31","205217499","wpcom_user_data","O:8:\"stdClass\":10:{s:2:\"ID\";i:205217499;s:5:\"login\";s:11:\"alicelinlin\";s:5:\"email\";s:21:\"alicel@hotmail.com.au\";s:3:\"url\";s:32:\"http://alicelinlin.wordpress.com\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:12:\"display_name\";s:11:\"alicelinlin\";s:11:\"description\";s:0:\"\";s:16:\"two_step_enabled\";b:0;s:16:\"external_user_id\";i:205217499;}"),
("32","205217499","session_tokens","a:6:{s:64:\"b166ee3f268fc3feecbf7ab32441a857ca01826d1fc7d692e1883873fd05cba3\";a:4:{s:10:\"expiration\";i:1650559166;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023166;}s:64:\"3ca4c2cecce03f9f3de54c12f55b3080a9444c7551a8c01cf774dc16485cd668\";a:4:{s:10:\"expiration\";i:1650559169;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023169;}s:64:\"9d05257b4f628af9c890efedf14bdd5169ec9dd68128b5fc7510458d665a83d8\";a:4:{s:10:\"expiration\";i:1650559174;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023174;}s:64:\"c1df5d8eb6ddeeb303335cb343688bcb241d57b478c923d4720183f5750c7f95\";a:4:{s:10:\"expiration\";i:1650559182;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023182;}s:64:\"d73194ea7204645fc7dfa2ce1cf9f77e15648365cfb11e683494cc4dad11f5cf\";a:4:{s:10:\"expiration\";i:1650559193;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023193;}s:64:\"644f8cd9745cfda984aed9ec3017d228f4bb47391953dd41a747579df6256362\";a:4:{s:10:\"expiration\";i:1650559207;s:2:\"ip\";s:14:\"107.181.166.52\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619023207;}}"),
("33","205217499","jetpack_tracks_wpcom_id","205217499"),
("34","205217499","webtoffee_dashboard_quick_press_last_post_id","19");/*END*/




DROP TABLE IF EXISTS `webtoffee_users` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=205217500 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_users VALUES
("205217499","alicelinlin","$P$BZ7nFpzZxcRlbOjDK1kvmbybukGhDg0","alicelinlin","alicel@hotmail.com.au","http://alicelinlin.wordpress.com","2021-04-21 14:58:39","","0","alicelinlin");/*END*/




DROP TABLE IF EXISTS `webtoffee_wt_mgdp_ftp` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_wt_mgdp_ftp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` int(11) NOT NULL DEFAULT 21,
  `export_path` varchar(255) NOT NULL,
  `import_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_wtmgdp_log` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `149583637`
--




CREATE TABLE `webtoffee_wtmgdp_log` (
  `id_wtmgdp_log` int(11) NOT NULL AUTO_INCREMENT,
  `log_name` varchar(200) NOT NULL,
  `log_data` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `log_type` varchar(200) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_wtmgdp_log`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/*END*/


INSERT INTO webtoffee_wtmgdp_log VALUES
("1","2021-04-21 05:40:27 PM","{\"tables\":[\"wp_commentmeta\",\"wp_comments\",\"wp_links\",\"wp_options\",\"wp_postmeta\",\"wp_posts\",\"wp_term_relationships\",\"wp_term_taxonomy\",\"wp_termmeta\",\"wp_terms\",\"wp_usermeta\",\"wp_users\",\"wp_wt_mgdp_ftp\",\"wp_wtmgdp_log\"],\"files\":[\"advanced-cache.php\",\"index.php\",\"object-cache.php\"],\"dirs\":[\"migrator_database\",\"mu-plugins\",\"plugins\",\"themes\",\"upgrade\",\"uploads\"],\"find\":[\"\",\"webtoffee_capabilities\",\"webtoffee_user_level\",\"webtoffee_user-settings\",\"webtoffee_user-settings-time\",\"webtoffee_dashboard_quick_press_last_post_id\",\"webtoffee_user_roles\"],\"replace\":[\"\",\"webtoffee_capabilities\",\"webtoffee_user_level\",\"webtoffee_user-settings\",\"webtoffee_user-settings-time\",\"webtoffee_dashboard_quick_press_last_post_id\",\"webtoffee_user_roles\"],\"backup_file\":\"2021-04-21-05-40-27pm.zip\"}","2","export","1619026827","1619026827");/*END*/


