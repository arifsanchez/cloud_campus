/*
 Navicat Premium Data Transfer

 Source Server         : LocalHost
 Source Server Type    : MySQL
 Source Server Version : 50529
 Source Host           : localhost
 Source Database       : cloud_campus

 Target Server Type    : MySQL
 Target Server Version : 50529
 File Encoding         : utf-8

 Date: 07/20/2013 18:19:06 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `contents`
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`page_name` text DEFAULT NULL,
	`url_name` text DEFAULT NULL,
	`page_content` text DEFAULT NULL,
	`page_title` text DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=3 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `contents`
-- ----------------------------
BEGIN;
INSERT INTO `contents` VALUES ('1', 'About Cloud Campus', 'tentang_cloud_campus', '<p><u><strong>Why Cloud Campus ?</strong></u></p>\r\n\r\n<p>With students and faculty now accessing applications in the cloud, IT departments should consider the merits of federating, centralizing--and even outsourcing--identity management.</p>\r\n\r\n<p>The rewards? <strong>Greater security</strong>, <strong>convenience</strong>, and <strong>lower operating costs</strong>.</p>\r\n\r\n<p><u><strong>Features at a glance</strong></u></p>\r\n\r\n<ul>\r\n	<li>Online application or application download</li>\r\n	<li>Criteria and cut off marks setting</li>\r\n	<li>Application short listing</li>\r\n	<li>Interview scheduling &amp; alerting</li>\r\n	<li>Result entry and publishing</li>\r\n	<li>Exhaustive student search and report generation</li>\r\n	<li>Quick/detailed registration</li>\r\n	<li>Roll number, university number, admission number settings</li>\r\n	<li>Generation and issue of student ID card on input of student ID</li>\r\n	<li>Paperless admission with reduced manpower</li>\r\n	<li>Centralized data handling</li>\r\n	<li>Reducing time for activities</li>\r\n	<li>Reach to geographically scattered students</li>\r\n	<li>Unification of the entire process is enabled through usage of a central database.</li>\r\n	<li>Registration and Login System accessible to students</li>\r\n	<li>Generate SMS alerts regarding interview or admission.</li>\r\n	<li>Easy data entry to collect data for inquiries and applicants.</li>\r\n	<li>Customizable checklists to track all requirements for each grade level.</li>\r\n	<li>Automated mailing process for follow-up letters, and decisions.</li>\r\n	<li>Extensive reporting and analysis to give you the details of enrollment.</li>\r\n	<li>Automated mailing process for follow-up letters, and decisions.</li>\r\n	<li>Extensive reporting and analysis to give you the details of enrollment.</li>\r\n</ul>\r\n', 'Cloud Campus', '2013-07-17 02:00:00', '2013-07-17 02:05:46'), ('2', 'Features Overview', 'features_overview', '<p>CloudCampus provides multi devices and user-friendly dashboards with login access to all the teachers, non-teaching staff, students, parents and management body of your institution. Features available in CloudCampus takes care of all the processes in your institution, right from admission of new students to generating studies transcript certificate, when the student completes the studies.</p>\r\n\r\n<p>CloudCampus has modules to manage Timetable, Attendance, Examinations, Grades, Campus News, Hostel, Library, Transportation, School Calendar, Events and many more. Adding to that , our finance module helps you to plan and allot different fee structure to students that even notify students for outstanding payment.With our robust architechture, you can also integrate it with external communication tools like social network, email and sms.</p>\r\n\r\n<p>To know more <a href=\"/contactUs\">contact sales</a> for demo arrangement.</p>\r\n', 'Features Overview', '2013-07-17 17:32:08', '2013-07-17 17:44:09');
COMMIT;

-- ----------------------------
--  Table structure for `login_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `login_tokens`;
CREATE TABLE `login_tokens` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`token` char(32) NOT NULL,
	`duration` varchar(32) NOT NULL,
	`used` tinyint(1) NOT NULL DEFAULT '0',
	`created` datetime NOT NULL,
	`expires` datetime NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=8 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `login_tokens`
-- ----------------------------
BEGIN;
INSERT INTO `login_tokens` VALUES ('7', '1', '03cf5e48d78f8c0b4a21686e35d94712', '2 weeks', '0', '2013-07-19 23:48:41', '2013-08-02 23:48:41');
COMMIT;

-- ----------------------------
--  Table structure for `tmp_emails`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_emails`;
CREATE TABLE `tmp_emails` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`email` varchar(256) DEFAULT NULL,
	`code` varchar(50) DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_activities`
-- ----------------------------
DROP TABLE IF EXISTS `user_activities`;
CREATE TABLE `user_activities` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`useragent` varchar(256) DEFAULT NULL,
	`user_id` int(10) DEFAULT NULL,
	`last_action` int(10) DEFAULT NULL,
	`last_url` text DEFAULT NULL,
	`logout_time` int(10) DEFAULT NULL,
	`user_browser` text DEFAULT NULL,
	`ip_address` varchar(50) DEFAULT NULL,
	`logout` int(11) NOT NULL DEFAULT '0',
	`deleted` int(1) NOT NULL DEFAULT '0',
	`status` int(1) NOT NULL DEFAULT '0',
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=6 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `user_activities`
-- ----------------------------
BEGIN;
INSERT INTO `user_activities` VALUES ('5', '84426b52096a86bf9c2503386fe7ef25', '1', '1374263331', '/usermgmt/Users', null, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:22.0) Gecko/20100101 Firefox/22.0', '127.0.0.1', '0', '0', '1', '2013-07-17 18:13:03', '2013-07-19 23:48:51');
COMMIT;

-- ----------------------------
--  Table structure for `user_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(100) DEFAULT NULL,
	`email` varchar(100) DEFAULT NULL,
	`phone` varchar(20) DEFAULT NULL,
	`requirement` text DEFAULT NULL,
	`reply_message` text DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_details`
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`user_id` int(10) DEFAULT NULL,
	`gender` varchar(10) DEFAULT NULL,
	`photo` text DEFAULT NULL,
	`bday` date DEFAULT NULL,
	`location` varchar(256) DEFAULT NULL,
	`marital_status` varchar(20) DEFAULT NULL,
	`cellphone` varchar(15) DEFAULT NULL,
	`web_page` text DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=2 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `user_details`
-- ----------------------------
BEGIN;
INSERT INTO `user_details` VALUES ('1', '1', 'male', '1374052284486000163.png', '1984-09-20', '', 'single', '', '', '2013-07-16 22:01:19', '2013-07-17 17:11:24');
COMMIT;

-- ----------------------------
--  Table structure for `user_email_recipients`
-- ----------------------------
DROP TABLE IF EXISTS `user_email_recipients`;
CREATE TABLE `user_email_recipients` (
	`id` int(100) NOT NULL AUTO_INCREMENT,
	`user_email_id` int(10) NOT NULL,
	`user_id` int(10) DEFAULT NULL,
	`email_address` varchar(100) NOT NULL,
	`is_email_sent` int(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_email_signatures`
-- ----------------------------
DROP TABLE IF EXISTS `user_email_signatures`;
CREATE TABLE `user_email_signatures` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`signature_name` varchar(100) NOT NULL,
	`signature` text DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_email_templates`
-- ----------------------------
DROP TABLE IF EXISTS `user_email_templates`;
CREATE TABLE `user_email_templates` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`template_name` varchar(100) NOT NULL,
	`header` text DEFAULT NULL,
	`footer` text DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_emails`
-- ----------------------------
DROP TABLE IF EXISTS `user_emails`;
CREATE TABLE `user_emails` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`type` varchar(20) DEFAULT NULL,
	`user_group_id` varchar(256) DEFAULT NULL,
	`cc_to` text DEFAULT NULL,
	`from_name` varchar(200) DEFAULT NULL,
	`from_email` varchar(200) DEFAULT NULL,
	`subject` varchar(500) NOT NULL,
	`message` text NOT NULL,
	`sent_by` int(10) DEFAULT NULL,
	`is_email_sent` int(1) NOT NULL DEFAULT '0',
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `user_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `user_group_permissions`;
CREATE TABLE `user_group_permissions` (
	`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_group_id` int(10) UNSIGNED NOT NULL,
	`controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
	`action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
	`allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=164 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `user_group_permissions`
-- ----------------------------
BEGIN;
INSERT INTO `user_group_permissions` VALUES ('1', '1', 'Pages', 'display', '1'), ('2', '2', 'Pages', 'display', '1'), ('3', '3', 'Pages', 'display', '1'), ('4', '1', 'UserGroupPermissions', 'index', '1'), ('5', '2', 'UserGroupPermissions', 'index', '0'), ('6', '3', 'UserGroupPermissions', 'index', '0'), ('7', '1', 'UserGroups', 'index', '1'), ('8', '2', 'UserGroups', 'index', '0'), ('9', '3', 'UserGroups', 'index', '0'), ('10', '1', 'UserGroups', 'addGroup', '1'), ('11', '2', 'UserGroups', 'addGroup', '0'), ('12', '3', 'UserGroups', 'addGroup', '0'), ('13', '1', 'UserGroups', 'editGroup', '1'), ('14', '2', 'UserGroups', 'editGroup', '0'), ('15', '3', 'UserGroups', 'editGroup', '0'), ('16', '1', 'UserGroups', 'deleteGroup', '1'), ('17', '2', 'UserGroups', 'deleteGroup', '0'), ('18', '3', 'UserGroups', 'deleteGroup', '0'), ('19', '1', 'UserSettings', 'index', '1'), ('20', '2', 'UserSettings', 'index', '0'), ('21', '3', 'UserSettings', 'index', '0'), ('22', '1', 'UserSettings', 'editSetting', '1'), ('23', '2', 'UserSettings', 'editSetting', '0'), ('24', '3', 'UserSettings', 'editSetting', '0'), ('25', '1', 'Users', 'index', '1'), ('26', '2', 'Users', 'index', '0'), ('27', '3', 'Users', 'index', '0'), ('28', '1', 'Users', 'online', '1'), ('29', '2', 'Users', 'online', '0'), ('30', '3', 'Users', 'online', '0'), ('31', '1', 'Users', 'viewUser', '1'), ('32', '2', 'Users', 'viewUser', '0'), ('33', '3', 'Users', 'viewUser', '0'), ('34', '1', 'Users', 'myprofile', '0'), ('35', '2', 'Users', 'myprofile', '1'), ('36', '3', 'Users', 'myprofile', '0'), ('37', '1', 'Users', 'editProfile', '1'), ('38', '2', 'Users', 'editProfile', '1'), ('39', '3', 'Users', 'editProfile', '0'), ('40', '1', 'Users', 'login', '1'), ('41', '2', 'Users', 'login', '1'), ('42', '3', 'Users', 'login', '1'), ('43', '1', 'Users', 'logout', '1'), ('44', '2', 'Users', 'logout', '1'), ('45', '3', 'Users', 'logout', '1'), ('46', '1', 'Users', 'register', '1'), ('47', '2', 'Users', 'register', '1'), ('48', '3', 'Users', 'register', '1'), ('49', '1', 'Users', 'changePassword', '1'), ('50', '2', 'Users', 'changePassword', '1'), ('51', '3', 'Users', 'changePassword', '0'), ('52', '1', 'Users', 'changeUserPassword', '1'), ('53', '2', 'Users', 'changeUserPassword', '0'), ('54', '3', 'Users', 'changeUserPassword', '0'), ('55', '1', 'Users', 'addUser', '1'), ('56', '2', 'Users', 'addUser', '0'), ('57', '3', 'Users', 'addUser', '0'), ('58', '1', 'Users', 'editUser', '1'), ('59', '2', 'Users', 'editUser', '0'), ('60', '3', 'Users', 'editUser', '0'), ('61', '1', 'Users', 'deleteUser', '1'), ('62', '2', 'Users', 'deleteUser', '0'), ('63', '3', 'Users', 'deleteUser', '0'), ('64', '1', 'Users', 'deleteAccount', '0'), ('65', '2', 'Users', 'deleteAccount', '1'), ('66', '3', 'Users', 'deleteAccount', '0'), ('67', '1', 'Users', 'logoutUser', '1'), ('68', '2', 'Users', 'logoutUser', '0'), ('69', '3', 'Users', 'logoutUser', '0'), ('70', '1', 'Users', 'makeInactive', '1'), ('71', '2', 'Users', 'makeInactive', '0'), ('72', '3', 'Users', 'makeInactive', '0'), ('73', '1', 'Users', 'dashboard', '1'), ('74', '2', 'Users', 'dashboard', '1'), ('75', '3', 'Users', 'dashboard', '1'), ('76', '1', 'Users', 'makeActiveInactive', '1'), ('77', '2', 'Users', 'makeActiveInactive', '0'), ('78', '3', 'Users', 'makeActiveInactive', '0'), ('79', '1', 'Users', 'verifyEmail', '1'), ('80', '2', 'Users', 'verifyEmail', '0'), ('81', '3', 'Users', 'verifyEmail', '0'), ('82', '1', 'Users', 'accessDenied', '1'), ('83', '2', 'Users', 'accessDenied', '1'), ('84', '3', 'Users', 'accessDenied', '0'), ('85', '1', 'Users', 'userVerification', '1'), ('86', '2', 'Users', 'userVerification', '1'), ('87', '3', 'Users', 'userVerification', '1'), ('88', '1', 'Users', 'forgotPassword', '1'), ('89', '2', 'Users', 'forgotPassword', '1'), ('90', '3', 'Users', 'forgotPassword', '1'), ('91', '1', 'Users', 'emailVerification', '1'), ('92', '2', 'Users', 'emailVerification', '1'), ('93', '3', 'Users', 'emailVerification', '1'), ('94', '1', 'Users', 'activatePassword', '1'), ('95', '2', 'Users', 'activatePassword', '1'), ('96', '3', 'Users', 'activatePassword', '1'), ('97', '1', 'UserGroupPermissions', 'update', '1'), ('98', '2', 'UserGroupPermissions', 'update', '0'), ('99', '3', 'UserGroupPermissions', 'update', '0'), ('100', '1', 'Users', 'deleteCache', '1'), ('101', '2', 'Users', 'deleteCache', '0'), ('102', '3', 'Users', 'deleteCache', '0'), ('103', '1', 'Autocomplete', 'fetch', '1'), ('104', '2', 'Autocomplete', 'fetch', '1'), ('105', '3', 'Autocomplete', 'fetch', '1'), ('106', '1', 'Users', 'viewUserPermissions', '1'), ('107', '2', 'Users', 'viewUserPermissions', '0'), ('108', '3', 'Users', 'viewUserPermissions', '0'), ('109', '1', 'Contents', 'index', '1'), ('110', '2', 'Contents', 'index', '0'), ('111', '3', 'Contents', 'index', '0'), ('112', '1', 'Contents', 'addPage', '1'), ('113', '2', 'Contents', 'addPage', '0'), ('114', '3', 'Contents', 'addPage', '0'), ('115', '1', 'Contents', 'editPage', '1'), ('116', '2', 'Contents', 'editPage', '0'), ('117', '3', 'Contents', 'editPage', '0'), ('118', '1', 'Contents', 'viewPage', '1'), ('119', '2', 'Contents', 'viewPage', '0'), ('120', '3', 'Contents', 'viewPage', '0'), ('121', '1', 'Contents', 'deletePage', '1'), ('122', '2', 'Contents', 'deletePage', '0'), ('123', '3', 'Contents', 'deletePage', '0'), ('124', '1', 'Contents', 'content', '1'), ('125', '2', 'Contents', 'content', '1'), ('126', '3', 'Contents', 'content', '1'), ('127', '1', 'UserContacts', 'index', '1'), ('128', '2', 'UserContacts', 'index', '0'), ('129', '3', 'UserContacts', 'index', '0'), ('130', '1', 'UserContacts', 'contactUs', '1'), ('131', '2', 'UserContacts', 'contactUs', '1'), ('132', '3', 'UserContacts', 'contactUs', '1'), ('133', '1', 'Users', 'ajaxLoginRedirect', '1'), ('134', '2', 'Users', 'ajaxLoginRedirect', '1'), ('135', '3', 'Users', 'ajaxLoginRedirect', '1'), ('136', '1', 'Users', 'viewProfile', '1'), ('137', '2', 'Users', 'viewProfile', '1'), ('138', '3', 'Users', 'viewProfile', '1'), ('139', '1', 'Users', 'sendMails', '1'), ('140', '2', 'Users', 'sendMails', '0'), ('141', '3', 'Users', 'sendMails', '0'), ('142', '1', 'Users', 'searchEmails', '1'), ('143', '2', 'Users', 'searchEmails', '0'), ('144', '3', 'Users', 'searchEmails', '0'), ('145', '1', 'UserEmails', 'index', '1'), ('146', '1', 'UserEmails', 'send', '1'), ('147', '1', 'UserEmails', 'sendToUser', '1'), ('148', '1', 'UserEmails', 'sendReply', '1'), ('149', '1', 'UserEmails', 'view', '1'), ('150', '1', 'UserGroupPermissions', 'subPermissions', '1'), ('151', '1', 'UserGroupPermissions', 'getPermissions', '1'), ('152', '1', 'UserGroupPermissions', 'permissionGroupMatrix', '1'), ('153', '1', 'UserGroupPermissions', 'permissionSubGroupMatrix', '1'), ('154', '1', 'UserGroupPermissions', 'changePermission', '1'), ('155', '1', 'Users', 'indexSearch', '1'), ('156', '1', 'UserEmailSignatures', 'index', '1'), ('157', '1', 'UserEmailSignatures', 'add', '1'), ('158', '1', 'UserEmailSignatures', 'edit', '1'), ('159', '1', 'UserEmailSignatures', 'delete', '1'), ('160', '1', 'UserEmailTemplates', 'index', '1'), ('161', '1', 'UserEmailTemplates', 'add', '1'), ('162', '1', 'UserEmailTemplates', 'edit', '1'), ('163', '1', 'UserEmailTemplates', 'delete', '1');
COMMIT;

-- ----------------------------
--  Table structure for `user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`parent_id` int(10) NOT NULL DEFAULT '0',
	`name` varchar(100) DEFAULT NULL,
	`alias_name` varchar(100) DEFAULT NULL,
	`description` text DEFAULT NULL,
	`allowRegistration` int(1) NOT NULL DEFAULT '1',
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=4 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `user_groups`
-- ----------------------------
BEGIN;
INSERT INTO `user_groups` VALUES ('1', '0', 'Admin', 'Admin', null, '0', '2013-07-16 22:01:19', '2013-07-16 22:01:19'), ('2', '0', 'User', 'User', null, '1', '2013-07-16 22:01:19', '2013-07-16 22:01:19'), ('3', '0', 'Guest', 'Guest', null, '0', '2013-07-16 22:01:19', '2013-07-16 22:01:19');
COMMIT;

-- ----------------------------
--  Table structure for `user_settings`
-- ----------------------------
DROP TABLE IF EXISTS `user_settings`;
CREATE TABLE `user_settings` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`name` varchar(256) DEFAULT NULL,
	`name_public` text DEFAULT NULL,
	`value` varchar(256) DEFAULT NULL,
	`type` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=44 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `user_settings`
-- ----------------------------
BEGIN;
INSERT INTO `user_settings` VALUES ('1', 'defaultTimeZone', 'Enter default time zone identifier', 'Asia/Kuala_Lumpur', 'input'), ('2', 'siteName', 'Enter Your Site Name', 'Cloud Campus', 'input'), ('3', 'siteRegistration', 'New Registration is allowed or not', '1', 'checkbox'), ('4', 'allowDeleteAccount', 'Allow users to delete account', '0', 'checkbox'), ('5', 'sendRegistrationMail', 'Send Registration Mail After User Registered', '1', 'checkbox'), ('6', 'sendPasswordChangeMail', 'Send Password Change Mail After User changed password', '1', 'checkbox'), ('7', 'emailVerification', 'Want to verify user\'s email address?', '1', 'checkbox'), ('8', 'emailFromAddress', 'Enter email by which emails will be send.', 'example@example.com', 'input'), ('9', 'emailFromName', 'Enter Email From Name', 'Cloud Campus', 'input'), ('10', 'allowChangeUsername', 'Do you want to allow users to change their username?', '0', 'checkbox'), ('11', 'bannedUsernames', 'Set banned usernames comma separated(no space, no quotes)', 'Administrator, SuperAdmin', 'input'), ('12', 'useRecaptcha', 'Do you want to captcha support on registration form?', '0', 'checkbox'), ('13', 'privateKeyFromRecaptcha', 'Enter private key for Recaptcha from google', '', 'input'), ('14', 'publicKeyFromRecaptcha', 'Enter public key for recaptcha from google', '', 'input'), ('15', 'loginRedirectUrl', 'Enter URL where user will be redirected after login ', '/dashboard', 'input'), ('16', 'logoutRedirectUrl', 'Enter URL where user will be redirected after logout', '/login', 'input'), ('17', 'permissions', 'Do you Want to enable permissions for users?', '1', 'checkbox'), ('18', 'adminPermissions', 'Do you want to check permissions for Admin?', '0', 'checkbox'), ('19', 'defaultGroupId', 'Enter default group id for user registration', '2', 'input'), ('20', 'adminGroupId', 'Enter Admin Group Id', '1', 'input'), ('21', 'guestGroupId', 'Enter Guest Group Id', '3', 'input'), ('22', 'useFacebookLogin', 'Want to use Facebook Connect on your site?', '0', 'checkbox'), ('23', 'facebookAppId', 'Facebook Application Id', '', 'input'), ('24', 'facebookSecret', 'Facebook Application Secret Code', '', 'input'), ('25', 'facebookScope', 'Facebook Permissions', 'user_status, publish_stream, email', 'input'), ('26', 'useTwitterLogin', 'Want to use Twitter Connect on your site?', '0', 'checkbox'), ('27', 'twitterConsumerKey', 'Twitter Consumer Key', '', 'input'), ('28', 'twitterConsumerSecret', 'Twitter Consumer Secret', '', 'input'), ('29', 'useGmailLogin', 'Want to use Gmail Connect on your site?', '1', 'checkbox'), ('30', 'useYahooLogin', 'Want to use Yahoo Connect on your site?', '1', 'checkbox'), ('31', 'useLinkedinLogin', 'Want to use Linkedin Connect on your site?', '0', 'checkbox'), ('32', 'linkedinApiKey', 'Linkedin Api Key', '', 'input'), ('33', 'linkedinSecretKey', 'Linkedin Secret Key', '', 'input'), ('34', 'useFoursquareLogin', 'Want to use Foursquare Connect on your site?', '0', 'checkbox'), ('35', 'foursquareClientId', 'Foursquare Client Id', '', 'input'), ('36', 'foursquareClientSecret', 'Foursquare Client Secret', '', 'input'), ('37', 'viewOnlineUserTime', 'You can view online users and guest from last few minutes, set time in minutes ', '30', 'input'), ('38', 'useHttps', 'Do you want to HTTPS for whole site?', '0', 'checkbox'), ('39', 'httpsUrls', 'You can set selected urls for HTTPS (e.g. users/login, users/register)', null, 'input'), ('40', 'imgDir', 'Enter Image directory name where users profile photos will be uploaded. This directory should be in webroot/img directory', 'umphotos', 'input'), ('41', 'QRDN', 'Increase this number by 1 every time if you made any changes in CSS or JS file', '12345678', 'input'), ('42', 'cookieName', 'Please enter cookie name for your site which is used to login user automatically for remember me functionality', 'CloudCampus', 'input'), ('43', 'adminEmailAddress', 'Admin Email address for emails', '', 'input');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`fb_id` bigint(100) DEFAULT NULL,
	`fb_access_token` text DEFAULT NULL,
	`twt_id` bigint(100) DEFAULT NULL,
	`twt_access_token` text DEFAULT NULL,
	`twt_access_secret` text DEFAULT NULL,
	`ldn_id` varchar(100) DEFAULT NULL,
	`user_group_id` varchar(256) DEFAULT NULL,
	`username` varchar(100) DEFAULT NULL,
	`password` varchar(255) DEFAULT NULL,
	`salt` varchar(100) DEFAULT NULL,
	`email` varchar(100) DEFAULT NULL,
	`first_name` varchar(100) DEFAULT NULL,
	`last_name` varchar(100) DEFAULT NULL,
	`active` varchar(3) DEFAULT '0',
	`email_verified` int(1) NOT NULL,
	`last_login` datetime DEFAULT NULL,
	`by_admin` int(1) NOT NULL DEFAULT '0',
	`ip_address` varchar(50) DEFAULT NULL,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
	PRIMARY KEY (`id`),
	INDEX `user` (username),
	INDEX `mail` (email),
	INDEX `users_FKIndex1` (user_group_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=2 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', null, null, null, null, null, null, '1', 'admin', 'b2aae31278a1f3a911f84497a7182ee0', '6adf262cff5454313b6f65800a6c9859', 'admin@admin.com', 'Campus', 'Admin', '1', '1', '2013-07-19 23:48:41', '0', '127.0.0.1', '2013-07-16 22:01:19', '2013-07-17 17:11:24');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
