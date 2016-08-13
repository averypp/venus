-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2016-08-13 15:34:12
-- 服务器版本： 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 5.6.23-2+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpwind`
--

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_apis`
--

CREATE TABLE `pw_acloud_apis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `template` text,
  `argument` varchar(255) NOT NULL DEFAULT '',
  `argument_type` varchar(255) NOT NULL DEFAULT '',
  `fields` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `category` tinyint(3) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_acloud_apis`
--

INSERT INTO `pw_acloud_apis` (`id`, `name`, `template`, `argument`, `argument_type`, `fields`, `status`, `category`, `created_time`, `modified_time`) VALUES
(1, 'general.thread.get', 'SELECT {fields} FROM pw_threads WHERE tid = {tid}', 'tid', '', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(2, 'general.thread.gets', 'SELECT {fields} FROM pw_threads WHERE tid IN ({tids})', 'tids', 'tids|array', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(3, 'general.thread.getByFid', 'SELECT {fields} FROM pw_threads WHERE fid = {fid} ORDER BY postdate DESC LIMIT {offset},{limit}', 'fid,offset,limit', '', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(4, 'general.thread.countByFid', 'SELECT COUNT(*) AS total FROM pw_threads WHERE fid = {fid}', 'fid', '', '', 1, 2, 1331123306, 1331123306),
(5, 'general.thread.getByFids', 'SELECT {fields} FROM pw_threads WHERE fid IN ({fids}) LIMIT {offset},{limit}', 'fids,offset,limit', 'fids|array', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(6, 'general.thread.countByFids', 'SELECT COUNT(*) AS total FROM pw_threads WHERE fid IN ({fids})', 'fids', 'fids|array', '', 1, 2, 1331123306, 1331123306),
(7, 'general.thread.getByUid', 'SELECT {fields} FROM pw_threads WHERE authorid = {uid} ORDER BY postdate DESC LIMIT {offset},{limit}', 'uid,offset,limit', '', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(8, 'general.thread.countByUid', 'SELECT COUNT(*) AS total FROM pw_threads WHERE authorid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(9, 'general.thread.getByUids', 'SELECT {fields} FROM pw_threads WHERE authorid IN ({uids}) LIMIT {offset},{limit}', 'uids,offset,limit', 'uids|array', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(10, 'general.thread.countByUids', 'SELECT COUNT(*) FROM pw_threads WHERE authorid IN ({uids})', 'uids', 'uids|array', '', 1, 2, 1331123306, 1331123306),
(11, 'general.thread.latest.gets', 'SELECT {fields} FROM pw_threads ORDER BY postdate DESC LIMIT {offset},{limit}', 'offset,limit', '', 'tid,fid,author,authorid,subject,postdate,lastpost,hits,replies', 1, 2, 1331123306, 1331123306),
(12, 'general.thread.at.gets', 'SELECT {fields} FROM pw_threads WHERE uid = {uid} LIMIT {offset},{limit}', 'uid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(13, 'general.member.get', 'SELECT {fields} FROM pw_members WHERE uid = {uid}', 'uid', '', 'uid,username,email,groupid,memberid,groups,icon,gender,regdate,signature,introduce,oicq,aliww,icq,msn,yahoo,site,location,honor,bday,lastaddrst,yz,timedf,style,datefm,t_num,p_num,attach,hack,newpm,banpm,msggroups,medals,userstatus,shortcut', 1, 2, 1331123306, 1331123306),
(14, 'general.member.getByName', 'SELECT {fields} FROM pw_members WHERE username = {username}', 'username', 'username|string', 'uid,username,email,groupid,memberid,groups,icon,gender,regdate,signature,introduce,oicq,aliww,icq,msn,yahoo,site,location,honor,bday,lastaddrst,yz,timedf,style,datefm,t_num,p_num,attach,hack,newpm,banpm,msggroups,medals,userstatus,shortcut', 1, 2, 1331123306, 1331123306),
(15, 'general.member.gets', 'SELECT {fields} FROM pw_members WHERE uid IN {uids}', 'uids', 'uids|array', 'uid,username,email,groupid,memberid,groups,icon,gender,regdate,signature,introduce,oicq,aliww,icq,msn,yahoo,site,location,honor,bday,lastaddrst,yz,timedf,style,datefm,t_num,p_num,attach,hack,newpm,banpm,msggroups,medals,userstatus,shortcut', 1, 2, 1331123306, 1331123306),
(16, 'general.member.favorites.getByUid', 'SELECT shortcut FROM pw_members WHERE uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(17, 'general.memberinfo.get', 'SELECT {fields} FROM pw_memberinfo WHERE uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(18, 'general.memberinfo.gets', 'SELECT {fields} FROM pw_memberinfo WHERE uid IN ({uids})', 'uids', 'uids|array', '', 1, 2, 1331123306, 1331123306),
(19, 'general.memberdata.get', 'SELECT {fields} FROM pw_memberdata WHERE uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(20, 'general.memberdata.gets', 'SELECT {fields} FROM pw_memberdata WHERE uid IN ({uids})', 'uids', 'uids|array', '', 1, 2, 1331123306, 1331123306),
(21, 'general.friend.all.gets', 'SELECT {fields} FROM pw_friends WHERE uid = {uid} LIMIT {offset},{limit}', 'uid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(22, 'general.friend.all.count', 'SELECT COUNT(*) AS total FROM pw_friends WHERE uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(23, 'general.friend.attention.follow.gets', 'SELECT {fields} FROM pw_attention WHERE uid = {uid} LIMIT {offset},{limit}', 'uid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(24, 'general.friend.attention.follow.count', 'SELECT COUNT(*) AS total FROM pw_attention WHERE uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(25, 'general.friend.attention.fan.gets', 'SELECT {fields} FROM pw_attention WHERE friendid = {uid} LIMIT {offset},{limit}', 'uid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(26, 'general.friend.attention.fan.count', 'SELECT COUNT(*) AS total FROM pw_attention WHERE friendid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(27, 'general.ms.message.get', 'SELECT {fields} FROM pw_ms_messages WHERE mid = {id}', 'id', '', '', 1, 2, 1331123306, 1331123306),
(28, 'general.ms.message.gets', 'SELECT {fields} FROM pw_ms_messages WHERE mid IN ({ids})', 'ids', 'ids|array', '', 1, 2, 1331123306, 1331123306),
(29, 'general.ms.relations.getsByUid', 'SELECT {fields} FROM pw_ms_relations WHERE categoryid = {categoryid} AND typeid = {typeid} AND uid = {uid} LIMIT {offset},{limit}', 'uid,categoryid,typeid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(30, 'general.ms.relations.countByUid', 'SELECT COUNT(*) AS total FROM pw_ms_relations WHERE categoryid = {categoryid} AND typeid = {typeid} AND uid = {uid}', 'uid,categoryid,typeid', '', '', 1, 2, 1331123306, 1331123306),
(31, 'general.ms.relations.countByUidAndStatus', 'SELECT COUNT(*) AS total FROM pw_ms_relations WHERE categoryid = {categoryid} AND typeid = {typeid} AND status = {status} AND uid = {uid}', 'uid,categoryid,typeid,status', '', '', 1, 2, 1331123306, 1331123306),
(32, 'general.ms.replies.get', 'SELECT {fields} FROM pw_ms_replies WHERE id = {id}', 'id', '', '', 1, 2, 1331123306, 1331123306),
(33, 'general.ms.replies.gets', 'SELECT {fields} FROM pw_ms_replies WHERE id IN ({ids})', 'ids', 'ids|array', '', 1, 2, 1331123306, 1331123306),
(34, 'general.ms.replies.getByUid', 'SELECT {fields} FROM pw_ms_replies WHERE create_uid = {uid} LIMIT {offset},{limit}', 'uid,offset,limit', '', '', 1, 2, 1331123306, 1331123306),
(35, 'general.ms.replies.countByUid', 'SELECT COUNT(*) AS total FROM pw_ms_replies WHERE create_uid = {uid}', 'uid', '', '', 1, 2, 1331123306, 1331123306),
(36, 'customized.thread.get', 'getByTid', 'tid', '', '', 1, 1, 1331123657, 1331123657),
(37, 'customized.thread.getByUid', 'getByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(38, 'customized.thread.latest.gets', 'getLatestThread', 'fids,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(39, 'customized.thread.latest.favoritesForum.gets', 'getLatestThreadByFavoritesForum', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(40, 'customized.thread.latest.followUser.gets', 'getLatestThreadByFollowUser', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(41, 'customized.thread.img.latest.gets', 'getLatestImgThread', 'fids,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(42, 'customized.thread.img.get', 'getThreadImgs', 'tid', '', '', 1, 1, 1331123657, 1331123657),
(43, 'customized.thread.topped.getByFid', 'getToppedThreadByFid', 'fid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(44, 'customized.thread.getByFid', 'getThreadByFid', 'fid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(45, 'customized.thread.at.gets', 'getAtThreadByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(46, 'customized.thread.getbyTopic', 'getThreadByTopic', 'topic,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(47, 'customized.thread.send', 'postThread', 'uid,fid,subject,content', '', '', 1, 1, 1331123657, 1331123657),
(48, 'customized.post.gets', 'getPost', 'tid,sort,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(49, 'customized.post.getByUid', 'getPostByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(50, 'customized.post.getByTidAndUid', 'getPostByTidAndUid', 'tid,uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(51, 'customized.post.send', 'sendPost', 'tid,uid,title,content', '', '', 1, 1, 1331123657, 1331123657),
(52, 'customized.user.get', 'getByUid', 'uid', '', '', 1, 1, 1331123657, 1331123657),
(53, 'customized.user.icon.update', 'updateIcon', 'uid', '', '', 1, 1, 1331123657, 1331123657),
(54, 'customized.user.favoritesForum.gets', 'getFavoritesForumByUid', 'uid', '', '', 1, 1, 1331123657, 1331123657),
(55, 'customized.user.favoritesforum.add', 'addFavoritesForumByUid', 'uid,fid', '', '', 1, 1, 1331123657, 1331123657),
(56, 'customized.user.favoritesforum.delete', 'deleteFavoritesForumByUid', 'uid,fid', '', '', 1, 1, 1331123657, 1331123657),
(57, 'customized.user.login', 'userLogin', 'username,password', '', '', 1, 1, 1331123657, 1331123657),
(58, 'customized.user.register', 'userRegister', 'username,password,email', '', '', 1, 1, 1331123657, 1331123657),
(59, 'customized.user.updateemail', 'updateEmail', 'uid,email', '', '', 1, 1, 1331123657, 1331123657),
(60, 'customized.forum.all.get', 'getAllForum', '', '', '', 1, 1, 1331123657, 1331123657),
(61, 'customized.forum.get', 'getForumByFid', 'fid', '', '', 1, 1, 1331123657, 1331123657),
(62, 'customized.forum.child.getByFid', 'getChildForumByFid', 'fid', '', '', 1, 1, 1331123657, 1331123657),
(63, 'customized.message.unread.count', 'countUnreadMessage', 'uid', '', '', 1, 1, 1331123657, 1331123657),
(64, 'customized.message.gets', 'getMessageByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(65, 'customized.message.send', 'sendMessage', 'fromuid,touid,title,content', '', '', 1, 1, 1331123657, 1331123657),
(66, 'customized.message.reply', 'replyMessage', 'messageid,relationid,uid,content', '', '', 1, 1, 1331123657, 1331123657),
(67, 'customized.message.get', 'getMessageAndReply', 'messageid,relationid,uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(68, 'customized.message.postmythread.gets', 'getReplyThreadMessage', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(69, 'customized.friend.all.gets', 'getAllFriend', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(70, 'customized.friend.all.search', 'searchAllFriend', 'uid,keyword,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(71, 'customized.friend.follow.gets', 'getFollowByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(72, 'customized.friend.follow.add', 'addFollowByUid', 'uid,uid2', '', '', 1, 1, 1331123657, 1331123657),
(73, 'customized.friend.follow.delete', 'deleteFollowByUid', 'uid,uid2', '', '', 1, 1, 1331123657, 1331123657),
(74, 'customized.friend.fan.gets', 'getFanByUid', 'uid,offset,limit', '', '', 1, 1, 1331123657, 1331123657),
(75, 'common.permissions.user.isbanned', 'isUserBanned', 'uid', '', '', 1, 0, 1331123657, 1331123657),
(76, 'common.permissions.user.readforum', 'readForum', 'uid,fid', '', '', 1, 0, 1331123657, 1331123657),
(77, 'common.search.hotwords.gets', 'getHotwords', '', '', '', 1, 0, 1331123657, 1331123657),
(78, 'customized.user.getByName', 'getByName', 'username', '', '', 1, 1, 1331123657, 1331123657),
(79, 'common.site.partitions.get', 'getTablePartitions', 'type', '', '', 1, 0, 1331123657, 1331123657),
(80, 'common.user.ban', 'banUser', 'uid', '', '', 1, 0, 1331123657, 1331123657),
(81, 'common.thread.shield', 'shieldThread', 'tid,fid', '', '', 1, 0, 1331123657, 1331123657),
(82, 'common.post.shield', 'shieldPost', 'pid,tid', '', '', 1, 0, 1331123657, 1331123657),
(83, 'common.attach.img.gets', 'getImgAttaches', 'aids', '', '', 1, 0, 1331123657, 1331123657),
(84, 'common.user.getIcons', 'getIconsByUids', 'uids', '', '', 1, 0, 1331123657, 1331123657),
(85, 'common.site.field.check', 'checkTableField', 'table,field', '', '', 1, 0, 1331123657, 1331123657),
(86, 'customized.thread.mobile.send', 'postMobileThread', 'uid,fid,subject,content,mobiletype', '', '', 1, 1, 1331123657, 1331123657),
(87, 'customized.post.mobile.send', 'sendMobilePost', 'tid,uid,title,content,mobiletype', '', '', 1, 1, 1331123657, 1331123657);

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_apps`
--

CREATE TABLE `pw_acloud_apps` (
  `app_id` char(22) NOT NULL DEFAULT '',
  `app_name` varchar(60) NOT NULL DEFAULT '',
  `app_token` char(128) NOT NULL DEFAULT '',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_app_configs`
--

CREATE TABLE `pw_acloud_app_configs` (
  `app_id` char(22) NOT NULL DEFAULT '',
  `app_key` varchar(30) NOT NULL DEFAULT '',
  `app_value` text,
  `app_type` tinyint(3) NOT NULL DEFAULT '1',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_extras`
--

CREATE TABLE `pw_acloud_extras` (
  `ekey` varchar(100) NOT NULL DEFAULT '',
  `evalue` text,
  `etype` tinyint(3) NOT NULL DEFAULT '1',
  `created_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_acloud_extras`
--

INSERT INTO `pw_acloud_extras` (`ekey`, `evalue`, `etype`, `created_time`, `modified_time`) VALUES
('ac_isopen', '0', 1, 0, 0),
('ac_ipcontrol', '1', 1, 0, 0),
('ac_apply_step', '0', 1, 0, 0),
('ac_apply_siteurl', '', 1, 0, 0),
('ac_apply_lasttime', '0', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_keys`
--

CREATE TABLE `pw_acloud_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `key1` char(128) NOT NULL DEFAULT '',
  `key2` char(128) NOT NULL DEFAULT '',
  `key3` char(128) NOT NULL DEFAULT '',
  `key4` char(128) NOT NULL DEFAULT '',
  `key5` char(128) NOT NULL DEFAULT '',
  `key6` char(128) NOT NULL DEFAULT '',
  `created_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_acloud_keys`
--

INSERT INTO `pw_acloud_keys` (`id`, `key1`, `key2`, `key3`, `key4`, `key5`, `key6`, `created_time`, `modified_time`) VALUES
(1, '', '', '', '', '', '', 1330586406, 1330586406),
(2, '', '', '', '', '', '', 1330586406, 1330586406);

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_sql_log`
--

CREATE TABLE `pw_acloud_sql_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log` text,
  `created_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_acloud_table_settings`
--

CREATE TABLE `pw_acloud_table_settings` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `category` tinyint(3) NOT NULL DEFAULT '0',
  `primary_key` varchar(20) NOT NULL DEFAULT '',
  `created_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_acloud_table_settings`
--

INSERT INTO `pw_acloud_table_settings` (`name`, `status`, `category`, `primary_key`, `created_time`, `modified_time`) VALUES
('prefix_threads', 1, 1, 'tid', 1331123657, 1331123657),
('prefix_members', 1, 1, 'uid', 1331123657, 1331123657),
('prefix_forums', 1, 1, 'fid', 1331123657, 1331123657),
('prefix_diary', 1, 1, 'did', 1331123657, 1331123657),
('prefix_posts', 1, 1, 'pid', 1331123657, 1331123657),
('prefix_colonys', 1, 1, 'id', 1331123657, 1331123657),
('prefix_attachs', 1, 1, 'aid', 1331123657, 1331123657),
('prefix_bbsinfo', 1, 1, 'id', 1331123657, 1331123657);

-- --------------------------------------------------------

--
-- 表的结构 `pw_actattachs`
--

CREATE TABLE `pw_actattachs` (
  `aid` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attachurl` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uploadtime` int(10) NOT NULL DEFAULT '0',
  `descrip` varchar(100) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_actions`
--

CREATE TABLE `pw_actions` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `images` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(15) NOT NULL DEFAULT '',
  `descrip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_actions`
--

INSERT INTO `pw_actions` (`id`, `images`, `name`, `descrip`) VALUES
(1, '1.gif', '比酷', '摆了个ＰＯＳＥ道：你、你、你没我酷..'),
(2, '2.gif', '生气', '撅了撅嘴说：气死我了呀!呀!呀!'),
(3, '3.gif', '狂笑', '仰天狂笑：普天之下,竟然没有我的对手...'),
(4, '4.gif', '痛哭', '鼻子一酸,开始叭嗒叭嗒掉眼泪了'),
(5, '5.gif', '唱歌', '清清嗓子唱起歌来：东方红,太阳升');

-- --------------------------------------------------------

--
-- 表的结构 `pw_active`
--

CREATE TABLE `pw_active` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deadline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `objecter` tinyint(3) NOT NULL DEFAULT '0',
  `limitnum` tinyint(3) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL,
  `introduction` varchar(255) NOT NULL DEFAULT '',
  `poster` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `members` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activity`
--

CREATE TABLE `pw_activity` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `admin` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `location` varchar(20) NOT NULL DEFAULT '',
  `num` smallint(6) NOT NULL DEFAULT '0',
  `sexneed` tinyint(3) NOT NULL DEFAULT '0',
  `costs` int(10) NOT NULL DEFAULT '0',
  `deadline` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activitycate`
--

CREATE TABLE `pw_activitycate` (
  `actid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `ifdel` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_activitycate`
--

INSERT INTO `pw_activitycate` (`actid`, `name`, `ifable`, `vieworder`, `ifdel`) VALUES
(1, '户外活动', 1, 0, 0),
(2, '体育健康', 1, 1, 0),
(3, '文娱休闲', 1, 2, 0),
(4, '其他活动', 1, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_activitydefaultvalue`
--

CREATE TABLE `pw_activitydefaultvalue` (
  `tid` int(10) UNSIGNED NOT NULL,
  `actmid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0',
  `iscertified` tinyint(3) NOT NULL DEFAULT '1',
  `iscancel` tinyint(3) NOT NULL DEFAULT '0',
  `out_biz_no` varchar(255) DEFAULT '',
  `batch_no` varchar(255) NOT NULL DEFAULT '',
  `user_id` varchar(255) NOT NULL DEFAULT '',
  `recommend` tinyint(1) NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `location` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `picture1` varchar(255) NOT NULL DEFAULT '',
  `picture2` varchar(255) NOT NULL DEFAULT '',
  `picture3` varchar(255) NOT NULL DEFAULT '',
  `picture4` varchar(255) NOT NULL DEFAULT '',
  `picture5` varchar(255) NOT NULL DEFAULT '',
  `signupstarttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `signupendtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minparticipant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxparticipant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userlimit` tinyint(3) NOT NULL DEFAULT '0',
  `specificuserlimit` varchar(255) NOT NULL DEFAULT '',
  `genderlimit` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fees` varchar(255) NOT NULL DEFAULT '',
  `feesdetail` varchar(255) NOT NULL DEFAULT '',
  `paymethod` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pushtime` int(10) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityfield`
--

CREATE TABLE `pw_activityfield` (
  `fieldid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `actmid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `ifsearch` tinyint(3) NOT NULL DEFAULT '0',
  `ifasearch` tinyint(3) NOT NULL DEFAULT '0',
  `issearchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `threadshow` tinyint(3) NOT NULL DEFAULT '0',
  `allowthreadshow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ifmust` tinyint(3) NOT NULL DEFAULT '1',
  `ifdel` tinyint(3) NOT NULL DEFAULT '1',
  `mustenable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `textwidth` tinyint(3) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `sectionname` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_activityfield`
--

INSERT INTO `pw_activityfield` (`fieldid`, `name`, `fieldname`, `actmid`, `vieworder`, `type`, `rules`, `ifable`, `ifsearch`, `ifasearch`, `issearchable`, `threadshow`, `allowthreadshow`, `ifmust`, `ifdel`, `mustenable`, `textwidth`, `descrip`, `sectionname`) VALUES
(1, '活动时间', 'starttime', 1, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 1, 1, 1, 0, 1, 18, '', '活动概况'),
(2, '-', 'endtime', 1, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 1, 1, 1, 0, 1, 18, '', '活动概况'),
(3, '活动地点', 'location', 1, 2, 'text', '', 1, 1, 0, 1, 1, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(4, '主题图片', 'picture1', 1, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(5, '主题图片二', 'picture2', 1, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(6, '主题图片三', 'picture3', 1, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(7, '主题图片四', 'picture4', 1, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(8, '主题图片五', 'picture5', 1, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(9, '联系人', 'contact', 1, 4, 'text', '', 1, 0, 1, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(10, '联系电话', 'telephone', 1, 5, 'text', '', 1, 0, 1, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(11, '报名时间', 'signupstarttime', 1, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(12, '-', 'signupendtime', 1, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(13, '人数限制{@}最少', 'minparticipant', 1, 7, 'text', '', 1, 0, 1, 0, 0, 1, 1, 0, 0, 3, '', '报名说明'),
(14, '最多', 'maxparticipant', 1, 7, 'text', '', 1, 0, 1, 0, 0, 1, 1, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(15, '报名限制', 'userlimit', 1, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(16, '请输入其它限制', 'specificuserlimit', 1, 8, 'text', '', 1, 0, 1, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(17, '性别限制', 'genderlimit', 1, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(18, '活动费用', 'fees', 1, 10, 'text', '', 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(19, '费用明细', 'feesdetail', 1, 11, 'text', '', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(20, '支付方式', 'paymethod', 1, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(21, '活动时间', 'starttime', 2, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(22, '-', 'endtime', 2, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(23, '活动地点', 'location', 2, 2, 'text', '', 0, 1, 1, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(24, '主题图片', 'picture1', 2, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(25, '主题图片二', 'picture2', 2, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(26, '主题图片三', 'picture3', 2, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(27, '主题图片四', 'picture4', 2, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(28, '主题图片五', 'picture5', 2, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(29, '联系人', 'contact', 2, 4, 'text', '', 1, 1, 1, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(30, '联系电话', 'telephone', 2, 5, 'text', '', 1, 1, 1, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(31, '报名时间', 'signupstarttime', 2, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 1, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(32, '-', 'signupendtime', 2, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 1, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(33, '人数限制{@}最少', 'minparticipant', 2, 7, 'text', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(34, '最多', 'maxparticipant', 2, 7, 'text', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(35, '报名限制', 'userlimit', 2, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(36, '请输入其它限制', 'specificuserlimit', 2, 8, 'text', '', 0, 0, 1, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(37, '性别限制', 'genderlimit', 2, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(38, '活动费用', 'fees', 2, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(39, '费用明细', 'feesdetail', 2, 11, 'text', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(40, '支付方式', 'paymethod', 2, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(41, '活动时间', 'starttime', 3, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(42, '-', 'endtime', 3, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(43, '活动地点', 'location', 3, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(44, '主题图片', 'picture1', 3, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(45, '主题图片二', 'picture2', 3, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(46, '主题图片三', 'picture3', 3, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(47, '主题图片四', 'picture4', 3, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(48, '主题图片五', 'picture5', 3, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(49, '联系人', 'contact', 3, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(50, '联系电话', 'telephone', 3, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(51, '报名时间', 'signupstarttime', 3, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(52, '-', 'signupendtime', 3, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(53, '人数限制{@}最少', 'minparticipant', 3, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(54, '最多', 'maxparticipant', 3, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(55, '报名限制', 'userlimit', 3, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(56, '请输入其它限制', 'specificuserlimit', 3, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(57, '性别限制', 'genderlimit', 3, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(58, '活动费用', 'fees', 3, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(59, '费用明细', 'feesdetail', 3, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(60, '支付方式', 'paymethod', 3, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(61, '活动时间', 'starttime', 4, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(62, '-', 'endtime', 4, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(63, '活动地点', 'location', 4, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(64, '主题图片', 'picture1', 4, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(65, '主题图片二', 'picture2', 4, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(66, '主题图片三', 'picture3', 4, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(67, '主题图片四', 'picture4', 4, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(68, '主题图片五', 'picture5', 4, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(69, '联系人', 'contact', 4, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(70, '联系电话', 'telephone', 4, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(71, '报名时间', 'signupstarttime', 4, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(72, '-', 'signupendtime', 4, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(73, '人数限制{@}最少', 'minparticipant', 4, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(74, '最多', 'maxparticipant', 4, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(75, '报名限制', 'userlimit', 4, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(76, '请输入其它限制', 'specificuserlimit', 4, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(77, '性别限制', 'genderlimit', 4, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(78, '活动费用', 'fees', 4, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(79, '费用明细', 'feesdetail', 4, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(80, '支付方式', 'paymethod', 4, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(81, '活动时间', 'starttime', 5, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 1, 1, 1, 0, 1, 18, '', '活动概况'),
(82, '-', 'endtime', 5, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 1, 1, 1, 0, 1, 18, '', '活动概况'),
(83, '活动地点', 'location', 5, 2, 'text', '', 1, 1, 1, 1, 1, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(84, '主题图片', 'picture1', 5, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(85, '主题图片二', 'picture2', 5, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(86, '主题图片三', 'picture3', 5, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(87, '主题图片四', 'picture4', 5, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(88, '主题图片五', 'picture5', 5, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(89, '联系人', 'contact', 5, 4, 'text', '', 1, 1, 1, 1, 1, 1, 1, 0, 1, 20, '', '活动概况'),
(90, '联系电话', 'telephone', 5, 5, 'text', '', 1, 1, 1, 1, 1, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(91, '报名时间', 'signupstarttime', 5, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 1, 1, 1, 0, 1, 18, '', '报名说明'),
(92, '-', 'signupendtime', 5, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 1, 1, 1, 1, 1, 1, 0, 1, 18, '', '报名说明'),
(93, '人数限制{@}最少', 'minparticipant', 5, 7, 'text', '', 1, 0, 0, 0, 1, 1, 0, 0, 0, 3, '', '报名说明'),
(94, '最多', 'maxparticipant', 5, 7, 'text', '', 1, 0, 0, 0, 1, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(95, '报名限制', 'userlimit', 5, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '报名说明'),
(96, '请输入其它限制', 'specificuserlimit', 5, 8, 'text', '', 1, 1, 1, 1, 1, 1, 0, 0, 0, 14, '', '报名说明'),
(97, '性别限制', 'genderlimit', 5, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '报名说明'),
(98, '活动费用', 'fees', 5, 10, 'text', '', 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(99, '费用明细', 'feesdetail', 5, 11, 'text', '', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '费用说明'),
(100, '支付方式', 'paymethod', 5, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, '', '费用说明'),
(101, '活动时间', 'starttime', 6, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(102, '-', 'endtime', 6, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(103, '活动地点', 'location', 6, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(104, '主题图片', 'picture1', 6, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(105, '主题图片二', 'picture2', 6, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(106, '主题图片三', 'picture3', 6, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(107, '主题图片四', 'picture4', 6, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(108, '主题图片五', 'picture5', 6, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(109, '联系人', 'contact', 6, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(110, '联系电话', 'telephone', 6, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(111, '报名时间', 'signupstarttime', 6, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(112, '-', 'signupendtime', 6, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(113, '人数限制{@}最少', 'minparticipant', 6, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(114, '最多', 'maxparticipant', 6, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(115, '报名限制', 'userlimit', 6, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(116, '请输入其它限制', 'specificuserlimit', 6, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(117, '性别限制', 'genderlimit', 6, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(118, '活动费用', 'fees', 6, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(119, '费用明细', 'feesdetail', 6, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(120, '支付方式', 'paymethod', 6, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(121, '活动时间', 'starttime', 7, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(122, '-', 'endtime', 7, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(123, '活动地点', 'location', 7, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(124, '主题图片', 'picture1', 7, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(125, '主题图片二', 'picture2', 7, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(126, '主题图片三', 'picture3', 7, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(127, '主题图片四', 'picture4', 7, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(128, '主题图片五', 'picture5', 7, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(129, '联系人', 'contact', 7, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(130, '联系电话', 'telephone', 7, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(131, '报名时间', 'signupstarttime', 7, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(132, '-', 'signupendtime', 7, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(133, '人数限制{@}最少', 'minparticipant', 7, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(134, '最多', 'maxparticipant', 7, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(135, '报名限制', 'userlimit', 7, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(136, '请输入其它限制', 'specificuserlimit', 7, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(137, '性别限制', 'genderlimit', 7, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(138, '活动费用', 'fees', 7, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(139, '费用明细', 'feesdetail', 7, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(140, '支付方式', 'paymethod', 7, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(141, '活动时间', 'starttime', 8, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(142, '-', 'endtime', 8, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(143, '活动地点', 'location', 8, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(144, '主题图片', 'picture1', 8, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(145, '主题图片二', 'picture2', 8, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(146, '主题图片三', 'picture3', 8, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(147, '主题图片四', 'picture4', 8, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(148, '主题图片五', 'picture5', 8, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(149, '联系人', 'contact', 8, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(150, '联系电话', 'telephone', 8, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(151, '报名时间', 'signupstarttime', 8, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(152, '-', 'signupendtime', 8, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(153, '人数限制{@}最少', 'minparticipant', 8, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(154, '最多', 'maxparticipant', 8, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(155, '报名限制', 'userlimit', 8, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(156, '请输入其它限制', 'specificuserlimit', 8, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(157, '性别限制', 'genderlimit', 8, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(158, '活动费用', 'fees', 8, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(159, '费用明细', 'feesdetail', 8, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(160, '支付方式', 'paymethod', 8, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(161, '活动时间', 'starttime', 9, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(162, '-', 'endtime', 9, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(163, '活动地点', 'location', 9, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(164, '主题图片', 'picture1', 9, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(165, '主题图片二', 'picture2', 9, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(166, '主题图片三', 'picture3', 9, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(167, '主题图片四', 'picture4', 9, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(168, '主题图片五', 'picture5', 9, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(169, '联系人', 'contact', 9, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(170, '联系电话', 'telephone', 9, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(171, '报名时间', 'signupstarttime', 9, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(172, '-', 'signupendtime', 9, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(173, '人数限制{@}最少', 'minparticipant', 9, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(174, '最多', 'maxparticipant', 9, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(175, '报名限制', 'userlimit', 9, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(176, '请输入其它限制', 'specificuserlimit', 9, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(177, '性别限制', 'genderlimit', 9, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(178, '活动费用', 'fees', 9, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(179, '费用明细', 'feesdetail', 9, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(180, '支付方式', 'paymethod', 9, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(181, '活动时间', 'starttime', 10, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(182, '-', 'endtime', 10, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(183, '活动地点', 'location', 10, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(184, '主题图片', 'picture1', 10, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(185, '主题图片二', 'picture2', 10, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(186, '主题图片三', 'picture3', 10, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(187, '主题图片四', 'picture4', 10, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(188, '主题图片五', 'picture5', 10, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(189, '联系人', 'contact', 10, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(190, '联系电话', 'telephone', 10, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(191, '报名时间', 'signupstarttime', 10, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(192, '-', 'signupendtime', 10, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(193, '人数限制{@}最少', 'minparticipant', 10, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(194, '最多', 'maxparticipant', 10, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(195, '报名限制', 'userlimit', 10, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(196, '请输入其它限制', 'specificuserlimit', 10, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(197, '性别限制', 'genderlimit', 10, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(198, '活动费用', 'fees', 10, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(199, '费用明细', 'feesdetail', 10, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(200, '支付方式', 'paymethod', 10, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(201, '活动时间', 'starttime', 11, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(202, '-', 'endtime', 11, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(203, '活动地点', 'location', 11, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(204, '主题图片', 'picture1', 11, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(205, '主题图片二', 'picture2', 11, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(206, '主题图片三', 'picture3', 11, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(207, '主题图片四', 'picture4', 11, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(208, '主题图片五', 'picture5', 11, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(209, '联系人', 'contact', 11, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(210, '联系电话', 'telephone', 11, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(211, '报名时间', 'signupstarttime', 11, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(212, '-', 'signupendtime', 11, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(213, '人数限制{@}最少', 'minparticipant', 11, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(214, '最多', 'maxparticipant', 11, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(215, '报名限制', 'userlimit', 11, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(216, '请输入其它限制', 'specificuserlimit', 11, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(217, '性别限制', 'genderlimit', 11, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(218, '活动费用', 'fees', 11, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(219, '费用明细', 'feesdetail', 11, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(220, '支付方式', 'paymethod', 11, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(221, '活动时间', 'starttime', 12, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(222, '-', 'endtime', 12, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(223, '活动地点', 'location', 12, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(224, '主题图片', 'picture1', 12, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(225, '主题图片二', 'picture2', 12, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(226, '主题图片三', 'picture3', 12, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(227, '主题图片四', 'picture4', 12, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(228, '主题图片五', 'picture5', 12, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(229, '联系人', 'contact', 12, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(230, '联系电话', 'telephone', 12, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(231, '报名时间', 'signupstarttime', 12, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(232, '-', 'signupendtime', 12, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(233, '人数限制{@}最少', 'minparticipant', 12, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(234, '最多', 'maxparticipant', 12, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(235, '报名限制', 'userlimit', 12, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(236, '请输入其它限制', 'specificuserlimit', 12, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(237, '性别限制', 'genderlimit', 12, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(238, '活动费用', 'fees', 12, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(239, '费用明细', 'feesdetail', 12, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(240, '支付方式', 'paymethod', 12, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(241, '活动时间', 'starttime', 13, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(242, '-', 'endtime', 13, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(243, '活动地点', 'location', 13, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(244, '主题图片', 'picture1', 13, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(245, '主题图片二', 'picture2', 13, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(246, '主题图片三', 'picture3', 13, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(247, '主题图片四', 'picture4', 13, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(248, '主题图片五', 'picture5', 13, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(249, '联系人', 'contact', 13, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(250, '联系电话', 'telephone', 13, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(251, '报名时间', 'signupstarttime', 13, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(252, '-', 'signupendtime', 13, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(253, '人数限制{@}最少', 'minparticipant', 13, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(254, '最多', 'maxparticipant', 13, 7, 'text', 'a:1:{s:9:"alipaymax";s:2:"30";}', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(255, '报名限制', 'userlimit', 13, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(256, '请输入其它限制', 'specificuserlimit', 13, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(257, '性别限制', 'genderlimit', 13, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(258, '活动费用', 'fees', 13, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(259, '费用明细', 'feesdetail', 13, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(260, '支付方式', 'paymethod', 13, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(261, '活动时间', 'starttime', 14, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(262, '-', 'endtime', 14, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(263, '活动地点', 'location', 14, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(264, '主题图片', 'picture1', 14, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(265, '主题图片二', 'picture2', 14, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(266, '主题图片三', 'picture3', 14, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(267, '主题图片四', 'picture4', 14, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(268, '主题图片五', 'picture5', 14, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(269, '联系人', 'contact', 14, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(270, '联系电话', 'telephone', 14, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(271, '报名时间', 'signupstarttime', 14, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(272, '-', 'signupendtime', 14, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(273, '人数限制{@}最少', 'minparticipant', 14, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(274, '最多', 'maxparticipant', 14, 7, 'text', 'a:1:{s:9:"alipaymax";s:2:"30";}', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(275, '报名限制', 'userlimit', 14, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(276, '请输入其它限制', 'specificuserlimit', 14, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(277, '性别限制', 'genderlimit', 14, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(278, '活动费用', 'fees', 14, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(279, '费用明细', 'feesdetail', 14, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(280, '支付方式', 'paymethod', 14, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(281, '活动时间', 'starttime', 15, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(282, '-', 'endtime', 15, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(283, '活动地点', 'location', 15, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(284, '主题图片', 'picture1', 15, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(285, '主题图片二', 'picture2', 15, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(286, '主题图片三', 'picture3', 15, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(287, '主题图片四', 'picture4', 15, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(288, '主题图片五', 'picture5', 15, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(289, '联系人', 'contact', 15, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(290, '联系电话', 'telephone', 15, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(291, '报名时间', 'signupstarttime', 15, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(292, '-', 'signupendtime', 15, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(293, '人数限制{@}最少', 'minparticipant', 15, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(294, '最多', 'maxparticipant', 15, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(295, '报名限制', 'userlimit', 15, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(296, '请输入其它限制', 'specificuserlimit', 15, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(297, '性别限制', 'genderlimit', 15, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(298, '活动费用', 'fees', 15, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(299, '费用明细', 'feesdetail', 15, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(300, '支付方式', 'paymethod', 15, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(301, '活动时间', 'starttime', 16, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(302, '-', 'endtime', 16, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(303, '活动地点', 'location', 16, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(304, '主题图片', 'picture1', 16, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(305, '主题图片二', 'picture2', 16, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(306, '主题图片三', 'picture3', 16, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(307, '主题图片四', 'picture4', 16, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(308, '主题图片五', 'picture5', 16, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(309, '联系人', 'contact', 16, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(310, '联系电话', 'telephone', 16, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(311, '报名时间', 'signupstarttime', 16, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(312, '-', 'signupendtime', 16, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(313, '人数限制{@}最少', 'minparticipant', 16, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(314, '最多', 'maxparticipant', 16, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(315, '报名限制', 'userlimit', 16, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(316, '请输入其它限制', 'specificuserlimit', 16, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(317, '性别限制', 'genderlimit', 16, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(318, '活动费用', 'fees', 16, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(319, '费用明细', 'feesdetail', 16, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(320, '支付方式', 'paymethod', 16, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明'),
(321, '活动时间', 'starttime', 17, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(322, '-', 'endtime', 17, 1, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '活动概况'),
(323, '活动地点', 'location', 17, 2, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 40, '(多个活动地点用,隔开)', '活动概况'),
(324, '主题图片', 'picture1', 17, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(最多5张，支持gif、jpeg、jpg、bmp、png，小于2M)', '活动概况'),
(325, '主题图片二', 'picture2', 17, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(326, '主题图片三', 'picture3', 17, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(327, '主题图片四', 'picture4', 17, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(328, '主题图片五', 'picture5', 17, 3, 'upload', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '活动概况'),
(329, '联系人', 'contact', 17, 4, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 20, '', '活动概况'),
(330, '联系电话', 'telephone', 17, 5, 'text', '', 1, 0, 0, 1, 0, 1, 1, 0, 1, 40, '(多个联系电话用,隔开)', '活动概况'),
(331, '报名时间', 'signupstarttime', 17, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(332, '-', 'signupendtime', 17, 6, 'calendar', 'a:1:{s:9:"precision";s:6:"minute";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 18, '', '报名说明'),
(333, '人数限制{@}最少', 'minparticipant', 17, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(334, '最多', 'maxparticipant', 17, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 3, '(留空或0表示没有限制)', '报名说明'),
(335, '报名限制', 'userlimit', 17, 8, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 3, '', '报名说明'),
(336, '请输入其它限制', 'specificuserlimit', 17, 8, 'text', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 14, '', '报名说明'),
(337, '性别限制', 'genderlimit', 17, 9, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '报名说明'),
(338, '活动费用', 'fees', 17, 10, 'text', '', 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, '(如 小孩 每位 10元，有车族 每位10 元等)', '费用说明'),
(339, '费用明细', 'feesdetail', 17, 11, 'text', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '费用说明'),
(340, '支付方式', 'paymethod', 17, 12, 'radio', 'a:2:{i:0;s:11:"1=支付宝";i:1;s:14:"2=现金支付";}', 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, '', '费用说明');

-- --------------------------------------------------------

--
-- 表的结构 `pw_activitymembers`
--

CREATE TABLE `pw_activitymembers` (
  `actuid` int(10) UNSIGNED NOT NULL,
  `fupid` mediumint(8) NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actmid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `signupdetail` varchar(255) NOT NULL DEFAULT '',
  `signupnum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `totalcash` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `ifanonymous` tinyint(3) NOT NULL DEFAULT '0',
  `ifpay` tinyint(3) NOT NULL DEFAULT '0',
  `signuptime` int(10) UNSIGNED DEFAULT '0',
  `fromuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromusername` varchar(15) NOT NULL DEFAULT '',
  `issubstitute` tinyint(3) NOT NULL DEFAULT '0',
  `isadditional` tinyint(3) NOT NULL DEFAULT '0',
  `isrefund` tinyint(3) NOT NULL DEFAULT '0',
  `refundcost` varchar(255) NOT NULL DEFAULT '',
  `refundreason` varchar(255) NOT NULL DEFAULT '',
  `additionalreason` varchar(255) NOT NULL DEFAULT '',
  `out_trade_no` varchar(255) NOT NULL DEFAULT '0',
  `batch_detail_no` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activitymodel`
--

CREATE TABLE `pw_activitymodel` (
  `actmid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `actid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `ifdel` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_activitymodel`
--

INSERT INTO `pw_activitymodel` (`actmid`, `name`, `actid`, `ifable`, `vieworder`, `ifdel`) VALUES
(1, '爬山', 1, 1, 0, 0),
(2, '烧烤', 1, 1, 1, 0),
(3, '暴走/快闪', 1, 1, 2, 0),
(4, '自驾游', 1, 1, 3, 0),
(5, '农家乐', 1, 1, 4, 0),
(6, '室内运动', 2, 1, 0, 0),
(7, '室外运动', 2, 1, 1, 0),
(8, '真人CS', 2, 1, 2, 0),
(9, '看球赛', 2, 1, 3, 0),
(10, '聚餐/茶馆', 3, 1, 0, 0),
(11, '夜生活/舞会', 3, 1, 1, 0),
(12, '电影/K歌', 3, 1, 2, 0),
(13, '演出/展览', 3, 1, 3, 0),
(14, '桌游/棋牌', 3, 1, 4, 0),
(15, '相亲', 4, 1, 0, 0),
(16, '旅游', 4, 1, 1, 0),
(17, '其它', 4, 1, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_activitypaylog`
--

CREATE TABLE `pw_activitypaylog` (
  `actpid` mediumint(8) NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `authorid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `fromuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromusername` varchar(15) NOT NULL DEFAULT '',
  `cost` varchar(255) NOT NULL DEFAULT '',
  `costtype` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `wherefrom` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue1`
--

CREATE TABLE `pw_activityvalue1` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue2`
--

CREATE TABLE `pw_activityvalue2` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue3`
--

CREATE TABLE `pw_activityvalue3` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue4`
--

CREATE TABLE `pw_activityvalue4` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue5`
--

CREATE TABLE `pw_activityvalue5` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue6`
--

CREATE TABLE `pw_activityvalue6` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue7`
--

CREATE TABLE `pw_activityvalue7` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue8`
--

CREATE TABLE `pw_activityvalue8` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue9`
--

CREATE TABLE `pw_activityvalue9` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue10`
--

CREATE TABLE `pw_activityvalue10` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue11`
--

CREATE TABLE `pw_activityvalue11` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue12`
--

CREATE TABLE `pw_activityvalue12` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue13`
--

CREATE TABLE `pw_activityvalue13` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue14`
--

CREATE TABLE `pw_activityvalue14` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue15`
--

CREATE TABLE `pw_activityvalue15` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue16`
--

CREATE TABLE `pw_activityvalue16` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_activityvalue17`
--

CREATE TABLE `pw_activityvalue17` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_actmember`
--

CREATE TABLE `pw_actmember` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `actid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `winduid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `applydate` int(10) NOT NULL DEFAULT '0',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `message` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_actmembers`
--

CREATE TABLE `pw_actmembers` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `anonymous` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_administrators`
--

CREATE TABLE `pw_administrators` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `groupid` tinyint(3) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `slog` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_administrators`
--

INSERT INTO `pw_administrators` (`uid`, `username`, `groupid`, `groups`, `slog`) VALUES
(1, 'admin', 3, '', ';1471073406,127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `pw_adminlog`
--

CREATE TABLE `pw_adminlog` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `username1` varchar(30) NOT NULL DEFAULT '',
  `username2` varchar(30) NOT NULL DEFAULT '',
  `field1` varchar(30) NOT NULL DEFAULT '',
  `field2` varchar(30) NOT NULL DEFAULT '',
  `field3` varchar(255) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_adminset`
--

CREATE TABLE `pw_adminset` (
  `gid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_adminset`
--

INSERT INTO `pw_adminset` (`gid`, `value`) VALUES
(3, 'a:69:{s:8:"creathtm";s:1:"1";s:9:"forumsell";s:1:"1";s:11:"singleright";s:1:"1";s:8:"tpccheck";s:1:"1";s:9:"postcheck";s:1:"1";s:6:"tagset";s:1:"1";s:6:"pwcode";s:1:"1";s:6:"setbwd";s:1:"1";s:7:"setform";s:1:"1";s:9:"topiccate";s:1:"1";s:8:"postcate";s:1:"1";s:8:"urlcheck";s:1:"1";s:10:"attachment";s:1:"1";s:11:"attachstats";s:1:"1";s:11:"attachrenew";s:1:"1";s:10:"app_photos";s:1:"1";s:9:"app_diary";s:1:"1";s:10:"app_groups";s:1:"1";s:9:"app_share";s:1:"1";s:9:"app_write";s:1:"1";s:7:"app_hot";s:1:"1";s:8:"checkreg";s:1:"1";s:10:"checkemail";s:1:"1";s:7:"banuser";s:1:"1";s:7:"viewban";s:1:"1";s:12:"customcredit";s:1:"1";s:5:"level";s:1:"1";s:9:"userstats";s:1:"1";s:7:"upgrade";s:1:"1";s:6:"uptime";s:1:"1";s:6:"sethtm";s:1:"1";s:9:"datastate";s:1:"1";s:7:"sitemap";s:1:"1";s:9:"postcache";s:1:"1";s:5:"ipban";s:1:"1";s:8:"ipstates";s:1:"1";s:8:"ipsearch";s:1:"1";s:11:"customfield";s:1:"1";s:11:"updatecache";s:1:"1";s:9:"creditdiy";s:1:"1";s:12:"creditchange";s:1:"1";s:6:"rebang";s:1:"1";s:7:"pwcache";s:1:"1";s:6:"report";s:1:"1";s:8:"forumlog";s:1:"1";s:9:"creditlog";s:1:"1";s:3:"app";s:1:"1";s:10:"hackcenter";s:1:"1";s:9:"setstyles";s:1:"1";s:12:"announcement";s:1:"1";s:8:"draftset";s:1:"1";s:8:"sendmail";s:1:"1";s:7:"sendmsg";s:1:"1";s:7:"present";s:1:"1";s:6:"setads";s:1:"1";s:5:"share";s:1:"1";s:9:"viewtoday";s:1:"1";s:5:"chmod";s:1:"1";s:9:"safecheck";s:1:"1";s:4:"help";s:1:"1";s:7:"message";s:1:"1";s:8:"guestdir";s:1:"1";s:7:"recycle";s:1:"1";s:8:"plantodo";s:1:"1";s:7:"addplan";s:1:"1";s:7:"userpay";s:1:"1";s:9:"orderlist";s:1:"1";s:15:"area_tplcontent";s:1:"1";s:10:"o_comments";s:1:"1";}'),
(4, 'a:19:{s:8:"tpccheck";s:1:"1";s:9:"postcheck";s:1:"1";s:6:"setbwd";s:1:"1";s:10:"attachment";s:1:"1";s:11:"attachstats";s:1:"1";s:11:"attachrenew";s:1:"1";s:7:"banuser";s:1:"1";s:7:"viewban";s:1:"1";s:9:"userstats";s:1:"1";s:9:"editgroup";s:1:"1";s:9:"postcache";s:1:"1";s:5:"ipban";s:1:"1";s:8:"ipsearch";s:1:"1";s:6:"report";s:1:"1";s:8:"forumlog";s:1:"1";s:9:"creditlog";s:1:"1";s:12:"announcement";s:1:"1";s:6:"setads";s:1:"1";s:5:"share";s:1:"1";}'),
(5, 'a:6:{s:7:"banuser";s:1:"1";s:7:"viewban";s:1:"1";s:6:"report";s:1:"1";s:8:"forumlog";s:1:"1";s:9:"creditlog";s:1:"1";s:12:"announcement";s:1:"1";}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_advert`
--

CREATE TABLE `pw_advert` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ckey` varchar(32) NOT NULL DEFAULT '',
  `stime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `etime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifshow` tinyint(3) NOT NULL DEFAULT '0',
  `orderby` tinyint(3) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL,
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_advert`
--

INSERT INTO `pw_advert` (`id`, `type`, `uid`, `ckey`, `stime`, `etime`, `ifshow`, `orderby`, `descrip`, `config`) VALUES
(1, 0, 0, 'Site.Header', 0, 0, 1, 0, '头部横幅~	~显示在页面的头部，一般以图片或flash方式显示，多条广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(2, 0, 0, 'Site.Footer', 0, 0, 1, 0, '底部横幅~	~显示在页面的底部，一般以图片或flash方式显示，多条广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(3, 0, 0, 'Site.NavBanner1', 0, 0, 1, 0, '导航通栏[1]~	~显示在主导航的下面，一般以图片或flash方式显示，多条广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(4, 0, 0, 'Site.NavBanner2', 0, 0, 1, 0, '导航通栏[2]~	~显示在头部通栏广告[1]位置的下面,与通栏广告[1]可一起显示,一般为图片广告', 'a:1:{s:7:"display";s:4:"rand";}'),
(5, 0, 0, 'Site.PopupNotice', 0, 0, 1, 0, '弹窗广告[右下]~	~在页面右下角以浮动的层弹出显示，此广告内容需要单独设置相关窗口参数', 'a:1:{s:7:"display";s:4:"rand";}'),
(6, 0, 0, 'Site.FloatRand', 0, 0, 1, 0, '漂浮广告[随机]~	~以各种形式在页面内随机漂浮的广告', 'a:1:{s:7:"display";s:4:"rand";}'),
(7, 0, 0, 'Site.FloatLeft', 0, 0, 1, 0, '漂浮广告[左]~	~以各种形式在页面左边漂浮的广告，俗称对联广告[左]', 'a:1:{s:7:"display";s:4:"rand";}'),
(8, 0, 0, 'Site.FloatRight', 0, 0, 1, 0, '漂浮广告[右]~	~以各种形式在页面右边漂浮的广告，俗称对联广告[右]', 'a:1:{s:7:"display";s:4:"rand";}'),
(9, 0, 0, 'Mode.TextIndex', 0, 0, 1, 0, '文字广告[论坛首页]~	~显示在页面的导航下面，一般以文字方式显示，每行四条广告，超过四条将换行显示', 'a:1:{s:7:"display";s:3:"all";}'),
(10, 0, 0, 'Mode.Forum.TextRead', 0, 0, 1, 0, '文字广告[帖子页]~	~显示在页面的导航下面，一般以文字方式显示，每行四条广告，超过四条将换行显示', 'a:1:{s:7:"display";s:3:"all";}'),
(11, 0, 0, 'Mode.Forum.TextThread', 0, 0, 1, 0, '文字广告[主题页]~	~显示在页面的导航下面，一般以文字方式显示，每行四条广告，超过四条将换行显示', 'a:1:{s:7:"display";s:3:"all";}'),
(12, 0, 0, 'Mode.Forum.Layer.TidRight', 0, 0, 1, 0, '楼层广告[帖子右侧]~	~出现在帖子右侧，一般以图片或文字显示，多条帖间广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(13, 0, 0, 'Mode.Forum.Layer.TidDown', 0, 0, 1, 0, '楼层广告[帖子下方]~	~出现在帖子下方，一般以图片或文字显示，多条帖间广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(14, 0, 0, 'Mode.Forum.Layer.TidUp', 0, 0, 1, 0, '楼层广告[帖子上方]~	~出现在帖子上方，一般以图片或文字显示，多条帖间广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(15, 0, 0, 'Mode.Forum.Layer.TidAmong', 0, 0, 1, 0, '楼层广告[楼层中间]~	~出现在帖子楼层之间，一般以图片或文字显示，多条帖间广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(16, 0, 0, 'Mode.Layer.Index', 0, 0, 1, 0, '论坛首页分类间~	~出现在首页分类层之间，一般以图片或文字显示，多条帖间广告时系统将随机选取一条显示', 'a:1:{s:7:"display";s:4:"rand";}'),
(23, 0, 0, 'Mode.Forum.Layer.area.ThreadTop', 0, 0, 1, 0, '门户帖子列表页右上~	~帖子列表页门户模式浏览时，右上方的广告位', 'a:1:{s:7:"display";s:4:"rand";}'),
(24, 0, 0, 'Mode.Forum.Layer.area.ThreadBtm', 0, 0, 1, 0, '门户帖子列表页右下~	~帖子列表页门户模式浏览时，右下方的广告位', 'a:1:{s:7:"display";s:4:"rand";}'),
(25, 0, 0, 'Mode.Forum.Layer.area.ReadTop', 0, 0, 1, 0, '门户帖子内容页右上~	~帖子内容页门户模式浏览时，右上方的广告位', 'a:1:{s:7:"display";s:4:"rand";}'),
(26, 0, 0, 'Mode.Forum.Layer.area.ReadBtm', 0, 0, 1, 0, '门户帖子内容页右下~	~帖子内容页门户模式浏览时，右下方的广告位', 'a:1:{s:7:"display";s:4:"rand";}'),
(30, 2, 0, 'Wap.Header', 0, 0, 1, 0, 'WAP头部~	~显示在WAP头部，可以是图片或文字，存在多条广告时将全部显示', 'a:1:{s:7:"display";s:3:"all";}'),
(31, 2, 0, 'Wap.Footer', 0, 0, 1, 0, 'WAP底部~	~显示在WAP底部，可以是图片或文字，存在多条广告时将全部显示', 'a:1:{s:7:"display";s:3:"all";}'),
(32, 2, 0, 'Wap.Read.Header', 0, 0, 1, 0, 'WAP帖子内容顶部~	~显示在WAP帖子内容顶部，可以是图片或文字，存在多条广告时将全部显示', 'a:1:{s:7:"display";s:3:"all";}'),
(33, 2, 0, 'Wap.Read.Footer', 0, 0, 1, 0, 'WAP帖子内容底部~	~显示在WAP帖子内容底部，可以是图片或文字，存在多条广告时将全部显示', 'a:1:{s:7:"display";s:3:"all";}'),
(27, 0, 0, 'Site.Search.Thread.Right', 0, 0, 1, 0, '搜索帖子右侧广告~	~搜索帖子时，显示在页面的右侧', 'a:1:{s:7:"display";s:4:"rand";}'),
(28, 0, 0, 'Site.Search.Diary.Right', 0, 0, 1, 0, '搜索日志右侧广告~	~搜索日志时，显示在页面的右侧', 'a:1:{s:7:"display";s:4:"rand";}'),
(29, 0, 0, 'Site.u.IndexCenter', 0, 0, 1, 0, '个人中心首页广告位~	~', 'a:1:{s:7:"display";s:3:"all";}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_announce`
--

CREATE TABLE `pw_announce` (
  `aid` smallint(6) UNSIGNED NOT NULL,
  `fid` smallint(6) NOT NULL DEFAULT '-1',
  `ifopen` tinyint(3) NOT NULL DEFAULT '0',
  `ifconvert` tinyint(3) NOT NULL DEFAULT '0',
  `vieworder` smallint(6) NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `startdate` varchar(15) NOT NULL DEFAULT '',
  `url` varchar(80) NOT NULL DEFAULT '',
  `enddate` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_areas`
--

CREATE TABLE `pw_areas` (
  `areaid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `joinname` varchar(150) NOT NULL DEFAULT '',
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` smallint(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_areas`
--

INSERT INTO `pw_areas` (`areaid`, `name`, `joinname`, `parentid`, `vieworder`) VALUES
(110000, 'B-北京市', '北京市', 0, 3),
(120000, 'T-天津市', '天津市', 0, 28),
(130000, 'H-河北省', '河北省', 0, 10),
(140000, 'S-山西省', '山西省', 0, 24),
(150000, 'N-内蒙古自治区', '内蒙古自治区', 0, 20),
(210000, 'L-辽宁省', '辽宁省', 0, 19),
(220000, 'J-吉林省', '吉林省', 0, 16),
(230000, 'H-黑龙江省', '黑龙江省', 0, 15),
(310000, 'S-上海市', '上海市', 0, 23),
(320000, 'J-江苏省', '江苏省', 0, 17),
(330000, 'Z-浙江省', '浙江省', 0, 34),
(340000, 'A-安徽省', '安徽省', 0, 1),
(350000, 'F-福建省', '福建省', 0, 5),
(360000, 'J-江西省', '江西省', 0, 18),
(370000, 'S-山东省', '山东省', 0, 25),
(410000, 'H-河南省', '河南省', 0, 11),
(420000, 'H-湖北省', '湖北省', 0, 12),
(430000, 'H-湖南省', '湖南省', 0, 13),
(440000, 'G-广东省', '广东省', 0, 6),
(450000, 'G-广西壮族自治区', '广西壮族自治区', 0, 7),
(460000, 'H-海南省', '海南省', 0, 14),
(500000, 'C-重庆市', '重庆市', 0, 4),
(510000, 'S-四川省', '四川省', 0, 26),
(520000, 'G-贵州省', '贵州省', 0, 8),
(530000, 'Y-云南省', '云南省', 0, 33),
(540000, 'X-西藏自治区', '西藏自治区', 0, 30),
(610000, 'S-陕西省', '陕西省', 0, 27),
(620000, 'G-甘肃省', '甘肃省', 0, 9),
(630000, 'Q-青海省', '青海省', 0, 22),
(640000, 'N-宁夏回族自治区', '宁夏回族自治区', 0, 21),
(650000, 'X-新疆维吾尔自治区', '新疆维吾尔自治区', 0, 31),
(710000, 'T-台湾省', '台湾省', 0, 29),
(810000, 'X-香港特别行政区', '香港特别行政区', 0, 32),
(820000, 'A-澳门特别行政区', '澳门特别行政区', 0, 2),
(110100, '北京市', '北京市,北京市', 110000, 1),
(110200, '县', '北京市,县', 110000, 2),
(120100, '市辖区', '天津市,市辖区', 120000, 3),
(120200, '县', '天津市,县', 120000, 4),
(130100, '石家庄市', '河北省,石家庄市', 130000, 5),
(130200, '唐山市', '河北省,唐山市', 130000, 6),
(130300, '秦皇岛市', '河北省,秦皇岛市', 130000, 7),
(130400, '邯郸市', '河北省,邯郸市', 130000, 8),
(130500, '邢台市', '河北省,邢台市', 130000, 9),
(130600, '保定市', '河北省,保定市', 130000, 10),
(130700, '张家口市', '河北省,张家口市', 130000, 11),
(130800, '承德市', '河北省,承德市', 130000, 12),
(130900, '沧州市', '河北省,沧州市', 130000, 13),
(131000, '廊坊市', '河北省,廊坊市', 130000, 14),
(131100, '衡水市', '河北省,衡水市', 130000, 15),
(140100, '太原市', '山西省,太原市', 140000, 16),
(140200, '大同市', '山西省,大同市', 140000, 17),
(140300, '阳泉市', '山西省,阳泉市', 140000, 18),
(140400, '长治市', '山西省,长治市', 140000, 19),
(140500, '晋城市', '山西省,晋城市', 140000, 20),
(140600, '朔州市', '山西省,朔州市', 140000, 21),
(140700, '晋中市', '山西省,晋中市', 140000, 22),
(140800, '运城市', '山西省,运城市', 140000, 23),
(140900, '忻州市', '山西省,忻州市', 140000, 24),
(141000, '临汾市', '山西省,临汾市', 140000, 25),
(141100, '吕梁市', '山西省,吕梁市', 140000, 26),
(150100, '呼和浩特市', '内蒙古自治区,呼和浩特市', 150000, 27),
(150200, '包头市', '内蒙古自治区,包头市', 150000, 28),
(150300, '乌海市', '内蒙古自治区,乌海市', 150000, 29),
(150400, '赤峰市', '内蒙古自治区,赤峰市', 150000, 30),
(150500, '通辽市', '内蒙古自治区,通辽市', 150000, 31),
(150600, '鄂尔多斯市', '内蒙古自治区,鄂尔多斯市', 150000, 32),
(150700, '呼伦贝尔市', '内蒙古自治区,呼伦贝尔市', 150000, 33),
(150800, '巴彦淖尔市', '内蒙古自治区,巴彦淖尔市', 150000, 34),
(150900, '乌兰察布市', '内蒙古自治区,乌兰察布市', 150000, 35),
(152200, '兴安盟', '内蒙古自治区,兴安盟', 150000, 36),
(152500, '锡林郭勒盟', '内蒙古自治区,锡林郭勒盟', 150000, 37),
(152900, '阿拉善盟', '内蒙古自治区,阿拉善盟', 150000, 38),
(210100, '沈阳市', '辽宁省,沈阳市', 210000, 39),
(210200, '大连市', '辽宁省,大连市', 210000, 40),
(210300, '鞍山市', '辽宁省,鞍山市', 210000, 41),
(210400, '抚顺市', '辽宁省,抚顺市', 210000, 42),
(210500, '本溪市', '辽宁省,本溪市', 210000, 43),
(210600, '丹东市', '辽宁省,丹东市', 210000, 44),
(210700, '锦州市', '辽宁省,锦州市', 210000, 45),
(210800, '营口市', '辽宁省,营口市', 210000, 46),
(210900, '阜新市', '辽宁省,阜新市', 210000, 47),
(211000, '辽阳市', '辽宁省,辽阳市', 210000, 48),
(211100, '盘锦市', '辽宁省,盘锦市', 210000, 49),
(211200, '铁岭市', '辽宁省,铁岭市', 210000, 50),
(211300, '朝阳市', '辽宁省,朝阳市', 210000, 51),
(211400, '葫芦岛市', '辽宁省,葫芦岛市', 210000, 52),
(220100, '长春市', '吉林省,长春市', 220000, 53),
(220200, '吉林市', '吉林省,吉林市', 220000, 54),
(220300, '四平市', '吉林省,四平市', 220000, 55),
(220400, '辽源市', '吉林省,辽源市', 220000, 56),
(220500, '通化市', '吉林省,通化市', 220000, 57),
(220600, '白山市', '吉林省,白山市', 220000, 58),
(220700, '松原市', '吉林省,松原市', 220000, 59),
(220800, '白城市', '吉林省,白城市', 220000, 60),
(222400, '延边朝鲜族自治州', '吉林省,延边朝鲜族自治州', 220000, 61),
(230100, '哈尔滨市', '黑龙江省,哈尔滨市', 230000, 62),
(230200, '齐齐哈尔市', '黑龙江省,齐齐哈尔市', 230000, 63),
(230300, '鸡西市', '黑龙江省,鸡西市', 230000, 64),
(230400, '鹤岗市', '黑龙江省,鹤岗市', 230000, 65),
(230500, '双鸭山市', '黑龙江省,双鸭山市', 230000, 66),
(230600, '大庆市', '黑龙江省,大庆市', 230000, 67),
(230700, '伊春市', '黑龙江省,伊春市', 230000, 68),
(230800, '佳木斯市', '黑龙江省,佳木斯市', 230000, 69),
(230900, '七台河市', '黑龙江省,七台河市', 230000, 70),
(231000, '牡丹江市', '黑龙江省,牡丹江市', 230000, 71),
(231100, '黑河市', '黑龙江省,黑河市', 230000, 72),
(231200, '绥化市', '黑龙江省,绥化市', 230000, 73),
(232700, '大兴安岭地区', '黑龙江省,大兴安岭地区', 230000, 74),
(310100, '市辖区', '上海市,市辖区', 310000, 75),
(310200, '县', '上海市,县', 310000, 76),
(320100, '南京市', '江苏省,南京市', 320000, 77),
(320200, '无锡市', '江苏省,无锡市', 320000, 78),
(320300, '徐州市', '江苏省,徐州市', 320000, 79),
(320400, '常州市', '江苏省,常州市', 320000, 80),
(320500, '苏州市', '江苏省,苏州市', 320000, 81),
(320600, '南通市', '江苏省,南通市', 320000, 82),
(320700, '连云港市', '江苏省,连云港市', 320000, 83),
(320800, '淮安市', '江苏省,淮安市', 320000, 84),
(320900, '盐城市', '江苏省,盐城市', 320000, 85),
(321000, '扬州市', '江苏省,扬州市', 320000, 86),
(321100, '镇江市', '江苏省,镇江市', 320000, 87),
(321200, '泰州市', '江苏省,泰州市', 320000, 88),
(321300, '宿迁市', '江苏省,宿迁市', 320000, 89),
(330100, '杭州市', '浙江省,杭州市', 330000, 90),
(330200, '宁波市', '浙江省,宁波市', 330000, 91),
(330300, '温州市', '浙江省,温州市', 330000, 92),
(330400, '嘉兴市', '浙江省,嘉兴市', 330000, 93),
(330500, '湖州市', '浙江省,湖州市', 330000, 94),
(330600, '绍兴市', '浙江省,绍兴市', 330000, 95),
(330700, '金华市', '浙江省,金华市', 330000, 96),
(330800, '衢州市', '浙江省,衢州市', 330000, 97),
(330900, '舟山市', '浙江省,舟山市', 330000, 98),
(331000, '台州市', '浙江省,台州市', 330000, 99),
(331100, '丽水市', '浙江省,丽水市', 330000, 100),
(340100, '合肥市', '安徽省,合肥市', 340000, 101),
(340200, '芜湖市', '安徽省,芜湖市', 340000, 102),
(340300, '蚌埠市', '安徽省,蚌埠市', 340000, 103),
(340400, '淮南市', '安徽省,淮南市', 340000, 104),
(340500, '马鞍山市', '安徽省,马鞍山市', 340000, 105),
(340600, '淮北市', '安徽省,淮北市', 340000, 106),
(340700, '铜陵市', '安徽省,铜陵市', 340000, 107),
(340800, '安庆市', '安徽省,安庆市', 340000, 108),
(341000, '黄山市', '安徽省,黄山市', 340000, 109),
(341100, '滁州市', '安徽省,滁州市', 340000, 110),
(341200, '阜阳市', '安徽省,阜阳市', 340000, 111),
(341300, '宿州市', '安徽省,宿州市', 340000, 112),
(341500, '六安市', '安徽省,六安市', 340000, 114),
(341600, '亳州市', '安徽省,亳州市', 340000, 115),
(341700, '池州市', '安徽省,池州市', 340000, 116),
(341800, '宣城市', '安徽省,宣城市', 340000, 117),
(350100, '福州市', '福建省,福州市', 350000, 118),
(350200, '厦门市', '福建省,厦门市', 350000, 119),
(350300, '莆田市', '福建省,莆田市', 350000, 120),
(350400, '三明市', '福建省,三明市', 350000, 121),
(350500, '泉州市', '福建省,泉州市', 350000, 122),
(350600, '漳州市', '福建省,漳州市', 350000, 123),
(350700, '南平市', '福建省,南平市', 350000, 124),
(350800, '龙岩市', '福建省,龙岩市', 350000, 125),
(350900, '宁德市', '福建省,宁德市', 350000, 126),
(360100, '南昌市', '江西省,南昌市', 360000, 127),
(360200, '景德镇市', '江西省,景德镇市', 360000, 128),
(360300, '萍乡市', '江西省,萍乡市', 360000, 129),
(360400, '九江市', '江西省,九江市', 360000, 130),
(360500, '新余市', '江西省,新余市', 360000, 131),
(360600, '鹰潭市', '江西省,鹰潭市', 360000, 132),
(360700, '赣州市', '江西省,赣州市', 360000, 133),
(360800, '吉安市', '江西省,吉安市', 360000, 134),
(360900, '宜春市', '江西省,宜春市', 360000, 135),
(361000, '抚州市', '江西省,抚州市', 360000, 136),
(361100, '上饶市', '江西省,上饶市', 360000, 137),
(370100, '济南市', '山东省,济南市', 370000, 138),
(370200, '青岛市', '山东省,青岛市', 370000, 139),
(370300, '淄博市', '山东省,淄博市', 370000, 140),
(370400, '枣庄市', '山东省,枣庄市', 370000, 141),
(370500, '东营市', '山东省,东营市', 370000, 142),
(370600, '烟台市', '山东省,烟台市', 370000, 143),
(370700, '潍坊市', '山东省,潍坊市', 370000, 144),
(370800, '济宁市', '山东省,济宁市', 370000, 145),
(370900, '泰安市', '山东省,泰安市', 370000, 146),
(371000, '威海市', '山东省,威海市', 370000, 147),
(371100, '日照市', '山东省,日照市', 370000, 148),
(371200, '莱芜市', '山东省,莱芜市', 370000, 149),
(371300, '临沂市', '山东省,临沂市', 370000, 150),
(371400, '德州市', '山东省,德州市', 370000, 151),
(371500, '聊城市', '山东省,聊城市', 370000, 152),
(371600, '滨州市', '山东省,滨州市', 370000, 153),
(371700, '菏泽市', '山东省,菏泽市', 370000, 154),
(410100, '郑州市', '河南省,郑州市', 410000, 155),
(410200, '开封市', '河南省,开封市', 410000, 156),
(410300, '洛阳市', '河南省,洛阳市', 410000, 157),
(410400, '平顶山市', '河南省,平顶山市', 410000, 158),
(410500, '安阳市', '河南省,安阳市', 410000, 159),
(410600, '鹤壁市', '河南省,鹤壁市', 410000, 160),
(410700, '新乡市', '河南省,新乡市', 410000, 161),
(410800, '焦作市', '河南省,焦作市', 410000, 162),
(410900, '濮阳市', '河南省,濮阳市', 410000, 163),
(411000, '许昌市', '河南省,许昌市', 410000, 164),
(411100, '漯河市', '河南省,漯河市', 410000, 165),
(411200, '三门峡市', '河南省,三门峡市', 410000, 166),
(411300, '南阳市', '河南省,南阳市', 410000, 167),
(411400, '商丘市', '河南省,商丘市', 410000, 168),
(411500, '信阳市', '河南省,信阳市', 410000, 169),
(411600, '周口市', '河南省,周口市', 410000, 170),
(411700, '驻马店市', '河南省,驻马店市', 410000, 171),
(420100, '武汉市', '湖北省,武汉市', 420000, 172),
(420200, '黄石市', '湖北省,黄石市', 420000, 173),
(420300, '十堰市', '湖北省,十堰市', 420000, 174),
(420500, '宜昌市', '湖北省,宜昌市', 420000, 175),
(420600, '襄樊市', '湖北省,襄樊市', 420000, 176),
(420700, '鄂州市', '湖北省,鄂州市', 420000, 177),
(420800, '荆门市', '湖北省,荆门市', 420000, 178),
(420900, '孝感市', '湖北省,孝感市', 420000, 179),
(421000, '荆州市', '湖北省,荆州市', 420000, 180),
(421100, '黄冈市', '湖北省,黄冈市', 420000, 181),
(421200, '咸宁市', '湖北省,咸宁市', 420000, 182),
(421300, '随州市', '湖北省,随州市', 420000, 183),
(422800, '恩施土家族苗族自治州', '湖北省,恩施土家族苗族自治州', 420000, 184),
(429000, '省直辖行政单位', '湖北省,省直辖行政单位', 420000, 185),
(430100, '长沙市', '湖南省,长沙市', 430000, 186),
(430200, '株洲市', '湖南省,株洲市', 430000, 187),
(430300, '湘潭市', '湖南省,湘潭市', 430000, 188),
(430400, '衡阳市', '湖南省,衡阳市', 430000, 189),
(430500, '邵阳市', '湖南省,邵阳市', 430000, 190),
(430600, '岳阳市', '湖南省,岳阳市', 430000, 191),
(430700, '常德市', '湖南省,常德市', 430000, 192),
(430800, '张家界市', '湖南省,张家界市', 430000, 193),
(430900, '益阳市', '湖南省,益阳市', 430000, 194),
(431000, '郴州市', '湖南省,郴州市', 430000, 195),
(431100, '永州市', '湖南省,永州市', 430000, 196),
(431200, '怀化市', '湖南省,怀化市', 430000, 197),
(431300, '娄底市', '湖南省,娄底市', 430000, 198),
(433100, '湘西土家族苗族自治州', '湖南省,湘西土家族苗族自治州', 430000, 199),
(440100, '广州市', '广东省,广州市', 440000, 200),
(440200, '韶关市', '广东省,韶关市', 440000, 201),
(440300, '深圳市', '广东省,深圳市', 440000, 202),
(440400, '珠海市', '广东省,珠海市', 440000, 203),
(440500, '汕头市', '广东省,汕头市', 440000, 204),
(440600, '佛山市', '广东省,佛山市', 440000, 205),
(440700, '江门市', '广东省,江门市', 440000, 206),
(440800, '湛江市', '广东省,湛江市', 440000, 207),
(440900, '茂名市', '广东省,茂名市', 440000, 208),
(441200, '肇庆市', '广东省,肇庆市', 440000, 209),
(441300, '惠州市', '广东省,惠州市', 440000, 210),
(441400, '梅州市', '广东省,梅州市', 440000, 211),
(441500, '汕尾市', '广东省,汕尾市', 440000, 212),
(441600, '河源市', '广东省,河源市', 440000, 213),
(441700, '阳江市', '广东省,阳江市', 440000, 214),
(441800, '清远市', '广东省,清远市', 440000, 215),
(441900, '东莞市', '广东省,东莞市', 440000, 216),
(442000, '中山市', '广东省,中山市', 440000, 217),
(445100, '潮州市', '广东省,潮州市', 440000, 218),
(445200, '揭阳市', '广东省,揭阳市', 440000, 219),
(445300, '云浮市', '广东省,云浮市', 440000, 220),
(450100, '南宁市', '广西壮族自治区,南宁市', 450000, 221),
(450200, '柳州市', '广西壮族自治区,柳州市', 450000, 222),
(450300, '桂林市', '广西壮族自治区,桂林市', 450000, 223),
(450400, '梧州市', '广西壮族自治区,梧州市', 450000, 224),
(450500, '北海市', '广西壮族自治区,北海市', 450000, 225),
(450600, '防城港市', '广西壮族自治区,防城港市', 450000, 226),
(450700, '钦州市', '广西壮族自治区,钦州市', 450000, 227),
(450800, '贵港市', '广西壮族自治区,贵港市', 450000, 228),
(450900, '玉林市', '广西壮族自治区,玉林市', 450000, 229),
(451000, '百色市', '广西壮族自治区,百色市', 450000, 230),
(451100, '贺州市', '广西壮族自治区,贺州市', 450000, 231),
(451200, '河池市', '广西壮族自治区,河池市', 450000, 232),
(451300, '来宾市', '广西壮族自治区,来宾市', 450000, 233),
(451400, '崇左市', '广西壮族自治区,崇左市', 450000, 234),
(460100, '海口市', '海南省,海口市', 460000, 235),
(460200, '三亚市', '海南省,三亚市', 460000, 236),
(469000, '省直辖县级行政单位', '海南省,省直辖县级行政单位', 460000, 237),
(500100, '市辖区', '重庆市,市辖区', 500000, 238),
(500200, '县', '重庆市,县', 500000, 239),
(500300, '市', '重庆市,市', 500000, 240),
(510100, '成都市', '四川省,成都市', 510000, 241),
(510300, '自贡市', '四川省,自贡市', 510000, 242),
(510400, '攀枝花市', '四川省,攀枝花市', 510000, 243),
(510500, '泸州市', '四川省,泸州市', 510000, 244),
(510600, '德阳市', '四川省,德阳市', 510000, 245),
(510700, '绵阳市', '四川省,绵阳市', 510000, 246),
(510800, '广元市', '四川省,广元市', 510000, 247),
(510900, '遂宁市', '四川省,遂宁市', 510000, 248),
(511000, '内江市', '四川省,内江市', 510000, 249),
(511100, '乐山市', '四川省,乐山市', 510000, 250),
(511300, '南充市', '四川省,南充市', 510000, 251),
(511400, '眉山市', '四川省,眉山市', 510000, 252),
(511500, '宜宾市', '四川省,宜宾市', 510000, 253),
(511600, '广安市', '四川省,广安市', 510000, 254),
(511700, '达州市', '四川省,达州市', 510000, 255),
(511800, '雅安市', '四川省,雅安市', 510000, 256),
(511900, '巴中市', '四川省,巴中市', 510000, 257),
(512000, '资阳市', '四川省,资阳市', 510000, 258),
(513200, '阿坝藏族羌族自治州', '四川省,阿坝藏族羌族自治州', 510000, 259),
(513300, '甘孜藏族自治州', '四川省,甘孜藏族自治州', 510000, 260),
(513400, '凉山彝族自治州', '四川省,凉山彝族自治州', 510000, 261),
(520100, '贵阳市', '贵州省,贵阳市', 520000, 262),
(520200, '六盘水市', '贵州省,六盘水市', 520000, 263),
(520300, '遵义市', '贵州省,遵义市', 520000, 264),
(520400, '安顺市', '贵州省,安顺市', 520000, 265),
(522200, '铜仁地区', '贵州省,铜仁地区', 520000, 266),
(522300, '黔西南布依族苗族自治州', '贵州省,黔西南布依族苗族自治州', 520000, 267),
(522400, '毕节地区', '贵州省,毕节地区', 520000, 268),
(522600, '黔东南苗族侗族自治州', '贵州省,黔东南苗族侗族自治州', 520000, 269),
(522700, '黔南布依族苗族自治州', '贵州省,黔南布依族苗族自治州', 520000, 270),
(530100, '昆明市', '云南省,昆明市', 530000, 271),
(530300, '曲靖市', '云南省,曲靖市', 530000, 272),
(530400, '玉溪市', '云南省,玉溪市', 530000, 273),
(530500, '保山市', '云南省,保山市', 530000, 274),
(530600, '昭通市', '云南省,昭通市', 530000, 275),
(530700, '丽江市', '云南省,丽江市', 530000, 276),
(530800, '思茅市', '云南省,思茅市', 530000, 277),
(530900, '临沧市', '云南省,临沧市', 530000, 278),
(532300, '楚雄彝族自治州', '云南省,楚雄彝族自治州', 530000, 279),
(532500, '红河哈尼族彝族自治州', '云南省,红河哈尼族彝族自治州', 530000, 280),
(532600, '文山壮族苗族自治州', '云南省,文山壮族苗族自治州', 530000, 281),
(532800, '西双版纳傣族自治州', '云南省,西双版纳傣族自治州', 530000, 282),
(532900, '大理白族自治州', '云南省,大理白族自治州', 530000, 283),
(533100, '德宏傣族景颇族自治州', '云南省,德宏傣族景颇族自治州', 530000, 284),
(533300, '怒江傈僳族自治州', '云南省,怒江傈僳族自治州', 530000, 285),
(533400, '迪庆藏族自治州', '云南省,迪庆藏族自治州', 530000, 286),
(540100, '拉萨市', '西藏自治区,拉萨市', 540000, 287),
(542100, '昌都地区', '西藏自治区,昌都地区', 540000, 288),
(542200, '山南地区', '西藏自治区,山南地区', 540000, 289),
(542300, '日喀则地区', '西藏自治区,日喀则地区', 540000, 290),
(542400, '那曲地区', '西藏自治区,那曲地区', 540000, 291),
(542500, '阿里地区', '西藏自治区,阿里地区', 540000, 292),
(542600, '林芝地区', '西藏自治区,林芝地区', 540000, 293),
(610100, '西安市', '陕西省,西安市', 610000, 294),
(610200, '铜川市', '陕西省,铜川市', 610000, 295),
(610300, '宝鸡市', '陕西省,宝鸡市', 610000, 296),
(610400, '咸阳市', '陕西省,咸阳市', 610000, 297),
(610500, '渭南市', '陕西省,渭南市', 610000, 298),
(610600, '延安市', '陕西省,延安市', 610000, 299),
(610700, '汉中市', '陕西省,汉中市', 610000, 300),
(610800, '榆林市', '陕西省,榆林市', 610000, 301),
(610900, '安康市', '陕西省,安康市', 610000, 302),
(611000, '商洛市', '陕西省,商洛市', 610000, 303),
(620100, '兰州市', '甘肃省,兰州市', 620000, 304),
(620200, '嘉峪关市', '甘肃省,嘉峪关市', 620000, 305),
(620300, '金昌市', '甘肃省,金昌市', 620000, 306),
(620400, '白银市', '甘肃省,白银市', 620000, 307),
(620500, '天水市', '甘肃省,天水市', 620000, 308),
(620600, '武威市', '甘肃省,武威市', 620000, 309),
(620700, '张掖市', '甘肃省,张掖市', 620000, 310),
(620800, '平凉市', '甘肃省,平凉市', 620000, 311),
(620900, '酒泉市', '甘肃省,酒泉市', 620000, 312),
(621000, '庆阳市', '甘肃省,庆阳市', 620000, 313),
(621100, '定西市', '甘肃省,定西市', 620000, 314),
(621200, '陇南市', '甘肃省,陇南市', 620000, 315),
(622900, '临夏回族自治州', '甘肃省,临夏回族自治州', 620000, 316),
(623000, '甘南藏族自治州', '甘肃省,甘南藏族自治州', 620000, 317),
(630100, '西宁市', '青海省,西宁市', 630000, 318),
(632100, '海东地区', '青海省,海东地区', 630000, 319),
(632200, '海北藏族自治州', '青海省,海北藏族自治州', 630000, 320),
(632300, '黄南藏族自治州', '青海省,黄南藏族自治州', 630000, 321),
(632500, '海南藏族自治州', '青海省,海南藏族自治州', 630000, 322),
(632600, '果洛藏族自治州', '青海省,果洛藏族自治州', 630000, 323),
(632700, '玉树藏族自治州', '青海省,玉树藏族自治州', 630000, 324),
(632800, '海西蒙古族藏族自治州', '青海省,海西蒙古族藏族自治州', 630000, 325),
(640100, '银川市', '宁夏回族自治区,银川市', 640000, 326),
(640200, '石嘴山市', '宁夏回族自治区,石嘴山市', 640000, 327),
(640300, '吴忠市', '宁夏回族自治区,吴忠市', 640000, 328),
(640400, '固原市', '宁夏回族自治区,固原市', 640000, 329),
(640500, '中卫市', '宁夏回族自治区,中卫市', 640000, 330),
(650100, '乌鲁木齐市', '新疆维吾尔自治区,乌鲁木齐市', 650000, 331),
(650200, '克拉玛依市', '新疆维吾尔自治区,克拉玛依市', 650000, 332),
(652100, '吐鲁番地区', '新疆维吾尔自治区,吐鲁番地区', 650000, 333),
(652200, '哈密地区', '新疆维吾尔自治区,哈密地区', 650000, 334),
(652300, '昌吉回族自治州', '新疆维吾尔自治区,昌吉回族自治州', 650000, 335),
(652700, '博尔塔拉蒙古自治州', '新疆维吾尔自治区,博尔塔拉蒙古自治州', 650000, 336),
(652800, '巴音郭楞蒙古自治州', '新疆维吾尔自治区,巴音郭楞蒙古自治州', 650000, 337),
(652900, '阿克苏地区', '新疆维吾尔自治区,阿克苏地区', 650000, 338),
(653000, '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州', 650000, 339),
(653100, '喀什地区', '新疆维吾尔自治区,喀什地区', 650000, 340),
(653200, '和田地区', '新疆维吾尔自治区,和田地区', 650000, 341),
(654000, '伊犁哈萨克自治州', '新疆维吾尔自治区,伊犁哈萨克自治州', 650000, 342),
(654200, '塔城地区', '新疆维吾尔自治区,塔城地区', 650000, 343),
(654300, '阿勒泰地区', '新疆维吾尔自治区,阿勒泰地区', 650000, 344),
(659000, '省直辖行政单位', '新疆维吾尔自治区,省直辖行政单位', 650000, 345),
(110101, '东城区', '北京市,北京市,东城区', 110100, 1),
(110102, '西城区', '北京市,北京市,西城区', 110100, 2),
(110103, '崇文区', '北京市,北京市,崇文区', 110100, 3),
(110104, '宣武区', '北京市,北京市,宣武区', 110100, 4),
(110105, '朝阳区', '北京市,北京市,朝阳区', 110100, 5),
(110106, '丰台区', '北京市,北京市,丰台区', 110100, 6),
(110107, '石景山区', '北京市,北京市,石景山区', 110100, 7),
(110108, '海淀区', '北京市,北京市,海淀区', 110100, 8),
(110109, '门头沟区', '北京市,北京市,门头沟区', 110100, 9),
(110111, '房山区', '北京市,北京市,房山区', 110100, 10),
(110112, '通州区', '北京市,北京市,通州区', 110100, 11),
(110113, '顺义区', '北京市,北京市,顺义区', 110100, 12),
(110114, '昌平区', '北京市,北京市,昌平区', 110100, 13),
(110115, '大兴区', '北京市,北京市,大兴区', 110100, 14),
(110116, '怀柔区', '北京市,北京市,怀柔区', 110100, 15),
(110117, '平谷区', '北京市,北京市,平谷区', 110100, 16),
(110228, '密云县', '北京市,县,密云县', 110200, 17),
(110229, '延庆县', '北京市,县,延庆县', 110200, 18),
(120101, '和平区', '天津市,市辖区,和平区', 120100, 19),
(120102, '河东区', '天津市,市辖区,河东区', 120100, 20),
(120103, '河西区', '天津市,市辖区,河西区', 120100, 21),
(120104, '南开区', '天津市,市辖区,南开区', 120100, 22),
(120105, '河北区', '天津市,市辖区,河北区', 120100, 23),
(120106, '红桥区', '天津市,市辖区,红桥区', 120100, 24),
(120107, '塘沽区', '天津市,市辖区,塘沽区', 120100, 25),
(120108, '汉沽区', '天津市,市辖区,汉沽区', 120100, 26),
(120109, '大港区', '天津市,市辖区,大港区', 120100, 27),
(120110, '东丽区', '天津市,市辖区,东丽区', 120100, 28),
(120111, '西青区', '天津市,市辖区,西青区', 120100, 29),
(120112, '津南区', '天津市,市辖区,津南区', 120100, 30),
(120113, '北辰区', '天津市,市辖区,北辰区', 120100, 31),
(120114, '武清区', '天津市,市辖区,武清区', 120100, 32),
(120115, '宝坻区', '天津市,市辖区,宝坻区', 120100, 33),
(120221, '宁河县', '天津市,县,宁河县', 120200, 34),
(120223, '静海县', '天津市,县,静海县', 120200, 35),
(120225, '蓟　县', '天津市,县,蓟　县', 120200, 36),
(130101, '市辖区', '河北省,石家庄市,市辖区', 130100, 37),
(130102, '长安区', '河北省,石家庄市,长安区', 130100, 38),
(130103, '桥东区', '河北省,石家庄市,桥东区', 130100, 39),
(130104, '桥西区', '河北省,石家庄市,桥西区', 130100, 40),
(130105, '新华区', '河北省,石家庄市,新华区', 130100, 41),
(130107, '井陉矿区', '河北省,石家庄市,井陉矿区', 130100, 42),
(130108, '裕华区', '河北省,石家庄市,裕华区', 130100, 43),
(130121, '井陉县', '河北省,石家庄市,井陉县', 130100, 44),
(130123, '正定县', '河北省,石家庄市,正定县', 130100, 45),
(130124, '栾城县', '河北省,石家庄市,栾城县', 130100, 46),
(130125, '行唐县', '河北省,石家庄市,行唐县', 130100, 47),
(130126, '灵寿县', '河北省,石家庄市,灵寿县', 130100, 48),
(130127, '高邑县', '河北省,石家庄市,高邑县', 130100, 49),
(130128, '深泽县', '河北省,石家庄市,深泽县', 130100, 50),
(130129, '赞皇县', '河北省,石家庄市,赞皇县', 130100, 51),
(130130, '无极县', '河北省,石家庄市,无极县', 130100, 52),
(130131, '平山县', '河北省,石家庄市,平山县', 130100, 53),
(130132, '元氏县', '河北省,石家庄市,元氏县', 130100, 54),
(130133, '赵　县', '河北省,石家庄市,赵　县', 130100, 55),
(130181, '辛集市', '河北省,石家庄市,辛集市', 130100, 56),
(130182, '藁城市', '河北省,石家庄市,藁城市', 130100, 57),
(130183, '晋州市', '河北省,石家庄市,晋州市', 130100, 58),
(130184, '新乐市', '河北省,石家庄市,新乐市', 130100, 59),
(130185, '鹿泉市', '河北省,石家庄市,鹿泉市', 130100, 60),
(130201, '市辖区', '河北省,唐山市,市辖区', 130200, 61),
(130202, '路南区', '河北省,唐山市,路南区', 130200, 62),
(130203, '路北区', '河北省,唐山市,路北区', 130200, 63),
(130204, '古冶区', '河北省,唐山市,古冶区', 130200, 64),
(130205, '开平区', '河北省,唐山市,开平区', 130200, 65),
(130207, '丰南区', '河北省,唐山市,丰南区', 130200, 66),
(130208, '丰润区', '河北省,唐山市,丰润区', 130200, 67),
(130223, '滦　县', '河北省,唐山市,滦　县', 130200, 68),
(130224, '滦南县', '河北省,唐山市,滦南县', 130200, 69),
(130225, '乐亭县', '河北省,唐山市,乐亭县', 130200, 70),
(130227, '迁西县', '河北省,唐山市,迁西县', 130200, 71),
(130229, '玉田县', '河北省,唐山市,玉田县', 130200, 72),
(130230, '唐海县', '河北省,唐山市,唐海县', 130200, 73),
(130281, '遵化市', '河北省,唐山市,遵化市', 130200, 74),
(130283, '迁安市', '河北省,唐山市,迁安市', 130200, 75),
(130301, '市辖区', '河北省,秦皇岛市,市辖区', 130300, 76),
(130302, '海港区', '河北省,秦皇岛市,海港区', 130300, 77),
(130303, '山海关区', '河北省,秦皇岛市,山海关区', 130300, 78),
(130304, '北戴河区', '河北省,秦皇岛市,北戴河区', 130300, 79),
(130321, '青龙满族自治县', '河北省,秦皇岛市,青龙满族自治县', 130300, 80),
(130322, '昌黎县', '河北省,秦皇岛市,昌黎县', 130300, 81),
(130323, '抚宁县', '河北省,秦皇岛市,抚宁县', 130300, 82),
(130324, '卢龙县', '河北省,秦皇岛市,卢龙县', 130300, 83),
(130401, '市辖区', '河北省,邯郸市,市辖区', 130400, 84),
(130402, '邯山区', '河北省,邯郸市,邯山区', 130400, 85),
(130403, '丛台区', '河北省,邯郸市,丛台区', 130400, 86),
(130404, '复兴区', '河北省,邯郸市,复兴区', 130400, 87),
(130406, '峰峰矿区', '河北省,邯郸市,峰峰矿区', 130400, 88),
(130421, '邯郸县', '河北省,邯郸市,邯郸县', 130400, 89),
(130423, '临漳县', '河北省,邯郸市,临漳县', 130400, 90),
(130424, '成安县', '河北省,邯郸市,成安县', 130400, 91),
(130425, '大名县', '河北省,邯郸市,大名县', 130400, 92),
(130426, '涉　县', '河北省,邯郸市,涉　县', 130400, 93),
(130427, '磁　县', '河北省,邯郸市,磁　县', 130400, 94),
(130428, '肥乡县', '河北省,邯郸市,肥乡县', 130400, 95),
(130429, '永年县', '河北省,邯郸市,永年县', 130400, 96),
(130430, '邱　县', '河北省,邯郸市,邱　县', 130400, 97),
(130431, '鸡泽县', '河北省,邯郸市,鸡泽县', 130400, 98),
(130432, '广平县', '河北省,邯郸市,广平县', 130400, 99),
(130433, '馆陶县', '河北省,邯郸市,馆陶县', 130400, 100),
(130434, '魏　县', '河北省,邯郸市,魏　县', 130400, 101),
(130435, '曲周县', '河北省,邯郸市,曲周县', 130400, 102),
(130481, '武安市', '河北省,邯郸市,武安市', 130400, 103),
(130501, '市辖区', '河北省,邢台市,市辖区', 130500, 104),
(130502, '桥东区', '河北省,邢台市,桥东区', 130500, 105),
(130503, '桥西区', '河北省,邢台市,桥西区', 130500, 106),
(130521, '邢台县', '河北省,邢台市,邢台县', 130500, 107),
(130522, '临城县', '河北省,邢台市,临城县', 130500, 108),
(130523, '内丘县', '河北省,邢台市,内丘县', 130500, 109),
(130524, '柏乡县', '河北省,邢台市,柏乡县', 130500, 110),
(130525, '隆尧县', '河北省,邢台市,隆尧县', 130500, 111),
(130526, '任　县', '河北省,邢台市,任　县', 130500, 112),
(130527, '南和县', '河北省,邢台市,南和县', 130500, 113),
(130528, '宁晋县', '河北省,邢台市,宁晋县', 130500, 114),
(130529, '巨鹿县', '河北省,邢台市,巨鹿县', 130500, 115),
(130530, '新河县', '河北省,邢台市,新河县', 130500, 116),
(130531, '广宗县', '河北省,邢台市,广宗县', 130500, 117),
(130532, '平乡县', '河北省,邢台市,平乡县', 130500, 118),
(130533, '威　县', '河北省,邢台市,威　县', 130500, 119),
(130534, '清河县', '河北省,邢台市,清河县', 130500, 120),
(130535, '临西县', '河北省,邢台市,临西县', 130500, 121),
(130581, '南宫市', '河北省,邢台市,南宫市', 130500, 122),
(130582, '沙河市', '河北省,邢台市,沙河市', 130500, 123),
(130601, '市辖区', '河北省,保定市,市辖区', 130600, 124),
(130602, '新市区', '河北省,保定市,新市区', 130600, 125),
(130603, '北市区', '河北省,保定市,北市区', 130600, 126),
(130604, '南市区', '河北省,保定市,南市区', 130600, 127),
(130621, '满城县', '河北省,保定市,满城县', 130600, 128),
(130622, '清苑县', '河北省,保定市,清苑县', 130600, 129),
(130623, '涞水县', '河北省,保定市,涞水县', 130600, 130),
(130624, '阜平县', '河北省,保定市,阜平县', 130600, 131),
(130625, '徐水县', '河北省,保定市,徐水县', 130600, 132),
(130626, '定兴县', '河北省,保定市,定兴县', 130600, 133),
(130627, '唐　县', '河北省,保定市,唐　县', 130600, 134),
(130628, '高阳县', '河北省,保定市,高阳县', 130600, 135),
(130629, '容城县', '河北省,保定市,容城县', 130600, 136),
(130630, '涞源县', '河北省,保定市,涞源县', 130600, 137),
(130631, '望都县', '河北省,保定市,望都县', 130600, 138),
(130632, '安新县', '河北省,保定市,安新县', 130600, 139),
(130633, '易　县', '河北省,保定市,易　县', 130600, 140),
(130634, '曲阳县', '河北省,保定市,曲阳县', 130600, 141),
(130635, '蠡　县', '河北省,保定市,蠡　县', 130600, 142),
(130636, '顺平县', '河北省,保定市,顺平县', 130600, 143),
(130637, '博野县', '河北省,保定市,博野县', 130600, 144),
(130638, '雄　县', '河北省,保定市,雄　县', 130600, 145),
(130681, '涿州市', '河北省,保定市,涿州市', 130600, 146),
(130682, '定州市', '河北省,保定市,定州市', 130600, 147),
(130683, '安国市', '河北省,保定市,安国市', 130600, 148),
(130684, '高碑店市', '河北省,保定市,高碑店市', 130600, 149),
(130701, '市辖区', '河北省,张家口市,市辖区', 130700, 150),
(130702, '桥东区', '河北省,张家口市,桥东区', 130700, 151),
(130703, '桥西区', '河北省,张家口市,桥西区', 130700, 152),
(130705, '宣化区', '河北省,张家口市,宣化区', 130700, 153),
(130706, '下花园区', '河北省,张家口市,下花园区', 130700, 154),
(130721, '宣化县', '河北省,张家口市,宣化县', 130700, 155),
(130722, '张北县', '河北省,张家口市,张北县', 130700, 156),
(130723, '康保县', '河北省,张家口市,康保县', 130700, 157),
(130724, '沽源县', '河北省,张家口市,沽源县', 130700, 158),
(130725, '尚义县', '河北省,张家口市,尚义县', 130700, 159),
(130726, '蔚　县', '河北省,张家口市,蔚　县', 130700, 160),
(130727, '阳原县', '河北省,张家口市,阳原县', 130700, 161),
(130728, '怀安县', '河北省,张家口市,怀安县', 130700, 162),
(130729, '万全县', '河北省,张家口市,万全县', 130700, 163),
(130730, '怀来县', '河北省,张家口市,怀来县', 130700, 164),
(130731, '涿鹿县', '河北省,张家口市,涿鹿县', 130700, 165),
(130732, '赤城县', '河北省,张家口市,赤城县', 130700, 166),
(130733, '崇礼县', '河北省,张家口市,崇礼县', 130700, 167),
(130801, '市辖区', '河北省,承德市,市辖区', 130800, 168),
(130802, '双桥区', '河北省,承德市,双桥区', 130800, 169),
(130803, '双滦区', '河北省,承德市,双滦区', 130800, 170),
(130804, '鹰手营子矿区', '河北省,承德市,鹰手营子矿区', 130800, 171),
(130821, '承德县', '河北省,承德市,承德县', 130800, 172),
(130822, '兴隆县', '河北省,承德市,兴隆县', 130800, 173),
(130823, '平泉县', '河北省,承德市,平泉县', 130800, 174),
(130824, '滦平县', '河北省,承德市,滦平县', 130800, 175),
(130825, '隆化县', '河北省,承德市,隆化县', 130800, 176),
(130826, '丰宁满族自治县', '河北省,承德市,丰宁满族自治县', 130800, 177),
(130827, '宽城满族自治县', '河北省,承德市,宽城满族自治县', 130800, 178),
(130828, '围场满族蒙古族自治县', '河北省,承德市,围场满族蒙古族自治县', 130800, 179),
(130901, '市辖区', '河北省,沧州市,市辖区', 130900, 180),
(130902, '新华区', '河北省,沧州市,新华区', 130900, 181),
(130903, '运河区', '河北省,沧州市,运河区', 130900, 182),
(130921, '沧　县', '河北省,沧州市,沧　县', 130900, 183),
(130922, '青　县', '河北省,沧州市,青　县', 130900, 184),
(130923, '东光县', '河北省,沧州市,东光县', 130900, 185),
(130924, '海兴县', '河北省,沧州市,海兴县', 130900, 186),
(130925, '盐山县', '河北省,沧州市,盐山县', 130900, 187),
(130926, '肃宁县', '河北省,沧州市,肃宁县', 130900, 188),
(130927, '南皮县', '河北省,沧州市,南皮县', 130900, 189),
(130928, '吴桥县', '河北省,沧州市,吴桥县', 130900, 190),
(130929, '献　县', '河北省,沧州市,献　县', 130900, 191),
(130930, '孟村回族自治县', '河北省,沧州市,孟村回族自治县', 130900, 192),
(130981, '泊头市', '河北省,沧州市,泊头市', 130900, 193),
(130982, '任丘市', '河北省,沧州市,任丘市', 130900, 194),
(130983, '黄骅市', '河北省,沧州市,黄骅市', 130900, 195),
(130984, '河间市', '河北省,沧州市,河间市', 130900, 196),
(131001, '市辖区', '河北省,廊坊市,市辖区', 131000, 197),
(131002, '安次区', '河北省,廊坊市,安次区', 131000, 198),
(131003, '广阳区', '河北省,廊坊市,广阳区', 131000, 199),
(131022, '固安县', '河北省,廊坊市,固安县', 131000, 200),
(131023, '永清县', '河北省,廊坊市,永清县', 131000, 201),
(131024, '香河县', '河北省,廊坊市,香河县', 131000, 202),
(131025, '大城县', '河北省,廊坊市,大城县', 131000, 203),
(131026, '文安县', '河北省,廊坊市,文安县', 131000, 204),
(131028, '大厂回族自治县', '河北省,廊坊市,大厂回族自治县', 131000, 205),
(131081, '霸州市', '河北省,廊坊市,霸州市', 131000, 206),
(131082, '三河市', '河北省,廊坊市,三河市', 131000, 207),
(131101, '市辖区', '河北省,衡水市,市辖区', 131100, 208),
(131102, '桃城区', '河北省,衡水市,桃城区', 131100, 209),
(131121, '枣强县', '河北省,衡水市,枣强县', 131100, 210),
(131122, '武邑县', '河北省,衡水市,武邑县', 131100, 211),
(131123, '武强县', '河北省,衡水市,武强县', 131100, 212),
(131124, '饶阳县', '河北省,衡水市,饶阳县', 131100, 213),
(131125, '安平县', '河北省,衡水市,安平县', 131100, 214),
(131126, '故城县', '河北省,衡水市,故城县', 131100, 215),
(131127, '景　县', '河北省,衡水市,景　县', 131100, 216),
(131128, '阜城县', '河北省,衡水市,阜城县', 131100, 217),
(131181, '冀州市', '河北省,衡水市,冀州市', 131100, 218),
(131182, '深州市', '河北省,衡水市,深州市', 131100, 219),
(140101, '市辖区', '山西省,太原市,市辖区', 140100, 220),
(140105, '小店区', '山西省,太原市,小店区', 140100, 221),
(140106, '迎泽区', '山西省,太原市,迎泽区', 140100, 222),
(140107, '杏花岭区', '山西省,太原市,杏花岭区', 140100, 223),
(140108, '尖草坪区', '山西省,太原市,尖草坪区', 140100, 224),
(140109, '万柏林区', '山西省,太原市,万柏林区', 140100, 225),
(140110, '晋源区', '山西省,太原市,晋源区', 140100, 226),
(140121, '清徐县', '山西省,太原市,清徐县', 140100, 227),
(140122, '阳曲县', '山西省,太原市,阳曲县', 140100, 228),
(140123, '娄烦县', '山西省,太原市,娄烦县', 140100, 229),
(140181, '古交市', '山西省,太原市,古交市', 140100, 230),
(140201, '市辖区', '山西省,大同市,市辖区', 140200, 231),
(140202, '城　区', '山西省,大同市,城　区', 140200, 232),
(140203, '矿　区', '山西省,大同市,矿　区', 140200, 233),
(140211, '南郊区', '山西省,大同市,南郊区', 140200, 234),
(140212, '新荣区', '山西省,大同市,新荣区', 140200, 235),
(140221, '阳高县', '山西省,大同市,阳高县', 140200, 236),
(140222, '天镇县', '山西省,大同市,天镇县', 140200, 237),
(140223, '广灵县', '山西省,大同市,广灵县', 140200, 238),
(140224, '灵丘县', '山西省,大同市,灵丘县', 140200, 239),
(140225, '浑源县', '山西省,大同市,浑源县', 140200, 240),
(140226, '左云县', '山西省,大同市,左云县', 140200, 241),
(140227, '大同县', '山西省,大同市,大同县', 140200, 242),
(140301, '市辖区', '山西省,阳泉市,市辖区', 140300, 243),
(140302, '城　区', '山西省,阳泉市,城　区', 140300, 244),
(140303, '矿　区', '山西省,阳泉市,矿　区', 140300, 245),
(140311, '郊　区', '山西省,阳泉市,郊　区', 140300, 246),
(140321, '平定县', '山西省,阳泉市,平定县', 140300, 247),
(140322, '盂　县', '山西省,阳泉市,盂　县', 140300, 248),
(140401, '市辖区', '山西省,长治市,市辖区', 140400, 249),
(140402, '城　区', '山西省,长治市,城　区', 140400, 250),
(140411, '郊　区', '山西省,长治市,郊　区', 140400, 251),
(140421, '长治县', '山西省,长治市,长治县', 140400, 252),
(140423, '襄垣县', '山西省,长治市,襄垣县', 140400, 253),
(140424, '屯留县', '山西省,长治市,屯留县', 140400, 254),
(140425, '平顺县', '山西省,长治市,平顺县', 140400, 255),
(140426, '黎城县', '山西省,长治市,黎城县', 140400, 256),
(140427, '壶关县', '山西省,长治市,壶关县', 140400, 257),
(140428, '长子县', '山西省,长治市,长子县', 140400, 258),
(140429, '武乡县', '山西省,长治市,武乡县', 140400, 259),
(140430, '沁　县', '山西省,长治市,沁　县', 140400, 260),
(140431, '沁源县', '山西省,长治市,沁源县', 140400, 261),
(140481, '潞城市', '山西省,长治市,潞城市', 140400, 262),
(140501, '市辖区', '山西省,晋城市,市辖区', 140500, 263),
(140502, '城　区', '山西省,晋城市,城　区', 140500, 264),
(140521, '沁水县', '山西省,晋城市,沁水县', 140500, 265),
(140522, '阳城县', '山西省,晋城市,阳城县', 140500, 266),
(140524, '陵川县', '山西省,晋城市,陵川县', 140500, 267),
(140525, '泽州县', '山西省,晋城市,泽州县', 140500, 268),
(140581, '高平市', '山西省,晋城市,高平市', 140500, 269),
(140601, '市辖区', '山西省,朔州市,市辖区', 140600, 270),
(140602, '朔城区', '山西省,朔州市,朔城区', 140600, 271),
(140603, '平鲁区', '山西省,朔州市,平鲁区', 140600, 272),
(140621, '山阴县', '山西省,朔州市,山阴县', 140600, 273),
(140622, '应　县', '山西省,朔州市,应　县', 140600, 274),
(140623, '右玉县', '山西省,朔州市,右玉县', 140600, 275),
(140624, '怀仁县', '山西省,朔州市,怀仁县', 140600, 276),
(140701, '市辖区', '山西省,晋中市,市辖区', 140700, 277),
(140702, '榆次区', '山西省,晋中市,榆次区', 140700, 278),
(140721, '榆社县', '山西省,晋中市,榆社县', 140700, 279),
(140722, '左权县', '山西省,晋中市,左权县', 140700, 280),
(140723, '和顺县', '山西省,晋中市,和顺县', 140700, 281),
(140724, '昔阳县', '山西省,晋中市,昔阳县', 140700, 282),
(140725, '寿阳县', '山西省,晋中市,寿阳县', 140700, 283),
(140726, '太谷县', '山西省,晋中市,太谷县', 140700, 284),
(140727, '祁　县', '山西省,晋中市,祁　县', 140700, 285),
(140728, '平遥县', '山西省,晋中市,平遥县', 140700, 286),
(140729, '灵石县', '山西省,晋中市,灵石县', 140700, 287),
(140781, '介休市', '山西省,晋中市,介休市', 140700, 288),
(140801, '市辖区', '山西省,运城市,市辖区', 140800, 289),
(140802, '盐湖区', '山西省,运城市,盐湖区', 140800, 290),
(140821, '临猗县', '山西省,运城市,临猗县', 140800, 291),
(140822, '万荣县', '山西省,运城市,万荣县', 140800, 292),
(140823, '闻喜县', '山西省,运城市,闻喜县', 140800, 293),
(140824, '稷山县', '山西省,运城市,稷山县', 140800, 294),
(140825, '新绛县', '山西省,运城市,新绛县', 140800, 295),
(140826, '绛　县', '山西省,运城市,绛　县', 140800, 296),
(140827, '垣曲县', '山西省,运城市,垣曲县', 140800, 297),
(140828, '夏　县', '山西省,运城市,夏　县', 140800, 298),
(140829, '平陆县', '山西省,运城市,平陆县', 140800, 299),
(140830, '芮城县', '山西省,运城市,芮城县', 140800, 300),
(140881, '永济市', '山西省,运城市,永济市', 140800, 301),
(140882, '河津市', '山西省,运城市,河津市', 140800, 302),
(140901, '市辖区', '山西省,忻州市,市辖区', 140900, 303),
(140902, '忻府区', '山西省,忻州市,忻府区', 140900, 304),
(140921, '定襄县', '山西省,忻州市,定襄县', 140900, 305),
(140922, '五台县', '山西省,忻州市,五台县', 140900, 306),
(140923, '代　县', '山西省,忻州市,代　县', 140900, 307),
(140924, '繁峙县', '山西省,忻州市,繁峙县', 140900, 308),
(140925, '宁武县', '山西省,忻州市,宁武县', 140900, 309),
(140926, '静乐县', '山西省,忻州市,静乐县', 140900, 310),
(140927, '神池县', '山西省,忻州市,神池县', 140900, 311),
(140928, '五寨县', '山西省,忻州市,五寨县', 140900, 312),
(140929, '岢岚县', '山西省,忻州市,岢岚县', 140900, 313),
(140930, '河曲县', '山西省,忻州市,河曲县', 140900, 314),
(140931, '保德县', '山西省,忻州市,保德县', 140900, 315),
(140932, '偏关县', '山西省,忻州市,偏关县', 140900, 316),
(140981, '原平市', '山西省,忻州市,原平市', 140900, 317),
(141001, '市辖区', '山西省,临汾市,市辖区', 141000, 318),
(141002, '尧都区', '山西省,临汾市,尧都区', 141000, 319),
(141021, '曲沃县', '山西省,临汾市,曲沃县', 141000, 320),
(141022, '翼城县', '山西省,临汾市,翼城县', 141000, 321),
(141023, '襄汾县', '山西省,临汾市,襄汾县', 141000, 322),
(141024, '洪洞县', '山西省,临汾市,洪洞县', 141000, 323),
(141025, '古　县', '山西省,临汾市,古　县', 141000, 324),
(141026, '安泽县', '山西省,临汾市,安泽县', 141000, 325),
(141027, '浮山县', '山西省,临汾市,浮山县', 141000, 326),
(141028, '吉　县', '山西省,临汾市,吉　县', 141000, 327),
(141029, '乡宁县', '山西省,临汾市,乡宁县', 141000, 328),
(141030, '大宁县', '山西省,临汾市,大宁县', 141000, 329),
(141031, '隰　县', '山西省,临汾市,隰　县', 141000, 330),
(141032, '永和县', '山西省,临汾市,永和县', 141000, 331),
(141033, '蒲　县', '山西省,临汾市,蒲　县', 141000, 332),
(141034, '汾西县', '山西省,临汾市,汾西县', 141000, 333),
(141081, '侯马市', '山西省,临汾市,侯马市', 141000, 334),
(141082, '霍州市', '山西省,临汾市,霍州市', 141000, 335),
(141101, '市辖区', '山西省,吕梁市,市辖区', 141100, 336),
(141102, '离石区', '山西省,吕梁市,离石区', 141100, 337),
(141121, '文水县', '山西省,吕梁市,文水县', 141100, 338),
(141122, '交城县', '山西省,吕梁市,交城县', 141100, 339),
(141123, '兴　县', '山西省,吕梁市,兴　县', 141100, 340),
(141124, '临　县', '山西省,吕梁市,临　县', 141100, 341),
(141125, '柳林县', '山西省,吕梁市,柳林县', 141100, 342),
(141126, '石楼县', '山西省,吕梁市,石楼县', 141100, 343),
(141127, '岚　县', '山西省,吕梁市,岚　县', 141100, 344),
(141128, '方山县', '山西省,吕梁市,方山县', 141100, 345),
(141129, '中阳县', '山西省,吕梁市,中阳县', 141100, 346),
(141130, '交口县', '山西省,吕梁市,交口县', 141100, 347),
(141181, '孝义市', '山西省,吕梁市,孝义市', 141100, 348),
(141182, '汾阳市', '山西省,吕梁市,汾阳市', 141100, 349),
(150101, '市辖区', '内蒙古自治区,呼和浩特市,市辖区', 150100, 350),
(150102, '新城区', '内蒙古自治区,呼和浩特市,新城区', 150100, 351),
(150103, '回民区', '内蒙古自治区,呼和浩特市,回民区', 150100, 352),
(150104, '玉泉区', '内蒙古自治区,呼和浩特市,玉泉区', 150100, 353),
(150105, '赛罕区', '内蒙古自治区,呼和浩特市,赛罕区', 150100, 354),
(150121, '土默特左旗', '内蒙古自治区,呼和浩特市,土默特左旗', 150100, 355),
(150122, '托克托县', '内蒙古自治区,呼和浩特市,托克托县', 150100, 356),
(150123, '和林格尔县', '内蒙古自治区,呼和浩特市,和林格尔县', 150100, 357),
(150124, '清水河县', '内蒙古自治区,呼和浩特市,清水河县', 150100, 358),
(150125, '武川县', '内蒙古自治区,呼和浩特市,武川县', 150100, 359),
(150201, '市辖区', '内蒙古自治区,包头市,市辖区', 150200, 360),
(150202, '东河区', '内蒙古自治区,包头市,东河区', 150200, 361),
(150203, '昆都仑区', '内蒙古自治区,包头市,昆都仑区', 150200, 362),
(150204, '青山区', '内蒙古自治区,包头市,青山区', 150200, 363),
(150205, '石拐区', '内蒙古自治区,包头市,石拐区', 150200, 364),
(150206, '白云矿区', '内蒙古自治区,包头市,白云矿区', 150200, 365),
(150207, '九原区', '内蒙古自治区,包头市,九原区', 150200, 366),
(150221, '土默特右旗', '内蒙古自治区,包头市,土默特右旗', 150200, 367),
(150222, '固阳县', '内蒙古自治区,包头市,固阳县', 150200, 368),
(150223, '达尔罕茂明安联合旗', '内蒙古自治区,包头市,达尔罕茂明安联合旗', 150200, 369),
(150301, '市辖区', '内蒙古自治区,乌海市,市辖区', 150300, 370),
(150302, '海勃湾区', '内蒙古自治区,乌海市,海勃湾区', 150300, 371),
(150303, '海南区', '内蒙古自治区,乌海市,海南区', 150300, 372),
(150304, '乌达区', '内蒙古自治区,乌海市,乌达区', 150300, 373),
(150401, '市辖区', '内蒙古自治区,赤峰市,市辖区', 150400, 374),
(150402, '红山区', '内蒙古自治区,赤峰市,红山区', 150400, 375),
(150403, '元宝山区', '内蒙古自治区,赤峰市,元宝山区', 150400, 376),
(150404, '松山区', '内蒙古自治区,赤峰市,松山区', 150400, 377),
(150421, '阿鲁科尔沁旗', '内蒙古自治区,赤峰市,阿鲁科尔沁旗', 150400, 378),
(150422, '巴林左旗', '内蒙古自治区,赤峰市,巴林左旗', 150400, 379),
(150423, '巴林右旗', '内蒙古自治区,赤峰市,巴林右旗', 150400, 380),
(150424, '林西县', '内蒙古自治区,赤峰市,林西县', 150400, 381),
(150425, '克什克腾旗', '内蒙古自治区,赤峰市,克什克腾旗', 150400, 382),
(150426, '翁牛特旗', '内蒙古自治区,赤峰市,翁牛特旗', 150400, 383),
(150428, '喀喇沁旗', '内蒙古自治区,赤峰市,喀喇沁旗', 150400, 384),
(150429, '宁城县', '内蒙古自治区,赤峰市,宁城县', 150400, 385),
(150430, '敖汉旗', '内蒙古自治区,赤峰市,敖汉旗', 150400, 386),
(150501, '市辖区', '内蒙古自治区,通辽市,市辖区', 150500, 387),
(150502, '科尔沁区', '内蒙古自治区,通辽市,科尔沁区', 150500, 388),
(150521, '科尔沁左翼中旗', '内蒙古自治区,通辽市,科尔沁左翼中旗', 150500, 389),
(150522, '科尔沁左翼后旗', '内蒙古自治区,通辽市,科尔沁左翼后旗', 150500, 390),
(150523, '开鲁县', '内蒙古自治区,通辽市,开鲁县', 150500, 391),
(150524, '库伦旗', '内蒙古自治区,通辽市,库伦旗', 150500, 392),
(150525, '奈曼旗', '内蒙古自治区,通辽市,奈曼旗', 150500, 393),
(150526, '扎鲁特旗', '内蒙古自治区,通辽市,扎鲁特旗', 150500, 394),
(150581, '霍林郭勒市', '内蒙古自治区,通辽市,霍林郭勒市', 150500, 395),
(150602, '东胜区', '内蒙古自治区,鄂尔多斯市,东胜区', 150600, 396),
(150621, '达拉特旗', '内蒙古自治区,鄂尔多斯市,达拉特旗', 150600, 397),
(150622, '准格尔旗', '内蒙古自治区,鄂尔多斯市,准格尔旗', 150600, 398),
(150623, '鄂托克前旗', '内蒙古自治区,鄂尔多斯市,鄂托克前旗', 150600, 399),
(150624, '鄂托克旗', '内蒙古自治区,鄂尔多斯市,鄂托克旗', 150600, 400),
(150625, '杭锦旗', '内蒙古自治区,鄂尔多斯市,杭锦旗', 150600, 401),
(150626, '乌审旗', '内蒙古自治区,鄂尔多斯市,乌审旗', 150600, 402),
(150627, '伊金霍洛旗', '内蒙古自治区,鄂尔多斯市,伊金霍洛旗', 150600, 403),
(150701, '市辖区', '内蒙古自治区,呼伦贝尔市,市辖区', 150700, 404),
(150702, '海拉尔区', '内蒙古自治区,呼伦贝尔市,海拉尔区', 150700, 405),
(150721, '阿荣旗', '内蒙古自治区,呼伦贝尔市,阿荣旗', 150700, 406),
(150722, '莫力达瓦达斡尔族自治旗', '内蒙古自治区,呼伦贝尔市,莫力达瓦达斡尔族自治旗', 150700, 407),
(150723, '鄂伦春自治旗', '内蒙古自治区,呼伦贝尔市,鄂伦春自治旗', 150700, 408),
(150724, '鄂温克族自治旗', '内蒙古自治区,呼伦贝尔市,鄂温克族自治旗', 150700, 409),
(150725, '陈巴尔虎旗', '内蒙古自治区,呼伦贝尔市,陈巴尔虎旗', 150700, 410),
(150726, '新巴尔虎左旗', '内蒙古自治区,呼伦贝尔市,新巴尔虎左旗', 150700, 411),
(150727, '新巴尔虎右旗', '内蒙古自治区,呼伦贝尔市,新巴尔虎右旗', 150700, 412),
(150781, '满洲里市', '内蒙古自治区,呼伦贝尔市,满洲里市', 150700, 413),
(150782, '牙克石市', '内蒙古自治区,呼伦贝尔市,牙克石市', 150700, 414),
(150783, '扎兰屯市', '内蒙古自治区,呼伦贝尔市,扎兰屯市', 150700, 415),
(150784, '额尔古纳市', '内蒙古自治区,呼伦贝尔市,额尔古纳市', 150700, 416),
(150785, '根河市', '内蒙古自治区,呼伦贝尔市,根河市', 150700, 417),
(150801, '市辖区', '内蒙古自治区,巴彦淖尔市,市辖区', 150800, 418),
(150802, '临河区', '内蒙古自治区,巴彦淖尔市,临河区', 150800, 419),
(150821, '五原县', '内蒙古自治区,巴彦淖尔市,五原县', 150800, 420),
(150822, '磴口县', '内蒙古自治区,巴彦淖尔市,磴口县', 150800, 421),
(150823, '乌拉特前旗', '内蒙古自治区,巴彦淖尔市,乌拉特前旗', 150800, 422),
(150824, '乌拉特中旗', '内蒙古自治区,巴彦淖尔市,乌拉特中旗', 150800, 423),
(150825, '乌拉特后旗', '内蒙古自治区,巴彦淖尔市,乌拉特后旗', 150800, 424),
(150826, '杭锦后旗', '内蒙古自治区,巴彦淖尔市,杭锦后旗', 150800, 425),
(150901, '市辖区', '内蒙古自治区,乌兰察布市,市辖区', 150900, 426),
(150902, '集宁区', '内蒙古自治区,乌兰察布市,集宁区', 150900, 427),
(150921, '卓资县', '内蒙古自治区,乌兰察布市,卓资县', 150900, 428),
(150922, '化德县', '内蒙古自治区,乌兰察布市,化德县', 150900, 429),
(150923, '商都县', '内蒙古自治区,乌兰察布市,商都县', 150900, 430),
(150924, '兴和县', '内蒙古自治区,乌兰察布市,兴和县', 150900, 431),
(150925, '凉城县', '内蒙古自治区,乌兰察布市,凉城县', 150900, 432),
(150926, '察哈尔右翼前旗', '内蒙古自治区,乌兰察布市,察哈尔右翼前旗', 150900, 433),
(150927, '察哈尔右翼中旗', '内蒙古自治区,乌兰察布市,察哈尔右翼中旗', 150900, 434),
(150928, '察哈尔右翼后旗', '内蒙古自治区,乌兰察布市,察哈尔右翼后旗', 150900, 435),
(150929, '四子王旗', '内蒙古自治区,乌兰察布市,四子王旗', 150900, 436),
(150981, '丰镇市', '内蒙古自治区,乌兰察布市,丰镇市', 150900, 437),
(152201, '乌兰浩特市', '内蒙古自治区,兴安盟,乌兰浩特市', 152200, 438),
(152202, '阿尔山市', '内蒙古自治区,兴安盟,阿尔山市', 152200, 439),
(152221, '科尔沁右翼前旗', '内蒙古自治区,兴安盟,科尔沁右翼前旗', 152200, 440),
(152222, '科尔沁右翼中旗', '内蒙古自治区,兴安盟,科尔沁右翼中旗', 152200, 441),
(152223, '扎赉特旗', '内蒙古自治区,兴安盟,扎赉特旗', 152200, 442),
(152224, '突泉县', '内蒙古自治区,兴安盟,突泉县', 152200, 443),
(152501, '二连浩特市', '内蒙古自治区,锡林郭勒盟,二连浩特市', 152500, 444),
(152502, '锡林浩特市', '内蒙古自治区,锡林郭勒盟,锡林浩特市', 152500, 445),
(152522, '阿巴嘎旗', '内蒙古自治区,锡林郭勒盟,阿巴嘎旗', 152500, 446),
(152523, '苏尼特左旗', '内蒙古自治区,锡林郭勒盟,苏尼特左旗', 152500, 447),
(152524, '苏尼特右旗', '内蒙古自治区,锡林郭勒盟,苏尼特右旗', 152500, 448),
(152525, '东乌珠穆沁旗', '内蒙古自治区,锡林郭勒盟,东乌珠穆沁旗', 152500, 449),
(152526, '西乌珠穆沁旗', '内蒙古自治区,锡林郭勒盟,西乌珠穆沁旗', 152500, 450),
(152527, '太仆寺旗', '内蒙古自治区,锡林郭勒盟,太仆寺旗', 152500, 451),
(152528, '镶黄旗', '内蒙古自治区,锡林郭勒盟,镶黄旗', 152500, 452),
(152529, '正镶白旗', '内蒙古自治区,锡林郭勒盟,正镶白旗', 152500, 453),
(152530, '正蓝旗', '内蒙古自治区,锡林郭勒盟,正蓝旗', 152500, 454),
(152531, '多伦县', '内蒙古自治区,锡林郭勒盟,多伦县', 152500, 455),
(152921, '阿拉善左旗', '内蒙古自治区,阿拉善盟,阿拉善左旗', 152900, 456),
(152922, '阿拉善右旗', '内蒙古自治区,阿拉善盟,阿拉善右旗', 152900, 457),
(152923, '额济纳旗', '内蒙古自治区,阿拉善盟,额济纳旗', 152900, 458),
(210101, '市辖区', '辽宁省,沈阳市,市辖区', 210100, 459),
(210102, '和平区', '辽宁省,沈阳市,和平区', 210100, 460),
(210103, '沈河区', '辽宁省,沈阳市,沈河区', 210100, 461),
(210104, '大东区', '辽宁省,沈阳市,大东区', 210100, 462),
(210105, '皇姑区', '辽宁省,沈阳市,皇姑区', 210100, 463),
(210106, '铁西区', '辽宁省,沈阳市,铁西区', 210100, 464),
(210111, '苏家屯区', '辽宁省,沈阳市,苏家屯区', 210100, 465),
(210112, '东陵区', '辽宁省,沈阳市,东陵区', 210100, 466),
(210113, '新城子区', '辽宁省,沈阳市,新城子区', 210100, 467),
(210114, '于洪区', '辽宁省,沈阳市,于洪区', 210100, 468),
(210122, '辽中县', '辽宁省,沈阳市,辽中县', 210100, 469),
(210123, '康平县', '辽宁省,沈阳市,康平县', 210100, 470),
(210124, '法库县', '辽宁省,沈阳市,法库县', 210100, 471),
(210181, '新民市', '辽宁省,沈阳市,新民市', 210100, 472),
(210201, '市辖区', '辽宁省,大连市,市辖区', 210200, 473),
(210202, '中山区', '辽宁省,大连市,中山区', 210200, 474),
(210203, '西岗区', '辽宁省,大连市,西岗区', 210200, 475),
(210204, '沙河口区', '辽宁省,大连市,沙河口区', 210200, 476),
(210211, '甘井子区', '辽宁省,大连市,甘井子区', 210200, 477),
(210212, '旅顺口区', '辽宁省,大连市,旅顺口区', 210200, 478),
(210213, '金州区', '辽宁省,大连市,金州区', 210200, 479),
(210224, '长海县', '辽宁省,大连市,长海县', 210200, 480),
(210281, '瓦房店市', '辽宁省,大连市,瓦房店市', 210200, 481),
(210282, '普兰店市', '辽宁省,大连市,普兰店市', 210200, 482),
(210283, '庄河市', '辽宁省,大连市,庄河市', 210200, 483),
(210301, '市辖区', '辽宁省,鞍山市,市辖区', 210300, 484),
(210302, '铁东区', '辽宁省,鞍山市,铁东区', 210300, 485),
(210303, '铁西区', '辽宁省,鞍山市,铁西区', 210300, 486),
(210304, '立山区', '辽宁省,鞍山市,立山区', 210300, 487),
(210311, '千山区', '辽宁省,鞍山市,千山区', 210300, 488),
(210321, '台安县', '辽宁省,鞍山市,台安县', 210300, 489),
(210323, '岫岩满族自治县', '辽宁省,鞍山市,岫岩满族自治县', 210300, 490),
(210381, '海城市', '辽宁省,鞍山市,海城市', 210300, 491),
(210401, '市辖区', '辽宁省,抚顺市,市辖区', 210400, 492),
(210402, '新抚区', '辽宁省,抚顺市,新抚区', 210400, 493),
(210403, '东洲区', '辽宁省,抚顺市,东洲区', 210400, 494),
(210404, '望花区', '辽宁省,抚顺市,望花区', 210400, 495),
(210411, '顺城区', '辽宁省,抚顺市,顺城区', 210400, 496),
(210421, '抚顺县', '辽宁省,抚顺市,抚顺县', 210400, 497),
(210422, '新宾满族自治县', '辽宁省,抚顺市,新宾满族自治县', 210400, 498),
(210423, '清原满族自治县', '辽宁省,抚顺市,清原满族自治县', 210400, 499),
(210501, '市辖区', '辽宁省,本溪市,市辖区', 210500, 500),
(210502, '平山区', '辽宁省,本溪市,平山区', 210500, 501),
(210503, '溪湖区', '辽宁省,本溪市,溪湖区', 210500, 502),
(210504, '明山区', '辽宁省,本溪市,明山区', 210500, 503),
(210505, '南芬区', '辽宁省,本溪市,南芬区', 210500, 504),
(210521, '本溪满族自治县', '辽宁省,本溪市,本溪满族自治县', 210500, 505),
(210522, '桓仁满族自治县', '辽宁省,本溪市,桓仁满族自治县', 210500, 506),
(210601, '市辖区', '辽宁省,丹东市,市辖区', 210600, 507),
(210602, '元宝区', '辽宁省,丹东市,元宝区', 210600, 508),
(210603, '振兴区', '辽宁省,丹东市,振兴区', 210600, 509),
(210604, '振安区', '辽宁省,丹东市,振安区', 210600, 510),
(210624, '宽甸满族自治县', '辽宁省,丹东市,宽甸满族自治县', 210600, 511),
(210681, '东港市', '辽宁省,丹东市,东港市', 210600, 512),
(210682, '凤城市', '辽宁省,丹东市,凤城市', 210600, 513),
(210701, '市辖区', '辽宁省,锦州市,市辖区', 210700, 514),
(210702, '古塔区', '辽宁省,锦州市,古塔区', 210700, 515),
(210703, '凌河区', '辽宁省,锦州市,凌河区', 210700, 516),
(210711, '太和区', '辽宁省,锦州市,太和区', 210700, 517),
(210726, '黑山县', '辽宁省,锦州市,黑山县', 210700, 518),
(210727, '义　县', '辽宁省,锦州市,义　县', 210700, 519),
(210781, '凌海市', '辽宁省,锦州市,凌海市', 210700, 520),
(210782, '北宁市', '辽宁省,锦州市,北宁市', 210700, 521),
(210801, '市辖区', '辽宁省,营口市,市辖区', 210800, 522),
(210802, '站前区', '辽宁省,营口市,站前区', 210800, 523),
(210803, '西市区', '辽宁省,营口市,西市区', 210800, 524),
(210804, '鲅鱼圈区', '辽宁省,营口市,鲅鱼圈区', 210800, 525),
(210811, '老边区', '辽宁省,营口市,老边区', 210800, 526),
(210881, '盖州市', '辽宁省,营口市,盖州市', 210800, 527),
(210882, '大石桥市', '辽宁省,营口市,大石桥市', 210800, 528),
(210901, '市辖区', '辽宁省,阜新市,市辖区', 210900, 529),
(210902, '海州区', '辽宁省,阜新市,海州区', 210900, 530),
(210903, '新邱区', '辽宁省,阜新市,新邱区', 210900, 531),
(210904, '太平区', '辽宁省,阜新市,太平区', 210900, 532),
(210905, '清河门区', '辽宁省,阜新市,清河门区', 210900, 533),
(210911, '细河区', '辽宁省,阜新市,细河区', 210900, 534),
(210921, '阜新蒙古族自治县', '辽宁省,阜新市,阜新蒙古族自治县', 210900, 535),
(210922, '彰武县', '辽宁省,阜新市,彰武县', 210900, 536),
(211001, '市辖区', '辽宁省,辽阳市,市辖区', 211000, 537),
(211002, '白塔区', '辽宁省,辽阳市,白塔区', 211000, 538),
(211003, '文圣区', '辽宁省,辽阳市,文圣区', 211000, 539),
(211004, '宏伟区', '辽宁省,辽阳市,宏伟区', 211000, 540),
(211005, '弓长岭区', '辽宁省,辽阳市,弓长岭区', 211000, 541),
(211011, '太子河区', '辽宁省,辽阳市,太子河区', 211000, 542),
(211021, '辽阳县', '辽宁省,辽阳市,辽阳县', 211000, 543),
(211081, '灯塔市', '辽宁省,辽阳市,灯塔市', 211000, 544),
(211101, '市辖区', '辽宁省,盘锦市,市辖区', 211100, 545),
(211102, '双台子区', '辽宁省,盘锦市,双台子区', 211100, 546),
(211103, '兴隆台区', '辽宁省,盘锦市,兴隆台区', 211100, 547),
(211121, '大洼县', '辽宁省,盘锦市,大洼县', 211100, 548),
(211122, '盘山县', '辽宁省,盘锦市,盘山县', 211100, 549),
(211201, '市辖区', '辽宁省,铁岭市,市辖区', 211200, 550),
(211202, '银州区', '辽宁省,铁岭市,银州区', 211200, 551),
(211204, '清河区', '辽宁省,铁岭市,清河区', 211200, 552),
(211221, '铁岭县', '辽宁省,铁岭市,铁岭县', 211200, 553),
(211223, '西丰县', '辽宁省,铁岭市,西丰县', 211200, 554),
(211224, '昌图县', '辽宁省,铁岭市,昌图县', 211200, 555),
(211281, '调兵山市', '辽宁省,铁岭市,调兵山市', 211200, 556),
(211282, '开原市', '辽宁省,铁岭市,开原市', 211200, 557),
(211301, '市辖区', '辽宁省,朝阳市,市辖区', 211300, 558),
(211302, '双塔区', '辽宁省,朝阳市,双塔区', 211300, 559),
(211303, '龙城区', '辽宁省,朝阳市,龙城区', 211300, 560),
(211321, '朝阳县', '辽宁省,朝阳市,朝阳县', 211300, 561),
(211322, '建平县', '辽宁省,朝阳市,建平县', 211300, 562),
(211324, '喀喇沁左翼蒙古族自治县', '辽宁省,朝阳市,喀喇沁左翼蒙古族自治县', 211300, 563),
(211381, '北票市', '辽宁省,朝阳市,北票市', 211300, 564),
(211382, '凌源市', '辽宁省,朝阳市,凌源市', 211300, 565),
(211401, '市辖区', '市辖区', 211400, 566),
(211402, '连山区', '连山区', 211400, 567),
(211403, '龙港区', '龙港区', 211400, 568),
(211404, '南票区', '南票区', 211400, 569),
(211421, '绥中县', '绥中县', 211400, 570),
(211422, '建昌县', '建昌县', 211400, 571),
(211481, '兴城市', '兴城市', 211400, 572),
(220101, '市辖区', '吉林省,长春市,市辖区', 220100, 573),
(220102, '南关区', '吉林省,长春市,南关区', 220100, 574),
(220103, '宽城区', '吉林省,长春市,宽城区', 220100, 575),
(220104, '朝阳区', '吉林省,长春市,朝阳区', 220100, 576),
(220105, '二道区', '吉林省,长春市,二道区', 220100, 577),
(220106, '绿园区', '吉林省,长春市,绿园区', 220100, 578),
(220112, '双阳区', '吉林省,长春市,双阳区', 220100, 579),
(220122, '农安县', '吉林省,长春市,农安县', 220100, 580),
(220181, '九台市', '吉林省,长春市,九台市', 220100, 581),
(220182, '榆树市', '吉林省,长春市,榆树市', 220100, 582),
(220183, '德惠市', '吉林省,长春市,德惠市', 220100, 583),
(220201, '市辖区', '吉林省,吉林市,市辖区', 220200, 584),
(220202, '昌邑区', '吉林省,吉林市,昌邑区', 220200, 585),
(220203, '龙潭区', '吉林省,吉林市,龙潭区', 220200, 586),
(220204, '船营区', '吉林省,吉林市,船营区', 220200, 587),
(220211, '丰满区', '吉林省,吉林市,丰满区', 220200, 588),
(220221, '永吉县', '吉林省,吉林市,永吉县', 220200, 589),
(220281, '蛟河市', '吉林省,吉林市,蛟河市', 220200, 590),
(220282, '桦甸市', '吉林省,吉林市,桦甸市', 220200, 591),
(220283, '舒兰市', '吉林省,吉林市,舒兰市', 220200, 592),
(220284, '磐石市', '吉林省,吉林市,磐石市', 220200, 593),
(220301, '市辖区', '吉林省,四平市,市辖区', 220300, 594),
(220302, '铁西区', '吉林省,四平市,铁西区', 220300, 595),
(220303, '铁东区', '吉林省,四平市,铁东区', 220300, 596),
(220322, '梨树县', '吉林省,四平市,梨树县', 220300, 597),
(220323, '伊通满族自治县', '吉林省,四平市,伊通满族自治县', 220300, 598),
(220381, '公主岭市', '吉林省,四平市,公主岭市', 220300, 599),
(220382, '双辽市', '吉林省,四平市,双辽市', 220300, 600),
(220401, '市辖区', '吉林省,辽源市,市辖区', 220400, 601),
(220402, '龙山区', '吉林省,辽源市,龙山区', 220400, 602),
(220403, '西安区', '吉林省,辽源市,西安区', 220400, 603),
(220421, '东丰县', '吉林省,辽源市,东丰县', 220400, 604),
(220422, '东辽县', '吉林省,辽源市,东辽县', 220400, 605),
(220501, '市辖区', '吉林省,通化市,市辖区', 220500, 606),
(220502, '东昌区', '吉林省,通化市,东昌区', 220500, 607),
(220503, '二道江区', '吉林省,通化市,二道江区', 220500, 608),
(220521, '通化县', '吉林省,通化市,通化县', 220500, 609),
(220523, '辉南县', '吉林省,通化市,辉南县', 220500, 610),
(220524, '柳河县', '吉林省,通化市,柳河县', 220500, 611),
(220581, '梅河口市', '吉林省,通化市,梅河口市', 220500, 612),
(220582, '集安市', '吉林省,通化市,集安市', 220500, 613),
(220601, '市辖区', '吉林省,白山市,市辖区', 220600, 614),
(220602, '八道江区', '吉林省,白山市,八道江区', 220600, 615),
(220621, '抚松县', '吉林省,白山市,抚松县', 220600, 616),
(220622, '靖宇县', '吉林省,白山市,靖宇县', 220600, 617),
(220623, '长白朝鲜族自治县', '吉林省,白山市,长白朝鲜族自治县', 220600, 618),
(220625, '江源县', '吉林省,白山市,江源县', 220600, 619),
(220681, '临江市', '吉林省,白山市,临江市', 220600, 620),
(220701, '市辖区', '吉林省,松原市,市辖区', 220700, 621),
(220702, '宁江区', '吉林省,松原市,宁江区', 220700, 622),
(220721, '前郭尔罗斯蒙古族自治县', '吉林省,松原市,前郭尔罗斯蒙古族自治县', 220700, 623),
(220722, '长岭县', '吉林省,松原市,长岭县', 220700, 624),
(220723, '乾安县', '吉林省,松原市,乾安县', 220700, 625),
(220724, '扶余县', '吉林省,松原市,扶余县', 220700, 626),
(220801, '市辖区', '吉林省,白城市,市辖区', 220800, 627),
(220802, '洮北区', '吉林省,白城市,洮北区', 220800, 628),
(220821, '镇赉县', '吉林省,白城市,镇赉县', 220800, 629),
(220822, '通榆县', '吉林省,白城市,通榆县', 220800, 630),
(220881, '洮南市', '吉林省,白城市,洮南市', 220800, 631),
(220882, '大安市', '吉林省,白城市,大安市', 220800, 632),
(222401, '延吉市', '吉林省,延边朝鲜族自治州,延吉市', 222400, 633),
(222402, '图们市', '吉林省,延边朝鲜族自治州,图们市', 222400, 634),
(222403, '敦化市', '吉林省,延边朝鲜族自治州,敦化市', 222400, 635),
(222404, '珲春市', '吉林省,延边朝鲜族自治州,珲春市', 222400, 636),
(222405, '龙井市', '吉林省,延边朝鲜族自治州,龙井市', 222400, 637),
(222406, '和龙市', '吉林省,延边朝鲜族自治州,和龙市', 222400, 638),
(222424, '汪清县', '吉林省,延边朝鲜族自治州,汪清县', 222400, 639),
(222426, '安图县', '吉林省,延边朝鲜族自治州,安图县', 222400, 640),
(230101, '市辖区', '黑龙江省,哈尔滨市,市辖区', 230100, 641),
(230102, '道里区', '黑龙江省,哈尔滨市,道里区', 230100, 642),
(230103, '南岗区', '黑龙江省,哈尔滨市,南岗区', 230100, 643),
(230104, '道外区', '黑龙江省,哈尔滨市,道外区', 230100, 644),
(230106, '香坊区', '黑龙江省,哈尔滨市,香坊区', 230100, 645),
(230107, '动力区', '黑龙江省,哈尔滨市,动力区', 230100, 646),
(230108, '平房区', '黑龙江省,哈尔滨市,平房区', 230100, 647),
(230109, '松北区', '黑龙江省,哈尔滨市,松北区', 230100, 648),
(230111, '呼兰区', '黑龙江省,哈尔滨市,呼兰区', 230100, 649),
(230123, '依兰县', '黑龙江省,哈尔滨市,依兰县', 230100, 650),
(230124, '方正县', '黑龙江省,哈尔滨市,方正县', 230100, 651),
(230125, '宾　县', '黑龙江省,哈尔滨市,宾　县', 230100, 652),
(230126, '巴彦县', '黑龙江省,哈尔滨市,巴彦县', 230100, 653),
(230127, '木兰县', '黑龙江省,哈尔滨市,木兰县', 230100, 654),
(230128, '通河县', '黑龙江省,哈尔滨市,通河县', 230100, 655),
(230129, '延寿县', '黑龙江省,哈尔滨市,延寿县', 230100, 656),
(230181, '阿城市', '黑龙江省,哈尔滨市,阿城市', 230100, 657),
(230182, '双城市', '黑龙江省,哈尔滨市,双城市', 230100, 658),
(230183, '尚志市', '黑龙江省,哈尔滨市,尚志市', 230100, 659),
(230184, '五常市', '黑龙江省,哈尔滨市,五常市', 230100, 660),
(230201, '市辖区', '黑龙江省,齐齐哈尔市,市辖区', 230200, 661),
(230202, '龙沙区', '黑龙江省,齐齐哈尔市,龙沙区', 230200, 662),
(230203, '建华区', '黑龙江省,齐齐哈尔市,建华区', 230200, 663),
(230204, '铁锋区', '黑龙江省,齐齐哈尔市,铁锋区', 230200, 664),
(230205, '昂昂溪区', '黑龙江省,齐齐哈尔市,昂昂溪区', 230200, 665),
(230206, '富拉尔基区', '黑龙江省,齐齐哈尔市,富拉尔基区', 230200, 666),
(230207, '碾子山区', '黑龙江省,齐齐哈尔市,碾子山区', 230200, 667),
(230208, '梅里斯达斡尔族区', '黑龙江省,齐齐哈尔市,梅里斯达斡尔族区', 230200, 668),
(230221, '龙江县', '黑龙江省,齐齐哈尔市,龙江县', 230200, 669),
(230223, '依安县', '黑龙江省,齐齐哈尔市,依安县', 230200, 670),
(230224, '泰来县', '黑龙江省,齐齐哈尔市,泰来县', 230200, 671),
(230225, '甘南县', '黑龙江省,齐齐哈尔市,甘南县', 230200, 672),
(230227, '富裕县', '黑龙江省,齐齐哈尔市,富裕县', 230200, 673),
(230229, '克山县', '黑龙江省,齐齐哈尔市,克山县', 230200, 674),
(230230, '克东县', '黑龙江省,齐齐哈尔市,克东县', 230200, 675),
(230231, '拜泉县', '黑龙江省,齐齐哈尔市,拜泉县', 230200, 676),
(230281, '讷河市', '黑龙江省,齐齐哈尔市,讷河市', 230200, 677),
(230301, '市辖区', '黑龙江省,鸡西市,市辖区', 230300, 678),
(230302, '鸡冠区', '黑龙江省,鸡西市,鸡冠区', 230300, 679),
(230303, '恒山区', '黑龙江省,鸡西市,恒山区', 230300, 680),
(230304, '滴道区', '黑龙江省,鸡西市,滴道区', 230300, 681),
(230305, '梨树区', '黑龙江省,鸡西市,梨树区', 230300, 682),
(230306, '城子河区', '黑龙江省,鸡西市,城子河区', 230300, 683),
(230307, '麻山区', '黑龙江省,鸡西市,麻山区', 230300, 684),
(230321, '鸡东县', '黑龙江省,鸡西市,鸡东县', 230300, 685),
(230381, '虎林市', '黑龙江省,鸡西市,虎林市', 230300, 686),
(230382, '密山市', '黑龙江省,鸡西市,密山市', 230300, 687),
(230401, '市辖区', '黑龙江省,鹤岗市,市辖区', 230400, 688),
(230402, '向阳区', '黑龙江省,鹤岗市,向阳区', 230400, 689),
(230403, '工农区', '黑龙江省,鹤岗市,工农区', 230400, 690),
(230404, '南山区', '黑龙江省,鹤岗市,南山区', 230400, 691),
(230405, '兴安区', '黑龙江省,鹤岗市,兴安区', 230400, 692),
(230406, '东山区', '黑龙江省,鹤岗市,东山区', 230400, 693),
(230407, '兴山区', '黑龙江省,鹤岗市,兴山区', 230400, 694),
(230421, '萝北县', '黑龙江省,鹤岗市,萝北县', 230400, 695),
(230422, '绥滨县', '黑龙江省,鹤岗市,绥滨县', 230400, 696),
(230501, '市辖区', '黑龙江省,双鸭山市,市辖区', 230500, 697),
(230502, '尖山区', '黑龙江省,双鸭山市,尖山区', 230500, 698),
(230503, '岭东区', '黑龙江省,双鸭山市,岭东区', 230500, 699),
(230505, '四方台区', '黑龙江省,双鸭山市,四方台区', 230500, 700),
(230506, '宝山区', '黑龙江省,双鸭山市,宝山区', 230500, 701),
(230521, '集贤县', '黑龙江省,双鸭山市,集贤县', 230500, 702),
(230522, '友谊县', '黑龙江省,双鸭山市,友谊县', 230500, 703),
(230523, '宝清县', '黑龙江省,双鸭山市,宝清县', 230500, 704),
(230524, '饶河县', '黑龙江省,双鸭山市,饶河县', 230500, 705),
(230601, '市辖区', '黑龙江省,大庆市,市辖区', 230600, 706),
(230602, '萨尔图区', '黑龙江省,大庆市,萨尔图区', 230600, 707),
(230603, '龙凤区', '黑龙江省,大庆市,龙凤区', 230600, 708),
(230604, '让胡路区', '黑龙江省,大庆市,让胡路区', 230600, 709),
(230605, '红岗区', '黑龙江省,大庆市,红岗区', 230600, 710),
(230606, '大同区', '黑龙江省,大庆市,大同区', 230600, 711),
(230621, '肇州县', '黑龙江省,大庆市,肇州县', 230600, 712),
(230622, '肇源县', '黑龙江省,大庆市,肇源县', 230600, 713),
(230623, '林甸县', '黑龙江省,大庆市,林甸县', 230600, 714),
(230624, '杜尔伯特蒙古族自治县', '黑龙江省,大庆市,杜尔伯特蒙古族自治县', 230600, 715),
(230701, '市辖区', '黑龙江省,伊春市,市辖区', 230700, 716),
(230702, '伊春区', '黑龙江省,伊春市,伊春区', 230700, 717),
(230703, '南岔区', '黑龙江省,伊春市,南岔区', 230700, 718),
(230704, '友好区', '黑龙江省,伊春市,友好区', 230700, 719),
(230705, '西林区', '黑龙江省,伊春市,西林区', 230700, 720),
(230706, '翠峦区', '黑龙江省,伊春市,翠峦区', 230700, 721),
(230707, '新青区', '黑龙江省,伊春市,新青区', 230700, 722),
(230708, '美溪区', '黑龙江省,伊春市,美溪区', 230700, 723),
(230709, '金山屯区', '黑龙江省,伊春市,金山屯区', 230700, 724),
(230710, '五营区', '黑龙江省,伊春市,五营区', 230700, 725),
(230711, '乌马河区', '黑龙江省,伊春市,乌马河区', 230700, 726),
(230712, '汤旺河区', '黑龙江省,伊春市,汤旺河区', 230700, 727),
(230713, '带岭区', '黑龙江省,伊春市,带岭区', 230700, 728),
(230714, '乌伊岭区', '黑龙江省,伊春市,乌伊岭区', 230700, 729),
(230715, '红星区', '黑龙江省,伊春市,红星区', 230700, 730),
(230716, '上甘岭区', '黑龙江省,伊春市,上甘岭区', 230700, 731),
(230722, '嘉荫县', '黑龙江省,伊春市,嘉荫县', 230700, 732),
(230781, '铁力市', '黑龙江省,伊春市,铁力市', 230700, 733),
(230801, '市辖区', '黑龙江省,佳木斯市,市辖区', 230800, 734),
(230802, '永红区', '黑龙江省,佳木斯市,永红区', 230800, 735),
(230803, '向阳区', '黑龙江省,佳木斯市,向阳区', 230800, 736),
(230804, '前进区', '黑龙江省,佳木斯市,前进区', 230800, 737),
(230805, '东风区', '黑龙江省,佳木斯市,东风区', 230800, 738),
(230811, '郊　区', '黑龙江省,佳木斯市,郊　区', 230800, 739),
(230822, '桦南县', '黑龙江省,佳木斯市,桦南县', 230800, 740),
(230826, '桦川县', '黑龙江省,佳木斯市,桦川县', 230800, 741),
(230828, '汤原县', '黑龙江省,佳木斯市,汤原县', 230800, 742),
(230833, '抚远县', '黑龙江省,佳木斯市,抚远县', 230800, 743),
(230881, '同江市', '黑龙江省,佳木斯市,同江市', 230800, 744),
(230882, '富锦市', '黑龙江省,佳木斯市,富锦市', 230800, 745),
(230901, '市辖区', '黑龙江省,七台河市,市辖区', 230900, 746),
(230902, '新兴区', '黑龙江省,七台河市,新兴区', 230900, 747),
(230903, '桃山区', '黑龙江省,七台河市,桃山区', 230900, 748),
(230904, '茄子河区', '黑龙江省,七台河市,茄子河区', 230900, 749),
(230921, '勃利县', '黑龙江省,七台河市,勃利县', 230900, 750),
(231001, '市辖区', '黑龙江省,牡丹江市,市辖区', 231000, 751),
(231002, '东安区', '黑龙江省,牡丹江市,东安区', 231000, 752),
(231003, '阳明区', '黑龙江省,牡丹江市,阳明区', 231000, 753),
(231004, '爱民区', '黑龙江省,牡丹江市,爱民区', 231000, 754),
(231005, '西安区', '黑龙江省,牡丹江市,西安区', 231000, 755),
(231024, '东宁县', '黑龙江省,牡丹江市,东宁县', 231000, 756),
(231025, '林口县', '黑龙江省,牡丹江市,林口县', 231000, 757),
(231081, '绥芬河市', '黑龙江省,牡丹江市,绥芬河市', 231000, 758),
(231083, '海林市', '黑龙江省,牡丹江市,海林市', 231000, 759),
(231084, '宁安市', '黑龙江省,牡丹江市,宁安市', 231000, 760),
(231085, '穆棱市', '黑龙江省,牡丹江市,穆棱市', 231000, 761),
(231101, '市辖区', '黑龙江省,黑河市,市辖区', 231100, 762),
(231102, '爱辉区', '黑龙江省,黑河市,爱辉区', 231100, 763),
(231121, '嫩江县', '黑龙江省,黑河市,嫩江县', 231100, 764),
(231123, '逊克县', '黑龙江省,黑河市,逊克县', 231100, 765),
(231124, '孙吴县', '黑龙江省,黑河市,孙吴县', 231100, 766),
(231181, '北安市', '黑龙江省,黑河市,北安市', 231100, 767),
(231182, '五大连池市', '黑龙江省,黑河市,五大连池市', 231100, 768),
(231201, '市辖区', '黑龙江省,绥化市,市辖区', 231200, 769),
(231202, '北林区', '黑龙江省,绥化市,北林区', 231200, 770),
(231221, '望奎县', '黑龙江省,绥化市,望奎县', 231200, 771),
(231222, '兰西县', '黑龙江省,绥化市,兰西县', 231200, 772),
(231223, '青冈县', '黑龙江省,绥化市,青冈县', 231200, 773),
(231224, '庆安县', '黑龙江省,绥化市,庆安县', 231200, 774),
(231225, '明水县', '黑龙江省,绥化市,明水县', 231200, 775),
(231226, '绥棱县', '黑龙江省,绥化市,绥棱县', 231200, 776),
(231281, '安达市', '黑龙江省,绥化市,安达市', 231200, 777),
(231282, '肇东市', '黑龙江省,绥化市,肇东市', 231200, 778),
(231283, '海伦市', '黑龙江省,绥化市,海伦市', 231200, 779),
(232721, '呼玛县', '黑龙江省,大兴安岭地区,呼玛县', 232700, 780),
(232722, '塔河县', '黑龙江省,大兴安岭地区,塔河县', 232700, 781),
(232723, '漠河县', '黑龙江省,大兴安岭地区,漠河县', 232700, 782),
(310101, '黄浦区', '上海市,市辖区,黄浦区', 310100, 783);
INSERT INTO `pw_areas` (`areaid`, `name`, `joinname`, `parentid`, `vieworder`) VALUES
(310103, '卢湾区', '上海市,市辖区,卢湾区', 310100, 784),
(310104, '徐汇区', '上海市,市辖区,徐汇区', 310100, 785),
(310105, '长宁区', '上海市,市辖区,长宁区', 310100, 786),
(310106, '静安区', '上海市,市辖区,静安区', 310100, 787),
(310107, '普陀区', '上海市,市辖区,普陀区', 310100, 788),
(310108, '闸北区', '上海市,市辖区,闸北区', 310100, 789),
(310109, '虹口区', '上海市,市辖区,虹口区', 310100, 790),
(310110, '杨浦区', '上海市,市辖区,杨浦区', 310100, 791),
(310112, '闵行区', '上海市,市辖区,闵行区', 310100, 792),
(310113, '宝山区', '上海市,市辖区,宝山区', 310100, 793),
(310114, '嘉定区', '上海市,市辖区,嘉定区', 310100, 794),
(310115, '浦东新区', '上海市,市辖区,浦东新区', 310100, 795),
(310116, '金山区', '上海市,市辖区,金山区', 310100, 796),
(310117, '松江区', '上海市,市辖区,松江区', 310100, 797),
(310118, '青浦区', '上海市,市辖区,青浦区', 310100, 798),
(310119, '南汇区', '上海市,市辖区,南汇区', 310100, 799),
(310120, '奉贤区', '上海市,市辖区,奉贤区', 310100, 800),
(310230, '崇明县', '上海市,县,崇明县', 310200, 801),
(320101, '市辖区', '江苏省,南京市,市辖区', 320100, 802),
(320102, '玄武区', '江苏省,南京市,玄武区', 320100, 803),
(320103, '白下区', '江苏省,南京市,白下区', 320100, 804),
(320104, '秦淮区', '江苏省,南京市,秦淮区', 320100, 805),
(320105, '建邺区', '江苏省,南京市,建邺区', 320100, 806),
(320106, '鼓楼区', '江苏省,南京市,鼓楼区', 320100, 807),
(320107, '下关区', '江苏省,南京市,下关区', 320100, 808),
(320111, '浦口区', '江苏省,南京市,浦口区', 320100, 809),
(320113, '栖霞区', '江苏省,南京市,栖霞区', 320100, 810),
(320114, '雨花台区', '江苏省,南京市,雨花台区', 320100, 811),
(320115, '江宁区', '江苏省,南京市,江宁区', 320100, 812),
(320116, '六合区', '江苏省,南京市,六合区', 320100, 813),
(320124, '溧水县', '江苏省,南京市,溧水县', 320100, 814),
(320125, '高淳县', '江苏省,南京市,高淳县', 320100, 815),
(320201, '市辖区', '江苏省,无锡市,市辖区', 320200, 816),
(320202, '崇安区', '江苏省,无锡市,崇安区', 320200, 817),
(320203, '南长区', '江苏省,无锡市,南长区', 320200, 818),
(320204, '北塘区', '江苏省,无锡市,北塘区', 320200, 819),
(320205, '锡山区', '江苏省,无锡市,锡山区', 320200, 820),
(320206, '惠山区', '江苏省,无锡市,惠山区', 320200, 821),
(320211, '滨湖区', '江苏省,无锡市,滨湖区', 320200, 822),
(320281, '江阴市', '江苏省,无锡市,江阴市', 320200, 823),
(320282, '宜兴市', '江苏省,无锡市,宜兴市', 320200, 824),
(320301, '市辖区', '江苏省,徐州市,市辖区', 320300, 825),
(320302, '鼓楼区', '江苏省,徐州市,鼓楼区', 320300, 826),
(320303, '云龙区', '江苏省,徐州市,云龙区', 320300, 827),
(320304, '九里区', '江苏省,徐州市,九里区', 320300, 828),
(320305, '贾汪区', '江苏省,徐州市,贾汪区', 320300, 829),
(320311, '泉山区', '江苏省,徐州市,泉山区', 320300, 830),
(320321, '丰　县', '江苏省,徐州市,丰　县', 320300, 831),
(320322, '沛　县', '江苏省,徐州市,沛　县', 320300, 832),
(320323, '铜山县', '江苏省,徐州市,铜山县', 320300, 833),
(320324, '睢宁县', '江苏省,徐州市,睢宁县', 320300, 834),
(320381, '新沂市', '江苏省,徐州市,新沂市', 320300, 835),
(320382, '邳州市', '江苏省,徐州市,邳州市', 320300, 836),
(320401, '市辖区', '江苏省,常州市,市辖区', 320400, 837),
(320402, '天宁区', '江苏省,常州市,天宁区', 320400, 838),
(320404, '钟楼区', '江苏省,常州市,钟楼区', 320400, 839),
(320405, '戚墅堰区', '江苏省,常州市,戚墅堰区', 320400, 840),
(320411, '新北区', '江苏省,常州市,新北区', 320400, 841),
(320412, '武进区', '江苏省,常州市,武进区', 320400, 842),
(320481, '溧阳市', '江苏省,常州市,溧阳市', 320400, 843),
(320482, '金坛市', '江苏省,常州市,金坛市', 320400, 844),
(320501, '市辖区', '江苏省,苏州市,市辖区', 320500, 845),
(320502, '沧浪区', '江苏省,苏州市,沧浪区', 320500, 846),
(320503, '平江区', '江苏省,苏州市,平江区', 320500, 847),
(320504, '金阊区', '江苏省,苏州市,金阊区', 320500, 848),
(320505, '虎丘区', '江苏省,苏州市,虎丘区', 320500, 849),
(320506, '吴中区', '江苏省,苏州市,吴中区', 320500, 850),
(320507, '相城区', '江苏省,苏州市,相城区', 320500, 851),
(320581, '常熟市', '江苏省,苏州市,常熟市', 320500, 852),
(320582, '张家港市', '江苏省,苏州市,张家港市', 320500, 853),
(320583, '昆山市', '江苏省,苏州市,昆山市', 320500, 854),
(320584, '吴江市', '江苏省,苏州市,吴江市', 320500, 855),
(320585, '太仓市', '江苏省,苏州市,太仓市', 320500, 856),
(320601, '市辖区', '江苏省,南通市,市辖区', 320600, 857),
(320602, '崇川区', '江苏省,南通市,崇川区', 320600, 858),
(320611, '港闸区', '江苏省,南通市,港闸区', 320600, 859),
(320621, '海安县', '江苏省,南通市,海安县', 320600, 860),
(320623, '如东县', '江苏省,南通市,如东县', 320600, 861),
(320681, '启东市', '江苏省,南通市,启东市', 320600, 862),
(320682, '如皋市', '江苏省,南通市,如皋市', 320600, 863),
(320683, '通州市', '江苏省,南通市,通州市', 320600, 864),
(320684, '海门市', '江苏省,南通市,海门市', 320600, 865),
(320701, '市辖区', '江苏省,连云港市,市辖区', 320700, 866),
(320703, '连云区', '江苏省,连云港市,连云区', 320700, 867),
(320705, '新浦区', '江苏省,连云港市,新浦区', 320700, 868),
(320706, '海州区', '江苏省,连云港市,海州区', 320700, 869),
(320721, '赣榆县', '江苏省,连云港市,赣榆县', 320700, 870),
(320722, '东海县', '江苏省,连云港市,东海县', 320700, 871),
(320723, '灌云县', '江苏省,连云港市,灌云县', 320700, 872),
(320724, '灌南县', '江苏省,连云港市,灌南县', 320700, 873),
(320801, '市辖区', '江苏省,淮安市,市辖区', 320800, 874),
(320802, '清河区', '江苏省,淮安市,清河区', 320800, 875),
(320803, '楚州区', '江苏省,淮安市,楚州区', 320800, 876),
(320804, '淮阴区', '江苏省,淮安市,淮阴区', 320800, 877),
(320811, '清浦区', '江苏省,淮安市,清浦区', 320800, 878),
(320826, '涟水县', '江苏省,淮安市,涟水县', 320800, 879),
(320829, '洪泽县', '江苏省,淮安市,洪泽县', 320800, 880),
(320830, '盱眙县', '江苏省,淮安市,盱眙县', 320800, 881),
(320831, '金湖县', '江苏省,淮安市,金湖县', 320800, 882),
(320901, '市辖区', '江苏省,盐城市,市辖区', 320900, 883),
(320902, '亭湖区', '江苏省,盐城市,亭湖区', 320900, 884),
(320903, '盐都区', '江苏省,盐城市,盐都区', 320900, 885),
(320921, '响水县', '江苏省,盐城市,响水县', 320900, 886),
(320922, '滨海县', '江苏省,盐城市,滨海县', 320900, 887),
(320923, '阜宁县', '江苏省,盐城市,阜宁县', 320900, 888),
(320924, '射阳县', '江苏省,盐城市,射阳县', 320900, 889),
(320925, '建湖县', '江苏省,盐城市,建湖县', 320900, 890),
(320981, '东台市', '江苏省,盐城市,东台市', 320900, 891),
(320982, '大丰市', '江苏省,盐城市,大丰市', 320900, 892),
(321001, '市辖区', '江苏省,扬州市,市辖区', 321000, 893),
(321002, '广陵区', '江苏省,扬州市,广陵区', 321000, 894),
(321003, '邗江区', '江苏省,扬州市,邗江区', 321000, 895),
(321011, '郊　区', '江苏省,扬州市,郊　区', 321000, 896),
(321023, '宝应县', '江苏省,扬州市,宝应县', 321000, 897),
(321081, '仪征市', '江苏省,扬州市,仪征市', 321000, 898),
(321084, '高邮市', '江苏省,扬州市,高邮市', 321000, 899),
(321088, '江都市', '江苏省,扬州市,江都市', 321000, 900),
(321101, '市辖区', '江苏省,镇江市,市辖区', 321100, 901),
(321102, '京口区', '江苏省,镇江市,京口区', 321100, 902),
(321111, '润州区', '江苏省,镇江市,润州区', 321100, 903),
(321112, '丹徒区', '江苏省,镇江市,丹徒区', 321100, 904),
(321181, '丹阳市', '江苏省,镇江市,丹阳市', 321100, 905),
(321182, '扬中市', '江苏省,镇江市,扬中市', 321100, 906),
(321183, '句容市', '江苏省,镇江市,句容市', 321100, 907),
(321201, '市辖区', '江苏省,泰州市,市辖区', 321200, 908),
(321202, '海陵区', '江苏省,泰州市,海陵区', 321200, 909),
(321203, '高港区', '江苏省,泰州市,高港区', 321200, 910),
(321281, '兴化市', '江苏省,泰州市,兴化市', 321200, 911),
(321282, '靖江市', '江苏省,泰州市,靖江市', 321200, 912),
(321283, '泰兴市', '江苏省,泰州市,泰兴市', 321200, 913),
(321284, '姜堰市', '江苏省,泰州市,姜堰市', 321200, 914),
(321301, '市辖区', '江苏省,宿迁市,市辖区', 321300, 915),
(321302, '宿城区', '江苏省,宿迁市,宿城区', 321300, 916),
(321311, '宿豫区', '江苏省,宿迁市,宿豫区', 321300, 917),
(321322, '沭阳县', '江苏省,宿迁市,沭阳县', 321300, 918),
(321323, '泗阳县', '江苏省,宿迁市,泗阳县', 321300, 919),
(321324, '泗洪县', '江苏省,宿迁市,泗洪县', 321300, 920),
(330101, '市辖区', '浙江省,杭州市,市辖区', 330100, 921),
(330102, '上城区', '浙江省,杭州市,上城区', 330100, 922),
(330103, '下城区', '浙江省,杭州市,下城区', 330100, 923),
(330104, '江干区', '浙江省,杭州市,江干区', 330100, 924),
(330105, '拱墅区', '浙江省,杭州市,拱墅区', 330100, 925),
(330106, '西湖区', '浙江省,杭州市,西湖区', 330100, 926),
(330108, '滨江区', '浙江省,杭州市,滨江区', 330100, 927),
(330109, '萧山区', '浙江省,杭州市,萧山区', 330100, 928),
(330110, '余杭区', '浙江省,杭州市,余杭区', 330100, 929),
(330122, '桐庐县', '浙江省,杭州市,桐庐县', 330100, 930),
(330127, '淳安县', '浙江省,杭州市,淳安县', 330100, 931),
(330182, '建德市', '浙江省,杭州市,建德市', 330100, 932),
(330183, '富阳市', '浙江省,杭州市,富阳市', 330100, 933),
(330185, '临安市', '浙江省,杭州市,临安市', 330100, 934),
(330201, '市辖区', '浙江省,宁波市,市辖区', 330200, 935),
(330203, '海曙区', '浙江省,宁波市,海曙区', 330200, 936),
(330204, '江东区', '浙江省,宁波市,江东区', 330200, 937),
(330205, '江北区', '浙江省,宁波市,江北区', 330200, 938),
(330206, '北仑区', '浙江省,宁波市,北仑区', 330200, 939),
(330211, '镇海区', '浙江省,宁波市,镇海区', 330200, 940),
(330212, '鄞州区', '浙江省,宁波市,鄞州区', 330200, 941),
(330225, '象山县', '浙江省,宁波市,象山县', 330200, 942),
(330226, '宁海县', '浙江省,宁波市,宁海县', 330200, 943),
(330281, '余姚市', '浙江省,宁波市,余姚市', 330200, 944),
(330282, '慈溪市', '浙江省,宁波市,慈溪市', 330200, 945),
(330283, '奉化市', '浙江省,宁波市,奉化市', 330200, 946),
(330301, '市辖区', '浙江省,温州市,市辖区', 330300, 947),
(330302, '鹿城区', '浙江省,温州市,鹿城区', 330300, 948),
(330303, '龙湾区', '浙江省,温州市,龙湾区', 330300, 949),
(330304, '瓯海区', '浙江省,温州市,瓯海区', 330300, 950),
(330322, '洞头县', '浙江省,温州市,洞头县', 330300, 951),
(330324, '永嘉县', '浙江省,温州市,永嘉县', 330300, 952),
(330326, '平阳县', '浙江省,温州市,平阳县', 330300, 953),
(330327, '苍南县', '浙江省,温州市,苍南县', 330300, 954),
(330328, '文成县', '浙江省,温州市,文成县', 330300, 955),
(330329, '泰顺县', '浙江省,温州市,泰顺县', 330300, 956),
(330381, '瑞安市', '浙江省,温州市,瑞安市', 330300, 957),
(330382, '乐清市', '浙江省,温州市,乐清市', 330300, 958),
(330401, '市辖区', '浙江省,嘉兴市,市辖区', 330400, 959),
(330402, '秀城区', '浙江省,嘉兴市,秀城区', 330400, 960),
(330411, '秀洲区', '浙江省,嘉兴市,秀洲区', 330400, 961),
(330421, '嘉善县', '浙江省,嘉兴市,嘉善县', 330400, 962),
(330424, '海盐县', '浙江省,嘉兴市,海盐县', 330400, 963),
(330481, '海宁市', '浙江省,嘉兴市,海宁市', 330400, 964),
(330482, '平湖市', '浙江省,嘉兴市,平湖市', 330400, 965),
(330483, '桐乡市', '浙江省,嘉兴市,桐乡市', 330400, 966),
(330501, '市辖区', '浙江省,湖州市,市辖区', 330500, 967),
(330502, '吴兴区', '浙江省,湖州市,吴兴区', 330500, 968),
(330503, '南浔区', '浙江省,湖州市,南浔区', 330500, 969),
(330521, '德清县', '浙江省,湖州市,德清县', 330500, 970),
(330522, '长兴县', '浙江省,湖州市,长兴县', 330500, 971),
(330523, '安吉县', '浙江省,湖州市,安吉县', 330500, 972),
(330601, '市辖区', '浙江省,绍兴市,市辖区', 330600, 973),
(330602, '越城区', '浙江省,绍兴市,越城区', 330600, 974),
(330621, '绍兴县', '浙江省,绍兴市,绍兴县', 330600, 975),
(330624, '新昌县', '浙江省,绍兴市,新昌县', 330600, 976),
(330681, '诸暨市', '浙江省,绍兴市,诸暨市', 330600, 977),
(330682, '上虞市', '浙江省,绍兴市,上虞市', 330600, 978),
(330683, '嵊州市', '浙江省,绍兴市,嵊州市', 330600, 979),
(330701, '市辖区', '浙江省,金华市,市辖区', 330700, 980),
(330702, '婺城区', '浙江省,金华市,婺城区', 330700, 981),
(330703, '金东区', '浙江省,金华市,金东区', 330700, 982),
(330723, '武义县', '浙江省,金华市,武义县', 330700, 983),
(330726, '浦江县', '浙江省,金华市,浦江县', 330700, 984),
(330727, '磐安县', '浙江省,金华市,磐安县', 330700, 985),
(330781, '兰溪市', '浙江省,金华市,兰溪市', 330700, 986),
(330782, '义乌市', '浙江省,金华市,义乌市', 330700, 987),
(330783, '东阳市', '浙江省,金华市,东阳市', 330700, 988),
(330784, '永康市', '浙江省,金华市,永康市', 330700, 989),
(330801, '市辖区', '浙江省,衢州市,市辖区', 330800, 990),
(330802, '柯城区', '浙江省,衢州市,柯城区', 330800, 991),
(330803, '衢江区', '浙江省,衢州市,衢江区', 330800, 992),
(330822, '常山县', '浙江省,衢州市,常山县', 330800, 993),
(330824, '开化县', '浙江省,衢州市,开化县', 330800, 994),
(330825, '龙游县', '浙江省,衢州市,龙游县', 330800, 995),
(330881, '江山市', '浙江省,衢州市,江山市', 330800, 996),
(330901, '市辖区', '浙江省,舟山市,市辖区', 330900, 997),
(330902, '定海区', '浙江省,舟山市,定海区', 330900, 998),
(330903, '普陀区', '浙江省,舟山市,普陀区', 330900, 999),
(330921, '岱山县', '浙江省,舟山市,岱山县', 330900, 1000),
(330922, '嵊泗县', '浙江省,舟山市,嵊泗县', 330900, 1001),
(331001, '市辖区', '浙江省,台州市,市辖区', 331000, 1002),
(331002, '椒江区', '浙江省,台州市,椒江区', 331000, 1003),
(331003, '黄岩区', '浙江省,台州市,黄岩区', 331000, 1004),
(331004, '路桥区', '浙江省,台州市,路桥区', 331000, 1005),
(331021, '玉环县', '浙江省,台州市,玉环县', 331000, 1006),
(331022, '三门县', '浙江省,台州市,三门县', 331000, 1007),
(331023, '天台县', '浙江省,台州市,天台县', 331000, 1008),
(331024, '仙居县', '浙江省,台州市,仙居县', 331000, 1009),
(331081, '温岭市', '浙江省,台州市,温岭市', 331000, 1010),
(331082, '临海市', '浙江省,台州市,临海市', 331000, 1011),
(331101, '市辖区', '浙江省,丽水市,市辖区', 331100, 1012),
(331102, '莲都区', '浙江省,丽水市,莲都区', 331100, 1013),
(331121, '青田县', '浙江省,丽水市,青田县', 331100, 1014),
(331122, '缙云县', '浙江省,丽水市,缙云县', 331100, 1015),
(331123, '遂昌县', '浙江省,丽水市,遂昌县', 331100, 1016),
(331124, '松阳县', '浙江省,丽水市,松阳县', 331100, 1017),
(331125, '云和县', '浙江省,丽水市,云和县', 331100, 1018),
(331126, '庆元县', '浙江省,丽水市,庆元县', 331100, 1019),
(331127, '景宁畲族自治县', '浙江省,丽水市,景宁畲族自治县', 331100, 1020),
(331181, '龙泉市', '浙江省,丽水市,龙泉市', 331100, 1021),
(340101, '市辖区', '安徽省,合肥市,市辖区', 340100, 1022),
(340102, '瑶海区', '安徽省,合肥市,瑶海区', 340100, 1023),
(340103, '庐阳区', '安徽省,合肥市,庐阳区', 340100, 1024),
(340104, '蜀山区', '安徽省,合肥市,蜀山区', 340100, 1025),
(340111, '包河区', '安徽省,合肥市,包河区', 340100, 1026),
(340121, '长丰县', '安徽省,合肥市,长丰县', 340100, 1027),
(340122, '肥东县', '安徽省,合肥市,肥东县', 340100, 1028),
(340123, '肥西县', '安徽省,合肥市,肥西县', 340100, 1029),
(340201, '市辖区', '安徽省,芜湖市,市辖区', 340200, 1030),
(340202, '镜湖区', '安徽省,芜湖市,镜湖区', 340200, 1031),
(340203, '马塘区', '安徽省,芜湖市,马塘区', 340200, 1032),
(340204, '新芜区', '安徽省,芜湖市,新芜区', 340200, 1033),
(340207, '鸠江区', '安徽省,芜湖市,鸠江区', 340200, 1034),
(340221, '芜湖县', '安徽省,芜湖市,芜湖县', 340200, 1035),
(340222, '繁昌县', '安徽省,芜湖市,繁昌县', 340200, 1036),
(340223, '南陵县', '安徽省,芜湖市,南陵县', 340200, 1037),
(340301, '市辖区', '安徽省,蚌埠市,市辖区', 340300, 1038),
(340302, '龙子湖区', '安徽省,蚌埠市,龙子湖区', 340300, 1039),
(340303, '蚌山区', '安徽省,蚌埠市,蚌山区', 340300, 1040),
(340304, '禹会区', '安徽省,蚌埠市,禹会区', 340300, 1041),
(340311, '淮上区', '安徽省,蚌埠市,淮上区', 340300, 1042),
(340321, '怀远县', '安徽省,蚌埠市,怀远县', 340300, 1043),
(340322, '五河县', '安徽省,蚌埠市,五河县', 340300, 1044),
(340323, '固镇县', '安徽省,蚌埠市,固镇县', 340300, 1045),
(340401, '市辖区', '安徽省,淮南市,市辖区', 340400, 1046),
(340402, '大通区', '安徽省,淮南市,大通区', 340400, 1047),
(340403, '田家庵区', '安徽省,淮南市,田家庵区', 340400, 1048),
(340404, '谢家集区', '安徽省,淮南市,谢家集区', 340400, 1049),
(340405, '八公山区', '安徽省,淮南市,八公山区', 340400, 1050),
(340406, '潘集区', '安徽省,淮南市,潘集区', 340400, 1051),
(340421, '凤台县', '安徽省,淮南市,凤台县', 340400, 1052),
(340501, '市辖区', '安徽省,马鞍山市,市辖区', 340500, 1053),
(340502, '金家庄区', '安徽省,马鞍山市,金家庄区', 340500, 1054),
(340503, '花山区', '安徽省,马鞍山市,花山区', 340500, 1055),
(340504, '雨山区', '安徽省,马鞍山市,雨山区', 340500, 1056),
(340521, '当涂县', '安徽省,马鞍山市,当涂县', 340500, 1057),
(340601, '市辖区', '安徽省,淮北市,市辖区', 340600, 1058),
(340602, '杜集区', '安徽省,淮北市,杜集区', 340600, 1059),
(340603, '相山区', '安徽省,淮北市,相山区', 340600, 1060),
(340604, '烈山区', '安徽省,淮北市,烈山区', 340600, 1061),
(340621, '濉溪县', '安徽省,淮北市,濉溪县', 340600, 1062),
(340701, '市辖区', '安徽省,铜陵市,市辖区', 340700, 1063),
(340702, '铜官山区', '安徽省,铜陵市,铜官山区', 340700, 1064),
(340703, '狮子山区', '安徽省,铜陵市,狮子山区', 340700, 1065),
(340711, '郊　区', '安徽省,铜陵市,郊　区', 340700, 1066),
(340721, '铜陵县', '安徽省,铜陵市,铜陵县', 340700, 1067),
(340801, '市辖区', '安徽省,安庆市,市辖区', 340800, 1068),
(340802, '迎江区', '安徽省,安庆市,迎江区', 340800, 1069),
(340803, '大观区', '安徽省,安庆市,大观区', 340800, 1070),
(340811, '郊　区', '安徽省,安庆市,郊　区', 340800, 1071),
(340822, '怀宁县', '安徽省,安庆市,怀宁县', 340800, 1072),
(340823, '枞阳县', '安徽省,安庆市,枞阳县', 340800, 1073),
(340824, '潜山县', '安徽省,安庆市,潜山县', 340800, 1074),
(340825, '太湖县', '安徽省,安庆市,太湖县', 340800, 1075),
(340826, '宿松县', '安徽省,安庆市,宿松县', 340800, 1076),
(340827, '望江县', '安徽省,安庆市,望江县', 340800, 1077),
(340828, '岳西县', '安徽省,安庆市,岳西县', 340800, 1078),
(340881, '桐城市', '安徽省,安庆市,桐城市', 340800, 1079),
(341001, '市辖区', '安徽省,黄山市,市辖区', 341000, 1080),
(341002, '屯溪区', '安徽省,黄山市,屯溪区', 341000, 1081),
(341003, '黄山区', '安徽省,黄山市,黄山区', 341000, 1082),
(341004, '徽州区', '安徽省,黄山市,徽州区', 341000, 1083),
(341021, '歙　县', '安徽省,黄山市,歙　县', 341000, 1084),
(341022, '休宁县', '安徽省,黄山市,休宁县', 341000, 1085),
(341023, '黟　县', '安徽省,黄山市,黟　县', 341000, 1086),
(341024, '祁门县', '安徽省,黄山市,祁门县', 341000, 1087),
(341101, '市辖区', '安徽省,滁州市,市辖区', 341100, 1088),
(341102, '琅琊区', '安徽省,滁州市,琅琊区', 341100, 1089),
(341103, '南谯区', '安徽省,滁州市,南谯区', 341100, 1090),
(341122, '来安县', '安徽省,滁州市,来安县', 341100, 1091),
(341124, '全椒县', '安徽省,滁州市,全椒县', 341100, 1092),
(341125, '定远县', '安徽省,滁州市,定远县', 341100, 1093),
(341126, '凤阳县', '安徽省,滁州市,凤阳县', 341100, 1094),
(341181, '天长市', '安徽省,滁州市,天长市', 341100, 1095),
(341182, '明光市', '安徽省,滁州市,明光市', 341100, 1096),
(341201, '市辖区', '安徽省,阜阳市,市辖区', 341200, 1097),
(341202, '颍州区', '安徽省,阜阳市,颍州区', 341200, 1098),
(341203, '颍东区', '安徽省,阜阳市,颍东区', 341200, 1099),
(341204, '颍泉区', '安徽省,阜阳市,颍泉区', 341200, 1100),
(341221, '临泉县', '安徽省,阜阳市,临泉县', 341200, 1101),
(341222, '太和县', '安徽省,阜阳市,太和县', 341200, 1102),
(341225, '阜南县', '安徽省,阜阳市,阜南县', 341200, 1103),
(341226, '颍上县', '安徽省,阜阳市,颍上县', 341200, 1104),
(341282, '界首市', '安徽省,阜阳市,界首市', 341200, 1105),
(341301, '市辖区', '安徽省,宿州市,市辖区', 341300, 1106),
(341302, '墉桥区', '安徽省,宿州市,墉桥区', 341300, 1107),
(341321, '砀山县', '安徽省,宿州市,砀山县', 341300, 1108),
(341322, '萧　县', '安徽省,宿州市,萧　县', 341300, 1109),
(341323, '灵璧县', '安徽省,宿州市,灵璧县', 341300, 1110),
(341324, '泗　县', '安徽省,宿州市,泗　县', 341300, 1111),
(341401, '庐江县', '安徽省,合肥市,庐江县', 340100, 1112),
(341402, '巢湖市', '安徽省,合肥市,巢湖市', 340100, 1113),
(341422, '无为县', '安徽省,芜湖市,无为县', 340200, 1115),
(341423, '含山县', '安徽省,马鞍山市,含山县', 340500, 1116),
(341424, '和　县', '安徽省,马鞍山市,和　县', 340500, 1117),
(341501, '市辖区', '安徽省,六安市,市辖区', 341500, 1118),
(341502, '金安区', '安徽省,六安市,金安区', 341500, 1119),
(341503, '裕安区', '安徽省,六安市,裕安区', 341500, 1120),
(341521, '寿　县', '安徽省,六安市,寿　县', 341500, 1121),
(341522, '霍邱县', '安徽省,六安市,霍邱县', 341500, 1122),
(341523, '舒城县', '安徽省,六安市,舒城县', 341500, 1123),
(341524, '金寨县', '安徽省,六安市,金寨县', 341500, 1124),
(341525, '霍山县', '安徽省,六安市,霍山县', 341500, 1125),
(341601, '市辖区', '安徽省,亳州市,市辖区', 341600, 1126),
(341602, '谯城区', '安徽省,亳州市,谯城区', 341600, 1127),
(341621, '涡阳县', '安徽省,亳州市,涡阳县', 341600, 1128),
(341622, '蒙城县', '安徽省,亳州市,蒙城县', 341600, 1129),
(341623, '利辛县', '安徽省,亳州市,利辛县', 341600, 1130),
(341701, '市辖区', '安徽省,池州市,市辖区', 341700, 1131),
(341702, '贵池区', '安徽省,池州市,贵池区', 341700, 1132),
(341721, '东至县', '安徽省,池州市,东至县', 341700, 1133),
(341722, '石台县', '安徽省,池州市,石台县', 341700, 1134),
(341723, '青阳县', '安徽省,池州市,青阳县', 341700, 1135),
(341801, '市辖区', '安徽省,宣城市,市辖区', 341800, 1136),
(341802, '宣州区', '安徽省,宣城市,宣州区', 341800, 1137),
(341821, '郎溪县', '安徽省,宣城市,郎溪县', 341800, 1138),
(341822, '广德县', '安徽省,宣城市,广德县', 341800, 1139),
(341823, '泾　县', '安徽省,宣城市,泾　县', 341800, 1140),
(341824, '绩溪县', '安徽省,宣城市,绩溪县', 341800, 1141),
(341825, '旌德县', '安徽省,宣城市,旌德县', 341800, 1142),
(341881, '宁国市', '安徽省,宣城市,宁国市', 341800, 1143),
(350101, '市辖区', '福建省,福州市,市辖区', 350100, 1144),
(350102, '鼓楼区', '福建省,福州市,鼓楼区', 350100, 1145),
(350103, '台江区', '福建省,福州市,台江区', 350100, 1146),
(350104, '仓山区', '福建省,福州市,仓山区', 350100, 1147),
(350105, '马尾区', '福建省,福州市,马尾区', 350100, 1148),
(350111, '晋安区', '福建省,福州市,晋安区', 350100, 1149),
(350121, '闽侯县', '福建省,福州市,闽侯县', 350100, 1150),
(350122, '连江县', '福建省,福州市,连江县', 350100, 1151),
(350123, '罗源县', '福建省,福州市,罗源县', 350100, 1152),
(350124, '闽清县', '福建省,福州市,闽清县', 350100, 1153),
(350125, '永泰县', '福建省,福州市,永泰县', 350100, 1154),
(350128, '平潭县', '福建省,福州市,平潭县', 350100, 1155),
(350181, '福清市', '福建省,福州市,福清市', 350100, 1156),
(350182, '长乐市', '福建省,福州市,长乐市', 350100, 1157),
(350201, '市辖区', '福建省,厦门市,市辖区', 350200, 1158),
(350203, '思明区', '福建省,厦门市,思明区', 350200, 1159),
(350205, '海沧区', '福建省,厦门市,海沧区', 350200, 1160),
(350206, '湖里区', '福建省,厦门市,湖里区', 350200, 1161),
(350211, '集美区', '福建省,厦门市,集美区', 350200, 1162),
(350212, '同安区', '福建省,厦门市,同安区', 350200, 1163),
(350213, '翔安区', '福建省,厦门市,翔安区', 350200, 1164),
(350301, '市辖区', '福建省,莆田市,市辖区', 350300, 1165),
(350302, '城厢区', '福建省,莆田市,城厢区', 350300, 1166),
(350303, '涵江区', '福建省,莆田市,涵江区', 350300, 1167),
(350304, '荔城区', '福建省,莆田市,荔城区', 350300, 1168),
(350305, '秀屿区', '福建省,莆田市,秀屿区', 350300, 1169),
(350322, '仙游县', '福建省,莆田市,仙游县', 350300, 1170),
(350401, '市辖区', '福建省,三明市,市辖区', 350400, 1171),
(350402, '梅列区', '福建省,三明市,梅列区', 350400, 1172),
(350403, '三元区', '福建省,三明市,三元区', 350400, 1173),
(350421, '明溪县', '福建省,三明市,明溪县', 350400, 1174),
(350423, '清流县', '福建省,三明市,清流县', 350400, 1175),
(350424, '宁化县', '福建省,三明市,宁化县', 350400, 1176),
(350425, '大田县', '福建省,三明市,大田县', 350400, 1177),
(350426, '尤溪县', '福建省,三明市,尤溪县', 350400, 1178),
(350427, '沙　县', '福建省,三明市,沙　县', 350400, 1179),
(350428, '将乐县', '福建省,三明市,将乐县', 350400, 1180),
(350429, '泰宁县', '福建省,三明市,泰宁县', 350400, 1181),
(350430, '建宁县', '福建省,三明市,建宁县', 350400, 1182),
(350481, '永安市', '福建省,三明市,永安市', 350400, 1183),
(350501, '市辖区', '福建省,泉州市,市辖区', 350500, 1184),
(350502, '鲤城区', '福建省,泉州市,鲤城区', 350500, 1185),
(350503, '丰泽区', '福建省,泉州市,丰泽区', 350500, 1186),
(350504, '洛江区', '福建省,泉州市,洛江区', 350500, 1187),
(350505, '泉港区', '福建省,泉州市,泉港区', 350500, 1188),
(350521, '惠安县', '福建省,泉州市,惠安县', 350500, 1189),
(350524, '安溪县', '福建省,泉州市,安溪县', 350500, 1190),
(350525, '永春县', '福建省,泉州市,永春县', 350500, 1191),
(350526, '德化县', '福建省,泉州市,德化县', 350500, 1192),
(350527, '金门县', '福建省,泉州市,金门县', 350500, 1193),
(350581, '石狮市', '福建省,泉州市,石狮市', 350500, 1194),
(350582, '晋江市', '福建省,泉州市,晋江市', 350500, 1195),
(350583, '南安市', '福建省,泉州市,南安市', 350500, 1196),
(350601, '市辖区', '福建省,漳州市,市辖区', 350600, 1197),
(350602, '芗城区', '福建省,漳州市,芗城区', 350600, 1198),
(350603, '龙文区', '福建省,漳州市,龙文区', 350600, 1199),
(350622, '云霄县', '福建省,漳州市,云霄县', 350600, 1200),
(350623, '漳浦县', '福建省,漳州市,漳浦县', 350600, 1201),
(350624, '诏安县', '福建省,漳州市,诏安县', 350600, 1202),
(350625, '长泰县', '福建省,漳州市,长泰县', 350600, 1203),
(350626, '东山县', '福建省,漳州市,东山县', 350600, 1204),
(350627, '南靖县', '福建省,漳州市,南靖县', 350600, 1205),
(350628, '平和县', '福建省,漳州市,平和县', 350600, 1206),
(350629, '华安县', '福建省,漳州市,华安县', 350600, 1207),
(350681, '龙海市', '福建省,漳州市,龙海市', 350600, 1208),
(350701, '市辖区', '福建省,南平市,市辖区', 350700, 1209),
(350702, '延平区', '福建省,南平市,延平区', 350700, 1210),
(350721, '顺昌县', '福建省,南平市,顺昌县', 350700, 1211),
(350722, '浦城县', '福建省,南平市,浦城县', 350700, 1212),
(350723, '光泽县', '福建省,南平市,光泽县', 350700, 1213),
(350724, '松溪县', '福建省,南平市,松溪县', 350700, 1214),
(350725, '政和县', '福建省,南平市,政和县', 350700, 1215),
(350781, '邵武市', '福建省,南平市,邵武市', 350700, 1216),
(350782, '武夷山市', '福建省,南平市,武夷山市', 350700, 1217),
(350783, '建瓯市', '福建省,南平市,建瓯市', 350700, 1218),
(350784, '建阳市', '福建省,南平市,建阳市', 350700, 1219),
(350801, '市辖区', '福建省,龙岩市,市辖区', 350800, 1220),
(350802, '新罗区', '福建省,龙岩市,新罗区', 350800, 1221),
(350821, '长汀县', '福建省,龙岩市,长汀县', 350800, 1222),
(350822, '永定县', '福建省,龙岩市,永定县', 350800, 1223),
(350823, '上杭县', '福建省,龙岩市,上杭县', 350800, 1224),
(350824, '武平县', '福建省,龙岩市,武平县', 350800, 1225),
(350825, '连城县', '福建省,龙岩市,连城县', 350800, 1226),
(350881, '漳平市', '福建省,龙岩市,漳平市', 350800, 1227),
(350901, '市辖区', '福建省,宁德市,市辖区', 350900, 1228),
(350902, '蕉城区', '福建省,宁德市,蕉城区', 350900, 1229),
(350921, '霞浦县', '福建省,宁德市,霞浦县', 350900, 1230),
(350922, '古田县', '福建省,宁德市,古田县', 350900, 1231),
(350923, '屏南县', '福建省,宁德市,屏南县', 350900, 1232),
(350924, '寿宁县', '福建省,宁德市,寿宁县', 350900, 1233),
(350925, '周宁县', '福建省,宁德市,周宁县', 350900, 1234),
(350926, '柘荣县', '福建省,宁德市,柘荣县', 350900, 1235),
(350981, '福安市', '福建省,宁德市,福安市', 350900, 1236),
(350982, '福鼎市', '福建省,宁德市,福鼎市', 350900, 1237),
(360101, '市辖区', '江西省,南昌市,市辖区', 360100, 1238),
(360102, '东湖区', '江西省,南昌市,东湖区', 360100, 1239),
(360103, '西湖区', '江西省,南昌市,西湖区', 360100, 1240),
(360104, '青云谱区', '江西省,南昌市,青云谱区', 360100, 1241),
(360105, '湾里区', '江西省,南昌市,湾里区', 360100, 1242),
(360111, '青山湖区', '江西省,南昌市,青山湖区', 360100, 1243),
(360121, '南昌县', '江西省,南昌市,南昌县', 360100, 1244),
(360122, '新建县', '江西省,南昌市,新建县', 360100, 1245),
(360123, '安义县', '江西省,南昌市,安义县', 360100, 1246),
(360124, '进贤县', '江西省,南昌市,进贤县', 360100, 1247),
(360201, '市辖区', '江西省,景德镇市,市辖区', 360200, 1248),
(360202, '昌江区', '江西省,景德镇市,昌江区', 360200, 1249),
(360203, '珠山区', '江西省,景德镇市,珠山区', 360200, 1250),
(360222, '浮梁县', '江西省,景德镇市,浮梁县', 360200, 1251),
(360281, '乐平市', '江西省,景德镇市,乐平市', 360200, 1252),
(360301, '市辖区', '江西省,萍乡市,市辖区', 360300, 1253),
(360302, '安源区', '江西省,萍乡市,安源区', 360300, 1254),
(360313, '湘东区', '江西省,萍乡市,湘东区', 360300, 1255),
(360321, '莲花县', '江西省,萍乡市,莲花县', 360300, 1256),
(360322, '上栗县', '江西省,萍乡市,上栗县', 360300, 1257),
(360323, '芦溪县', '江西省,萍乡市,芦溪县', 360300, 1258),
(360401, '市辖区', '江西省,九江市,市辖区', 360400, 1259),
(360402, '庐山区', '江西省,九江市,庐山区', 360400, 1260),
(360403, '浔阳区', '江西省,九江市,浔阳区', 360400, 1261),
(360421, '九江县', '江西省,九江市,九江县', 360400, 1262),
(360423, '武宁县', '江西省,九江市,武宁县', 360400, 1263),
(360424, '修水县', '江西省,九江市,修水县', 360400, 1264),
(360425, '永修县', '江西省,九江市,永修县', 360400, 1265),
(360426, '德安县', '江西省,九江市,德安县', 360400, 1266),
(360427, '星子县', '江西省,九江市,星子县', 360400, 1267),
(360428, '都昌县', '江西省,九江市,都昌县', 360400, 1268),
(360429, '湖口县', '江西省,九江市,湖口县', 360400, 1269),
(360430, '彭泽县', '江西省,九江市,彭泽县', 360400, 1270),
(360481, '瑞昌市', '江西省,九江市,瑞昌市', 360400, 1271),
(360501, '市辖区', '江西省,新余市,市辖区', 360500, 1272),
(360502, '渝水区', '江西省,新余市,渝水区', 360500, 1273),
(360521, '分宜县', '江西省,新余市,分宜县', 360500, 1274),
(360601, '市辖区', '江西省,鹰潭市,市辖区', 360600, 1275),
(360602, '月湖区', '江西省,鹰潭市,月湖区', 360600, 1276),
(360622, '余江县', '江西省,鹰潭市,余江县', 360600, 1277),
(360681, '贵溪市', '江西省,鹰潭市,贵溪市', 360600, 1278),
(360701, '市辖区', '江西省,赣州市,市辖区', 360700, 1279),
(360702, '章贡区', '江西省,赣州市,章贡区', 360700, 1280),
(360721, '赣　县', '江西省,赣州市,赣　县', 360700, 1281),
(360722, '信丰县', '江西省,赣州市,信丰县', 360700, 1282),
(360723, '大余县', '江西省,赣州市,大余县', 360700, 1283),
(360724, '上犹县', '江西省,赣州市,上犹县', 360700, 1284),
(360725, '崇义县', '江西省,赣州市,崇义县', 360700, 1285),
(360726, '安远县', '江西省,赣州市,安远县', 360700, 1286),
(360727, '龙南县', '江西省,赣州市,龙南县', 360700, 1287),
(360728, '定南县', '江西省,赣州市,定南县', 360700, 1288),
(360729, '全南县', '江西省,赣州市,全南县', 360700, 1289),
(360730, '宁都县', '江西省,赣州市,宁都县', 360700, 1290),
(360731, '于都县', '江西省,赣州市,于都县', 360700, 1291),
(360732, '兴国县', '江西省,赣州市,兴国县', 360700, 1292),
(360733, '会昌县', '江西省,赣州市,会昌县', 360700, 1293),
(360734, '寻乌县', '江西省,赣州市,寻乌县', 360700, 1294),
(360735, '石城县', '江西省,赣州市,石城县', 360700, 1295),
(360781, '瑞金市', '江西省,赣州市,瑞金市', 360700, 1296),
(360782, '南康市', '江西省,赣州市,南康市', 360700, 1297),
(360801, '市辖区', '江西省,吉安市,市辖区', 360800, 1298),
(360802, '吉州区', '江西省,吉安市,吉州区', 360800, 1299),
(360803, '青原区', '江西省,吉安市,青原区', 360800, 1300),
(360821, '吉安县', '江西省,吉安市,吉安县', 360800, 1301),
(360822, '吉水县', '江西省,吉安市,吉水县', 360800, 1302),
(360823, '峡江县', '江西省,吉安市,峡江县', 360800, 1303),
(360824, '新干县', '江西省,吉安市,新干县', 360800, 1304),
(360825, '永丰县', '江西省,吉安市,永丰县', 360800, 1305),
(360826, '泰和县', '江西省,吉安市,泰和县', 360800, 1306),
(360827, '遂川县', '江西省,吉安市,遂川县', 360800, 1307),
(360828, '万安县', '江西省,吉安市,万安县', 360800, 1308),
(360829, '安福县', '江西省,吉安市,安福县', 360800, 1309),
(360830, '永新县', '江西省,吉安市,永新县', 360800, 1310),
(360881, '井冈山市', '江西省,吉安市,井冈山市', 360800, 1311),
(360901, '市辖区', '江西省,宜春市,市辖区', 360900, 1312),
(360902, '袁州区', '江西省,宜春市,袁州区', 360900, 1313),
(360921, '奉新县', '江西省,宜春市,奉新县', 360900, 1314),
(360922, '万载县', '江西省,宜春市,万载县', 360900, 1315),
(360923, '上高县', '江西省,宜春市,上高县', 360900, 1316),
(360924, '宜丰县', '江西省,宜春市,宜丰县', 360900, 1317),
(360925, '靖安县', '江西省,宜春市,靖安县', 360900, 1318),
(360926, '铜鼓县', '江西省,宜春市,铜鼓县', 360900, 1319),
(360981, '丰城市', '江西省,宜春市,丰城市', 360900, 1320),
(360982, '樟树市', '江西省,宜春市,樟树市', 360900, 1321),
(360983, '高安市', '江西省,宜春市,高安市', 360900, 1322),
(361001, '市辖区', '江西省,抚州市,市辖区', 361000, 1323),
(361002, '临川区', '江西省,抚州市,临川区', 361000, 1324),
(361021, '南城县', '江西省,抚州市,南城县', 361000, 1325),
(361022, '黎川县', '江西省,抚州市,黎川县', 361000, 1326),
(361023, '南丰县', '江西省,抚州市,南丰县', 361000, 1327),
(361024, '崇仁县', '江西省,抚州市,崇仁县', 361000, 1328),
(361025, '乐安县', '江西省,抚州市,乐安县', 361000, 1329),
(361026, '宜黄县', '江西省,抚州市,宜黄县', 361000, 1330),
(361027, '金溪县', '江西省,抚州市,金溪县', 361000, 1331),
(361028, '资溪县', '江西省,抚州市,资溪县', 361000, 1332),
(361029, '东乡县', '江西省,抚州市,东乡县', 361000, 1333),
(361030, '广昌县', '江西省,抚州市,广昌县', 361000, 1334),
(361101, '市辖区', '江西省,上饶市,市辖区', 361100, 1335),
(361102, '信州区', '江西省,上饶市,信州区', 361100, 1336),
(361121, '上饶县', '江西省,上饶市,上饶县', 361100, 1337),
(361122, '广丰县', '江西省,上饶市,广丰县', 361100, 1338),
(361123, '玉山县', '江西省,上饶市,玉山县', 361100, 1339),
(361124, '铅山县', '江西省,上饶市,铅山县', 361100, 1340),
(361125, '横峰县', '江西省,上饶市,横峰县', 361100, 1341),
(361126, '弋阳县', '江西省,上饶市,弋阳县', 361100, 1342),
(361127, '余干县', '江西省,上饶市,余干县', 361100, 1343),
(361128, '鄱阳县', '江西省,上饶市,鄱阳县', 361100, 1344),
(361129, '万年县', '江西省,上饶市,万年县', 361100, 1345),
(361130, '婺源县', '江西省,上饶市,婺源县', 361100, 1346),
(361181, '德兴市', '江西省,上饶市,德兴市', 361100, 1347),
(370101, '市辖区', '山东省,济南市,市辖区', 370100, 1348),
(370102, '历下区', '山东省,济南市,历下区', 370100, 1349),
(370103, '市中区', '山东省,济南市,市中区', 370100, 1350),
(370104, '槐荫区', '山东省,济南市,槐荫区', 370100, 1351),
(370105, '天桥区', '山东省,济南市,天桥区', 370100, 1352),
(370112, '历城区', '山东省,济南市,历城区', 370100, 1353),
(370113, '长清区', '山东省,济南市,长清区', 370100, 1354),
(370124, '平阴县', '山东省,济南市,平阴县', 370100, 1355),
(370125, '济阳县', '山东省,济南市,济阳县', 370100, 1356),
(370126, '商河县', '山东省,济南市,商河县', 370100, 1357),
(370181, '章丘市', '山东省,济南市,章丘市', 370100, 1358),
(370201, '市辖区', '山东省,青岛市,市辖区', 370200, 1359),
(370202, '市南区', '山东省,青岛市,市南区', 370200, 1360),
(370203, '市北区', '山东省,青岛市,市北区', 370200, 1361),
(370205, '四方区', '山东省,青岛市,四方区', 370200, 1362),
(370211, '黄岛区', '山东省,青岛市,黄岛区', 370200, 1363),
(370212, '崂山区', '山东省,青岛市,崂山区', 370200, 1364),
(370213, '李沧区', '山东省,青岛市,李沧区', 370200, 1365),
(370214, '城阳区', '山东省,青岛市,城阳区', 370200, 1366),
(370281, '胶州市', '山东省,青岛市,胶州市', 370200, 1367),
(370282, '即墨市', '山东省,青岛市,即墨市', 370200, 1368),
(370283, '平度市', '山东省,青岛市,平度市', 370200, 1369),
(370284, '胶南市', '山东省,青岛市,胶南市', 370200, 1370),
(370285, '莱西市', '山东省,青岛市,莱西市', 370200, 1371),
(370301, '市辖区', '山东省,淄博市,市辖区', 370300, 1372),
(370302, '淄川区', '山东省,淄博市,淄川区', 370300, 1373),
(370303, '张店区', '山东省,淄博市,张店区', 370300, 1374),
(370304, '博山区', '山东省,淄博市,博山区', 370300, 1375),
(370305, '临淄区', '山东省,淄博市,临淄区', 370300, 1376),
(370306, '周村区', '山东省,淄博市,周村区', 370300, 1377),
(370321, '桓台县', '山东省,淄博市,桓台县', 370300, 1378),
(370322, '高青县', '山东省,淄博市,高青县', 370300, 1379),
(370323, '沂源县', '山东省,淄博市,沂源县', 370300, 1380),
(370401, '市辖区', '山东省,枣庄市,市辖区', 370400, 1381),
(370402, '市中区', '山东省,枣庄市,市中区', 370400, 1382),
(370403, '薛城区', '山东省,枣庄市,薛城区', 370400, 1383),
(370404, '峄城区', '山东省,枣庄市,峄城区', 370400, 1384),
(370405, '台儿庄区', '山东省,枣庄市,台儿庄区', 370400, 1385),
(370406, '山亭区', '山东省,枣庄市,山亭区', 370400, 1386),
(370481, '滕州市', '山东省,枣庄市,滕州市', 370400, 1387),
(370501, '市辖区', '山东省,东营市,市辖区', 370500, 1388),
(370502, '东营区', '山东省,东营市,东营区', 370500, 1389),
(370503, '河口区', '山东省,东营市,河口区', 370500, 1390),
(370521, '垦利县', '山东省,东营市,垦利县', 370500, 1391),
(370522, '利津县', '山东省,东营市,利津县', 370500, 1392),
(370523, '广饶县', '山东省,东营市,广饶县', 370500, 1393),
(370601, '市辖区', '山东省,烟台市,市辖区', 370600, 1394),
(370602, '芝罘区', '山东省,烟台市,芝罘区', 370600, 1395),
(370611, '福山区', '山东省,烟台市,福山区', 370600, 1396),
(370612, '牟平区', '山东省,烟台市,牟平区', 370600, 1397),
(370613, '莱山区', '山东省,烟台市,莱山区', 370600, 1398),
(370634, '长岛县', '山东省,烟台市,长岛县', 370600, 1399),
(370681, '龙口市', '山东省,烟台市,龙口市', 370600, 1400),
(370682, '莱阳市', '山东省,烟台市,莱阳市', 370600, 1401),
(370683, '莱州市', '山东省,烟台市,莱州市', 370600, 1402),
(370684, '蓬莱市', '山东省,烟台市,蓬莱市', 370600, 1403),
(370685, '招远市', '山东省,烟台市,招远市', 370600, 1404),
(370686, '栖霞市', '山东省,烟台市,栖霞市', 370600, 1405),
(370687, '海阳市', '山东省,烟台市,海阳市', 370600, 1406),
(370701, '市辖区', '山东省,潍坊市,市辖区', 370700, 1407),
(370702, '潍城区', '山东省,潍坊市,潍城区', 370700, 1408),
(370703, '寒亭区', '山东省,潍坊市,寒亭区', 370700, 1409),
(370704, '坊子区', '山东省,潍坊市,坊子区', 370700, 1410),
(370705, '奎文区', '山东省,潍坊市,奎文区', 370700, 1411),
(370724, '临朐县', '山东省,潍坊市,临朐县', 370700, 1412),
(370725, '昌乐县', '山东省,潍坊市,昌乐县', 370700, 1413),
(370781, '青州市', '山东省,潍坊市,青州市', 370700, 1414),
(370782, '诸城市', '山东省,潍坊市,诸城市', 370700, 1415),
(370783, '寿光市', '山东省,潍坊市,寿光市', 370700, 1416),
(370784, '安丘市', '山东省,潍坊市,安丘市', 370700, 1417),
(370785, '高密市', '山东省,潍坊市,高密市', 370700, 1418),
(370786, '昌邑市', '山东省,潍坊市,昌邑市', 370700, 1419),
(370801, '市辖区', '山东省,济宁市,市辖区', 370800, 1420),
(370802, '市中区', '山东省,济宁市,市中区', 370800, 1421),
(370811, '任城区', '山东省,济宁市,任城区', 370800, 1422),
(370826, '微山县', '山东省,济宁市,微山县', 370800, 1423),
(370827, '鱼台县', '山东省,济宁市,鱼台县', 370800, 1424),
(370828, '金乡县', '山东省,济宁市,金乡县', 370800, 1425),
(370829, '嘉祥县', '山东省,济宁市,嘉祥县', 370800, 1426),
(370830, '汶上县', '山东省,济宁市,汶上县', 370800, 1427),
(370831, '泗水县', '山东省,济宁市,泗水县', 370800, 1428),
(370832, '梁山县', '山东省,济宁市,梁山县', 370800, 1429),
(370881, '曲阜市', '山东省,济宁市,曲阜市', 370800, 1430),
(370882, '兖州市', '山东省,济宁市,兖州市', 370800, 1431),
(370883, '邹城市', '山东省,济宁市,邹城市', 370800, 1432),
(370901, '市辖区', '山东省,泰安市,市辖区', 370900, 1433),
(370902, '泰山区', '山东省,泰安市,泰山区', 370900, 1434),
(370903, '岱岳区', '山东省,泰安市,岱岳区', 370900, 1435),
(370921, '宁阳县', '山东省,泰安市,宁阳县', 370900, 1436),
(370923, '东平县', '山东省,泰安市,东平县', 370900, 1437),
(370982, '新泰市', '山东省,泰安市,新泰市', 370900, 1438),
(370983, '肥城市', '山东省,泰安市,肥城市', 370900, 1439),
(371001, '市辖区', '山东省,威海市,市辖区', 371000, 1440),
(371002, '环翠区', '山东省,威海市,环翠区', 371000, 1441),
(371081, '文登市', '山东省,威海市,文登市', 371000, 1442),
(371082, '荣成市', '山东省,威海市,荣成市', 371000, 1443),
(371083, '乳山市', '山东省,威海市,乳山市', 371000, 1444),
(371101, '市辖区', '山东省,日照市,市辖区', 371100, 1445),
(371102, '东港区', '山东省,日照市,东港区', 371100, 1446),
(371103, '岚山区', '山东省,日照市,岚山区', 371100, 1447),
(371121, '五莲县', '山东省,日照市,五莲县', 371100, 1448),
(371122, '莒　县', '山东省,日照市,莒　县', 371100, 1449),
(371201, '市辖区', '山东省,莱芜市,市辖区', 371200, 1450),
(371202, '莱城区', '山东省,莱芜市,莱城区', 371200, 1451),
(371203, '钢城区', '山东省,莱芜市,钢城区', 371200, 1452),
(371301, '市辖区', '山东省,临沂市,市辖区', 371300, 1453),
(371302, '兰山区', '山东省,临沂市,兰山区', 371300, 1454),
(371311, '罗庄区', '山东省,临沂市,罗庄区', 371300, 1455),
(371312, '河东区', '山东省,临沂市,河东区', 371300, 1456),
(371321, '沂南县', '山东省,临沂市,沂南县', 371300, 1457),
(371322, '郯城县', '山东省,临沂市,郯城县', 371300, 1458),
(371323, '沂水县', '山东省,临沂市,沂水县', 371300, 1459),
(371324, '苍山县', '山东省,临沂市,苍山县', 371300, 1460),
(371325, '费　县', '山东省,临沂市,费　县', 371300, 1461),
(371326, '平邑县', '山东省,临沂市,平邑县', 371300, 1462),
(371327, '莒南县', '山东省,临沂市,莒南县', 371300, 1463),
(371328, '蒙阴县', '山东省,临沂市,蒙阴县', 371300, 1464),
(371329, '临沭县', '山东省,临沂市,临沭县', 371300, 1465),
(371401, '市辖区', '山东省,德州市,市辖区', 371400, 1466),
(371402, '德城区', '山东省,德州市,德城区', 371400, 1467),
(371421, '陵　县', '山东省,德州市,陵　县', 371400, 1468),
(371422, '宁津县', '山东省,德州市,宁津县', 371400, 1469),
(371423, '庆云县', '山东省,德州市,庆云县', 371400, 1470),
(371424, '临邑县', '山东省,德州市,临邑县', 371400, 1471),
(371425, '齐河县', '山东省,德州市,齐河县', 371400, 1472),
(371426, '平原县', '山东省,德州市,平原县', 371400, 1473),
(371427, '夏津县', '山东省,德州市,夏津县', 371400, 1474),
(371428, '武城县', '山东省,德州市,武城县', 371400, 1475),
(371481, '乐陵市', '山东省,德州市,乐陵市', 371400, 1476),
(371482, '禹城市', '山东省,德州市,禹城市', 371400, 1477),
(371501, '市辖区', '山东省,聊城市,市辖区', 371500, 1478),
(371502, '东昌府区', '山东省,聊城市,东昌府区', 371500, 1479),
(371521, '阳谷县', '山东省,聊城市,阳谷县', 371500, 1480),
(371522, '莘　县', '山东省,聊城市,莘　县', 371500, 1481),
(371523, '茌平县', '山东省,聊城市,茌平县', 371500, 1482),
(371524, '东阿县', '山东省,聊城市,东阿县', 371500, 1483),
(371525, '冠　县', '山东省,聊城市,冠　县', 371500, 1484),
(371526, '高唐县', '山东省,聊城市,高唐县', 371500, 1485),
(371581, '临清市', '山东省,聊城市,临清市', 371500, 1486),
(371601, '市辖区', '山东省,滨州市,市辖区', 371600, 1487),
(371602, '滨城区', '山东省,滨州市,滨城区', 371600, 1488),
(371621, '惠民县', '山东省,滨州市,惠民县', 371600, 1489),
(371622, '阳信县', '山东省,滨州市,阳信县', 371600, 1490),
(371623, '无棣县', '山东省,滨州市,无棣县', 371600, 1491),
(371624, '沾化县', '山东省,滨州市,沾化县', 371600, 1492),
(371625, '博兴县', '山东省,滨州市,博兴县', 371600, 1493),
(371626, '邹平县', '山东省,滨州市,邹平县', 371600, 1494),
(371701, '市辖区', '山东省,荷泽市,市辖区', 371700, 1495),
(371702, '牡丹区', '山东省,荷泽市,牡丹区', 371700, 1496),
(371721, '曹　县', '山东省,荷泽市,曹　县', 371700, 1497),
(371722, '单　县', '山东省,荷泽市,单　县', 371700, 1498),
(371723, '成武县', '山东省,荷泽市,成武县', 371700, 1499),
(371724, '巨野县', '山东省,荷泽市,巨野县', 371700, 1500),
(371725, '郓城县', '山东省,荷泽市,郓城县', 371700, 1501),
(371726, '鄄城县', '山东省,荷泽市,鄄城县', 371700, 1502),
(371727, '定陶县', '山东省,荷泽市,定陶县', 371700, 1503),
(371728, '东明县', '山东省,荷泽市,东明县', 371700, 1504),
(410101, '市辖区', '河南省,郑州市,市辖区', 410100, 1505),
(410102, '中原区', '河南省,郑州市,中原区', 410100, 1506),
(410103, '二七区', '河南省,郑州市,二七区', 410100, 1507),
(410104, '管城回族区', '河南省,郑州市,管城回族区', 410100, 1508),
(410105, '金水区', '河南省,郑州市,金水区', 410100, 1509),
(410106, '上街区', '河南省,郑州市,上街区', 410100, 1510),
(410108, '邙山区', '河南省,郑州市,邙山区', 410100, 1511),
(410122, '中牟县', '河南省,郑州市,中牟县', 410100, 1512),
(410181, '巩义市', '河南省,郑州市,巩义市', 410100, 1513),
(410182, '荥阳市', '河南省,郑州市,荥阳市', 410100, 1514),
(410183, '新密市', '河南省,郑州市,新密市', 410100, 1515),
(410184, '新郑市', '河南省,郑州市,新郑市', 410100, 1516),
(410185, '登封市', '河南省,郑州市,登封市', 410100, 1517),
(410201, '市辖区', '河南省,开封市,市辖区', 410200, 1518),
(410202, '龙亭区', '河南省,开封市,龙亭区', 410200, 1519),
(410203, '顺河回族区', '河南省,开封市,顺河回族区', 410200, 1520),
(410204, '鼓楼区', '河南省,开封市,鼓楼区', 410200, 1521),
(410205, '南关区', '河南省,开封市,南关区', 410200, 1522),
(410211, '郊　区', '河南省,开封市,郊　区', 410200, 1523),
(410221, '杞　县', '河南省,开封市,杞　县', 410200, 1524),
(410222, '通许县', '河南省,开封市,通许县', 410200, 1525),
(410223, '尉氏县', '河南省,开封市,尉氏县', 410200, 1526),
(410224, '开封县', '河南省,开封市,开封县', 410200, 1527),
(410225, '兰考县', '河南省,开封市,兰考县', 410200, 1528),
(410301, '市辖区', '河南省,洛阳市,市辖区', 410300, 1529),
(410302, '老城区', '河南省,洛阳市,老城区', 410300, 1530),
(410303, '西工区', '河南省,洛阳市,西工区', 410300, 1531),
(410304, '廛河回族区', '河南省,洛阳市,廛河回族区', 410300, 1532),
(410305, '涧西区', '河南省,洛阳市,涧西区', 410300, 1533),
(410306, '吉利区', '河南省,洛阳市,吉利区', 410300, 1534),
(410307, '洛龙区', '河南省,洛阳市,洛龙区', 410300, 1535),
(410322, '孟津县', '河南省,洛阳市,孟津县', 410300, 1536),
(410323, '新安县', '河南省,洛阳市,新安县', 410300, 1537),
(410324, '栾川县', '河南省,洛阳市,栾川县', 410300, 1538),
(410325, '嵩　县', '河南省,洛阳市,嵩　县', 410300, 1539),
(410326, '汝阳县', '河南省,洛阳市,汝阳县', 410300, 1540),
(410327, '宜阳县', '河南省,洛阳市,宜阳县', 410300, 1541),
(410328, '洛宁县', '河南省,洛阳市,洛宁县', 410300, 1542),
(410329, '伊川县', '河南省,洛阳市,伊川县', 410300, 1543),
(410381, '偃师市', '河南省,洛阳市,偃师市', 410300, 1544),
(410401, '市辖区', '河南省,平顶山市,市辖区', 410400, 1545),
(410402, '新华区', '河南省,平顶山市,新华区', 410400, 1546),
(410403, '卫东区', '河南省,平顶山市,卫东区', 410400, 1547),
(410404, '石龙区', '河南省,平顶山市,石龙区', 410400, 1548),
(410411, '湛河区', '河南省,平顶山市,湛河区', 410400, 1549),
(410421, '宝丰县', '河南省,平顶山市,宝丰县', 410400, 1550),
(410422, '叶　县', '河南省,平顶山市,叶　县', 410400, 1551),
(410423, '鲁山县', '河南省,平顶山市,鲁山县', 410400, 1552),
(410425, '郏　县', '河南省,平顶山市,郏　县', 410400, 1553),
(410481, '舞钢市', '河南省,平顶山市,舞钢市', 410400, 1554),
(410482, '汝州市', '河南省,平顶山市,汝州市', 410400, 1555),
(410501, '市辖区', '河南省,安阳市,市辖区', 410500, 1556),
(410502, '文峰区', '河南省,安阳市,文峰区', 410500, 1557),
(410503, '北关区', '河南省,安阳市,北关区', 410500, 1558),
(410505, '殷都区', '河南省,安阳市,殷都区', 410500, 1559),
(410506, '龙安区', '河南省,安阳市,龙安区', 410500, 1560),
(410522, '安阳县', '河南省,安阳市,安阳县', 410500, 1561),
(410523, '汤阴县', '河南省,安阳市,汤阴县', 410500, 1562),
(410526, '滑　县', '河南省,安阳市,滑　县', 410500, 1563),
(410527, '内黄县', '河南省,安阳市,内黄县', 410500, 1564),
(410581, '林州市', '河南省,安阳市,林州市', 410500, 1565),
(410601, '市辖区', '河南省,鹤壁市,市辖区', 410600, 1566),
(410602, '鹤山区', '河南省,鹤壁市,鹤山区', 410600, 1567),
(410603, '山城区', '河南省,鹤壁市,山城区', 410600, 1568),
(410611, '淇滨区', '河南省,鹤壁市,淇滨区', 410600, 1569),
(410621, '浚　县', '河南省,鹤壁市,浚　县', 410600, 1570),
(410622, '淇　县', '河南省,鹤壁市,淇　县', 410600, 1571),
(410701, '市辖区', '河南省,新乡市,市辖区', 410700, 1572),
(410702, '红旗区', '河南省,新乡市,红旗区', 410700, 1573),
(410703, '卫滨区', '河南省,新乡市,卫滨区', 410700, 1574),
(410704, '凤泉区', '河南省,新乡市,凤泉区', 410700, 1575),
(410711, '牧野区', '河南省,新乡市,牧野区', 410700, 1576),
(410721, '新乡县', '河南省,新乡市,新乡县', 410700, 1577),
(410724, '获嘉县', '河南省,新乡市,获嘉县', 410700, 1578),
(410725, '原阳县', '河南省,新乡市,原阳县', 410700, 1579),
(410726, '延津县', '河南省,新乡市,延津县', 410700, 1580),
(410727, '封丘县', '河南省,新乡市,封丘县', 410700, 1581),
(410728, '长垣县', '河南省,新乡市,长垣县', 410700, 1582),
(410781, '卫辉市', '河南省,新乡市,卫辉市', 410700, 1583),
(410782, '辉县市', '河南省,新乡市,辉县市', 410700, 1584),
(410801, '市辖区', '河南省,焦作市,市辖区', 410800, 1585),
(410802, '解放区', '河南省,焦作市,解放区', 410800, 1586),
(410803, '中站区', '河南省,焦作市,中站区', 410800, 1587),
(410804, '马村区', '河南省,焦作市,马村区', 410800, 1588),
(410811, '山阳区', '河南省,焦作市,山阳区', 410800, 1589),
(410821, '修武县', '河南省,焦作市,修武县', 410800, 1590),
(410822, '博爱县', '河南省,焦作市,博爱县', 410800, 1591),
(410823, '武陟县', '河南省,焦作市,武陟县', 410800, 1592),
(410825, '温　县', '河南省,焦作市,温　县', 410800, 1593),
(410881, '济源市', '河南省,焦作市,济源市', 410800, 1594),
(410882, '沁阳市', '河南省,焦作市,沁阳市', 410800, 1595),
(410883, '孟州市', '河南省,焦作市,孟州市', 410800, 1596),
(410901, '市辖区', '河南省,濮阳市,市辖区', 410900, 1597),
(410902, '华龙区', '河南省,濮阳市,华龙区', 410900, 1598),
(410922, '清丰县', '河南省,濮阳市,清丰县', 410900, 1599),
(410923, '南乐县', '河南省,濮阳市,南乐县', 410900, 1600),
(410926, '范　县', '河南省,濮阳市,范　县', 410900, 1601),
(410927, '台前县', '河南省,濮阳市,台前县', 410900, 1602),
(410928, '濮阳县', '河南省,濮阳市,濮阳县', 410900, 1603),
(411001, '市辖区', '河南省,许昌市,市辖区', 411000, 1604),
(411002, '魏都区', '河南省,许昌市,魏都区', 411000, 1605),
(411023, '许昌县', '河南省,许昌市,许昌县', 411000, 1606),
(411024, '鄢陵县', '河南省,许昌市,鄢陵县', 411000, 1607),
(411025, '襄城县', '河南省,许昌市,襄城县', 411000, 1608),
(411081, '禹州市', '河南省,许昌市,禹州市', 411000, 1609),
(411082, '长葛市', '河南省,许昌市,长葛市', 411000, 1610),
(411101, '市辖区', '河南省,漯河市,市辖区', 411100, 1611),
(411102, '源汇区', '河南省,漯河市,源汇区', 411100, 1612),
(411103, '郾城区', '河南省,漯河市,郾城区', 411100, 1613),
(411104, '召陵区', '河南省,漯河市,召陵区', 411100, 1614),
(411121, '舞阳县', '河南省,漯河市,舞阳县', 411100, 1615),
(411122, '临颍县', '河南省,漯河市,临颍县', 411100, 1616),
(411201, '市辖区', '河南省,三门峡市,市辖区', 411200, 1617),
(411202, '湖滨区', '河南省,三门峡市,湖滨区', 411200, 1618),
(411221, '渑池县', '河南省,三门峡市,渑池县', 411200, 1619),
(411222, '陕　县', '河南省,三门峡市,陕　县', 411200, 1620),
(411224, '卢氏县', '河南省,三门峡市,卢氏县', 411200, 1621),
(411281, '义马市', '河南省,三门峡市,义马市', 411200, 1622),
(411282, '灵宝市', '河南省,三门峡市,灵宝市', 411200, 1623),
(411301, '市辖区', '河南省,南阳市,市辖区', 411300, 1624),
(411302, '宛城区', '河南省,南阳市,宛城区', 411300, 1625),
(411303, '卧龙区', '河南省,南阳市,卧龙区', 411300, 1626),
(411321, '南召县', '河南省,南阳市,南召县', 411300, 1627),
(411322, '方城县', '河南省,南阳市,方城县', 411300, 1628),
(411323, '西峡县', '河南省,南阳市,西峡县', 411300, 1629),
(411324, '镇平县', '河南省,南阳市,镇平县', 411300, 1630),
(411325, '内乡县', '河南省,南阳市,内乡县', 411300, 1631),
(411326, '淅川县', '河南省,南阳市,淅川县', 411300, 1632),
(411327, '社旗县', '河南省,南阳市,社旗县', 411300, 1633),
(411328, '唐河县', '河南省,南阳市,唐河县', 411300, 1634),
(411329, '新野县', '河南省,南阳市,新野县', 411300, 1635),
(411330, '桐柏县', '河南省,南阳市,桐柏县', 411300, 1636),
(411381, '邓州市', '河南省,南阳市,邓州市', 411300, 1637),
(411401, '市辖区', '河南省,商丘市,市辖区', 411400, 1638),
(411402, '梁园区', '河南省,商丘市,梁园区', 411400, 1639),
(411403, '睢阳区', '河南省,商丘市,睢阳区', 411400, 1640),
(411421, '民权县', '河南省,商丘市,民权县', 411400, 1641),
(411422, '睢　县', '河南省,商丘市,睢　县', 411400, 1642),
(411423, '宁陵县', '河南省,商丘市,宁陵县', 411400, 1643),
(411424, '柘城县', '河南省,商丘市,柘城县', 411400, 1644),
(411425, '虞城县', '河南省,商丘市,虞城县', 411400, 1645),
(411426, '夏邑县', '河南省,商丘市,夏邑县', 411400, 1646),
(411481, '永城市', '河南省,商丘市,永城市', 411400, 1647),
(411501, '市辖区', '河南省,信阳市,市辖区', 411500, 1648),
(411502, '师河区', '河南省,信阳市,师河区', 411500, 1649),
(411503, '平桥区', '河南省,信阳市,平桥区', 411500, 1650),
(411521, '罗山县', '河南省,信阳市,罗山县', 411500, 1651),
(411522, '光山县', '河南省,信阳市,光山县', 411500, 1652),
(411523, '新　县', '河南省,信阳市,新　县', 411500, 1653),
(411524, '商城县', '河南省,信阳市,商城县', 411500, 1654),
(411525, '固始县', '河南省,信阳市,固始县', 411500, 1655),
(411526, '潢川县', '河南省,信阳市,潢川县', 411500, 1656),
(411527, '淮滨县', '河南省,信阳市,淮滨县', 411500, 1657),
(411528, '息　县', '河南省,信阳市,息　县', 411500, 1658),
(411601, '市辖区', '河南省,周口市,市辖区', 411600, 1659),
(411602, '川汇区', '河南省,周口市,川汇区', 411600, 1660),
(411621, '扶沟县', '河南省,周口市,扶沟县', 411600, 1661),
(411622, '西华县', '河南省,周口市,西华县', 411600, 1662),
(411623, '商水县', '河南省,周口市,商水县', 411600, 1663),
(411624, '沈丘县', '河南省,周口市,沈丘县', 411600, 1664),
(411625, '郸城县', '河南省,周口市,郸城县', 411600, 1665),
(411626, '淮阳县', '河南省,周口市,淮阳县', 411600, 1666),
(411627, '太康县', '河南省,周口市,太康县', 411600, 1667),
(411628, '鹿邑县', '河南省,周口市,鹿邑县', 411600, 1668),
(411681, '项城市', '河南省,周口市,项城市', 411600, 1669),
(411701, '市辖区', '河南省,驻马店市,市辖区', 411700, 1670),
(411702, '驿城区', '河南省,驻马店市,驿城区', 411700, 1671),
(411721, '西平县', '河南省,驻马店市,西平县', 411700, 1672),
(411722, '上蔡县', '河南省,驻马店市,上蔡县', 411700, 1673),
(411723, '平舆县', '河南省,驻马店市,平舆县', 411700, 1674),
(411724, '正阳县', '河南省,驻马店市,正阳县', 411700, 1675),
(411725, '确山县', '河南省,驻马店市,确山县', 411700, 1676),
(411726, '泌阳县', '河南省,驻马店市,泌阳县', 411700, 1677),
(411727, '汝南县', '河南省,驻马店市,汝南县', 411700, 1678),
(411728, '遂平县', '河南省,驻马店市,遂平县', 411700, 1679),
(411729, '新蔡县', '河南省,驻马店市,新蔡县', 411700, 1680),
(420101, '市辖区', '湖北省,武汉市,市辖区', 420100, 1681),
(420102, '江岸区', '湖北省,武汉市,江岸区', 420100, 1682),
(420103, '江汉区', '湖北省,武汉市,江汉区', 420100, 1683),
(420104, '乔口区', '湖北省,武汉市,乔口区', 420100, 1684),
(420105, '汉阳区', '湖北省,武汉市,汉阳区', 420100, 1685),
(420106, '武昌区', '湖北省,武汉市,武昌区', 420100, 1686),
(420107, '青山区', '湖北省,武汉市,青山区', 420100, 1687),
(420111, '洪山区', '湖北省,武汉市,洪山区', 420100, 1688),
(420112, '东西湖区', '湖北省,武汉市,东西湖区', 420100, 1689),
(420113, '汉南区', '湖北省,武汉市,汉南区', 420100, 1690),
(420114, '蔡甸区', '湖北省,武汉市,蔡甸区', 420100, 1691),
(420115, '江夏区', '湖北省,武汉市,江夏区', 420100, 1692),
(420116, '黄陂区', '湖北省,武汉市,黄陂区', 420100, 1693),
(420117, '新洲区', '湖北省,武汉市,新洲区', 420100, 1694),
(420201, '市辖区', '湖北省,黄石市,市辖区', 420200, 1695),
(420202, '黄石港区', '湖北省,黄石市,黄石港区', 420200, 1696),
(420203, '西塞山区', '湖北省,黄石市,西塞山区', 420200, 1697),
(420204, '下陆区', '湖北省,黄石市,下陆区', 420200, 1698),
(420205, '铁山区', '湖北省,黄石市,铁山区', 420200, 1699),
(420222, '阳新县', '湖北省,黄石市,阳新县', 420200, 1700),
(420281, '大冶市', '湖北省,黄石市,大冶市', 420200, 1701),
(420301, '市辖区', '湖北省,十堰市,市辖区', 420300, 1702),
(420302, '茅箭区', '湖北省,十堰市,茅箭区', 420300, 1703),
(420303, '张湾区', '湖北省,十堰市,张湾区', 420300, 1704),
(420321, '郧　县', '湖北省,十堰市,郧　县', 420300, 1705),
(420322, '郧西县', '湖北省,十堰市,郧西县', 420300, 1706),
(420323, '竹山县', '湖北省,十堰市,竹山县', 420300, 1707),
(420324, '竹溪县', '湖北省,十堰市,竹溪县', 420300, 1708),
(420325, '房　县', '湖北省,十堰市,房　县', 420300, 1709),
(420381, '丹江口市', '湖北省,十堰市,丹江口市', 420300, 1710),
(420501, '市辖区', '湖北省,宜昌市,市辖区', 420500, 1711),
(420502, '西陵区', '湖北省,宜昌市,西陵区', 420500, 1712),
(420503, '伍家岗区', '湖北省,宜昌市,伍家岗区', 420500, 1713),
(420504, '点军区', '湖北省,宜昌市,点军区', 420500, 1714),
(420505, '猇亭区', '湖北省,宜昌市,猇亭区', 420500, 1715),
(420506, '夷陵区', '湖北省,宜昌市,夷陵区', 420500, 1716),
(420525, '远安县', '湖北省,宜昌市,远安县', 420500, 1717),
(420526, '兴山县', '湖北省,宜昌市,兴山县', 420500, 1718),
(420527, '秭归县', '湖北省,宜昌市,秭归县', 420500, 1719),
(420528, '长阳土家族自治县', '湖北省,宜昌市,长阳土家族自治县', 420500, 1720),
(420529, '五峰土家族自治县', '湖北省,宜昌市,五峰土家族自治县', 420500, 1721),
(420581, '宜都市', '湖北省,宜昌市,宜都市', 420500, 1722),
(420582, '当阳市', '湖北省,宜昌市,当阳市', 420500, 1723),
(420583, '枝江市', '湖北省,宜昌市,枝江市', 420500, 1724),
(420601, '市辖区', '湖北省,襄樊市,市辖区', 420600, 1725),
(420602, '襄城区', '湖北省,襄樊市,襄城区', 420600, 1726),
(420606, '樊城区', '湖北省,襄樊市,樊城区', 420600, 1727),
(420607, '襄阳区', '湖北省,襄樊市,襄阳区', 420600, 1728),
(420624, '南漳县', '湖北省,襄樊市,南漳县', 420600, 1729),
(420625, '谷城县', '湖北省,襄樊市,谷城县', 420600, 1730),
(420626, '保康县', '湖北省,襄樊市,保康县', 420600, 1731),
(420682, '老河口市', '湖北省,襄樊市,老河口市', 420600, 1732),
(420683, '枣阳市', '湖北省,襄樊市,枣阳市', 420600, 1733),
(420684, '宜城市', '湖北省,襄樊市,宜城市', 420600, 1734),
(420701, '市辖区', '湖北省,鄂州市,市辖区', 420700, 1735),
(420702, '梁子湖区', '湖北省,鄂州市,梁子湖区', 420700, 1736),
(420703, '华容区', '湖北省,鄂州市,华容区', 420700, 1737),
(420704, '鄂城区', '湖北省,鄂州市,鄂城区', 420700, 1738),
(420801, '市辖区', '湖北省,荆门市,市辖区', 420800, 1739),
(420802, '东宝区', '湖北省,荆门市,东宝区', 420800, 1740),
(420804, '掇刀区', '湖北省,荆门市,掇刀区', 420800, 1741),
(420821, '京山县', '湖北省,荆门市,京山县', 420800, 1742),
(420822, '沙洋县', '湖北省,荆门市,沙洋县', 420800, 1743),
(420881, '钟祥市', '湖北省,荆门市,钟祥市', 420800, 1744),
(420901, '市辖区', '湖北省,孝感市,市辖区', 420900, 1745),
(420902, '孝南区', '湖北省,孝感市,孝南区', 420900, 1746),
(420921, '孝昌县', '湖北省,孝感市,孝昌县', 420900, 1747),
(420922, '大悟县', '湖北省,孝感市,大悟县', 420900, 1748),
(420923, '云梦县', '湖北省,孝感市,云梦县', 420900, 1749),
(420981, '应城市', '湖北省,孝感市,应城市', 420900, 1750),
(420982, '安陆市', '湖北省,孝感市,安陆市', 420900, 1751),
(420984, '汉川市', '湖北省,孝感市,汉川市', 420900, 1752),
(421001, '市辖区', '湖北省,荆州市,市辖区', 421000, 1753),
(421002, '沙市区', '湖北省,荆州市,沙市区', 421000, 1754),
(421003, '荆州区', '湖北省,荆州市,荆州区', 421000, 1755),
(421022, '公安县', '湖北省,荆州市,公安县', 421000, 1756),
(421023, '监利县', '湖北省,荆州市,监利县', 421000, 1757),
(421024, '江陵县', '湖北省,荆州市,江陵县', 421000, 1758),
(421081, '石首市', '湖北省,荆州市,石首市', 421000, 1759),
(421083, '洪湖市', '湖北省,荆州市,洪湖市', 421000, 1760),
(421087, '松滋市', '湖北省,荆州市,松滋市', 421000, 1761),
(421101, '市辖区', '湖北省,黄冈市,市辖区', 421100, 1762),
(421102, '黄州区', '湖北省,黄冈市,黄州区', 421100, 1763),
(421121, '团风县', '湖北省,黄冈市,团风县', 421100, 1764),
(421122, '红安县', '湖北省,黄冈市,红安县', 421100, 1765),
(421123, '罗田县', '湖北省,黄冈市,罗田县', 421100, 1766),
(421124, '英山县', '湖北省,黄冈市,英山县', 421100, 1767),
(421125, '浠水县', '湖北省,黄冈市,浠水县', 421100, 1768),
(421126, '蕲春县', '湖北省,黄冈市,蕲春县', 421100, 1769),
(421127, '黄梅县', '湖北省,黄冈市,黄梅县', 421100, 1770),
(421181, '麻城市', '湖北省,黄冈市,麻城市', 421100, 1771),
(421182, '武穴市', '湖北省,黄冈市,武穴市', 421100, 1772),
(421201, '市辖区', '湖北省,咸宁市,市辖区', 421200, 1773),
(421202, '咸安区', '湖北省,咸宁市,咸安区', 421200, 1774),
(421221, '嘉鱼县', '湖北省,咸宁市,嘉鱼县', 421200, 1775),
(421222, '通城县', '湖北省,咸宁市,通城县', 421200, 1776),
(421223, '崇阳县', '湖北省,咸宁市,崇阳县', 421200, 1777),
(421224, '通山县', '湖北省,咸宁市,通山县', 421200, 1778),
(421281, '赤壁市', '湖北省,咸宁市,赤壁市', 421200, 1779),
(421301, '市辖区', '湖北省,随州市,市辖区', 421300, 1780),
(421302, '曾都区', '湖北省,随州市,曾都区', 421300, 1781),
(421381, '广水市', '湖北省,随州市,广水市', 421300, 1782),
(422801, '恩施市', '湖北省,恩施土家族苗族自治州,恩施市', 422800, 1783),
(422802, '利川市', '湖北省,恩施土家族苗族自治州,利川市', 422800, 1784),
(422822, '建始县', '湖北省,恩施土家族苗族自治州,建始县', 422800, 1785),
(422823, '巴东县', '湖北省,恩施土家族苗族自治州,巴东县', 422800, 1786),
(422825, '宣恩县', '湖北省,恩施土家族苗族自治州,宣恩县', 422800, 1787),
(422826, '咸丰县', '湖北省,恩施土家族苗族自治州,咸丰县', 422800, 1788),
(422827, '来凤县', '湖北省,恩施土家族苗族自治州,来凤县', 422800, 1789),
(422828, '鹤峰县', '湖北省,恩施土家族苗族自治州,鹤峰县', 422800, 1790),
(429004, '仙桃市', '湖北省,省直辖行政单位,仙桃市', 429000, 1791),
(429005, '潜江市', '湖北省,省直辖行政单位,潜江市', 429000, 1792),
(429006, '天门市', '湖北省,省直辖行政单位,天门市', 429000, 1793),
(429021, '神农架林区', '湖北省,省直辖行政单位,神农架林区', 429000, 1794),
(430101, '市辖区', '湖南省,长沙市,市辖区', 430100, 1795),
(430102, '芙蓉区', '湖南省,长沙市,芙蓉区', 430100, 1796),
(430103, '天心区', '湖南省,长沙市,天心区', 430100, 1797),
(430104, '岳麓区', '湖南省,长沙市,岳麓区', 430100, 1798),
(430105, '开福区', '湖南省,长沙市,开福区', 430100, 1799),
(430111, '雨花区', '湖南省,长沙市,雨花区', 430100, 1800),
(430121, '长沙县', '湖南省,长沙市,长沙县', 430100, 1801),
(430122, '望城县', '湖南省,长沙市,望城县', 430100, 1802),
(430124, '宁乡县', '湖南省,长沙市,宁乡县', 430100, 1803),
(430181, '浏阳市', '湖南省,长沙市,浏阳市', 430100, 1804),
(430201, '市辖区', '湖南省,株洲市,市辖区', 430200, 1805),
(430202, '荷塘区', '湖南省,株洲市,荷塘区', 430200, 1806),
(430203, '芦淞区', '湖南省,株洲市,芦淞区', 430200, 1807),
(430204, '石峰区', '湖南省,株洲市,石峰区', 430200, 1808),
(430211, '天元区', '湖南省,株洲市,天元区', 430200, 1809),
(430221, '株洲县', '湖南省,株洲市,株洲县', 430200, 1810),
(430223, '攸　县', '湖南省,株洲市,攸　县', 430200, 1811),
(430224, '茶陵县', '湖南省,株洲市,茶陵县', 430200, 1812),
(430225, '炎陵县', '湖南省,株洲市,炎陵县', 430200, 1813),
(430281, '醴陵市', '湖南省,株洲市,醴陵市', 430200, 1814),
(430301, '市辖区', '湖南省,湘潭市,市辖区', 430300, 1815),
(430302, '雨湖区', '湖南省,湘潭市,雨湖区', 430300, 1816),
(430304, '岳塘区', '湖南省,湘潭市,岳塘区', 430300, 1817),
(430321, '湘潭县', '湖南省,湘潭市,湘潭县', 430300, 1818),
(430381, '湘乡市', '湖南省,湘潭市,湘乡市', 430300, 1819),
(430382, '韶山市', '湖南省,湘潭市,韶山市', 430300, 1820),
(430401, '市辖区', '湖南省,衡阳市,市辖区', 430400, 1821),
(430405, '珠晖区', '湖南省,衡阳市,珠晖区', 430400, 1822),
(430406, '雁峰区', '湖南省,衡阳市,雁峰区', 430400, 1823),
(430407, '石鼓区', '湖南省,衡阳市,石鼓区', 430400, 1824),
(430408, '蒸湘区', '湖南省,衡阳市,蒸湘区', 430400, 1825),
(430412, '南岳区', '湖南省,衡阳市,南岳区', 430400, 1826),
(430421, '衡阳县', '湖南省,衡阳市,衡阳县', 430400, 1827),
(430422, '衡南县', '湖南省,衡阳市,衡南县', 430400, 1828),
(430423, '衡山县', '湖南省,衡阳市,衡山县', 430400, 1829),
(430424, '衡东县', '湖南省,衡阳市,衡东县', 430400, 1830),
(430426, '祁东县', '湖南省,衡阳市,祁东县', 430400, 1831),
(430481, '耒阳市', '湖南省,衡阳市,耒阳市', 430400, 1832),
(430482, '常宁市', '湖南省,衡阳市,常宁市', 430400, 1833),
(430501, '市辖区', '湖南省,邵阳市,市辖区', 430500, 1834),
(430502, '双清区', '湖南省,邵阳市,双清区', 430500, 1835),
(430503, '大祥区', '湖南省,邵阳市,大祥区', 430500, 1836),
(430511, '北塔区', '湖南省,邵阳市,北塔区', 430500, 1837),
(430521, '邵东县', '湖南省,邵阳市,邵东县', 430500, 1838),
(430522, '新邵县', '湖南省,邵阳市,新邵县', 430500, 1839),
(430523, '邵阳县', '湖南省,邵阳市,邵阳县', 430500, 1840),
(430524, '隆回县', '湖南省,邵阳市,隆回县', 430500, 1841),
(430525, '洞口县', '湖南省,邵阳市,洞口县', 430500, 1842),
(430527, '绥宁县', '湖南省,邵阳市,绥宁县', 430500, 1843),
(430528, '新宁县', '湖南省,邵阳市,新宁县', 430500, 1844),
(430529, '城步苗族自治县', '湖南省,邵阳市,城步苗族自治县', 430500, 1845),
(430581, '武冈市', '湖南省,邵阳市,武冈市', 430500, 1846),
(430601, '市辖区', '湖南省,岳阳市,市辖区', 430600, 1847),
(430602, '岳阳楼区', '湖南省,岳阳市,岳阳楼区', 430600, 1848),
(430603, '云溪区', '湖南省,岳阳市,云溪区', 430600, 1849),
(430611, '君山区', '湖南省,岳阳市,君山区', 430600, 1850),
(430621, '岳阳县', '湖南省,岳阳市,岳阳县', 430600, 1851),
(430623, '华容县', '湖南省,岳阳市,华容县', 430600, 1852),
(430624, '湘阴县', '湖南省,岳阳市,湘阴县', 430600, 1853),
(430626, '平江县', '湖南省,岳阳市,平江县', 430600, 1854),
(430681, '汨罗市', '湖南省,岳阳市,汨罗市', 430600, 1855),
(430682, '临湘市', '湖南省,岳阳市,临湘市', 430600, 1856),
(430701, '市辖区', '湖南省,常德市,市辖区', 430700, 1857),
(430702, '武陵区', '湖南省,常德市,武陵区', 430700, 1858),
(430703, '鼎城区', '湖南省,常德市,鼎城区', 430700, 1859),
(430721, '安乡县', '湖南省,常德市,安乡县', 430700, 1860),
(430722, '汉寿县', '湖南省,常德市,汉寿县', 430700, 1861),
(430723, '澧　县', '湖南省,常德市,澧　县', 430700, 1862),
(430724, '临澧县', '湖南省,常德市,临澧县', 430700, 1863),
(430725, '桃源县', '湖南省,常德市,桃源县', 430700, 1864),
(430726, '石门县', '湖南省,常德市,石门县', 430700, 1865),
(430781, '津市市', '湖南省,常德市,津市市', 430700, 1866),
(430801, '市辖区', '湖南省,张家界市,市辖区', 430800, 1867),
(430802, '永定区', '湖南省,张家界市,永定区', 430800, 1868),
(430811, '武陵源区', '湖南省,张家界市,武陵源区', 430800, 1869),
(430821, '慈利县', '湖南省,张家界市,慈利县', 430800, 1870),
(430822, '桑植县', '湖南省,张家界市,桑植县', 430800, 1871),
(430901, '市辖区', '湖南省,益阳市,市辖区', 430900, 1872),
(430902, '资阳区', '湖南省,益阳市,资阳区', 430900, 1873),
(430903, '赫山区', '湖南省,益阳市,赫山区', 430900, 1874),
(430921, '南　县', '湖南省,益阳市,南　县', 430900, 1875),
(430922, '桃江县', '湖南省,益阳市,桃江县', 430900, 1876),
(430923, '安化县', '湖南省,益阳市,安化县', 430900, 1877),
(430981, '沅江市', '湖南省,益阳市,沅江市', 430900, 1878),
(431001, '市辖区', '湖南省,郴州市,市辖区', 431000, 1879),
(431002, '北湖区', '湖南省,郴州市,北湖区', 431000, 1880),
(431003, '苏仙区', '湖南省,郴州市,苏仙区', 431000, 1881),
(431021, '桂阳县', '湖南省,郴州市,桂阳县', 431000, 1882),
(431022, '宜章县', '湖南省,郴州市,宜章县', 431000, 1883),
(431023, '永兴县', '湖南省,郴州市,永兴县', 431000, 1884),
(431024, '嘉禾县', '湖南省,郴州市,嘉禾县', 431000, 1885),
(431025, '临武县', '湖南省,郴州市,临武县', 431000, 1886),
(431026, '汝城县', '湖南省,郴州市,汝城县', 431000, 1887),
(431027, '桂东县', '湖南省,郴州市,桂东县', 431000, 1888),
(431028, '安仁县', '湖南省,郴州市,安仁县', 431000, 1889),
(431081, '资兴市', '湖南省,郴州市,资兴市', 431000, 1890),
(431101, '市辖区', '湖南省,永州市,市辖区', 431100, 1891),
(431102, '芝山区', '湖南省,永州市,芝山区', 431100, 1892),
(431103, '冷水滩区', '湖南省,永州市,冷水滩区', 431100, 1893),
(431121, '祁阳县', '湖南省,永州市,祁阳县', 431100, 1894),
(431122, '东安县', '湖南省,永州市,东安县', 431100, 1895),
(431123, '双牌县', '湖南省,永州市,双牌县', 431100, 1896),
(431124, '道　县', '湖南省,永州市,道　县', 431100, 1897),
(431125, '江永县', '湖南省,永州市,江永县', 431100, 1898),
(431126, '宁远县', '湖南省,永州市,宁远县', 431100, 1899),
(431127, '蓝山县', '湖南省,永州市,蓝山县', 431100, 1900),
(431128, '新田县', '湖南省,永州市,新田县', 431100, 1901),
(431129, '江华瑶族自治县', '湖南省,永州市,江华瑶族自治县', 431100, 1902),
(431201, '市辖区', '湖南省,怀化市,市辖区', 431200, 1903),
(431202, '鹤城区', '湖南省,怀化市,鹤城区', 431200, 1904),
(431221, '中方县', '湖南省,怀化市,中方县', 431200, 1905),
(431222, '沅陵县', '湖南省,怀化市,沅陵县', 431200, 1906),
(431223, '辰溪县', '湖南省,怀化市,辰溪县', 431200, 1907),
(431224, '溆浦县', '湖南省,怀化市,溆浦县', 431200, 1908),
(431225, '会同县', '湖南省,怀化市,会同县', 431200, 1909),
(431226, '麻阳苗族自治县', '湖南省,怀化市,麻阳苗族自治县', 431200, 1910),
(431227, '新晃侗族自治县', '湖南省,怀化市,新晃侗族自治县', 431200, 1911),
(431228, '芷江侗族自治县', '湖南省,怀化市,芷江侗族自治县', 431200, 1912),
(431229, '靖州苗族侗族自治县', '湖南省,怀化市,靖州苗族侗族自治县', 431200, 1913),
(431230, '通道侗族自治县', '湖南省,怀化市,通道侗族自治县', 431200, 1914),
(431281, '洪江市', '湖南省,怀化市,洪江市', 431200, 1915),
(431301, '市辖区', '湖南省,娄底市,市辖区', 431300, 1916);
INSERT INTO `pw_areas` (`areaid`, `name`, `joinname`, `parentid`, `vieworder`) VALUES
(431302, '娄星区', '湖南省,娄底市,娄星区', 431300, 1917),
(431321, '双峰县', '湖南省,娄底市,双峰县', 431300, 1918),
(431322, '新化县', '湖南省,娄底市,新化县', 431300, 1919),
(431381, '冷水江市', '湖南省,娄底市,冷水江市', 431300, 1920),
(431382, '涟源市', '湖南省,娄底市,涟源市', 431300, 1921),
(433101, '吉首市', '湖南省,湘西土家族苗族自治州,吉首市', 433100, 1922),
(433122, '泸溪县', '湖南省,湘西土家族苗族自治州,泸溪县', 433100, 1923),
(433123, '凤凰县', '湖南省,湘西土家族苗族自治州,凤凰县', 433100, 1924),
(433124, '花垣县', '湖南省,湘西土家族苗族自治州,花垣县', 433100, 1925),
(433125, '保靖县', '湖南省,湘西土家族苗族自治州,保靖县', 433100, 1926),
(433126, '古丈县', '湖南省,湘西土家族苗族自治州,古丈县', 433100, 1927),
(433127, '永顺县', '湖南省,湘西土家族苗族自治州,永顺县', 433100, 1928),
(433130, '龙山县', '湖南省,湘西土家族苗族自治州,龙山县', 433100, 1929),
(440101, '市辖区', '广东省,广州市,市辖区', 440100, 1930),
(440102, '东山区', '广东省,广州市,东山区', 440100, 1931),
(440103, '荔湾区', '广东省,广州市,荔湾区', 440100, 1932),
(440104, '越秀区', '广东省,广州市,越秀区', 440100, 1933),
(440105, '海珠区', '广东省,广州市,海珠区', 440100, 1934),
(440106, '天河区', '广东省,广州市,天河区', 440100, 1935),
(440107, '芳村区', '广东省,广州市,芳村区', 440100, 1936),
(440111, '白云区', '广东省,广州市,白云区', 440100, 1937),
(440112, '黄埔区', '广东省,广州市,黄埔区', 440100, 1938),
(440113, '番禺区', '广东省,广州市,番禺区', 440100, 1939),
(440114, '花都区', '广东省,广州市,花都区', 440100, 1940),
(440183, '增城市', '广东省,广州市,增城市', 440100, 1941),
(440184, '从化市', '广东省,广州市,从化市', 440100, 1942),
(440201, '市辖区', '广东省,韶关市,市辖区', 440200, 1943),
(440203, '武江区', '广东省,韶关市,武江区', 440200, 1944),
(440204, '浈江区', '广东省,韶关市,浈江区', 440200, 1945),
(440205, '曲江区', '广东省,韶关市,曲江区', 440200, 1946),
(440222, '始兴县', '广东省,韶关市,始兴县', 440200, 1947),
(440224, '仁化县', '广东省,韶关市,仁化县', 440200, 1948),
(440229, '翁源县', '广东省,韶关市,翁源县', 440200, 1949),
(440232, '乳源瑶族自治县', '广东省,韶关市,乳源瑶族自治县', 440200, 1950),
(440233, '新丰县', '广东省,韶关市,新丰县', 440200, 1951),
(440281, '乐昌市', '广东省,韶关市,乐昌市', 440200, 1952),
(440282, '南雄市', '广东省,韶关市,南雄市', 440200, 1953),
(440301, '市辖区', '广东省,深圳市,市辖区', 440300, 1954),
(440303, '罗湖区', '广东省,深圳市,罗湖区', 440300, 1955),
(440304, '福田区', '广东省,深圳市,福田区', 440300, 1956),
(440305, '南山区', '广东省,深圳市,南山区', 440300, 1957),
(440306, '宝安区', '广东省,深圳市,宝安区', 440300, 1958),
(440307, '龙岗区', '广东省,深圳市,龙岗区', 440300, 1959),
(440308, '盐田区', '广东省,深圳市,盐田区', 440300, 1960),
(440401, '市辖区', '广东省,珠海市,市辖区', 440400, 1961),
(440402, '香洲区', '广东省,珠海市,香洲区', 440400, 1962),
(440403, '斗门区', '广东省,珠海市,斗门区', 440400, 1963),
(440404, '金湾区', '广东省,珠海市,金湾区', 440400, 1964),
(440501, '市辖区', '广东省,汕头市,市辖区', 440500, 1965),
(440507, '龙湖区', '广东省,汕头市,龙湖区', 440500, 1966),
(440511, '金平区', '广东省,汕头市,金平区', 440500, 1967),
(440512, '濠江区', '广东省,汕头市,濠江区', 440500, 1968),
(440513, '潮阳区', '广东省,汕头市,潮阳区', 440500, 1969),
(440514, '潮南区', '广东省,汕头市,潮南区', 440500, 1970),
(440515, '澄海区', '广东省,汕头市,澄海区', 440500, 1971),
(440523, '南澳县', '广东省,汕头市,南澳县', 440500, 1972),
(440601, '市辖区', '广东省,佛山市,市辖区', 440600, 1973),
(440604, '禅城区', '广东省,佛山市,禅城区', 440600, 1974),
(440605, '南海区', '广东省,佛山市,南海区', 440600, 1975),
(440606, '顺德区', '广东省,佛山市,顺德区', 440600, 1976),
(440607, '三水区', '广东省,佛山市,三水区', 440600, 1977),
(440608, '高明区', '广东省,佛山市,高明区', 440600, 1978),
(440701, '市辖区', '广东省,江门市,市辖区', 440700, 1979),
(440703, '蓬江区', '广东省,江门市,蓬江区', 440700, 1980),
(440704, '江海区', '广东省,江门市,江海区', 440700, 1981),
(440705, '新会区', '广东省,江门市,新会区', 440700, 1982),
(440781, '台山市', '广东省,江门市,台山市', 440700, 1983),
(440783, '开平市', '广东省,江门市,开平市', 440700, 1984),
(440784, '鹤山市', '广东省,江门市,鹤山市', 440700, 1985),
(440785, '恩平市', '广东省,江门市,恩平市', 440700, 1986),
(440801, '市辖区', '广东省,湛江市,市辖区', 440800, 1987),
(440802, '赤坎区', '广东省,湛江市,赤坎区', 440800, 1988),
(440803, '霞山区', '广东省,湛江市,霞山区', 440800, 1989),
(440804, '坡头区', '广东省,湛江市,坡头区', 440800, 1990),
(440811, '麻章区', '广东省,湛江市,麻章区', 440800, 1991),
(440823, '遂溪县', '广东省,湛江市,遂溪县', 440800, 1992),
(440825, '徐闻县', '广东省,湛江市,徐闻县', 440800, 1993),
(440881, '廉江市', '广东省,湛江市,廉江市', 440800, 1994),
(440882, '雷州市', '广东省,湛江市,雷州市', 440800, 1995),
(440883, '吴川市', '广东省,湛江市,吴川市', 440800, 1996),
(440901, '市辖区', '广东省,茂名市,市辖区', 440900, 1997),
(440902, '茂南区', '广东省,茂名市,茂南区', 440900, 1998),
(440903, '茂港区', '广东省,茂名市,茂港区', 440900, 1999),
(440923, '电白县', '广东省,茂名市,电白县', 440900, 2000),
(440981, '高州市', '广东省,茂名市,高州市', 440900, 2001),
(440982, '化州市', '广东省,茂名市,化州市', 440900, 2002),
(440983, '信宜市', '广东省,茂名市,信宜市', 440900, 2003),
(441201, '市辖区', '广东省,肇庆市,市辖区', 441200, 2004),
(441202, '端州区', '广东省,肇庆市,端州区', 441200, 2005),
(441203, '鼎湖区', '广东省,肇庆市,鼎湖区', 441200, 2006),
(441223, '广宁县', '广东省,肇庆市,广宁县', 441200, 2007),
(441224, '怀集县', '广东省,肇庆市,怀集县', 441200, 2008),
(441225, '封开县', '广东省,肇庆市,封开县', 441200, 2009),
(441226, '德庆县', '广东省,肇庆市,德庆县', 441200, 2010),
(441283, '高要市', '广东省,肇庆市,高要市', 441200, 2011),
(441284, '四会市', '广东省,肇庆市,四会市', 441200, 2012),
(441301, '市辖区', '广东省,惠州市,市辖区', 441300, 2013),
(441302, '惠城区', '广东省,惠州市,惠城区', 441300, 2014),
(441303, '惠阳区', '广东省,惠州市,惠阳区', 441300, 2015),
(441322, '博罗县', '广东省,惠州市,博罗县', 441300, 2016),
(441323, '惠东县', '广东省,惠州市,惠东县', 441300, 2017),
(441324, '龙门县', '广东省,惠州市,龙门县', 441300, 2018),
(441401, '市辖区', '广东省,梅州市,市辖区', 441400, 2019),
(441402, '梅江区', '广东省,梅州市,梅江区', 441400, 2020),
(441421, '梅　县', '广东省,梅州市,梅　县', 441400, 2021),
(441422, '大埔县', '广东省,梅州市,大埔县', 441400, 2022),
(441423, '丰顺县', '广东省,梅州市,丰顺县', 441400, 2023),
(441424, '五华县', '广东省,梅州市,五华县', 441400, 2024),
(441426, '平远县', '广东省,梅州市,平远县', 441400, 2025),
(441427, '蕉岭县', '广东省,梅州市,蕉岭县', 441400, 2026),
(441481, '兴宁市', '广东省,梅州市,兴宁市', 441400, 2027),
(441501, '市辖区', '广东省,汕尾市,市辖区', 441500, 2028),
(441502, '城　区', '广东省,汕尾市,城　区', 441500, 2029),
(441521, '海丰县', '广东省,汕尾市,海丰县', 441500, 2030),
(441523, '陆河县', '广东省,汕尾市,陆河县', 441500, 2031),
(441581, '陆丰市', '广东省,汕尾市,陆丰市', 441500, 2032),
(441601, '市辖区', '广东省,河源市,市辖区', 441600, 2033),
(441602, '源城区', '广东省,河源市,源城区', 441600, 2034),
(441621, '紫金县', '广东省,河源市,紫金县', 441600, 2035),
(441622, '龙川县', '广东省,河源市,龙川县', 441600, 2036),
(441623, '连平县', '广东省,河源市,连平县', 441600, 2037),
(441624, '和平县', '广东省,河源市,和平县', 441600, 2038),
(441625, '东源县', '广东省,河源市,东源县', 441600, 2039),
(441701, '市辖区', '广东省,阳江市,市辖区', 441700, 2040),
(441702, '江城区', '广东省,阳江市,江城区', 441700, 2041),
(441721, '阳西县', '广东省,阳江市,阳西县', 441700, 2042),
(441723, '阳东县', '广东省,阳江市,阳东县', 441700, 2043),
(441781, '阳春市', '广东省,阳江市,阳春市', 441700, 2044),
(441801, '市辖区', '广东省,清远市,市辖区', 441800, 2045),
(441802, '清城区', '广东省,清远市,清城区', 441800, 2046),
(441821, '佛冈县', '广东省,清远市,佛冈县', 441800, 2047),
(441823, '阳山县', '广东省,清远市,阳山县', 441800, 2048),
(441825, '连山壮族瑶族自治县', '广东省,清远市,连山壮族瑶族自治县', 441800, 2049),
(441826, '连南瑶族自治县', '广东省,清远市,连南瑶族自治县', 441800, 2050),
(441827, '清新县', '广东省,清远市,清新县', 441800, 2051),
(441881, '英德市', '广东省,清远市,英德市', 441800, 2052),
(441882, '连州市', '广东省,清远市,连州市', 441800, 2053),
(445101, '市辖区', '广东省,潮州市,市辖区', 445100, 2054),
(445102, '湘桥区', '广东省,潮州市,湘桥区', 445100, 2055),
(445121, '潮安县', '广东省,潮州市,潮安县', 445100, 2056),
(445122, '饶平县', '广东省,潮州市,饶平县', 445100, 2057),
(445201, '市辖区', '广东省,揭阳市,市辖区', 445200, 2058),
(445202, '榕城区', '广东省,揭阳市,榕城区', 445200, 2059),
(445221, '揭东县', '广东省,揭阳市,揭东县', 445200, 2060),
(445222, '揭西县', '广东省,揭阳市,揭西县', 445200, 2061),
(445224, '惠来县', '广东省,揭阳市,惠来县', 445200, 2062),
(445281, '普宁市', '广东省,揭阳市,普宁市', 445200, 2063),
(445301, '市辖区', '广东省,云浮市,市辖区', 445300, 2064),
(445302, '云城区', '广东省,云浮市,云城区', 445300, 2065),
(445321, '新兴县', '广东省,云浮市,新兴县', 445300, 2066),
(445322, '郁南县', '广东省,云浮市,郁南县', 445300, 2067),
(445323, '云安县', '广东省,云浮市,云安县', 445300, 2068),
(445381, '罗定市', '广东省,云浮市,罗定市', 445300, 2069),
(450101, '市辖区', '广西壮族自治区,南宁市,市辖区', 450100, 2070),
(450102, '兴宁区', '广西壮族自治区,南宁市,兴宁区', 450100, 2071),
(450103, '青秀区', '广西壮族自治区,南宁市,青秀区', 450100, 2072),
(450105, '江南区', '广西壮族自治区,南宁市,江南区', 450100, 2073),
(450107, '西乡塘区', '广西壮族自治区,南宁市,西乡塘区', 450100, 2074),
(450108, '良庆区', '广西壮族自治区,南宁市,良庆区', 450100, 2075),
(450109, '邕宁区', '广西壮族自治区,南宁市,邕宁区', 450100, 2076),
(450122, '武鸣县', '广西壮族自治区,南宁市,武鸣县', 450100, 2077),
(450123, '隆安县', '广西壮族自治区,南宁市,隆安县', 450100, 2078),
(450124, '马山县', '广西壮族自治区,南宁市,马山县', 450100, 2079),
(450125, '上林县', '广西壮族自治区,南宁市,上林县', 450100, 2080),
(450126, '宾阳县', '广西壮族自治区,南宁市,宾阳县', 450100, 2081),
(450127, '横　县', '广西壮族自治区,南宁市,横　县', 450100, 2082),
(450201, '市辖区', '广西壮族自治区,柳州市,市辖区', 450200, 2083),
(450202, '城中区', '广西壮族自治区,柳州市,城中区', 450200, 2084),
(450203, '鱼峰区', '广西壮族自治区,柳州市,鱼峰区', 450200, 2085),
(450204, '柳南区', '广西壮族自治区,柳州市,柳南区', 450200, 2086),
(450205, '柳北区', '广西壮族自治区,柳州市,柳北区', 450200, 2087),
(450221, '柳江县', '广西壮族自治区,柳州市,柳江县', 450200, 2088),
(450222, '柳城县', '广西壮族自治区,柳州市,柳城县', 450200, 2089),
(450223, '鹿寨县', '广西壮族自治区,柳州市,鹿寨县', 450200, 2090),
(450224, '融安县', '广西壮族自治区,柳州市,融安县', 450200, 2091),
(450225, '融水苗族自治县', '广西壮族自治区,柳州市,融水苗族自治县', 450200, 2092),
(450226, '三江侗族自治县', '广西壮族自治区,柳州市,三江侗族自治县', 450200, 2093),
(450301, '市辖区', '广西壮族自治区,桂林市,市辖区', 450300, 2094),
(450302, '秀峰区', '广西壮族自治区,桂林市,秀峰区', 450300, 2095),
(450303, '叠彩区', '广西壮族自治区,桂林市,叠彩区', 450300, 2096),
(450304, '象山区', '广西壮族自治区,桂林市,象山区', 450300, 2097),
(450305, '七星区', '广西壮族自治区,桂林市,七星区', 450300, 2098),
(450311, '雁山区', '广西壮族自治区,桂林市,雁山区', 450300, 2099),
(450321, '阳朔县', '广西壮族自治区,桂林市,阳朔县', 450300, 2100),
(450322, '临桂县', '广西壮族自治区,桂林市,临桂县', 450300, 2101),
(450323, '灵川县', '广西壮族自治区,桂林市,灵川县', 450300, 2102),
(450324, '全州县', '广西壮族自治区,桂林市,全州县', 450300, 2103),
(450325, '兴安县', '广西壮族自治区,桂林市,兴安县', 450300, 2104),
(450326, '永福县', '广西壮族自治区,桂林市,永福县', 450300, 2105),
(450327, '灌阳县', '广西壮族自治区,桂林市,灌阳县', 450300, 2106),
(450328, '龙胜各族自治县', '广西壮族自治区,桂林市,龙胜各族自治县', 450300, 2107),
(450329, '资源县', '广西壮族自治区,桂林市,资源县', 450300, 2108),
(450330, '平乐县', '广西壮族自治区,桂林市,平乐县', 450300, 2109),
(450331, '荔蒲县', '广西壮族自治区,桂林市,荔蒲县', 450300, 2110),
(450332, '恭城瑶族自治县', '广西壮族自治区,桂林市,恭城瑶族自治县', 450300, 2111),
(450401, '市辖区', '广西壮族自治区,梧州市,市辖区', 450400, 2112),
(450403, '万秀区', '广西壮族自治区,梧州市,万秀区', 450400, 2113),
(450404, '蝶山区', '广西壮族自治区,梧州市,蝶山区', 450400, 2114),
(450405, '长洲区', '广西壮族自治区,梧州市,长洲区', 450400, 2115),
(450421, '苍梧县', '广西壮族自治区,梧州市,苍梧县', 450400, 2116),
(450422, '藤　县', '广西壮族自治区,梧州市,藤　县', 450400, 2117),
(450423, '蒙山县', '广西壮族自治区,梧州市,蒙山县', 450400, 2118),
(450481, '岑溪市', '广西壮族自治区,梧州市,岑溪市', 450400, 2119),
(450501, '市辖区', '广西壮族自治区,北海市,市辖区', 450500, 2120),
(450502, '海城区', '广西壮族自治区,北海市,海城区', 450500, 2121),
(450503, '银海区', '广西壮族自治区,北海市,银海区', 450500, 2122),
(450512, '铁山港区', '广西壮族自治区,北海市,铁山港区', 450500, 2123),
(450521, '合浦县', '广西壮族自治区,北海市,合浦县', 450500, 2124),
(450601, '市辖区', '广西壮族自治区,防城港市,市辖区', 450600, 2125),
(450602, '港口区', '广西壮族自治区,防城港市,港口区', 450600, 2126),
(450603, '防城区', '广西壮族自治区,防城港市,防城区', 450600, 2127),
(450621, '上思县', '广西壮族自治区,防城港市,上思县', 450600, 2128),
(450681, '东兴市', '广西壮族自治区,防城港市,东兴市', 450600, 2129),
(450701, '市辖区', '广西壮族自治区,钦州市,市辖区', 450700, 2130),
(450702, '钦南区', '广西壮族自治区,钦州市,钦南区', 450700, 2131),
(450703, '钦北区', '广西壮族自治区,钦州市,钦北区', 450700, 2132),
(450721, '灵山县', '广西壮族自治区,钦州市,灵山县', 450700, 2133),
(450722, '浦北县', '广西壮族自治区,钦州市,浦北县', 450700, 2134),
(450801, '市辖区', '广西壮族自治区,贵港市,市辖区', 450800, 2135),
(450802, '港北区', '广西壮族自治区,贵港市,港北区', 450800, 2136),
(450803, '港南区', '广西壮族自治区,贵港市,港南区', 450800, 2137),
(450804, '覃塘区', '广西壮族自治区,贵港市,覃塘区', 450800, 2138),
(450821, '平南县', '广西壮族自治区,贵港市,平南县', 450800, 2139),
(450881, '桂平市', '广西壮族自治区,贵港市,桂平市', 450800, 2140),
(450901, '市辖区', '广西壮族自治区,玉林市,市辖区', 450900, 2141),
(450902, '玉州区', '广西壮族自治区,玉林市,玉州区', 450900, 2142),
(450921, '容　县', '广西壮族自治区,玉林市,容　县', 450900, 2143),
(450922, '陆川县', '广西壮族自治区,玉林市,陆川县', 450900, 2144),
(450923, '博白县', '广西壮族自治区,玉林市,博白县', 450900, 2145),
(450924, '兴业县', '广西壮族自治区,玉林市,兴业县', 450900, 2146),
(450981, '北流市', '广西壮族自治区,玉林市,北流市', 450900, 2147),
(451001, '市辖区', '广西壮族自治区,百色市,市辖区', 451000, 2148),
(451002, '右江区', '广西壮族自治区,百色市,右江区', 451000, 2149),
(451021, '田阳县', '广西壮族自治区,百色市,田阳县', 451000, 2150),
(451022, '田东县', '广西壮族自治区,百色市,田东县', 451000, 2151),
(451023, '平果县', '广西壮族自治区,百色市,平果县', 451000, 2152),
(451024, '德保县', '广西壮族自治区,百色市,德保县', 451000, 2153),
(451025, '靖西县', '广西壮族自治区,百色市,靖西县', 451000, 2154),
(451026, '那坡县', '广西壮族自治区,百色市,那坡县', 451000, 2155),
(451027, '凌云县', '广西壮族自治区,百色市,凌云县', 451000, 2156),
(451028, '乐业县', '广西壮族自治区,百色市,乐业县', 451000, 2157),
(451029, '田林县', '广西壮族自治区,百色市,田林县', 451000, 2158),
(451030, '西林县', '广西壮族自治区,百色市,西林县', 451000, 2159),
(451031, '隆林各族自治县', '广西壮族自治区,百色市,隆林各族自治县', 451000, 2160),
(451101, '市辖区', '广西壮族自治区,贺州市,市辖区', 451100, 2161),
(451102, '八步区', '广西壮族自治区,贺州市,八步区', 451100, 2162),
(451121, '昭平县', '广西壮族自治区,贺州市,昭平县', 451100, 2163),
(451122, '钟山县', '广西壮族自治区,贺州市,钟山县', 451100, 2164),
(451123, '富川瑶族自治县', '广西壮族自治区,贺州市,富川瑶族自治县', 451100, 2165),
(451201, '市辖区', '广西壮族自治区,河池市,市辖区', 451200, 2166),
(451202, '金城江区', '广西壮族自治区,河池市,金城江区', 451200, 2167),
(451221, '南丹县', '广西壮族自治区,河池市,南丹县', 451200, 2168),
(451222, '天峨县', '广西壮族自治区,河池市,天峨县', 451200, 2169),
(451223, '凤山县', '广西壮族自治区,河池市,凤山县', 451200, 2170),
(451224, '东兰县', '广西壮族自治区,河池市,东兰县', 451200, 2171),
(451225, '罗城仫佬族自治县', '广西壮族自治区,河池市,罗城仫佬族自治县', 451200, 2172),
(451226, '环江毛南族自治县', '广西壮族自治区,河池市,环江毛南族自治县', 451200, 2173),
(451227, '巴马瑶族自治县', '广西壮族自治区,河池市,巴马瑶族自治县', 451200, 2174),
(451228, '都安瑶族自治县', '广西壮族自治区,河池市,都安瑶族自治县', 451200, 2175),
(451229, '大化瑶族自治县', '广西壮族自治区,河池市,大化瑶族自治县', 451200, 2176),
(451281, '宜州市', '广西壮族自治区,河池市,宜州市', 451200, 2177),
(451301, '市辖区', '广西壮族自治区,来宾市,市辖区', 451300, 2178),
(451302, '兴宾区', '广西壮族自治区,来宾市,兴宾区', 451300, 2179),
(451321, '忻城县', '广西壮族自治区,来宾市,忻城县', 451300, 2180),
(451322, '象州县', '广西壮族自治区,来宾市,象州县', 451300, 2181),
(451323, '武宣县', '广西壮族自治区,来宾市,武宣县', 451300, 2182),
(451324, '金秀瑶族自治县', '广西壮族自治区,来宾市,金秀瑶族自治县', 451300, 2183),
(451381, '合山市', '广西壮族自治区,来宾市,合山市', 451300, 2184),
(451401, '市辖区', '广西壮族自治区,崇左市,市辖区', 451400, 2185),
(451402, '江洲区', '广西壮族自治区,崇左市,江洲区', 451400, 2186),
(451421, '扶绥县', '广西壮族自治区,崇左市,扶绥县', 451400, 2187),
(451422, '宁明县', '广西壮族自治区,崇左市,宁明县', 451400, 2188),
(451423, '龙州县', '广西壮族自治区,崇左市,龙州县', 451400, 2189),
(451424, '大新县', '广西壮族自治区,崇左市,大新县', 451400, 2190),
(451425, '天等县', '广西壮族自治区,崇左市,天等县', 451400, 2191),
(451481, '凭祥市', '广西壮族自治区,崇左市,凭祥市', 451400, 2192),
(460101, '市辖区', '海南省,海口市,市辖区', 460100, 2193),
(460105, '秀英区', '海南省,海口市,秀英区', 460100, 2194),
(460106, '龙华区', '海南省,海口市,龙华区', 460100, 2195),
(460107, '琼山区', '海南省,海口市,琼山区', 460100, 2196),
(460108, '美兰区', '海南省,海口市,美兰区', 460100, 2197),
(460201, '市辖区', '海南省,三亚市,市辖区', 460200, 2198),
(469001, '五指山市', '海南省,省直辖县级行政单位,五指山市', 469000, 2199),
(469002, '琼海市', '海南省,省直辖县级行政单位,琼海市', 469000, 2200),
(469003, '儋州市', '海南省,省直辖县级行政单位,儋州市', 469000, 2201),
(469005, '文昌市', '海南省,省直辖县级行政单位,文昌市', 469000, 2202),
(469006, '万宁市', '海南省,省直辖县级行政单位,万宁市', 469000, 2203),
(469007, '东方市', '海南省,省直辖县级行政单位,东方市', 469000, 2204),
(469025, '定安县', '海南省,省直辖县级行政单位,定安县', 469000, 2205),
(469026, '屯昌县', '海南省,省直辖县级行政单位,屯昌县', 469000, 2206),
(469027, '澄迈县', '海南省,省直辖县级行政单位,澄迈县', 469000, 2207),
(469028, '临高县', '海南省,省直辖县级行政单位,临高县', 469000, 2208),
(469030, '白沙黎族自治县', '海南省,省直辖县级行政单位,白沙黎族自治县', 469000, 2209),
(469031, '昌江黎族自治县', '海南省,省直辖县级行政单位,昌江黎族自治县', 469000, 2210),
(469033, '乐东黎族自治县', '海南省,省直辖县级行政单位,乐东黎族自治县', 469000, 2211),
(469034, '陵水黎族自治县', '海南省,省直辖县级行政单位,陵水黎族自治县', 469000, 2212),
(469035, '保亭黎族苗族自治县', '海南省,省直辖县级行政单位,保亭黎族苗族自治县', 469000, 2213),
(469036, '琼中黎族苗族自治县', '海南省,省直辖县级行政单位,琼中黎族苗族自治县', 469000, 2214),
(469037, '西沙群岛', '海南省,省直辖县级行政单位,西沙群岛', 469000, 2215),
(469038, '南沙群岛', '海南省,省直辖县级行政单位,南沙群岛', 469000, 2216),
(469039, '中沙群岛的岛礁及其海域', '海南省,省直辖县级行政单位,中沙群岛的岛礁及其海域', 469000, 2217),
(500101, '万州区', '重庆市,市辖区,万州区', 500100, 2218),
(500102, '涪陵区', '重庆市,市辖区,涪陵区', 500100, 2219),
(500103, '渝中区', '重庆市,市辖区,渝中区', 500100, 2220),
(500104, '大渡口区', '重庆市,市辖区,大渡口区', 500100, 2221),
(500105, '江北区', '重庆市,市辖区,江北区', 500100, 2222),
(500106, '沙坪坝区', '重庆市,市辖区,沙坪坝区', 500100, 2223),
(500107, '九龙坡区', '重庆市,市辖区,九龙坡区', 500100, 2224),
(500108, '南岸区', '重庆市,市辖区,南岸区', 500100, 2225),
(500109, '北碚区', '重庆市,市辖区,北碚区', 500100, 2226),
(500110, '万盛区', '重庆市,市辖区,万盛区', 500100, 2227),
(500111, '双桥区', '重庆市,市辖区,双桥区', 500100, 2228),
(500112, '渝北区', '重庆市,市辖区,渝北区', 500100, 2229),
(500113, '巴南区', '重庆市,市辖区,巴南区', 500100, 2230),
(500114, '黔江区', '重庆市,市辖区,黔江区', 500100, 2231),
(500115, '长寿区', '重庆市,市辖区,长寿区', 500100, 2232),
(500222, '綦江县', '重庆市,县,綦江县', 500200, 2233),
(500223, '潼南县', '重庆市,县,潼南县', 500200, 2234),
(500224, '铜梁县', '重庆市,县,铜梁县', 500200, 2235),
(500225, '大足县', '重庆市,县,大足县', 500200, 2236),
(500226, '荣昌县', '重庆市,县,荣昌县', 500200, 2237),
(500227, '璧山县', '重庆市,县,璧山县', 500200, 2238),
(500228, '梁平县', '重庆市,县,梁平县', 500200, 2239),
(500229, '城口县', '重庆市,县,城口县', 500200, 2240),
(500230, '丰都县', '重庆市,县,丰都县', 500200, 2241),
(500231, '垫江县', '重庆市,县,垫江县', 500200, 2242),
(500232, '武隆县', '重庆市,县,武隆县', 500200, 2243),
(500233, '忠　县', '重庆市,县,忠　县', 500200, 2244),
(500234, '开　县', '重庆市,县,开　县', 500200, 2245),
(500235, '云阳县', '重庆市,县,云阳县', 500200, 2246),
(500236, '奉节县', '重庆市,县,奉节县', 500200, 2247),
(500237, '巫山县', '重庆市,县,巫山县', 500200, 2248),
(500238, '巫溪县', '重庆市,县,巫溪县', 500200, 2249),
(500240, '石柱土家族自治县', '重庆市,县,石柱土家族自治县', 500200, 2250),
(500241, '秀山土家族苗族自治县', '重庆市,县,秀山土家族苗族自治县', 500200, 2251),
(500242, '酉阳土家族苗族自治县', '重庆市,县,酉阳土家族苗族自治县', 500200, 2252),
(500243, '彭水苗族土家族自治县', '重庆市,县,彭水苗族土家族自治县', 500200, 2253),
(500381, '江津市', '重庆市,市,江津市', 500300, 2254),
(500382, '合川市', '重庆市,市,合川市', 500300, 2255),
(500383, '永川市', '重庆市,市,永川市', 500300, 2256),
(500384, '南川市', '重庆市,市,南川市', 500300, 2257),
(510101, '市辖区', '四川省,成都市,市辖区', 510100, 2258),
(510104, '锦江区', '四川省,成都市,锦江区', 510100, 2259),
(510105, '青羊区', '四川省,成都市,青羊区', 510100, 2260),
(510106, '金牛区', '四川省,成都市,金牛区', 510100, 2261),
(510107, '武侯区', '四川省,成都市,武侯区', 510100, 2262),
(510108, '成华区', '四川省,成都市,成华区', 510100, 2263),
(510112, '龙泉驿区', '四川省,成都市,龙泉驿区', 510100, 2264),
(510113, '青白江区', '四川省,成都市,青白江区', 510100, 2265),
(510114, '新都区', '四川省,成都市,新都区', 510100, 2266),
(510115, '温江区', '四川省,成都市,温江区', 510100, 2267),
(510121, '金堂县', '四川省,成都市,金堂县', 510100, 2268),
(510122, '双流县', '四川省,成都市,双流县', 510100, 2269),
(510124, '郫　县', '四川省,成都市,郫　县', 510100, 2270),
(510129, '大邑县', '四川省,成都市,大邑县', 510100, 2271),
(510131, '蒲江县', '四川省,成都市,蒲江县', 510100, 2272),
(510132, '新津县', '四川省,成都市,新津县', 510100, 2273),
(510181, '都江堰市', '四川省,成都市,都江堰市', 510100, 2274),
(510182, '彭州市', '四川省,成都市,彭州市', 510100, 2275),
(510183, '邛崃市', '四川省,成都市,邛崃市', 510100, 2276),
(510184, '崇州市', '四川省,成都市,崇州市', 510100, 2277),
(510301, '市辖区', '四川省,自贡市,市辖区', 510300, 2278),
(510302, '自流井区', '四川省,自贡市,自流井区', 510300, 2279),
(510303, '贡井区', '四川省,自贡市,贡井区', 510300, 2280),
(510304, '大安区', '四川省,自贡市,大安区', 510300, 2281),
(510311, '沿滩区', '四川省,自贡市,沿滩区', 510300, 2282),
(510321, '荣　县', '四川省,自贡市,荣　县', 510300, 2283),
(510322, '富顺县', '四川省,自贡市,富顺县', 510300, 2284),
(510401, '市辖区', '四川省,攀枝花市,市辖区', 510400, 2285),
(510402, '东　区', '四川省,攀枝花市,东　区', 510400, 2286),
(510403, '西　区', '四川省,攀枝花市,西　区', 510400, 2287),
(510411, '仁和区', '四川省,攀枝花市,仁和区', 510400, 2288),
(510421, '米易县', '四川省,攀枝花市,米易县', 510400, 2289),
(510422, '盐边县', '四川省,攀枝花市,盐边县', 510400, 2290),
(510501, '市辖区', '四川省,泸州市,市辖区', 510500, 2291),
(510502, '江阳区', '四川省,泸州市,江阳区', 510500, 2292),
(510503, '纳溪区', '四川省,泸州市,纳溪区', 510500, 2293),
(510504, '龙马潭区', '四川省,泸州市,龙马潭区', 510500, 2294),
(510521, '泸　县', '四川省,泸州市,泸　县', 510500, 2295),
(510522, '合江县', '四川省,泸州市,合江县', 510500, 2296),
(510524, '叙永县', '四川省,泸州市,叙永县', 510500, 2297),
(510525, '古蔺县', '四川省,泸州市,古蔺县', 510500, 2298),
(510601, '市辖区', '四川省,德阳市,市辖区', 510600, 2299),
(510603, '旌阳区', '四川省,德阳市,旌阳区', 510600, 2300),
(510623, '中江县', '四川省,德阳市,中江县', 510600, 2301),
(510626, '罗江县', '四川省,德阳市,罗江县', 510600, 2302),
(510681, '广汉市', '四川省,德阳市,广汉市', 510600, 2303),
(510682, '什邡市', '四川省,德阳市,什邡市', 510600, 2304),
(510683, '绵竹市', '四川省,德阳市,绵竹市', 510600, 2305),
(510701, '市辖区', '四川省,绵阳市,市辖区', 510700, 2306),
(510703, '涪城区', '四川省,绵阳市,涪城区', 510700, 2307),
(510704, '游仙区', '四川省,绵阳市,游仙区', 510700, 2308),
(510722, '三台县', '四川省,绵阳市,三台县', 510700, 2309),
(510723, '盐亭县', '四川省,绵阳市,盐亭县', 510700, 2310),
(510724, '安　县', '四川省,绵阳市,安　县', 510700, 2311),
(510725, '梓潼县', '四川省,绵阳市,梓潼县', 510700, 2312),
(510726, '北川羌族自治县', '四川省,绵阳市,北川羌族自治县', 510700, 2313),
(510727, '平武县', '四川省,绵阳市,平武县', 510700, 2314),
(510781, '江油市', '四川省,绵阳市,江油市', 510700, 2315),
(510801, '市辖区', '四川省,广元市,市辖区', 510800, 2316),
(510802, '市中区', '四川省,广元市,市中区', 510800, 2317),
(510811, '元坝区', '四川省,广元市,元坝区', 510800, 2318),
(510812, '朝天区', '四川省,广元市,朝天区', 510800, 2319),
(510821, '旺苍县', '四川省,广元市,旺苍县', 510800, 2320),
(510822, '青川县', '四川省,广元市,青川县', 510800, 2321),
(510823, '剑阁县', '四川省,广元市,剑阁县', 510800, 2322),
(510824, '苍溪县', '四川省,广元市,苍溪县', 510800, 2323),
(510901, '市辖区', '四川省,遂宁市,市辖区', 510900, 2324),
(510903, '船山区', '四川省,遂宁市,船山区', 510900, 2325),
(510904, '安居区', '四川省,遂宁市,安居区', 510900, 2326),
(510921, '蓬溪县', '四川省,遂宁市,蓬溪县', 510900, 2327),
(510922, '射洪县', '四川省,遂宁市,射洪县', 510900, 2328),
(510923, '大英县', '四川省,遂宁市,大英县', 510900, 2329),
(511001, '市辖区', '四川省,内江市,市辖区', 511000, 2330),
(511002, '市中区', '四川省,内江市,市中区', 511000, 2331),
(511011, '东兴区', '四川省,内江市,东兴区', 511000, 2332),
(511024, '威远县', '四川省,内江市,威远县', 511000, 2333),
(511025, '资中县', '四川省,内江市,资中县', 511000, 2334),
(511028, '隆昌县', '四川省,内江市,隆昌县', 511000, 2335),
(511101, '市辖区', '四川省,乐山市,市辖区', 511100, 2336),
(511102, '市中区', '四川省,乐山市,市中区', 511100, 2337),
(511111, '沙湾区', '四川省,乐山市,沙湾区', 511100, 2338),
(511112, '五通桥区', '四川省,乐山市,五通桥区', 511100, 2339),
(511113, '金口河区', '四川省,乐山市,金口河区', 511100, 2340),
(511123, '犍为县', '四川省,乐山市,犍为县', 511100, 2341),
(511124, '井研县', '四川省,乐山市,井研县', 511100, 2342),
(511126, '夹江县', '四川省,乐山市,夹江县', 511100, 2343),
(511129, '沐川县', '四川省,乐山市,沐川县', 511100, 2344),
(511132, '峨边彝族自治县', '四川省,乐山市,峨边彝族自治县', 511100, 2345),
(511133, '马边彝族自治县', '四川省,乐山市,马边彝族自治县', 511100, 2346),
(511181, '峨眉山市', '四川省,乐山市,峨眉山市', 511100, 2347),
(511301, '市辖区', '四川省,南充市,市辖区', 511300, 2348),
(511302, '顺庆区', '四川省,南充市,顺庆区', 511300, 2349),
(511303, '高坪区', '四川省,南充市,高坪区', 511300, 2350),
(511304, '嘉陵区', '四川省,南充市,嘉陵区', 511300, 2351),
(511321, '南部县', '四川省,南充市,南部县', 511300, 2352),
(511322, '营山县', '四川省,南充市,营山县', 511300, 2353),
(511323, '蓬安县', '四川省,南充市,蓬安县', 511300, 2354),
(511324, '仪陇县', '四川省,南充市,仪陇县', 511300, 2355),
(511325, '西充县', '四川省,南充市,西充县', 511300, 2356),
(511381, '阆中市', '四川省,南充市,阆中市', 511300, 2357),
(511401, '市辖区', '四川省,眉山市,市辖区', 511400, 2358),
(511402, '东坡区', '四川省,眉山市,东坡区', 511400, 2359),
(511421, '仁寿县', '四川省,眉山市,仁寿县', 511400, 2360),
(511422, '彭山县', '四川省,眉山市,彭山县', 511400, 2361),
(511423, '洪雅县', '四川省,眉山市,洪雅县', 511400, 2362),
(511424, '丹棱县', '四川省,眉山市,丹棱县', 511400, 2363),
(511425, '青神县', '四川省,眉山市,青神县', 511400, 2364),
(511501, '市辖区', '四川省,宜宾市,市辖区', 511500, 2365),
(511502, '翠屏区', '四川省,宜宾市,翠屏区', 511500, 2366),
(511521, '宜宾县', '四川省,宜宾市,宜宾县', 511500, 2367),
(511522, '南溪县', '四川省,宜宾市,南溪县', 511500, 2368),
(511523, '江安县', '四川省,宜宾市,江安县', 511500, 2369),
(511524, '长宁县', '四川省,宜宾市,长宁县', 511500, 2370),
(511525, '高　县', '四川省,宜宾市,高　县', 511500, 2371),
(511526, '珙　县', '四川省,宜宾市,珙　县', 511500, 2372),
(511527, '筠连县', '四川省,宜宾市,筠连县', 511500, 2373),
(511528, '兴文县', '四川省,宜宾市,兴文县', 511500, 2374),
(511529, '屏山县', '四川省,宜宾市,屏山县', 511500, 2375),
(511601, '市辖区', '四川省,广安市,市辖区', 511600, 2376),
(511602, '广安区', '四川省,广安市,广安区', 511600, 2377),
(511621, '岳池县', '四川省,广安市,岳池县', 511600, 2378),
(511622, '武胜县', '四川省,广安市,武胜县', 511600, 2379),
(511623, '邻水县', '四川省,广安市,邻水县', 511600, 2380),
(511681, '华莹市', '四川省,广安市,华莹市', 511600, 2381),
(511701, '市辖区', '四川省,达州市,市辖区', 511700, 2382),
(511702, '通川区', '四川省,达州市,通川区', 511700, 2383),
(511721, '达　县', '四川省,达州市,达　县', 511700, 2384),
(511722, '宣汉县', '四川省,达州市,宣汉县', 511700, 2385),
(511723, '开江县', '四川省,达州市,开江县', 511700, 2386),
(511724, '大竹县', '四川省,达州市,大竹县', 511700, 2387),
(511725, '渠　县', '四川省,达州市,渠　县', 511700, 2388),
(511781, '万源市', '四川省,达州市,万源市', 511700, 2389),
(511801, '市辖区', '四川省,雅安市,市辖区', 511800, 2390),
(511802, '雨城区', '四川省,雅安市,雨城区', 511800, 2391),
(511821, '名山县', '四川省,雅安市,名山县', 511800, 2392),
(511822, '荥经县', '四川省,雅安市,荥经县', 511800, 2393),
(511823, '汉源县', '四川省,雅安市,汉源县', 511800, 2394),
(511824, '石棉县', '四川省,雅安市,石棉县', 511800, 2395),
(511825, '天全县', '四川省,雅安市,天全县', 511800, 2396),
(511826, '芦山县', '四川省,雅安市,芦山县', 511800, 2397),
(511827, '宝兴县', '四川省,雅安市,宝兴县', 511800, 2398),
(511901, '市辖区', '四川省,巴中市,市辖区', 511900, 2399),
(511902, '巴州区', '四川省,巴中市,巴州区', 511900, 2400),
(511921, '通江县', '四川省,巴中市,通江县', 511900, 2401),
(511922, '南江县', '四川省,巴中市,南江县', 511900, 2402),
(511923, '平昌县', '四川省,巴中市,平昌县', 511900, 2403),
(512001, '市辖区', '四川省,资阳市,市辖区', 512000, 2404),
(512002, '雁江区', '四川省,资阳市,雁江区', 512000, 2405),
(512021, '安岳县', '四川省,资阳市,安岳县', 512000, 2406),
(512022, '乐至县', '四川省,资阳市,乐至县', 512000, 2407),
(512081, '简阳市', '四川省,资阳市,简阳市', 512000, 2408),
(513221, '汶川县', '四川省,阿坝藏族羌族自治州,汶川县', 513200, 2409),
(513222, '理　县', '四川省,阿坝藏族羌族自治州,理　县', 513200, 2410),
(513223, '茂　县', '四川省,阿坝藏族羌族自治州,茂　县', 513200, 2411),
(513224, '松潘县', '四川省,阿坝藏族羌族自治州,松潘县', 513200, 2412),
(513225, '九寨沟县', '四川省,阿坝藏族羌族自治州,九寨沟县', 513200, 2413),
(513226, '金川县', '四川省,阿坝藏族羌族自治州,金川县', 513200, 2414),
(513227, '小金县', '四川省,阿坝藏族羌族自治州,小金县', 513200, 2415),
(513228, '黑水县', '四川省,阿坝藏族羌族自治州,黑水县', 513200, 2416),
(513229, '马尔康县', '四川省,阿坝藏族羌族自治州,马尔康县', 513200, 2417),
(513230, '壤塘县', '四川省,阿坝藏族羌族自治州,壤塘县', 513200, 2418),
(513231, '阿坝县', '四川省,阿坝藏族羌族自治州,阿坝县', 513200, 2419),
(513232, '若尔盖县', '四川省,阿坝藏族羌族自治州,若尔盖县', 513200, 2420),
(513233, '红原县', '四川省,阿坝藏族羌族自治州,红原县', 513200, 2421),
(513321, '康定县', '四川省,甘孜藏族自治州,康定县', 513300, 2422),
(513322, '泸定县', '四川省,甘孜藏族自治州,泸定县', 513300, 2423),
(513323, '丹巴县', '四川省,甘孜藏族自治州,丹巴县', 513300, 2424),
(513324, '九龙县', '四川省,甘孜藏族自治州,九龙县', 513300, 2425),
(513325, '雅江县', '四川省,甘孜藏族自治州,雅江县', 513300, 2426),
(513326, '道孚县', '四川省,甘孜藏族自治州,道孚县', 513300, 2427),
(513327, '炉霍县', '四川省,甘孜藏族自治州,炉霍县', 513300, 2428),
(513328, '甘孜县', '四川省,甘孜藏族自治州,甘孜县', 513300, 2429),
(513329, '新龙县', '四川省,甘孜藏族自治州,新龙县', 513300, 2430),
(513330, '德格县', '四川省,甘孜藏族自治州,德格县', 513300, 2431),
(513331, '白玉县', '四川省,甘孜藏族自治州,白玉县', 513300, 2432),
(513332, '石渠县', '四川省,甘孜藏族自治州,石渠县', 513300, 2433),
(513333, '色达县', '四川省,甘孜藏族自治州,色达县', 513300, 2434),
(513334, '理塘县', '四川省,甘孜藏族自治州,理塘县', 513300, 2435),
(513335, '巴塘县', '四川省,甘孜藏族自治州,巴塘县', 513300, 2436),
(513336, '乡城县', '四川省,甘孜藏族自治州,乡城县', 513300, 2437),
(513337, '稻城县', '四川省,甘孜藏族自治州,稻城县', 513300, 2438),
(513338, '得荣县', '四川省,甘孜藏族自治州,得荣县', 513300, 2439),
(513401, '西昌市', '四川省,凉山彝族自治州,西昌市', 513400, 2440),
(513422, '木里藏族自治县', '四川省,凉山彝族自治州,木里藏族自治县', 513400, 2441),
(513423, '盐源县', '四川省,凉山彝族自治州,盐源县', 513400, 2442),
(513424, '德昌县', '四川省,凉山彝族自治州,德昌县', 513400, 2443),
(513425, '会理县', '四川省,凉山彝族自治州,会理县', 513400, 2444),
(513426, '会东县', '四川省,凉山彝族自治州,会东县', 513400, 2445),
(513427, '宁南县', '四川省,凉山彝族自治州,宁南县', 513400, 2446),
(513428, '普格县', '四川省,凉山彝族自治州,普格县', 513400, 2447),
(513429, '布拖县', '四川省,凉山彝族自治州,布拖县', 513400, 2448),
(513430, '金阳县', '四川省,凉山彝族自治州,金阳县', 513400, 2449),
(513431, '昭觉县', '四川省,凉山彝族自治州,昭觉县', 513400, 2450),
(513432, '喜德县', '四川省,凉山彝族自治州,喜德县', 513400, 2451),
(513433, '冕宁县', '四川省,凉山彝族自治州,冕宁县', 513400, 2452),
(513434, '越西县', '四川省,凉山彝族自治州,越西县', 513400, 2453),
(513435, '甘洛县', '四川省,凉山彝族自治州,甘洛县', 513400, 2454),
(513436, '美姑县', '四川省,凉山彝族自治州,美姑县', 513400, 2455),
(513437, '雷波县', '四川省,凉山彝族自治州,雷波县', 513400, 2456),
(520101, '市辖区', '贵州省,贵阳市,市辖区', 520100, 2457),
(520102, '南明区', '贵州省,贵阳市,南明区', 520100, 2458),
(520103, '云岩区', '贵州省,贵阳市,云岩区', 520100, 2459),
(520111, '花溪区', '贵州省,贵阳市,花溪区', 520100, 2460),
(520112, '乌当区', '贵州省,贵阳市,乌当区', 520100, 2461),
(520113, '白云区', '贵州省,贵阳市,白云区', 520100, 2462),
(520114, '小河区', '贵州省,贵阳市,小河区', 520100, 2463),
(520121, '开阳县', '贵州省,贵阳市,开阳县', 520100, 2464),
(520122, '息烽县', '贵州省,贵阳市,息烽县', 520100, 2465),
(520123, '修文县', '贵州省,贵阳市,修文县', 520100, 2466),
(520181, '清镇市', '贵州省,贵阳市,清镇市', 520100, 2467),
(520201, '钟山区', '贵州省,六盘水市,钟山区', 520200, 2468),
(520203, '六枝特区', '贵州省,六盘水市,六枝特区', 520200, 2469),
(520221, '水城县', '贵州省,六盘水市,水城县', 520200, 2470),
(520222, '盘　县', '贵州省,六盘水市,盘　县', 520200, 2471),
(520301, '市辖区', '贵州省,遵义市,市辖区', 520300, 2472),
(520302, '红花岗区', '贵州省,遵义市,红花岗区', 520300, 2473),
(520303, '汇川区', '贵州省,遵义市,汇川区', 520300, 2474),
(520321, '遵义县', '贵州省,遵义市,遵义县', 520300, 2475),
(520322, '桐梓县', '贵州省,遵义市,桐梓县', 520300, 2476),
(520323, '绥阳县', '贵州省,遵义市,绥阳县', 520300, 2477),
(520324, '正安县', '贵州省,遵义市,正安县', 520300, 2478),
(520325, '道真仡佬族苗族自治县', '贵州省,遵义市,道真仡佬族苗族自治县', 520300, 2479),
(520326, '务川仡佬族苗族自治县', '贵州省,遵义市,务川仡佬族苗族自治县', 520300, 2480),
(520327, '凤冈县', '贵州省,遵义市,凤冈县', 520300, 2481),
(520328, '湄潭县', '贵州省,遵义市,湄潭县', 520300, 2482),
(520329, '余庆县', '贵州省,遵义市,余庆县', 520300, 2483),
(520330, '习水县', '贵州省,遵义市,习水县', 520300, 2484),
(520381, '赤水市', '贵州省,遵义市,赤水市', 520300, 2485),
(520382, '仁怀市', '贵州省,遵义市,仁怀市', 520300, 2486),
(520401, '市辖区', '贵州省,安顺市,市辖区', 520400, 2487),
(520402, '西秀区', '贵州省,安顺市,西秀区', 520400, 2488),
(520421, '平坝县', '贵州省,安顺市,平坝县', 520400, 2489),
(520422, '普定县', '贵州省,安顺市,普定县', 520400, 2490),
(520423, '镇宁布依族苗族自治县', '贵州省,安顺市,镇宁布依族苗族自治县', 520400, 2491),
(520424, '关岭布依族苗族自治县', '贵州省,安顺市,关岭布依族苗族自治县', 520400, 2492),
(520425, '紫云苗族布依族自治县', '贵州省,安顺市,紫云苗族布依族自治县', 520400, 2493),
(522201, '铜仁市', '贵州省,铜仁地区,铜仁市', 522200, 2494),
(522222, '江口县', '贵州省,铜仁地区,江口县', 522200, 2495),
(522223, '玉屏侗族自治县', '贵州省,铜仁地区,玉屏侗族自治县', 522200, 2496),
(522224, '石阡县', '贵州省,铜仁地区,石阡县', 522200, 2497),
(522225, '思南县', '贵州省,铜仁地区,思南县', 522200, 2498),
(522226, '印江土家族苗族自治县', '贵州省,铜仁地区,印江土家族苗族自治县', 522200, 2499),
(522227, '德江县', '贵州省,铜仁地区,德江县', 522200, 2500),
(522228, '沿河土家族自治县', '贵州省,铜仁地区,沿河土家族自治县', 522200, 2501),
(522229, '松桃苗族自治县', '贵州省,铜仁地区,松桃苗族自治县', 522200, 2502),
(522230, '万山特区', '贵州省,铜仁地区,万山特区', 522200, 2503),
(522301, '兴义市', '贵州省,黔西南布依族苗族自治州,兴义市', 522300, 2504),
(522322, '兴仁县', '贵州省,黔西南布依族苗族自治州,兴仁县', 522300, 2505),
(522323, '普安县', '贵州省,黔西南布依族苗族自治州,普安县', 522300, 2506),
(522324, '晴隆县', '贵州省,黔西南布依族苗族自治州,晴隆县', 522300, 2507),
(522325, '贞丰县', '贵州省,黔西南布依族苗族自治州,贞丰县', 522300, 2508),
(522326, '望谟县', '贵州省,黔西南布依族苗族自治州,望谟县', 522300, 2509),
(522327, '册亨县', '贵州省,黔西南布依族苗族自治州,册亨县', 522300, 2510),
(522328, '安龙县', '贵州省,黔西南布依族苗族自治州,安龙县', 522300, 2511),
(522401, '毕节市', '贵州省,毕节地区,毕节市', 522400, 2512),
(522422, '大方县', '贵州省,毕节地区,大方县', 522400, 2513),
(522423, '黔西县', '贵州省,毕节地区,黔西县', 522400, 2514),
(522424, '金沙县', '贵州省,毕节地区,金沙县', 522400, 2515),
(522425, '织金县', '贵州省,毕节地区,织金县', 522400, 2516),
(522426, '纳雍县', '贵州省,毕节地区,纳雍县', 522400, 2517),
(522427, '威宁彝族回族苗族自治县', '贵州省,毕节地区,威宁彝族回族苗族自治县', 522400, 2518),
(522428, '赫章县', '贵州省,毕节地区,赫章县', 522400, 2519),
(522601, '凯里市', '贵州省,黔东南苗族侗族自治州,凯里市', 522600, 2520),
(522622, '黄平县', '贵州省,黔东南苗族侗族自治州,黄平县', 522600, 2521),
(522623, '施秉县', '贵州省,黔东南苗族侗族自治州,施秉县', 522600, 2522),
(522624, '三穗县', '贵州省,黔东南苗族侗族自治州,三穗县', 522600, 2523),
(522625, '镇远县', '贵州省,黔东南苗族侗族自治州,镇远县', 522600, 2524),
(522626, '岑巩县', '贵州省,黔东南苗族侗族自治州,岑巩县', 522600, 2525),
(522627, '天柱县', '贵州省,黔东南苗族侗族自治州,天柱县', 522600, 2526),
(522628, '锦屏县', '贵州省,黔东南苗族侗族自治州,锦屏县', 522600, 2527),
(522629, '剑河县', '贵州省,黔东南苗族侗族自治州,剑河县', 522600, 2528),
(522630, '台江县', '贵州省,黔东南苗族侗族自治州,台江县', 522600, 2529),
(522631, '黎平县', '贵州省,黔东南苗族侗族自治州,黎平县', 522600, 2530),
(522632, '榕江县', '贵州省,黔东南苗族侗族自治州,榕江县', 522600, 2531),
(522633, '从江县', '贵州省,黔东南苗族侗族自治州,从江县', 522600, 2532),
(522634, '雷山县', '贵州省,黔东南苗族侗族自治州,雷山县', 522600, 2533),
(522635, '麻江县', '贵州省,黔东南苗族侗族自治州,麻江县', 522600, 2534),
(522636, '丹寨县', '贵州省,黔东南苗族侗族自治州,丹寨县', 522600, 2535),
(522701, '都匀市', '贵州省,黔南布依族苗族自治州,都匀市', 522700, 2536),
(522702, '福泉市', '贵州省,黔南布依族苗族自治州,福泉市', 522700, 2537),
(522722, '荔波县', '贵州省,黔南布依族苗族自治州,荔波县', 522700, 2538),
(522723, '贵定县', '贵州省,黔南布依族苗族自治州,贵定县', 522700, 2539),
(522725, '瓮安县', '贵州省,黔南布依族苗族自治州,瓮安县', 522700, 2540),
(522726, '独山县', '贵州省,黔南布依族苗族自治州,独山县', 522700, 2541),
(522727, '平塘县', '贵州省,黔南布依族苗族自治州,平塘县', 522700, 2542),
(522728, '罗甸县', '贵州省,黔南布依族苗族自治州,罗甸县', 522700, 2543),
(522729, '长顺县', '贵州省,黔南布依族苗族自治州,长顺县', 522700, 2544),
(522730, '龙里县', '贵州省,黔南布依族苗族自治州,龙里县', 522700, 2545),
(522731, '惠水县', '贵州省,黔南布依族苗族自治州,惠水县', 522700, 2546),
(522732, '三都水族自治县', '贵州省,黔南布依族苗族自治州,三都水族自治县', 522700, 2547),
(530101, '市辖区', '云南省,昆明市,市辖区', 530100, 2548),
(530102, '五华区', '云南省,昆明市,五华区', 530100, 2549),
(530103, '盘龙区', '云南省,昆明市,盘龙区', 530100, 2550),
(530111, '官渡区', '云南省,昆明市,官渡区', 530100, 2551),
(530112, '西山区', '云南省,昆明市,西山区', 530100, 2552),
(530113, '东川区', '云南省,昆明市,东川区', 530100, 2553),
(530121, '呈贡县', '云南省,昆明市,呈贡县', 530100, 2554),
(530122, '晋宁县', '云南省,昆明市,晋宁县', 530100, 2555),
(530124, '富民县', '云南省,昆明市,富民县', 530100, 2556),
(530125, '宜良县', '云南省,昆明市,宜良县', 530100, 2557),
(530126, '石林彝族自治县', '云南省,昆明市,石林彝族自治县', 530100, 2558),
(530127, '嵩明县', '云南省,昆明市,嵩明县', 530100, 2559),
(530128, '禄劝彝族苗族自治县', '云南省,昆明市,禄劝彝族苗族自治县', 530100, 2560),
(530129, '寻甸回族彝族自治县', '云南省,昆明市,寻甸回族彝族自治县', 530100, 2561),
(530181, '安宁市', '云南省,昆明市,安宁市', 530100, 2562),
(530301, '市辖区', '云南省,曲靖市,市辖区', 530300, 2563),
(530302, '麒麟区', '云南省,曲靖市,麒麟区', 530300, 2564),
(530321, '马龙县', '云南省,曲靖市,马龙县', 530300, 2565),
(530322, '陆良县', '云南省,曲靖市,陆良县', 530300, 2566),
(530323, '师宗县', '云南省,曲靖市,师宗县', 530300, 2567),
(530324, '罗平县', '云南省,曲靖市,罗平县', 530300, 2568),
(530325, '富源县', '云南省,曲靖市,富源县', 530300, 2569),
(530326, '会泽县', '云南省,曲靖市,会泽县', 530300, 2570),
(530328, '沾益县', '云南省,曲靖市,沾益县', 530300, 2571),
(530381, '宣威市', '云南省,曲靖市,宣威市', 530300, 2572),
(530401, '市辖区', '云南省,玉溪市,市辖区', 530400, 2573),
(530402, '红塔区', '云南省,玉溪市,红塔区', 530400, 2574),
(530421, '江川县', '云南省,玉溪市,江川县', 530400, 2575),
(530422, '澄江县', '云南省,玉溪市,澄江县', 530400, 2576),
(530423, '通海县', '云南省,玉溪市,通海县', 530400, 2577),
(530424, '华宁县', '云南省,玉溪市,华宁县', 530400, 2578),
(530425, '易门县', '云南省,玉溪市,易门县', 530400, 2579),
(530426, '峨山彝族自治县', '云南省,玉溪市,峨山彝族自治县', 530400, 2580),
(530427, '新平彝族傣族自治县', '云南省,玉溪市,新平彝族傣族自治县', 530400, 2581),
(530428, '元江哈尼族彝族傣族自治县', '云南省,玉溪市,元江哈尼族彝族傣族自治县', 530400, 2582),
(530501, '市辖区', '云南省,保山市,市辖区', 530500, 2583),
(530502, '隆阳区', '云南省,保山市,隆阳区', 530500, 2584),
(530521, '施甸县', '云南省,保山市,施甸县', 530500, 2585),
(530522, '腾冲县', '云南省,保山市,腾冲县', 530500, 2586),
(530523, '龙陵县', '云南省,保山市,龙陵县', 530500, 2587),
(530524, '昌宁县', '云南省,保山市,昌宁县', 530500, 2588),
(530601, '市辖区', '云南省,昭通市,市辖区', 530600, 2589),
(530602, '昭阳区', '云南省,昭通市,昭阳区', 530600, 2590),
(530621, '鲁甸县', '云南省,昭通市,鲁甸县', 530600, 2591),
(530622, '巧家县', '云南省,昭通市,巧家县', 530600, 2592),
(530623, '盐津县', '云南省,昭通市,盐津县', 530600, 2593),
(530624, '大关县', '云南省,昭通市,大关县', 530600, 2594),
(530625, '永善县', '云南省,昭通市,永善县', 530600, 2595),
(530626, '绥江县', '云南省,昭通市,绥江县', 530600, 2596),
(530627, '镇雄县', '云南省,昭通市,镇雄县', 530600, 2597),
(530628, '彝良县', '云南省,昭通市,彝良县', 530600, 2598),
(530629, '威信县', '云南省,昭通市,威信县', 530600, 2599),
(530630, '水富县', '云南省,昭通市,水富县', 530600, 2600),
(530701, '市辖区', '云南省,丽江市,市辖区', 530700, 2601),
(530702, '古城区', '云南省,丽江市,古城区', 530700, 2602),
(530721, '玉龙纳西族自治县', '云南省,丽江市,玉龙纳西族自治县', 530700, 2603),
(530722, '永胜县', '云南省,丽江市,永胜县', 530700, 2604),
(530723, '华坪县', '云南省,丽江市,华坪县', 530700, 2605),
(530724, '宁蒗彝族自治县', '云南省,丽江市,宁蒗彝族自治县', 530700, 2606),
(530801, '市辖区', '云南省,思茅市,市辖区', 530800, 2607),
(530802, '翠云区', '云南省,思茅市,翠云区', 530800, 2608),
(530821, '普洱哈尼族彝族自治县', '云南省,思茅市,普洱哈尼族彝族自治县', 530800, 2609),
(530822, '墨江哈尼族自治县', '云南省,思茅市,墨江哈尼族自治县', 530800, 2610),
(530823, '景东彝族自治县', '云南省,思茅市,景东彝族自治县', 530800, 2611),
(530824, '景谷傣族彝族自治县', '云南省,思茅市,景谷傣族彝族自治县', 530800, 2612),
(530825, '镇沅彝族哈尼族拉祜族自治县', '云南省,思茅市,镇沅彝族哈尼族拉祜族自治县', 530800, 2613),
(530826, '江城哈尼族彝族自治县', '云南省,思茅市,江城哈尼族彝族自治县', 530800, 2614),
(530827, '孟连傣族拉祜族佤族自治县', '云南省,思茅市,孟连傣族拉祜族佤族自治县', 530800, 2615),
(530828, '澜沧拉祜族自治县', '云南省,思茅市,澜沧拉祜族自治县', 530800, 2616),
(530829, '西盟佤族自治县', '云南省,思茅市,西盟佤族自治县', 530800, 2617),
(530901, '市辖区', '云南省,临沧市,市辖区', 530900, 2618),
(530902, '临翔区', '云南省,临沧市,临翔区', 530900, 2619),
(530921, '凤庆县', '云南省,临沧市,凤庆县', 530900, 2620),
(530922, '云　县', '云南省,临沧市,云　县', 530900, 2621),
(530923, '永德县', '云南省,临沧市,永德县', 530900, 2622),
(530924, '镇康县', '云南省,临沧市,镇康县', 530900, 2623),
(530925, '双江拉祜族佤族布朗族傣族自治县', '云南省,临沧市,双江拉祜族佤族布朗族傣族自治县', 530900, 2624),
(530926, '耿马傣族佤族自治县', '云南省,临沧市,耿马傣族佤族自治县', 530900, 2625),
(530927, '沧源佤族自治县', '云南省,临沧市,沧源佤族自治县', 530900, 2626),
(532301, '楚雄市', '云南省,楚雄彝族自治州,楚雄市', 532300, 2627),
(532322, '双柏县', '云南省,楚雄彝族自治州,双柏县', 532300, 2628),
(532323, '牟定县', '云南省,楚雄彝族自治州,牟定县', 532300, 2629),
(532324, '南华县', '云南省,楚雄彝族自治州,南华县', 532300, 2630),
(532325, '姚安县', '云南省,楚雄彝族自治州,姚安县', 532300, 2631),
(532326, '大姚县', '云南省,楚雄彝族自治州,大姚县', 532300, 2632),
(532327, '永仁县', '云南省,楚雄彝族自治州,永仁县', 532300, 2633),
(532328, '元谋县', '云南省,楚雄彝族自治州,元谋县', 532300, 2634),
(532329, '武定县', '云南省,楚雄彝族自治州,武定县', 532300, 2635),
(532331, '禄丰县', '云南省,楚雄彝族自治州,禄丰县', 532300, 2636),
(532501, '个旧市', '云南省,红河哈尼族彝族自治州,个旧市', 532500, 2637),
(532502, '开远市', '云南省,红河哈尼族彝族自治州,开远市', 532500, 2638),
(532522, '蒙自县', '云南省,红河哈尼族彝族自治州,蒙自县', 532500, 2639),
(532523, '屏边苗族自治县', '云南省,红河哈尼族彝族自治州,屏边苗族自治县', 532500, 2640),
(532524, '建水县', '云南省,红河哈尼族彝族自治州,建水县', 532500, 2641),
(532525, '石屏县', '云南省,红河哈尼族彝族自治州,石屏县', 532500, 2642),
(532526, '弥勒县', '云南省,红河哈尼族彝族自治州,弥勒县', 532500, 2643),
(532527, '泸西县', '云南省,红河哈尼族彝族自治州,泸西县', 532500, 2644),
(532528, '元阳县', '云南省,红河哈尼族彝族自治州,元阳县', 532500, 2645),
(532529, '红河县', '云南省,红河哈尼族彝族自治州,红河县', 532500, 2646),
(532530, '金平苗族瑶族傣族自治县', '云南省,红河哈尼族彝族自治州,金平苗族瑶族傣族自治县', 532500, 2647),
(532531, '绿春县', '云南省,红河哈尼族彝族自治州,绿春县', 532500, 2648),
(532532, '河口瑶族自治县', '云南省,红河哈尼族彝族自治州,河口瑶族自治县', 532500, 2649),
(532621, '文山县', '云南省,文山壮族苗族自治州,文山县', 532600, 2650),
(532622, '砚山县', '云南省,文山壮族苗族自治州,砚山县', 532600, 2651),
(532623, '西畴县', '云南省,文山壮族苗族自治州,西畴县', 532600, 2652),
(532624, '麻栗坡县', '云南省,文山壮族苗族自治州,麻栗坡县', 532600, 2653),
(532625, '马关县', '云南省,文山壮族苗族自治州,马关县', 532600, 2654),
(532626, '丘北县', '云南省,文山壮族苗族自治州,丘北县', 532600, 2655),
(532627, '广南县', '云南省,文山壮族苗族自治州,广南县', 532600, 2656),
(532628, '富宁县', '云南省,文山壮族苗族自治州,富宁县', 532600, 2657),
(532801, '景洪市', '云南省,西双版纳傣族自治州,景洪市', 532800, 2658),
(532822, '勐海县', '云南省,西双版纳傣族自治州,勐海县', 532800, 2659),
(532823, '勐腊县', '云南省,西双版纳傣族自治州,勐腊县', 532800, 2660),
(532901, '大理市', '云南省,大理白族自治州,大理市', 532900, 2661),
(532922, '漾濞彝族自治县', '云南省,大理白族自治州,漾濞彝族自治县', 532900, 2662),
(532923, '祥云县', '云南省,大理白族自治州,祥云县', 532900, 2663),
(532924, '宾川县', '云南省,大理白族自治州,宾川县', 532900, 2664),
(532925, '弥渡县', '云南省,大理白族自治州,弥渡县', 532900, 2665),
(532926, '南涧彝族自治县', '云南省,大理白族自治州,南涧彝族自治县', 532900, 2666),
(532927, '巍山彝族回族自治县', '云南省,大理白族自治州,巍山彝族回族自治县', 532900, 2667),
(532928, '永平县', '云南省,大理白族自治州,永平县', 532900, 2668),
(532929, '云龙县', '云南省,大理白族自治州,云龙县', 532900, 2669),
(532930, '洱源县', '云南省,大理白族自治州,洱源县', 532900, 2670),
(532931, '剑川县', '云南省,大理白族自治州,剑川县', 532900, 2671),
(532932, '鹤庆县', '云南省,大理白族自治州,鹤庆县', 532900, 2672),
(533102, '瑞丽市', '云南省,德宏傣族景颇族自治州,瑞丽市', 533100, 2673),
(533103, '潞西市', '云南省,德宏傣族景颇族自治州,潞西市', 533100, 2674),
(533122, '梁河县', '云南省,德宏傣族景颇族自治州,梁河县', 533100, 2675),
(533123, '盈江县', '云南省,德宏傣族景颇族自治州,盈江县', 533100, 2676),
(533124, '陇川县', '云南省,德宏傣族景颇族自治州,陇川县', 533100, 2677),
(533321, '泸水县', '云南省,怒江傈僳族自治州,泸水县', 533300, 2678),
(533323, '福贡县', '云南省,怒江傈僳族自治州,福贡县', 533300, 2679),
(533324, '贡山独龙族怒族自治县', '云南省,怒江傈僳族自治州,贡山独龙族怒族自治县', 533300, 2680),
(533325, '兰坪白族普米族自治县', '云南省,怒江傈僳族自治州,兰坪白族普米族自治县', 533300, 2681),
(533421, '香格里拉县', '云南省,迪庆藏族自治州,香格里拉县', 533400, 2682),
(533422, '德钦县', '云南省,迪庆藏族自治州,德钦县', 533400, 2683),
(533423, '维西傈僳族自治县', '云南省,迪庆藏族自治州,维西傈僳族自治县', 533400, 2684),
(540101, '市辖区', '西藏自治区,拉萨市,市辖区', 540100, 2685),
(540102, '城关区', '西藏自治区,拉萨市,城关区', 540100, 2686),
(540121, '林周县', '西藏自治区,拉萨市,林周县', 540100, 2687),
(540122, '当雄县', '西藏自治区,拉萨市,当雄县', 540100, 2688),
(540123, '尼木县', '西藏自治区,拉萨市,尼木县', 540100, 2689),
(540124, '曲水县', '西藏自治区,拉萨市,曲水县', 540100, 2690),
(540125, '堆龙德庆县', '西藏自治区,拉萨市,堆龙德庆县', 540100, 2691),
(540126, '达孜县', '西藏自治区,拉萨市,达孜县', 540100, 2692),
(540127, '墨竹工卡县', '西藏自治区,拉萨市,墨竹工卡县', 540100, 2693),
(542121, '昌都县', '西藏自治区,昌都地区,昌都县', 542100, 2694),
(542122, '江达县', '西藏自治区,昌都地区,江达县', 542100, 2695),
(542123, '贡觉县', '西藏自治区,昌都地区,贡觉县', 542100, 2696),
(542124, '类乌齐县', '西藏自治区,昌都地区,类乌齐县', 542100, 2697),
(542125, '丁青县', '西藏自治区,昌都地区,丁青县', 542100, 2698),
(542126, '察雅县', '西藏自治区,昌都地区,察雅县', 542100, 2699),
(542127, '八宿县', '西藏自治区,昌都地区,八宿县', 542100, 2700),
(542128, '左贡县', '西藏自治区,昌都地区,左贡县', 542100, 2701),
(542129, '芒康县', '西藏自治区,昌都地区,芒康县', 542100, 2702),
(542132, '洛隆县', '西藏自治区,昌都地区,洛隆县', 542100, 2703),
(542133, '边坝县', '西藏自治区,昌都地区,边坝县', 542100, 2704),
(542221, '乃东县', '西藏自治区,山南地区,乃东县', 542200, 2705),
(542222, '扎囊县', '西藏自治区,山南地区,扎囊县', 542200, 2706),
(542223, '贡嘎县', '西藏自治区,山南地区,贡嘎县', 542200, 2707),
(542224, '桑日县', '西藏自治区,山南地区,桑日县', 542200, 2708),
(542225, '琼结县', '西藏自治区,山南地区,琼结县', 542200, 2709),
(542226, '曲松县', '西藏自治区,山南地区,曲松县', 542200, 2710),
(542227, '措美县', '西藏自治区,山南地区,措美县', 542200, 2711),
(542228, '洛扎县', '西藏自治区,山南地区,洛扎县', 542200, 2712),
(542229, '加查县', '西藏自治区,山南地区,加查县', 542200, 2713),
(542231, '隆子县', '西藏自治区,山南地区,隆子县', 542200, 2714),
(542232, '错那县', '西藏自治区,山南地区,错那县', 542200, 2715),
(542233, '浪卡子县', '西藏自治区,山南地区,浪卡子县', 542200, 2716),
(542301, '日喀则市', '西藏自治区,日喀则地区,日喀则市', 542300, 2717),
(542322, '南木林县', '西藏自治区,日喀则地区,南木林县', 542300, 2718),
(542323, '江孜县', '西藏自治区,日喀则地区,江孜县', 542300, 2719),
(542324, '定日县', '西藏自治区,日喀则地区,定日县', 542300, 2720),
(542325, '萨迦县', '西藏自治区,日喀则地区,萨迦县', 542300, 2721),
(542326, '拉孜县', '西藏自治区,日喀则地区,拉孜县', 542300, 2722),
(542327, '昂仁县', '西藏自治区,日喀则地区,昂仁县', 542300, 2723),
(542328, '谢通门县', '西藏自治区,日喀则地区,谢通门县', 542300, 2724),
(542329, '白朗县', '西藏自治区,日喀则地区,白朗县', 542300, 2725),
(542330, '仁布县', '西藏自治区,日喀则地区,仁布县', 542300, 2726),
(542331, '康马县', '西藏自治区,日喀则地区,康马县', 542300, 2727),
(542332, '定结县', '西藏自治区,日喀则地区,定结县', 542300, 2728),
(542333, '仲巴县', '西藏自治区,日喀则地区,仲巴县', 542300, 2729),
(542334, '亚东县', '西藏自治区,日喀则地区,亚东县', 542300, 2730),
(542335, '吉隆县', '西藏自治区,日喀则地区,吉隆县', 542300, 2731),
(542336, '聂拉木县', '西藏自治区,日喀则地区,聂拉木县', 542300, 2732),
(542337, '萨嘎县', '西藏自治区,日喀则地区,萨嘎县', 542300, 2733),
(542338, '岗巴县', '西藏自治区,日喀则地区,岗巴县', 542300, 2734),
(542421, '那曲县', '西藏自治区,那曲地区,那曲县', 542400, 2735),
(542422, '嘉黎县', '西藏自治区,那曲地区,嘉黎县', 542400, 2736),
(542423, '比如县', '西藏自治区,那曲地区,比如县', 542400, 2737),
(542424, '聂荣县', '西藏自治区,那曲地区,聂荣县', 542400, 2738),
(542425, '安多县', '西藏自治区,那曲地区,安多县', 542400, 2739),
(542426, '申扎县', '西藏自治区,那曲地区,申扎县', 542400, 2740),
(542427, '索　县', '西藏自治区,那曲地区,索　县', 542400, 2741),
(542428, '班戈县', '西藏自治区,那曲地区,班戈县', 542400, 2742),
(542429, '巴青县', '西藏自治区,那曲地区,巴青县', 542400, 2743),
(542430, '尼玛县', '西藏自治区,那曲地区,尼玛县', 542400, 2744),
(542521, '普兰县', '西藏自治区,阿里地区,普兰县', 542500, 2745),
(542522, '札达县', '西藏自治区,阿里地区,札达县', 542500, 2746),
(542523, '噶尔县', '西藏自治区,阿里地区,噶尔县', 542500, 2747),
(542524, '日土县', '西藏自治区,阿里地区,日土县', 542500, 2748),
(542525, '革吉县', '西藏自治区,阿里地区,革吉县', 542500, 2749),
(542526, '改则县', '西藏自治区,阿里地区,改则县', 542500, 2750),
(542527, '措勤县', '西藏自治区,阿里地区,措勤县', 542500, 2751),
(542621, '林芝县', '西藏自治区,林芝地区,林芝县', 542600, 2752),
(542622, '工布江达县', '西藏自治区,林芝地区,工布江达县', 542600, 2753),
(542623, '米林县', '西藏自治区,林芝地区,米林县', 542600, 2754),
(542624, '墨脱县', '西藏自治区,林芝地区,墨脱县', 542600, 2755),
(542625, '波密县', '西藏自治区,林芝地区,波密县', 542600, 2756),
(542626, '察隅县', '西藏自治区,林芝地区,察隅县', 542600, 2757),
(542627, '朗　县', '西藏自治区,林芝地区,朗　县', 542600, 2758),
(610101, '市辖区', '陕西省,西安市,市辖区', 610100, 2759),
(610102, '新城区', '陕西省,西安市,新城区', 610100, 2760),
(610103, '碑林区', '陕西省,西安市,碑林区', 610100, 2761),
(610104, '莲湖区', '陕西省,西安市,莲湖区', 610100, 2762),
(610111, '灞桥区', '陕西省,西安市,灞桥区', 610100, 2763),
(610112, '未央区', '陕西省,西安市,未央区', 610100, 2764),
(610113, '雁塔区', '陕西省,西安市,雁塔区', 610100, 2765),
(610114, '阎良区', '陕西省,西安市,阎良区', 610100, 2766),
(610115, '临潼区', '陕西省,西安市,临潼区', 610100, 2767),
(610116, '长安区', '陕西省,西安市,长安区', 610100, 2768),
(610122, '蓝田县', '陕西省,西安市,蓝田县', 610100, 2769),
(610124, '周至县', '陕西省,西安市,周至县', 610100, 2770),
(610125, '户　县', '陕西省,西安市,户　县', 610100, 2771),
(610126, '高陵县', '陕西省,西安市,高陵县', 610100, 2772),
(610201, '市辖区', '陕西省,铜川市,市辖区', 610200, 2773),
(610202, '王益区', '陕西省,铜川市,王益区', 610200, 2774),
(610203, '印台区', '陕西省,铜川市,印台区', 610200, 2775),
(610204, '耀州区', '陕西省,铜川市,耀州区', 610200, 2776),
(610222, '宜君县', '陕西省,铜川市,宜君县', 610200, 2777),
(610301, '市辖区', '陕西省,宝鸡市,市辖区', 610300, 2778),
(610302, '渭滨区', '陕西省,宝鸡市,渭滨区', 610300, 2779),
(610303, '金台区', '陕西省,宝鸡市,金台区', 610300, 2780),
(610304, '陈仓区', '陕西省,宝鸡市,陈仓区', 610300, 2781),
(610322, '凤翔县', '陕西省,宝鸡市,凤翔县', 610300, 2782),
(610323, '岐山县', '陕西省,宝鸡市,岐山县', 610300, 2783),
(610324, '扶风县', '陕西省,宝鸡市,扶风县', 610300, 2784),
(610326, '眉　县', '陕西省,宝鸡市,眉　县', 610300, 2785),
(610327, '陇　县', '陕西省,宝鸡市,陇　县', 610300, 2786),
(610328, '千阳县', '陕西省,宝鸡市,千阳县', 610300, 2787),
(610329, '麟游县', '陕西省,宝鸡市,麟游县', 610300, 2788),
(610330, '凤　县', '陕西省,宝鸡市,凤　县', 610300, 2789),
(610331, '太白县', '陕西省,宝鸡市,太白县', 610300, 2790),
(610401, '市辖区', '陕西省,咸阳市,市辖区', 610400, 2791),
(610402, '秦都区', '陕西省,咸阳市,秦都区', 610400, 2792),
(610403, '杨凌区', '陕西省,咸阳市,杨凌区', 610400, 2793),
(610404, '渭城区', '陕西省,咸阳市,渭城区', 610400, 2794),
(610422, '三原县', '陕西省,咸阳市,三原县', 610400, 2795),
(610423, '泾阳县', '陕西省,咸阳市,泾阳县', 610400, 2796),
(610424, '乾　县', '陕西省,咸阳市,乾　县', 610400, 2797),
(610425, '礼泉县', '陕西省,咸阳市,礼泉县', 610400, 2798),
(610426, '永寿县', '陕西省,咸阳市,永寿县', 610400, 2799),
(610427, '彬　县', '陕西省,咸阳市,彬　县', 610400, 2800),
(610428, '长武县', '陕西省,咸阳市,长武县', 610400, 2801),
(610429, '旬邑县', '陕西省,咸阳市,旬邑县', 610400, 2802),
(610430, '淳化县', '陕西省,咸阳市,淳化县', 610400, 2803),
(610431, '武功县', '陕西省,咸阳市,武功县', 610400, 2804),
(610481, '兴平市', '陕西省,咸阳市,兴平市', 610400, 2805),
(610501, '市辖区', '陕西省,渭南市,市辖区', 610500, 2806),
(610502, '临渭区', '陕西省,渭南市,临渭区', 610500, 2807),
(610521, '华　县', '陕西省,渭南市,华　县', 610500, 2808),
(610522, '潼关县', '陕西省,渭南市,潼关县', 610500, 2809),
(610523, '大荔县', '陕西省,渭南市,大荔县', 610500, 2810),
(610524, '合阳县', '陕西省,渭南市,合阳县', 610500, 2811),
(610525, '澄城县', '陕西省,渭南市,澄城县', 610500, 2812),
(610526, '蒲城县', '陕西省,渭南市,蒲城县', 610500, 2813),
(610527, '白水县', '陕西省,渭南市,白水县', 610500, 2814),
(610528, '富平县', '陕西省,渭南市,富平县', 610500, 2815),
(610581, '韩城市', '陕西省,渭南市,韩城市', 610500, 2816),
(610582, '华阴市', '陕西省,渭南市,华阴市', 610500, 2817),
(610601, '市辖区', '陕西省,延安市,市辖区', 610600, 2818),
(610602, '宝塔区', '陕西省,延安市,宝塔区', 610600, 2819),
(610621, '延长县', '陕西省,延安市,延长县', 610600, 2820),
(610622, '延川县', '陕西省,延安市,延川县', 610600, 2821),
(610623, '子长县', '陕西省,延安市,子长县', 610600, 2822),
(610624, '安塞县', '陕西省,延安市,安塞县', 610600, 2823),
(610625, '志丹县', '陕西省,延安市,志丹县', 610600, 2824),
(610626, '吴旗县', '陕西省,延安市,吴旗县', 610600, 2825),
(610627, '甘泉县', '陕西省,延安市,甘泉县', 610600, 2826),
(610628, '富　县', '陕西省,延安市,富　县', 610600, 2827),
(610629, '洛川县', '陕西省,延安市,洛川县', 610600, 2828),
(610630, '宜川县', '陕西省,延安市,宜川县', 610600, 2829),
(610631, '黄龙县', '陕西省,延安市,黄龙县', 610600, 2830),
(610632, '黄陵县', '陕西省,延安市,黄陵县', 610600, 2831),
(610701, '市辖区', '陕西省,汉中市,市辖区', 610700, 2832),
(610702, '汉台区', '陕西省,汉中市,汉台区', 610700, 2833),
(610721, '南郑县', '陕西省,汉中市,南郑县', 610700, 2834),
(610722, '城固县', '陕西省,汉中市,城固县', 610700, 2835),
(610723, '洋　县', '陕西省,汉中市,洋　县', 610700, 2836),
(610724, '西乡县', '陕西省,汉中市,西乡县', 610700, 2837),
(610725, '勉　县', '陕西省,汉中市,勉　县', 610700, 2838),
(610726, '宁强县', '陕西省,汉中市,宁强县', 610700, 2839),
(610727, '略阳县', '陕西省,汉中市,略阳县', 610700, 2840),
(610728, '镇巴县', '陕西省,汉中市,镇巴县', 610700, 2841),
(610729, '留坝县', '陕西省,汉中市,留坝县', 610700, 2842),
(610730, '佛坪县', '陕西省,汉中市,佛坪县', 610700, 2843),
(610801, '市辖区', '陕西省,榆林市,市辖区', 610800, 2844),
(610802, '榆阳区', '陕西省,榆林市,榆阳区', 610800, 2845),
(610821, '神木县', '陕西省,榆林市,神木县', 610800, 2846),
(610822, '府谷县', '陕西省,榆林市,府谷县', 610800, 2847),
(610823, '横山县', '陕西省,榆林市,横山县', 610800, 2848),
(610824, '靖边县', '陕西省,榆林市,靖边县', 610800, 2849),
(610825, '定边县', '陕西省,榆林市,定边县', 610800, 2850),
(610826, '绥德县', '陕西省,榆林市,绥德县', 610800, 2851),
(610827, '米脂县', '陕西省,榆林市,米脂县', 610800, 2852),
(610828, '佳　县', '陕西省,榆林市,佳　县', 610800, 2853),
(610829, '吴堡县', '陕西省,榆林市,吴堡县', 610800, 2854),
(610830, '清涧县', '陕西省,榆林市,清涧县', 610800, 2855),
(610831, '子洲县', '陕西省,榆林市,子洲县', 610800, 2856),
(610901, '市辖区', '陕西省,安康市,市辖区', 610900, 2857),
(610902, '汉滨区', '陕西省,安康市,汉滨区', 610900, 2858),
(610921, '汉阴县', '陕西省,安康市,汉阴县', 610900, 2859),
(610922, '石泉县', '陕西省,安康市,石泉县', 610900, 2860),
(610923, '宁陕县', '陕西省,安康市,宁陕县', 610900, 2861),
(610924, '紫阳县', '陕西省,安康市,紫阳县', 610900, 2862),
(610925, '岚皋县', '陕西省,安康市,岚皋县', 610900, 2863),
(610926, '平利县', '陕西省,安康市,平利县', 610900, 2864),
(610927, '镇坪县', '陕西省,安康市,镇坪县', 610900, 2865),
(610928, '旬阳县', '陕西省,安康市,旬阳县', 610900, 2866),
(610929, '白河县', '陕西省,安康市,白河县', 610900, 2867),
(611001, '市辖区', '陕西省,商洛市,市辖区', 611000, 2868),
(611002, '商州区', '陕西省,商洛市,商州区', 611000, 2869),
(611021, '洛南县', '陕西省,商洛市,洛南县', 611000, 2870),
(611022, '丹凤县', '陕西省,商洛市,丹凤县', 611000, 2871),
(611023, '商南县', '陕西省,商洛市,商南县', 611000, 2872),
(611024, '山阳县', '陕西省,商洛市,山阳县', 611000, 2873),
(611025, '镇安县', '陕西省,商洛市,镇安县', 611000, 2874),
(611026, '柞水县', '陕西省,商洛市,柞水县', 611000, 2875),
(620101, '市辖区', '甘肃省,兰州市,市辖区', 620100, 2876),
(620102, '城关区', '甘肃省,兰州市,城关区', 620100, 2877),
(620103, '七里河区', '甘肃省,兰州市,七里河区', 620100, 2878),
(620104, '西固区', '甘肃省,兰州市,西固区', 620100, 2879),
(620105, '安宁区', '甘肃省,兰州市,安宁区', 620100, 2880),
(620111, '红古区', '甘肃省,兰州市,红古区', 620100, 2881),
(620121, '永登县', '甘肃省,兰州市,永登县', 620100, 2882),
(620122, '皋兰县', '甘肃省,兰州市,皋兰县', 620100, 2883),
(620123, '榆中县', '甘肃省,兰州市,榆中县', 620100, 2884),
(620201, '市辖区', '甘肃省,嘉峪关市,市辖区', 620200, 2885),
(620301, '市辖区', '甘肃省,金昌市,市辖区', 620300, 2886),
(620302, '金川区', '甘肃省,金昌市,金川区', 620300, 2887),
(620321, '永昌县', '甘肃省,金昌市,永昌县', 620300, 2888),
(620401, '市辖区', '甘肃省,白银市,市辖区', 620400, 2889),
(620402, '白银区', '甘肃省,白银市,白银区', 620400, 2890),
(620403, '平川区', '甘肃省,白银市,平川区', 620400, 2891),
(620421, '靖远县', '甘肃省,白银市,靖远县', 620400, 2892),
(620422, '会宁县', '甘肃省,白银市,会宁县', 620400, 2893),
(620423, '景泰县', '甘肃省,白银市,景泰县', 620400, 2894),
(620501, '市辖区', '甘肃省,天水市,市辖区', 620500, 2895),
(620502, '秦城区', '甘肃省,天水市,秦城区', 620500, 2896),
(620503, '北道区', '甘肃省,天水市,北道区', 620500, 2897),
(620521, '清水县', '甘肃省,天水市,清水县', 620500, 2898),
(620522, '秦安县', '甘肃省,天水市,秦安县', 620500, 2899),
(620523, '甘谷县', '甘肃省,天水市,甘谷县', 620500, 2900),
(620524, '武山县', '甘肃省,天水市,武山县', 620500, 2901),
(620525, '张家川回族自治县', '甘肃省,天水市,张家川回族自治县', 620500, 2902),
(620601, '市辖区', '甘肃省,武威市,市辖区', 620600, 2903),
(620602, '凉州区', '甘肃省,武威市,凉州区', 620600, 2904),
(620621, '民勤县', '甘肃省,武威市,民勤县', 620600, 2905),
(620622, '古浪县', '甘肃省,武威市,古浪县', 620600, 2906),
(620623, '天祝藏族自治县', '甘肃省,武威市,天祝藏族自治县', 620600, 2907),
(620701, '市辖区', '甘肃省,张掖市,市辖区', 620700, 2908),
(620702, '甘州区', '甘肃省,张掖市,甘州区', 620700, 2909),
(620721, '肃南裕固族自治县', '甘肃省,张掖市,肃南裕固族自治县', 620700, 2910),
(620722, '民乐县', '甘肃省,张掖市,民乐县', 620700, 2911),
(620723, '临泽县', '甘肃省,张掖市,临泽县', 620700, 2912),
(620724, '高台县', '甘肃省,张掖市,高台县', 620700, 2913),
(620725, '山丹县', '甘肃省,张掖市,山丹县', 620700, 2914),
(620801, '市辖区', '甘肃省,平凉市,市辖区', 620800, 2915),
(620802, '崆峒区', '甘肃省,平凉市,崆峒区', 620800, 2916),
(620821, '泾川县', '甘肃省,平凉市,泾川县', 620800, 2917),
(620822, '灵台县', '甘肃省,平凉市,灵台县', 620800, 2918),
(620823, '崇信县', '甘肃省,平凉市,崇信县', 620800, 2919),
(620824, '华亭县', '甘肃省,平凉市,华亭县', 620800, 2920),
(620825, '庄浪县', '甘肃省,平凉市,庄浪县', 620800, 2921),
(620826, '静宁县', '甘肃省,平凉市,静宁县', 620800, 2922),
(620901, '市辖区', '甘肃省,酒泉市,市辖区', 620900, 2923),
(620902, '肃州区', '甘肃省,酒泉市,肃州区', 620900, 2924),
(620921, '金塔县', '甘肃省,酒泉市,金塔县', 620900, 2925),
(620922, '安西县', '甘肃省,酒泉市,安西县', 620900, 2926),
(620923, '肃北蒙古族自治县', '甘肃省,酒泉市,肃北蒙古族自治县', 620900, 2927),
(620924, '阿克塞哈萨克族自治县', '甘肃省,酒泉市,阿克塞哈萨克族自治县', 620900, 2928),
(620981, '玉门市', '甘肃省,酒泉市,玉门市', 620900, 2929),
(620982, '敦煌市', '甘肃省,酒泉市,敦煌市', 620900, 2930),
(621001, '市辖区', '甘肃省,庆阳市,市辖区', 621000, 2931),
(621002, '西峰区', '甘肃省,庆阳市,西峰区', 621000, 2932),
(621021, '庆城县', '甘肃省,庆阳市,庆城县', 621000, 2933),
(621022, '环　县', '甘肃省,庆阳市,环　县', 621000, 2934),
(621023, '华池县', '甘肃省,庆阳市,华池县', 621000, 2935),
(621024, '合水县', '甘肃省,庆阳市,合水县', 621000, 2936),
(621025, '正宁县', '甘肃省,庆阳市,正宁县', 621000, 2937),
(621026, '宁　县', '甘肃省,庆阳市,宁　县', 621000, 2938),
(621027, '镇原县', '甘肃省,庆阳市,镇原县', 621000, 2939),
(621101, '市辖区', '甘肃省,定西市,市辖区', 621100, 2940),
(621102, '安定区', '甘肃省,定西市,安定区', 621100, 2941),
(621121, '通渭县', '甘肃省,定西市,通渭县', 621100, 2942),
(621122, '陇西县', '甘肃省,定西市,陇西县', 621100, 2943),
(621123, '渭源县', '甘肃省,定西市,渭源县', 621100, 2944),
(621124, '临洮县', '甘肃省,定西市,临洮县', 621100, 2945),
(621125, '漳　县', '甘肃省,定西市,漳　县', 621100, 2946),
(621126, '岷　县', '甘肃省,定西市,岷　县', 621100, 2947),
(621201, '市辖区', '甘肃省,陇南市,市辖区', 621200, 2948),
(621202, '武都区', '甘肃省,陇南市,武都区', 621200, 2949),
(621221, '成　县', '甘肃省,陇南市,成　县', 621200, 2950),
(621222, '文　县', '甘肃省,陇南市,文　县', 621200, 2951),
(621223, '宕昌县', '甘肃省,陇南市,宕昌县', 621200, 2952),
(621224, '康　县', '甘肃省,陇南市,康　县', 621200, 2953),
(621225, '西和县', '甘肃省,陇南市,西和县', 621200, 2954),
(621226, '礼　县', '甘肃省,陇南市,礼　县', 621200, 2955),
(621227, '徽　县', '甘肃省,陇南市,徽　县', 621200, 2956),
(621228, '两当县', '甘肃省,陇南市,两当县', 621200, 2957),
(622901, '临夏市', '甘肃省,临夏回族自治州,临夏市', 622900, 2958),
(622921, '临夏县', '甘肃省,临夏回族自治州,临夏县', 622900, 2959),
(622922, '康乐县', '甘肃省,临夏回族自治州,康乐县', 622900, 2960),
(622923, '永靖县', '甘肃省,临夏回族自治州,永靖县', 622900, 2961),
(622924, '广河县', '甘肃省,临夏回族自治州,广河县', 622900, 2962),
(622925, '和政县', '甘肃省,临夏回族自治州,和政县', 622900, 2963),
(622926, '东乡族自治县', '甘肃省,临夏回族自治州,东乡族自治县', 622900, 2964),
(622927, '积石山保安族东乡族撒拉族自治县', '甘肃省,临夏回族自治州,积石山保安族东乡族撒拉族自治县', 622900, 2965),
(623001, '合作市', '甘肃省,甘南藏族自治州,合作市', 623000, 2966),
(623021, '临潭县', '甘肃省,甘南藏族自治州,临潭县', 623000, 2967),
(623022, '卓尼县', '甘肃省,甘南藏族自治州,卓尼县', 623000, 2968),
(623023, '舟曲县', '甘肃省,甘南藏族自治州,舟曲县', 623000, 2969),
(623024, '迭部县', '甘肃省,甘南藏族自治州,迭部县', 623000, 2970),
(623025, '玛曲县', '甘肃省,甘南藏族自治州,玛曲县', 623000, 2971),
(623026, '碌曲县', '甘肃省,甘南藏族自治州,碌曲县', 623000, 2972),
(623027, '夏河县', '甘肃省,甘南藏族自治州,夏河县', 623000, 2973),
(630101, '市辖区', '青海省,西宁市,市辖区', 630100, 2974),
(630102, '城东区', '青海省,西宁市,城东区', 630100, 2975),
(630103, '城中区', '青海省,西宁市,城中区', 630100, 2976),
(630104, '城西区', '青海省,西宁市,城西区', 630100, 2977),
(630105, '城北区', '青海省,西宁市,城北区', 630100, 2978),
(630121, '大通回族土族自治县', '青海省,西宁市,大通回族土族自治县', 630100, 2979),
(630122, '湟中县', '青海省,西宁市,湟中县', 630100, 2980),
(630123, '湟源县', '青海省,西宁市,湟源县', 630100, 2981),
(632121, '平安县', '青海省,海东地区,平安县', 632100, 2982),
(632122, '民和回族土族自治县', '青海省,海东地区,民和回族土族自治县', 632100, 2983),
(632123, '乐都县', '青海省,海东地区,乐都县', 632100, 2984),
(632126, '互助土族自治县', '青海省,海东地区,互助土族自治县', 632100, 2985),
(632127, '化隆回族自治县', '青海省,海东地区,化隆回族自治县', 632100, 2986),
(632128, '循化撒拉族自治县', '青海省,海东地区,循化撒拉族自治县', 632100, 2987),
(632221, '门源回族自治县', '青海省,海北藏族自治州,门源回族自治县', 632200, 2988);
INSERT INTO `pw_areas` (`areaid`, `name`, `joinname`, `parentid`, `vieworder`) VALUES
(632222, '祁连县', '青海省,海北藏族自治州,祁连县', 632200, 2989),
(632223, '海晏县', '青海省,海北藏族自治州,海晏县', 632200, 2990),
(632224, '刚察县', '青海省,海北藏族自治州,刚察县', 632200, 2991),
(632321, '同仁县', '青海省,黄南藏族自治州,同仁县', 632300, 2992),
(632322, '尖扎县', '青海省,黄南藏族自治州,尖扎县', 632300, 2993),
(632323, '泽库县', '青海省,黄南藏族自治州,泽库县', 632300, 2994),
(632324, '河南蒙古族自治县', '青海省,黄南藏族自治州,河南蒙古族自治县', 632300, 2995),
(632521, '共和县', '青海省,海南藏族自治州,共和县', 632500, 2996),
(632522, '同德县', '青海省,海南藏族自治州,同德县', 632500, 2997),
(632523, '贵德县', '青海省,海南藏族自治州,贵德县', 632500, 2998),
(632524, '兴海县', '青海省,海南藏族自治州,兴海县', 632500, 2999),
(632525, '贵南县', '青海省,海南藏族自治州,贵南县', 632500, 3000),
(632621, '玛沁县', '青海省,果洛藏族自治州,玛沁县', 632600, 3001),
(632622, '班玛县', '青海省,果洛藏族自治州,班玛县', 632600, 3002),
(632623, '甘德县', '青海省,果洛藏族自治州,甘德县', 632600, 3003),
(632624, '达日县', '青海省,果洛藏族自治州,达日县', 632600, 3004),
(632625, '久治县', '青海省,果洛藏族自治州,久治县', 632600, 3005),
(632626, '玛多县', '青海省,果洛藏族自治州,玛多县', 632600, 3006),
(632721, '玉树县', '青海省,玉树藏族自治州,玉树县', 632700, 3007),
(632722, '杂多县', '青海省,玉树藏族自治州,杂多县', 632700, 3008),
(632723, '称多县', '青海省,玉树藏族自治州,称多县', 632700, 3009),
(632724, '治多县', '青海省,玉树藏族自治州,治多县', 632700, 3010),
(632725, '囊谦县', '青海省,玉树藏族自治州,囊谦县', 632700, 3011),
(632726, '曲麻莱县', '青海省,玉树藏族自治州,曲麻莱县', 632700, 3012),
(632801, '格尔木市', '青海省,海西蒙古族藏族自治州,格尔木市', 632800, 3013),
(632802, '德令哈市', '青海省,海西蒙古族藏族自治州,德令哈市', 632800, 3014),
(632821, '乌兰县', '青海省,海西蒙古族藏族自治州,乌兰县', 632800, 3015),
(632822, '都兰县', '青海省,海西蒙古族藏族自治州,都兰县', 632800, 3016),
(632823, '天峻县', '青海省,海西蒙古族藏族自治州,天峻县', 632800, 3017),
(640101, '市辖区', '宁夏回族自治区,银川市,市辖区', 640100, 3018),
(640104, '兴庆区', '宁夏回族自治区,银川市,兴庆区', 640100, 3019),
(640105, '西夏区', '宁夏回族自治区,银川市,西夏区', 640100, 3020),
(640106, '金凤区', '宁夏回族自治区,银川市,金凤区', 640100, 3021),
(640121, '永宁县', '宁夏回族自治区,银川市,永宁县', 640100, 3022),
(640122, '贺兰县', '宁夏回族自治区,银川市,贺兰县', 640100, 3023),
(640181, '灵武市', '宁夏回族自治区,银川市,灵武市', 640100, 3024),
(640201, '市辖区', '宁夏回族自治区,石嘴山市,市辖区', 640200, 3025),
(640202, '大武口区', '宁夏回族自治区,石嘴山市,大武口区', 640200, 3026),
(640205, '惠农区', '宁夏回族自治区,石嘴山市,惠农区', 640200, 3027),
(640221, '平罗县', '宁夏回族自治区,石嘴山市,平罗县', 640200, 3028),
(640301, '市辖区', '宁夏回族自治区,吴忠市,市辖区', 640300, 3029),
(640302, '利通区', '宁夏回族自治区,吴忠市,利通区', 640300, 3030),
(640323, '盐池县', '宁夏回族自治区,吴忠市,盐池县', 640300, 3031),
(640324, '同心县', '宁夏回族自治区,吴忠市,同心县', 640300, 3032),
(640381, '青铜峡市', '宁夏回族自治区,吴忠市,青铜峡市', 640300, 3033),
(640401, '市辖区', '宁夏回族自治区,固原市,市辖区', 640400, 3034),
(640402, '原州区', '宁夏回族自治区,固原市,原州区', 640400, 3035),
(640422, '西吉县', '宁夏回族自治区,固原市,西吉县', 640400, 3036),
(640423, '隆德县', '宁夏回族自治区,固原市,隆德县', 640400, 3037),
(640424, '泾源县', '宁夏回族自治区,固原市,泾源县', 640400, 3038),
(640425, '彭阳县', '宁夏回族自治区,固原市,彭阳县', 640400, 3039),
(640501, '市辖区', '宁夏回族自治区,中卫市,市辖区', 640500, 3040),
(640502, '沙坡头区', '宁夏回族自治区,中卫市,沙坡头区', 640500, 3041),
(640521, '中宁县', '宁夏回族自治区,中卫市,中宁县', 640500, 3042),
(640522, '海原县', '宁夏回族自治区,中卫市,海原县', 640500, 3043),
(650101, '市辖区', '新疆维吾尔自治区,乌鲁木齐市,市辖区', 650100, 3044),
(650102, '天山区', '新疆维吾尔自治区,乌鲁木齐市,天山区', 650100, 3045),
(650103, '沙依巴克区', '新疆维吾尔自治区,乌鲁木齐市,沙依巴克区', 650100, 3046),
(650104, '新市区', '新疆维吾尔自治区,乌鲁木齐市,新市区', 650100, 3047),
(650105, '水磨沟区', '新疆维吾尔自治区,乌鲁木齐市,水磨沟区', 650100, 3048),
(650106, '头屯河区', '新疆维吾尔自治区,乌鲁木齐市,头屯河区', 650100, 3049),
(650107, '达坂城区', '新疆维吾尔自治区,乌鲁木齐市,达坂城区', 650100, 3050),
(650108, '东山区', '新疆维吾尔自治区,乌鲁木齐市,东山区', 650100, 3051),
(650121, '乌鲁木齐县', '新疆维吾尔自治区,乌鲁木齐市,乌鲁木齐县', 650100, 3052),
(650201, '市辖区', '新疆维吾尔自治区,克拉玛依市,市辖区', 650200, 3053),
(650202, '独山子区', '新疆维吾尔自治区,克拉玛依市,独山子区', 650200, 3054),
(650203, '克拉玛依区', '新疆维吾尔自治区,克拉玛依市,克拉玛依区', 650200, 3055),
(650204, '白碱滩区', '新疆维吾尔自治区,克拉玛依市,白碱滩区', 650200, 3056),
(650205, '乌尔禾区', '新疆维吾尔自治区,克拉玛依市,乌尔禾区', 650200, 3057),
(652101, '吐鲁番市', '新疆维吾尔自治区,吐鲁番地区,吐鲁番市', 652100, 3058),
(652122, '鄯善县', '新疆维吾尔自治区,吐鲁番地区,鄯善县', 652100, 3059),
(652123, '托克逊县', '新疆维吾尔自治区,吐鲁番地区,托克逊县', 652100, 3060),
(652201, '哈密市', '新疆维吾尔自治区,哈密地区,哈密市', 652200, 3061),
(652222, '巴里坤哈萨克自治县', '新疆维吾尔自治区,哈密地区,巴里坤哈萨克自治县', 652200, 3062),
(652223, '伊吾县', '新疆维吾尔自治区,哈密地区,伊吾县', 652200, 3063),
(652301, '昌吉市', '新疆维吾尔自治区,昌吉回族自治州,昌吉市', 652300, 3064),
(652302, '阜康市', '新疆维吾尔自治区,昌吉回族自治州,阜康市', 652300, 3065),
(652303, '米泉市', '新疆维吾尔自治区,昌吉回族自治州,米泉市', 652300, 3066),
(652323, '呼图壁县', '新疆维吾尔自治区,昌吉回族自治州,呼图壁县', 652300, 3067),
(652324, '玛纳斯县', '新疆维吾尔自治区,昌吉回族自治州,玛纳斯县', 652300, 3068),
(652325, '奇台县', '新疆维吾尔自治区,昌吉回族自治州,奇台县', 652300, 3069),
(652327, '吉木萨尔县', '新疆维吾尔自治区,昌吉回族自治州,吉木萨尔县', 652300, 3070),
(652328, '木垒哈萨克自治县', '新疆维吾尔自治区,昌吉回族自治州,木垒哈萨克自治县', 652300, 3071),
(652701, '博乐市', '新疆维吾尔自治区,博尔塔拉蒙古自治州,博乐市', 652700, 3072),
(652722, '精河县', '新疆维吾尔自治区,博尔塔拉蒙古自治州,精河县', 652700, 3073),
(652723, '温泉县', '新疆维吾尔自治区,博尔塔拉蒙古自治州,温泉县', 652700, 3074),
(652801, '库尔勒市', '新疆维吾尔自治区,巴音郭楞蒙古自治州,库尔勒市', 652800, 3075),
(652822, '轮台县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,轮台县', 652800, 3076),
(652823, '尉犁县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,尉犁县', 652800, 3077),
(652824, '若羌县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,若羌县', 652800, 3078),
(652825, '且末县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,且末县', 652800, 3079),
(652826, '焉耆回族自治县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,焉耆回族自治县', 652800, 3080),
(652827, '和静县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,和静县', 652800, 3081),
(652828, '和硕县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,和硕县', 652800, 3082),
(652829, '博湖县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,博湖县', 652800, 3083),
(652901, '阿克苏市', '新疆维吾尔自治区,阿克苏地区,阿克苏市', 652900, 3084),
(652922, '温宿县', '新疆维吾尔自治区,阿克苏地区,温宿县', 652900, 3085),
(652923, '库车县', '新疆维吾尔自治区,阿克苏地区,库车县', 652900, 3086),
(652924, '沙雅县', '新疆维吾尔自治区,阿克苏地区,沙雅县', 652900, 3087),
(652925, '新和县', '新疆维吾尔自治区,阿克苏地区,新和县', 652900, 3088),
(652926, '拜城县', '新疆维吾尔自治区,阿克苏地区,拜城县', 652900, 3089),
(652927, '乌什县', '新疆维吾尔自治区,阿克苏地区,乌什县', 652900, 3090),
(652928, '阿瓦提县', '新疆维吾尔自治区,阿克苏地区,阿瓦提县', 652900, 3091),
(652929, '柯坪县', '新疆维吾尔自治区,阿克苏地区,柯坪县', 652900, 3092),
(653001, '阿图什市', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿图什市', 653000, 3093),
(653022, '阿克陶县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿克陶县', 653000, 3094),
(653023, '阿合奇县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿合奇县', 653000, 3095),
(653024, '乌恰县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,乌恰县', 653000, 3096),
(653101, '喀什市', '新疆维吾尔自治区,喀什地区,喀什市', 653100, 3097),
(653121, '疏附县', '新疆维吾尔自治区,喀什地区,疏附县', 653100, 3098),
(653122, '疏勒县', '新疆维吾尔自治区,喀什地区,疏勒县', 653100, 3099),
(653123, '英吉沙县', '新疆维吾尔自治区,喀什地区,英吉沙县', 653100, 3100),
(653124, '泽普县', '新疆维吾尔自治区,喀什地区,泽普县', 653100, 3101),
(653125, '莎车县', '新疆维吾尔自治区,喀什地区,莎车县', 653100, 3102),
(653126, '叶城县', '新疆维吾尔自治区,喀什地区,叶城县', 653100, 3103),
(653127, '麦盖提县', '新疆维吾尔自治区,喀什地区,麦盖提县', 653100, 3104),
(653128, '岳普湖县', '新疆维吾尔自治区,喀什地区,岳普湖县', 653100, 3105),
(653129, '伽师县', '新疆维吾尔自治区,喀什地区,伽师县', 653100, 3106),
(653130, '巴楚县', '新疆维吾尔自治区,喀什地区,巴楚县', 653100, 3107),
(653131, '塔什库尔干塔吉克自治县', '新疆维吾尔自治区,喀什地区,塔什库尔干塔吉克自治县', 653100, 3108),
(653201, '和田市', '新疆维吾尔自治区,和田地区,和田市', 653200, 3109),
(653221, '和田县', '新疆维吾尔自治区,和田地区,和田县', 653200, 3110),
(653222, '墨玉县', '新疆维吾尔自治区,和田地区,墨玉县', 653200, 3111),
(653223, '皮山县', '新疆维吾尔自治区,和田地区,皮山县', 653200, 3112),
(653224, '洛浦县', '新疆维吾尔自治区,和田地区,洛浦县', 653200, 3113),
(653225, '策勒县', '新疆维吾尔自治区,和田地区,策勒县', 653200, 3114),
(653226, '于田县', '新疆维吾尔自治区,和田地区,于田县', 653200, 3115),
(653227, '民丰县', '新疆维吾尔自治区,和田地区,民丰县', 653200, 3116),
(654002, '伊宁市', '新疆维吾尔自治区,伊犁哈萨克自治州,伊宁市', 654000, 3117),
(654003, '奎屯市', '新疆维吾尔自治区,伊犁哈萨克自治州,奎屯市', 654000, 3118),
(654021, '伊宁县', '新疆维吾尔自治区,伊犁哈萨克自治州,伊宁县', 654000, 3119),
(654022, '察布查尔锡伯自治县', '新疆维吾尔自治区,伊犁哈萨克自治州,察布查尔锡伯自治县', 654000, 3120),
(654023, '霍城县', '新疆维吾尔自治区,伊犁哈萨克自治州,霍城县', 654000, 3121),
(654024, '巩留县', '新疆维吾尔自治区,伊犁哈萨克自治州,巩留县', 654000, 3122),
(654025, '新源县', '新疆维吾尔自治区,伊犁哈萨克自治州,新源县', 654000, 3123),
(654026, '昭苏县', '新疆维吾尔自治区,伊犁哈萨克自治州,昭苏县', 654000, 3124),
(654027, '特克斯县', '新疆维吾尔自治区,伊犁哈萨克自治州,特克斯县', 654000, 3125),
(654028, '尼勒克县', '新疆维吾尔自治区,伊犁哈萨克自治州,尼勒克县', 654000, 3126),
(654201, '塔城市', '新疆维吾尔自治区,塔城地区,塔城市', 654200, 3127),
(654202, '乌苏市', '新疆维吾尔自治区,塔城地区,乌苏市', 654200, 3128),
(654221, '额敏县', '新疆维吾尔自治区,塔城地区,额敏县', 654200, 3129),
(654223, '沙湾县', '新疆维吾尔自治区,塔城地区,沙湾县', 654200, 3130),
(654224, '托里县', '新疆维吾尔自治区,塔城地区,托里县', 654200, 3131),
(654225, '裕民县', '新疆维吾尔自治区,塔城地区,裕民县', 654200, 3132),
(654226, '和布克赛尔蒙古自治县', '新疆维吾尔自治区,塔城地区,和布克赛尔蒙古自治县', 654200, 3133),
(654301, '阿勒泰市', '新疆维吾尔自治区,阿勒泰地区,阿勒泰市', 654300, 3134),
(654321, '布尔津县', '新疆维吾尔自治区,阿勒泰地区,布尔津县', 654300, 3135),
(654322, '富蕴县', '新疆维吾尔自治区,阿勒泰地区,富蕴县', 654300, 3136),
(654323, '福海县', '新疆维吾尔自治区,阿勒泰地区,福海县', 654300, 3137),
(654324, '哈巴河县', '新疆维吾尔自治区,阿勒泰地区,哈巴河县', 654300, 3138),
(654325, '青河县', '新疆维吾尔自治区,阿勒泰地区,青河县', 654300, 3139),
(654326, '吉木乃县', '新疆维吾尔自治区,阿勒泰地区,吉木乃县', 654300, 3140),
(659001, '石河子市', '新疆维吾尔自治区,省直辖行政单位,石河子市', 659000, 3141),
(659002, '阿拉尔市', '新疆维吾尔自治区,省直辖行政单位,阿拉尔市', 659000, 3142),
(659003, '图木舒克市', '新疆维吾尔自治区,省直辖行政单位,图木舒克市', 659000, 3143),
(659004, '五家渠市', '新疆维吾尔自治区,省直辖行政单位,五家渠市', 659000, 3144),
(810001, '香港', '香港特别行政区,香港', 810000, 1),
(810002, '中西区', '香港特别行政区,香港,中西区', 810001, 1),
(810003, '九龙城区', '香港特别行政区,香港,九龙城区', 810001, 2),
(810004, '南区', '香港特别行政区,香港,南区', 810001, 3),
(810005, '黄大仙区', '香港特别行政区,香港,黄大仙区', 810001, 4),
(810006, '油尖旺区', '香港特别行政区,香港,油尖旺区', 810001, 5),
(810007, '葵青区', '香港特别行政区,香港,葵青区', 810001, 6),
(810008, '西贡区', '香港特别行政区,香港,西贡区', 810001, 7),
(810009, '屯门区', '香港特别行政区,香港,屯门区', 810001, 8),
(810010, '荃湾区', '香港特别行政区,香港,荃湾区', 810001, 9),
(810011, '东区', '香港特别行政区,香港,东区', 810001, 10),
(810012, '观塘区', '香港特别行政区,香港,观塘区', 810001, 11),
(810013, '深水步区', '香港特别行政区,香港,深水步区', 810001, 12),
(810014, '湾仔区', '香港特别行政区,香港,湾仔区', 810001, 13),
(810015, '离岛区', '香港特别行政区,香港,离岛区', 810001, 14),
(810016, '北区', '香港特别行政区,香港,北区', 810001, 15),
(810017, '沙田区', '香港特别行政区,香港,沙田区', 810001, 16),
(810018, '大埔区', '香港特别行政区,香港,大埔区', 810001, 17),
(810019, '元朗区', '香港特别行政区,香港,元朗区', 810001, 18),
(820001, '澳门', '澳门特别行政区,澳门', 820000, 0),
(820002, '澳门特别行政区', '澳门特别行政区,澳门,澳门', 820001, 0),
(710001, '台北市', '台湾省,台北市', 710000, 1),
(710002, '台北县', '台湾省,台北市,台北县', 710001, 1),
(710003, '基隆市', '台湾省,基隆市', 710000, 1),
(910005, '中山市', '广东省,中山市,中山市', 442000, 217),
(710004, '花莲县', '台湾省,基隆市,花莲县', 710003, 1),
(910006, '东莞市', '广东省,东莞市,东莞市', 441900, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_area_level`
--

CREATE TABLE `pw_area_level` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `hasedit` tinyint(3) NOT NULL DEFAULT '0',
  `hasattr` tinyint(3) NOT NULL DEFAULT '0',
  `super` tinyint(3) NOT NULL DEFAULT '0',
  `level` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_argument`
--

CREATE TABLE `pw_argument` (
  `tid` int(10) UNSIGNED NOT NULL,
  `cyid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `topped` tinyint(3) UNSIGNED NOT NULL,
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `digest` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(15) NOT NULL DEFAULT '',
  `toolfield` varchar(21) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_attachbuy`
--

CREATE TABLE `pw_attachbuy` (
  `aid` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ctype` varchar(20) NOT NULL DEFAULT '',
  `cost` smallint(6) UNSIGNED NOT NULL,
  `createdtime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_attachdownload`
--

CREATE TABLE `pw_attachdownload` (
  `aid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `ctype` varchar(20) NOT NULL DEFAULT '0',
  `cost` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `createdtime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_attachs`
--

CREATE TABLE `pw_attachs` (
  `aid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `did` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attachurl` varchar(80) NOT NULL DEFAULT '0',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `needrvrc` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `special` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ctype` varchar(20) NOT NULL DEFAULT '',
  `uploadtime` int(10) NOT NULL DEFAULT '0',
  `descrip` varchar(100) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_attention`
--

CREATE TABLE `pw_attention` (
  `uid` int(10) NOT NULL DEFAULT '0',
  `friendid` int(10) NOT NULL DEFAULT '0',
  `joindate` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_attention_blacklist`
--

CREATE TABLE `pw_attention_blacklist` (
  `uid` int(10) UNSIGNED NOT NULL,
  `touid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_auth_certificate`
--

CREATE TABLE `pw_auth_certificate` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `number` char(32) NOT NULL DEFAULT '',
  `attach1` varchar(80) NOT NULL DEFAULT '',
  `attach2` varchar(80) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `admintime` int(10) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ban`
--

CREATE TABLE `pw_ban` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `reason` varchar(100) NOT NULL DEFAULT '',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_banuser`
--

CREATE TABLE `pw_banuser` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `startdate` int(10) NOT NULL DEFAULT '0',
  `days` smallint(6) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `reason` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_bbsinfo`
--

CREATE TABLE `pw_bbsinfo` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `newmember` varchar(15) NOT NULL DEFAULT '',
  `totalmember` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `higholnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `higholtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tdtcontrol` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `yposts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hposts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hit_tdtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hit_control` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `plantime` int(10) NOT NULL DEFAULT '0',
  `o_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `o_tpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_statistictime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_bbsinfo`
--

INSERT INTO `pw_bbsinfo` (`id`, `newmember`, `totalmember`, `higholnum`, `higholtime`, `tdtcontrol`, `yposts`, `hposts`, `hit_tdtime`, `hit_control`, `plantime`, `o_post`, `o_tpost`, `last_statistictime`) VALUES
(1, 'admin', 1, 1, 1471073275, 1471017600, 0, 0, 0, 0, 1471077000, 0, 0, 1471073275);

-- --------------------------------------------------------

--
-- 表的结构 `pw_buyadvert`
--

CREATE TABLE `pw_buyadvert` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cache`
--

CREATE TABLE `pw_cache` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `cache` mediumtext NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cache`
--

INSERT INTO `pw_cache` (`name`, `cache`, `time`) VALUES
('index_cache', '$notice_A=array(\r\n);\r\n$sharelink=array(\r\n	\'1\' => \'<a href="http://www.phpwind.net" target="_blank"><img src="logo.gif" alt="PHPwind官方论坛" title="PHPwind官方论坛" width="88" height="31"></a>\',\r\n);', 0),
('thread_announce', '$notice_A=array(\r\n);\r\n$notice_C=array(\r\n);', 0),
('postcache', '$faces=array(\r\n	\'default\'=>array(\r\n		\'name\'=>\'默认表情\',\r\n		\'child\'=>array(\'2\',\'3\',\'4\',\'5\',\'6\',\'7\',\'8\',\'9\',\'10\',\'11\',\'12\',\'13\',\'14\',\'15\',),\r\n	),\r\n	\'wangwang\'=>array(\r\n		\'name\'=>\'旺旺\',\r\n		\'child\'=>array(\'152\',\'151\',\'150\',\'149\',\'148\',\'147\',\'146\',\'145\',\'144\',\'143\',\'142\',\'141\',\'140\',\'139\',\'138\',\'137\',\'136\',\'135\',\'134\',\'133\',\'132\',\'131\',\'130\',\'129\',\'128\',\'127\',\'126\',\'125\',\'124\',\'123\',\'122\',\'121\',\'120\',\'119\',\'118\',\'117\',\'116\',),\r\n	),\r\n);\r\n$face=array(\r\n	\'2\'=>array(\'default/1.gif\',\'\',\'\'),\r\n	\'3\'=>array(\'default/2.gif\',\'\',\'\'),\r\n	\'4\'=>array(\'default/3.gif\',\'\',\'\'),\r\n	\'5\'=>array(\'default/4.gif\',\'\',\'\'),\r\n	\'6\'=>array(\'default/5.gif\',\'\',\'\'),\r\n	\'7\'=>array(\'default/6.gif\',\'\',\'\'),\r\n	\'8\'=>array(\'default/7.gif\',\'\',\'\'),\r\n	\'9\'=>array(\'default/8.gif\',\'\',\'\'),\r\n	\'10\'=>array(\'default/9.gif\',\'\',\'\'),\r\n	\'11\'=>array(\'default/10.gif\',\'\',\'\'),\r\n	\'12\'=>array(\'default/11.gif\',\'\',\'\'),\r\n	\'13\'=>array(\'default/12.gif\',\'\',\'\'),\r\n	\'14\'=>array(\'default/13.gif\',\'\',\'\'),\r\n	\'15\'=>array(\'default/14.gif\',\'\',\'\'),\r\n	\'152\'=>array(\'wangwang/9.gif\',\'\',\'\'),\r\n	\'151\'=>array(\'wangwang/8.gif\',\'\',\'\'),\r\n	\'150\'=>array(\'wangwang/7.gif\',\'\',\'\'),\r\n	\'149\'=>array(\'wangwang/6.gif\',\'\',\'\'),\r\n	\'148\'=>array(\'wangwang/5.gif\',\'\',\'\'),\r\n	\'147\'=>array(\'wangwang/4.gif\',\'\',\'\'),\r\n	\'146\'=>array(\'wangwang/37.gif\',\'\',\'\'),\r\n	\'145\'=>array(\'wangwang/36.gif\',\'\',\'\'),\r\n	\'144\'=>array(\'wangwang/35.gif\',\'\',\'\'),\r\n	\'143\'=>array(\'wangwang/34.gif\',\'\',\'\'),\r\n	\'142\'=>array(\'wangwang/33.gif\',\'\',\'\'),\r\n	\'141\'=>array(\'wangwang/32.gif\',\'\',\'\'),\r\n	\'140\'=>array(\'wangwang/31.gif\',\'\',\'\'),\r\n	\'139\'=>array(\'wangwang/30.gif\',\'\',\'\'),\r\n	\'138\'=>array(\'wangwang/3.gif\',\'\',\'\'),\r\n	\'137\'=>array(\'wangwang/29.gif\',\'\',\'\'),\r\n	\'136\'=>array(\'wangwang/28.gif\',\'\',\'\'),\r\n	\'135\'=>array(\'wangwang/27.gif\',\'\',\'\'),\r\n	\'134\'=>array(\'wangwang/26.gif\',\'\',\'\'),\r\n	\'133\'=>array(\'wangwang/25.gif\',\'\',\'\'),\r\n	\'132\'=>array(\'wangwang/24.gif\',\'\',\'\'),\r\n	\'131\'=>array(\'wangwang/23.gif\',\'\',\'\'),\r\n	\'130\'=>array(\'wangwang/22.gif\',\'\',\'\'),\r\n	\'129\'=>array(\'wangwang/21.gif\',\'\',\'\'),\r\n	\'128\'=>array(\'wangwang/20.gif\',\'\',\'\'),\r\n	\'127\'=>array(\'wangwang/2.gif\',\'\',\'\'),\r\n	\'126\'=>array(\'wangwang/19.gif\',\'\',\'\'),\r\n	\'125\'=>array(\'wangwang/18.gif\',\'\',\'\'),\r\n	\'124\'=>array(\'wangwang/17.gif\',\'\',\'\'),\r\n	\'123\'=>array(\'wangwang/16.gif\',\'\',\'\'),\r\n	\'122\'=>array(\'wangwang/15.gif\',\'\',\'\'),\r\n	\'121\'=>array(\'wangwang/14.gif\',\'\',\'\'),\r\n	\'120\'=>array(\'wangwang/13.gif\',\'\',\'\'),\r\n	\'119\'=>array(\'wangwang/12.gif\',\'\',\'\'),\r\n	\'118\'=>array(\'wangwang/11.gif\',\'\',\'\'),\r\n	\'117\'=>array(\'wangwang/10.gif\',\'\',\'\'),\r\n	\'116\'=>array(\'wangwang/1.gif\',\'\',\'\'),\r\n);', 0),
('medaldb', '$_MEDALDB=array(\r\n	\'1\' => array(\r\n		\'medal_id\' => \'1\',\r\n		\'identify\' => \'shequjumin\',\r\n		\'name\' => \'社区居民\',\r\n		\'descrip\' => \'拥有帐号并登录即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'shequjumin.png\',\r\n		\'sortorder\' => \'0\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'continue_login\',\r\n		\'confine\' => \'1\',\r\n		\'bigimage\' => \'images/medal/big/shequjumin.png\',\r\n		\'smallimage\' => \'images/medal/small/shequjumin.png\',\r\n	),\r\n	\'2\' => array(\r\n		\'medal_id\' => \'2\',\r\n		\'identify\' => \'zuiaishafa\',\r\n		\'name\' => \'最爱沙发\',\r\n		\'descrip\' => \'抢沙发总数达到100即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'zuiaishafa.png\',\r\n		\'sortorder\' => \'1\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'shafa\',\r\n		\'confine\' => \'100\',\r\n		\'bigimage\' => \'images/medal/big/zuiaishafa.png\',\r\n		\'smallimage\' => \'images/medal/small/zuiaishafa.png\',\r\n	),\r\n	\'3\' => array(\r\n		\'medal_id\' => \'3\',\r\n		\'identify\' => \'shequmingxing\',\r\n		\'name\' => \'社区明星\',\r\n		\'descrip\' => \'粉丝数达到100即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'shequmingxing.png\',\r\n		\'sortorder\' => \'2\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'fans\',\r\n		\'confine\' => \'100\',\r\n		\'bigimage\' => \'images/medal/big/shequmingxing.png\',\r\n		\'smallimage\' => \'images/medal/small/shequmingxing.png\',\r\n	),\r\n	\'4\' => array(\r\n		\'medal_id\' => \'4\',\r\n		\'identify\' => \'zhongshihuiyuan\',\r\n		\'name\' => \'忠实会员\',\r\n		\'descrip\' => \'连续登录7天即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'rexinhuiyuan.png\',\r\n		\'sortorder\' => \'3\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'continue_login\',\r\n		\'confine\' => \'7\',\r\n		\'bigimage\' => \'images/medal/big/rexinhuiyuan.png\',\r\n		\'smallimage\' => \'images/medal/small/rexinhuiyuan.png\',\r\n	),\r\n	\'5\' => array(\r\n		\'medal_id\' => \'5\',\r\n		\'identify\' => \'yuanchuangdaren\',\r\n		\'name\' => \'原创达人\',\r\n		\'descrip\' => \'连续发主题7天即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'yuanchuangdaren.png\',\r\n		\'sortorder\' => \'4\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'continue_thread_post\',\r\n		\'confine\' => \'7\',\r\n		\'bigimage\' => \'images/medal/big/yuanchuangdaren.png\',\r\n		\'smallimage\' => \'images/medal/small/yuanchuangdaren.png\',\r\n	),\r\n	\'6\' => array(\r\n		\'medal_id\' => \'6\',\r\n		\'identify\' => \'shequlaomo\',\r\n		\'name\' => \'社区劳模\',\r\n		\'descrip\' => \'连续发帖7天即可获得此勋章.\',\r\n		\'type\' => \'1\',\r\n		\'image\' => \'shequlaomo.png\',\r\n		\'sortorder\' => \'5\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'continue_post\',\r\n		\'confine\' => \'7\',\r\n		\'bigimage\' => \'images/medal/big/shequlaomo.png\',\r\n		\'smallimage\' => \'images/medal/small/shequlaomo.png\',\r\n	),\r\n	\'7\' => array(\r\n		\'medal_id\' => \'7\',\r\n		\'identify\' => \'shimingrenzheng\',\r\n		\'name\' => \'实名认证\',\r\n		\'descrip\' => \'实名认证用户即可获得此勋章.\',\r\n		\'type\' => \'0\',\r\n		\'image\' => \'shimingrenzheng.png\',\r\n		\'sortorder\' => \'6\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/shimingrenzheng.png\',\r\n		\'smallimage\' => \'images/medal/small/shimingrenzheng.png\',\r\n	),\r\n	\'8\' => array(\r\n		\'medal_id\' => \'8\',\r\n		\'identify\' => \'chengxinshanghu\',\r\n		\'name\' => \'诚信商户\',\r\n		\'descrip\' => \'社区诚信商户,官方认证.\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'chengxinshanghu.png\',\r\n		\'sortorder\' => \'7\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/chengxinshanghu.png\',\r\n		\'smallimage\' => \'images/medal/small/chengxinshanghu.png\',\r\n	),\r\n	\'9\' => array(\r\n		\'medal_id\' => \'9\',\r\n		\'identify\' => \'xinrenjinbu\',\r\n		\'name\' => \'新人进步\',\r\n		\'descrip\' => \'新人有很大的进步可以得到这个奖章!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'xinrenjinbu.png\',\r\n		\'sortorder\' => \'8\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/xinrenjinbu.png\',\r\n		\'smallimage\' => \'images/medal/small/xinrenjinbu.png\',\r\n	),\r\n	\'10\' => array(\r\n		\'medal_id\' => \'10\',\r\n		\'identify\' => \'zhongshenchengjiu\',\r\n		\'name\' => \'终身成就\',\r\n		\'descrip\' => \'谢谢您为社区发展做出的不可磨灭的贡献!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'zhongshenchengjiu.png\',\r\n		\'sortorder\' => \'9\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/zhongshenchengjiu.png\',\r\n		\'smallimage\' => \'images/medal/small/zhongshenchengjiu.png\',\r\n	),\r\n	\'11\' => array(\r\n		\'medal_id\' => \'11\',\r\n		\'identify\' => \'xuanchuandashi\',\r\n		\'name\' => \'宣传大使\',\r\n		\'descrip\' => \'谢谢您为社区积极宣传,特颁发此奖!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'xuanchuandashi.png\',\r\n		\'sortorder\' => \'10\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/xuanchuandashi.png\',\r\n		\'smallimage\' => \'images/medal/small/xuanchuandashi.png\',\r\n	),\r\n	\'12\' => array(\r\n		\'medal_id\' => \'12\',\r\n		\'identify\' => \'jindianzi\',\r\n		\'name\' => \'金点子\',\r\n		\'descrip\' => \'为社区提出建设性的建议被采纳,特颁发此奖!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'jindianzi.png\',\r\n		\'sortorder\' => \'11\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/jindianzi.png\',\r\n		\'smallimage\' => \'images/medal/small/jindianzi.png\',\r\n	),\r\n	\'13\' => array(\r\n		\'medal_id\' => \'13\',\r\n		\'identify\' => \'youmodashi\',\r\n		\'name\' => \'幽默大师\',\r\n		\'descrip\' => \'您总是能给别人带来欢乐,谢谢您!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'youmodashi.png\',\r\n		\'sortorder\' => \'12\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/youmodashi.png\',\r\n		\'smallimage\' => \'images/medal/small/youmodashi.png\',\r\n	),\r\n	\'14\' => array(\r\n		\'medal_id\' => \'14\',\r\n		\'identify\' => \'yuanchuangxianfeng\',\r\n		\'name\' => \'原创先锋\',\r\n		\'descrip\' => \'谢谢您积极发表原创作品,特颁发此奖!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'yuanchuangxianfeng.png\',\r\n		\'sortorder\' => \'13\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/yuanchuangxianfeng.png\',\r\n		\'smallimage\' => \'images/medal/small/yuanchuangxianfeng.png\',\r\n	),\r\n	\'15\' => array(\r\n		\'medal_id\' => \'15\',\r\n		\'identify\' => \'teshugongxian\',\r\n		\'name\' => \'特殊贡献\',\r\n		\'descrip\' => \'您为论坛做出了特殊贡献,谢谢您!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'teshugongxian.png\',\r\n		\'sortorder\' => \'14\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/teshugongxian.png\',\r\n		\'smallimage\' => \'images/medal/small/teshugongxian.png\',\r\n	),\r\n	\'16\' => array(\r\n		\'medal_id\' => \'16\',\r\n		\'identify\' => \'guanshuidashi\',\r\n		\'name\' => \'灌水天才\',\r\n		\'descrip\' => \'能够长期提供优质的社区水资源者,可得这个奖章!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'guanshuidashi.png\',\r\n		\'sortorder\' => \'15\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/guanshuidashi.png\',\r\n		\'smallimage\' => \'images/medal/small/guanshuidashi.png\',\r\n	),\r\n	\'17\' => array(\r\n		\'medal_id\' => \'17\',\r\n		\'identify\' => \'youxiubanzhu\',\r\n		\'name\' => \'优秀斑竹\',\r\n		\'descrip\' => \'辛劳地为论坛付出劳动，收获快乐，感谢您!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'youxiubanzhu.png\',\r\n		\'sortorder\' => \'16\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/youxiubanzhu.png\',\r\n		\'smallimage\' => \'images/medal/small/youxiubanzhu.png\',\r\n	),\r\n	\'18\' => array(\r\n		\'medal_id\' => \'18\',\r\n		\'identify\' => \'tietudashi\',\r\n		\'name\' => \'贴图大师\',\r\n		\'descrip\' => \'帖图高手,堪称大师!\',\r\n		\'type\' => \'2\',\r\n		\'image\' => \'tietudashi.png\',\r\n		\'sortorder\' => \'17\',\r\n		\'is_apply\' => \'1\',\r\n		\'is_open\' => \'1\',\r\n		\'allow_group\' => \'\',\r\n		\'associate\' => \'\',\r\n		\'confine\' => \'0\',\r\n		\'bigimage\' => \'images/medal/big/tietudashi.png\',\r\n		\'smallimage\' => \'images/medal/small/tietudashi.png\',\r\n	),\r\n);\r\n', 0),
('forum_cache', '$forum=array(\r\n	\'1\' => array(\r\n		\'fid\' => \'1\',\r\n		\'fup\' => \'0\',\r\n		\'ifsub\' => \'0\',\r\n		\'childid\' => \'1\',\r\n		\'type\' => \'category\',\r\n		\'name\' => \'默认分类\',\r\n		\'style\' => \'0\',\r\n		\'f_type\' => \'forum\',\r\n		\'ifcms\' => \'0\',\r\n		\'ifhide\' => \'1\',\r\n		\'title\' => \'\',\r\n		\'metadescrip\' => \'\',\r\n		\'descrip\' => \'\',\r\n		\'keywords\' => \'\',\r\n		\'forumadmin\' => \'\',\r\n	),\r\n	\'2\' => array(\r\n		\'fid\' => \'2\',\r\n		\'fup\' => \'1\',\r\n		\'ifsub\' => \'0\',\r\n		\'childid\' => \'0\',\r\n		\'type\' => \'forum\',\r\n		\'name\' => \'默认版块\',\r\n		\'style\' => \'0\',\r\n		\'f_type\' => \'forum\',\r\n		\'ifcms\' => \'0\',\r\n		\'ifhide\' => \'1\',\r\n		\'title\' => \'\',\r\n		\'metadescrip\' => \'\',\r\n		\'descrip\' => \'\',\r\n		\'keywords\' => \'\',\r\n		\'forumadmin\' => \'\',\r\n	),\r\n);\r\n$pwForumList=array(\r\n	\'1\' => array(\r\n		\'name\' => \'默认分类\',\r\n		\'child\' => array(\r\n			\'2\' => \'默认版块\',\r\n		),\r\n	),\r\n);\r\n$pwForumAllList = array(\r\n);', 0),
('level', '$ltitle=$lpic=$lneed=array();\r\n/**\r\n* default\r\n*/\r\n$ltitle[1]=\'default\';		$lpic[1]=\'0\';\r\n$ltitle[2]=\'游客\';		$lpic[2]=\'0\';\r\n$ltitle[6]=\'禁止发言\';		$lpic[6]=\'0\';\r\n$ltitle[7]=\'未验证会员\';		$lpic[7]=\'0\';\r\n\r\n/**\r\n* system\r\n*/\r\n$ltitle[3]=\'管理员\';		$lpic[3]=\'21\';\r\n$ltitle[4]=\'总版主\';		$lpic[4]=\'20\';\r\n$ltitle[5]=\'论坛版主\';		$lpic[5]=\'19\';\r\n$ltitle[17]=\'门户编辑\';		$lpic[17]=\'18\';\r\n\r\n/**\r\n* special\r\n*/\r\n$ltitle[16]=\'荣誉会员\';		$lpic[16]=\'16\';\r\n\r\n/**\r\n* member\r\n*/\r\n$ltitle[8]=\'新手上路\';		$lpic[8]=\'1\';		$lneed[8]=\'0\';\r\n$ltitle[9]=\'侠客\';		$lpic[9]=\'2\';		$lneed[9]=\'100\';\r\n$ltitle[10]=\'骑士\';		$lpic[10]=\'3\';		$lneed[10]=\'300\';\r\n$ltitle[11]=\'圣骑士\';		$lpic[11]=\'4\';		$lneed[11]=\'600\';\r\n$ltitle[12]=\'精灵王\';		$lpic[12]=\'5\';		$lneed[12]=\'1000\';\r\n$ltitle[13]=\'风云使者\';		$lpic[13]=\'6\';		$lneed[13]=\'5000\';\r\n$ltitle[14]=\'光明使者\';		$lpic[14]=\'7\';		$lneed[14]=\'10000\';\r\n$ltitle[15]=\'天使\';		$lpic[15]=\'8\';		$lneed[15]=\'50000\';\r\n', 0),
('gp_right', '$gp_right=array(\r\n	\'1\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'2\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'3\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'4\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'5\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'6\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'7\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'8\' => array(\r\n		\'fontsize\' => \'3\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n	\'16\' => array(\r\n		\'fontsize\' => \'\',\r\n		\'imgheight\' => \'\',\r\n		\'imgwidth\' => \'\',\r\n	),\r\n);', 0),
('customfield', '$customfield=array(\r\n	\'0\' => array(\r\n		\'id\' => \'8\',\r\n		\'category\' => \'contact\',\r\n		\'title\' => \'QQ\',\r\n		\'maxlen\' => \'12\',\r\n		\'vieworder\' => \'1\',\r\n		\'type\' => \'1\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'oicq\',\r\n	),\r\n	\'1\' => array(\r\n		\'id\' => \'9\',\r\n		\'category\' => \'contact\',\r\n		\'title\' => \'阿里旺旺\',\r\n		\'maxlen\' => \'30\',\r\n		\'vieworder\' => \'1\',\r\n		\'type\' => \'1\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'0\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'aliww\',\r\n	),\r\n	\'2\' => array(\r\n		\'id\' => \'10\',\r\n		\'category\' => \'contact\',\r\n		\'title\' => \'Yahoo\',\r\n		\'maxlen\' => \'35\',\r\n		\'vieworder\' => \'1\',\r\n		\'type\' => \'1\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'0\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'yahoo\',\r\n	),\r\n	\'3\' => array(\r\n		\'id\' => \'11\',\r\n		\'category\' => \'contact\',\r\n		\'title\' => \'Msn\',\r\n		\'maxlen\' => \'35\',\r\n		\'vieworder\' => \'1\',\r\n		\'type\' => \'1\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'0\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'msn\',\r\n	),\r\n	\'4\' => array(\r\n		\'id\' => \'1\',\r\n		\'category\' => \'basic\',\r\n		\'title\' => \'性别\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'2\',\r\n		\'type\' => \'3\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'0=保密\r\n1=男\r\n2=女\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'gender\',\r\n	),\r\n	\'5\' => array(\r\n		\'id\' => \'2\',\r\n		\'category\' => \'basic\',\r\n		\'title\' => \'生日\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'3\',\r\n		\'type\' => \'6\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'a:2:{s:9:"startdate";s:4:"1912";s:7:"enddate";s:4:"2011";}\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'bday\',\r\n	),\r\n	\'6\' => array(\r\n		\'id\' => \'3\',\r\n		\'category\' => \'basic\',\r\n		\'title\' => \'现居住地\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'4\',\r\n		\'type\' => \'7\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'1\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'1\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'apartment\',\r\n	),\r\n	\'7\' => array(\r\n		\'id\' => \'4\',\r\n		\'category\' => \'basic\',\r\n		\'title\' => \'家乡\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'4\',\r\n		\'type\' => \'7\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'home\',\r\n	),\r\n	\'8\' => array(\r\n		\'id\' => \'7\',\r\n		\'category\' => \'education\',\r\n		\'title\' => \'工作经历\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'5\',\r\n		\'type\' => \'9\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'career\',\r\n	),\r\n	\'9\' => array(\r\n		\'id\' => \'5\',\r\n		\'category\' => \'basic\',\r\n		\'title\' => \'支付宝账号\',\r\n		\'maxlen\' => \'60\',\r\n		\'vieworder\' => \'6\',\r\n		\'type\' => \'1\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'0\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'alipay\',\r\n	),\r\n	\'10\' => array(\r\n		\'id\' => \'6\',\r\n		\'category\' => \'education\',\r\n		\'title\' => \'教育经历\',\r\n		\'maxlen\' => \'0\',\r\n		\'vieworder\' => \'6\',\r\n		\'type\' => \'8\',\r\n		\'state\' => \'1\',\r\n		\'required\' => \'0\',\r\n		\'viewinread\' => \'0\',\r\n		\'editable\' => \'1\',\r\n		\'descrip\' => \'\',\r\n		\'viewright\' => \'\',\r\n		\'options\' => \'\',\r\n		\'complement\' => \'2\',\r\n		\'ifsys\' => \'1\',\r\n		\'fieldname\' => \'education\',\r\n	),\r\n);', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_cachedata`
--

CREATE TABLE `pw_cachedata` (
  `id` int(10) UNSIGNED NOT NULL,
  `invokepieceid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `loopid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `cachetime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cachedata`
--

INSERT INTO `pw_cachedata` (`id`, `invokepieceid`, `fid`, `loopid`, `data`, `cachetime`) VALUES
(689, 1, 0, 0, 'a:0:{}', 1471075065),
(690, 2, 0, 0, 'a:0:{}', 1471075065),
(691, 3, 0, 0, 'a:0:{}', 1471075065),
(692, 4, 0, 0, 'a:0:{}', 1471075065),
(693, 5, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(694, 6, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(695, 7, 0, 0, 'a:0:{}', 1471075065),
(696, 8, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(697, 9, 0, 0, 'a:0:{}', 1471075065),
(698, 10, 0, 0, 'a:0:{}', 1471075065),
(699, 11, 0, 0, 'a:0:{}', 1471075065),
(700, 12, 0, 0, 'a:0:{}', 1471075065),
(701, 13, 0, 0, 'a:0:{}', 1471075065),
(702, 14, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(703, 15, 0, 0, 'a:0:{}', 1471075065),
(704, 16, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(705, 17, 0, 0, 'a:0:{}', 1471075065),
(706, 18, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(707, 19, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(708, 20, 0, 0, 'a:0:{}', 1471075065),
(709, 21, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(710, 22, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(711, 23, 0, 0, 'a:0:{}', 1471075065),
(712, 24, 0, 0, 'a:0:{}', 1471075065),
(713, 25, 0, 0, 'a:0:{}', 1471075065),
(714, 26, 0, 0, 'a:0:{}', 1471075065),
(715, 27, 0, 0, 'a:0:{}', 1471075065),
(716, 28, 0, 0, 'a:0:{}', 1471075065),
(717, 29, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(718, 30, 0, 0, 'a:0:{}', 1471075065),
(719, 31, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(720, 32, 0, 0, 'a:0:{}', 1471075065),
(721, 33, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(722, 34, 0, 0, 'a:0:{}', 1471075065),
(723, 35, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471074965),
(724, 36, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(725, 37, 0, 0, 'a:0:{}', 1471075065),
(726, 38, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(727, 39, 0, 0, 'a:0:{}', 1471075065),
(728, 40, 0, 0, 'a:0:{}', 1471075065),
(729, 41, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(730, 42, 0, 0, 'a:0:{}', 1471075065),
(731, 43, 0, 0, 'a:0:{}', 1471075065),
(732, 44, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(733, 45, 0, 0, 'a:0:{}', 1471075065),
(734, 46, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(735, 47, 0, 0, 'a:0:{}', 1471075065),
(736, 48, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(737, 49, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(738, 50, 0, 0, 'a:0:{}', 1471075065),
(739, 51, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(740, 52, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(741, 53, 0, 0, 'a:0:{}', 1471075065),
(742, 54, 0, 0, 'a:0:{}', 1471075065),
(743, 55, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(744, 56, 0, 0, 'a:0:{}', 1471075065),
(745, 57, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(746, 58, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(747, 59, 0, 0, 'a:0:{}', 1471075065),
(748, 60, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(749, 61, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(750, 62, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(751, 63, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(752, 64, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(753, 65, 0, 0, 'a:0:{}', 1471075065),
(754, 66, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(755, 67, 0, 0, 'a:0:{}', 1471075065),
(756, 68, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(757, 69, 0, 0, 'a:0:{}', 1471075065),
(758, 70, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(759, 71, 0, 0, 'a:0:{}', 1471075065),
(760, 72, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(761, 73, 0, 0, 'a:0:{}', 1471075065),
(762, 74, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(763, 75, 0, 0, 'a:0:{}', 1471075065),
(764, 76, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(765, 77, 0, 0, 'a:0:{}', 1471075065),
(766, 78, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(767, 79, 0, 0, 'a:0:{}', 1471075065),
(768, 80, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(769, 81, 0, 0, 'a:0:{}', 1471075065),
(770, 82, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(771, 83, 0, 0, 'a:0:{}', 1471075065),
(772, 84, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(773, 85, 0, 0, 'a:0:{}', 1471075065),
(774, 86, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(775, 87, 0, 0, 'a:0:{}', 1471075065),
(776, 88, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(777, 89, 0, 0, 'a:0:{}', 1471075065),
(778, 90, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(779, 91, 0, 0, 'a:0:{}', 1471075065),
(780, 92, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(781, 93, 0, 0, 'a:0:{}', 1471075065),
(782, 94, 0, 0, 'a:0:{}', 1471075065),
(783, 95, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(784, 96, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(785, 97, 0, 0, 'a:0:{}', 1471075065),
(786, 98, 0, 0, 'a:0:{}', 1471075065),
(787, 99, 0, 0, 'a:0:{}', 1471075065),
(788, 100, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(789, 101, 0, 0, 'a:0:{}', 1471075065),
(790, 102, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(791, 103, 0, 0, 'a:0:{}', 1471075065),
(792, 104, 0, 0, 'a:0:{}', 1471075065),
(793, 105, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(794, 106, 0, 0, 'a:0:{}', 1471075065),
(795, 107, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(796, 108, 0, 0, 'a:0:{}', 1471075065),
(797, 109, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(798, 110, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(799, 111, 0, 0, 'a:0:{}', 1471075065),
(800, 112, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(801, 113, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(802, 114, 0, 0, 'a:0:{}', 1471075065),
(803, 115, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(804, 116, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(805, 117, 0, 0, 'a:0:{}', 1471075065),
(806, 118, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(807, 119, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(808, 120, 0, 0, 'a:0:{}', 1471075065),
(809, 121, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(810, 122, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(811, 123, 0, 0, 'a:0:{}', 1471075065),
(812, 124, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(813, 125, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(814, 126, 0, 0, 'a:0:{}', 1471075065),
(815, 127, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(816, 128, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(817, 129, 0, 0, 'a:0:{}', 1471075065),
(818, 130, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(819, 131, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(820, 132, 0, 0, 'a:0:{}', 1471075065),
(821, 133, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(822, 134, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(823, 135, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(824, 136, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(825, 137, 0, 0, 'a:0:{}', 1471075065),
(826, 138, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(827, 139, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(828, 140, 0, 0, 'a:0:{}', 1471075065),
(829, 141, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(830, 142, 0, 0, 'a:0:{}', 1471075065),
(831, 143, 0, 0, 'a:0:{}', 1471075065),
(832, 144, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(833, 145, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(834, 146, 0, 0, 'a:0:{}', 1471075065),
(835, 147, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(836, 148, 0, 0, 'a:0:{}', 1471075065),
(837, 149, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(838, 150, 0, 0, 'a:0:{}', 1471075065),
(839, 151, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(840, 152, 0, 0, 'a:0:{}', 1471075065),
(841, 153, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(842, 154, 0, 0, 'a:0:{}', 1471075065),
(843, 155, 0, 0, 'a:0:{}', 1471075065),
(844, 156, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(845, 157, 0, 0, 'a:0:{}', 1471075065),
(846, 158, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(847, 159, 0, 0, 'a:0:{}', 1471075065),
(848, 160, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(849, 161, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(850, 162, 0, 0, 'a:0:{}', 1471075065),
(851, 163, 0, 0, 'a:0:{}', 1471075065),
(852, 164, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(853, 165, 0, 0, 'a:0:{}', 1471075065),
(854, 166, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(855, 167, 0, 0, 'a:0:{}', 1471075065),
(856, 168, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(857, 169, 0, 0, 'a:0:{}', 1471075065),
(858, 170, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(859, 171, 0, 0, 'a:0:{}', 1471075065),
(860, 172, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(861, 173, 0, 0, 'a:0:{}', 1471075065),
(862, 174, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(863, 175, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(864, 176, 0, 0, 'a:0:{}', 1471075065),
(865, 177, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(866, 178, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(867, 179, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(868, 180, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(869, 181, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(870, 182, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(871, 183, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(872, 184, 0, 0, 'a:0:{}', 1471075065),
(873, 185, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(874, 186, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(875, 187, 0, 0, 'a:0:{}', 1471075065),
(876, 188, 0, 0, 'a:0:{}', 1471073275),
(877, 189, 0, 0, 'a:0:{}', 1471075065),
(878, 190, 0, 0, 'a:0:{}', 1471075065),
(879, 191, 0, 0, 'a:0:{}', 1471073275),
(880, 192, 0, 0, 'a:0:{}', 1471075065),
(881, 193, 0, 0, 'a:0:{}', 1471075065),
(882, 194, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(883, 195, 0, 0, 'a:0:{}', 1471075065),
(884, 196, 0, 0, 'a:0:{}', 1471075065),
(885, 197, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(886, 198, 0, 0, 'a:0:{}', 1471075065),
(887, 199, 0, 0, 'a:0:{}', 1471075065),
(888, 200, 0, 0, 'a:0:{}', 1471075065),
(889, 201, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(890, 202, 0, 0, 'a:0:{}', 1471075065),
(891, 203, 0, 0, 'a:0:{}', 1471075065),
(892, 204, 0, 0, 'a:0:{}', 1471075065),
(893, 205, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(894, 206, 0, 0, 'a:0:{}', 1471075065),
(895, 207, 0, 0, 'a:0:{}', 1471075065),
(896, 208, 0, 0, 'a:0:{}', 1471075065),
(897, 209, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(898, 210, 0, 0, 'a:0:{}', 1471075065),
(899, 211, 0, 0, 'a:0:{}', 1471075065),
(900, 212, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(901, 213, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(902, 214, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(903, 215, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(904, 216, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(905, 217, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(906, 218, 0, 0, 'a:1:{i:0;a:1:{s:5:"image";s:16:"images/nopic.gif";}}', 1471075065),
(907, 219, 0, 0, 'a:0:{}', 1471075065),
(908, 220, 0, 0, 'a:0:{}', 1471075065);

-- --------------------------------------------------------

--
-- 表的结构 `pw_cache_distribute`
--

CREATE TABLE `pw_cache_distribute` (
  `ckey` char(32) NOT NULL DEFAULT '',
  `cvalue` text NOT NULL,
  `typeid` tinyint(3) NOT NULL DEFAULT '0',
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cache_members`
--

CREATE TABLE `pw_cache_members` (
  `ckey` char(32) NOT NULL DEFAULT '',
  `cvalue` text NOT NULL,
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cache_members`
--

INSERT INTO `pw_cache_members` (`ckey`, `cvalue`, `expire`) VALUES
('u1', 'a:25:{s:3:"uid";s:1:"1";s:8:"username";s:5:"admin";s:6:"gender";s:1:"0";s:4:"oicq";s:0:"";s:5:"aliww";s:0:"";s:7:"groupid";s:1:"3";s:8:"memberid";s:1:"8";s:5:"micon";s:13:"none.gif|1|||";s:4:"hack";s:1:"0";s:5:"honor";s:0:"";s:9:"signature";s:0:"";s:7:"regdate";s:10:"1471073249";s:6:"medals";s:1:"1";s:10:"userstatus";s:3:"192";s:7:"postnum";s:1:"1";s:7:"digests";s:1:"0";s:4:"rvrc";s:2:"10";s:5:"money";s:1:"1";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";s:9:"thisvisit";s:10:"1471073374";s:9:"lastvisit";s:10:"1471073374";s:10:"onlinetime";s:1:"0";s:9:"starttime";s:1:"0";s:5:"punch";s:1:"0";}', 1471077117);

-- --------------------------------------------------------

--
-- 表的结构 `pw_channel`
--

CREATE TABLE `pw_channel` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `alias` varchar(20) NOT NULL DEFAULT '',
  `queue` smallint(6) NOT NULL DEFAULT '0',
  `relate_theme` varchar(20) NOT NULL DEFAULT 'default',
  `domain_band` varchar(50) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `metadescrip` varchar(255) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `statictime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_channel`
--

INSERT INTO `pw_channel` (`id`, `name`, `alias`, `queue`, `relate_theme`, `domain_band`, `metatitle`, `metadescrip`, `metakeywords`, `statictime`) VALUES
(1, '首页', 'home85', 0, 'home85', '', '', '', '', 0),
(2, '门户', 'home', 0, 'home', '', '', '', '', 0),
(3, '亲子', 'baby', 0, 'baby', '', '', '', '', 0),
(4, '汽车', 'auto', 0, 'auto', '', '', '', '', 0),
(5, '美食', 'delicious', 0, 'delicious', '', '', '', '', 0),
(6, '家装', 'decoration', 0, 'decoration', '', '', '', '', 0),
(7, '图酷', 'tucool', 0, 'tucool', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_clientorder`
--

CREATE TABLE `pw_clientorder` (
  `id` int(11) NOT NULL,
  `order_no` varchar(30) NOT NULL DEFAULT '',
  `type` tinyint(3) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paycredit` varchar(15) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payemail` varchar(60) NOT NULL DEFAULT '',
  `number` smallint(6) NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `extra_1` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cmembers`
--

CREATE TABLE `pw_cmembers` (
  `id` mediumint(9) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `ifadmin` tinyint(3) NOT NULL DEFAULT '0',
  `gender` tinyint(3) NOT NULL DEFAULT '0',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `colonyid` smallint(6) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_article`
--

CREATE TABLE `pw_cms_article` (
  `article_id` mediumint(8) NOT NULL,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(15) NOT NULL DEFAULT '',
  `username` varchar(15) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jumpurl` varchar(255) NOT NULL DEFAULT '',
  `frominfo` varchar(100) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `column_id` smallint(6) NOT NULL DEFAULT '0',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '1',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `modifydate` int(10) NOT NULL DEFAULT '0',
  `ifattach` tinyint(3) NOT NULL DEFAULT '0',
  `sourcetype` varchar(30) NOT NULL DEFAULT '',
  `sourceid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_articlecontent`
--

CREATE TABLE `pw_cms_articlecontent` (
  `article_id` mediumint(8) NOT NULL,
  `content` text NOT NULL,
  `relatearticle` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_articleextend`
--

CREATE TABLE `pw_cms_articleextend` (
  `article_id` mediumint(8) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_attach`
--

CREATE TABLE `pw_cms_attach` (
  `attach_id` mediumint(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `article_id` mediumint(8) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `uploadtime` int(10) NOT NULL DEFAULT '0',
  `attachurl` varchar(255) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_column`
--

CREATE TABLE `pw_cms_column` (
  `column_id` smallint(6) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `order` smallint(6) NOT NULL DEFAULT '0',
  `allowoffer` tinyint(1) NOT NULL DEFAULT '0',
  `seotitle` varchar(255) NOT NULL DEFAULT '',
  `seodesc` varchar(255) NOT NULL DEFAULT '',
  `seokeywords` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_comment`
--

CREATE TABLE `pw_cms_comment` (
  `commentid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `replynum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_commentreply`
--

CREATE TABLE `pw_cms_commentreply` (
  `replyid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cms_purview`
--

CREATE TABLE `pw_cms_purview` (
  `purview_id` smallint(6) NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `super` tinyint(3) NOT NULL DEFAULT '0',
  `columns` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnalbum`
--

CREATE TABLE `pw_cnalbum` (
  `aid` int(10) UNSIGNED NOT NULL,
  `aname` varchar(50) NOT NULL DEFAULT '',
  `aintro` varchar(200) NOT NULL DEFAULT '',
  `atype` smallint(6) NOT NULL DEFAULT '0',
  `private` tinyint(3) UNSIGNED NOT NULL,
  `albumpwd` varchar(40) NOT NULL DEFAULT '',
  `ownerid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `owner` varchar(15) NOT NULL DEFAULT '',
  `photonum` smallint(6) NOT NULL DEFAULT '0',
  `lastphoto` varchar(100) NOT NULL DEFAULT '',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpid` varchar(100) NOT NULL DEFAULT '',
  `crtime` int(10) NOT NULL DEFAULT '0',
  `memopen` tinyint(3) NOT NULL DEFAULT '1',
  `isdefault` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnclass`
--

CREATE TABLE `pw_cnclass` (
  `fid` smallint(6) UNSIGNED NOT NULL,
  `cname` varchar(20) NOT NULL DEFAULT '',
  `ifopen` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cnsum` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnlevel`
--

CREATE TABLE `pw_cnlevel` (
  `id` mediumint(8) NOT NULL,
  `ltype` enum('common','special') NOT NULL DEFAULT 'common',
  `ltitle` varchar(60) NOT NULL DEFAULT '',
  `lpoint` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `albumnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `maxphotonum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `maxmember` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bbsmode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `allowmerge` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `allowattorn` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `allowdisband` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pictopic` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `allowstyle` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `topicadmin` text NOT NULL,
  `modeset` text NOT NULL,
  `layout` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cnlevel`
--

INSERT INTO `pw_cnlevel` (`id`, `ltype`, `ltitle`, `lpoint`, `albumnum`, `maxphotonum`, `maxmember`, `bbsmode`, `allowmerge`, `allowattorn`, `allowdisband`, `pictopic`, `allowstyle`, `topicadmin`, `modeset`, `layout`) VALUES
(1, 'common', '初级群组', 0, 10, 60, 100, 0, 1, 1, 0, 0, 1, 'a:7:{s:3:"del";s:1:"1";s:9:"highlight";s:1:"0";s:4:"lock";s:1:"0";s:9:"pushtopic";s:1:"0";s:9:"downtopic";s:1:"0";s:8:"toptopic";s:1:"1";s:6:"digest";s:1:"1";}', 'a:5:{s:6:"thread";a:2:{s:9:"vieworder";s:1:"0";s:5:"title";s:6:"话题";}s:6:"active";a:2:{s:9:"vieworder";s:1:"0";s:5:"title";s:6:"活动";}s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:5:"title";s:9:"讨论区";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:5:"title";s:6:"相册";}s:6:"member";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:5:"title";s:6:"成员";}}', 'a:4:{s:6:"thread";a:2:{s:9:"vieworder";s:1:"0";s:3:"num";s:1:"5";}s:6:"active";a:2:{s:9:"vieworder";s:1:"0";s:3:"num";s:1:"4";}s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:3:"num";s:1:"5";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:3:"num";s:2:"10";}}'),
(2, 'common', '中级群组', 500, 20, 60, 200, 0, 1, 1, 0, 0, 1, 'a:7:{s:3:"del";s:1:"1";s:9:"highlight";s:1:"0";s:4:"lock";s:1:"0";s:9:"pushtopic";s:1:"0";s:9:"downtopic";s:1:"0";s:8:"toptopic";s:1:"1";s:6:"digest";s:1:"1";}', 'a:5:{s:6:"active";a:2:{s:9:"vieworder";s:1:"0";s:5:"title";s:6:"活动";}s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:5:"title";s:9:"讨论区";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:5:"title";s:6:"话题";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:5:"title";s:6:"相册";}s:6:"member";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:5:"title";s:6:"成员";}}', 'a:4:{s:6:"active";a:2:{s:9:"vieworder";s:1:"0";s:3:"num";s:1:"4";}s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:3:"num";s:1:"5";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:3:"num";s:1:"5";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:3:"num";s:2:"10";}}'),
(3, 'common', '高级群组', 1000, 50, 100, 500, 0, 0, 0, 0, 0, 1, 'a:7:{s:3:"del";s:1:"1";s:9:"highlight";s:1:"1";s:4:"lock";s:1:"0";s:9:"pushtopic";s:1:"0";s:9:"downtopic";s:1:"0";s:8:"toptopic";s:1:"1";s:6:"digest";s:1:"1";}', 'a:5:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:5:"title";s:9:"讨论区";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:5:"title";s:6:"话题";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:5:"title";s:6:"活动";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:5:"title";s:6:"相册";}s:6:"member";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"5";s:5:"title";s:6:"成员";}}', 'a:4:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:3:"num";s:1:"5";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:3:"num";s:1:"5";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:3:"num";s:1:"4";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:3:"num";s:2:"10";}}'),
(4, 'special', '官方群组', 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 'a:7:{s:3:"del";s:1:"1";s:9:"highlight";s:1:"1";s:4:"lock";s:1:"1";s:9:"pushtopic";s:1:"1";s:9:"downtopic";s:1:"1";s:8:"toptopic";s:1:"1";s:6:"digest";s:1:"1";}', 'a:5:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:5:"title";s:9:"讨论区";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:5:"title";s:6:"话题";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:5:"title";s:6:"活动";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:5:"title";s:6:"相册";}s:6:"member";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"5";s:5:"title";s:6:"成员";}}', 'a:4:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:3:"num";s:1:"5";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:3:"num";s:1:"5";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:3:"num";s:1:"4";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:3:"num";s:2:"10";}}'),
(5, 'special', '商业群组', 0, 100, 100, 500, 0, 0, 0, 0, 0, 1, 'a:7:{s:3:"del";s:1:"1";s:9:"highlight";s:1:"1";s:4:"lock";s:1:"1";s:9:"pushtopic";s:1:"1";s:9:"downtopic";s:1:"1";s:8:"toptopic";s:1:"1";s:6:"digest";s:1:"1";}', 'a:5:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:5:"title";s:9:"讨论区";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:5:"title";s:6:"话题";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:5:"title";s:6:"活动";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:5:"title";s:6:"相册";}s:6:"member";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"5";s:5:"title";s:9:"VIP会员";}}', 'a:4:{s:5:"write";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"1";s:3:"num";s:1:"5";}s:6:"thread";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"2";s:3:"num";s:1:"5";}s:6:"active";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"3";s:3:"num";s:1:"4";}s:6:"galbum";a:3:{s:6:"ifopen";s:1:"1";s:9:"vieworder";s:1:"4";s:3:"num";s:2:"10";}}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnphoto`
--

CREATE TABLE `pw_cnphoto` (
  `pid` int(10) NOT NULL,
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintro` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(200) NOT NULL DEFAULT '',
  `uploader` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) NOT NULL DEFAULT '0',
  `hits` smallint(6) NOT NULL DEFAULT '0',
  `ifthumb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `c_num` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnskin`
--

CREATE TABLE `pw_cnskin` (
  `dir` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cnskin`
--

INSERT INTO `pw_cnskin` (`dir`, `name`) VALUES
('skin_sun', '阳光'),
('skin_purple', '紫色'),
('skin_pink', '粉色'),
('skin_night', '星空'),
('skin_green', '绿野'),
('skin_default', '默认'),
('skin_city', '城市'),
('skin_sport', '运动'),
('skin_leisure', '休闲'),
('skin_car', '汽车'),
('skin_area', '地区');

-- --------------------------------------------------------

--
-- 表的结构 `pw_cnstyles`
--

CREATE TABLE `pw_cnstyles` (
  `id` smallint(6) NOT NULL,
  `cname` varchar(20) NOT NULL DEFAULT '',
  `ifopen` tinyint(3) NOT NULL DEFAULT '1',
  `csum` int(10) NOT NULL DEFAULT '0',
  `upid` smallint(10) NOT NULL DEFAULT '0',
  `vieworder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_cnstyles`
--

INSERT INTO `pw_cnstyles` (`id`, `cname`, `ifopen`, `csum`, `upid`, `vieworder`) VALUES
(1, '默认分类', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_collection`
--

CREATE TABLE `pw_collection` (
  `id` mediumint(8) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ifhidden` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `c_num` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ctid` int(10) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_collectiontype`
--

CREATE TABLE `pw_collectiontype` (
  `ctid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_colonys`
--

CREATE TABLE `pw_colonys` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `admin` varchar(20) NOT NULL DEFAULT '',
  `members` int(10) NOT NULL DEFAULT '0',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '0',
  `ifopen` tinyint(3) NOT NULL DEFAULT '1',
  `cnimg` varchar(100) NOT NULL DEFAULT '',
  `banner` varchar(100) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `annouce` text NOT NULL,
  `albumnum` smallint(6) NOT NULL DEFAULT '0',
  `photonum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `writenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `activitynum` int(10) NOT NULL DEFAULT '0',
  `iftopicshowinforum` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `annoucesee` smallint(6) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `commonlevel` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `speciallevel` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tnum` int(10) NOT NULL DEFAULT '0',
  `pnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `todaypost` int(10) NOT NULL DEFAULT '0',
  `styleid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `visit` int(10) NOT NULL DEFAULT '0',
  `ifshow` tinyint(3) NOT NULL DEFAULT '0',
  `ifshowpic` tinyint(3) NOT NULL DEFAULT '0',
  `colonystyle` varchar(40) NOT NULL DEFAULT '',
  `ifwriteopen` tinyint(3) NOT NULL DEFAULT '1',
  `ifmemberopen` tinyint(3) NOT NULL DEFAULT '1',
  `ifannouceopen` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `titlefont` varchar(255) NOT NULL DEFAULT '',
  `viewtype` tinyint(3) NOT NULL DEFAULT '0',
  `visitor` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_comment`
--

CREATE TABLE `pw_comment` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `typeid` mediumint(8) NOT NULL DEFAULT '0',
  `upid` mediumint(8) NOT NULL DEFAULT '0',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `ifwordsfb` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_company`
--

CREATE TABLE `pw_company` (
  `companyid` int(11) UNSIGNED NOT NULL,
  `companyname` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_config`
--

CREATE TABLE `pw_config` (
  `db_name` varchar(30) NOT NULL DEFAULT '',
  `vtype` enum('string','array') NOT NULL DEFAULT 'string',
  `db_value` text NOT NULL,
  `decrip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_config`
--

INSERT INTO `pw_config` (`db_name`, `vtype`, `db_value`, `decrip`) VALUES
('db_hackdb', 'array', 'a:6:{s:4:"blog";a:3:{i:0;s:12:"博客接口";i:1;s:4:"blog";i:2;i:0;}s:8:"passport";a:3:{i:0;s:9:"通行证";i:1;s:8:"passport";i:2;i:0;}s:10:"toolcenter";a:3:{i:0;s:12:"道具中心";i:1;s:10:"toolcenter";i:2;i:1;}s:4:"rate";a:3:{i:0;s:12:"评价管理";i:1;s:4:"rate";i:2;i:0;}s:4:"bank";a:3:{i:0;s:6:"银行";i:1;s:4:"bank";i:2;i:2;}s:3:"new";a:3:{i:0;s:18:"首页调用管理";i:1;s:3:"new";i:2;i:0;}}', ''),
('rg_regdetail', 'string', '1', ''),
('rg_emailcheck', 'string', '0', ''),
('rg_allowsameip', 'string', '0', ''),
('rg_regsendemail', 'string', '0', ''),
('rg_whyregclose', 'string', '管理员关闭了注册!', ''),
('rg_welcomemsg', 'string', '感谢您的注册，欢迎您的到来，希望这里能给您带来快乐！多多发言吧！本站全体管理人员向您问好<br />您的注册名为:$rg_name', ''),
('rg_rgpermit', 'string', '当您申请用户时，表示您已经同意遵守本规章。 <br /><br />欢迎您加入本站点参加交流和讨论，本站点为公共论坛，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款： <br /><br />一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />　 （一）煽动抗拒、破坏宪法和法律、行政法规实施的；<br />　（二）煽动颠覆国家政权，推翻社会主义制度的；<br />　（三）煽动分裂国家、破坏国家统一的；<br />　（四）煽动民族仇恨、民族歧视，破坏民族团结的；<br />　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />　（八）损害国家机关信誉的；<br />　（九）其他违反宪法和法律行政法规的；<br />　（十）进行商业广告行为的。<br /><br />二、互相尊重，对自己的言论和行为负责。<br />三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。<br />四、禁止以任何方式对本站进行各种破坏行为。<br />五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录论坛信息均被记录无疑，必要时，我们会向相关的国家管理部门提供此类信息。 ', ''),
('rg_registertype', 'string', '0', ''),
('rg_regweek', 'string', '0', ''),
('rg_banname', 'string', '版主,管理员,admin,斑竹', ''),
('ml_mailifopen', 'string', '1', ''),
('db_bbsifopen', 'string', '1', ''),
('db_whybbsclose', 'string', '网站升级中，请稍后访问', ''),
('db_visitmsg', 'string', '本站仅限内部开放', ''),
('db_openpost', 'string', '0	0	0', ''),
('db_onlinelmt', 'string', '0', ''),
('db_regpopup', 'string', '0', ''),
('db_debug', 'string', '0', ''),
('db_forumdir', 'string', '0', ''),
('db_bbstitle', 'array', 'a:2:{s:5:"index";s:0:"";s:5:"other";s:0:"";}', ''),
('db_metakeyword', 'string', '', ''),
('db_metadescrip', 'string', '', ''),
('db_bbsname', 'string', 'phpwind', ''),
('db_bfn', 'string', 'index.php', ''),
('db_bbsurl', 'string', 'http://lovevenus.com', ''),
('db_ceoemail', 'string', 'webmaster@phpwind.com', ''),
('db_recycle', 'string', '1', ''),
('db_icp', 'string', '', ''),
('db_autochange', 'string', '0', ''),
('db_hour', 'string', '20', ''),
('db_http', 'string', 'N', ''),
('db_attachurl', 'string', 'N', ''),
('db_lp', 'string', '0', ''),
('db_obstart', 'string', '9', ''),
('db_charset', 'string', 'utf-8', ''),
('db_forcecharset', 'string', '0', ''),
('db_defaultstyle', 'string', 'wind85', ''),
('db_cvtime', 'string', '0', ''),
('db_timedf', 'string', '8', ''),
('db_datefm', 'string', 'Y-m-d H:i', ''),
('db_pingtime', 'string', '0', ''),
('db_columns', 'string', '0', ''),
('db_msgsound', 'string', '0', ''),
('db_shield', 'string', '1', ''),
('db_tcheck', 'string', '0', ''),
('db_adminset', 'string', '0', ''),
('db_ifonlinetime', 'string', '1', ''),
('db_threadrelated', 'string', '1', ''),
('db_ifjump', 'string', '1', ''),
('db_refreshtime', 'string', '0', ''),
('db_onlinetime', 'string', '3600', ''),
('db_maxresult', 'string', '500', ''),
('db_footertime', 'string', '1', ''),
('db_ckpath', 'string', '/', ''),
('db_ckdomain', 'string', '', ''),
('db_postallowtime', 'string', '0', ''),
('db_cvtimes', 'string', '30', ''),
('db_windpost', 'array', 'a:8:{s:3:"pic";s:1:"1";s:8:"picwidth";s:3:"700";s:9:"picheight";s:3:"700";s:4:"size";s:1:"6";s:5:"flash";s:1:"1";s:4:"mpeg";s:1:"1";s:6:"iframe";s:1:"0";s:8:"checkurl";s:1:"1";}', ''),
('db_signheight', 'string', '110', ''),
('db_signwindcode', 'string', '1', ''),
('db_windpic', 'array', 'a:5:{s:3:"pic";s:1:"1";s:8:"picwidth";s:3:"700";s:9:"picheight";s:3:"700";s:4:"size";s:1:"5";s:5:"flash";s:1:"0";}', ''),
('db_allowupload', 'string', '1', ''),
('db_attachdir', 'string', '3', ''),
('db_attachhide', 'string', '0', ''),
('db_attachnum', 'string', '10', ''),
('db_showreplynum', 'string', '5', ''),
('db_selcount', 'string', '1000', ''),
('db_replysendmail', 'string', '0', ''),
('db_replysitemail', 'string', '1', ''),
('db_pwcode', 'string', '0', ''),
('db_setform', 'string', '0', ''),
('db_titlemax', 'string', '100', ''),
('db_postmax', 'string', '50000', ''),
('db_postmin', 'string', '2', ''),
('db_autoimg', 'string', '1', ''),
('db_ntnum', 'string', '2', ''),
('db_ifselfshare', 'string', '1', ''),
('db_indexlink', 'string', '1', ''),
('db_indexmqshare', 'string', '0', ''),
('db_indexshowbirth', 'string', '1', ''),
('db_indexonline', 'string', '1', ''),
('db_adminshow', 'string', '0', ''),
('db_showguest', 'string', '0', ''),
('db_today', 'string', '0', ''),
('db_indexfmlogo', 'string', '2', ''),
('db_todaypost', 'string', '1', ''),
('db_newtime', 'string', '3600', ''),
('db_perpage', 'string', '20', ''),
('db_readperpage', 'string', '10', ''),
('db_maxpage', 'string', '1000', ''),
('db_maxmember', 'string', '1000', ''),
('db_anonymousname', 'string', '匿名', ''),
('db_hithour', 'string', '0', ''),
('db_topped', 'string', '1', ''),
('db_threadonline', 'string', '1', ''),
('db_showonline', 'string', '1', ''),
('db_threadshowpost', 'string', '0', ''),
('db_showcolony', 'string', '0', ''),
('db_threademotion', 'string', '0', ''),
('db_ipfrom', 'string', '1', ''),
('db_watermark', 'string', '1', ''),
('db_ifgif', 'string', '0', ''),
('db_waterwidth', 'string', '0', ''),
('db_waterheight', 'string', '0', ''),
('db_waterpos', 'string', '1', ''),
('db_waterimg', 'string', 'mark.gif', ''),
('db_watertext', 'string', 'http://www.phpwind.net', ''),
('db_waterfont', 'string', '5', ''),
('db_watercolor', 'string', '#0000FF', ''),
('db_waterpct', 'string', '85', ''),
('db_jpgquality', 'string', '75', ''),
('db_iffthumb', 'string', '1', ''),
('db_ifathumb', 'string', '1', ''),
('db_signmoney', 'string', '0', ''),
('db_wapifopen', 'string', '0', ''),
('db_wapcharset', 'string', '0', ''),
('db_waplimit', 'string', '2000', ''),
('db_jsifopen', 'string', '0', ''),
('db_jsper', 'string', '900', ''),
('db_bindurl', 'string', '', ''),
('db_loadavg', 'string', '3', ''),
('db_cc', 'string', '0', ''),
('db_ipcheck', 'string', '0', ''),
('db_ifsafecv', 'string', '0', ''),
('db_iplimit', 'string', '', ''),
('db_ifftp', 'string', '0', ''),
('db_ftpweb', 'string', '', ''),
('db_enterreason', 'string', '0', ''),
('db_adminreason', 'string', '广告帖\n恶意灌水\n非法内容\n与版规不符\n重复发帖\n\n优秀文章\n原创内容', ''),
('db_opensch', 'string', '0	0	0', ''),
('db_gdcheck', 'string', '0', ''),
('db_postgd', 'string', '0', ''),
('db_gdstyle', 'string', '0', ''),
('db_gdtype', 'string', '0', ''),
('db_gdsize', 'string', '90	30	4', ''),
('db_upload', 'string', '1	120	120	20480', ''),
('db_uploadfiletype', 'string', 'a:6:{s:3:"gif";s:4:"2000";s:3:"png";s:4:"2000";s:3:"zip";s:4:"2000";s:3:"rar";s:4:"2000";s:3:"jpg";s:4:"2000";s:3:"txt";s:4:"2000";}', ''),
('db_creditset', 'string', 'a:6:{s:6:"Digest";a:5:{s:5:"money";s:1:"0";s:4:"rvrc";s:2:"10";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}s:4:"Post";a:5:{s:5:"money";s:1:"1";s:4:"rvrc";s:1:"1";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}s:5:"Reply";a:5:{s:5:"money";s:1:"1";s:4:"rvrc";s:1:"0";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}s:8:"Undigest";a:5:{s:5:"money";s:1:"0";s:4:"rvrc";s:2:"10";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}s:6:"Delete";a:5:{s:5:"money";s:1:"1";s:4:"rvrc";s:1:"1";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}s:8:"Deleterp";a:5:{s:5:"money";s:1:"1";s:4:"rvrc";s:1:"0";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}}', ''),
('db_showgroup', 'string', ',3,4,5,16,', ''),
('db_showcustom', 'array', 'a:4:{i:0;s:5:"money";i:1;s:4:"rvrc";i:2;s:6:"credit";i:3;s:8:"currency";}', ''),
('db_menu', 'string', '3', ''),
('db_fthumbsize', 'string', '100	100', ''),
('db_athumbsize', 'string', '700	0', ''),
('db_signgroup', 'string', ',5,6,7,16,8,9,10,11,12,13,14,15,', ''),
('db_autoban', 'string', '0', ''),
('db_wapfids', 'string', '', ''),
('db_safegroup', 'string', '', ''),
('db_attfg', 'string', '1', ''),
('rg_allowregister', 'string', '1', ''),
('rg_reg', 'string', '1', ''),
('rg_regsendmsg', 'string', '1', ''),
('rg_ifcheck', 'string', '0', ''),
('rg_rglower', 'string', '0', ''),
('rg_namelen', 'string', '3	12', ''),
('rg_pwdlen', 'string', '6	16', ''),
('ml_smtpauth', 'string', '1', ''),
('db_banby', 'string', '0', ''),
('db_bantype', 'string', '0', ''),
('db_banlimit', 'string', '0', ''),
('db_banmax', 'string', '0', ''),
('db_rmbrate', 'string', '10', ''),
('db_rmblest', 'string', '5', ''),
('cy_virement', 'string', '0', ''),
('cy_virerate', 'string', '0', ''),
('cy_virelimit', 'string', '0', ''),
('db_diy', 'string', 'basic,setforum,tpccheck,topiccate,setuser,level,announcement,navmode,bakout,area_tplcontent', ''),
('db_ipban', 'string', '', ''),
('db_ipstates', 'string', '1', ''),
('db_union', 'string', '', ''),
('fc_shownum', 'string', '9', ''),
('db_tlist', 'string', '', ''),
('db_ptable', 'string', '', ''),
('db_plist', 'string', '', ''),
('db_ads', 'string', '1', ''),
('db_wordsfb', 'string', '1', ''),
('db_htmifopen', 'string', '0', ''),
('db_dir', 'string', '.php?', ''),
('db_ext', 'string', '.html', ''),
('db_upgrade', 'string', 'a:7:{s:7:"postnum";s:1:"1";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";s:10:"onlinetime";s:1:"0";i:1;s:1:"0";}', ''),
('ol_onlinepay', 'string', '0', ''),
('ol_whycolse', 'string', '系统没有开启网上支付功能!', ''),
('ol_payto', 'string', '', ''),
('ol_md5code', 'string', '', ''),
('ol_paypal', 'string', '', ''),
('ol_paypalcode', 'string', '', ''),
('ol_99bill', 'string', '', ''),
('ol_99billcode', 'string', '', ''),
('db_head', 'string', '', ''),
('db_foot', 'string', '', ''),
('db_pptifopen', 'string', '0', ''),
('db_pptkey', 'string', '', ''),
('db_ppttype', 'string', 'client', ''),
('db_ppturls', 'string', '', ''),
('db_pptserverurl', 'string', '', ''),
('db_pptloginurl', 'string', 'login.php', ''),
('db_pptloginouturl', 'string', 'login.php?action=quit', ''),
('db_pptregurl', 'string', 'register.php', ''),
('db_pptcredit', 'string', '', ''),
('db_toolifopen', 'string', '1', ''),
('db_allowtrade', 'string', '1', ''),
('db_attachname', 'string', 'attachment', ''),
('db_picpath', 'string', 'images', ''),
('db_htmdir', 'string', 'html', ''),
('db_readdir', 'string', 'html/read', ''),
('db_stopicdir', 'string', 'html/stopic', ''),
('db_guestdir', 'string', 'data/guestcache', ''),
('ml_mailmethod', 'string', '1', ''),
('ml_smtphost', 'string', '', ''),
('ml_smtpport', 'string', '25', ''),
('ml_smtpfrom', 'string', '', ''),
('ml_smtpuser', 'string', '', ''),
('ml_smtphelo', 'string', '', ''),
('ml_smtpmxmailname', 'string', '', ''),
('ml_mxdns', 'string', '', ''),
('ml_mxdnsbak', 'string', '', ''),
('ftp_pass', 'string', '', ''),
('ftp_server', 'string', '', ''),
('ftp_port', 'string', '21', ''),
('ftp_dir', 'string', '', ''),
('ftp_user', 'string', '', ''),
('db_schwait', 'string', '2', ''),
('db_registerfile', 'string', 'register.php', ''),
('db_adminfile', 'string', 'admin.php', ''),
('db_sortnum', 'string', '20', ''),
('db_styledb', 'array', 'a:1:{s:4:"wind";a:2:{i:0;s:12:"蓝色天空";i:1;i:1;}}', ''),
('db_moneyname', 'string', '铜币', ''),
('db_moneyunit', 'string', '枚', ''),
('db_rvrcname', 'string', '威望', ''),
('db_rvrcunit', 'string', '点', ''),
('db_creditname', 'string', '贡献值', ''),
('db_creditunit', 'string', '点', ''),
('db_currencyname', 'string', '银元', ''),
('db_currencyunit', 'string', '个', ''),
('db_maxtypenum', 'string', '5', ''),
('db_selectgroup', 'string', '1', ''),
('db_ifpwcache', 'string', '567', ''),
('db_urlcheck', 'string', 'phpwind.net,phpwind.com', ''),
('db_xforwardip', 'string', '1', ''),
('db_adminrecord', 'string', '1', ''),
('db_floorunit', 'string', '楼', ''),
('db_floorname', 'array', 'a:4:{i:0;s:6:"楼主";i:1;s:6:"沙发";i:2;s:6:"板凳";i:3;s:6:"地板";}', ''),
('db_toolbar', 'string', '0', ''),
('db_creditlog', 'array', 'a:6:{s:3:"reg";a:1:{s:5:"money";s:1:"1";}s:5:"topic";a:1:{s:5:"money";s:1:"1";}s:6:"credit";a:1:{s:5:"money";s:1:"1";}s:6:"reward";a:1:{s:5:"money";s:1:"1";}s:4:"hack";a:1:{s:5:"money";s:1:"1";}s:5:"other";a:1:{s:5:"money";s:1:"1";}}', ''),
('db_sitemsg', 'array', 'a:4:{s:3:"reg";a:2:{i:0;s:64:"带红色*的都是必填项目，若填写不全将无法注册";i:1;s:45:"请添加能正常收发邮件的电子邮箱";}s:5:"login";a:1:{i:0;s:103:"如果您在网吧或者非个人电脑，建议设置Cookie有效期为 即时，以保证账户安全";}s:4:"post";a:3:{i:0;s:66:"如果您在写长篇帖子又不马上发表，建议存为草稿";i:1;s:84:"如果您提交过一次失败了，可以用”恢复数据”来恢复帖子内容";i:2;s:51:"批量上传需要先选择文件，再选择上传";}s:5:"reply";a:3:{i:0;s:66:"如果您在写长篇帖子又不马上发表，建议存为草稿";i:1;s:84:"如果您提交过一次失败了，可以用”恢复数据”来恢复帖子内容";i:2;s:51:"批量上传需要先选择文件，再选择上传";}}', ''),
('rg_timeend', 'string', '2010', ''),
('rg_timestart', 'string', '1960', ''),
('db_dopen', 'string', '1', ''),
('db_phopen', 'string', '1', ''),
('db_groups_open', 'string', '1', ''),
('db_share_open', 'string', '1', ''),
('rg_regcredit', 'array', 'a:5:{s:5:"money";s:1:"0";s:4:"rvrc";s:1:"0";s:6:"credit";s:1:"0";s:8:"currency";s:1:"0";i:1;s:1:"0";}', ''),
('db_waterfonts', 'string', 'en/PilsenPlakat', ''),
('ftp_timeout', 'string', '10', ''),
('db_virerate', 'string', '1', ''),
('db_virelimit', 'string', '10', ''),
('db_signcurtype', 'string', 'money', ''),
('db_bdayautohide', 'string', '1', ''),
('db_creditpay', 'array', 'a:1:{s:5:"money";a:3:{s:7:"rmbrate";s:2:"10";s:7:"rmblest";s:2:"10";s:8:"virement";s:1:"1";}}', ''),
('db_sellset', 'array', 'a:3:{s:4:"type";a:1:{i:0;s:5:"money";}s:5:"price";s:0:"";s:6:"income";s:0:"";}', ''),
('db_logintype', 'string', '5', ''),
('db_func', 'string', '2', ''),
('jf_A', 'string', 'a:1:{s:7:"money_1";a:3:{i:0;s:1:"2";i:1;s:1:"1";i:2;s:1:"1";}}', ''),
('nf_config', 'string', 'a:3:{s:8:"position";s:1:"1";s:8:"titlelen";s:2:"50";s:7:"shownum";s:1:"9";}', ''),
('nf_order', 'string', 'a:0:{}', ''),
('db_iftag', 'string', '1', ''),
('db_readtag', 'string', '0', ''),
('db_tagindex', 'string', '20', ''),
('db_enhideset', 'string', 'a:1:{s:4:"type";a:1:{i:0;s:5:"money";}}', ''),
('db_rategroup', 'string', 'a:12:{i:8;s:1:"5";i:9;s:2:"10";i:10;s:2:"10";i:11;s:2:"10";i:12;s:2:"30";i:13;s:2:"30";i:14;s:2:"30";i:15;s:2:"50";i:4;s:4:"1000";i:5;s:3:"100";i:16;s:2:"50";i:2;s:1:"0";}', ''),
('db_ratepower', 'string', 'a:3:{i:1;s:1:"0";i:2;s:1:"0";i:3;s:1:"0";}', ''),
('db_job_isopen', 'string', '1', ''),
('db_job_ispop', 'string', '1', ''),
('db_newinfoifopen', 'string', '0', ''),
('db_bbsradioifopen', 'string', '0', ''),
('db_portalstatictime', 'string', '1', ''),
('db_classfile_compress', 'string', '1', ''),
('db_cachefile_compress', 'string', '1', ''),
('db_filecache_to_memcache', 'string', '0', ''),
('db_unique_strategy', 'string', 'db', ''),
('db_search_type_expand', 'array', 'a:0:{}', ''),
('db_search_type', 'array', 'a:3:{s:6:"thread";s:6:"帖子";s:4:"user";s:6:"用户";s:5:"forum";s:6:"版块";}', ''),
('rg_recommendcontent', 'string', '&lt;div class=&quot;p10&quot;&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td&gt;&lt;a href=&quot;html/channel/tucool/&quot;&gt;&lt;img src=&quot;images/register/thumb/tuku.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;&lt;td&gt;&lt;a href=&quot;apps.php?q=weibo&amp;do=topics&quot;&gt;&lt;img src=&quot;images/register/thumb/huati.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/div&gt;', ''),
('db_operate_log', 'array', 'a:0:{}', ''),
('db_shiftstyle', 'string', '1', ''),
('db_hotwordsconfig', 'string', 'a:3:{s:7:"shownum";s:1:"5";s:14:"openautoinvoke";s:1:"1";s:12:"invokeperiod";s:1:"7";}', ''),
('db_hotwords', 'string', '结婚,母婴,phpwind', ''),
('rg_regguide', 'string', '1', ''),
('db_openbuildattachs', 'string', '1', ''),
('db_sharesite', 'string', '1', ''),
('db_ifkmd', 'string', '1', ''),
('db_kmd_ifcheck', 'string', '1', ''),
('db_quality', 'string', '90', ''),
('db_md_ifopen', 'string', '1', ''),
('db_md_ifapply', 'string', '1', ''),
('db_hash', 'string', 'EzMqwNpEq', ''),
('db_windmagic', 'string', '0', ''),
('db_siteid', 'string', '8d0ec1b51255285edae719971f232694', ''),
('db_siteownerid', 'string', 'b8843d6bcdefb6992a1e3c40c8f9f0c8', ''),
('db_sitehash', 'string', '10AFUDUwADAVZaVlwFVQQADwMMUQELXAEHAQMIVFEGBFI', ''),
('db_modes', 'array', 'a:6:{s:3:"bbs";a:3:{s:6:"m_name";s:12:"论坛模式";s:6:"ifopen";i:1;s:5:"title";s:6:"论坛";}s:4:"area";a:3:{s:6:"m_name";s:12:"门户模式";s:6:"ifopen";i:1;s:5:"title";s:6:"门户";}s:1:"o";a:3:{s:6:"m_name";s:12:"个人中心";s:6:"ifopen";i:1;s:5:"title";s:12:"个人中心";}s:14:"cloudcomputing";N;s:3:"cms";a:3:{s:6:"m_name";s:12:"文章模式";s:6:"ifopen";i:1;s:5:"title";s:6:"文章";}s:3:"wap";N;}', ''),
('db_mode', 'string', 'bbs', ''),
('db_modepages', 'array', 'a:5:{s:4:"area";a:3:{s:5:"index";a:2:{s:4:"name";s:6:"首页";s:8:"template";s:5:"index";}s:4:"cate";a:2:{s:4:"name";s:9:"频道页";s:8:"template";s:4:"cate";}s:6:"thread";a:2:{s:4:"name";s:9:"列表页";s:8:"template";s:6:"thread";}}s:1:"o";a:2:{s:5:"index";a:2:{s:4:"name";s:6:"首页";s:8:"template";s:5:"index";}s:6:"m_home";a:2:{s:4:"name";s:6:"动态";s:8:"template";s:6:"m_home";}}s:14:"cloudcomputing";N;s:3:"cms";N;s:3:"wap";N;}', ''),
('db_modelids', 'string', '4,5,6,7,8,1,2,3', ''),
('db_pcids', 'string', '1', ''),
('db_actmids', 'string', '1,15,6,10,2,16,7,11,17,12,8,3,9,13,4,14,5', ''),
('db_server_url', 'string', 'http://apps.phpwind.net', ''),
('phpwind', 'string', 'a:3:{s:7:"history";a:1:{i:0;s:27:"Install	1471073266		8.7.1,	";}s:7:"version";s:5:"8.7.1";s:6:"repair";s:0:"";}', 'phpwind'),
('db_shortcutforum', 'array', 'a:2:{i:1;s:12:"默认分类";i:2;s:12:"默认版块";}', ''),
('db_hotwordlasttime', 'string', '1471073382', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_creditlog`
--

CREATE TABLE `pw_creditlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `ctype` varchar(8) NOT NULL DEFAULT '',
  `affect` int(10) NOT NULL DEFAULT '0',
  `adddate` int(10) NOT NULL DEFAULT '0',
  `logtype` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_creditlog`
--

INSERT INTO `pw_creditlog` (`id`, `uid`, `username`, `ctype`, `affect`, `adddate`, `logtype`, `ip`, `descrip`) VALUES
(1, 1, 'admin', 'money', 1, 1471073509, 'topic_Post', '127.0.0.1', '[b]admin[/b] 在版块 默认版块 发表主题。\n奖励积分：[b]铜币[/b]，影响：+1。');

-- --------------------------------------------------------

--
-- 表的结构 `pw_credits`
--

CREATE TABLE `pw_credits` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `unit` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` enum('main','group') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_credits`
--

INSERT INTO `pw_credits` (`cid`, `name`, `unit`, `description`, `type`) VALUES
(1, '好评度', '点', '自定义积分', 'main');

-- --------------------------------------------------------

--
-- 表的结构 `pw_customfield`
--

CREATE TABLE `pw_customfield` (
  `id` smallint(6) NOT NULL,
  `category` enum('basic','contact','education','other') NOT NULL DEFAULT 'basic',
  `title` varchar(50) NOT NULL DEFAULT '',
  `maxlen` smallint(6) NOT NULL DEFAULT '0',
  `vieworder` smallint(6) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `viewinread` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `viewright` varchar(255) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `complement` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ifsys` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fieldname` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_customfield`
--

INSERT INTO `pw_customfield` (`id`, `category`, `title`, `maxlen`, `vieworder`, `type`, `state`, `required`, `viewinread`, `editable`, `descrip`, `viewright`, `options`, `complement`, `ifsys`, `fieldname`) VALUES
(1, 'basic', '性别', 0, 2, 3, 1, 0, 0, 1, '', '', '0=保密\r\n1=男\r\n2=女', 2, 1, 'gender'),
(2, 'basic', '生日', 0, 3, 6, 1, 0, 0, 1, '', '', 'a:2:{s:9:"startdate";s:4:"1912";s:7:"enddate";s:4:"2011";}', 2, 1, 'bday'),
(3, 'basic', '现居住地', 0, 4, 7, 1, 1, 0, 1, '', '', '', 1, 1, 'apartment'),
(4, 'basic', '家乡', 0, 4, 7, 1, 0, 0, 1, '', '', '', 2, 1, 'home'),
(5, 'basic', '支付宝账号', 60, 6, 1, 1, 0, 0, 1, '', '', '', 0, 1, 'alipay'),
(6, 'education', '教育经历', 0, 6, 8, 1, 0, 0, 1, '', '', '', 2, 1, 'education'),
(7, 'education', '工作经历', 0, 5, 9, 1, 0, 0, 1, '', '', '', 2, 1, 'career'),
(8, 'contact', 'QQ', 12, 1, 1, 1, 0, 0, 1, '', '', '', 2, 1, 'oicq'),
(9, 'contact', '阿里旺旺', 30, 1, 1, 1, 0, 0, 1, '', '', '', 0, 1, 'aliww'),
(10, 'contact', 'Yahoo', 35, 1, 1, 1, 0, 0, 1, '', '', '', 0, 1, 'yahoo'),
(11, 'contact', 'Msn', 35, 1, 1, 1, 0, 0, 1, '', '', '', 0, 1, 'msn');

-- --------------------------------------------------------

--
-- 表的结构 `pw_cwritedata`
--

CREATE TABLE `pw_cwritedata` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cyid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replay_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isshare` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `c_num` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `moodfirst` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(10) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `mood` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_datanalyse`
--

CREATE TABLE `pw_datanalyse` (
  `tag` int(10) NOT NULL,
  `action` varchar(30) NOT NULL,
  `timeunit` int(10) NOT NULL,
  `num` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_datanalyse`
--

INSERT INTO `pw_datanalyse` (`tag`, `action`, `timeunit`, `num`) VALUES
(1, 'memberThread', 1471017600, 1),
(1, 'memberThread', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_datastate`
--

CREATE TABLE `pw_datastate` (
  `year` smallint(4) NOT NULL DEFAULT '0',
  `month` tinyint(2) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '0',
  `topic` mediumint(8) NOT NULL DEFAULT '0',
  `reply` mediumint(8) NOT NULL DEFAULT '0',
  `regmen` mediumint(8) NOT NULL DEFAULT '0',
  `postmen` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_datastore`
--

CREATE TABLE `pw_datastore` (
  `skey` varchar(32) NOT NULL,
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vhash` char(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_debatedata`
--

CREATE TABLE `pw_debatedata` (
  `pid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL,
  `authorid` int(10) UNSIGNED NOT NULL,
  `standpoint` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vote` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `voteids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_debates`
--

CREATE TABLE `pw_debates` (
  `tid` int(10) UNSIGNED NOT NULL,
  `authorid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `obtitle` varchar(255) NOT NULL DEFAULT '',
  `retitle` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `obvote` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `revote` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `obposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `umpire` varchar(16) NOT NULL DEFAULT '',
  `umpirepoint` varchar(255) NOT NULL DEFAULT '',
  `debater` varchar(16) NOT NULL DEFAULT '',
  `judge` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_delta_diarys`
--

CREATE TABLE `pw_delta_diarys` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_delta_members`
--

CREATE TABLE `pw_delta_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_delta_posts`
--

CREATE TABLE `pw_delta_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_delta_threads`
--

CREATE TABLE `pw_delta_threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_diary`
--

CREATE TABLE `pw_diary` (
  `did` int(10) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dtid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `aid` text NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ifcopy` tinyint(1) NOT NULL DEFAULT '0',
  `copyurl` varchar(100) NOT NULL DEFAULT '',
  `ifconvert` tinyint(1) NOT NULL DEFAULT '0',
  `ifwordsfb` tinyint(1) NOT NULL DEFAULT '0',
  `ifupload` tinyint(1) NOT NULL DEFAULT '0',
  `r_num` int(10) NOT NULL DEFAULT '0',
  `c_num` int(10) NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_diarytype`
--

CREATE TABLE `pw_diarytype` (
  `dtid` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_draft`
--

CREATE TABLE `pw_draft` (
  `did` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_elements`
--

CREATE TABLE `pw_elements` (
  `eid` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(10) NOT NULL DEFAULT '0',
  `addition` varchar(255) NOT NULL DEFAULT '',
  `special` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_elements`
--

INSERT INTO `pw_elements` (`eid`, `type`, `mark`, `id`, `value`, `addition`, `special`, `time`) VALUES
(1, 'usersort', 'money', 1, 0, 'admin', 0, 1471073374),
(2, 'usersort', 'rvrc', 1, 0, 'admin', 0, 1471073374),
(3, 'usersort', 'credit', 1, 0, 'admin', 0, 1471073374),
(4, 'usersort', 'currency', 1, 0, 'admin', 0, 1471073374),
(5, 'usersort', 'postnum', 1, 0, 'admin', 0, 1471073374),
(6, 'usersort', 'monoltime', 1, 0, 'admin', 0, 1471073374),
(7, 'usersort', 'onlinetime', 1, 0, 'admin', 0, 1471073374),
(8, 'usersort', 'digests', 1, 0, 'admin', 0, 1471073374),
(9, 'usersort', 'f_num', 1, 0, 'admin', 0, 1471073374);

-- --------------------------------------------------------

--
-- 表的结构 `pw_extragroups`
--

CREATE TABLE `pw_extragroups` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` smallint(6) NOT NULL DEFAULT '0',
  `togid` smallint(6) NOT NULL DEFAULT '0',
  `startdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `days` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_favors`
--

CREATE TABLE `pw_favors` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tids` text NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_feed`
--

CREATE TABLE `pw_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `descrip` text,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_filter`
--

CREATE TABLE `pw_filter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filter` mediumtext,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `assessor` varchar(15) NOT NULL DEFAULT '',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_filter_class`
--

CREATE TABLE `pw_filter_class` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(16) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_filter_dictionary`
--

CREATE TABLE `pw_filter_dictionary` (
  `id` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `bin` varchar(255) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_focus`
--

CREATE TABLE `pw_focus` (
  `id` int(10) UNSIGNED NOT NULL,
  `pushto` varchar(30) NOT NULL DEFAULT '',
  `pushtime` int(10) NOT NULL DEFAULT '0',
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(10) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `postdate` int(10) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `imgurl` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_forumdata`
--

CREATE TABLE `pw_forumdata` (
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tpost` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subtopic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `top1` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `top2` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `topthreads` text NOT NULL,
  `aid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `aidcache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `aids` varchar(135) NOT NULL DEFAULT '',
  `lastpost` varchar(135) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_forumdata`
--

INSERT INTO `pw_forumdata` (`fid`, `tpost`, `topic`, `article`, `subtopic`, `top1`, `top2`, `topthreads`, `aid`, `aidcache`, `aids`, `lastpost`) VALUES
(1, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', ''),
(2, 1, 1, 1, 0, 0, 0, '', 0, 0, '0', '嗷嗷嗷 嗷嗷嗷&nbsp; ..	admin	1471073509	read.php?tid=1&page=e#a');

-- --------------------------------------------------------

--
-- 表的结构 `pw_forumlog`
--

CREATE TABLE `pw_forumlog` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `username1` varchar(30) NOT NULL DEFAULT '',
  `username2` varchar(30) NOT NULL DEFAULT '',
  `field1` varchar(30) NOT NULL DEFAULT '',
  `field2` varchar(30) NOT NULL DEFAULT '',
  `field3` varchar(255) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_forummsg`
--

CREATE TABLE `pw_forummsg` (
  `id` smallint(6) NOT NULL,
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `toname` varchar(200) NOT NULL DEFAULT '',
  `msgtype` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `savetime` int(10) NOT NULL DEFAULT '0',
  `message` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_forums`
--

CREATE TABLE `pw_forums` (
  `fid` smallint(6) UNSIGNED NOT NULL,
  `fup` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifsub` tinyint(1) NOT NULL DEFAULT '0',
  `childid` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('category','forum','sub','sub2') NOT NULL DEFAULT 'forum',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `metadescrip` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `vieworder` smallint(6) NOT NULL DEFAULT '0',
  `forumadmin` varchar(255) NOT NULL DEFAULT '',
  `fupadmin` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(12) NOT NULL DEFAULT '',
  `across` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtm` tinyint(1) NOT NULL DEFAULT '0',
  `allowhide` tinyint(1) NOT NULL DEFAULT '1',
  `allowsell` tinyint(1) NOT NULL DEFAULT '1',
  `allowtype` tinyint(3) NOT NULL DEFAULT '1',
  `copyctrl` tinyint(1) NOT NULL DEFAULT '0',
  `allowencode` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(32) NOT NULL DEFAULT '',
  `viewsub` tinyint(1) NOT NULL DEFAULT '0',
  `allowvisit` varchar(255) NOT NULL DEFAULT '',
  `allowread` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `allowrp` varchar(255) NOT NULL DEFAULT '',
  `allowdownload` varchar(255) NOT NULL DEFAULT '',
  `allowupload` varchar(255) NOT NULL DEFAULT '',
  `modelid` varchar(255) NOT NULL DEFAULT '',
  `forumsell` varchar(15) NOT NULL DEFAULT '',
  `pcid` varchar(50) NOT NULL DEFAULT '',
  `actmids` varchar(255) NOT NULL DEFAULT '',
  `f_type` enum('forum','former','hidden','vote') NOT NULL DEFAULT 'forum',
  `f_check` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `t_type` tinyint(1) NOT NULL DEFAULT '0',
  `cms` tinyint(1) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '1',
  `showsub` tinyint(1) NOT NULL DEFAULT '0',
  `ifcms` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowrob` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_forums`
--

INSERT INTO `pw_forums` (`fid`, `fup`, `ifsub`, `childid`, `type`, `logo`, `name`, `descrip`, `title`, `dirname`, `metadescrip`, `keywords`, `vieworder`, `forumadmin`, `fupadmin`, `style`, `across`, `allowhtm`, `allowhide`, `allowsell`, `allowtype`, `copyctrl`, `allowencode`, `password`, `viewsub`, `allowvisit`, `allowread`, `allowpost`, `allowrp`, `allowdownload`, `allowupload`, `modelid`, `forumsell`, `pcid`, `actmids`, `f_type`, `f_check`, `t_type`, `cms`, `ifhide`, `showsub`, `ifcms`, `allowrob`) VALUES
(1, 0, 0, 1, 'category', '', '默认分类', '', '', '', '', '', 0, '', '', '0', 0, 0, 1, 1, 3, 0, 1, '', 0, '', '', '', '', '', '', '', '', '', '', 'forum', 0, 0, 0, 1, 0, 0, 0),
(2, 1, 0, 0, 'forum', '', '默认版块', '', '', '', '', '', 0, '', '', '0', 0, 0, 1, 1, 3, 0, 1, '', 0, '', '', '', '', '', '', '', '', '', '', 'forum', 0, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_forumsell`
--

CREATE TABLE `pw_forumsell` (
  `id` mediumint(8) NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `buydate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `overdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `credit` varchar(8) NOT NULL DEFAULT '',
  `cost` decimal(8,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_forumsextra`
--

CREATE TABLE `pw_forumsextra` (
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `creditset` text NOT NULL,
  `forumset` text NOT NULL,
  `commend` text NOT NULL,
  `appinfo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_forumsextra`
--

INSERT INTO `pw_forumsextra` (`fid`, `creditset`, `forumset`, `commend`, `appinfo`) VALUES
(2, '', 'a:55:{s:21:"auth_cellphone_credit";s:1:"0";s:14:"auth_cellphone";s:1:"0";s:18:"auth_alipay_credit";s:1:"0";s:11:"auth_alipay";s:1:"0";s:4:"link";s:0:"";s:4:"lock";s:1:"0";s:7:"cutnums";s:1:"0";s:9:"threadnum";s:1:"0";s:7:"readnum";s:1:"0";s:7:"newtime";s:1:"0";s:13:"contentminlen";s:1:"0";s:8:"orderway";s:8:"lastpost";s:3:"asc";s:4:"DESC";s:11:"replayorder";s:1:"1";s:9:"addnotice";s:1:"0";s:10:"viewcolony";s:1:"0";s:12:"ifcolonycate";s:1:"0";s:11:"allowencode";s:1:"0";s:9:"anonymous";s:1:"0";s:4:"rate";s:1:"0";s:3:"dig";s:1:"0";s:7:"inspect";s:1:"0";s:9:"watermark";s:1:"0";s:9:"overprint";s:1:"0";s:7:"viewpic";s:1:"0";s:7:"ifthumb";s:1:"0";s:12:"postedittime";s:1:"0";s:8:"iftucool";s:1:"1";s:15:"iftucooldefault";s:1:"0";s:14:"iftucoolbrowse";s:1:"0";s:9:"tucoolpic";s:1:"5";s:9:"ifrelated";s:1:"0";s:11:"relatednums";s:1:"0";s:10:"relatedcon";s:7:"ownpost";s:13:"relatedcustom";a:0:{}s:7:"commend";s:1:"0";s:11:"autocommend";s:1:"0";s:11:"commendlist";s:0:"";s:10:"commendnum";s:1:"0";s:13:"commendlength";s:1:"0";s:11:"commendtime";s:1:"0";s:10:"addtpctype";s:1:"0";s:12:"allowtpctype";s:1:"0";s:8:"rvrcneed";s:1:"0";s:9:"moneyneed";s:1:"0";s:10:"creditneed";s:1:"0";s:11:"postnumneed";s:1:"0";s:9:"sellprice";a:0:{}s:9:"uploadset";s:9:"money			0";s:8:"rewarddb";s:6:"0	0	0	";s:9:"allowtime";s:0:"";s:9:"thumbsize";s:5:"575	0";s:8:"allowrob";i:1;s:5:"ifkmd";i:1;s:9:"kmdnumber";i:3;}', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_friends`
--

CREATE TABLE `pw_friends` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `friendid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `attention` tinyint(3) NOT NULL DEFAULT '0',
  `joindate` int(10) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `ftid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `iffeed` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_friendtype`
--

CREATE TABLE `pw_friendtype` (
  `ftid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_group_replay`
--

CREATE TABLE `pw_group_replay` (
  `uid` int(10) NOT NULL DEFAULT '0',
  `tid` int(10) NOT NULL DEFAULT '0',
  `cyid` int(10) NOT NULL DEFAULT '0',
  `is_read` smallint(2) NOT NULL DEFAULT '0',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_hack`
--

CREATE TABLE `pw_hack` (
  `hk_name` varchar(30) NOT NULL DEFAULT '',
  `vtype` enum('string','array') NOT NULL,
  `hk_value` text NOT NULL,
  `decrip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_hack`
--

INSERT INTO `pw_hack` (`hk_name`, `vtype`, `hk_value`, `decrip`) VALUES
('bk_A', 'string', 'a:1:{s:10:"rvrc_money";a:6:{i:0;s:4:"威望";i:1;s:4:"铜币";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"1";i:5;i:1;}}', ''),
('bk_ddate', 'string', '10', ''),
('bk_drate', 'string', '10', ''),
('bk_num', 'string', '10', ''),
('bk_open', 'string', '1', ''),
('bk_per', 'string', '5', ''),
('bk_rate', 'string', '5', ''),
('bk_timelimit', 'string', '2', ''),
('bk_virelimit', 'string', '10', ''),
('bk_virement', 'string', '1', ''),
('bk_virerate', 'string', '10', ''),
('currrate1', 'string', 'a:4:{s:4:"rvrc";s:3:"100";s:5:"money";s:3:"100";s:6:"credit";s:1:"1";i:1;s:1:"5";}', ''),
('currrate2', 'string', '', ''),
('cn_open', 'string', '1', ''),
('cn_remove', 'string', '1', ''),
('cn_newcolony', 'string', '1', ''),
('cn_createmoney', 'string', '100', ''),
('cn_joinmoney', 'string', '10', ''),
('cn_allowcreate', 'string', '1', ''),
('cn_allowjoin', 'string', '1', ''),
('cn_memberfull', 'string', '50', ''),
('cn_imgsize', 'string', '1048576', ''),
('cn_name', 'string', '朋友圈', ''),
('cn_groups', 'string', ',3,4,5,8,9,10,11,12,13,14,15,16,', ''),
('cn_imgwidth', 'string', '200', ''),
('cn_imgheight', 'string', '100', ''),
('cn_visittime', 'string', '60', ''),
('cn_transfer', 'string', '10', ''),
('inv_open', 'string', '0', ''),
('inv_days', 'string', '1', ''),
('inv_limitdays', 'string', '0', ''),
('inv_costs', 'string', '50', ''),
('inv_credit', 'string', 'currency', ''),
('inv_groups', 'string', ',3,4,5,', ''),
('md_groups', 'string', ',3,', ''),
('md_ifmsg', 'string', '1', ''),
('md_ifopen', 'string', '1', ''),
('o_camoney', 'string', '0', ''),
('o_albumnum', 'string', '5', ''),
('o_albumnum2', 'string', '2', ''),
('o_maxphotonum', 'string', '20', ''),
('o_mkdir', 'string', '1', ''),
('o_maxfilesize', 'string', '2048', ''),
('o_shownum', 'string', '500', ''),
('o_attachdir', 'string', '2', ''),
('o_uploadsize', 'string', 'a:5:{s:3:"jpg";s:3:"300";s:4:"jpeg";s:3:"300";s:3:"png";s:3:"400";s:3:"gif";s:3:"400";s:3:"bmp";s:3:"400";}', ''),
('o_remove', 'string', '1', ''),
('o_newcolony', 'string', '1', ''),
('md_ifapply', 'string', '1', ''),
('md_appgroups', 'string', '', ''),
('o_diary_gdcheck', 'string', '0', ''),
('o_diary_qcheck', 'string', '0', ''),
('o_diary_groups', 'string', '', ''),
('o_diarylimit', 'string', '0', ''),
('o_diarypertime', 'string', '0', ''),
('o_groups_gdcheck', 'string', '0', ''),
('o_groups_p_gdcheck', 'string', '0', ''),
('o_groups_qcheck', 'string', '0', ''),
('o_groups_p_qcheck', 'string', '0', ''),
('o_share_groups', 'string', '', ''),
('o_share_gdcheck', 'string', '0', ''),
('o_share_qcheck', 'string', '0', ''),
('o_photos_gdcheck', 'string', '0', ''),
('o_photos_qcheck', 'string', '0', ''),
('o_photos_groups', 'string', '', ''),
('o_browseopen', 'string', '0', ''),
('o_browse', 'string', '511', ''),
('o_invite', 'string', '1', ''),
('o_indexset', 'string', '1023', ''),
('area_catetpl', 'string', 'default', ''),
('area_indextpl', 'string', 'default', ''),
('o_hot_open', 'string', '1', ''),
('o_hot_groups', 'string', ',3,4,5,16,', ''),
('ft_member', 'string', '', ''),
('ft_update_num', 'string', '0', ''),
('ft_msg', 'string', '0', ''),
('o_uskin', 'array', 'a:8:{s:5:"black";s:6:"黑色";s:7:"default";s:6:"翱翔";s:9:"default85";s:9:"蒲公英";s:3:"ink";s:6:"山水";s:4:"love";s:6:"友情";s:8:"navgreen";s:6:"礼物";s:8:"navyblue";s:6:"深蓝";s:6:"prayer";s:6:"祈祷";}', ''),
('o_weibophoto', 'string', '1', ''),
('o_weibourl', 'string', '1', ''),
('o_groups_upgrade', 'array', 'a:7:{s:4:"tnum";s:1:"1";s:4:"pnum";s:3:"0.2";s:7:"members";s:1:"1";s:8:"albumnum";s:3:"0.5";s:8:"photonum";s:1:"1";s:8:"writenum";s:1:"1";s:11:"activitynum";s:1:"2";}', ''),
('o_groups_level', 'array', 'a:5:{i:1;s:12:"初级群组";i:2;s:12:"中级群组";i:3;s:12:"高级群组";i:4;s:12:"官方群组";i:5;s:12:"商业群组";}', ''),
('o_groups_levelneed', 'array', 'a:3:{i:1;s:1:"0";i:2;s:3:"500";i:3;s:4:"1000";}', ''),
('area_statictime', 'string', '15', ''),
('o_weibo_hottopicdays', 'string', '1', ''),
('o_weibo_hotcommentdays', 'string', '1', ''),
('o_weibo_hottransmitdays', 'string', '1', ''),
('o_weibo_hotfansdays', 'string', '1', ''),
('o_weibopost', 'string', '1', ''),
('o_punchopen', 'string', '1', ''),
('o_punch_reward', 'string', 'a:6:{s:4:"type";s:5:"money";s:3:"min";s:1:"6";s:3:"max";s:2:"30";s:4:"step";s:1:"3";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', ''),
('o_classdb', 'array', 'a:1:{i:1;s:12:"默认分类";}', ''),
('area_default_alias', 'string', 'home85', ''),
('area_channels', 'array', 'a:7:{s:6:"home85";a:10:{s:2:"id";s:1:"1";s:4:"name";s:6:"首页";s:5:"alias";s:6:"home85";s:5:"queue";s:1:"0";s:12:"relate_theme";s:6:"home85";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:4:"home";a:10:{s:2:"id";s:1:"2";s:4:"name";s:6:"门户";s:5:"alias";s:4:"home";s:5:"queue";s:1:"0";s:12:"relate_theme";s:4:"home";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:4:"baby";a:10:{s:2:"id";s:1:"3";s:4:"name";s:6:"亲子";s:5:"alias";s:4:"baby";s:5:"queue";s:1:"0";s:12:"relate_theme";s:4:"baby";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:4:"auto";a:10:{s:2:"id";s:1:"4";s:4:"name";s:6:"汽车";s:5:"alias";s:4:"auto";s:5:"queue";s:1:"0";s:12:"relate_theme";s:4:"auto";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:9:"delicious";a:10:{s:2:"id";s:1:"5";s:4:"name";s:6:"美食";s:5:"alias";s:9:"delicious";s:5:"queue";s:1:"0";s:12:"relate_theme";s:9:"delicious";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:10:"decoration";a:10:{s:2:"id";s:1:"6";s:4:"name";s:6:"家装";s:5:"alias";s:10:"decoration";s:5:"queue";s:1:"0";s:12:"relate_theme";s:10:"decoration";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}s:6:"tucool";a:10:{s:2:"id";s:1:"7";s:4:"name";s:6:"图酷";s:5:"alias";s:6:"tucool";s:5:"queue";s:1:"0";s:12:"relate_theme";s:6:"tucool";s:11:"domain_band";s:0:"";s:9:"metatitle";s:0:"";s:11:"metadescrip";s:0:"";s:12:"metakeywords";s:0:"";s:10:"statictime";s:1:"0";}}', ''),
('o_styledb', 'array', 'a:1:{i:1;a:2:{s:5:"cname";s:12:"默认分类";s:4:"upid";s:1:"0";}}', ''),
('o_style_relation', 'array', 'a:1:{i:1;a:0:{}}', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_help`
--

CREATE TABLE `pw_help` (
  `hid` smallint(6) UNSIGNED NOT NULL,
  `hup` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `fathers` varchar(100) NOT NULL DEFAULT '',
  `ifchild` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `url` varchar(80) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `ispw` tinyint(3) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_help`
--

INSERT INTO `pw_help` (`hid`, `hup`, `lv`, `fathers`, `ifchild`, `title`, `url`, `content`, `vieworder`, `ispw`) VALUES
(1, 0, 0, '', 1, '账户', '', '', 0, 1),
(2, 1, 1, '1', 0, '注册登录', '', '<b>如何注册成会员？</b>\nphpwind 默认的注册方式非常简单，只需短短几秒钟的时间，即可成为站点会员。点击页面最左上角的"注册"，按照提示填写信息，提交即可，非常简单方便~\n正式会员将比游客享受更多的操作权限（站点设置不同，权限情况也将不同）。\n\n<b>如何登录？</b>\n已经成为正式会员了？那么点击页面最上角的"登录"进入登录页面，选择登录方式，填写登录信息即可完成登录。\n保存cookie可以让网页记录用户信息，方便下次登录。公用电脑，建议不保留。', 0, 1),
(3, 1, 1, '1', 0, '忘记密码', '', '<b>忘记登录密码怎么办？</b>\n没有关系，在登录页面点击"忘记密码"，填写注册邮箱就可以找回密码了哦~找回以后，请及时更改密码。\n如果你的邮箱无效或失效，请联系站点管理员。', 0, 1),
(4, 1, 1, '1', 0, '账户设置', '', '<b>如何修改我的用户信息？</b>\n登录后，点击页面最左上角的"设置"进入用户中心，可以查看和修改你的基本信息、扩展信息等。\n\n<b>如果制定我的个性头像？</b>\n登录后，进入用户中心，点击 头像 可以设置你的个性头像。根据权限分配的不同，你或许可以使用站点自带头像，或许可以使用头像链接，或许可以使用头像上传。\n\n<b>商品信息作什么用？</b>\n用户中心-商品信息，为你发布商品帖所使用的必要信息。支付宝账号--填写支付宝账号信息，如123@163.com。完成后在商品贴中可直接链入支付宝页面；商品分类--填写待出售的商品分类。完成后，为带出售商品的可用分类选项。', 0, 1),
(5, 1, 1, '1', 0, '隐私与安全', '', '<b>如何保证密码安全？</b>\n1.密码要保密，并经常更改。用户中心-账号设置-密码安全，可以进行密码修改\n2.填写正确常用的邮箱为注册邮箱信息。以便密码被盗或丢失时找回\n3.密码填写要尽量复杂，不使用生日、用户名等为密码信息\n4.定期为电脑杀毒，以防止盗号木马的困扰\n\n<b>交友安全</b>\n站点的信息交互性，让我们结识了很多志同道合的朋友。但是，有时候难免遇到交友不慎的尴尬。你可以进入用户中心->隐私，修改 加好友隐私。\n\n<b>个人信息安全</b>\n进入用户中心->隐私，设置 个人空间、空间留言的访问权限。\n\n<b>如何让站点操作不显示在动态中？</b>\n进入圈子->个人空间->应用管理，设置动态显示隐私', 0, 1),
(6, 1, 1, '1', 0, '积分使用', '', '<b>什么是积分？</b>\n积分，是站点内用于交易流通的媒介，可以是虚拟货币，也可以是威望、贡献值等。\n\n<b>如何获取积分？</b>\n站点提供多种方式发放积分，以鼓励会员在站点的活跃性。\n1.注册成为会员可以得到一定的积分值。\n2.发表主题或对某个主题进行回复，可以得到一定的积分。\n3.对某个主题进行评价，也可以得到一定的积分。\n4.参加站点组织的活动，赢取奖励\n5.成为站点某个版块管理员，为站点做点小贡献，可以获得不菲的薪资哦~\n\n<b>如何使用积分？</b>\n积分作为站点内用于交易的媒介，可以用于购买道具、特殊组权限、帖子签名等；\n同时威望、贡献值等信息，也能提升你在站点的荣誉度与可信度。', 0, 1),
(7, 0, 0, '', 1, '主题与回复', '', '', 0, 1),
(8, 7, 1, '7', 0, '发表主题', '', '<b>如何发表主题？</b>\n在帖子列表页面和帖子阅读页面，可以看到“发表新帖”图标，点击即可进入主题帖发布页面，如果没有发帖权限，会有提示“本论坛只有特定用户组才能发表主题,请到其他版块发贴,以提高等级!”出现。\n特别地，当鼠标停在“发表新帖”图标上时，如果你在该板块有发表交易贴、悬赏帖或投票帖的权限时，就会出现一个下拉菜单，菜单项里显示：交易、悬赏、投票，点击需要的帖子类型即可进入相应的主题发表页面发布新的主题。\n你也可以在帖子列表页面底部的快速发帖框发表普通主题帖。\n\n<b>如何发表匿名帖？</b>\n在帖子列表页面和帖子阅读页面，点击“发表新帖”图标进入发帖页面，在发帖时勾选内容编辑器下面的匿名帖复选框，或者在快速发帖处勾选（如果复选框呈灰色，说明该板块不允许发布匿名贴或者您的权限不够）。', 0, 1),
(9, 0, 0, '', 1, '站点应用', '', '', 0, 1),
(10, 9, 1, '9', 0, '记录', '', '<b>什么是记录？</b>\n记录即及时记录，似tweeter的类新鲜事，你可以随时发表感慨、晒晒心情。\n记录更可同步个人签名，显示于帖子阅读页个人头像上部，让更多的人了解和感触到你那刻的感想与心情。\n\n<b>什么是 @我的 ？</b>\n一般的记录显示在动态中，根据权限的不同，可以让好友或是站内所有人都查看阅读到。\n@我的，是记录的一种衍生。它可以单独对某个用户发起言论。只需要@+对方用户名+空格+想要对TA说的话，即可。', 0, 1),
(12, 9, 1, '9', 0, '应用组件', '', '<b>什么是应用组件？</b>\n应用组件是圈子中接入的第三方娱乐应用，提供了宠物、在线小游戏等多种游戏。具体规则信息等请查看对应的游戏应用。', 1, 1),
(13, 26, 1, '26', 0, 'windcode', '', '<table><tr class="tr3 tr"><td><font color="#5a6633" face="verdana">[quote]</font>被引用的内容，主要作用是在发帖时引用并回复具体楼层的帖子<font color="#5a6633" face="verdana">[/quote]</font></td><td><table cellpadding="5" cellspacing="1" width="94%" bgcolor="#000000" align="center"><tr><td class="f_one">被引用的帖子和您的回复内容</td></tr></table></td></tr><tr class="tr3 tr"><td><font color="#5a6633" face="verdana">[code]</font><font color="#5a6633"></font><font face="courier" color="#333333"><br />echo "phpwind 欢迎您!"\n</font><font color="#5a6633" face="verdana">[/code]</font></td><th><div class="tpc_content" id="read_553959"><h6 class="quote">Copy code</h6><blockquote id="code1">echo "PHPWind 欢迎您!"</blockquote></div></th></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[url]</font><font face="verdana">http://www.phpwind.net</font><font color="5a6633">[/url] </font></td><td><a href="http://www.phpwind.net" target="_blank"><font color="#000066">http://www.phpwind.net</font></a></td></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[url=http://www.phpwind.net]</font><font face="verdana">PHPWind</font><font color="5a6633">[/url]</font></td><td><a href="http://www.phpwind.net"><font color="000066">PHPWind</font></a></font></td></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[email]</font><font face="verdana">fengyu@163.com</font><font color="5a6633">[/email]</font></td><td><a href="mailto:fengyu@163.com"><font color="000066">fengyu@163.com</font></a></td></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[email=fengyu@163.com]</font><font face="verdana">email me</font><font color="5a6633">[/email]</font></td><td><a href="mailto:fengyu@163.com"><font color="000066">email me</font></a></td></tr><tr class="tr3 tr"> <td><font face="verdana" color="5a6633">[b]</font><font face="verdana">粗体字</font><font color="5a6633" face="verdana">[/b]</font> </td><td><font face="verdana"><b>粗体字</b></font> </td></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[i]</font><font face="verdana">斜体字<font color="5a6633">[/i]</font> </font></td><td><font face="verdana"><i>斜体字</i></font> </td></tr><tr class="tr3 tr"><td><font face="verdana" color="5a6633">[u]</font><font face="verdana">下划线</font><font color="5a6633">[/u]</font></td><td><font face="verdana"><u>下划线</u></font> </td></tr><tr class="tr3 tr"> <td><font face=verdana color=5a6633>[align=center(可以是向左left，向右right)]</font>位于中间<font color="5a6633">[/align]</font></td><td><font face="verdana"><div align="center">中间对齐</div></font></td></tr><tr class="tr3 tr"> <td><font face="verdana" color="5a6633">[size=4]</font><font face="verdana">改变字体大小<font color="5a6633">[/size] </font> </font></td><td><font face="verdana">改变字体大小 </font></td></tr><tr class="tr3 tr"> <td><font face="verdana" color="5a6633">[font=</font><font color="5a6633">楷体_gb2312<font face="verdana">]</font></font><font face="verdana">改变字体<font color="5a6633">[/font] </font> </font></td><td><font face="verdana"><font face=楷体_gb2312>改变字体</font> </font></td></tr><tr class="tr3 tr"> <td><font face="verdana" color="5a6633">[color=red]</font><font face="verdana">改变颜色<font color="5a6633">[/color] </font> </font></td><td><font face="verdana" color="red">改变颜色</font><font face="verdana"> </font></td></tr><tr class="tr3 tr"> <td><font face="verdana" color="5a6633">[img]</font><font face="verdana">http://www.phpwind.net/logo.gif<font color="5a6633">[/img]</font> </font></td><td><img src="logo.gif" /></font> </td></tr><tr class="tr3 tr"> <td><font face=宋体 color="#333333"><font color="#5a6633">[fly]</font>飞行文字特效<font color="#5a6633">[/fly]</font> </font></td><td><font face=宋体&nbsp; &nbsp; color="#333333"><marquee scrollamount="3" behavior="alternate" width="90%">飞行文字特效</marquee></font></td></tr><tr class="tr3 tr"> <td><font face=宋体 color="#333333"><font color="#5a6633">[move]</font>滚动文字特效<font color="#5a6633">[/move]</font> </font></td><td><font face=宋体 color="#333333"> <marquee scrollamount="3" width="90%">滚动文字特效</marquee></font></td></tr><tr class="tr3 tr"><td><font face=宋体 color="#333333"><font color="#5a6633">[flash=400,300]</font>http://www.phpwind.net/wind.swf<font color="#5a6633">[/flash]</font> </font></td><td><font face=宋体 color="#333333">将显示flash文件</font> </td></tr><tr class="tr3 tr"><td><font face=宋体 color="#333333"><font color="#5a6633">[iframe]</font>http://www.phpwind.net<font color="#5a6633">[/iframe]</font> </font></td><td><font face=宋体 color="#333333">将在帖子中粘贴网页(后台默认关闭)</font> </td></tr><tr class="tr3 tr"><td><font color=#5a6633>[glow=255(宽度),red(颜色),1(边界)]</font>要产生光晕效果的文字<font color="#5a6633">[/glow]</font></td><td align="center"><font face=宋体 color="#333333"><table width="255" style="filter:glow(color=red, direction=1)"><tr><td align="center">要产生彩色发光效果的文字</td></tr></table></font></td></tr></table>', 1, 1),
(16, 7, 1, '7', 0, '发表回复', '', '<b>如何发表回复？</b>\n1.回复主题：帖子阅读页面点击“回复”按钮进入回复页面，或使用页面下方的快速发帖框即可；\n2.回复某楼层：点击该楼层中的“回复”，转到到快速回复框进行回复', 0, 1),
(17, 7, 1, '7', 0, '附件使用', '', '<b>如何发表附件？</b>\n在帖子编辑页面底部附带了附件上传。\n1.普通上传，表示一次上传一个文件，点击[选择文件]选择本地的文件，插入到编辑内容后，才能上传。\n2.批量上传，一次最多可上次15个文件，点击[选择文件]选择本地的文件进行上传，上传完毕后插入到编辑内容。\n\n<b>如何设置附件购买？</b>\n附件普通上传时，设置查看附件需要消耗的积分类型、积分值即可。', 0, 1),
(24, 26, 1, '26', 0, '道具使用', '', '<b>如何拥有道具？</b>\n1.购买。在社区->道具中心，为站点的道具交易市场。你可以在这里购买需要的道具。\n2.转让。同样在社区->道具中心，你可以让你的好友低价转让他所拥有的道具。\n\n<b>如何使用道具？</b>\n进入帖子阅读页面，在每个用户的头像下，都有个“道具”图标，点击即可选择使用你想要的道具。\n同时，在主楼（即楼主发表的主题）头部右边，有个“使用道具”，点击后，可以对楼主进行特殊对待。', 0, 1),
(25, 1, 1, '1', 0, '会员组等级', '', '<b>会员组等级及提升方案</b>\n会员组等级为会员在站点内的权限划分，等级越高、获得的权限也越大。站点默认以发帖数为用户提升方案。\n具体如下：\n<table><tr><td><font color=bule>头衔</font></td><td>新手上路</td><td>侠客</td><td>骑士</td><td>圣骑士</td><td>精灵王</td><td>风云使者</td><td>光明使者</td><td>天使</td></tr><tr><td><font color=bule>发帖数</font></td><td>0</td><td>100</td><td>300</td><td>600</td><td>1000</td><td>5000</td><td>10000</td><td>50000</td></tr></table>', 0, 1),
(26, 0, 0, '', 1, '常用操作', '', '', 1, 1),
(27, 26, 1, '26', 0, '短消息', '', '<b>谁可以给我发消息？</b>\n站点内的所有人都可以给你发送短信息，无论你是在线、隐私还是离线状态。\n\n<b>如何给人发消息？</b>\n1.点击用户的头像，在用户信息栏你可以看到一个短信图标，点击可直接对TA发消息；\n2.进入用户中心->短消息中心->发新短消息，根据提示填写信息即可；\n3.收到短消息后的回复，也是哦~\n4.给他人的帖子评分时，也可以进行短消息提示哦~\n\n<b>什么是消息跟踪？</b>\n消息跟踪是记录你发送出去的消息状态。如果状态为已读，表示你发的消息已经被收信人阅读了；如果状态为未读，则表示你的收信人还没有时间或兴趣来打开这条消息，那么你还有机会来更改消息的内容哦，直接点击记录后面的[编辑]即可重新编辑。', 0, 1),
(28, 9, 1, '9', 0, '日志', '', '<b>如何写私密日志？</b>\n你只需要在编辑完成日志时，将权限设为“仅自己可见”即可。\n\n<b>如何推荐日志给好友？</b>\n在日志列表中，可以看到[分享]按钮，点击后，在推荐栏中填写相关信息即可。', 0, 1),
(29, 9, 1, '9', 0, '群组', '', '<b>如何创建群组？</b>\n基础app中点击“群组”进入添加新群组，根据提示信息提交即可。\n\n<b>如何设置群管理员？</b>\n如果你是群创始人，那么你就有权利去设定该群的管理员。进入群的成员列表，选择相关的成员设置为管理员即可。\n\n<b>群组可以设置私有吗？</b>\n群组可以设置成私有。\n1.将群组加入权限设置成不允许任何人加入。\n2.将群组内容设置为不公开。\n3.将群组相册设置为不公开。\n\n<b>如何找到他人的群？</b>\n基础app->群组->所有群组，可以查看到允许查看的所有群。', 0, 1),
(30, 9, 1, '9', 0, '评价', '', '<b>什么是评价?</b>\n评价即是对站点内容（包括帖子、日志、相册等）给予感受的一个概括和评价。因此，不要路过吧，好歹给个点击，发表你一下意见，或许哪天它的上榜还离不开你的轻轻一点哦。', 0, 1),
(31, 26, 1, '26', 0, '帖子举报', '', '<b>什么是举报？</b>\n协助站长进行帖子监控、举报不良帖子推荐优秀帖子。在帖子楼层操作栏点击“举报”填写理由并提交就能实现了对当前楼层帖子举报的操作。', 0, 1),
(32, 9, 1, '9', 0, '分享', '', '<b>如何使用分享？</b>\n基础app->分享，填写分享信息，提交即可。\n内容阅读页，点击"推荐"或"分享"，也可以直接分享该页内容给大家哦~。\n\n<b>如何分享视频？</b>\n填写视频所在网页的网址。(不需要填写视频的真实地址)\n\n<b>如何分享音乐？</b>\n填写音乐文件的网址。(后缀需要是mp3或者wma)\n\n<b>如何分享Flash？</b>\n填写 Flash 文件的网址。(后缀需要是swf)', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_hits_threads`
--

CREATE TABLE `pw_hits_threads` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_invitecode`
--

CREATE TABLE `pw_invitecode` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `invcode` varchar(40) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `usetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifused` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_inviterecord`
--

CREATE TABLE `pw_inviterecord` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `unit` varchar(15) NOT NULL DEFAULT '',
  `reward` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `typeid` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_invoke`
--

CREATE TABLE `pw_invoke` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tplid` smallint(6) NOT NULL DEFAULT '0',
  `tagcode` text NOT NULL,
  `parsecode` text NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `ifapi` tinyint(1) NOT NULL DEFAULT '0',
  `scr` varchar(25) NOT NULL DEFAULT '',
  `sign` varchar(25) NOT NULL DEFAULT '',
  `pieces` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ifverify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_invoke`
--

INSERT INTO `pw_invoke` (`id`, `name`, `tplid`, `tagcode`, `parsecode`, `title`, `ifapi`, `scr`, `sign`, `pieces`, `state`, `ifverify`) VALUES
(1, 'A1_头部栏目导航@亲子', 0, '<li class="switchNavItem"><a href="" target="_blank" >准妈俱乐部</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >亲子俱乐部</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >无敌宝宝秀</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >试用体验</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >母婴用品</a></li>\r\n\r\n\r\n\r\n\r\n', '<li class="switchNavItem"><a href="" target="_blank" >准妈俱乐部</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >亲子俱乐部</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >无敌宝宝秀</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >试用体验</a></li>\r\n<li class="switchNavItem"><a href="" target="_blank" >母婴用品</a></li>\r\n\r\n\r\n\r\n\r\n', 'A1_头部栏目导航@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(2, 'A2_头部头条@亲子', 0, '<list cachetime="1800" action="subject" num="1" title="标题摘要模块X1" />\r\n<div class="tops">\r\n	<loop>\r\n		<h1><a href="{url}" >{title,40}</a></h1>\r\n		<p>{descrip,110}</p>\r\n	</loop>\r\n</div>\r\n<list cachetime="1800" action="subject" num="2" title="小标题X2" />\r\n<ul>\r\n	<loop>\r\n		<li><a href="{url}"  ><em>【{forumname,4}】</em>{title,20}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A2_头部头条@亲子\',\'标题摘要模块X1\');\r\nprint <<<EOT\r\n\r\n<div class="tops">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<h1><a href="$val[url]" >$val[title]</a></h1>\r\n		<p>$val[descrip]</p>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</div>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'A2_头部头条@亲子\',\'小标题X2\');\r\nprint <<<EOT\r\n\r\n<ul>\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  ><em>【$val[forumname]】</em>$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'A2_头部头条@亲子', 0, 'channel', 'baby', 'a:2:{i:2;s:11:"小标题X2";i:1;s:20:"标题摘要模块X1";}', 0, 0),
(3, 'A3_头部通知和入口@亲子', 0, '<list cachetime="1800" action="subject" num="2" title="小标题X2" />\r\n<ul>\r\n	<loop>\r\n		<li><a href="{url}"  >{title,20}</a></li>\r\n	</loop>\r\n</ul>\r\n<list cachetime="1800" action="user" num="4" title="会员名X4" />\r\n<dl>\r\n	<dt>获奖通知:</dt>\r\n	<dd>\r\n		<loop><a href="{url}" >{title,10}</a></loop>\r\n	</dd>\r\n</dl>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A3_头部通知和入口@亲子\',\'小标题X2\');\r\nprint <<<EOT\r\n\r\n<ul>\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'A3_头部通知和入口@亲子\',\'会员名X4\');\r\nprint <<<EOT\r\n\r\n<dl>\r\n	<dt>获奖通知:</dt>\r\n	<dd>\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]" >$val[title]</a>\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</dd>\r\n</dl>\r\n\r\n\r\n\r\n\r\n', 'A3_头部通知和入口@亲子', 0, 'channel', 'baby', 'a:2:{i:4;s:11:"会员名X4";i:3;s:11:"小标题X2";}', 0, 0),
(4, 'B1_播放器@亲子', 0, '<div id="pwSlidePlayer" class="pwSlide" onmouseover="pwSlidePlayer(\'pause\');" onmouseout="pwSlidePlayer(\'goon\');">\r\n	<list cachetime="1800" num="4" action="image" func="newpic" rang="" ifpushonly="0" title="播放器" />\r\n	<loop>\r\n<!--#\r\n	$tmpStyle = $key ? \'style="display:none;"\' : \'\';\r\n#-->\r\n		<div id="Switch_$key" $tmpStyle>\r\n			<a href="{url}" target="_blank" ><img class="pwSlideFilter" src="{image,302,252}" width="302" height="252"/><h3>{title,36}</h3></a>\r\n		</div>\r\n	</loop>\r\n	<span class="pwSlide-bg"></span>\r\n	<ul id="SwitchNav" class="SwitchNav"></ul>\r\n</div>\r\n<div class="c"></div>\r\n<script type="text/javascript" src="js/picplayer.js"></script>\r\n<script type="text/javascript">pwSlidePlayer(\'play\',1);</script>\r\n\r\n\r\n\r\n\r\n\r\n', '<div id="pwSlidePlayer" class="pwSlide" onmouseover="pwSlidePlayer(\'pause\');" onmouseout="pwSlidePlayer(\'goon\');">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B1_播放器@亲子\',\'播放器\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<!--#\r\n	$tmpStyle = $key ? \'style="display:none;"\' : \'\';\r\n#-->\r\n		<div id="Switch_$key" $tmpStyle>\r\n			<a href="$val[url]" target="_blank" ><img class="pwSlideFilter" src="$val[image]" width="302" height="252"/><h3>$val[title]</h3></a>\r\n		</div>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n	<span class="pwSlide-bg"></span>\r\n	<ul id="SwitchNav" class="SwitchNav"></ul>\r\n</div>\r\n<div class="c"></div>\r\n<script type="text/javascript" src="js/picplayer.js"></script>\r\n<script type="text/javascript">pwSlidePlayer(\'play\',1);</script>\r\n\r\n\r\n\r\n\r\n\r\n', 'B1_播放器@亲子', 0, 'channel', 'baby', 'a:1:{i:5;s:9:"播放器";}', 0, 0),
(5, 'B2_左侧标题@亲子', 0, '<h2 class="sideTitle"><strong>免费</strong>试用火热进行中</h2>\r\n\r\n\r\n\r\n\r\n', '<h2 class="sideTitle"><strong>免费</strong>试用火热进行中</h2>\r\n\r\n\r\n\r\n\r\n', 'B2_左侧标题@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(6, 'B3_左侧图文1@亲子', 0, '<ul class="list2">\r\n	<list cachetime="1800" action="image" num="3" title="活动1" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,88,88}" width="88" height="88" class="fl" /></a>\r\n			<h4><a href="{url}"  target="_blank" >{title,22}<em class="hot"><img src="mode/area/themes/baby/images/hot.png" /></em></a></h4>\r\n			<p>{descript,80}</p>\r\n			<p><a class="apply" href="{url}">马上申请</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '<ul class="list2">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B3_左侧图文1@亲子\',\'活动1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="88" height="88" class="fl" /></a>\r\n			<h4><a href="$val[url]"  target="_blank" >$val[title]<em class="hot"><img src="mode/area/themes/baby/images/hot.png" /></em></a></h4>\r\n			<p>$val[descript]</p>\r\n			<p><a class="apply" href="$val[url]">马上申请</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'B3_左侧图文1@亲子', 0, 'channel', 'baby', 'a:1:{i:6;s:7:"活动1";}', 0, 0),
(7, 'B4_左侧列表@亲子', 0, '<list cachetime="1800" action="subject" num="6" title="标题列表X6" />\r\n<ul class="list3">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank">【{forumname,4}】{title,35}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B4_左侧列表@亲子\',\'标题列表X6\');\r\nprint <<<EOT\r\n\r\n<ul class="list3">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank">【$val[forumname]】$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'B4_左侧列表@亲子', 0, 'channel', 'baby', 'a:1:{i:7;s:14:"标题列表X6";}', 0, 0),
(8, 'B5_左侧图文2@亲子', 0, '<div class="sideBox">\r\n	<h3><strong>试用</strong>达人</h3>\r\n	<list cachetime="1800" num="4" action="image" func="newpic" rang="" ifpushonly="0" title="图文列表X4" />\r\n	<ul class="list4">\r\n		<loop>\r\n			<li><a href="{url}" target="_blank"><img src="{image,57,57}" width="57" height="57" class="fl" /></a>\r\n				<h4><a href="{url}"  target="_blank">{title,30}</a></h4>\r\n				<p>{descrip,52}..<a href="{url}"  target="_blank">[详情]</a></p>\r\n			</li>\r\n		</loop>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<div class="sideBox">\r\n	<h3><strong>试用</strong>达人</h3>\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B5_左侧图文2@亲子\',\'图文列表X4\');\r\nprint <<<EOT\r\n\r\n	<ul class="list4">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]" target="_blank"><img src="$val[image]" width="57" height="57" class="fl" /></a>\r\n				<h4><a href="$val[url]"  target="_blank">$val[title]</a></h4>\r\n				<p>$val[descrip]..<a href="$val[url]"  target="_blank">[详情]</a></p>\r\n			</li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'B5_左侧图文2@亲子', 0, 'channel', 'baby', 'a:1:{i:8;s:14:"图文列表X4";}', 0, 0),
(9, 'B6_左侧广告@亲子', 0, '<div class="mt10"><a href="#" target="_blank"><img src="mode/area/themes/baby/images/temp/ad302x65.png" width="302" height="65" /></a></div>\r\n<div class="mt10"><a href="#" target="_blank"><img src="mode/area/themes/baby/images/temp/ad302x65.png" width="302" height="65" /></a></div>\r\n\r\n\r\n\r\n\r\n', '<div class="mt10"><a href="#" target="_blank"><img src="mode/area/themes/baby/images/temp/ad302x65.png" width="302" height="65" /></a></div>\r\n<div class="mt10"><a href="#" target="_blank"><img src="mode/area/themes/baby/images/temp/ad302x65.png" width="302" height="65" /></a></div>\r\n\r\n\r\n\r\n\r\n', 'B6_左侧广告@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(10, 'B7_中间摘要@亲子', 0, '<list cachetime="1800" num="3" action="subject"  title="头条标题和摘要X3" />\r\n<ul class="tops">\r\n	<loop>\r\n		<li class="t{$key}">\r\n			<h2><a href="{url}"  target="_blank">{title,44}</a></h2>\r\n			<p>{descrip,110}…<a href="{url}"  target="_blank">（阅读全文）</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B7_中间摘要@亲子\',\'头条标题和摘要X3\');\r\nprint <<<EOT\r\n\r\n<ul class="tops">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="t{$key}">\r\n			<h2><a href="$val[url]"  target="_blank">$val[title]</a></h2>\r\n			<p>$val[descrip]…<a href="$val[url]"  target="_blank">（阅读全文）</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'B7_中间摘要@亲子', 0, 'channel', 'baby', 'a:1:{i:9;s:23:"头条标题和摘要X3";}', 0, 0),
(11, 'B8_中间列表@亲子', 0, '<list cachetime="1800" action="subject" num="18" title="标题列表X18" />\r\n<ul class="list1 cc">\r\n	<loop>\r\n		<li><a href="{url}"   target="_blank"><em>[{forumname,4}]</em>{title,25}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B8_中间列表@亲子\',\'标题列表X18\');\r\nprint <<<EOT\r\n\r\n<ul class="list1 cc">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"   target="_blank"><em>[$val[forumname]]</em>$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n', 'B8_中间列表@亲子', 0, 'channel', 'baby', 'a:1:{i:10;s:15:"标题列表X18";}', 0, 0),
(12, 'B9_右侧tab@亲子', 0, '							<span class="switchNavItem"><a href="">妈妈</a></span>\r\n							<span class="switchNavItem"><a href="">宝宝</a></span>\r\n						\r\n							\r\n', '							<span class="switchNavItem"><a href="">妈妈</a></span>\r\n							<span class="switchNavItem"><a href="">宝宝</a></span>\r\n						\r\n							\r\n', 'B9_右侧tab@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(13, 'B10_右侧tab内容1@亲子', 0, '	<p class="switchItem" style="display:none">\r\n			<list cachetime="1800" action="tag" num="11" title="链接标签1" />\r\n						<loop><a href="{url}">[{title,12}]</a></loop>\r\n				</p>\r\n						\r\n						\r\n', '	<p class="switchItem" style="display:none">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B10_右侧tab内容1@亲子\',\'链接标签1\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]">[$val[title]]</a>\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</p>\r\n						\r\n						\r\n', 'B10_右侧tab内容1@亲子', 0, 'channel', 'baby', 'a:1:{i:11;s:13:"链接标签1";}', 0, 0),
(14, 'B11_右侧tab内容2@亲子', 0, '	<p class="switchItem" style="display:none">\r\n						<list cachetime="1800" action="tag" num="11" title="链接标签2" />\r\n						<loop><a href="{url}">[{title,12}]</a></loop></p>\r\n\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n\r\n\r\n', '	<p class="switchItem" style="display:none">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'B11_右侧tab内容2@亲子\',\'链接标签2\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]">[$val[title]]</a>\r\nEOT;\r\n}print <<<EOT\r\n</p>\r\n\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n\r\n\r\n', 'B11_右侧tab内容2@亲子', 0, 'channel', 'baby', 'a:1:{i:12;s:13:"链接标签2";}', 0, 0),
(15, 'B12_右侧广告@亲子', 0, '<a href="#"><img src="mode/area/themes/baby/images/temp/ad222x160.png" /></a>\r\n\r\n\r\n\r\n\r\n', '<a href="#"><img src="mode/area/themes/baby/images/temp/ad222x160.png" /></a>\r\n\r\n\r\n\r\n\r\n', 'B12_右侧广告@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(16, 'B12_中间广告1@亲子', 0, '<a href="#"><img class="fl mr10" src="mode/area/themes/baby/images/temp/ad202x65.png" /></a> <a href="#"><img class="fl" src="mode/area/themes/baby/images/temp/ad202x65.png" /></a> <a href="#"><img class="fr" src="mode/area/themes/baby/images/temp/ad222x65.png" /></a>\r\n\r\n\r\n\r\n\r\n', '<a href="#"><img class="fl mr10" src="mode/area/themes/baby/images/temp/ad202x65.png" /></a> <a href="#"><img class="fl" src="mode/area/themes/baby/images/temp/ad202x65.png" /></a> <a href="#"><img class="fr" src="mode/area/themes/baby/images/temp/ad222x65.png" /></a>\r\n\r\n\r\n\r\n\r\n', 'B12_中间广告1@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(17, 'B13_左侧图文1@亲子', 0, '<div class="hd">\r\n	<list cachetime="1800" action="subject" num="1" title="more链接指向" />\r\n	<loop>\r\n		<h3>精彩活动</h3>\r\n		<a class="more" href="{url}">more</a> </loop>\r\n</div>\r\n<div class="bd">\r\n	<div class="bdWrap cc" style="padding:11px 14px 10px;">\r\n		<div class="fl subject1">\r\n			<list cachetime="1800" action="image" num="1" title="左边图文X1" />\r\n			<div class="top1">\r\n				<loop><a href="{url}" ><img src="{image,105,80}" width="105" height="80"/></a>\r\n					<h4><a href="{url}"  target="_blank">{title,24}</a></h4>\r\n					<p>{descrip,76}</p>\r\n				</loop>\r\n			</div>\r\n			<list cachetime="1800" action="subject" num="4" title="左边标题列表X4" />\r\n			<ul>\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" title="{title,45}">{title}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</div>\r\n		<div class="fr subject1">\r\n			<list cachetime="1800" action="image" num="1" title="右边图文X1" />\r\n			<div class="top1">\r\n				<loop><a href="{url}" ><img src="{image,105,80}" width="105" height="80"/></a>\r\n					<h4><a href="{url}"  target="_blank">{title,24}</a></h4>\r\n					<p>{descrip,76}</p>\r\n				</loop>\r\n			</div>\r\n			<list cachetime="1800" action="subject" num="4" title="右边标题列表X4" />\r\n			<ul>\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" title="{title,45}">{title}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<div class="hd">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B13_左侧图文1@亲子\',\'more链接指向\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<h3>精彩活动</h3>\r\n		<a class="more" href="$val[url]">more</a> \r\nEOT;\r\n}print <<<EOT\r\n\r\n</div>\r\n<div class="bd">\r\n	<div class="bdWrap cc" style="padding:11px 14px 10px;">\r\n		<div class="fl subject1">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B13_左侧图文1@亲子\',\'左边图文X1\');\r\nprint <<<EOT\r\n\r\n			<div class="top1">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]" ><img src="$val[image]" width="105" height="80"/></a>\r\n					<h4><a href="$val[url]"  target="_blank">$val[title]</a></h4>\r\n					<p>$val[descrip]</p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</div>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B13_左侧图文1@亲子\',\'左边标题列表X4\');\r\nprint <<<EOT\r\n\r\n			<ul>\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		<div class="fr subject1">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B13_左侧图文1@亲子\',\'右边图文X1\');\r\nprint <<<EOT\r\n\r\n			<div class="top1">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]" ><img src="$val[image]" width="105" height="80"/></a>\r\n					<h4><a href="$val[url]"  target="_blank">$val[title]</a></h4>\r\n					<p>$val[descrip]</p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</div>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B13_左侧图文1@亲子\',\'右边标题列表X4\');\r\nprint <<<EOT\r\n\r\n			<ul>\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'B13_左侧图文1@亲子', 0, 'channel', 'baby', 'a:5:{i:13;s:16:"more链接指向";i:16;s:14:"右边图文X1";i:17;s:20:"右边标题列表X4";i:14;s:14:"左边图文X1";i:15;s:20:"左边标题列表X4";}', 0, 0),
(18, 'B14_中间广告2@亲子', 0, '<a href="#"><img src="mode/area/themes/baby/images/temp/ad648x65.png" /></a>\r\n\r\n\r\n\r\n\r\n', '<a href="#"><img src="mode/area/themes/baby/images/temp/ad648x65.png" /></a>\r\n\r\n\r\n\r\n\r\n', 'B14_中间广告2@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(19, 'B15_左侧图文2@亲子', 0, '<div class="hd">\r\n	<h3>Color Baby</h3>\r\n</div>\r\n<div class="bd">\r\n	<div class="bdWrap">\r\n		<div id="babys">\r\n			<list cachetime="1800" num="1" action="image" func="newpic" rang="" ifpushonly="0" title="小朋友头像X1" />\r\n			<div id="babyShow">\r\n				<loop><a href="{url}"  target="_blank" ><img src="{image,295,170}" width="295" height="170" /></a></loop>\r\n			</div>\r\n			<list cachetime="1800" num="15" action="image" func="newpic" rang="" ifpushonly="0" title="小朋友头像列表X15" />\r\n			<ul id="babyList">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" ><img src="{image,48,48}" width="48" height="48" /></a></li>\r\n				</loop>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<div class="hd">\r\n	<h3>Color Baby</h3>\r\n</div>\r\n<div class="bd">\r\n	<div class="bdWrap">\r\n		<div id="babys">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B15_左侧图文2@亲子\',\'小朋友头像X1\');\r\nprint <<<EOT\r\n\r\n			<div id="babyShow">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" ><img src="$val[image]" width="295" height="170" /></a>\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</div>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B15_左侧图文2@亲子\',\'小朋友头像列表X15\');\r\nprint <<<EOT\r\n\r\n			<ul id="babyList">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="48" height="48" /></a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'B15_左侧图文2@亲子', 0, 'channel', 'baby', 'a:2:{i:18;s:17:"小朋友头像X1";i:19;s:24:"小朋友头像列表X15";}', 0, 0),
(20, 'B16_左侧图文3@亲子', 0, '<list cachetime="1800" num="1" action="subject" func="newsubject" rang="" ifpushonly="0" title="更多链接指向" />\r\n<div class="hd">\r\n	<loop>\r\n		<h3>生日宝宝</h3>\r\n		<a class="more" href="{url}" target="_blank">more</a> </loop>\r\n</div>\r\n<div class="bd">\r\n<list cachetime="1800" num="1" action="image" func="newpic" rang="" ifpushonly="0" title="宝宝生日详细" />\r\n	<div class="bdWrap cc">\r\n	<loop>\r\n		<div id="pwSlide2" class="pwSlide">\r\n			<ul class="switch">\r\n				<li>\r\n					<a href="{url}"  target="_blank" ><img  src="{image,295,170}" width="295" height="170"  />\r\n						<h3>{title,30}</h3>\r\n					</a></li>\r\n			</ul>\r\n			<div class="pwSlide-bg" style="background-color:#C06"></div>\r\n		</div>\r\n		<div id="babyBirthday">\r\n				<p><span>ＩＤ：{author}</span><a href="{url}" target="_blank" class="wish">给宝宝送祝福</a><br />\r\n					宝宝名字：<strong>{title,30}</strong></p>\r\n				<p>{descrip,140}</p>\r\n		</div>\r\n		</loop>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B16_左侧图文3@亲子\',\'更多链接指向\');\r\nprint <<<EOT\r\n\r\n<div class="hd">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<h3>生日宝宝</h3>\r\n		<a class="more" href="$val[url]" target="_blank">more</a> \r\nEOT;\r\n}print <<<EOT\r\n\r\n</div>\r\n<div class="bd">\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'B16_左侧图文3@亲子\',\'宝宝生日详细\');\r\nprint <<<EOT\r\n\r\n	<div class="bdWrap cc">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<div id="pwSlide2" class="pwSlide">\r\n			<ul class="switch">\r\n				<li>\r\n					<a href="$val[url]"  target="_blank" ><img  src="$val[image]" width="295" height="170"  />\r\n						<h3>$val[title]</h3>\r\n					</a></li>\r\n			</ul>\r\n			<div class="pwSlide-bg" style="background-color:#C06"></div>\r\n		</div>\r\n		<div id="babyBirthday">\r\n				<p><span>ＩＤ：$val[author]</span><a href="$val[url]" target="_blank" class="wish">给宝宝送祝福</a><br />\r\n					宝宝名字：<strong>$val[title]</strong></p>\r\n				<p>$val[descrip]</p>\r\n		</div>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'B16_左侧图文3@亲子', 0, 'channel', 'baby', 'a:2:{i:21;s:18:"宝宝生日详细";i:20;s:18:"更多链接指向";}', 0, 0),
(21, 'B17_横幅广告@亲子', 0, '<h3>品牌专区</h3>\r\n<ul class="brandList">\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/firmus.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/beingmate.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/happyprince.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/nestle.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/wissun.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/xianzhi.png" /></a></li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '<h3>品牌专区</h3>\r\n<ul class="brandList">\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/firmus.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/beingmate.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/happyprince.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/nestle.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/wissun.png" /></a></li>\r\n	<li><a href="#"><img src="mode/area/themes/baby/images/temp/brand/xianzhi.png" /></a></li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'B17_横幅广告@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(22, 'C1_栏目导航@亲子', 0, '<h1 class="caption">孕育新生命</h1>\r\n<div class="hd">\r\n	<h3>准妈俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>准备怀孕：</em><a href="#">叶酸</a></li>\r\n		<li><em>孕早期：</em><a href="#">建卡</a>｜<a href="#">胎教</a></li>\r\n		<li><em>孕中期：</em><a href="#">B超</a>｜<a href="#">孕检</a></li>\r\n		<li><em>孕晚期：</em><a href="#">妊娠纹</a>｜<a href="#">胎动</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<h1 class="caption">孕育新生命</h1>\r\n<div class="hd">\r\n	<h3>准妈俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>准备怀孕：</em><a href="#">叶酸</a></li>\r\n		<li><em>孕早期：</em><a href="#">建卡</a>｜<a href="#">胎教</a></li>\r\n		<li><em>孕中期：</em><a href="#">B超</a>｜<a href="#">孕检</a></li>\r\n		<li><em>孕晚期：</em><a href="#">妊娠纹</a>｜<a href="#">胎动</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'C1_栏目导航@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(23, 'C2_中间图文@亲子', 0, '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	<list cachetime="1800" action="image" num="1" title="左边图片X1" />\r\n		<ul class="switch">\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" ><img src="{image,235,150}" width="235" height="150" />\r\n				<h3>{title,20}</h3>\r\n				</a></li>\r\n		</loop>\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#030"></div>\r\n	</div>\r\n</div>\r\n<list cachetime="1800" num="2" action="subject"  title="左侧标题摘要X2" />\r\n<ul class="tops">\r\n	<loop>\r\n		<li>\r\n			<h2><a href="{url}"  target="_blank" >{title,35}</a></h2>\r\n			<p>{descrip,80}<a href="{url}"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'C2_中间图文@亲子\',\'左边图片X1\');\r\nprint <<<EOT\r\n\r\n		<ul class="switch">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="235" height="150" />\r\n				<h3>$val[title]</h3>\r\n				</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#030"></div>\r\n	</div>\r\n</div>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'C2_中间图文@亲子\',\'左侧标题摘要X2\');\r\nprint <<<EOT\r\n\r\n<ul class="tops">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li>\r\n			<h2><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n			<p>$val[descrip]<a href="$val[url]"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'C2_中间图文@亲子', 0, 'channel', 'baby', 'a:2:{i:23;s:20:"左侧标题摘要X2";i:22;s:14:"左边图片X1";}', 0, 0),
(24, 'C3_中间列表@亲子', 0, '<div class="steps">\r\n	<ol>\r\n		<li class="item"><em>1</em><a href="#">准备怀孕</a>\r\n			<list cachetime="1800" action="subject" num="4" title="准备怀孕" />\r\n			<ul class="list5">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >{title,28}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>2</em><a href="#">孕前期</a>\r\n			<list cachetime="1800" action="subject" num="4" title="孕前期" />\r\n			<ul class="list5">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >{title,28}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>3</em><a href="#">孕中期</a>\r\n			<list cachetime="1800" action="subject" num="4" title="孕中期" />\r\n			<ul class="list5">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >{title,28}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>4</em><a href="#">孕后期</a>\r\n			<list cachetime="1800" action="subject" num="4" title="孕后期" />\r\n			<ul class="list5">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >{title,28}</a></li>\r\n				</loop>\r\n			</ul>\r\n		</li>\r\n	</ol>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<div class="steps">\r\n	<ol>\r\n		<li class="item"><em>1</em><a href="#">准备怀孕</a>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3_中间列表@亲子\',\'准备怀孕\');\r\nprint <<<EOT\r\n\r\n			<ul class="list5">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>2</em><a href="#">孕前期</a>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3_中间列表@亲子\',\'孕前期\');\r\nprint <<<EOT\r\n\r\n			<ul class="list5">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>3</em><a href="#">孕中期</a>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3_中间列表@亲子\',\'孕中期\');\r\nprint <<<EOT\r\n\r\n			<ul class="list5">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</li>\r\n		<li class="item"><em>4</em><a href="#">孕后期</a>\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3_中间列表@亲子\',\'孕后期\');\r\nprint <<<EOT\r\n\r\n			<ul class="list5">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</li>\r\n	</ol>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'C3_中间列表@亲子', 0, 'channel', 'baby', 'a:4:{i:24;s:12:"准备怀孕";i:26;s:9:"孕中期";i:25;s:9:"孕前期";i:27;s:9:"孕后期";}', 0, 0),
(25, 'C4_左侧列表@亲子', 0, '<list cachetime="1800" action="subject" num="8" title="课堂排行" />\r\n<ol class="rankingList">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>\r\n</ol>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'C4_左侧列表@亲子\',\'课堂排行\');\r\nprint <<<EOT\r\n\r\n<ol class="rankingList">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ol>\r\n\r\n\r\n\r\n\r\n', 'C4_左侧列表@亲子', 0, 'channel', 'baby', 'a:1:{i:28;s:12:"课堂排行";}', 0, 0),
(26, 'D1_栏目导航@亲子', 0, '<h1 class="caption">幼儿期 [0月-3岁]</h1>\r\n<div class="hd">\r\n	<h3>亲子俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>新生儿：</em><a href="#">母乳</a>｜<a href="#">起名</a></li>\r\n		<li><em>婴儿期：</em><a href="#">辅食</a>｜<a href="#">补钙</a></li>\r\n		<li><em>幼儿期：</em><a href="#">早教</a>｜<a href="#">感冒</a></li>\r\n		<li><em>孕晚期：</em><a href="#">妊娠纹</a>｜<a href="#">胎动</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<h1 class="caption">幼儿期 [0月-3岁]</h1>\r\n<div class="hd">\r\n	<h3>亲子俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>新生儿：</em><a href="#">母乳</a>｜<a href="#">起名</a></li>\r\n		<li><em>婴儿期：</em><a href="#">辅食</a>｜<a href="#">补钙</a></li>\r\n		<li><em>幼儿期：</em><a href="#">早教</a>｜<a href="#">感冒</a></li>\r\n		<li><em>孕晚期：</em><a href="#">妊娠纹</a>｜<a href="#">胎动</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'D1_栏目导航@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(27, 'D2_中间图文摘要@亲子', 0, '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	<list cachetime="1800" action="image" num="1" title="左边图片X1" />\r\n		<ul class="switch">\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" ><img src="{image,235,150}" width="235" height="150" />\r\n				<h3>{title,20}</h3>\r\n				</a></li>\r\n		</loop>\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#F30"></div>\r\n	</div>\r\n</div>\r\n<list cachetime="1800" num="2" action="subject"  title="左侧标题摘要X2" />\r\n<ul class="tops">\r\n	<loop>\r\n		<li>\r\n			<h2><a href="{url}"  target="_blank" >{title,35}</a></h2>\r\n			<p>{descrip,80}<a href="{url}"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D2_中间图文摘要@亲子\',\'左边图片X1\');\r\nprint <<<EOT\r\n\r\n		<ul class="switch">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="235" height="150" />\r\n				<h3>$val[title]</h3>\r\n				</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#F30"></div>\r\n	</div>\r\n</div>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'D2_中间图文摘要@亲子\',\'左侧标题摘要X2\');\r\nprint <<<EOT\r\n\r\n<ul class="tops">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li>\r\n			<h2><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n			<p>$val[descrip]<a href="$val[url]"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'D2_中间图文摘要@亲子', 0, 'channel', 'baby', 'a:2:{i:30;s:20:"左侧标题摘要X2";i:29;s:14:"左边图片X1";}', 0, 0),
(28, 'D3_中间图文列表@亲子', 0, '<list cachetime="1800" action="image" num="1" title="左边图片X1" />\r\n<div class="fl subject2">\r\n	<loop><a href="{url}"  target="_blank" ><img src="{image,75,70}" width="75" height="70" /></a></loop>\r\n	<list cachetime="1800" action="subject" num="4" title="左边标题列表X4" />\r\n	<ul class="list5">\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" >{title,22}</a></li>\r\n		</loop>\r\n	</ul>\r\n</div>\r\n<list cachetime="1800" action="image" num="1" title="右边边图片X1" />\r\n<div class="fr subject2">\r\n	<loop><a href="{url}"  target="_blank" ><img src="{image,75,70}" width="75" height="70" /></a></loop>\r\n	<list cachetime="1800" action="subject" num="4" title="右边标题列表X4" />\r\n	<ul class="list5">\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" >{title,22}</a></li>\r\n		</loop>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_中间图文列表@亲子\',\'左边图片X1\');\r\nprint <<<EOT\r\n\r\n<div class="fl subject2">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" ><img src="$val[image]" width="75" height="70" /></a>\r\nEOT;\r\n}print <<<EOT\r\n\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_中间图文列表@亲子\',\'左边标题列表X4\');\r\nprint <<<EOT\r\n\r\n	<ul class="list5">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n</div>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_中间图文列表@亲子\',\'右边边图片X1\');\r\nprint <<<EOT\r\n\r\n<div class="fr subject2">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" ><img src="$val[image]" width="75" height="70" /></a>\r\nEOT;\r\n}print <<<EOT\r\n\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_中间图文列表@亲子\',\'右边标题列表X4\');\r\nprint <<<EOT\r\n\r\n	<ul class="list5">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'D3_中间图文列表@亲子', 0, 'channel', 'baby', 'a:4:{i:34;s:20:"右边标题列表X4";i:33;s:17:"右边边图片X1";i:31;s:14:"左边图片X1";i:32;s:20:"左边标题列表X4";}', 0, 0),
(29, 'D4_右侧图文@亲子', 0, '<list cachetime="1800" num="4" action="image" func="newpic" rang="" cachetime="1700" ifpushonly="0" title="图文列表X4" />\r\n<ul class="subject3">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,45,40}" width="45" height="40"  /></a>{descrip,40}</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D4_右侧图文@亲子\',\'图文列表X4\');\r\nprint <<<EOT\r\n\r\n<ul class="subject3">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="45" height="40"  /></a>$val[descrip]</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'D4_右侧图文@亲子', 0, 'channel', 'baby', 'a:1:{i:35;s:14:"图文列表X4";}', 0, 0),
(30, 'E1_栏目导航@亲子', 0, '<h1 class="caption">学龄前 [3岁-6岁]</h1>\r\n<div class="hd">\r\n	<h3>亲子俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>学龄前：</em><a href="#">培养</a>｜<a href="#">艺术</a>｜<a href="#">兴趣班</a>｜<a href="#">幼儿园</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', '<h1 class="caption">学龄前 [3岁-6岁]</h1>\r\n<div class="hd">\r\n	<h3>亲子俱乐部申请通道</h3>\r\n	<ul class="more">\r\n		<li><em>学龄前：</em><a href="#">培养</a>｜<a href="#">艺术</a>｜<a href="#">兴趣班</a>｜<a href="#">幼儿园</a></li>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n\r\n', 'E1_栏目导航@亲子', 0, 'channel', 'baby', 'a:0:{}', 0, 0),
(31, 'E2_中间图文摘要@亲子', 0, '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	<list cachetime="1800" action="image" num="1" title="左边图片X1" />\r\n		<ul class="switch">\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" ><img src="{image,235,150}" width="235" height="150" />\r\n				<h3>{title,20}</h3>\r\n				</a></li>\r\n		</loop>\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#603"></div>\r\n	</div>\r\n</div>\r\n<list cachetime="1800" num="2" action="subject"  title="左侧标题摘要X2" />\r\n<ul class="tops">\r\n	<loop>\r\n		<li>\r\n			<h2><a href="{url}"  target="_blank" >{title,35}</a></h2>\r\n			<p>{descrip,80}<a href="{url}"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '<div class="pwSlideWrap">\r\n	<div id="pwSlide3" class="pwSlide">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E2_中间图文摘要@亲子\',\'左边图片X1\');\r\nprint <<<EOT\r\n\r\n		<ul class="switch">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="235" height="150" />\r\n				<h3>$val[title]</h3>\r\n				</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</ul>\r\n		<div class="pwSlide-bg" style="background-color:#603"></div>\r\n	</div>\r\n</div>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'E2_中间图文摘要@亲子\',\'左侧标题摘要X2\');\r\nprint <<<EOT\r\n\r\n<ul class="tops">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li>\r\n			<h2><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n			<p>$val[descrip]<a href="$val[url]"  target="_blank" >[详情]</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'E2_中间图文摘要@亲子', 0, 'channel', 'baby', 'a:2:{i:37;s:20:"左侧标题摘要X2";i:36;s:14:"左边图片X1";}', 0, 0),
(32, 'E3_中间图文列表@亲子', 0, '<list cachetime="1800" action="image" num="3" title="左侧图片X3" />\r\n<ul class="imgList">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,70,65}" width="70" height="65" />{title,10}</a></li>\r\n	</loop>\r\n</ul>\r\n<list cachetime="1800" action="subject" num="4" title="右侧标题列表X4" />\r\n<ul class="list5">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,42}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'E3_中间图文列表@亲子\',\'左侧图片X3\');\r\nprint <<<EOT\r\n\r\n<ul class="imgList">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="70" height="65" />$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'E3_中间图文列表@亲子\',\'右侧标题列表X4\');\r\nprint <<<EOT\r\n\r\n<ul class="list5">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n', 'E3_中间图文列表@亲子', 0, 'channel', 'baby', 'a:2:{i:39;s:20:"右侧标题列表X4";i:38;s:14:"左侧图片X3";}', 0, 0),
(33, 'E4_右侧列表@亲子', 0, '<list cachetime="1800" action="subject" num="8" title="标题列表X8" />\r\n<ol class="rankingList r2">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,28}</a></li>\r\n	</loop>\r\n</ol>\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'E4_右侧列表@亲子\',\'标题列表X8\');\r\nprint <<<EOT\r\n\r\n<ol class="rankingList r2">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ol>\r\n', 'E4_右侧列表@亲子', 0, 'channel', 'baby', 'a:1:{i:40;s:14:"标题列表X8";}', 0, 0),
(34, 'A1_标题@家装', 0, ' 家居频道 \r\n\r\n\r\n', ' 家居频道 \r\n\r\n\r\n', 'A1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(35, 'A2_栏目导航@家装', 0, '\r\n<li class="switchNavItem"><a href=""  target="_blank" >装修设计</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装建材</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家具软装</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家用电器</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装日志</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >商家咨询区</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装设计会所</a></li>\r\n\r\n\r\n\r\n', '\r\n<li class="switchNavItem"><a href=""  target="_blank" >装修设计</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装建材</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家具软装</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家用电器</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装日志</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >商家咨询区</a></li>\r\n<li class="switchNavItem"><a href=""  target="_blank" >家装设计会所</a></li>\r\n\r\n\r\n\r\n', 'A2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(36, 'A3_播放器@家装', 0, '\r\n<ul class="switch" id="psp1_a">\r\n<list cachetime="1800" action="image" num="4" title="图片播放器大图" />\r\n<loop>\r\n<li class="switchItem" style="display:none"><a href="{url}"  target="_blank" ><img src="{image,300,400}" width="300" height="400" /><h3>{title,30}</h3></a></li>\r\n</loop>\r\n</ul>\r\n<div class="pwSlide-bg"></div>\r\n<ul class="SwitchNav" id="psp1_b">\r\n<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n	<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->\r\n</ul>\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n<script>ddSliderPlayers(\'psp1_a\',\'psp1_b\',4,\'current\');</script>\r\n\r\n\r\n\r\n\r\n', '\r\n<ul class="switch" id="psp1_a">\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'A3_播放器@家装\',\'图片播放器大图\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li class="switchItem" style="display:none"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="300" height="400" /><h3>$val[title]</h3></a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n<div class="pwSlide-bg"></div>\r\n<ul class="SwitchNav" id="psp1_b">\r\n<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n	<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->\r\n</ul>\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n<script>ddSliderPlayers(\'psp1_a\',\'psp1_b\',4,\'current\');</script>\r\n\r\n\r\n\r\n\r\n', 'A3_播放器@家装', 0, 'channel', 'decoration', 'a:1:{i:41;s:21:"图片播放器大图";}', 0, 0),
(37, 'A4_中间摘要@家装', 0, '<list cachetime="1800" action="subject" num="2" title="头条标题摘要" />\r\n<loop>\r\n	<li>\r\n		<h2><a class="s1" href="{url}"  target="_blank" >{title,25}</a></h2>\r\n		<p>{descrip,80} <a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n	</li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A4_中间摘要@家装\',\'头条标题摘要\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li>\r\n		<h2><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n		<p>$val[descrip] <a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n	</li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'A4_中间摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:42;s:18:"头条标题摘要";}', 0, 0),
(38, 'A5_中间列表@家装', 0, '<list cachetime="1800" action="subject" num="8" title="标题列表" />\r\n<loop><li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,40}</a></li></loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A5_中间列表@家装\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'A5_中间列表@家装', 0, 'channel', 'decoration', 'a:1:{i:43;s:12:"标题列表";}', 0, 0),
(39, 'A6_右侧标题@家装', 0, ' 装修课程表 \r\n\r\n\r\n', ' 装修课程表 \r\n\r\n\r\n', 'A6_右侧标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(40, 'A7_右侧图文@家装', 0, '<list cachetime="1800" action="image" num="2" title="图文列表X2" />\r\n<loop>\r\n<div class="subject mb10 cc">\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,60,55}" width="60" height="55" /></a>\r\n	<h3><a href="{url}"  target="_blank" >{title,25}</a></h3>\r\n	<p>{descrip,35} <a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</div>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A7_右侧图文@家装\',\'图文列表X2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<div class="subject mb10 cc">\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="60" height="55" /></a>\r\n	<h3><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n	<p>$val[descrip] <a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n</div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'A7_右侧图文@家装', 0, 'channel', 'decoration', 'a:1:{i:44;s:14:"图文列表X2";}', 0, 0),
(41, 'A8_右侧列表@家装', 0, '<list cachetime="1800" action="subject" num="5" title="标题列表" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A8_右侧列表@家装\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'A8_右侧列表@家装', 0, 'channel', 'decoration', 'a:1:{i:45;s:12:"标题列表";}', 0, 0),
(42, 'A9_右侧广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad225x80.png" width="225" height="80" /></a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad225x80.png" width="225" height="80" /></a> \r\n\r\n\r\n', 'A9_右侧广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(43, 'B1_标题@家装', 0, '\r\n<h3>最惠团购</h3>\r\n<a href="{url}"  target="_blank"  class="more">更多》</a> \r\n\r\n\r\n', '\r\n<h3>最惠团购</h3>\r\n<a href="{url}"  target="_blank"  class="more">更多》</a> \r\n\r\n\r\n', 'B1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(44, 'B2_左侧图片@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文" />\r\n<loop>\r\n	<div class="img">\r\n	<a href="{url}"  target="_blank" ><img src="{image,175,115}" width="175" height="115" /></a></div>\r\n	<h3><a href="{url}"  target="_blank" >{title,25}</a></h3>\r\n	<p class="s2 mb10">{descrip,60}</p>\r\n</loop>\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B2_左侧图片@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<div class="img">\r\n	<a href="$val[url]"  target="_blank" ><img src="$val[image]" width="175" height="115" /></a></div>\r\n	<h3><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n	<p class="s2 mb10">$val[descrip]</p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n', 'B2_左侧图片@家装', 0, 'channel', 'decoration', 'a:1:{i:46;s:6:"图文";}', 0, 0),
(45, 'B21_左侧图片摘要@家装', 0, '	<ul class="mb10">\r\n		<li>团购价：<strong class="s1 b">12000.00元</strong></li>\r\n		<li>已报名：<strong class="s1 b">12人</strong></li>\r\n	</ul>\r\n\r\n\r\n', '	<ul class="mb10">\r\n		<li>团购价：<strong class="s1 b">12000.00元</strong></li>\r\n		<li>已报名：<strong class="s1 b">12人</strong></li>\r\n	</ul>\r\n\r\n\r\n', 'B21_左侧图片摘要@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(46, 'B3_中间列表@家装', 0, '	<list cachetime="1800" action="subject" num="12" title="标题列表X12" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" >[{forumname,8}]{title,20}</a></li>\r\n		</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B3_中间列表@家装\',\'标题列表X12\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >[$val[forumname]]$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'B3_中间列表@家装', 0, 'channel', 'decoration', 'a:1:{i:47;s:15:"标题列表X12";}', 0, 0),
(47, 'B4_中间图文@家装', 0, '	<list cachetime="1800" action="image" num="5" title="图片列表X5" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,80,80}" width="80" height="80" />{title,12}<br /><strong class="s1 b">{descrip,12}</strong></a></li>\r\n		</loop>\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B4_中间图文@家装\',\'图片列表X5\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="80" height="80" />$val[title]<br /><strong class="s1 b">$val[descrip]</strong></a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'B4_中间图文@家装', 0, 'channel', 'decoration', 'a:1:{i:48;s:14:"图片列表X5";}', 0, 0),
(48, 'B5_右侧标题@家装', 0, ' 装修活动 \r\n\r\n\r\n', ' 装修活动 \r\n\r\n\r\n', 'B5_右侧标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(49, 'B6_右侧图文@家装', 0, '	<list cachetime="1800" action="image" num="2" title="图片列表X2" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,105,85}" width="105" height="85" />{title,15}</a></li>\r\n		</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B6_右侧图文@家装\',\'图片列表X2\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="105" height="85" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'B6_右侧图文@家装', 0, 'channel', 'decoration', 'a:1:{i:49;s:14:"图片列表X2";}', 0, 0),
(50, 'B7_右侧摘要@家装', 0, '<list cachetime="1800" action="subject" num="2" title="标题摘要_2" />\r\n<loop>\r\n<li>\r\n	<h3><a class="s1" href="{url}"  target="_blank" >{title,20}</a></h3>\r\n	<p>{descrip,60}</p>\r\n</li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B7_右侧摘要@家装\',\'标题摘要_2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li>\r\n	<h3><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n	<p>$val[descrip]</p>\r\n</li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'B7_右侧摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:50;s:14:"标题摘要_2";}', 0, 0),
(51, 'B8_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" /></a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" /></a> \r\n\r\n\r\n', 'B8_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(52, 'C1_标题@家装', 0, ' 装修材料 \r\n\r\n\r\n', ' 装修材料 \r\n\r\n\r\n', 'C1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(53, 'C2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >地面材料</a> │ <a href="{url}"  target="_blank" >橱柜</a> │ <a href="{url}"  target="_blank" >卫浴</a> │ <a href="{url}"  target="_blank" >家具</a> │ <a href="{url}"  target="_blank" >装修公司</a> │ <a href="{url}"  target="_blank" >家用电器</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >地面材料</a> │ <a href="{url}"  target="_blank" >橱柜</a> │ <a href="{url}"  target="_blank" >卫浴</a> │ <a href="{url}"  target="_blank" >家具</a> │ <a href="{url}"  target="_blank" >装修公司</a> │ <a href="{url}"  target="_blank" >家用电器</a> \r\n\r\n\r\n', 'C2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(54, 'C3_图片@家装', 0, '	<list cachetime="1800" action="image" num="7" title="图片X7" />\r\n	<loop>\r\n	<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a></li>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3_图片@家装\',\'图片X7\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'C3_图片@家装', 0, 'channel', 'decoration', 'a:1:{i:51;s:8:"图片X7";}', 0, 0);
INSERT INTO `pw_invoke` (`id`, `name`, `tplid`, `tagcode`, `parsecode`, `title`, `ifapi`, `scr`, `sign`, `pieces`, `state`, `ifverify`) VALUES
(55, 'C4_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', 'C4_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(56, 'D1_标题@家装', 0, ' 装修设计 \r\n\r\n\r\n', ' 装修设计 \r\n\r\n\r\n', 'D1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(57, 'D2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >设计</a> │ <a href="{url}"  target="_blank" >装修</a> │ <a href="{url}"  target="_blank" >问题咨询</a> │ <a href="{url}"  target="_blank" >美图分享</a> │ <a href="{url}"  target="_blank" >曝光</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >设计</a> │ <a href="{url}"  target="_blank" >装修</a> │ <a href="{url}"  target="_blank" >问题咨询</a> │ <a href="{url}"  target="_blank" >美图分享</a> │ <a href="{url}"  target="_blank" >曝光</a> \r\n\r\n\r\n', 'D2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(58, 'D3_左侧标题@家装', 0, ' 装修流程 \r\n\r\n\r\n', ' 装修流程 \r\n\r\n\r\n', 'D3_左侧标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(59, 'D4_栏目导航1@家装', 0, '\r\n<dt><a href="{url}"  target="_blank" >装修前期</a></dt>\r\n<dd><a href="{url}"  target="_blank" >收房验房</a></dd>\r\n<dd><a href="{url}"  target="_blank" >市场调验</a></dd>\r\n<dd><a href="{url}"  target="_blank" >资金准备</a></dd>\r\n<dt><a href="{url}"  target="_blank" >选定方案</a></dt>\r\n<dd><a href="{url}"  target="_blank" >功能风格</a></dd>\r\n<dd><a href="{url}"  target="_blank" >制定预算</a></dd>\r\n<dt><a href="{url}"  target="_blank" >公司选择</a></dt>\r\n\r\n\r\n\r\n', '\r\n<dt><a href="{url}"  target="_blank" >装修前期</a></dt>\r\n<dd><a href="{url}"  target="_blank" >收房验房</a></dd>\r\n<dd><a href="{url}"  target="_blank" >市场调验</a></dd>\r\n<dd><a href="{url}"  target="_blank" >资金准备</a></dd>\r\n<dt><a href="{url}"  target="_blank" >选定方案</a></dt>\r\n<dd><a href="{url}"  target="_blank" >功能风格</a></dd>\r\n<dd><a href="{url}"  target="_blank" >制定预算</a></dd>\r\n<dt><a href="{url}"  target="_blank" >公司选择</a></dt>\r\n\r\n\r\n\r\n', 'D4_栏目导航1@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(60, 'D5_栏目导航2@家装', 0, '\r\n<dd><a href="{url}"  target="_blank" >资质考察</a></dd>\r\n<dd><a href="{url}"  target="_blank" >签订合同</a></dd>\r\n<dt><a href="{url}"  target="_blank" >选购主材</a></dt>\r\n<dd><a href="{url}"  target="_blank" >瓷砖</a></dd>\r\n<dd><a href="{url}"  target="_blank" >地板</a></dd>\r\n<dd><a href="{url}"  target="_blank" >橱柜</a></dd>\r\n<dd><a href="{url}"  target="_blank" >洁具</a></dd>\r\n<dd><a href="{url}"  target="_blank" >家居</a></dd>\r\n\r\n\r\n\r\n', '\r\n<dd><a href="{url}"  target="_blank" >资质考察</a></dd>\r\n<dd><a href="{url}"  target="_blank" >签订合同</a></dd>\r\n<dt><a href="{url}"  target="_blank" >选购主材</a></dt>\r\n<dd><a href="{url}"  target="_blank" >瓷砖</a></dd>\r\n<dd><a href="{url}"  target="_blank" >地板</a></dd>\r\n<dd><a href="{url}"  target="_blank" >橱柜</a></dd>\r\n<dd><a href="{url}"  target="_blank" >洁具</a></dd>\r\n<dd><a href="{url}"  target="_blank" >家居</a></dd>\r\n\r\n\r\n\r\n', 'D5_栏目导航2@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(61, 'D6_栏目导航3@家装', 0, '\r\n<dt><a href="{url}"  target="_blank" >装修施工</a></dt>\r\n<dd><a href="{url}"  target="_blank" >开工准备</a></dd>\r\n<dd><a href="{url}"  target="_blank" >材料进场</a></dd>\r\n<dd><a href="{url}"  target="_blank" >结构改造</a></dd>\r\n<dd><a href="{url}"  target="_blank" >水电改造</a></dd>\r\n<dt><a href="{url}"  target="_blank" >监理验收</a></dt>\r\n<dd><a href="{url}"  target="_blank" >家装监理全过程</a></dd>\r\n<dd><a href="{url}"  target="_blank" >污染检测</a></dd>\r\n\r\n\r\n\r\n', '\r\n<dt><a href="{url}"  target="_blank" >装修施工</a></dt>\r\n<dd><a href="{url}"  target="_blank" >开工准备</a></dd>\r\n<dd><a href="{url}"  target="_blank" >材料进场</a></dd>\r\n<dd><a href="{url}"  target="_blank" >结构改造</a></dd>\r\n<dd><a href="{url}"  target="_blank" >水电改造</a></dd>\r\n<dt><a href="{url}"  target="_blank" >监理验收</a></dt>\r\n<dd><a href="{url}"  target="_blank" >家装监理全过程</a></dd>\r\n<dd><a href="{url}"  target="_blank" >污染检测</a></dd>\r\n\r\n\r\n\r\n', 'D6_栏目导航3@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(62, 'D7_左下标题@家装', 0, ' 施工流程详解 \r\n\r\n\r\n', ' 施工流程详解 \r\n\r\n\r\n', 'D7_左下标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(63, 'D8_左下图文@家装', 0, '	<list cachetime="1800" action="image" num="1" title="图文x1" />\r\n		<loop>\r\n			<div class="subject mb10 cc"><a href="{url}"  target="_blank" ><img src="{image,90,65}" class="fl" width="90" height="65" /></a>\r\n				<h3 class="f14"><a href="{url}"  target="_blank" >{title,20}</a></h3>\r\n				<p class="s2">{descrip,40}</p>\r\n			</div>\r\n		</loop>\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D8_左下图文@家装\',\'图文x1\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<div class="subject mb10 cc"><a href="$val[url]"  target="_blank" ><img src="$val[image]" class="fl" width="90" height="65" /></a>\r\n				<h3 class="f14"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n				<p class="s2">$val[descrip]</p>\r\n			</div>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n', 'D8_左下图文@家装', 0, 'channel', 'decoration', 'a:1:{i:52;s:8:"图文x1";}', 0, 0),
(64, 'D9_左下列表@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题列表x4" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >{title,35}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D9_左下列表@家装\',\'标题列表x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'D9_左下列表@家装', 0, 'channel', 'decoration', 'a:1:{i:53;s:14:"标题列表x4";}', 0, 0),
(65, 'D10_中间摘要@家装', 0, '<list cachetime="1800" action="subject" num="2" title="标题X2" />\r\n<loop>\r\n<li>\r\n	<h2><a href="{url}"  target="_blank" >{title,30}</a></h2>\r\n	<p class="s2">{descrip,90}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D10_中间摘要@家装\',\'标题X2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li>\r\n	<h2><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n	<p class="s2">$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n</li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'D10_中间摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:54;s:8:"标题X2";}', 0, 0),
(66, 'D11_中间标题@家装', 0, ' 小编探店 \r\n\r\n\r\n', ' 小编探店 \r\n\r\n\r\n', 'D11_中间标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(67, 'D12_中间图文@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文x1" />\r\n<loop><a href="{url}"  target="_blank" ><img class="fl" src="{image,120,80}" width="120" height="80" /></a>\r\n<h3 class="f14 fn"><a href="{url}"  target="_blank" >【{forumname,8}】{title,15}</a></h3>\r\n<p>{descrip,80}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D12_中间图文@家装\',\'图文x1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="120" height="80" /></a>\r\n<h3 class="f14 fn"><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></h3>\r\n<p>$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'D12_中间图文@家装', 0, 'channel', 'decoration', 'a:1:{i:55;s:8:"图文x1";}', 0, 0),
(68, 'D13_中间列表@家装', 0, '<list cachetime="1800" action="subject" num="6" title="标题列表" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >{title,45}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D13_中间列表@家装\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'D13_中间列表@家装', 0, 'channel', 'decoration', 'a:1:{i:56;s:12:"标题列表";}', 0, 0),
(69, 'D14_右上标题@家装', 0, ' 设计师之家 \r\n\r\n\r\n', ' 设计师之家 \r\n\r\n\r\n', 'D14_右上标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(70, 'D15_右上图文@家装', 0, '<list cachetime="1800" action="image" num="2" title="图文列表_2" />\r\n<loop>\r\n<li> <a href="{url}"  target="_blank" ><img class="fl" src="{image,60,60}" width="60" height="60" /></a>\r\n	<div class="infos">\r\n		<div class="wrap">\r\n<h4><a href="{url}"  target="_blank" >{title,25}</a></h4>\r\n<p>{descrip,40}</p>\r\n<s></s> </div>\r\n	</div>\r\n</li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D15_右上图文@家装\',\'图文列表_2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li> <a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="60" height="60" /></a>\r\n	<div class="infos">\r\n		<div class="wrap">\r\n<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n<p>$val[descrip]</p>\r\n<s></s> </div>\r\n	</div>\r\n</li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'D15_右上图文@家装', 0, 'channel', 'decoration', 'a:1:{i:57;s:14:"图文列表_2";}', 0, 0),
(71, 'D16_右下标题@家装', 0, ' 户型分析 \r\n\r\n\r\n', ' 户型分析 \r\n\r\n\r\n', 'D16_右下标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(72, 'D17_右下图文@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文1" />\r\n	<loop> \r\n	<a href="{url}"  target="_blank" ><img class="fl" src="{image,85,65}" width="85" height="65" /></a>\r\n	<h3><a href="{url}"  target="_blank" >{title,25}</a></h3>\r\n	<p class="s2">{descrip,60}</p>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D17_右下图文@家装\',\'图文1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n \r\n	<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="85" height="65" /></a>\r\n	<h3><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n	<p class="s2">$val[descrip]</p>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'D17_右下图文@家装', 0, 'channel', 'decoration', 'a:1:{i:58;s:7:"图文1";}', 0, 0),
(73, 'D18_右下列表@家装', 0, '<list cachetime="1800" action="subject" num="6" title="标题列表" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D18_右下列表@家装\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'D18_右下列表@家装', 0, 'channel', 'decoration', 'a:1:{i:59;s:12:"标题列表";}', 0, 0),
(74, 'D19_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', 'D19_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(75, 'E1_标题@家装', 0, ' 家装日志 \r\n\r\n\r\n', ' 家装日志 \r\n\r\n\r\n', 'E1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(76, 'E2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >装修日记</a> │ <a href="{url}"  target="_blank" >家居图片</a> │ <a href="{url}"  target="_blank" >装修日记大赛</a> │ <a href="{url}"  target="_blank" >家装心得</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >装修日记</a> │ <a href="{url}"  target="_blank" >家居图片</a> │ <a href="{url}"  target="_blank" >装修日记大赛</a> │ <a href="{url}"  target="_blank" >家装心得</a> \r\n\r\n\r\n', 'E2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(77, 'E3_标题1@家装', 0, ' 我秀我家--准备 \r\n\r\n\r\n', ' 我秀我家--准备 \r\n\r\n\r\n', 'E3_标题1@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(78, 'E4_图片1@家装', 0, '<list cachetime="1800" action="image" num="4" title="图片列表X4" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" ><img src="{image,90,65}" width="90" height="65" />{title,15}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'E4_图片1@家装\',\'图片列表X4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="65" />$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'E4_图片1@家装', 0, 'channel', 'decoration', 'a:1:{i:60;s:14:"图片列表X4";}', 0, 0),
(79, 'E5_标题2@家装', 0, ' 我秀我家--进行 \r\n\r\n\r\n', ' 我秀我家--进行 \r\n\r\n\r\n', 'E5_标题2@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(80, 'E6_图片2@家装', 0, '<list cachetime="1800" action="image" num="4" title="图片列表X4" />\r\n<loop><li><a href="{url}"  target="_blank" ><img src="{image,90,65}" width="90" height="65" />{title,15}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'E6_图片2@家装\',\'图片列表X4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="65" />$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'E6_图片2@家装', 0, 'channel', 'decoration', 'a:1:{i:61;s:14:"图片列表X4";}', 0, 0),
(81, 'E7_标题3@家装', 0, ' 我秀我家--完成 \r\n\r\n\r\n', ' 我秀我家--完成 \r\n\r\n\r\n', 'E7_标题3@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(82, 'E8_图片3@家装', 0, '	<list cachetime="1800" action="image" num="4" title="图片列表x4" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,90,65}" width="90" height="65" />{title,15}</a></li>\r\n		</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E8_图片3@家装\',\'图片列表x4\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="65" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'E8_图片3@家装', 0, 'channel', 'decoration', 'a:1:{i:62;s:14:"图片列表x4";}', 0, 0),
(83, 'E9_标题4@家装', 0, ' 我秀我家--其他 \r\n\r\n\r\n', ' 我秀我家--其他 \r\n\r\n\r\n', 'E9_标题4@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(84, 'E10_图片4@家装', 0, '	<list cachetime="1800" action="image" num="4" title="图片X4" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,90,65}" width="90" height="65" />{title,15}</a></li>\r\n		</loop>\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E10_图片4@家装\',\'图片X4\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="65" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'E10_图片4@家装', 0, 'channel', 'decoration', 'a:1:{i:63;s:8:"图片X4";}', 0, 0),
(85, 'E11_左下图文@家装', 0, '	<list cachetime="1800" action="image" num="1" title="图文X1" />\r\n	<loop>\r\n	<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,75}" width="95" height="75" /></a>\r\n	<h3 class="f14"><a href="{url}"  target="_blank" >{title,25}</a></h3>\r\n	<p>{descrip,100}</p>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E11_左下图文@家装\',\'图文X1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="75" /></a>\r\n	<h3 class="f14"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n	<p>$val[descrip]</p>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'E11_左下图文@家装', 0, 'channel', 'decoration', 'a:1:{i:64;s:8:"图文X1";}', 0, 0),
(86, 'E12_右下列表@家装', 0, '	<list cachetime="1800" action="subject" num="8" title="标题列表x8" />\r\n	<loop>\r\n	<li><a class="s1" href="{url}"  target="_blank" >{title,35}</a></li>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E12_右下列表@家装\',\'标题列表x8\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'E12_右下列表@家装', 0, 'channel', 'decoration', 'a:1:{i:65;s:14:"标题列表x8";}', 0, 0),
(87, 'E13_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="90" /></a> \r\n\r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="90" /></a> \r\n\r\n\r\n\r\n', 'E13_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(88, 'F1_标题@家装', 0, ' 家居生活 \r\n\r\n\r\n', ' 家居生活 \r\n\r\n\r\n', 'F1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(89, 'F2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >家具</a> │ <a href="{url}"  target="_blank" >布艺家纺</a> │ <a href="{url}"  target="_blank" >灯具灯饰</a> │ <a href="{url}"  target="_blank" >我秀我家</a> | <a href="{url}"  target="_blank" >十字绣</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >家具</a> │ <a href="{url}"  target="_blank" >布艺家纺</a> │ <a href="{url}"  target="_blank" >灯具灯饰</a> │ <a href="{url}"  target="_blank" >我秀我家</a> | <a href="{url}"  target="_blank" >十字绣</a> \r\n\r\n\r\n', 'F2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(90, 'F3_左侧标题@家装', 0, ' 家居风水 \r\n\r\n\r\n', ' 家居风水 \r\n\r\n\r\n', 'F3_左侧标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(91, 'F4_左侧图文@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文列表" />\r\n	<loop>\r\n		<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,75}" width="95" height="75" /></a>\r\n		<h3 class="f14"><a href="{url}"  target="_blank" >{title,20}</a></h3>\r\n		<p>{descrip,70}</p>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F4_左侧图文@家装\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="75" /></a>\r\n		<h3 class="f14"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n		<p>$val[descrip]</p>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'F4_左侧图文@家装', 0, 'channel', 'decoration', 'a:1:{i:66;s:12:"图文列表";}', 0, 0),
(92, 'F5_左侧列表@家装', 0, '<list cachetime="1800" action="subject" num="5" title="标题列表x5" />\r\n<loop><li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,30}</a></li></loop>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F5_左侧列表@家装\',\'标题列表x5\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'F5_左侧列表@家装', 0, 'channel', 'decoration', 'a:1:{i:67;s:14:"标题列表x5";}', 0, 0),
(93, 'F6_左侧图片@家装', 0, '	<list cachetime="1800" action="image" num="3" title="图片X3" />\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,85,100}" width="85" height="100" />{title,12}</a></li>\r\n		</loop>\r\n\r\n\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'F6_左侧图片@家装\',\'图片X3\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="85" height="100" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'F6_左侧图片@家装', 0, 'channel', 'decoration', 'a:1:{i:68;s:8:"图片X3";}', 0, 0),
(94, 'F7_中间摘要@家装', 0, '<list cachetime="1800" action="subject" num="2" title="标题摘要X2" />\r\n	<loop>\r\n	<li>\r\n		<h2><a href="{url}"  target="_blank" >{title,30}</a></h2>\r\n		<p class="s2">{descrip,90}  <a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n	</li>\r\n	</loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F7_中间摘要@家装\',\'标题摘要X2\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li>\r\n		<h2><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n		<p class="s2">$val[descrip]  <a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n	</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'F7_中间摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:69;s:14:"标题摘要X2";}', 0, 0),
(95, 'F8_中间标题@家装', 0, ' 潮流设计 \r\n\r\n\r\n', ' 潮流设计 \r\n\r\n\r\n', 'F8_中间标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(96, 'F9_中间图文@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文X1" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,120,80}" width="120" height="80" /></a>\r\n<h3 class="f14"><a href="{url}"  target="_blank" >{title,24}</a></h3>\r\n<p>{descrip,80} <a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n \r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F9_中间图文@家装\',\'图文X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="120" height="80" /></a>\r\n<h3 class="f14"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p>$val[descrip] <a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n \r\n\r\n\r\n\r\n\r\n', 'F9_中间图文@家装', 0, 'channel', 'decoration', 'a:1:{i:70;s:8:"图文X1";}', 0, 0),
(97, 'F10_中间列表@家装', 0, '<list cachetime="1800" action="subject" num="3" title="标题X3" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >{title,50}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F10_中间列表@家装\',\'标题X3\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'F10_中间列表@家装', 0, 'channel', 'decoration', 'a:1:{i:71;s:8:"标题X3";}', 0, 0),
(98, 'F11_右上标题@家装', 0, ' 家居搭配 \r\n\r\n\r\n', ' 家居搭配 \r\n\r\n\r\n', 'F11_右上标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(99, 'F12_右上图片@家装', 0, '<list cachetime="1800" action="image" num="3" title="图片x3" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" ><img src="{image,70,70}" width="70" height="70" />{title,12}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F12_右上图片@家装\',\'图片x3\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="70" height="70" />$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'F12_右上图片@家装', 0, 'channel', 'decoration', 'a:1:{i:72;s:8:"图片x3";}', 0, 0),
(100, 'F13_右上列表@家装', 0, '\r\n<list cachetime="1800" action="subject" num="2" title="标题X2" />\r\n<loop>\r\n<li><a class="s2" href="{url}"  target="_blank" >{title,30}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'F13_右上列表@家装\',\'标题X2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'F13_右上列表@家装', 0, 'channel', 'decoration', 'a:1:{i:73;s:8:"标题X2";}', 0, 0),
(101, 'F14_右下标题@家装', 0, ' 编辑带您选家居 \r\n\r\n\r\n', ' 编辑带您选家居 \r\n\r\n\r\n', 'F14_右下标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(102, 'F15_右下摘要@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文X1" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,85,65}" width="85" height="65" /></a>\r\n<h3><a href="{url}"  target="_blank" >{title,20}</a></h3>\r\n<p>{descrip,50}</p>\r\n</loop>\r\n \r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F15_右下摘要@家装\',\'图文X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="85" height="65" /></a>\r\n<h3><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p>$val[descrip]</p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n \r\n\r\n\r\n\r\n', 'F15_右下摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:74;s:8:"图文X1";}', 0, 0),
(103, 'F16_右下列表@家装', 0, '<list cachetime="1800" action="subject" num="3" title="标题x3" />\r\n<loop>\r\n<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'F16_右下列表@家装\',\'标题x3\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'F16_右下列表@家装', 0, 'channel', 'decoration', 'a:1:{i:75;s:8:"标题x3";}', 0, 0),
(104, 'F17_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x90.png" width="940" height="90" />\r\n</a> \r\n\r\n\r\n', 'F17_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(105, 'G1_标题@家装', 0, ' 家装建材 \r\n\r\n\r\n', ' 家装建材 \r\n\r\n\r\n', 'G1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(106, 'G2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >瓷砖</a> │ <a href="{url}"  target="_blank" >涂料</a> │ <a href="{url}"  target="_blank" >照明</a> │ <a href="{url}"  target="_blank" >门窗楼梯</a> | <a href="{url}"  target="_blank" >地板</a> | <a href="{url}"  target="_blank" >橱柜</a> | <a href="{url}"  target="_blank" >吊顶</a> | <a href="{url}"  target="_blank" >卫浴</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >瓷砖</a> │ <a href="{url}"  target="_blank" >涂料</a> │ <a href="{url}"  target="_blank" >照明</a> │ <a href="{url}"  target="_blank" >门窗楼梯</a> | <a href="{url}"  target="_blank" >地板</a> | <a href="{url}"  target="_blank" >橱柜</a> | <a href="{url}"  target="_blank" >吊顶</a> | <a href="{url}"  target="_blank" >卫浴</a> \r\n\r\n\r\n', 'G2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(107, 'G3_左上标题@家装', 0, ' 卖场寻店 \r\n\r\n\r\n', ' 卖场寻店 \r\n\r\n\r\n', 'G3_左上标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(108, 'G4_左上图文1@家装', 0, '	<list cachetime="1800" action="image" num="1" title="图片x1" />\r\n	<loop>\r\n	<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,60}" width="95" height="60" /></a>\r\n	</loop>\r\n	<list cachetime="1800" action="subject" num="3" title="标题x3" />\r\n	<ul class="list">\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n		</loop>\r\n	</ul>\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4_左上图文1@家装\',\'图片x1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="60" /></a>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4_左上图文1@家装\',\'标题x3\');\r\nprint <<<EOT\r\n\r\n	<ul class="list">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n\r\n\r\n', 'G4_左上图文1@家装', 0, 'channel', 'decoration', 'a:2:{i:76;s:8:"图片x1";i:77;s:8:"标题x3";}', 0, 0),
(109, 'G6_左上图文2@家装', 0, '	<list cachetime="1800" action="image" num="1" title="图片x1" />\r\n	<loop>\r\n	<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,60}" width="95" height="60" /></a>\r\n	</loop>\r\n	<list cachetime="1800" action="subject" num="3" title="标题x3" />\r\n	<ul class="list">\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n		</loop>\r\n	</ul>\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G6_左上图文2@家装\',\'图片x1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="60" /></a>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G6_左上图文2@家装\',\'标题x3\');\r\nprint <<<EOT\r\n\r\n	<ul class="list">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n\r\n\r\n', 'G6_左上图文2@家装', 0, 'channel', 'decoration', 'a:2:{i:78;s:8:"图片x1";i:79;s:8:"标题x3";}', 0, 0),
(110, 'G8_左下标题@家装', 0, ' 小编手记 \r\n\r\n\r\n', ' 小编手记 \r\n\r\n\r\n', 'G8_左下标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(111, 'G9_左下图文@家装', 0, '	<list cachetime="1800" action="image" num="1" title="图片x1" />\r\n	<loop>\r\n	<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,60}" width="95" height="60" /></a>\r\n	</loop>\r\n	<list cachetime="1800" action="subject" num="3" title="标题x3" />\r\n	<ul class="list">\r\n		<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n		</loop>\r\n	</ul>\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G9_左下图文@家装\',\'图片x1\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="60" /></a>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G9_左下图文@家装\',\'标题x3\');\r\nprint <<<EOT\r\n\r\n	<ul class="list">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n\r\n\r\n', 'G9_左下图文@家装', 0, 'channel', 'decoration', 'a:2:{i:80;s:8:"图片x1";i:81;s:8:"标题x3";}', 0, 0),
(112, 'G11_中间图文1@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,125,85}" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="{url}"  target="_blank" >{title,10}</a></h3>\r\n<p class="s2">{descrip,50}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G11_中间图文1@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p class="s2">$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'G11_中间图文1@家装', 0, 'channel', 'decoration', 'a:1:{i:82;s:6:"图文";}', 0, 0),
(113, 'G12_中间列表1@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题x4" />\r\n<loop><li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G12_中间列表1@家装\',\'标题x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G12_中间列表1@家装', 0, 'channel', 'decoration', 'a:1:{i:83;s:8:"标题x4";}', 0, 0),
(114, 'G13_中间图文2@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,125,85}" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="{url}"  target="_blank" >{title,10}</a></h3>\r\n<p class="s2">{descrip,50}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G13_中间图文2@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p class="s2">$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G13_中间图文2@家装', 0, 'channel', 'decoration', 'a:1:{i:84;s:6:"图文";}', 0, 0),
(115, 'G14_中间列表2@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题x4" />\r\n<loop><li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G14_中间列表2@家装\',\'标题x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G14_中间列表2@家装', 0, 'channel', 'decoration', 'a:1:{i:85;s:8:"标题x4";}', 0, 0),
(116, 'G15_中间图文3@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,125,85}" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="{url}"  target="_blank" >{title,10}</a></h3>\r\n<p class="s2">{descrip,50}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G15_中间图文3@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p class="s2">$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G15_中间图文3@家装', 0, 'channel', 'decoration', 'a:1:{i:86;s:6:"图文";}', 0, 0),
(117, 'G16_中间列表3@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题x4" />\r\n<loop><li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G16_中间列表3@家装\',\'标题x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'G16_中间列表3@家装', 0, 'channel', 'decoration', 'a:1:{i:87;s:8:"标题x4";}', 0, 0),
(118, 'G17_中间图文4@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,125,85}" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="{url}"  target="_blank" >{title,10}</a></h3>\r\n<p class="s2">{descrip,50}<a class="s1" href="{url}"  target="_blank" >[详情]</a></p>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G17_中间图文4@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="125" height="85" /></a>\r\n<h3 class="f14 s1"><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p class="s2">$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >[详情]</a></p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G17_中间图文4@家装', 0, 'channel', 'decoration', 'a:1:{i:88;s:6:"图文";}', 0, 0),
(119, 'G18_中间列表4@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题x4" />\r\n<loop><li><a href="{url}"  target="_blank" >{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'G18_中间列表4@家装\',\'标题x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'G18_中间列表4@家装', 0, 'channel', 'decoration', 'a:1:{i:89;s:8:"标题x4";}', 0, 0),
(120, 'G19_横幅广告@家装', 0, ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="70" />\r\n</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" ><img src="mode/area/themes/decoration/temp/ad940x70.png" width="940" height="70" />\r\n</a> \r\n\r\n\r\n', 'G19_横幅广告@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(121, 'H1_标题@家装', 0, ' 家电采购 \r\n\r\n\r\n', ' 家电采购 \r\n\r\n\r\n', 'H1_标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(122, 'H2_栏目导航@家装', 0, ' <a href="{url}"  target="_blank" >电视</a> │ <a href="{url}"  target="_blank" >冰箱</a> │ <a href="{url}"  target="_blank" >洗衣机</a> │ <a href="{url}"  target="_blank" >空调</a> | <a href="{url}"  target="_blank" >碟机音响</a> | <a href="{url}"  target="_blank" >厨卫电器</a> | <a href="{url}"  target="_blank" >小家电</a> \r\n\r\n\r\n', ' <a href="{url}"  target="_blank" >电视</a> │ <a href="{url}"  target="_blank" >冰箱</a> │ <a href="{url}"  target="_blank" >洗衣机</a> │ <a href="{url}"  target="_blank" >空调</a> | <a href="{url}"  target="_blank" >碟机音响</a> | <a href="{url}"  target="_blank" >厨卫电器</a> | <a href="{url}"  target="_blank" >小家电</a> \r\n\r\n\r\n', 'H2_栏目导航@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(123, 'H3_左侧标题@家装', 0, ' 家电维修 \r\n\r\n\r\n', ' 家电维修 \r\n\r\n\r\n', 'H3_左侧标题@家装', 0, 'channel', 'decoration', 'a:0:{}', 0, 0),
(124, 'H4_左侧图文@家装', 0, '<list cachetime="1800" action="image" num="1" title="图文x1" />\r\n<loop>\r\n<a href="{url}"  target="_blank" ><img class="fl" src="{image,95,85}" width="95" height="85" /></a>\r\n<h3><a href="{url}"  target="_blank" >{title,25}</a></h3>\r\n<p class="s2">{descrip,70}</p>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'H4_左侧图文@家装\',\'图文x1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="95" height="85" /></a>\r\n<h3><a href="$val[url]"  target="_blank" >$val[title]</a></h3>\r\n<p class="s2">$val[descrip]</p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'H4_左侧图文@家装', 0, 'channel', 'decoration', 'a:1:{i:90;s:8:"图文x1";}', 0, 0),
(125, 'H5_左侧列表@家装', 0, '<list cachetime="1800" action="subject" num="4" title="标题x4" />\r\n<loop><li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,20}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'H5_左侧列表@家装\',\'标题x4\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'H5_左侧列表@家装', 0, 'channel', 'decoration', 'a:1:{i:91;s:8:"标题x4";}', 0, 0),
(126, 'H6_中间图片@家装', 0, '<list cachetime="1800" action="image" num="4" title="图文" />\r\n<loop><li class="fl"><div class="pho"><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a></div><a href="{url}"  target="_blank"  class="s2">{title,10}</a></li></loop>\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'H6_中间图片@家装\',\'图文\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li class="fl"><div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a></div><a href="$val[url]"  target="_blank"  class="s2">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'H6_中间图片@家装', 0, 'channel', 'decoration', 'a:1:{i:92;s:6:"图文";}', 0, 0),
(127, 'H7_右侧摘要@家装', 0, '<list cachetime="1800" action="subject" num="2" title="标题摘要x2" />\r\n<loop><li><h2><a class="s1" href="{url}"  target="_blank" >{title,35}</a></h2><p class="s2">{descrip,70} <a href="{url}"  target="_blank"  class="s1">[详情]</a></p></li>\r\n</loop>\r\n\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'H7_右侧摘要@家装\',\'标题摘要x2\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><h2><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h2><p class="s2">$val[descrip] <a href="$val[url]"  target="_blank"  class="s1">[详情]</a></p></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n\r\n', 'H7_右侧摘要@家装', 0, 'channel', 'decoration', 'a:1:{i:93;s:14:"标题摘要x2";}', 0, 0),
(128, 'H8_右侧列表@家装', 0, '<list cachetime="1800" action="subject" num="3" title="标题x3" />\r\n<loop><li><a href="{url}"  target="_blank" >{title,40}</a></li></loop>\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'H8_右侧列表@家装\',\'标题x3\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n', 'H8_右侧列表@家装', 0, 'channel', 'decoration', 'a:1:{i:94;s:8:"标题x3";}', 0, 0),
(129, 'A2_顶部栏目导航@汽车', 0, '		<li class="switchNavItem"><a href=""  target="_blank" >驾培中心</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >我要买车</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >杭州车友</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >酷改美容</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >车险百事通</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >车友会</a></li>\r\n\r\n', '		<li class="switchNavItem"><a href=""  target="_blank" >驾培中心</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >我要买车</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >杭州车友</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >酷改美容</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >车险百事通</a></li>\r\n		<li class="switchNavItem"><a href=""  target="_blank" >车友会</a></li>\r\n\r\n', 'A2_顶部栏目导航@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(130, 'B1_播放器@汽车', 0, '		<div class="pwSlide" id="pwSlidePlayerA" >\r\n			<list cachetime="1800" action="image" num="4" title="图片" />\r\n			<ul class="switch" id="PP1_A" >\r\n<!--#$count=0;#-->\r\n				<loop>\r\n	\r\n					<li class="switchItem" style="display:"><a href="{url}"  target="_blank" > <img src="{image,300,250}" width="300" height="250" />\r\n						<h3>{title,20}</h3>\r\n						</a> </li>\r\n<!--#$count++;#-->\r\n				</loop>\r\n			</ul>\r\n			<div class="pwSlide-bg"></div>\r\n			<ul class="SwitchNav" id="PP1_B">\r\n<!--#if($count){#-->		\r\n<!--#for($i = 1; $i<=$count; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->	\r\n<!--#}#-->	\r\n			</ul>\r\n		</div>\r\n		<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n		<script>ddSliderPlayers(\'PP1_A\',\'PP1_B\',4,\'current\');</script>\r\n		\r\n', '		<div class="pwSlide" id="pwSlidePlayerA" >\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'B1_播放器@汽车\',\'图片\');\r\nprint <<<EOT\r\n\r\n			<ul class="switch" id="PP1_A" >\r\n<!--#$count=0;#-->\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	\r\n					<li class="switchItem" style="display:"><a href="$val[url]"  target="_blank" > <img src="$val[image]" width="300" height="250" />\r\n						<h3>$val[title]</h3>\r\n						</a> </li>\r\n<!--#$count++;#-->\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			<div class="pwSlide-bg"></div>\r\n			<ul class="SwitchNav" id="PP1_B">\r\n<!--#if($count){#-->		\r\n<!--#for($i = 1; $i<=$count; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->	\r\n<!--#}#-->	\r\n			</ul>\r\n		</div>\r\n		<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n		<script>ddSliderPlayers(\'PP1_A\',\'PP1_B\',4,\'current\');</script>\r\n		\r\n', 'B1_播放器@汽车', 0, 'channel', 'auto', 'a:1:{i:95;s:6:"图片";}', 0, 0),
(131, 'B2_左侧标题@汽车', 0, '\r\n				<h3>潮流活动志</h3>\r\n				<a class="more" href="#"  target="_blank" >更多>></a> \r\n				\r\n				\r\n				\r\n', '\r\n				<h3>潮流活动志</h3>\r\n				<a class="more" href="#"  target="_blank" >更多>></a> \r\n				\r\n				\r\n				\r\n', 'B2_左侧标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(132, 'B3_左侧内容@汽车', 0, '<list cachetime="1800" action="image" num="3" title="图文列表X3" />\r\n\r\n				<ul class="subjectList cc" style="padding-bottom:3px; *padding-bottom:13px; _padding-bottom:3px;">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" ><img src="{image,95,70}" height="70" width="95" class="fl" /></a>\r\n						<h4><a class="s2" href="{url}"  target="_blank" >{title,25}</a></h4>\r\n						<p>{descrip,75}</p>\r\n					</li>\r\n					</loop>\r\n				</ul>\r\n				\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B3_左侧内容@汽车\',\'图文列表X3\');\r\nprint <<<EOT\r\n\r\n\r\n				<ul class="subjectList cc" style="padding-bottom:3px; *padding-bottom:13px; _padding-bottom:3px;">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" height="70" width="95" class="fl" /></a>\r\n						<h4><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n						<p>$val[descrip]</p>\r\n					</li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n				\r\n', 'B3_左侧内容@汽车', 0, 'channel', 'auto', 'a:1:{i:96;s:14:"图文列表X3";}', 0, 0),
(133, 'B4_左侧列表@汽车', 0, '<list cachetime="1800" action="subject" num="8" title="标题列表X8" />\r\n<ul class="list" style="margin:10px 0 5px;">\r\n<loop>\r\n	<li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,35}</a></li>\r\n	</loop>\r\n</ul>\r\n				\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B4_左侧列表@汽车\',\'标题列表X8\');\r\nprint <<<EOT\r\n\r\n<ul class="list" style="margin:10px 0 5px;">\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n				\r\n', 'B4_左侧列表@汽车', 0, 'channel', 'auto', 'a:1:{i:97;s:14:"标题列表X8";}', 0, 0),
(134, 'B5_今日聚焦标题@汽车', 0, '\r\n今日聚焦\r\n				\r\n', '\r\n今日聚焦\r\n				\r\n', 'B5_今日聚焦标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(135, 'B6_今日聚焦头条@汽车', 0, '	<ul class="top1" style="margin-top:11px;">\r\n	<list cachetime="1800" action="subject" num="3" title="标题摘要X3" />\r\n	<loop>\r\n		<li>\r\n<h2><a class="s1" href="{url}"  target="_blank" >{title,35}</a></h2>\r\n<p>{descrip,110} <a href="{url}"  target="_blank"  class="s1">[详情]</a></p>\r\n		</li>\r\n		</loop>\r\n	</ul>\r\n	\r\n\r\n\r\n\r\n', '	<ul class="top1" style="margin-top:11px;">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B6_今日聚焦头条@汽车\',\'标题摘要X3\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li>\r\n<h2><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n<p>$val[descrip] <a href="$val[url]"  target="_blank"  class="s1">[详情]</a></p>\r\n		</li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n	\r\n\r\n\r\n\r\n', 'B6_今日聚焦头条@汽车', 0, 'channel', 'auto', 'a:1:{i:98;s:14:"标题摘要X3";}', 0, 0),
(136, 'B7_今日聚焦列表@汽车', 0, '	<list cachetime="1800" action="subject" num="12" title="标题列表X12" />\r\n	<ul class="list list2Col cc mt10" style="padding-top:3px;padding-bottom:2px">\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>\r\n	</ul>\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B7_今日聚焦列表@汽车\',\'标题列表X12\');\r\nprint <<<EOT\r\n\r\n	<ul class="list list2Col cc mt10" style="padding-top:3px;padding-bottom:2px">\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B7_今日聚焦列表@汽车', 0, 'channel', 'auto', 'a:1:{i:99;s:15:"标题列表X12";}', 0, 0),
(137, 'B8_banner@汽车', 0, '<div class="mt10"><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad395x70.png" width="395" height="70" /></a></div>\r\n		\r\n', '<div class="mt10"><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad395x70.png" width="395" height="70" /></a></div>\r\n		\r\n', 'B8_banner@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(138, 'B9_中下标题@汽车', 0, '	汽车情报站\r\n				\r\n', '	汽车情报站\r\n				\r\n', 'B9_中下标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(139, 'B10_中下右侧文字@汽车', 0, '				\r\n<li><a href="#"  target="_blank" title="{车讯}">车讯</a> |</li>\r\n<li><a href="#"  target="_blank" title="{评测}">评测</a> |</li>\r\n<li><a href="#"  target="_blank" title="{试驾}">试驾</a> |</li>\r\n<li><a href="#"  target="_blank" title="{导购}">导购</a> |</li>\r\n<li><a href="#"  target="_blank" title="{咨询}">咨询</a></li>\r\n				\r\n', '				\r\n<li><a href="#"  target="_blank" title="{车讯}">车讯</a> |</li>\r\n<li><a href="#"  target="_blank" title="{评测}">评测</a> |</li>\r\n<li><a href="#"  target="_blank" title="{试驾}">试驾</a> |</li>\r\n<li><a href="#"  target="_blank" title="{导购}">导购</a> |</li>\r\n<li><a href="#"  target="_blank" title="{咨询}">咨询</a></li>\r\n				\r\n', 'B10_中下右侧文字@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(140, 'B11_中下图文1@汽车', 0, '<list cachetime="1800" action="image" num="1" title="图文列表X1" />\r\n<loop><div class="img"><a href="{url}"  target="_blank"  class="s2"><img src="{image,95,70}" width="95" height="70" />{title,15}</a></div>\r\n</loop>\r\n<ul class="list">\r\n<list cachetime="1800" action="subject" num="5" title="标题列表X5" />\r\n<loop>\r\n<li><a  href="{url}"  target="_blank" >{title,40}</a></li>\r\n</loop>	\r\n		</ul>\r\n		\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B11_中下图文1@汽车\',\'图文列表X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<div class="img"><a href="$val[url]"  target="_blank"  class="s2"><img src="$val[image]" width="95" height="70" />$val[title]</a></div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n<ul class="list">\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'B11_中下图文1@汽车\',\'标题列表X5\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a  href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n	\r\n		</ul>\r\n		\r\n\r\n', 'B11_中下图文1@汽车', 0, 'channel', 'auto', 'a:2:{i:100;s:14:"图文列表X1";i:101;s:14:"标题列表X5";}', 0, 0);
INSERT INTO `pw_invoke` (`id`, `name`, `tplid`, `tagcode`, `parsecode`, `title`, `ifapi`, `scr`, `sign`, `pieces`, `state`, `ifverify`) VALUES
(141, 'B12_中下图文2@汽车', 0, '<list cachetime="1800" action="image" num="1" title="图文列表X1" />\r\n<loop>\r\n<div class="img"><a href="{url}"  target="_blank"  class="s2"><img src="{image,95,70}" width="95" height="70" />{title,15}</a></div>\r\n</loop>\r\n<ul class="list">\r\n<list cachetime="1800" action="subject" num="5" title="标题列表X5" />\r\n<loop>\r\n<li><a  href="{url}"  target="_blank" >{title,40}</a></li>\r\n</loop>	\r\n		</ul>\r\n		\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B12_中下图文2@汽车\',\'图文列表X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<div class="img"><a href="$val[url]"  target="_blank"  class="s2"><img src="$val[image]" width="95" height="70" />$val[title]</a></div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n<ul class="list">\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'B12_中下图文2@汽车\',\'标题列表X5\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<li><a  href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n	\r\n		</ul>\r\n		\r\n\r\n', 'B12_中下图文2@汽车', 0, 'channel', 'auto', 'a:2:{i:102;s:14:"图文列表X1";i:103;s:14:"标题列表X5";}', 0, 0),
(142, 'B13_顶部右侧广告@汽车', 0, '<div><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad225x225.png" width="225" height="220" /></a></div>\r\n\r\n\r\n', '<div><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad225x225.png" width="225" height="220" /></a></div>\r\n\r\n\r\n', 'B13_顶部右侧广告@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(143, 'B14_右上标题@汽车', 0, '\r\n				<h3>新车试驾</h3>\r\n				<a class="more" href="#"  target="_blank" >更多</a>\r\n', '\r\n				<h3>新车试驾</h3>\r\n				<a class="more" href="#"  target="_blank" >更多</a>\r\n', 'B14_右上标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(144, 'B15_右上列表@汽车', 0, '\r\n<ul class="list">\r\n<list cachetime="1800" action="subject" num="5" title="标题列表X5" />\r\n	<loop>\r\n	<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>	\r\n				\r\n', '\r\n<ul class="list">\r\n\r\nEOT;\r\n$pwresult = pwTplGetData(\'B15_右上列表@汽车\',\'标题列表X5\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n	\r\n				\r\n', 'B15_右上列表@汽车', 0, 'channel', 'auto', 'a:1:{i:104;s:14:"标题列表X5";}', 0, 0),
(145, 'B16_右上图片@汽车', 0, '	<ul class="imgList cc">\r\n	<list cachetime="1800" action="image" num="2" title="图片列表X2" />\r\n		<loop>\r\n		<li><a class="s2" href="{url}"  target="_blank" ><img src="{image,90,70}" width="90" height="70" />{title,15}</a></li>\r\n		</loop>\r\n	</ul>\r\n	\r\n\r\n', '	<ul class="imgList cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B16_右上图片@汽车\',\'图片列表X2\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a class="s2" href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="70" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n	\r\n\r\n', 'B16_右上图片@汽车', 0, 'channel', 'auto', 'a:1:{i:105;s:14:"图片列表X2";}', 0, 0),
(146, 'B17_右下标题@汽车', 0, '\r\n<h3>新车试驾</h3>\r\n<a class="more" href="#"  target="_blank" >更多</a>\r\n', '\r\n<h3>新车试驾</h3>\r\n<a class="more" href="#"  target="_blank" >更多</a>\r\n', 'B17_右下标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(147, 'B18_右下排行@汽车', 0, '\r\n<ol class="rankingList">\r\n	<list cachetime="1800" action="subject" num="10" title="标题列表X10" />\r\n	<loop>\r\n	<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>\r\n</ol>\r\n				\r\n', '\r\n<ol class="rankingList">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B18_右下排行@汽车\',\'标题列表X10\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ol>\r\n				\r\n', 'B18_右下排行@汽车', 0, 'channel', 'auto', 'a:1:{i:106;s:15:"标题列表X10";}', 0, 0),
(148, 'B19中部banner@汽车', 0, '\r\n<div class="mt10"><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', '\r\n<div class="mt10"><a href="{url}"  target="_blank" ><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', 'B19中部banner@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(149, 'C1_标题@汽车', 0, '				热销车型推荐\r\n', '				热销车型推荐\r\n', 'C1_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(150, 'C2_tab@汽车', 0, '<li class="switchNavItem"><a href="#"  target="_blank">微型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">小型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">紧凑</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">中型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">中大型车</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">豪华车</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">SUV</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">MPV</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">跑车</a></li>\r\n\r\n		\r\n\r\n', '<li class="switchNavItem"><a href="#"  target="_blank">微型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">小型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">紧凑</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">中型</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">中大型车</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">豪华车</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">SUV</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">MPV</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">跑车</a></li>\r\n\r\n		\r\n\r\n', 'C2_tab@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(151, 'C3A_tab内容1@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3A_tab内容1@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3A_tab内容1@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3A_tab内容1@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3A_tab内容1@汽车', 0, 'channel', 'auto', 'a:3:{i:107;s:15:"特别推荐车";i:108;s:21:"特别推荐车描述";i:109;s:15:"车图列表X10";}', 0, 0),
(152, 'C3B_tab内容2@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3B_tab内容2@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3B_tab内容2@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3B_tab内容2@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3B_tab内容2@汽车', 0, 'channel', 'auto', 'a:3:{i:110;s:15:"特别推荐车";i:111;s:21:"特别推荐车描述";i:112;s:15:"车图列表X10";}', 0, 0),
(153, 'C3C_tab内容3@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3C_tab内容3@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3C_tab内容3@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3C_tab内容3@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3C_tab内容3@汽车', 0, 'channel', 'auto', 'a:3:{i:113;s:15:"特别推荐车";i:114;s:21:"特别推荐车描述";i:115;s:15:"车图列表X10";}', 0, 0),
(154, 'C3D_tab内容4@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3D_tab内容4@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3D_tab内容4@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3D_tab内容4@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3D_tab内容4@汽车', 0, 'channel', 'auto', 'a:3:{i:116;s:15:"特别推荐车";i:117;s:21:"特别推荐车描述";i:118;s:15:"车图列表X10";}', 0, 0),
(155, 'C3E_tab内容5@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3E_tab内容5@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3E_tab内容5@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3E_tab内容5@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3E_tab内容5@汽车', 0, 'channel', 'auto', 'a:3:{i:119;s:15:"特别推荐车";i:120;s:21:"特别推荐车描述";i:121;s:15:"车图列表X10";}', 0, 0),
(156, 'C3F_tab内容6@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3F_tab内容6@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3F_tab内容6@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3F_tab内容6@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n', 'C3F_tab内容6@汽车', 0, 'channel', 'auto', 'a:3:{i:122;s:15:"特别推荐车";i:123;s:21:"特别推荐车描述";i:124;s:15:"车图列表X10";}', 0, 0),
(157, 'C3G_tab内容7@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3G_tab内容7@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3G_tab内容7@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3G_tab内容7@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n\r\n', 'C3G_tab内容7@汽车', 0, 'channel', 'auto', 'a:3:{i:125;s:15:"特别推荐车";i:126;s:21:"特别推荐车描述";i:127;s:15:"车图列表X10";}', 0, 0),
(158, 'C3H_tab内容8@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>		\r\n		\r\n\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3H_tab内容8@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3H_tab内容8@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3H_tab内容8@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>		\r\n		\r\n\r\n', 'C3H_tab内容8@汽车', 0, 'channel', 'auto', 'a:3:{i:128;s:15:"特别推荐车";i:129;s:21:"特别推荐车描述";i:130;s:15:"车图列表X10";}', 0, 0),
(159, 'C3I_tab内容9@汽车', 0, '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				<list cachetime="1800" action="image" num="1" title="特别推荐车" />\r\n				<loop>\r\n				<div class="pho"><a href="{url}"  target="_blank" ><img src="{image,180,120}" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="{url}"  target="_blank" >{title,15}</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">{descrip,10}</span></p>\r\n				</loop>\r\n				<list cachetime="1800" action="tag" num="5" title="特别推荐车描述" />\r\n				<ul class="attr">\r\n				<loop>\r\n					<li>{title}</li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			<list cachetime="1800" action="image" num="10" title="车图列表X10" />\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,120,90}" width="120" height="90" /></a>\r\n					<h5><a href="{url}"  target="_blank" >{title,15}</a></h5>\r\n					<p class="s1">{descrip,15}</p>\r\n				</li>\r\n			</loop>\r\n			</ul>\r\n		</div>\r\n		\r\n		\r\n		\r\n', '		<div class="switchItem tabPanel cc" style="display:none">\r\n			<div class="topCar">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3I_tab内容9@汽车\',\'特别推荐车\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="pho"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="180" height="120" /></a></div>\r\n				<h2><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n				<p class="price"><em>经销商报价</em><span class="b s1">$val[descrip]</span></p>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3I_tab内容9@汽车\',\'特别推荐车描述\');\r\nprint <<<EOT\r\n\r\n				<ul class="attr">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li>$val[title]</li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			<ul class="imgList carList">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'C3I_tab内容9@汽车\',\'车图列表X10\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="120" height="90" /></a>\r\n					<h5><a href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n					<p class="s1">$val[descrip]</p>\r\n				</li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</div>\r\n		\r\n		\r\n		\r\n', 'C3I_tab内容9@汽车', 0, 'channel', 'auto', 'a:3:{i:131;s:15:"特别推荐车";i:132;s:21:"特别推荐车描述";i:133;s:15:"车图列表X10";}', 0, 0),
(160, 'C4_banner@汽车', 0, '\r\n<div class="mt10"><a href="#"  target="_blank" ><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', '\r\n<div class="mt10"><a href="#"  target="_blank" ><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', 'C4_banner@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(161, 'C5_标题@汽车', 0, '网友拍车\r\n', '网友拍车\r\n', 'C5_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(162, 'C6_左侧图文@汽车', 0, '\r\n				<ul class="imgList carList2 cc">\r\n				<list cachetime="1800" action="image" num="8" title="图片列表X8" />\r\n					<loop><li><a class="s2" href="{url}"  target="_blank" ><img src="{image,145,110}" width="145" height="110" />{title,20}</a></li>\r\n					</loop>\r\n				</ul>\r\n				\r\n', '\r\n				<ul class="imgList carList2 cc">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C6_左侧图文@汽车\',\'图片列表X8\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a class="s2" href="$val[url]"  target="_blank" ><img src="$val[image]" width="145" height="110" />$val[title]</a></li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n				\r\n', 'C6_左侧图文@汽车', 0, 'channel', 'auto', 'a:1:{i:134;s:14:"图片列表X8";}', 0, 0),
(163, 'C7_右侧标题@汽车', 0, '\r\n				<h3>精彩专题推荐</h3>\r\n				<a class="more" href="#"  target="_blank" >更多</a>\r\n', '\r\n				<h3>精彩专题推荐</h3>\r\n				<a class="more" href="#"  target="_blank" >更多</a>\r\n', 'C7_右侧标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(164, 'C8_右侧图文@汽车', 0, '\r\n				<ol class="topicList">\r\n				<list cachetime="1800" action="image" num="2" title="图片列表X4" />\r\n					<loop>\r\n						<li><a href="{url}"  target="_blank" ><img src="{image,215,40}" width="215" height="40" /></a>\r\n						<h5><em>1</em><a class="s2" href="{url}"  target="_blank" >{title,30}</a></h5>\r\n						</li>\r\n					</loop>\r\n				</ol>\r\n				\r\n', '\r\n				<ol class="topicList">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'C8_右侧图文@汽车\',\'图片列表X4\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="215" height="40" /></a>\r\n						<h5><em>1</em><a class="s2" href="$val[url]"  target="_blank" >$val[title]</a></h5>\r\n						</li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ol>\r\n				\r\n', 'C8_右侧图文@汽车', 0, 'channel', 'auto', 'a:1:{i:135;s:14:"图片列表X4";}', 0, 0),
(165, 'C9_banner@汽车', 0, '\r\n<div class="mt10"><a href="#"  target="_blank"><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', '\r\n<div class="mt10"><a href="#"  target="_blank"><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', 'C9_banner@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(166, 'D1_标题@汽车', 0, '车友说车\r\n\r\n', '车友说车\r\n\r\n', 'D1_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(167, 'D2_文字连接@汽车', 0, '				<li><a href="#"  target="_blank">故障</a> |</li>\r\n				<li><a href="#"  target="_blank">油耗</a> |</li>\r\n				<li><a href="#"  target="_blank">驾驶</a> |</li>\r\n				<li><a href="#"  target="_blank">外观</a> |</li>\r\n				<li><a href="#"  target="_blank">配置</a> |</li>\r\n				<li><a href="#"  target="_blank">保养</a></li>\r\n\r\n		\r\n\r\n', '				<li><a href="#"  target="_blank">故障</a> |</li>\r\n				<li><a href="#"  target="_blank">油耗</a> |</li>\r\n				<li><a href="#"  target="_blank">驾驶</a> |</li>\r\n				<li><a href="#"  target="_blank">外观</a> |</li>\r\n				<li><a href="#"  target="_blank">配置</a> |</li>\r\n				<li><a href="#"  target="_blank">保养</a></li>\r\n\r\n		\r\n\r\n', 'D2_文字连接@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(168, 'D3_左侧图文@汽车', 0, '		<list cachetime="1800" action="image" num="1" title="图文列表X1" />\r\n		<loop> \r\n				<a href="{url}"  target="_blank" ><img class="fl" src="{image,140,95}" width="140" height="95" /></a>\r\n				<h4 class="f14 b mb5"><a class="s1" href="{url}"  target="_blank" >{title,30}</a></h4>\r\n				<p>{descrip,110}</p>\r\n		</loop>\r\n\r\n				\r\n', '		\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_左侧图文@汽车\',\'图文列表X1\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n \r\n				<a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="140" height="95" /></a>\r\n				<h4 class="f14 b mb5"><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n				<p>$val[descrip]</p>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n				\r\n', 'D3_左侧图文@汽车', 0, 'channel', 'auto', 'a:1:{i:136;s:14:"图文列表X1";}', 0, 0),
(169, 'D4_左侧列表@汽车', 0, '\r\n			<ul class="list list2Col cc mt10">\r\n			<list cachetime="1800" action="subject" num="12" title="标题列表X12" />\r\n				<loop>\r\n				<li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,30}</a></li>\r\n				</loop>\r\n			</ul>\r\n			\r\n', '\r\n			<ul class="list list2Col cc mt10">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'D4_左侧列表@汽车\',\'标题列表X12\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			\r\n', 'D4_左侧列表@汽车', 0, 'channel', 'auto', 'a:1:{i:137;s:15:"标题列表X12";}', 0, 0),
(170, 'D5_中间图文@汽车', 0, '\r\n			<ul class="imgList2">\r\n			<list cachetime="1800" action="image" num="4" title="图文列表X4" />\r\n				<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,65,50}" class="fl" width="65" height="50" />{title,70}</a></li>\r\n				</loop>\r\n			</ul>\r\n			\r\n', '\r\n			<ul class="imgList2">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'D5_中间图文@汽车\',\'图文列表X4\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" class="fl" width="65" height="50" />$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			\r\n', 'D5_中间图文@汽车', 0, 'channel', 'auto', 'a:1:{i:138;s:14:"图文列表X4";}', 0, 0),
(171, 'D6_右侧标题@汽车', 0, '新手作业\r\n', '新手作业\r\n', 'D6_右侧标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(172, 'D7_右侧图文@汽车', 0, '				<list cachetime="1800" action="image" num="1" title="图文列表X1" />\r\n					<loop>\r\n						<a class="pr" href="{url}"  target="_blank" ><img src="{image,215,75}" width="215" height="75" />\r\n						<p>{title,30}</p>\r\n						<i></i></a>\r\n					</loop>\r\n				\r\n', '				\r\nEOT;\r\n$pwresult = pwTplGetData(\'D7_右侧图文@汽车\',\'图文列表X1\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<a class="pr" href="$val[url]"  target="_blank" ><img src="$val[image]" width="215" height="75" />\r\n						<p>$val[title]</p>\r\n						<i></i></a>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				\r\n', 'D7_右侧图文@汽车', 0, 'channel', 'auto', 'a:1:{i:139;s:14:"图文列表X1";}', 0, 0),
(173, 'D8_右侧列表@汽车', 0, '\r\n				<ul class="list">\r\n				<list cachetime="1800" action="subject" num="7" title="标题列表X7" />\r\n					<loop>\r\n					<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,30}</a></li>\r\n					</loop>\r\n				</ul>\r\n				\r\n', '\r\n				<ul class="list">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'D8_右侧列表@汽车\',\'标题列表X7\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n				\r\n', 'D8_右侧列表@汽车', 0, 'channel', 'auto', 'a:1:{i:140;s:14:"标题列表X7";}', 0, 0),
(174, 'E1_标题@汽车', 0, '人 · 车 · 生活\r\n\r\n', '人 · 车 · 生活\r\n\r\n', 'E1_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(175, 'E2_文字连接@汽车', 0, '\r\n			<li><a href="#"  target="_blank">社区</a> |</li>\r\n			<li><a href="#"  target="_blank">活动</a> |</li>\r\n			<li><a href="#"  target="_blank">八卦</a></li>\r\n			\r\n\r\n', '\r\n			<li><a href="#"  target="_blank">社区</a> |</li>\r\n			<li><a href="#"  target="_blank">活动</a> |</li>\r\n			<li><a href="#"  target="_blank">八卦</a></li>\r\n			\r\n\r\n', 'E2_文字连接@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(176, 'E3_播放器@汽车', 0, '			<ul class="switch" id="pp2_A">\r\n			<list cachetime="1800" action="image" num="5" title="图片" />\r\n				<loop>\r\n				<li class="switchItem" style="display:none"><a href="{url}"  target="_blank" ><img src="{image,325,210}" width="325" height="210" />\r\n					<h3>{title,20}</h3>\r\n					</a></li>\r\n					</loop>\r\n			</ul>\r\n			<div class="pwSlide-bg"></div>\r\n			<ul class="SwitchNav"  id="pp2_B">\r\n<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->	\r\n			</ul>\r\n			<script>ddSliderPlayers(\'pp2_A\',\'pp2_B\',4,\'current\');</script>\r\n		\r\n', '			<ul class="switch" id="pp2_A">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'E3_播放器@汽车\',\'图片\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li class="switchItem" style="display:none"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="325" height="210" />\r\n					<h3>$val[title]</h3>\r\n					</a></li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			<div class="pwSlide-bg"></div>\r\n			<ul class="SwitchNav"  id="pp2_B">\r\n<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n<!--#}#-->	\r\n			</ul>\r\n			<script>ddSliderPlayers(\'pp2_A\',\'pp2_B\',4,\'current\');</script>\r\n		\r\n', 'E3_播放器@汽车', 0, 'channel', 'auto', 'a:1:{i:141;s:6:"图片";}', 0, 0),
(177, 'E4_中间摘要@汽车', 0, '<list cachetime="1800" action="subject" num="1" title="标题摘要X1" />\r\n<loop>\r\n	<h2><a class="s1" href="{url}"  target="_blank" >{title,40}</a></h2>\r\n	<p class="gray">{descrip,80}</p>\r\n</loop>\r\n\r\n	\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'E4_中间摘要@汽车\',\'标题摘要X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<h2><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n	<p class="gray">$val[descrip]</p>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n	\r\n\r\n\r\n', 'E4_中间摘要@汽车', 0, 'channel', 'auto', 'a:1:{i:142;s:14:"标题摘要X1";}', 0, 0),
(178, 'E5_中间列表@汽车', 0, '\r\n			<ul class="list list2Col cc">\r\n			<list cachetime="1800" num="8" action="subject" ifpushonly="0" title="标题列表X8" />\r\n				<loop>\r\n				<li><a href="{url}"  target="_blank" ><span class="s1">[{forumname,8}]</span>{title,22}</a></li>\r\n				</loop>\r\n			</ul>\r\n			\r\n\r\n\r\n', '\r\n			<ul class="list list2Col cc">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'E5_中间列表@汽车\',\'标题列表X8\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><span class="s1">[$val[forumname]]</span>$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			\r\n\r\n\r\n', 'E5_中间列表@汽车', 0, 'channel', 'auto', 'a:1:{i:143;s:14:"标题列表X8";}', 0, 0),
(179, 'E6_中间图片@汽车', 0, '\r\n			<ul class="imgList cc">\r\n			<list cachetime="1800" action="image" num="4" title="图标列表X4" />\r\n				<loop>\r\n				<li><a href="{url}"  target="_blank" ><img src="{image,80,50}" width="80" height="50" /></a></li>\r\n				</loop>\r\n			</ul>\r\n			\r\n', '\r\n			<ul class="imgList cc">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'E6_中间图片@汽车\',\'图标列表X4\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="80" height="50" /></a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n			\r\n', 'E6_中间图片@汽车', 0, 'channel', 'auto', 'a:1:{i:144;s:14:"图标列表X4";}', 0, 0),
(180, 'E7_右侧标题@汽车', 0, '车友活动\r\n', '车友活动\r\n', 'E7_右侧标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(181, 'E8_右侧图文@汽车', 0, '	<div class="topOne mb5">\r\n		<list cachetime="1800" action="image" num="1" title="图片X1" />\r\n<loop>\r\n<a class="pr" href="{url}"  target="_blank" ><img src="{image,215,75}" width="215" height="75" />\r\n	<p>{title,30}</p>\r\n	<i></i></a> \r\n</loop>\r\n		</div>\r\n	\r\n\r\n\r\n', '	<div class="topOne mb5">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'E8_右侧图文@汽车\',\'图片X1\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a class="pr" href="$val[url]"  target="_blank" ><img src="$val[image]" width="215" height="75" />\r\n	<p>$val[title]</p>\r\n	<i></i></a> \r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</div>\r\n	\r\n\r\n\r\n', 'E8_右侧图文@汽车', 0, 'channel', 'auto', 'a:1:{i:145;s:8:"图片X1";}', 0, 0),
(182, 'E9_右侧列表@汽车', 0, '\r\n				<ul class="list">\r\n				<list cachetime="1800" action="subject" num="5" title="标题列表X5" />\r\n					<loop>\r\n					<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,25}</span></a></li>\r\n					</loop>\r\n				</ul>\r\n				\r\n', '\r\n				<ul class="list">\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'E9_右侧列表@汽车\',\'标题列表X5\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</span></a></li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n				\r\n', 'E9_右侧列表@汽车', 0, 'channel', 'auto', 'a:1:{i:146;s:14:"标题列表X5";}', 0, 0),
(183, 'F1_标题@汽车', 0, '汽车一条龙\r\n', '汽车一条龙\r\n', 'F1_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(184, 'F2_文字链接@汽车', 0, '\r\n			<li><a href="#"  target="_blank">学车</a> |</li>\r\n			<li><a href="#"  target="_blank">车险</a> |</li>\r\n			<li><a href="#"  target="_blank">改装</a> |</li>\r\n			<li><a href="#"  target="_blank">维修保养</a> |</li>\r\n			<li><a href="#"  target="_blank">驾校咨询</a></li>\r\n\r\n		\r\n', '\r\n			<li><a href="#"  target="_blank">学车</a> |</li>\r\n			<li><a href="#"  target="_blank">车险</a> |</li>\r\n			<li><a href="#"  target="_blank">改装</a> |</li>\r\n			<li><a href="#"  target="_blank">维修保养</a> |</li>\r\n			<li><a href="#"  target="_blank">驾校咨询</a></li>\r\n\r\n		\r\n', 'F2_文字链接@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(185, 'F3_图文1@汽车', 0, '					<h4><em class="stepBg"><span class="sn_01">01</span></em>学车</h4>\r\n					<list cachetime="1800" action="image" num="1" title="图片X1" />\r\n					<loop>\r\n						<div class="topOne"> <a href="{url}"  target="_blank" ><img src="{image,210,70}" width="210" height="70" />\r\n						<p>{title,30}</p>\r\n						<i></i></a></div>\r\n						</loop>\r\n					<ul class="list mt10">\r\n					<list cachetime="1800" action="subject" num="4" title="标题X4" />\r\n						<loop>\r\n						<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,25}</a></li>\r\n						</loop>\r\n					</ul>\r\n					\r\n', '					<h4><em class="stepBg"><span class="sn_01">01</span></em>学车</h4>\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F3_图文1@汽车\',\'图片X1\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<div class="topOne"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="210" height="70" />\r\n						<p>$val[title]</p>\r\n						<i></i></a></div>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					<ul class="list mt10">\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F3_图文1@汽车\',\'标题X4\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n					\r\n', 'F3_图文1@汽车', 0, 'channel', 'auto', 'a:2:{i:147;s:8:"图片X1";i:148;s:8:"标题X4";}', 0, 0),
(186, 'F4_图文2@汽车', 0, '\r\n					<h4><em class="stepBg"><span class="sn_02">02</span></em>买车</h4>\r\n					<list cachetime="1800" action="image" num="1" title="图片X1" />\r\n					<loop>\r\n						<div class="topOne"> <a href="{url}"  target="_blank" ><img src="{image,210,70}" width="210" height="70" />\r\n						<p>{title,30}</p>\r\n						<i></i></a></div>\r\n						</loop>\r\n					<ul class="list mt10">\r\n					<list cachetime="1800" action="subject" num="4" title="标题X4" />\r\n						<loop>\r\n						<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,25}</a></li>\r\n						</loop>\r\n					</ul>\r\n					\r\n', '\r\n					<h4><em class="stepBg"><span class="sn_02">02</span></em>买车</h4>\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F4_图文2@汽车\',\'图片X1\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<div class="topOne"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="210" height="70" />\r\n						<p>$val[title]</p>\r\n						<i></i></a></div>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					<ul class="list mt10">\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F4_图文2@汽车\',\'标题X4\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n					\r\n', 'F4_图文2@汽车', 0, 'channel', 'auto', 'a:2:{i:149;s:8:"图片X1";i:150;s:8:"标题X4";}', 0, 0),
(187, 'F5_图文3@汽车', 0, '\r\n					<h4><em class="stepBg"><span class="sn_03">03</span></em>开车</h4>\r\n					<list cachetime="1800" action="image" num="1" title="图片X1" />\r\n					<loop>\r\n						<div class="topOne"> <a href="{url}"  target="_blank" ><img src="{image,210,70}" width="210" height="70" />\r\n						<p>{title,30}</p>\r\n						<i></i></a></div>\r\n						</loop>\r\n					<ul class="list mt10">\r\n					<list cachetime="1800" action="subject" num="4" title="标题X4" />\r\n						<loop>\r\n						<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,25}</a></li>\r\n						</loop>\r\n					</ul>\r\n					\r\n', '\r\n					<h4><em class="stepBg"><span class="sn_03">03</span></em>开车</h4>\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F5_图文3@汽车\',\'图片X1\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<div class="topOne"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="210" height="70" />\r\n						<p>$val[title]</p>\r\n						<i></i></a></div>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					<ul class="list mt10">\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F5_图文3@汽车\',\'标题X4\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n					\r\n', 'F5_图文3@汽车', 0, 'channel', 'auto', 'a:2:{i:151;s:8:"图片X1";i:152;s:8:"标题X4";}', 0, 0),
(188, 'F6_图文4@汽车', 0, '\r\n					<h4><em class="stepBg"><span class="sn_04">04</span></em>养车</h4>\r\n					<list cachetime="1800" action="image" num="1" title="图片X1" />\r\n					<loop>\r\n						<div class="topOne"> <a href="{url}"  target="_blank" ><img src="{image,210,70}" width="210" height="70" />\r\n						<p>{title,30}</p>\r\n						<i></i></a></div>\r\n						</loop>\r\n					<ul class="list mt10">\r\n					<list cachetime="1800" action="subject" num="4" title="标题X4" />\r\n						<loop>\r\n						<li><a href="{url}"  target="_blank" >【{forumname,8}】{title,25}</a></li>\r\n						</loop>\r\n					</ul>\r\n					\r\n', '\r\n					<h4><em class="stepBg"><span class="sn_04">04</span></em>养车</h4>\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F6_图文4@汽车\',\'图片X1\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<div class="topOne"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="210" height="70" />\r\n						<p>$val[title]</p>\r\n						<i></i></a></div>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					<ul class="list mt10">\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'F6_图文4@汽车\',\'标题X4\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<li><a href="$val[url]"  target="_blank" >【$val[forumname]】$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n					\r\n', 'F6_图文4@汽车', 0, 'channel', 'auto', 'a:2:{i:153;s:8:"图片X1";i:154;s:8:"标题X4";}', 0, 0),
(189, 'F7_banner@汽车', 0, '\r\n<div class="mt10"><a href="#"  target="_blank"><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', '\r\n<div class="mt10"><a href="#"  target="_blank"><img src="mode/area/themes/auto/temp/ad960x70.png" /></a></div>\r\n\r\n', 'F7_banner@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(190, 'G1_标题@汽车', 0, '加入车友会\r\n', '加入车友会\r\n', 'G1_标题@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0),
(191, 'G2_左侧列表@汽车', 0, '			<list cachetime="1800" action="subject" num="30" title="车友会列表X30" />\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >{title,25}</a></li>\r\n				</loop>\r\n			\r\n\r\n		\r\n', '			\r\nEOT;\r\n$pwresult = pwTplGetData(\'G2_左侧列表@汽车\',\'车友会列表X30\');\r\nprint <<<EOT\r\n\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n			\r\n\r\n		\r\n', 'G2_左侧列表@汽车', 0, 'channel', 'auto', 'a:1:{i:155;s:18:"车友会列表X30";}', 0, 0),
(192, 'G3_右侧TAB@汽车', 0, '	<li class="switchNavItem"><a href="#"  target="_blank">活动回顾</a></li>\r\n	<li class="switchNavItem"><a href="#"  target="_blank">近期亮点</a></li>\r\n\r\n\r\n\r\n\r\n', '	<li class="switchNavItem"><a href="#"  target="_blank">活动回顾</a></li>\r\n	<li class="switchNavItem"><a href="#"  target="_blank">近期亮点</a></li>\r\n\r\n\r\n\r\n\r\n', 'G3_右侧TAB@汽车', 0, 'channel', 'auto', 'a:0:{}', 0, 0);
INSERT INTO `pw_invoke` (`id`, `name`, `tplid`, `tagcode`, `parsecode`, `title`, `ifapi`, `scr`, `sign`, `pieces`, `state`, `ifverify`) VALUES
(193, 'G4A_右侧TAB内容1@汽车', 0, '			<div class="switchItem tabPanel" style="display:none">\r\n			<list cachetime="1800" action="image" num="1" title="图片" />\r\n			<loop>\r\n				<div class="subject cc"><a href="{url}"  target="_blank" ><img class="fl" src="{image,85,65}" width="85" height="65" /></a>\r\n					<h4><a href="{url}"  target="_blank" >{title,30}</a></h4>\r\n					<p>{descrip,90}</p>\r\n				</div>\r\n			</loop>\r\n			<list cachetime="1800" action="subject" num="8" title="标题列表X8" />\r\n				<ul class="list list2Col cc">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >【<span class="s1">{forumname,8}</span>】{title,18}</a></li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n\r\n', '			<div class="switchItem tabPanel" style="display:none">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4A_右侧TAB内容1@汽车\',\'图片\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="subject cc"><a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="85" height="65" /></a>\r\n					<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n					<p>$val[descrip]</p>\r\n				</div>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4A_右侧TAB内容1@汽车\',\'标题列表X8\');\r\nprint <<<EOT\r\n\r\n				<ul class="list list2Col cc">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >【<span class="s1">$val[forumname]</span>】$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n\r\n', 'G4A_右侧TAB内容1@汽车', 0, 'channel', 'auto', 'a:2:{i:156;s:6:"图片";i:157;s:14:"标题列表X8";}', 0, 0),
(194, 'G4B_右侧TAB内容2@汽车', 0, '			<div class="switchItem tabPanel" style="display:none">\r\n			<list cachetime="1800" action="image" num="1" title="图片" />\r\n			<loop>\r\n				<div class="subject cc"><a href="{url}"  target="_blank" ><img class="fl" src="{image,85,65}" width="85" height="65" /></a>\r\n					<h4><a href="{url}"  target="_blank" >{title,30}</a></h4>\r\n					<p>{descrip,90}</p>\r\n				</div>\r\n			</loop>\r\n			<list cachetime="1800" action="subject" num="8" title="标题列表X8" />\r\n				<ul class="list list2Col cc">\r\n				<loop>\r\n					<li><a href="{url}"  target="_blank" >【<span class="s1">{forumname,8}</span>】{title,18}</a></li>\r\n				</loop>\r\n				</ul>\r\n			</div>\r\n			\r\n', '			<div class="switchItem tabPanel" style="display:none">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4B_右侧TAB内容2@汽车\',\'图片\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<div class="subject cc"><a href="$val[url]"  target="_blank" ><img class="fl" src="$val[image]" width="85" height="65" /></a>\r\n					<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n					<p>$val[descrip]</p>\r\n				</div>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'G4B_右侧TAB内容2@汽车\',\'标题列表X8\');\r\nprint <<<EOT\r\n\r\n				<ul class="list list2Col cc">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li><a href="$val[url]"  target="_blank" >【<span class="s1">$val[forumname]</span>】$val[title]</a></li>\r\n				\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n			</div>\r\n			\r\n', 'G4B_右侧TAB内容2@汽车', 0, 'channel', 'auto', 'a:2:{i:158;s:6:"图片";i:159;s:14:"标题列表X8";}', 0, 0),
(195, 'A1_频道导航@美食', 0, '	<li class="switchNavItem"><a href="" target="_blank" >美食DIY</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >美食快讯</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >美食探店</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >外地美食</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >吃喝玩乐团</a></li>\r\n\r\n\r\n\r\n', '	<li class="switchNavItem"><a href="" target="_blank" >美食DIY</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >美食快讯</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >美食探店</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >外地美食</a> |</li>\r\n	<li class="switchNavItem"><a href="" target="_blank" >吃喝玩乐团</a></li>\r\n\r\n\r\n\r\n', 'A1_频道导航@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(196, 'A2_播放器@美食', 0, '<div class="pwSlideWrap" style="padding-bottom:0">\r\n	<!--pwSlidePlayer 有特殊样式，不可换；其他播放器ID任意--->\r\n	<div id="pwSlidePlayer" class="pwSlide">\r\n		<ul class="switch" id="PicPlayer1_A">\r\n			<list cachetime="1800" action="image" num="4" title="A1播放器1A" />\r\n			<loop>\r\n				<li class="switchItem" style="display:none"><a href="{url}"  target="_blank" ><img src="{image,290,280}" width="290" height="280" />\r\n					<div class="txt">\r\n						<h3>{title,30}</h3>\r\n						<p>{descrip,40}</p>\r\n					</div>\r\n					</a></li>\r\n			</loop>\r\n		</ul>\r\n		<div class="pwSlide-bg"></div>\r\n		<ul class="SwitchNav" id="PicPlayer1_B">\r\n<!--#foreach($pwresult as $value){#-->\r\n			<li class="switchNavItem"><a href="$value[url]"  target="_blank"><img src="$value[image]" width="47" height="47" /></a></li>\r\n<!--#}#-->\r\n		</ul>\r\n	</div>\r\n</div>\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n<script>ddSliderPlayers(\'PicPlayer1_A\',\'PicPlayer1_B\',4,\'current\');</script>\r\n\r\n\r\n\r\n', '<div class="pwSlideWrap" style="padding-bottom:0">\r\n	<!--pwSlidePlayer 有特殊样式，不可换；其他播放器ID任意--->\r\n	<div id="pwSlidePlayer" class="pwSlide">\r\n		<ul class="switch" id="PicPlayer1_A">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'A2_播放器@美食\',\'A1播放器1A\');\r\nprint <<<EOT\r\n\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li class="switchItem" style="display:none"><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="290" height="280" />\r\n					<div class="txt">\r\n						<h3>$val[title]</h3>\r\n						<p>$val[descrip]</p>\r\n					</div>\r\n					</a></li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</ul>\r\n		<div class="pwSlide-bg"></div>\r\n		<ul class="SwitchNav" id="PicPlayer1_B">\r\n<!--#foreach($pwresult as $value){#-->\r\n			<li class="switchNavItem"><a href="$value[url]"  target="_blank"><img src="$value[image]" width="47" height="47" /></a></li>\r\n<!--#}#-->\r\n		</ul>\r\n	</div>\r\n</div>\r\n<script type="text/javascript" src="mode/area/js/ddsliderplayer.js"></script>\r\n<script>ddSliderPlayers(\'PicPlayer1_A\',\'PicPlayer1_B\',4,\'current\');</script>\r\n\r\n\r\n\r\n', 'A2_播放器@美食', 0, 'channel', 'delicious', 'a:1:{i:160;s:13:"A1播放器1A";}', 0, 0),
(197, 'A3_左下标题@美食', 0, '热门活动\r\n\r\n\r\n', '热门活动\r\n\r\n\r\n', 'A3_左下标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(198, 'A4_左下图文列表@美食', 0, '<ul class="subjectList" style="padding-bottom:0">\r\n	<list cachetime="1800" action="image" num="2" title="标题摘要" />\r\n	<loop>\r\n		<li class="subject mb10"> <a href="{url}"  target="_blank" ><img src="{image,105,52}" width="105" height="52" class="fl" /></a>\r\n			<h4><a href="{url}"  target="_blank" >{title,5040}</a></h4>\r\n			<p>{descrip,45}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList" style="padding-bottom:0">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A4_左下图文列表@美食\',\'标题摘要\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="subject mb10"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="105" height="52" class="fl" /></a>\r\n			<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'A4_左下图文列表@美食', 0, 'channel', 'delicious', 'a:1:{i:161;s:12:"标题摘要";}', 0, 0),
(199, 'A5_NEW标题@美食', 0, '最新帖子\r\n\r\n\r\n', '最新帖子\r\n\r\n\r\n', 'A5_NEW标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(200, 'A6_热点摘要@美食', 0, '<ul class="tops">\r\n	<list cachetime="1800" action="subject" num="2" title="第一屏头条" />\r\n	<loop>\r\n		<li>\r\n			<h2 class="s1"><a href="{url}"  target="_blank" >{title,40}</a></h2>\r\n			<p>{descrip,140}<a class="s1" href="{url}"  target="_blank" >（阅读全文）</a></p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="tops">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A6_热点摘要@美食\',\'第一屏头条\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li>\r\n			<h2 class="s1"><a href="$val[url]"  target="_blank" >$val[title]</a></h2>\r\n			<p>$val[descrip]<a class="s1" href="$val[url]"  target="_blank" >（阅读全文）</a></p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'A6_热点摘要@美食', 0, 'channel', 'delicious', 'a:1:{i:162;s:15:"第一屏头条";}', 0, 0),
(201, 'A7_热点标题列表@美食', 0, '<ul class="list list_f14">\r\n	<list cachetime="1800" action="subject" num="8" title="标题列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><em class="s1">[{forumname,8}]</em>{title,30}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="list list_f14">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A7_热点标题列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><em class="s1">[$val[forumname]]</em>$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'A7_热点标题列表@美食', 0, 'channel', 'delicious', 'a:1:{i:163;s:12:"标题列表";}', 0, 0),
(202, 'A8_热点图片列表@美食', 0, '<ul class="imgList cc">\r\n	<list cachetime="1800" action="image" num="3" title="图片列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,100,90}" width="100" height="90" />{title,16}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="imgList cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A8_热点图片列表@美食\',\'图片列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="100" height="90" />$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'A8_热点图片列表@美食', 0, 'channel', 'delicious', 'a:1:{i:164;s:12:"图片列表";}', 0, 0),
(203, 'A9_右上标题@美食', 0, '享乐指南\r\n\r\n\r\n', '享乐指南\r\n\r\n\r\n', 'A9_右上标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(204, 'A10_右上列表@美食', 0, '<list cachetime="1800" action="tag" num="20" title="链接标签" />\r\n&nbsp;\r\n<loop> <a class="s1" href="{url}"  target="_blank" >{title,12}</a>&nbsp; | &nbsp; </loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A10_右上列表@美食\',\'链接标签\');\r\nprint <<<EOT\r\n\r\n&nbsp;\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n <a class="s1" href="$val[url]"  target="_blank" >$val[title]</a>&nbsp; | &nbsp; \r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'A10_右上列表@美食', 0, 'channel', 'delicious', 'a:1:{i:165;s:12:"链接标签";}', 0, 0),
(205, 'A11_右下标题@美食', 0, '热点专题\r\n\r\n\r\n', '热点专题\r\n\r\n\r\n', 'A11_右下标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(206, 'A12_右下图文@美食', 0, '<list cachetime="1800" action="image" num="2" title="图文列表" />\r\n<loop>\r\n	<div class="subject cc mb10"> <a href="{url}"  target="_blank" ><img src="{image,60,60}" class="fl" width="60" height="60" /></a>\r\n		<h4><a href="{url}"  target="_blank" >{title,16}</a></h4>\r\n		<p>{descrip,30}<a href="{url}"  target="_blank"  class="s1"> [详细]</a></p>\r\n	</div>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'A12_右下图文@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<div class="subject cc mb10"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" class="fl" width="60" height="60" /></a>\r\n		<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n		<p>$val[descrip]<a href="$val[url]"  target="_blank"  class="s1"> [详细]</a></p>\r\n	</div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'A12_右下图文@美食', 0, 'channel', 'delicious', 'a:1:{i:166;s:12:"图文列表";}', 0, 0),
(207, 'A13_右下列表@美食', 0, '<ul class="list">\r\n	<list cachetime="1800" action="subject" num="6" title="标题列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="list">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A13_右下列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'A13_右下列表@美食', 0, 'channel', 'delicious', 'a:1:{i:167;s:12:"标题列表";}', 0, 0),
(208, 'A14_广告@美食', 0, '\r\n\r\n', '\r\n\r\n', 'A14_广告@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(209, 'B1_左上标题@美食', 0, '探店情报\r\n\r\n\r\n', '探店情报\r\n\r\n\r\n', 'B1_左上标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(210, 'B2_左上图片列表@美食', 0, '<list cachetime="1800" num="8" action="image" ifpushonly="0" title="图片列表" />\r\n<loop>\r\n	<li><a href="{url}"  target="_blank" ><img src="{image,65,55}" width="65" height="55" />{title,10}</a></li>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B2_左上图片列表@美食\',\'图片列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="65" height="55" />$val[title]</a></li>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'B2_左上图片列表@美食', 0, 'channel', 'delicious', 'a:1:{i:168;s:12:"图片列表";}', 0, 0),
(211, 'B3_中上标题@美食', 0, '店铺排行\r\n\r\n\r\n', '店铺排行\r\n\r\n\r\n', 'B3_中上标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(212, 'B4_中上列表@美食', 0, '<ol class="rankingList fl">\r\n	<list cachetime="1800" num="8" action="subject" ifpushonly="0" title="标题列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,30}</a></li>\r\n	</loop>\r\n</ol>\r\n\r\n\r\n\r\n', '<ol class="rankingList fl">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B4_中上列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ol>\r\n\r\n\r\n\r\n', 'B4_中上列表@美食', 0, 'channel', 'delicious', 'a:1:{i:169;s:12:"标题列表";}', 0, 0),
(213, 'B5_左下标题@美食', 0, '美食DIY\r\n\r\n\r\n', '美食DIY\r\n\r\n\r\n', 'B5_左下标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(214, 'B6_左下图文摘要@美食', 0, '<list cachetime="1800" action="image" num="1" title="图文模块" />\r\n<loop>\r\n	<div class="subject cc"> <a href="{url}"  target="_blank" ><img src="{image,130,155}" width="130" height="155" class="fl" /></a>\r\n		<h4><a href="{url}"  target="_blank" >{title,18}</a></h4>\r\n		<p>{descrip,120}</p>\r\n	</div>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B6_左下图文摘要@美食\',\'图文模块\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<div class="subject cc"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="130" height="155" class="fl" /></a>\r\n		<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n		<p>$val[descrip]</p>\r\n	</div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'B6_左下图文摘要@美食', 0, 'channel', 'delicious', 'a:1:{i:170;s:12:"图文模块";}', 0, 0),
(215, 'B7_中下标题列表@美食', 0, '<ul class="list fl">\r\n	<list cachetime="1800" action="subject" num="8" title="标题列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >【<span class="s2">{forumname}</span>】{title,20}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="list fl">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B7_中下标题列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >【<span class="s2">$val[forumname]</span>】$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'B7_中下标题列表@美食', 0, 'channel', 'delicious', 'a:1:{i:171;s:12:"标题列表";}', 0, 0),
(216, 'B8_右侧标题@美食', 0, '新店开张\r\n\r\n\r\n', '新店开张\r\n\r\n\r\n', 'B8_右侧标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(217, 'B9_右侧图片列表@美食', 0, '<ul class="imgList cc">\r\n	<list cachetime="1800" action="image" num="4" title="图文列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,90,65}" width="90" height="65" />{title,15}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="imgList cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B9_右侧图片列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="90" height="65" />$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'B9_右侧图片列表@美食', 0, 'channel', 'delicious', 'a:1:{i:172;s:12:"图文列表";}', 0, 0),
(218, 'B10_右侧标题列表@美食', 0, '<ul class="list" style="margin-top:8px;">\r\n	<list cachetime="1800" action="subject" num="10" title="标题列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" >{title,25}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="list" style="margin-top:8px;">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B10_右侧标题列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" >$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'B10_右侧标题列表@美食', 0, 'channel', 'delicious', 'a:1:{i:173;s:12:"标题列表";}', 0, 0),
(219, 'B11_页面中部下缘广告位@美食', 0, '\r\n\r\n', '\r\n\r\n', 'B11_页面中部下缘广告位@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(220, 'C1_左上标题@美食', 0, '私房菜\r\n\r\n\r\n', '私房菜\r\n\r\n\r\n', 'C1_左上标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(221, 'C2_左上图文列表@美食', 0, '<ul class="userList">\r\n	<list cachetime="1800" action="image" num="4" title="图文列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,65,65}" width="65" height="65" /></a>\r\n			<h4><a href="{url}"  target="_blank"  class="s2">{title,20}</a></h4>\r\n			<p>{descrip,40}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="userList">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'C2_左上图文列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="65" height="65" /></a>\r\n			<h4><a href="$val[url]"  target="_blank"  class="s2">$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'C2_左上图文列表@美食', 0, 'channel', 'delicious', 'a:1:{i:174;s:12:"图文列表";}', 0, 0),
(222, 'C3_左下标题@美食', 0, '食尚养生\r\n\r\n\r\n', '食尚养生\r\n\r\n\r\n', 'C3_左下标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(223, 'C4_左下图文列表@美食', 0, '<list cachetime="1800" action="image" num="2" title="图文列表" />\r\n<loop>\r\n	<div class="subject cc mb10"> <a href="{url}"  target="_blank" ><img src="{image,100,75}" width="100" height="75" class="fl" /></a>\r\n		<h4><a href="{url}"  target="_blank" >{title,30}</a></h4>\r\n		<p>{descrip,58}</p>\r\n	</div>\r\n</loop>\r\n\r\n\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'C4_左下图文列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<div class="subject cc mb10"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="100" height="75" class="fl" /></a>\r\n		<h4><a href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n		<p>$val[descrip]</p>\r\n	</div>\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n\r\n', 'C4_左下图文列表@美食', 0, 'channel', 'delicious', 'a:1:{i:175;s:12:"图文列表";}', 0, 0),
(224, 'C5_左下标题列表@美食', 0, '<ul class="list fl">\r\n	<list cachetime="1800" action="subject" num="8" title="标题列表" />\r\n	<loop>\r\n		<li><a href="#">【<span class="s2">{forumname}</span>】{title,22}</a></li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="list fl">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'C5_左下标题列表@美食\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="#">【<span class="s2">$val[forumname]</span>】$val[title]</a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'C5_左下标题列表@美食', 0, 'channel', 'delicious', 'a:1:{i:176;s:12:"标题列表";}', 0, 0),
(225, 'C6_右侧标题@美食', 0, '折扣优惠\r\n\r\n\r\n', '折扣优惠\r\n\r\n\r\n', 'C6_右侧标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(226, 'C7_右侧标题列表@美食', 0, '<ul class="subjectList2 cc">\r\n	<list cachetime="1800" action="image" num="5" title="图文列表" />\r\n	<loop>\r\n		<li><a href="{url}"  target="_blank" ><img src="{image,65,65}" width="65" height="65" class="fl" /></a>\r\n			<h4><a class="s1" href="{url}"  target="_blank" >{title,20}</a></h4>\r\n			<p>{descrip,50}</p>\r\n		</li>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList2 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'C7_右侧标题列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="65" height="65" class="fl" /></a>\r\n			<h4><a class="s1" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'C7_右侧标题列表@美食', 0, 'channel', 'delicious', 'a:1:{i:177;s:12:"图文列表";}', 0, 0),
(227, 'C8_页面中下部下缘广告@美食', 0, '\r\n\r\n', '\r\n\r\n', 'C8_页面中下部下缘广告@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(228, 'D1_左上标题@美食', 0, '火热推荐\r\n\r\n\r\n', '火热推荐\r\n\r\n\r\n', 'D1_左上标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(229, 'D2_左上TAG@美食', 0, '<li class="switchNavItem"><a href="#"  target="_blank">休闲娱乐</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">朋友聚餐 </a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">狂欢派对</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">宾馆酒店</a></li>\r\n\r\n\r\n\r\n', '<li class="switchNavItem"><a href="#"  target="_blank">休闲娱乐</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">朋友聚餐 </a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">狂欢派对</a></li>\r\n<li class="switchNavItem"><a href="#"  target="_blank">宾馆酒店</a></li>\r\n\r\n\r\n\r\n', 'D2_左上TAG@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(230, 'D3_左上TAG内容1@美食', 0, '<ul class="subjectList3 cc">\r\n	<list cachetime="1800" action="image" num="6" title="图文列表" />\r\n	<loop>\r\n		<li class="subject"> <a href="{url}"  target="_blank" ><img src="{image,95,75}" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="{url}"  target="_blank" >{title,14}</a></h4>\r\n			<p>{descrip,50}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList3 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D3_左上TAG内容1@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="subject"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'D3_左上TAG内容1@美食', 0, 'channel', 'delicious', 'a:1:{i:178;s:12:"图文列表";}', 0, 0),
(231, 'D4_左上TAG内容2@美食', 0, '<ul class="subjectList3 cc">\r\n	<list cachetime="1800" action="image" num="6" title="图文列表" />\r\n	<loop>\r\n		<li class="subject"> <a href="{url}"  target="_blank" ><img src="{image,95,75}" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="{url}"  target="_blank" >{title,14}</a></h4>\r\n			<p>{descrip,50}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList3 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D4_左上TAG内容2@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="subject"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'D4_左上TAG内容2@美食', 0, 'channel', 'delicious', 'a:1:{i:179;s:12:"图文列表";}', 0, 0),
(232, 'D5_左上TAG内容3@美食', 0, '<ul class="subjectList3 cc">\r\n	<list cachetime="1800" action="image" num="6" title="图文列表" />\r\n	<loop>\r\n		<li class="subject"> <a href="{url}"  target="_blank" ><img src="{image,95,75}" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="{url}"  target="_blank" >{title,14}</a></h4>\r\n			<p>{descrip,50}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList3 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D5_左上TAG内容3@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="subject"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'D5_左上TAG内容3@美食', 0, 'channel', 'delicious', 'a:1:{i:180;s:12:"图文列表";}', 0, 0),
(233, 'D6_左上TAG内容4@美食', 0, '<ul class="subjectList3 cc">\r\n	<list cachetime="1800" action="image" num="6" title="图文列表" />\r\n	<loop>\r\n		<li class="subject"> <a href="{url}"  target="_blank" ><img src="{image,95,75}" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="{url}"  target="_blank" >{title,14}</a></h4>\r\n			<p>{descrip,50}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList3 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D6_左上TAG内容4@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="subject"> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="95" height="75" class="fl" /></a>\r\n			<h4><a class="s1 b" href="$val[url]"  target="_blank" >$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'D6_左上TAG内容4@美食', 0, 'channel', 'delicious', 'a:1:{i:181;s:12:"图文列表";}', 0, 0),
(234, 'D7_左下标题@美食', 0, '美食盛宴\r\n\r\n\r\n', '美食盛宴\r\n\r\n\r\n', 'D7_左下标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(235, 'D9_左下图片列表@美食', 0, '<div class="listWrap" id="ddhSlider2">\r\n	<ul class="imgList cc">\r\n		<list cachetime="1800" action="image" num="8" title="图文列表" />\r\n		<loop>\r\n			<li><a href="{url}"  target="_blank" ><img src="{image,105,130}" width="105" height="130" />{title,14}</a></li>\r\n		</loop>\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n', '<div class="listWrap" id="ddhSlider2">\r\n	<ul class="imgList cc">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'D9_左下图片列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<li><a href="$val[url]"  target="_blank" ><img src="$val[image]" width="105" height="130" />$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n</div>\r\n\r\n\r\n\r\n', 'D9_左下图片列表@美食', 0, 'channel', 'delicious', 'a:1:{i:182;s:12:"图文列表";}', 0, 0),
(236, 'D10_右侧标题@美食', 0, '名菜名点\r\n\r\n\r\n', '名菜名点\r\n\r\n\r\n', 'D10_右侧标题@美食', 0, 'channel', 'delicious', 'a:0:{}', 0, 0),
(237, 'D11_右侧图片列表@美食', 0, '<ul class="subjectList2 cc">\r\n	<list cachetime="1800" num="4" action="image" ifpushonly="0" title="图文列表" />\r\n	<loop>\r\n		<li> <a href="{url}"  target="_blank" ><img src="{image,65,45}" width="65" height="45" class="fl" /></a>\r\n			<h4><a href="{url}"  target="_blank"  class="s1">{title,15}</a></h4>\r\n			<p>{descrip,35}</p>\r\n		</li>\r\n	</loop>\r\n</ul>\r\n\r\n\r\n\r\n', '<ul class="subjectList2 cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'D11_右侧图片列表@美食\',\'图文列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li> <a href="$val[url]"  target="_blank" ><img src="$val[image]" width="65" height="45" class="fl" /></a>\r\n			<h4><a href="$val[url]"  target="_blank"  class="s1">$val[title]</a></h4>\r\n			<p>$val[descrip]</p>\r\n		</li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n\r\n\r\n\r\n', 'D11_右侧图片列表@美食', 0, 'channel', 'delicious', 'a:1:{i:183;s:12:"图文列表";}', 0, 0),
(238, 'D12_右侧标签链接@美食', 0, '<list cachetime="1800" action="tag" num="18" title="标签" />\r\n&nbsp;\r\n<loop>\r\n<a class="s1" href="{url}"  target="_blank" >{title,10}</a>&nbsp;&nbsp;| &nbsp;\r\n</loop>\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'D12_右侧标签链接@美食\',\'标签\');\r\nprint <<<EOT\r\n\r\n&nbsp;\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<a class="s1" href="$val[url]"  target="_blank" >$val[title]</a>&nbsp;&nbsp;| &nbsp;\r\n\r\nEOT;\r\n}print <<<EOT\r\n\r\n', 'D12_右侧标签链接@美食', 0, 'channel', 'delicious', 'a:1:{i:184;s:6:"标签";}', 0, 0),
(239, 'L9894homeP83@首页', 0, '				<a href="" target="_blank"><img src="$channelImagePath/p83_temp_1.jpg" /></a>\r\n\r\n\r\n\r\n\r\n', '				<a href="" target="_blank"><img src="$channelImagePath/p83_temp_1.jpg" /></a>\r\n\r\n\r\n\r\n\r\n', 'L9894homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(240, 'L6664homeP83@首页', 0, '			<div class="pwSlideWrap">\r\n			 <div id="pwSlidePlayer" class="pwSlide">\r\n			 <list num="4" action="image" cachetime="1800" ifpushonly="0" title="图片" />\r\n				<ul class="switch" id="PP1_A">\r\n				<loop>\r\n					<li class="switchItem" style="display:"><a href="{url}" target="_blank"><img src="{image,270,270}" width="270" height="270" /><h3>{title,40}</h3></a></li>\r\n					</loop>\r\n				</ul>\r\n				<div class="pwSlide-bg"></div>\r\n				<ul class="SwitchNav" id="PP1_B">\r\n				<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n			    <!--#}#-->\r\n				</ul>\r\n			</div>\r\n			</div>\r\n		<script>onReady(function(){ddSliderPlayers(\'PP1_A\',\'PP1_B\',4,\'current\');})</script>\r\n\r\n			\r\n\r\n\r\n', '			<div class="pwSlideWrap">\r\n			 <div id="pwSlidePlayer" class="pwSlide">\r\n			 \r\nEOT;\r\n$pwresult = pwTplGetData(\'L6664homeP83@首页\',\'图片\');\r\nprint <<<EOT\r\n\r\n				<ul class="switch" id="PP1_A">\r\n				\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n					<li class="switchItem" style="display:"><a href="$val[url]" target="_blank"><img src="$val[image]" width="270" height="270" /><h3>$val[title]</h3></a></li>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n\r\n				</ul>\r\n				<div class="pwSlide-bg"></div>\r\n				<ul class="SwitchNav" id="PP1_B">\r\n				<!--#for($i = 1; $i<=$key+1; $i++){#-->					\r\n				<li class="switchNavItem"><a href="#" onclick="return false;">{$i}</a></li>\r\n			    <!--#}#-->\r\n				</ul>\r\n			</div>\r\n			</div>\r\n		<script>onReady(function(){ddSliderPlayers(\'PP1_A\',\'PP1_B\',4,\'current\');})</script>\r\n\r\n			\r\n\r\n\r\n', 'L6664homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:185;s:6:"图片";}', 0, 0),
(241, 'K6968homeP83@首页', 0, '				生活参考\r\n\r\n\r\n\r\n\r\n', '				生活参考\r\n\r\n\r\n\r\n\r\n', 'K6968homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(242, 'O7973homeP83@首页', 0, '				<list num="1" action="image" cachetime="1800" ifpushonly="0" title="配图标题摘要" />\r\n					<loop>\r\n						<dl class="p83_dlA clB cc mb5">\r\n							<dd class="p83_dlA_p"> <a href="{url}"  target="_blank" title="{title}"><img src="{image,80,80}" width="80" height="80"  /></a> </dd>\r\n							<dt class="p83_dlA_t f14 b"><a href="{url}"  target="_blank" title="{title}" class="p83_fcA">{title,20}</a></dt>\r\n							<dd class="p83_dlA_c"><a href="{url}"  target="_blank" title="{title}" class="p83_fcB" >{descrip,75}</a></dd>\r\n						</dl>\r\n					</loop>				\r\n				\r\n\r\n\r\n', '				\r\nEOT;\r\n$pwresult = pwTplGetData(\'O7973homeP83@首页\',\'配图标题摘要\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<dl class="p83_dlA clB cc mb5">\r\n							<dd class="p83_dlA_p"> <a href="$val[url]"  target="_blank" title="$val[title]"><img src="$val[image]" width="80" height="80"  /></a> </dd>\r\n							<dt class="p83_dlA_t f14 b"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcA">$val[title]</a></dt>\r\n							<dd class="p83_dlA_c"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcB" >$val[descrip]</a></dd>\r\n						</dl>\r\n					\r\nEOT;\r\n}print <<<EOT\r\n				\r\n				\r\n\r\n\r\n', 'O7973homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:186;s:18:"配图标题摘要";}', 0, 0),
(243, 'G8597homeP83@首页', 0, '				<list num="4" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n					<ul class="p83_ulA p83_ulE">\r\n						<loop><li><a href="{url}"  target="_blank" title="{title}">{forumname} <span class="gray">|</span> {title,30}</a></li></loop>\r\n					</ul>\r\n		\r\n\r\n\r\n\r\n', '				\r\nEOT;\r\n$pwresult = pwTplGetData(\'G8597homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA p83_ulE">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" title="$val[title]">$val[forumname] <span class="gray">|</span> $val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n		\r\n\r\n\r\n\r\n', 'G8597homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:187;s:12:"标题列表";}', 0, 0),
(244, 'G9393homeP83@首页', 0, '	<list num="3" action="subject" cachetime="10" ifpushonly="0" title="热点标题摘要" />\r\n		<loop>\r\n	<dl class="p83_dlB clB">\r\n	<!--# $count = $key+1;#-->\r\n		<dt><a href="{url}"  target="_blank" title="{title}" class="b p83_fcC_$count cc">{title,45}</a></dt>\r\n		<dd><a href="{url}"  target="_blank" title="{title}" class="p83_fcB">{descrip,150}&#46;&#46;.</a><a href="{url}" class="p83_fcC" target="_blank" title="{title}">[详细]</a></dd>\r\n	</dl>\r\n		</loop>\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'G9393homeP83@首页\',\'热点标题摘要\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<dl class="p83_dlB clB">\r\n	<!--# $count = $key+1;#-->\r\n		<dt><a href="$val[url]"  target="_blank" title="$val[title]" class="b p83_fcC_$count cc">$val[title]</a></dt>\r\n		<dd><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcB">$val[descrip]&#46;&#46;.</a><a href="$val[url]" class="p83_fcC" target="_blank" title="$val[title]">[详细]</a></dd>\r\n	</dl>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n\r\n', 'G9393homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:188;s:18:"热点标题摘要";}', 0, 0),
(245, 'P5921homeP83@首页', 0, '	<list num="8" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n	<ul class="p83_ulA cc">\r\n		<loop><li class="f14"><a href="{forumurl}"  target="_blank" title="{title}">{forumname,10}</a> <span class="gray"> | </span> <a href="{url}"  target="_blank" title="{title}">{title,50}</a></li></loop>	\r\n	</ul>\r\n		\r\n\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'P5921homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n	<ul class="p83_ulA cc">\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li class="f14"><a href="$val[forumurl]"  target="_blank" title="$val[title]">$val[forumname]</a> <span class="gray"> | </span> <a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n	\r\n	</ul>\r\n		\r\n\r\n\r\n\r\n', 'P5921homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:189;s:12:"标题列表";}', 0, 0),
(246, 'Q3054homeP83@首页', 0, '	热点话题\r\n\r\n\r\n', '	热点话题\r\n\r\n\r\n', 'Q3054homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(247, 'X1554homeP83@首页', 0, '				<list num="1" action="subject" cachetime="1800" ifpushonly="0" title="突出标题列表" />\r\n					<loop><h5 class="p83_box_h5 clB"><a class="f14 p83_fcD b"  href="{url}">{title,25}</a></h5></loop>\r\n					\r\n				<list num="5" action="subject" cachetime="10" ifpushonly="0" title="标题列表" />\r\n					<ul class="p83_ulA">\r\n						<loop><li><a href="{url}" class="f14" target="_blank" title="{title}">{title,30}</a></li></loop>\r\n					</ul>\r\n				\r\n\r\n\r\n', '				\r\nEOT;\r\n$pwresult = pwTplGetData(\'X1554homeP83@首页\',\'突出标题列表\');\r\nprint <<<EOT\r\n\r\n					\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<h5 class="p83_box_h5 clB"><a class="f14 p83_fcD b"  href="$val[url]">$val[title]</a></h5>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'X1554homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]" class="f14" target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n				\r\n\r\n\r\n', 'X1554homeP83@首页', 0, 'channel', 'home85', 'a:2:{i:191;s:12:"标题列表";i:190;s:18:"突出标题列表";}', 0, 0),
(248, 'T6737homeP83@首页', 0, '					<a href="{url}"  target="_blank" title="{title}"><img src="$channelImagePath/p83_temp_2.jpg" class="fl" /></a>\r\n\r\n', '					<a href="{url}"  target="_blank" title="{title}"><img src="$channelImagePath/p83_temp_2.jpg" class="fl" /></a>\r\n\r\n', 'T6737homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(249, 'W7964homeP83@首页', 0, '		热门信息\r\n\r\n', '		热门信息\r\n\r\n', 'W7964homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(250, 'Y201homeP83@首页', 0, '	<list num="1" action="subject" cachetime="1800" ifpushonly="0" title="突出标题列表" />\r\n		<loop><h5 class="p83_box_h5 mb5 clB"><a class="f14 p83_fcD b"  href="{url}">{title,25}</a></h5></loop>\r\n		\r\n	<list num="5" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n		<ul class="p83_ulA">\r\n<loop><li><a href="{url}"  target="_blank" title="{title}">{title,30}</a></li></loop>\r\n		</ul>\r\n	\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'Y201homeP83@首页\',\'突出标题列表\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<h5 class="p83_box_h5 mb5 clB"><a class="f14 p83_fcD b"  href="$val[url]">$val[title]</a></h5>\r\nEOT;\r\n}print <<<EOT\r\n\r\n		\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'Y201homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n		<ul class="p83_ulA">\r\n\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n		</ul>\r\n	\r\n\r\n\r\n', 'Y201homeP83@首页', 0, 'channel', 'home85', 'a:2:{i:193;s:12:"标题列表";i:192;s:18:"突出标题列表";}', 0, 0),
(251, 'I8171homeP83@首页', 0, '					<a href="{url}"  target="_blank" title="{title}"><img src="$channelImagePath/p83_temp_3.jpg" /></a>\r\n					\r\n					\r\n\r\n\r\n', '					<a href="{url}"  target="_blank" title="{title}"><img src="$channelImagePath/p83_temp_3.jpg" /></a>\r\n					\r\n					\r\n\r\n\r\n', 'I8171homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(252, 'V7942homeP83@首页', 0, '	精彩活动\r\n\r\n\r\n\r\n\r\n', '	精彩活动\r\n\r\n\r\n\r\n\r\n', 'V7942homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(253, 'V5880homeP83@首页', 0, '	<list num="3" action="image" cachetime="1800" ifpushonly="0" title="配图标题摘要" />\r\n		<loop>\r\n<dl class="p83_dlC clB cc">\r\n	<dt class="p83_dlC_t"><a href="{url}"  target="_blank" title="{title}" class="p83_fcA">{title,40}</a></dt>\r\n	<dd class="p83_dlC_p"><a href="{url}"  target="_blank" title="{title}"><img src="{image,80,55}" width="80" height="55"  /></a> </dd>\r\n	<dd class="p83_dlC_c"><a href="{url}"  target="_blank" title="{title}" class="p83_fcB" >{descrip,70}</a></dd>\r\n</dl>\r\n		</loop>	\r\n\r\n\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'V5880homeP83@首页\',\'配图标题摘要\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<dl class="p83_dlC clB cc">\r\n	<dt class="p83_dlC_t"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcA">$val[title]</a></dt>\r\n	<dd class="p83_dlC_p"><a href="$val[url]"  target="_blank" title="$val[title]"><img src="$val[image]" width="80" height="55"  /></a> </dd>\r\n	<dd class="p83_dlC_c"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcB" >$val[descrip]</a></dd>\r\n</dl>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n	\r\n\r\n\r\n', 'V5880homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:194;s:18:"配图标题摘要";}', 0, 0),
(254, 'A1787homeP83@首页', 0, '	旅游天地\r\n\r\n\r\n\r\n', '	旅游天地\r\n\r\n\r\n\r\n', 'A1787homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(255, 'R2301homeP83@首页', 0, '				<list action="subject" cachetime="1800" num="4"  title="标题列表1" />\r\n					<ul class="p83_ulA p83_ulG">\r\n						<loop>\r\n						<!--#\r\n							$count = $key+1;\r\n							$classF = $count==1?\'class="b p83_fcA"\':\'\';\r\n						#-->\r\n						<li><a href="{forumurl}" target="_blank" title="{title}">{forumname,10}</a> <span class="gray">|</span> <a href="{url}" $classf target="_blank" title="{title}">{title,30}</a></li>\r\n						</loop>\r\n					</ul>\r\n					\r\n				<list action="subject" cachetime="1800" num="7"  title="标题列表2" />\r\n					<ul class="p83_ulA has_border f14">\r\n						<loop><li><a href="{authorurl}"  target="_blank" title="{author}"><span class="gray fr f12">{author}</span></a><a href="{url}"  target="_blank" title="{title}">{title,30}</a></li></loop>\r\n					</ul>\r\n				\r\n\r\n\r\n\r\n', '				\r\nEOT;\r\n$pwresult = pwTplGetData(\'R2301homeP83@首页\',\'标题列表1\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA p83_ulG">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<!--#\r\n							$count = $key+1;\r\n							$classF = $count==1?\'class="b p83_fcA"\':\'\';\r\n						#-->\r\n						<li><a href="$val[forumurl]" target="_blank" title="$val[title]">$val[forumname]</a> <span class="gray">|</span> <a href="$val[url]" $classf target="_blank" title="$val[title]">$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n					\r\n				\r\nEOT;\r\n$pwresult = pwTplGetData(\'R2301homeP83@首页\',\'标题列表2\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA has_border f14">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[authorurl]"  target="_blank" title="$val[author]"><span class="gray fr f12">$val[author]</span></a><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n				\r\n\r\n\r\n\r\n', 'R2301homeP83@首页', 0, 'channel', 'home85', 'a:2:{i:195;s:13:"标题列表1";i:196;s:13:"标题列表2";}', 0, 0),
(256, 'T2333homeP83@首页', 0, '<span class="fl">家居装修</span>\r\n<span class="more">\r\n	<a target="_blank" href="#">图库</a> │ <a target="_blank" href="#">热点</a> │ <a target="_blank" href="#">装修</a>\r\n</span>\r\n\r\n\r\n\r\n\r\n', '<span class="fl">家居装修</span>\r\n<span class="more">\r\n	<a target="_blank" href="#">图库</a> │ <a target="_blank" href="#">热点</a> │ <a target="_blank" href="#">装修</a>\r\n</span>\r\n\r\n\r\n\r\n\r\n', 'T2333homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(257, 'M8847homeP83@首页', 0, '					<dl class="p83_dlA clB cc">\r\n						<list num="1" action="image" cachetime="1800" ifpushonly="0" title="图片" />\r\n							<dd class="p83_dlA_p"><loop><a href="{url}"  target="_blank" title="{title}"><img  src="{image,160,105}" width="160" height="105"  /></a></loop> </dd>\r\n						<dd class="p83_dlA_c">\r\n						<list num="1" action="subject" cachetime="1800" ifpushonly="0" title="突出标题列表" />\r\n						<loop><h5 class="p83_box_h5"><a class="f14 p83_fcD b"  href="{url}">{title,25}</a></h5></loop>\r\n\r\n						<list num="4" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n							<ul class="p83_ulA p83_ulG">\r\n								<loop><li><a href="{forumurl}"  target="_blank" title="{title}">{forumname,10}</a> <span class="gray">|</span> <a href="{url}"  target="_blank" title="{title}">{title,40}</a></li></loop>\r\n							</ul>\r\n						</dd>\r\n					</dl>\r\n				\r\n\r\n\r\n', '					<dl class="p83_dlA clB cc">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'M8847homeP83@首页\',\'图片\');\r\nprint <<<EOT\r\n\r\n							<dd class="p83_dlA_p">\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" title="$val[title]"><img  src="$val[image]" width="160" height="105"  /></a>\r\nEOT;\r\n}print <<<EOT\r\n </dd>\r\n						<dd class="p83_dlA_c">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'M8847homeP83@首页\',\'突出标题列表\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<h5 class="p83_box_h5"><a class="f14 p83_fcD b"  href="$val[url]">$val[title]</a></h5>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'M8847homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n							<ul class="p83_ulA p83_ulG">\r\n								\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[forumurl]"  target="_blank" title="$val[title]">$val[forumname]</a> <span class="gray">|</span> <a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n							</ul>\r\n						</dd>\r\n					</dl>\r\n				\r\n\r\n\r\n', 'M8847homeP83@首页', 0, 'channel', 'home85', 'a:3:{i:197;s:6:"图片";i:199;s:12:"标题列表";i:198;s:18:"突出标题列表";}', 0, 0),
(258, 'Y3833homeP83@首页', 0, '					<list num="6" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n					<ul class="p83_ulA f14">\r\n						<loop><li><a href="{authorurl}"  target="_blank" title="{author}"><span class="gray fr f12">{author}</span></a><a href="{url}"  target="_blank" title="{title}">{title,45}</a></li></loop>\r\n					</ul>\r\n				\r\n\r\n\r\n', '					\r\nEOT;\r\n$pwresult = pwTplGetData(\'Y3833homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA f14">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[authorurl]"  target="_blank" title="$val[author]"><span class="gray fr f12">$val[author]</span></a><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n				\r\n\r\n\r\n', 'Y3833homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:200;s:12:"标题列表";}', 0, 0),
(259, 'S7714homeP83@首页', 0, '<span class="fl">妈咪宝贝</span>\r\n<span class="more">\r\n	<a target="_blank" href="#">亲子</a> │ <a target="_blank" href="#">胎教</a> │ <a target="_blank" href="#">教育</a>\r\n</span>\r\n\r\n', '<span class="fl">妈咪宝贝</span>\r\n<span class="more">\r\n	<a target="_blank" href="#">亲子</a> │ <a target="_blank" href="#">胎教</a> │ <a target="_blank" href="#">教育</a>\r\n</span>\r\n\r\n', 'S7714homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(260, 'K9665homeP83@首页', 0, '					<dl class="p83_dlA clB cc">\r\n						<list num="1" action="image" cachetime="1800" ifpushonly="0" title="图片" />\r\n							<dd class="p83_dlA_p"><loop><a href="{url}"  target="_blank" title="{title}"><img  src="{image,160,105}" width="160" height="105"  /></a></loop> </dd>\r\n						<dd class="p83_dlA_c">\r\n						<list num="1" action="subject" cachetime="1800" ifpushonly="0" title="突出标题列表" />\r\n						<loop><h5 class="p83_box_h5"><a class="f14 p83_fcD b"  href="{url}">{title,25}</a></h5></loop>\r\n\r\n						<list num="4" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n							<ul class="p83_ulA p83_ulG">\r\n								<loop><li><a href="{forumurl}"  target="_blank" title="{title}">{forumname,10}</a> <span class="gray">|</span> <a href="{url}"  target="_blank" title="{title}">{title,40}</a></li></loop>\r\n							</ul>\r\n						</dd>\r\n					</dl>\r\n				\r\n\r\n\r\n', '					<dl class="p83_dlA clB cc">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'K9665homeP83@首页\',\'图片\');\r\nprint <<<EOT\r\n\r\n							<dd class="p83_dlA_p">\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<a href="$val[url]"  target="_blank" title="$val[title]"><img  src="$val[image]" width="160" height="105"  /></a>\r\nEOT;\r\n}print <<<EOT\r\n </dd>\r\n						<dd class="p83_dlA_c">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'K9665homeP83@首页\',\'突出标题列表\');\r\nprint <<<EOT\r\n\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<h5 class="p83_box_h5"><a class="f14 p83_fcD b"  href="$val[url]">$val[title]</a></h5>\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'K9665homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n							<ul class="p83_ulA p83_ulG">\r\n								\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[forumurl]"  target="_blank" title="$val[title]">$val[forumname]</a> <span class="gray">|</span> <a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n							</ul>\r\n						</dd>\r\n					</dl>\r\n				\r\n\r\n\r\n', 'K9665homeP83@首页', 0, 'channel', 'home85', 'a:3:{i:201;s:6:"图片";i:203;s:12:"标题列表";i:202;s:18:"突出标题列表";}', 0, 0),
(261, 'I8719homeP83@首页', 0, '					<list num="6" action="subject" cachetime="1800" ifpushonly="0" title="标题列表" />\r\n					<ul class="p83_ulA f14">\r\n						<loop><li><a href="{authorurl}"  target="_blank" title="{author}"><span class="gray fr f12">{author}</span></a><a href="{url}"  target="_blank" title="{title}">{title,45}</a></li></loop>\r\n					</ul>\r\n				\r\n\r\n\r\n', '					\r\nEOT;\r\n$pwresult = pwTplGetData(\'I8719homeP83@首页\',\'标题列表\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA f14">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n<li><a href="$val[authorurl]"  target="_blank" title="$val[author]"><span class="gray fr f12">$val[author]</span></a><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n				\r\n\r\n\r\n', 'I8719homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:204;s:12:"标题列表";}', 0, 0),
(262, 'C9663homeP83@首页', 0, '		博客生活\r\n\r\n\r\n', '		博客生活\r\n\r\n\r\n', 'C9663homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0);
INSERT INTO `pw_invoke` (`id`, `name`, `tplid`, `tagcode`, `parsecode`, `title`, `ifapi`, `scr`, `sign`, `pieces`, `state`, `ifverify`) VALUES
(263, 'E61homeP83@首页', 0, '	<list num="1" action="image" cachetime="1800" ifpushonly="0" title="配图标题摘要" />\r\n		<loop>\r\n<dl class="p83_dlC p83_dlD clB cc">\r\n	<dt class="p83_dlC_t f14 b"><a href="{url}"  target="_blank" title="{title}" class="p83_fcA">{title,40}</a></dt>\r\n	<dd class="p83_dlC_p"><a href="{url}"  target="_blank" title="{title}"><img src="{image,95,65}" width="95" height="65"  /></a> </dd>\r\n	<dd class="p83_dlC_c"><a href="{url}"  target="_blank" title="{title}" class="p83_fcB" >{descrip,70}</a></dd>\r\n</dl>\r\n		</loop>	\r\n				\r\n', '	\r\nEOT;\r\n$pwresult = pwTplGetData(\'E61homeP83@首页\',\'配图标题摘要\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<dl class="p83_dlC p83_dlD clB cc">\r\n	<dt class="p83_dlC_t f14 b"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcA">$val[title]</a></dt>\r\n	<dd class="p83_dlC_p"><a href="$val[url]"  target="_blank" title="$val[title]"><img src="$val[image]" width="95" height="65"  /></a> </dd>\r\n	<dd class="p83_dlC_c"><a href="$val[url]"  target="_blank" title="$val[title]" class="p83_fcB" >$val[descrip]</a></dd>\r\n</dl>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n	\r\n				\r\n', 'E61homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:205;s:18:"配图标题摘要";}', 0, 0),
(264, 'L9810homeP83@首页', 0, '					<li class="switchNavItem"><a href="#">最新帖子</a></li>\r\n					<li class="switchNavItem"><a href="#">最新回复</a></li>\r\n					<li class="switchNavItem"><a href="#">热门主题</a></li>\r\n					\r\n', '					<li class="switchNavItem"><a href="#">最新帖子</a></li>\r\n					<li class="switchNavItem"><a href="#">最新回复</a></li>\r\n					<li class="switchNavItem"><a href="#">热门主题</a></li>\r\n					\r\n', 'L9810homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(265, 'H8388homeP83@首页', 0, '					<div class="switchItem" style="display:none">\r\n						<list num="6" action="subject" cachetime="1800" ifpushonly="0" title="最新帖子" />\r\n						<ol class="p83_olA">\r\n						<loop>\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="{url}" target="_blank" title="{title}"><em>$count</em>{title,35}</a></li>\r\n						</loop>\r\n						</ol>\r\n					</div>\r\n					\r\n', '					<div class="switchItem" style="display:none">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'H8388homeP83@首页\',\'最新帖子\');\r\nprint <<<EOT\r\n\r\n						<ol class="p83_olA">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="$val[url]" target="_blank" title="$val[title]"><em>$count</em>$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n						</ol>\r\n					</div>\r\n					\r\n', 'H8388homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:206;s:12:"最新帖子";}', 0, 0),
(266, 'I7567homeP83@首页', 0, '					<div class="switchItem" style="display:none">\r\n						<list num="6" action="subject" cachetime="1800" ifpushonly="0" title="最新回复" />\r\n						<ol class="p83_olA">\r\n						<loop>\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="{url}" target="_blank" title="{title}"><em>$count</em>{title,35}</a></li>\r\n						</loop>\r\n						</ol>\r\n					</div>\r\n					\r\n', '					<div class="switchItem" style="display:none">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'I7567homeP83@首页\',\'最新回复\');\r\nprint <<<EOT\r\n\r\n						<ol class="p83_olA">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="$val[url]" target="_blank" title="$val[title]"><em>$count</em>$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n						</ol>\r\n					</div>\r\n					\r\n', 'I7567homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:207;s:12:"最新回复";}', 0, 0),
(267, 'D7308homeP83@首页', 0, '					<div class="switchItem" style="display:none">\r\n						<list num="6" action="subject" cachetime="1800" ifpushonly="0" title="热门主题" />\r\n						<ol class="p83_olA">\r\n						<loop>\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="{url}" target="_blank" title="{title}"><em>$count</em>{title,35}</a></li>\r\n						</loop>\r\n						</ol>\r\n					</div>\r\n					\r\n\r\n\r\n', '					<div class="switchItem" style="display:none">\r\n						\r\nEOT;\r\n$pwresult = pwTplGetData(\'D7308homeP83@首页\',\'热门主题\');\r\nprint <<<EOT\r\n\r\n						<ol class="p83_olA">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<!--# $count = $key+1;#-->\r\n							<li><a href="$val[url]" target="_blank" title="$val[title]"><em>$count</em>$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n						</ol>\r\n					</div>\r\n					\r\n\r\n\r\n', 'D7308homeP83@首页', 0, 'channel', 'home85', 'a:1:{i:208;s:12:"热门主题";}', 0, 0),
(268, 'D9324homeP83@首页', 0, '		互助问答\r\n\r\n\r\n\r\n', '		互助问答\r\n\r\n\r\n\r\n', 'D9324homeP83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(269, 'R497homeP83@首页', 0, '\r\n<dl class="p83_dlC clB cc">\r\n	<list num="1" action="image" cachetime="1800" ifpushonly="0" title="配图标题摘要" />\r\n		<loop>\r\n			<dd class="p83_dlC_p"><a href="{url}"  target="_blank" title="{title}"><img src="{image,80,55}" width="80" height="55"  /></a> </dd>\r\n		</loop>	\r\n		<dd class="p83_dlC_c">\r\n			<list num="3" action="subject" cachetime="1800" ifpushonly="0" title="标题列表1" />\r\n			<ul class="p83_ulH">\r\n			<loop>\r\n				<li><a href="{url}"  target="_blank" title="{title}">{title,16}</a></li>\r\n			</loop>\r\n			</ul>\r\n		</dd>\r\n</dl>\r\n\r\n					<list num="10" action="subject" cachetime="1800" ifpushonly="0" title="标题列表2" />\r\n					<ul class="p83_ulA p83_ulE">\r\n						<loop>\r\n						<!--#\r\n							$count = $key+1;\r\n							$classF = $count==1?\'class="b p83_fcA"\':\'\';\r\n						#-->\r\n						<li><a href="{forumurl}" target="_blank" title="{title}">{forumname}</a> <span class="gray">|</span> <a href="{url}" $classf target="_blank" title="{title}">{title,35}</a></li>\r\n						</loop>\r\n					</ul>\r\n				\r\n\r\n\r\n\r\n', '\r\n<dl class="p83_dlC clB cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'R497homeP83@首页\',\'配图标题摘要\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n			<dd class="p83_dlC_p"><a href="$val[url]"  target="_blank" title="$val[title]"><img src="$val[image]" width="80" height="55"  /></a> </dd>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n	\r\n		<dd class="p83_dlC_c">\r\n			\r\nEOT;\r\n$pwresult = pwTplGetData(\'R497homeP83@首页\',\'标题列表1\');\r\nprint <<<EOT\r\n\r\n			<ul class="p83_ulH">\r\n			\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n				<li><a href="$val[url]"  target="_blank" title="$val[title]">$val[title]</a></li>\r\n			\r\nEOT;\r\n}print <<<EOT\r\n\r\n			</ul>\r\n		</dd>\r\n</dl>\r\n\r\n					\r\nEOT;\r\n$pwresult = pwTplGetData(\'R497homeP83@首页\',\'标题列表2\');\r\nprint <<<EOT\r\n\r\n					<ul class="p83_ulA p83_ulE">\r\n						\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n						<!--#\r\n							$count = $key+1;\r\n							$classF = $count==1?\'class="b p83_fcA"\':\'\';\r\n						#-->\r\n						<li><a href="$val[forumurl]" target="_blank" title="$val[title]">$val[forumname]</a> <span class="gray">|</span> <a href="$val[url]" $classf target="_blank" title="$val[title]">$val[title]</a></li>\r\n						\r\nEOT;\r\n}print <<<EOT\r\n\r\n					</ul>\r\n				\r\n\r\n\r\n\r\n', 'R497homeP83@首页', 0, 'channel', 'home85', 'a:3:{i:210;s:13:"标题列表1";i:211;s:13:"标题列表2";i:209;s:18:"配图标题摘要";}', 0, 0),
(270, 'O5290homep83@首页', 0, '友情链接\r\n\r\n', '友情链接\r\n\r\n', 'O5290homep83@首页', 0, 'channel', 'home85', 'a:0:{}', 0, 0),
(271, 'A1_头部图片轮播@图酷', 0, '<ul class="tu_flash_switch" id="SlayerA_1">\r\n	<list cachetime="1800" action="image" num="4" title="图片播放器大图" />\r\n	<loop>\r\n		<li class="switchItem" style="display:none"><a href="{url}"  target="_blank"><img src="{image,520,300}" width="520" height="300" /><h3>{title,30}</h3></a></li>\r\n	</loop>\r\n</ul>\r\n<div class="tu_flash_bg"></div>\r\n	<ol class="tu_flash_nav" id="SlayerA_2">\r\n	<!--#foreach($pwresult as $value){#-->\r\n		<li class="switchNavItem"><a href="$value[url]"  target="_blank"><img src="$value[image]" width="47" height="47" /></a></li>\r\n	<!--#}#-->\r\n	</ol>\r\n\r\n', '<ul class="tu_flash_switch" id="SlayerA_1">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'A1_头部图片轮播@图酷\',\'图片播放器大图\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li class="switchItem" style="display:none"><a href="$val[url]"  target="_blank"><img src="$val[image]" width="520" height="300" /><h3>$val[title]</h3></a></li>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</ul>\r\n<div class="tu_flash_bg"></div>\r\n	<ol class="tu_flash_nav" id="SlayerA_2">\r\n	<!--#foreach($pwresult as $value){#-->\r\n		<li class="switchNavItem"><a href="$value[url]"  target="_blank"><img src="$value[image]" width="47" height="47" /></a></li>\r\n	<!--#}#-->\r\n	</ol>\r\n\r\n', 'A1_头部图片轮播@图酷', 0, 'channel', 'tucool', 'a:1:{i:212;s:21:"图片播放器大图";}', 0, 0),
(272, 'B1_今日推荐标题@图酷', 0, '<a href="#" class="more">更多</a><strong>今日推荐</strong>\r\n\r\n', '<a href="#" class="more">更多</a><strong>今日推荐</strong>\r\n\r\n', 'B1_今日推荐标题@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(273, 'B2_今日推荐图文@图酷', 0, '<list cachetime="1800" action="image" num="3" title="今日推荐图文" />\r\n<div class="tu_dl_img cc">\r\n<!--# $count = 0;#-->\r\n	<loop>\r\n<!--#\r\n$tempClass = (($count % 3) == 0) ? \'class="one"\' : \'\';\r\n$count++;\r\n#-->\r\n	<dl $tempClass>\r\n		<dt><a href="{url}"><img src="{image,180,135}" width="180" height="135" /></a></dt>\r\n		<dd>\r\n			<p class="s6 cc mb10"><span class="imgView" title="浏览数" alt="浏览数">查看：</span><span class="mr10 fl" title="浏览数" alt="浏览数">{hits}</span><span class="imgFav" title="收藏数" alt="收藏数">收藏：</span><span class="fl" title="收藏数" alt="收藏数">{collectnum}</span></p>\r\n			<p class="mb5"><a href="{url}">{title,24}</a></p>\r\n			<p><a href="{authorurl}" class="s6 mr20">{author}</a><span class="s6">{totalnum} 张</span></p>\r\n		</dd>\r\n	</dl>\r\n	</loop>\r\n</div>\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B2_今日推荐图文@图酷\',\'今日推荐图文\');\r\nprint <<<EOT\r\n\r\n<div class="tu_dl_img cc">\r\n<!--# $count = 0;#-->\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n<!--#\r\n$tempClass = (($count % 3) == 0) ? \'class="one"\' : \'\';\r\n$count++;\r\n#-->\r\n	<dl $tempClass>\r\n		<dt><a href="$val[url]"><img src="$val[image]" width="180" height="135" /></a></dt>\r\n		<dd>\r\n			<p class="s6 cc mb10"><span class="imgView" title="浏览数" alt="浏览数">查看：</span><span class="mr10 fl" title="浏览数" alt="浏览数">$val[hits]</span><span class="imgFav" title="收藏数" alt="收藏数">收藏：</span><span class="fl" title="收藏数" alt="收藏数">$val[collectnum]</span></p>\r\n			<p class="mb5"><a href="$val[url]">$val[title]</a></p>\r\n			<p><a href="$val[authorurl]" class="s6 mr20">$val[author]</a><span class="s6">$val[totalnum] 张</span></p>\r\n		</dd>\r\n	</dl>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n</div>\r\n\r\n', 'B2_今日推荐图文@图酷', 0, 'channel', 'tucool', 'a:1:{i:213;s:18:"今日推荐图文";}', 0, 0),
(274, 'B3_图片分类模块1@图酷', 0, '<a href="#" class="more">更多</a><strong>人物</strong>\r\n\r\n', '<a href="#" class="more">更多</a><strong>人物</strong>\r\n\r\n', 'B3_图片分类模块1@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(275, 'B4_图片分类模块列表1@图酷', 0, '	<ul class="tu_mode_ul cc">\r\n		<list cachetime="1800" action="image" num="4" title="图片分类模块列表1" />\r\n		<loop>\r\n		<li><a href="{url}"><img src="{image,138,103}" width="138" height="103" /></a><p><a href="{url}">{title,20}</a></p></li>\r\n		</loop>\r\n	</ul>\r\n\r\n', '	<ul class="tu_mode_ul cc">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'B4_图片分类模块列表1@图酷\',\'图片分类模块列表1\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"><img src="$val[image]" width="138" height="103" /></a><p><a href="$val[url]">$val[title]</a></p></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B4_图片分类模块列表1@图酷', 0, 'channel', 'tucool', 'a:1:{i:214;s:25:"图片分类模块列表1";}', 0, 0),
(276, 'B5_图片分类模块2@图酷', 0, '<a href="#" class="more">更多</a><strong>风景</strong>\r\n\r\n', '<a href="#" class="more">更多</a><strong>风景</strong>\r\n\r\n', 'B5_图片分类模块2@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(277, 'B6_图片分类模块列表2@图酷', 0, '	<ul class="tu_mode_ul cc">\r\n		<list cachetime="1800" action="image" num="4" title="图片分类模块列表2" />\r\n		<loop>\r\n		<li><a href="{url}"><img src="{image,138,103}" width="138" height="103" /></a><p><a href="{url}">{title,20}</a></p></li>\r\n		</loop>\r\n	</ul>\r\n\r\n', '	<ul class="tu_mode_ul cc">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'B6_图片分类模块列表2@图酷\',\'图片分类模块列表2\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"><img src="$val[image]" width="138" height="103" /></a><p><a href="$val[url]">$val[title]</a></p></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B6_图片分类模块列表2@图酷', 0, 'channel', 'tucool', 'a:1:{i:215;s:25:"图片分类模块列表2";}', 0, 0),
(278, 'B7_图片分类模块3@图酷', 0, '<a href="#" class="more">更多</a><strong>旅游</strong>\r\n\r\n', '<a href="#" class="more">更多</a><strong>旅游</strong>\r\n\r\n', 'B7_图片分类模块3@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(279, 'B8_图片分类模块列表3@图酷', 0, '	<ul class="tu_mode_ul cc">\r\n		<list cachetime="1800" action="image" num="4" title="图片分类模块列表3" />\r\n		<loop>\r\n		<li><a href="{url}"><img src="{image,138,103}" width="138" height="103" /></a><p><a href="{url}">{title,20}</a></p></li>\r\n		</loop>\r\n	</ul>\r\n\r\n', '	<ul class="tu_mode_ul cc">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'B8_图片分类模块列表3@图酷\',\'图片分类模块列表3\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"><img src="$val[image]" width="138" height="103" /></a><p><a href="$val[url]">$val[title]</a></p></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B8_图片分类模块列表3@图酷', 0, 'channel', 'tucool', 'a:1:{i:216;s:25:"图片分类模块列表3";}', 0, 0),
(280, 'B9_图片分类模块4@图酷', 0, '<a href="#" class="more">更多</a><strong>婚纱</strong>\r\n\r\n', '<a href="#" class="more">更多</a><strong>婚纱</strong>\r\n\r\n', 'B9_图片分类模块4@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(281, 'B10_图片分类模块列表4@图酷', 0, '	<ul class="tu_mode_ul cc">\r\n		<list cachetime="1800" action="image" num="4" title="图片分类模块列表4" />\r\n		<loop>\r\n		<li><a href="{url}"><img src="{image,138,103}" width="138" height="103" /></a><p><a href="{url}">{title,20}</a></p></li>\r\n		</loop>\r\n	</ul>\r\n\r\n', '	<ul class="tu_mode_ul cc">\r\n		\r\nEOT;\r\n$pwresult = pwTplGetData(\'B10_图片分类模块列表4@图酷\',\'图片分类模块列表4\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]"><img src="$val[image]" width="138" height="103" /></a><p><a href="$val[url]">$val[title]</a></p></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B10_图片分类模块列表4@图酷', 0, 'channel', 'tucool', 'a:1:{i:217;s:25:"图片分类模块列表4";}', 0, 0),
(282, 'A3_头部公告标题@图酷', 0, '公告\r\n', '公告\r\n', 'A3_头部公告标题@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(283, 'A4_头部公告列表@图酷', 0, '<ul class="tu_ul">\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n</ul>\r\n\r\n', '<ul class="tu_ul">\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n   <li><a href="#">phpwind8.5 图酷公告</a></li>\r\n</ul>\r\n\r\n', 'A4_头部公告列表@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(284, 'B11_右侧广告位@图酷', 0, '<a href="#" target="_blank"><img src="http://tiyan.phpwind.net/c/attachment/Mon_1103/60_6420_9bf60eeecb6dfa5.png" class="fl" /></a>\r\n\r\n', '<a href="#" target="_blank"><img src="http://tiyan.phpwind.net/c/attachment/Mon_1103/60_6420_9bf60eeecb6dfa5.png" class="fl" /></a>\r\n\r\n', 'B11_右侧广告位@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(285, 'B13_右侧活跃图客标题@图酷', 0, '活跃图客\r\n\r\n', '活跃图客\r\n\r\n', 'B13_右侧活跃图客标题@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(286, 'B14_右侧活跃图客列表@图酷', 0, '	<ul class="tu_ul_img cc">\r\n	<list cachetime="1800" action="image" num="8" title="活跃图客列表" />\r\n		<loop>\r\n		<li><a href="{url}" title="{title}" alt="{title}"><img src="{image,48,48}" width="48" height="48" /></a></li>\r\n		</loop>\r\n	</ul>\r\n\r\n', '	<ul class="tu_ul_img cc">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B14_右侧活跃图客列表@图酷\',\'活跃图客列表\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]" title="$val[title]" alt="$val[title]"><img src="$val[image]" width="48" height="48" /></a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ul>\r\n\r\n', 'B14_右侧活跃图客列表@图酷', 0, 'channel', 'tucool', 'a:1:{i:218;s:18:"活跃图客列表";}', 0, 0),
(287, 'B15_右侧精彩活动标题@图酷', 0, '精华图酷\r\n', '精华图酷\r\n', 'B15_右侧精彩活动标题@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(288, 'B16_右侧精彩活动列表@图酷', 0, '<list cachetime="1800" action="subject" num="3" title="精彩活动列表" />\r\n	<loop>\r\n	<dl>\r\n		<dt><a href="{url}">{title,24}</a></dt>\r\n		<dd>{descrip,76}</dd>\r\n	</dl>\r\n	</loop>\r\n\r\n', '\r\nEOT;\r\n$pwresult = pwTplGetData(\'B16_右侧精彩活动列表@图酷\',\'精彩活动列表\');\r\nprint <<<EOT\r\n\r\n	\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n	<dl>\r\n		<dt><a href="$val[url]">$val[title]</a></dt>\r\n		<dd>$val[descrip]</dd>\r\n	</dl>\r\n	\r\nEOT;\r\n}print <<<EOT\r\n\r\n\r\n', 'B16_右侧精彩活动列表@图酷', 0, 'channel', 'tucool', 'a:1:{i:219;s:18:"精彩活动列表";}', 0, 0),
(289, 'B17_右侧热门图酷标题@图酷', 0, '热门图酷\r\n', '热门图酷\r\n', 'B17_右侧热门图酷标题@图酷', 0, 'channel', 'tucool', 'a:0:{}', 0, 0),
(290, 'B18_右侧热门图酷列表@图酷', 0, '	<ol class="tu_ol">\r\n	<list cachetime="1800" action="subject" num="10" title="热门图酷列表" />\r\n		<loop>\r\n		<li><a href="{url}">{title,24}</a></li>\r\n		</loop>\r\n	</ol>\r\n\r\n', '	<ol class="tu_ol">\r\n	\r\nEOT;\r\n$pwresult = pwTplGetData(\'B18_右侧热门图酷列表@图酷\',\'热门图酷列表\');\r\nprint <<<EOT\r\n\r\n		\r\nEOT;\r\nforeach($pwresult as $key=>$val){print <<<EOT\r\n\r\n		<li><a href="$val[url]">$val[title]</a></li>\r\n		\r\nEOT;\r\n}print <<<EOT\r\n\r\n	</ol>\r\n\r\n', 'B18_右侧热门图酷列表@图酷', 0, 'channel', 'tucool', 'a:1:{i:220;s:18:"热门图酷列表";}', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_invokepiece`
--

CREATE TABLE `pw_invokepiece` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `invokename` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `param` text NOT NULL,
  `cachetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifpushonly` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_invokepiece`
--

INSERT INTO `pw_invokepiece` (`id`, `invokename`, `title`, `action`, `config`, `num`, `param`, `cachetime`, `ifpushonly`) VALUES
(1, 'A2_头部头条@亲子', '标题摘要模块X1', 'subject', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";s:7:"descrip";s:3:"110";}', 1800, 0),
(2, 'A2_头部头条@亲子', '小标题X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"4";s:5:"title";s:2:"20";}', 1800, 0),
(3, 'A3_头部通知和入口@亲子', '小标题X2', 'subject', '', 2, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(4, 'A3_头部通知和入口@亲子', '会员名X4', 'user', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"10";}', 1800, 0),
(5, 'B1_播放器@亲子', '播放器', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"302,252";s:5:"title";s:2:"36";}', 1800, 0),
(6, 'B3_左侧图文1@亲子', '活动1', 'image', '', 3, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"88,88";s:5:"title";s:2:"22";s:8:"descript";s:2:"80";}', 1800, 0),
(7, 'B4_左侧列表@亲子', '标题列表X6', 'subject', '', 6, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"4";s:5:"title";s:2:"35";}', 1800, 0),
(8, 'B5_左侧图文2@亲子', '图文列表X4', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 4, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"57,57";s:5:"title";s:2:"30";s:7:"descrip";s:2:"52";}', 1800, 0),
(9, 'B7_中间摘要@亲子', '头条标题和摘要X3', 'subject', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"44";s:7:"descrip";s:3:"110";}', 1800, 0),
(10, 'B8_中间列表@亲子', '标题列表X18', 'subject', '', 18, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"4";s:5:"title";s:2:"25";}', 1800, 0),
(11, 'B10_右侧tab内容1@亲子', '链接标签1', 'tag', '', 11, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"12";}', 1800, 0),
(12, 'B11_右侧tab内容2@亲子', '链接标签2', 'tag', '', 11, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"12";}', 1800, 0),
(13, 'B13_左侧图文1@亲子', 'more链接指向', 'subject', '', 1, 'a:1:{s:3:"url";s:7:"default";}', 1800, 0),
(14, 'B13_左侧图文1@亲子', '左边图文X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"105,80";s:5:"title";s:2:"24";s:7:"descrip";s:2:"76";}', 1800, 0),
(15, 'B13_左侧图文1@亲子', '左边标题列表X4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"45";}', 1800, 0),
(16, 'B13_左侧图文1@亲子', '右边图文X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"105,80";s:5:"title";s:2:"24";s:7:"descrip";s:2:"76";}', 1800, 0),
(17, 'B13_左侧图文1@亲子', '右边标题列表X4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"45";}', 1800, 0),
(18, 'B15_左侧图文2@亲子', '小朋友头像X1', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:7:"295,170";}', 1800, 0),
(19, 'B15_左侧图文2@亲子', '小朋友头像列表X15', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 15, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"48,48";}', 1800, 0),
(20, 'B16_左侧图文3@亲子', '更多链接指向', 'subject', 'a:2:{s:4:"func";s:10:"newsubject";s:4:"rang";s:0:"";}', 1, 'a:1:{s:3:"url";s:7:"default";}', 1800, 0),
(21, 'B16_左侧图文3@亲子', '宝宝生日详细', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 1, 'a:5:{s:3:"url";s:7:"default";s:5:"image";s:7:"295,170";s:5:"title";s:2:"30";s:6:"author";s:7:"default";s:7:"descrip";s:3:"140";}', 1800, 0),
(22, 'C2_中间图文@亲子', '左边图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"235,150";s:5:"title";s:2:"20";}', 1800, 0),
(23, 'C2_中间图文@亲子', '左侧标题摘要X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";s:7:"descrip";s:2:"80";}', 1800, 0),
(24, 'C3_中间列表@亲子', '准备怀孕', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"28";}', 1800, 0),
(25, 'C3_中间列表@亲子', '孕前期', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"28";}', 1800, 0),
(26, 'C3_中间列表@亲子', '孕中期', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"28";}', 1800, 0),
(27, 'C3_中间列表@亲子', '孕后期', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"28";}', 1800, 0),
(28, 'C4_左侧列表@亲子', '课堂排行', 'subject', '', 8, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(29, 'D2_中间图文摘要@亲子', '左边图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"235,150";s:5:"title";s:2:"20";}', 1800, 0),
(30, 'D2_中间图文摘要@亲子', '左侧标题摘要X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";s:7:"descrip";s:2:"80";}', 1800, 0),
(31, 'D3_中间图文列表@亲子', '左边图片X1', 'image', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"75,70";}', 1800, 0),
(32, 'D3_中间图文列表@亲子', '左边标题列表X4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"22";}', 1800, 0),
(33, 'D3_中间图文列表@亲子', '右边边图片X1', 'image', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"75,70";}', 1800, 0),
(34, 'D3_中间图文列表@亲子', '右边标题列表X4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"22";}', 1800, 0),
(35, 'D4_右侧图文@亲子', '图文列表X4', 'image', 'a:2:{s:4:"func";s:6:"newpic";s:4:"rang";s:0:"";}', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"45,40";s:7:"descrip";s:2:"40";}', 1700, 0),
(36, 'E2_中间图文摘要@亲子', '左边图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"235,150";s:5:"title";s:2:"20";}', 1800, 0),
(37, 'E2_中间图文摘要@亲子', '左侧标题摘要X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";s:7:"descrip";s:2:"80";}', 1800, 0),
(38, 'E3_中间图文列表@亲子', '左侧图片X3', 'image', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"70,65";s:5:"title";s:2:"10";}', 1800, 0),
(39, 'E3_中间图文列表@亲子', '右侧标题列表X4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"42";}', 1800, 0),
(40, 'E4_右侧列表@亲子', '标题列表X8', 'subject', '', 8, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"28";}', 1800, 0),
(41, 'A3_播放器@家装', '图片播放器大图', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"300,400";s:5:"title";s:2:"30";}', 1800, 0),
(42, 'A4_中间摘要@家装', '头条标题摘要', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";s:7:"descrip";s:2:"80";}', 1800, 0),
(43, 'A5_中间列表@家装', '标题列表', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"40";}', 1800, 0),
(44, 'A7_右侧图文@家装', '图文列表X2', 'image', '', 2, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"60,55";s:5:"title";s:2:"25";s:7:"descrip";s:2:"35";}', 1800, 0),
(45, 'A8_右侧列表@家装', '标题列表', 'subject', '', 5, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"20";}', 1800, 0),
(46, 'B2_左侧图片@家装', '图文', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"175,115";s:5:"title";s:2:"25";s:7:"descrip";s:2:"60";}', 1800, 0),
(47, 'B3_中间列表@家装', '标题列表X12', 'subject', '', 12, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"20";}', 1800, 0),
(48, 'B4_中间图文@家装', '图片列表X5', 'image', '', 5, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"80,80";s:5:"title";s:2:"12";s:7:"descrip";s:2:"12";}', 1800, 0),
(49, 'B6_右侧图文@家装', '图片列表X2', 'image', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"105,85";s:5:"title";s:2:"15";}', 1800, 0),
(50, 'B7_右侧摘要@家装', '标题摘要_2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";s:7:"descrip";s:2:"60";}', 1800, 0),
(51, 'C3_图片@家装', '图片X7', 'image', '', 7, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";}', 1800, 0),
(52, 'D8_左下图文@家装', '图文x1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"20";s:7:"descrip";s:2:"40";}', 1800, 0),
(53, 'D9_左下列表@家装', '标题列表x4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";}', 1800, 0),
(54, 'D10_中间摘要@家装', '标题X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";s:7:"descrip";s:2:"90";}', 1800, 0),
(55, 'D12_中间图文@家装', '图文x1', 'image', '', 1, 'a:5:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,80";s:9:"forumname";s:1:"8";s:5:"title";s:2:"15";s:7:"descrip";s:2:"80";}', 1800, 0),
(56, 'D13_中间列表@家装', '标题列表', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"45";}', 1800, 0),
(57, 'D15_右上图文@家装', '图文列表_2', 'image', '', 2, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"60,60";s:5:"title";s:2:"25";s:7:"descrip";s:2:"40";}', 1800, 0),
(58, 'D17_右下图文@家装', '图文1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"85,65";s:5:"title";s:2:"25";s:7:"descrip";s:2:"60";}', 1800, 0),
(59, 'D18_右下列表@家装', '标题列表', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(60, 'E4_图片1@家装', '图片列表X4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"15";}', 1800, 0),
(61, 'E6_图片2@家装', '图片列表X4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"15";}', 1800, 0),
(62, 'E8_图片3@家装', '图片列表x4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"15";}', 1800, 0),
(63, 'E10_图片4@家装', '图片X4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"15";}', 1800, 0),
(64, 'E11_左下图文@家装', '图文X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"25";s:7:"descrip";s:3:"100";}', 1800, 0),
(65, 'E12_右下列表@家装', '标题列表x8', 'subject', '', 8, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";}', 1800, 0),
(66, 'F4_左侧图文@家装', '图文列表', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"20";s:7:"descrip";s:2:"70";}', 1800, 0),
(67, 'F5_左侧列表@家装', '标题列表x5', 'subject', '', 5, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"30";}', 1800, 0),
(68, 'F6_左侧图片@家装', '图片X3', 'image', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"85,100";s:5:"title";s:2:"12";}', 1800, 0),
(69, 'F7_中间摘要@家装', '标题摘要X2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";s:7:"descrip";s:2:"90";}', 1800, 0),
(70, 'F9_中间图文@家装', '图文X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,80";s:5:"title";s:2:"24";s:7:"descrip";s:2:"80";}', 1800, 0),
(71, 'F10_中间列表@家装', '标题X3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"50";}', 1800, 0),
(72, 'F12_右上图片@家装', '图片x3', 'image', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"70,70";s:5:"title";s:2:"12";}', 1800, 0),
(73, 'F13_右上列表@家装', '标题X2', 'subject', '', 2, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(74, 'F15_右下摘要@家装', '图文X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"85,65";s:5:"title";s:2:"20";s:7:"descrip";s:2:"50";}', 1800, 0),
(75, 'F16_右下列表@家装', '标题x3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(76, 'G4_左上图文1@家装', '图片x1', 'image', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,60";}', 1800, 0),
(77, 'G4_左上图文1@家装', '标题x3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(78, 'G6_左上图文2@家装', '图片x1', 'image', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,60";}', 1800, 0),
(79, 'G6_左上图文2@家装', '标题x3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(80, 'G9_左下图文@家装', '图片x1', 'image', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,60";}', 1800, 0),
(81, 'G9_左下图文@家装', '标题x3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(82, 'G11_中间图文1@家装', '图文', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"125,85";s:5:"title";s:2:"10";s:7:"descrip";s:2:"50";}', 1800, 0),
(83, 'G12_中间列表1@家装', '标题x4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(84, 'G13_中间图文2@家装', '图文', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"125,85";s:5:"title";s:2:"10";s:7:"descrip";s:2:"50";}', 1800, 0),
(85, 'G14_中间列表2@家装', '标题x4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(86, 'G15_中间图文3@家装', '图文', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"125,85";s:5:"title";s:2:"10";s:7:"descrip";s:2:"50";}', 1800, 0),
(87, 'G16_中间列表3@家装', '标题x4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(88, 'G17_中间图文4@家装', '图文', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"125,85";s:5:"title";s:2:"10";s:7:"descrip";s:2:"50";}', 1800, 0),
(89, 'G18_中间列表4@家装', '标题x4', 'subject', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(90, 'H4_左侧图文@家装', '图文x1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,85";s:5:"title";s:2:"25";s:7:"descrip";s:2:"70";}', 1800, 0),
(91, 'H5_左侧列表@家装', '标题x4', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"20";}', 1800, 0),
(92, 'H6_中间图片@家装', '图文', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"10";}', 1800, 0),
(93, 'H7_右侧摘要@家装', '标题摘要x2', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";s:7:"descrip";s:2:"70";}', 1800, 0),
(94, 'H8_右侧列表@家装', '标题x3', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";}', 1800, 0),
(95, 'B1_播放器@汽车', '图片', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"300,250";s:5:"title";s:2:"20";}', 1800, 0),
(96, 'B3_左侧内容@汽车', '图文列表X3', 'image', '', 3, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,70";s:5:"title";s:2:"25";s:7:"descrip";s:2:"75";}', 1800, 0),
(97, 'B4_左侧列表@汽车', '标题列表X8', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"35";}', 1800, 0),
(98, 'B6_今日聚焦头条@汽车', '标题摘要X3', 'subject', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";s:7:"descrip";s:3:"110";}', 1800, 0),
(99, 'B7_今日聚焦列表@汽车', '标题列表X12', 'subject', '', 12, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(100, 'B11_中下图文1@汽车', '图文列表X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,70";s:5:"title";s:2:"15";}', 1800, 0),
(101, 'B11_中下图文1@汽车', '标题列表X5', 'subject', '', 5, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";}', 1800, 0),
(102, 'B12_中下图文2@汽车', '图文列表X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,70";s:5:"title";s:2:"15";}', 1800, 0),
(103, 'B12_中下图文2@汽车', '标题列表X5', 'subject', '', 5, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";}', 1800, 0),
(104, 'B15_右上列表@汽车', '标题列表X5', 'subject', '', 5, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(105, 'B16_右上图片@汽车', '图片列表X2', 'image', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,70";s:5:"title";s:2:"15";}', 1800, 0),
(106, 'B18_右下排行@汽车', '标题列表X10', 'subject', '', 10, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(107, 'C3A_tab内容1@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(108, 'C3A_tab内容1@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(109, 'C3A_tab内容1@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(110, 'C3B_tab内容2@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(111, 'C3B_tab内容2@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(112, 'C3B_tab内容2@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(113, 'C3C_tab内容3@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(114, 'C3C_tab内容3@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(115, 'C3C_tab内容3@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(116, 'C3D_tab内容4@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(117, 'C3D_tab内容4@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(118, 'C3D_tab内容4@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(119, 'C3E_tab内容5@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(120, 'C3E_tab内容5@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(121, 'C3E_tab内容5@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(122, 'C3F_tab内容6@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(123, 'C3F_tab内容6@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(124, 'C3F_tab内容6@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(125, 'C3G_tab内容7@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(126, 'C3G_tab内容7@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(127, 'C3G_tab内容7@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(128, 'C3H_tab内容8@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(129, 'C3H_tab内容8@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(130, 'C3H_tab内容8@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(131, 'C3I_tab内容9@汽车', '特别推荐车', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,120";s:5:"title";s:2:"15";s:7:"descrip";s:2:"10";}', 1800, 0),
(132, 'C3I_tab内容9@汽车', '特别推荐车描述', 'tag', '', 5, 'a:1:{s:5:"title";s:7:"default";}', 1800, 0),
(133, 'C3I_tab内容9@汽车', '车图列表X10', 'image', '', 10, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"120,90";s:5:"title";s:2:"15";s:7:"descrip";s:2:"15";}', 1800, 0),
(134, 'C6_左侧图文@汽车', '图片列表X8', 'image', '', 8, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"145,110";s:5:"title";s:2:"20";}', 1800, 0),
(135, 'C8_右侧图文@汽车', '图片列表X4', 'image', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"215,40";s:5:"title";s:2:"30";}', 1800, 0),
(136, 'D3_左侧图文@汽车', '图文列表X1', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"140,95";s:5:"title";s:2:"30";s:7:"descrip";s:3:"110";}', 1800, 0),
(137, 'D4_左侧列表@汽车', '标题列表X12', 'subject', '', 12, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"30";}', 1800, 0),
(138, 'D5_中间图文@汽车', '图文列表X4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"65,50";s:5:"title";s:2:"70";}', 1800, 0),
(139, 'D7_右侧图文@汽车', '图文列表X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"215,75";s:5:"title";s:2:"30";}', 1800, 0),
(140, 'D8_右侧列表@汽车', '标题列表X7', 'subject', '', 7, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"30";}', 1800, 0),
(141, 'E3_播放器@汽车', '图片', 'image', '', 5, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"325,210";s:5:"title";s:2:"20";}', 1800, 0),
(142, 'E4_中间摘要@汽车', '标题摘要X1', 'subject', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";s:7:"descrip";s:2:"80";}', 1800, 0),
(143, 'E5_中间列表@汽车', '标题列表X8', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"22";}', 1800, 0),
(144, 'E6_中间图片@汽车', '图标列表X4', 'image', '', 4, 'a:2:{s:3:"url";s:7:"default";s:5:"image";s:5:"80,50";}', 1800, 0),
(145, 'E8_右侧图文@汽车', '图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"215,75";s:5:"title";s:2:"30";}', 1800, 0),
(146, 'E9_右侧列表@汽车', '标题列表X5', 'subject', '', 5, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"25";}', 1800, 0),
(147, 'F3_图文1@汽车', '图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"210,70";s:5:"title";s:2:"30";}', 1800, 0),
(148, 'F3_图文1@汽车', '标题X4', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"25";}', 1800, 0),
(149, 'F4_图文2@汽车', '图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"210,70";s:5:"title";s:2:"30";}', 1800, 0),
(150, 'F4_图文2@汽车', '标题X4', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"25";}', 1800, 0),
(151, 'F5_图文3@汽车', '图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"210,70";s:5:"title";s:2:"30";}', 1800, 0),
(152, 'F5_图文3@汽车', '标题X4', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"25";}', 1800, 0),
(153, 'F6_图文4@汽车', '图片X1', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"210,70";s:5:"title";s:2:"30";}', 1800, 0),
(154, 'F6_图文4@汽车', '标题X4', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"25";}', 1800, 0),
(155, 'G2_左侧列表@汽车', '车友会列表X30', 'subject', '', 30, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(156, 'G4A_右侧TAB内容1@汽车', '图片', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"85,65";s:5:"title";s:2:"30";s:7:"descrip";s:2:"90";}', 1800, 0),
(157, 'G4A_右侧TAB内容1@汽车', '标题列表X8', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"18";}', 1800, 0),
(158, 'G4B_右侧TAB内容2@汽车', '图片', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"85,65";s:5:"title";s:2:"30";s:7:"descrip";s:2:"90";}', 1800, 0),
(159, 'G4B_右侧TAB内容2@汽车', '标题列表X8', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"18";}', 1800, 0),
(160, 'A2_播放器@美食', 'A1播放器1A', 'image', '', 4, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"290,280";s:5:"title";s:2:"30";s:7:"descrip";s:2:"40";}', 1800, 0),
(161, 'A4_左下图文列表@美食', '标题摘要', 'image', '', 2, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"105,52";s:5:"title";s:4:"5040";s:7:"descrip";s:2:"45";}', 1800, 0),
(162, 'A6_热点摘要@美食', '第一屏头条', 'subject', '', 2, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";s:7:"descrip";s:3:"140";}', 1800, 0),
(163, 'A7_热点标题列表@美食', '标题列表', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:1:"8";s:5:"title";s:2:"30";}', 1800, 0),
(164, 'A8_热点图片列表@美食', '图片列表', 'image', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:6:"100,90";s:5:"title";s:2:"16";}', 1800, 0),
(165, 'A10_右上列表@美食', '链接标签', 'tag', '', 20, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"12";}', 1800, 0),
(166, 'A12_右下图文@美食', '图文列表', 'image', '', 2, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"60,60";s:5:"title";s:2:"16";s:7:"descrip";s:2:"30";}', 1800, 0),
(167, 'A13_右下列表@美食', '标题列表', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(168, 'B2_左上图片列表@美食', '图片列表', 'image', '', 8, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"65,55";s:5:"title";s:2:"10";}', 1800, 0),
(169, 'B4_中上列表@美食', '标题列表', 'subject', '', 8, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(170, 'B6_左下图文摘要@美食', '图文模块', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:7:"130,155";s:5:"title";s:2:"18";s:7:"descrip";s:3:"120";}', 1800, 0),
(171, 'B7_中下标题列表@美食', '标题列表', 'subject', '', 8, 'a:3:{s:3:"url";s:7:"default";s:9:"forumname";s:7:"default";s:5:"title";s:2:"20";}', 1800, 0),
(172, 'B9_右侧图片列表@美食', '图文列表', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:5:"90,65";s:5:"title";s:2:"15";}', 1800, 0),
(173, 'B10_右侧标题列表@美食', '标题列表', 'subject', '', 10, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(174, 'C2_左上图文列表@美食', '图文列表', 'image', '', 4, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"65,65";s:5:"title";s:2:"20";s:7:"descrip";s:2:"40";}', 1800, 0),
(175, 'C4_左下图文列表@美食', '图文列表', 'image', '', 2, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:6:"100,75";s:5:"title";s:2:"30";s:7:"descrip";s:2:"58";}', 1800, 0),
(176, 'C5_左下标题列表@美食', '标题列表', 'subject', '', 8, 'a:2:{s:9:"forumname";s:7:"default";s:5:"title";s:2:"22";}', 1800, 0),
(177, 'C7_右侧标题列表@美食', '图文列表', 'image', '', 5, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"65,65";s:5:"title";s:2:"20";s:7:"descrip";s:2:"50";}', 1800, 0),
(178, 'D3_左上TAG内容1@美食', '图文列表', 'image', '', 6, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"14";s:7:"descrip";s:2:"50";}', 1800, 0),
(179, 'D4_左上TAG内容2@美食', '图文列表', 'image', '', 6, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"14";s:7:"descrip";s:2:"50";}', 1800, 0),
(180, 'D5_左上TAG内容3@美食', '图文列表', 'image', '', 6, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"14";s:7:"descrip";s:2:"50";}', 1800, 0),
(181, 'D6_左上TAG内容4@美食', '图文列表', 'image', '', 6, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"95,75";s:5:"title";s:2:"14";s:7:"descrip";s:2:"50";}', 1800, 0),
(182, 'D9_左下图片列表@美食', '图文列表', 'image', '', 8, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"105,130";s:5:"title";s:2:"14";}', 1800, 0),
(183, 'D11_右侧图片列表@美食', '图文列表', 'image', '', 4, 'a:4:{s:3:"url";s:7:"default";s:5:"image";s:5:"65,45";s:5:"title";s:2:"15";s:7:"descrip";s:2:"35";}', 1800, 0),
(184, 'D12_右侧标签链接@美食', '标签', 'tag', '', 18, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"10";}', 1800, 0),
(185, 'L6664homeP83@首页', '图片', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"270,270";s:5:"title";s:2:"40";}', 1800, 0),
(186, 'O7973homeP83@首页', '配图标题摘要', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"title";s:2:"20";s:5:"image";s:5:"80,80";s:7:"descrip";s:2:"75";}', 1800, 0),
(187, 'G8597homeP83@首页', '标题列表', 'subject', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";s:9:"forumname";s:7:"default";}', 1800, 0),
(188, 'G9393homeP83@首页', '热点标题摘要', 'subject', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"45";s:7:"descrip";s:3:"150";}', 10, 0),
(189, 'P5921homeP83@首页', '标题列表', 'subject', '', 8, 'a:4:{s:8:"forumurl";s:7:"default";s:5:"title";s:2:"50";s:9:"forumname";s:2:"10";s:3:"url";s:7:"default";}', 1800, 0),
(190, 'X1554homeP83@首页', '突出标题列表', 'subject', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(191, 'X1554homeP83@首页', '标题列表', 'subject', '', 5, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 10, 0),
(192, 'Y201homeP83@首页', '突出标题列表', 'subject', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(193, 'Y201homeP83@首页', '标题列表', 'subject', '', 5, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(194, 'V5880homeP83@首页', '配图标题摘要', 'image', '', 3, 'a:4:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";s:5:"image";s:5:"80,55";s:7:"descrip";s:2:"70";}', 1800, 0),
(195, 'R2301homeP83@首页', '标题列表1', 'subject', '', 4, 'a:4:{s:8:"forumurl";s:7:"default";s:5:"title";s:2:"30";s:9:"forumname";s:2:"10";s:3:"url";s:7:"default";}', 1800, 0),
(196, 'R2301homeP83@首页', '标题列表2', 'subject', '', 7, 'a:4:{s:9:"authorurl";s:7:"default";s:6:"author";s:7:"default";s:3:"url";s:7:"default";s:5:"title";s:2:"30";}', 1800, 0),
(197, 'M8847homeP83@首页', '图片', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:7:"default";s:5:"image";s:7:"160,105";}', 1800, 0),
(198, 'M8847homeP83@首页', '突出标题列表', 'subject', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(199, 'M8847homeP83@首页', '标题列表', 'subject', '', 4, 'a:4:{s:8:"forumurl";s:7:"default";s:5:"title";s:2:"40";s:9:"forumname";s:2:"10";s:3:"url";s:7:"default";}', 1800, 0),
(200, 'Y3833homeP83@首页', '标题列表', 'subject', '', 6, 'a:4:{s:9:"authorurl";s:7:"default";s:6:"author";s:7:"default";s:3:"url";s:7:"default";s:5:"title";s:2:"45";}', 1800, 0),
(201, 'K9665homeP83@首页', '图片', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:7:"default";s:5:"image";s:7:"160,105";}', 1800, 0),
(202, 'K9665homeP83@首页', '突出标题列表', 'subject', '', 1, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"25";}', 1800, 0),
(203, 'K9665homeP83@首页', '标题列表', 'subject', '', 4, 'a:4:{s:8:"forumurl";s:7:"default";s:5:"title";s:2:"40";s:9:"forumname";s:2:"10";s:3:"url";s:7:"default";}', 1800, 0),
(204, 'I8719homeP83@首页', '标题列表', 'subject', '', 6, 'a:4:{s:9:"authorurl";s:7:"default";s:6:"author";s:7:"default";s:3:"url";s:7:"default";s:5:"title";s:2:"45";}', 1800, 0),
(205, 'E61homeP83@首页', '配图标题摘要', 'image', '', 1, 'a:4:{s:3:"url";s:7:"default";s:5:"title";s:2:"40";s:5:"image";s:5:"95,65";s:7:"descrip";s:2:"70";}', 1800, 0),
(206, 'H8388homeP83@首页', '最新帖子', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";}', 1800, 0),
(207, 'I7567homeP83@首页', '最新回复', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";}', 1800, 0),
(208, 'D7308homeP83@首页', '热门主题', 'subject', '', 6, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"35";}', 1800, 0),
(209, 'R497homeP83@首页', '配图标题摘要', 'image', '', 1, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:7:"default";s:5:"image";s:5:"80,55";}', 1800, 0),
(210, 'R497homeP83@首页', '标题列表1', 'subject', '', 3, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"16";}', 1800, 0),
(211, 'R497homeP83@首页', '标题列表2', 'subject', '', 10, 'a:4:{s:8:"forumurl";s:7:"default";s:5:"title";s:2:"35";s:9:"forumname";s:7:"default";s:3:"url";s:7:"default";}', 1800, 0),
(212, 'A1_头部图片轮播@图酷', '图片播放器大图', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"520,300";s:5:"title";s:2:"30";}', 1800, 0),
(213, 'B2_今日推荐图文@图酷', '今日推荐图文', 'image', '', 3, 'a:8:{s:3:"url";s:7:"default";s:5:"image";s:7:"180,135";s:4:"hits";s:7:"default";s:10:"collectnum";s:7:"default";s:5:"title";s:2:"24";s:9:"authorurl";s:7:"default";s:6:"author";s:7:"default";s:8:"totalnum";s:7:"default";}', 1800, 0),
(214, 'B4_图片分类模块列表1@图酷', '图片分类模块列表1', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"138,103";s:5:"title";s:2:"20";}', 1800, 0),
(215, 'B6_图片分类模块列表2@图酷', '图片分类模块列表2', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"138,103";s:5:"title";s:2:"20";}', 1800, 0),
(216, 'B8_图片分类模块列表3@图酷', '图片分类模块列表3', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"138,103";s:5:"title";s:2:"20";}', 1800, 0),
(217, 'B10_图片分类模块列表4@图酷', '图片分类模块列表4', 'image', '', 4, 'a:3:{s:3:"url";s:7:"default";s:5:"image";s:7:"138,103";s:5:"title";s:2:"20";}', 1800, 0),
(218, 'B14_右侧活跃图客列表@图酷', '活跃图客列表', 'image', '', 8, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:7:"default";s:5:"image";s:5:"48,48";}', 1800, 0),
(219, 'B16_右侧精彩活动列表@图酷', '精彩活动列表', 'subject', '', 3, 'a:3:{s:3:"url";s:7:"default";s:5:"title";s:2:"24";s:7:"descrip";s:2:"76";}', 1800, 0),
(220, 'B18_右侧热门图酷列表@图酷', '热门图酷列表', 'subject', '', 10, 'a:2:{s:3:"url";s:7:"default";s:5:"title";s:2:"24";}', 1800, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_ipstates`
--

CREATE TABLE `pw_ipstates` (
  `day` varchar(10) NOT NULL DEFAULT '',
  `month` varchar(7) NOT NULL DEFAULT '',
  `nums` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_ipstates`
--

INSERT INTO `pw_ipstates` (`day`, `month`, `nums`) VALUES
('2016-8-13', '2016-8', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_job`
--

CREATE TABLE `pw_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT '',
  `description` text,
  `icon` varchar(255) DEFAULT '',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `period` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `reward` text,
  `sequence` smallint(3) NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `prepose` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number` int(10) NOT NULL DEFAULT '0',
  `member` tinyint(3) NOT NULL DEFAULT '0',
  `auto` tinyint(3) NOT NULL DEFAULT '0',
  `finish` tinyint(3) NOT NULL DEFAULT '0',
  `display` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `job` varchar(255) NOT NULL DEFAULT '',
  `factor` text,
  `isopen` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isuserguide` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_job`
--

INSERT INTO `pw_job` (`id`, `title`, `description`, `icon`, `starttime`, `endtime`, `period`, `reward`, `sequence`, `usergroup`, `prepose`, `number`, `member`, `auto`, `finish`, `display`, `type`, `job`, `factor`, `isopen`, `isuserguide`) VALUES
(1, '更新个人头像', '上传自己的头像，给大家留个好印象吧', '', 1259896560, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 2, '8', 0, 0, 0, 1, 0, 1, 0, 'doUpdateAvatar', 'a:1:{s:5:"limit";s:0:"";}', 1, 0),
(2, '完善个人资料', '要让大家了解你，就要先更新自己的个人资料哦', '', 1259896260, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 1, '8', 0, 0, 0, 1, 1, 1, 0, 'doUpdatedata', 'a:1:{s:5:"limit";s:0:"";}', 1, 0),
(3, '给指定用户发送消息', '要和大家熟悉起来，一定要学会发消息哦，还可以顺便问问题', '', 1259694720, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 3, '8', 0, 0, 0, 1, 1, 1, 0, 'doSendMessage', 'a:2:{s:4:"user";s:5:"admin";s:5:"limit";s:0:"";}', 1, 0),
(4, '寻找并添加5个好友', '去找找有没有志同道合的朋友？加他们为好友吧', '', 1259694780, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 4, '8', 0, 0, 0, 1, 1, 1, 0, 'doAddFriend', 'a:4:{s:4:"user";s:0:"";s:4:"type";s:1:"2";s:3:"num";s:1:"5";s:5:"limit";s:0:"";}', 1, 0),
(5, '论坛每日红包', '发红包咯！每天报到都有红包', '', 1259694840, 0, 24, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 7, '', 0, 0, 0, 0, 1, 0, 0, 'doSendGift', '', 0, 0),
(6, '实名认证-支付宝绑定', '支付宝：支付宝是现代电子商务信用环节中重要的一环绑定您的支付宝账号获得实名认证标识更能享有认证会员积分特权', '', 0, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 2, '', 0, 0, 0, 1, 0, 0, 0, 'doAuthAlipay', 'a:1:{s:5:"limit";s:0:"";}', 0, 0),
(7, '实名认证-手机绑定', '手机：绑定手机获得实名认证标识更能享有认证会员积分特权以及通过手机验证码找回密码功能让您的账号万无一失', '', 0, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 2, '', 0, 0, 0, 1, 0, 0, 0, 'doAuthMobile', 'a:1:{s:5:"limit";s:0:"";}', 0, 0),
(8, '新用户引导上传头像', '', '', 0, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 2, '', 0, 0, 0, 1, 0, 0, 0, 'doUpdateAvatar', '', 1, 1),
(9, '新用户引导完善资料', '', '', 0, 0, 0, 'a:4:{s:4:"type";s:4:"rvrc";s:3:"num";s:2:"20";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 威望 ";}', 1, '', 0, 0, 0, 1, 0, 0, 0, 'doUpdatedata', '', 1, 1),
(10, '新用户引导关注其他用户', '', '', 0, 0, 0, 'a:4:{s:4:"type";s:5:"money";s:3:"num";s:2:"10";s:8:"category";s:6:"credit";s:11:"information";s:17:"可获得 铜币 ";}', 1, '', 0, 0, 0, 1, 0, 0, 0, 'doAddFriend', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_jober`
--

CREATE TABLE `pw_jober` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `step` smallint(6) NOT NULL DEFAULT '0',
  `last` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `next` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `creattime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total` smallint(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_jober`
--

INSERT INTO `pw_jober` (`id`, `jobid`, `userid`, `current`, `step`, `last`, `next`, `status`, `creattime`, `total`) VALUES
(1, 9, 1, 1, 0, 1471073375, 0, 0, 1471073375, 0),
(2, 10, 1, 1, 0, 1471073375, 0, 0, 1471073375, 0),
(3, 8, 1, 1, 0, 1471073375, 0, 0, 1471073375, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_kmd_info`
--

CREATE TABLE `pw_kmd_info` (
  `kid` int(10) UNSIGNED NOT NULL,
  `fid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_kmd_paylog`
--

CREATE TABLE `pw_kmd_paylog` (
  `id` int(10) UNSIGNED NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `money` decimal(14,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_kmd_spread`
--

CREATE TABLE `pw_kmd_spread` (
  `sid` int(10) NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `day` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(14,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount` decimal(2,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_kmd_spread`
--

INSERT INTO `pw_kmd_spread` (`sid`, `displayorder`, `name`, `day`, `price`, `discount`) VALUES
(1, 1, '一周', 7, '100.00', '9.0'),
(2, 2, '一个月', 30, '400.00', '8.5'),
(3, 3, '一季度', 90, '1200.00', '8.0');

-- --------------------------------------------------------

--
-- 表的结构 `pw_kmd_user`
--

CREATE TABLE `pw_kmd_user` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `phone` varchar(15) DEFAULT NULL,
  `realname` varchar(15) NOT NULL DEFAULT '',
  `invoice` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_aggregate`
--

CREATE TABLE `pw_log_aggregate` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_attachs`
--

CREATE TABLE `pw_log_attachs` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_colonys`
--

CREATE TABLE `pw_log_colonys` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_diary`
--

CREATE TABLE `pw_log_diary` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_forums`
--

CREATE TABLE `pw_log_forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_members`
--

CREATE TABLE `pw_log_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_postdefend`
--

CREATE TABLE `pw_log_postdefend` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_posts`
--

CREATE TABLE `pw_log_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_postverify`
--

CREATE TABLE `pw_log_postverify` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_setting`
--

CREATE TABLE `pw_log_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `vector` varchar(255) NOT NULL DEFAULT '',
  `cipher` varchar(255) NOT NULL DEFAULT '',
  `field1` varchar(255) NOT NULL DEFAULT '',
  `field2` varchar(255) NOT NULL DEFAULT '',
  `field3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field4` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_threads`
--

CREATE TABLE `pw_log_threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_userdefend`
--

CREATE TABLE `pw_log_userdefend` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_log_weibos`
--

CREATE TABLE `pw_log_weibos` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `operate` tinyint(3) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_medal_apply`
--

CREATE TABLE `pw_medal_apply` (
  `apply_id` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `medal_id` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_medal_award`
--

CREATE TABLE `pw_medal_award` (
  `award_id` int(10) NOT NULL,
  `medal_id` smallint(6) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `deadline` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_medal_award`
--

INSERT INTO `pw_medal_award` (`award_id`, `medal_id`, `uid`, `type`, `timestamp`, `deadline`) VALUES
(1, 1, 1, 0, 1471073374, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_medal_info`
--

CREATE TABLE `pw_medal_info` (
  `medal_id` smallint(6) UNSIGNED NOT NULL,
  `identify` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `is_apply` tinyint(3) NOT NULL DEFAULT '1',
  `is_open` tinyint(3) NOT NULL DEFAULT '1',
  `allow_group` text NOT NULL,
  `associate` varchar(30) NOT NULL DEFAULT '',
  `confine` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_medal_info`
--

INSERT INTO `pw_medal_info` (`medal_id`, `identify`, `name`, `descrip`, `type`, `image`, `sortorder`, `is_apply`, `is_open`, `allow_group`, `associate`, `confine`) VALUES
(1, 'shequjumin', '社区居民', '拥有帐号并登录即可获得此勋章.', 1, 'shequjumin.png', 0, 1, 1, '', 'continue_login', 1),
(2, 'zuiaishafa', '最爱沙发', '抢沙发总数达到100即可获得此勋章.', 1, 'zuiaishafa.png', 1, 1, 1, '', 'shafa', 100),
(3, 'shequmingxing', '社区明星', '粉丝数达到100即可获得此勋章.', 1, 'shequmingxing.png', 2, 1, 1, '', 'fans', 100),
(4, 'zhongshihuiyuan', '忠实会员', '连续登录7天即可获得此勋章.', 1, 'rexinhuiyuan.png', 3, 1, 1, '', 'continue_login', 7),
(5, 'yuanchuangdaren', '原创达人', '连续发主题7天即可获得此勋章.', 1, 'yuanchuangdaren.png', 4, 1, 1, '', 'continue_thread_post', 7),
(6, 'shequlaomo', '社区劳模', '连续发帖7天即可获得此勋章.', 1, 'shequlaomo.png', 5, 1, 1, '', 'continue_post', 7),
(7, 'shimingrenzheng', '实名认证', '实名认证用户即可获得此勋章.', 0, 'shimingrenzheng.png', 6, 1, 1, '', '', 0),
(8, 'chengxinshanghu', '诚信商户', '社区诚信商户,官方认证.', 2, 'chengxinshanghu.png', 7, 1, 1, '', '', 0),
(9, 'xinrenjinbu', '新人进步', '新人有很大的进步可以得到这个奖章!', 2, 'xinrenjinbu.png', 8, 1, 1, '', '', 0),
(10, 'zhongshenchengjiu', '终身成就', '谢谢您为社区发展做出的不可磨灭的贡献!', 2, 'zhongshenchengjiu.png', 9, 1, 1, '', '', 0),
(11, 'xuanchuandashi', '宣传大使', '谢谢您为社区积极宣传,特颁发此奖!', 2, 'xuanchuandashi.png', 10, 1, 1, '', '', 0),
(12, 'jindianzi', '金点子', '为社区提出建设性的建议被采纳,特颁发此奖!', 2, 'jindianzi.png', 11, 1, 1, '', '', 0),
(13, 'youmodashi', '幽默大师', '您总是能给别人带来欢乐,谢谢您!', 2, 'youmodashi.png', 12, 1, 1, '', '', 0),
(14, 'yuanchuangxianfeng', '原创先锋', '谢谢您积极发表原创作品,特颁发此奖!', 2, 'yuanchuangxianfeng.png', 13, 1, 1, '', '', 0),
(15, 'teshugongxian', '特殊贡献', '您为论坛做出了特殊贡献,谢谢您!', 2, 'teshugongxian.png', 14, 1, 1, '', '', 0),
(16, 'guanshuidashi', '灌水天才', '能够长期提供优质的社区水资源者,可得这个奖章!', 2, 'guanshuidashi.png', 15, 1, 1, '', '', 0),
(17, 'youxiubanzhu', '优秀斑竹', '辛劳地为论坛付出劳动，收获快乐，感谢您!', 2, 'youxiubanzhu.png', 16, 1, 1, '', '', 0),
(18, 'tietudashi', '贴图大师', '帖图高手,堪称大师!', 2, 'tietudashi.png', 17, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_medal_log`
--

CREATE TABLE `pw_medal_log` (
  `log_id` int(10) NOT NULL,
  `award_id` int(10) NOT NULL DEFAULT '0',
  `medal_id` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_membercredit`
--

CREATE TABLE `pw_membercredit` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cid` tinyint(3) NOT NULL DEFAULT '0',
  `value` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_memberdata`
--

CREATE TABLE `pw_memberdata` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `postnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `digests` smallint(6) NOT NULL DEFAULT '0',
  `rvrc` int(10) NOT NULL DEFAULT '0',
  `money` int(10) NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  `currency` int(10) NOT NULL DEFAULT '0',
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thisvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `onlinetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `monoltime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `todaypost` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `monthpost` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uploadnum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `follows` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `fans` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newfans` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newreferto` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newcomment` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `onlineip` varchar(30) NOT NULL DEFAULT '',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postcheck` varchar(255) NOT NULL DEFAULT '',
  `pwdctime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `f_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `creditpop` varchar(150) NOT NULL DEFAULT '',
  `jobnum` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lastmsg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastgrab` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `punch` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shafa` mediumint(8) NOT NULL DEFAULT '0',
  `newnotice` mediumint(8) NOT NULL DEFAULT '0',
  `newrequest` mediumint(8) NOT NULL DEFAULT '0',
  `bubble` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_memberdata`
--

INSERT INTO `pw_memberdata` (`uid`, `postnum`, `digests`, `rvrc`, `money`, `credit`, `currency`, `lastvisit`, `thisvisit`, `lastpost`, `onlinetime`, `monoltime`, `todaypost`, `monthpost`, `uploadtime`, `uploadnum`, `follows`, `fans`, `newfans`, `newreferto`, `newcomment`, `onlineip`, `starttime`, `postcheck`, `pwdctime`, `f_num`, `creditpop`, `jobnum`, `lastmsg`, `lastgrab`, `punch`, `shafa`, `newnotice`, `newrequest`, `bubble`) VALUES
(1, 1, 0, 10, 1, 0, 0, 1471073374, 1471073374, 1471073509, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '127.0.0.1|1471073374|6', 0, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 'a:3:{s:14:"pw_all_tip_kmd";i:1;s:17:"pw_all_tip_tucool";i:1;s:16:"pw_all_tip_medal";i:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_memberinfo`
--

CREATE TABLE `pw_memberinfo` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `adsips` mediumtext NOT NULL,
  `credit` text NOT NULL,
  `deposit` int(10) NOT NULL DEFAULT '0',
  `startdate` int(10) NOT NULL DEFAULT '0',
  `ddeposit` int(10) NOT NULL DEFAULT '0',
  `dstartdate` int(10) NOT NULL DEFAULT '0',
  `regreason` varchar(255) NOT NULL DEFAULT '',
  `readmsg` mediumtext NOT NULL,
  `delmsg` mediumtext NOT NULL,
  `tooltime` varchar(42) NOT NULL DEFAULT '',
  `replyinfo` varchar(81) NOT NULL DEFAULT '',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `digtid` text NOT NULL,
  `customdata` text NOT NULL,
  `tradeinfo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_members`
--

CREATE TABLE `pw_members` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `safecv` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `groupid` tinyint(3) NOT NULL DEFAULT '-1',
  `memberid` tinyint(3) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `signature` text NOT NULL,
  `introduce` text NOT NULL,
  `oicq` varchar(12) NOT NULL DEFAULT '',
  `aliww` varchar(30) NOT NULL,
  `icq` varchar(12) NOT NULL DEFAULT '',
  `msn` varchar(35) NOT NULL DEFAULT '',
  `yahoo` varchar(35) NOT NULL DEFAULT '',
  `site` varchar(75) NOT NULL DEFAULT '',
  `location` varchar(36) NOT NULL DEFAULT '',
  `honor` varchar(100) NOT NULL DEFAULT '',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `lastaddrst` varchar(255) NOT NULL DEFAULT '',
  `yz` int(10) NOT NULL DEFAULT '1',
  `timedf` varchar(5) NOT NULL DEFAULT '',
  `style` varchar(12) NOT NULL DEFAULT '',
  `datefm` varchar(15) NOT NULL DEFAULT '',
  `t_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `p_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attach` varchar(50) NOT NULL DEFAULT '',
  `hack` varchar(255) NOT NULL DEFAULT '0',
  `newpm` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `banpm` text NOT NULL,
  `msggroups` varchar(255) NOT NULL DEFAULT '',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `userstatus` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut` varchar(255) NOT NULL DEFAULT '',
  `authmobile` char(16) NOT NULL DEFAULT '',
  `realname` varchar(16) NOT NULL DEFAULT '',
  `apartment` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `home` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_members`
--

INSERT INTO `pw_members` (`uid`, `username`, `password`, `safecv`, `email`, `groupid`, `memberid`, `groups`, `icon`, `gender`, `regdate`, `signature`, `introduce`, `oicq`, `aliww`, `icq`, `msn`, `yahoo`, `site`, `location`, `honor`, `bday`, `lastaddrst`, `yz`, `timedf`, `style`, `datefm`, `t_num`, `p_num`, `attach`, `hack`, `newpm`, `banpm`, `msggroups`, `medals`, `userstatus`, `shortcut`, `authmobile`, `realname`, `apartment`, `home`) VALUES
(1, 'admin', '63a9f0ea7bb98050796b649e85481845', '', '', 3, 8, '', 'none.gif|1|||', 0, 1471073249, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', 1, '', '', '', 0, 0, '', '0', 0, '', '', '1', 192, ',article,write,diary,share,groups,photos,', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_membertags`
--

CREATE TABLE `pw_membertags` (
  `tagid` int(10) UNSIGNED NOT NULL,
  `tagname` varchar(32) NOT NULL DEFAULT '',
  `num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifhot` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_membertags_relations`
--

CREATE TABLE `pw_membertags_relations` (
  `tagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_member_behavior_statistic`
--

CREATE TABLE `pw_member_behavior_statistic` (
  `uid` int(10) NOT NULL,
  `behavior` tinyint(3) NOT NULL DEFAULT '0',
  `lastday` int(10) NOT NULL,
  `num` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_member_behavior_statistic`
--

INSERT INTO `pw_member_behavior_statistic` (`uid`, `behavior`, `lastday`, `num`) VALUES
(1, 1, 1471017600, 1),
(1, 3, 1471017600, 1),
(1, 2, 1471017600, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_memo`
--

CREATE TABLE `pw_memo` (
  `mid` int(10) UNSIGNED NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `isuser` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_modehot`
--

CREATE TABLE `pw_modehot` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `sort` tinyint(3) NOT NULL DEFAULT '1',
  `tag` varchar(20) DEFAULT '',
  `type_name` varchar(100) NOT NULL DEFAULT '',
  `filter_type` text NOT NULL,
  `filter_time` text NOT NULL,
  `display` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_modehot`
--

INSERT INTO `pw_modehot` (`id`, `parent_id`, `sort`, `tag`, `type_name`, `filter_type`, `filter_time`, `display`, `active`, `remark`) VALUES
(1, 0, 1, 'memberHot', '用户排行', 'N;', 'N;', 1, 1, NULL),
(2, 1, 1, 'memberOnLine', '在线排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"18";i:1;s:2:"18";i:2;s:2:"18";i:3;s:2:"18";}}', 1, 1, NULL),
(3, 1, 2, 'memberCredit', '积分排行', 'a:3:{s:7:"current";s:5:"money";s:7:"filters";a:5:{i:0;s:5:"money";i:1;s:4:"rvrc";i:2;s:6:"credit";i:3;s:8:"currency";i:4;s:1:"4";}s:11:"filterItems";a:5:{i:0;s:2:"18";i:1;s:2:"18";i:2;s:2:"18";i:3;s:2:"18";i:4;s:2:"18";}}', 'N;', 1, 1, NULL),
(4, 1, 3, 'memberFriend', '好友排行', 'N;', 'N;', 0, 1, NULL),
(5, 1, 4, 'memberThread', '发帖排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"18";i:1;s:2:"18";i:2;s:2:"18";i:3;s:2:"18";}}', 0, 1, NULL),
(8, 0, 2, 'threadHot', '帖子排行', 'N;', 'N;', 1, 1, NULL),
(9, 8, 1, 'threadPost', '回复排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 1, 1, NULL),
(10, 8, 2, 'threadRate', '评价排行', 'a:3:{s:7:"current";s:12:"rateThread_1";s:7:"filters";a:7:{i:0;s:12:"rateThread_1";i:1;s:12:"rateThread_2";i:2;s:12:"rateThread_3";i:3;s:12:"rateThread_4";i:4;s:12:"rateThread_5";i:5;s:12:"rateThread_6";i:6;s:12:"rateThread_7";}s:11:"filterItems";a:7:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";i:4;s:2:"10";i:5;s:2:"10";i:6;s:2:"10";}}', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 0, 1, NULL),
(11, 8, 3, 'threadFav', '收藏排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 1, 1, NULL),
(13, 0, 3, 'diaryHot', '日志排行', 'N;', 'N;', 1, 1, NULL),
(14, 13, 1, 'diaryComment', '评论排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 1, 1, NULL),
(15, 13, 2, 'diaryRate', '评价排行', 'a:3:{s:7:"current";s:11:"rateDiary_8";s:7:"filters";a:7:{i:0;s:11:"rateDiary_8";i:1;s:11:"rateDiary_9";i:2;s:12:"rateDiary_10";i:3;s:12:"rateDiary_11";i:4;s:12:"rateDiary_12";i:5;s:12:"rateDiary_13";i:6;s:12:"rateDiary_14";}s:11:"filterItems";a:7:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";i:4;s:2:"10";i:5;s:2:"10";i:6;s:2:"10";}}', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 0, 1, NULL),
(16, 13, 3, 'diaryFav', '收藏排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"10";i:1;s:2:"10";i:2;s:2:"10";i:3;s:2:"10";}}', 0, 1, NULL),
(18, 0, 4, 'picHot', '照片排行', 'N;', 'N;', 1, 1, NULL),
(19, 18, 1, 'picComment', '评论排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"20";i:1;s:2:"20";i:2;s:2:"20";i:3;s:2:"20";}}', 1, 1, NULL),
(20, 18, 2, 'picRate', '评价排行', 'a:3:{s:7:"current";s:14:"ratePicture_15";s:7:"filters";a:8:{i:0;s:14:"ratePicture_15";i:1;s:14:"ratePicture_16";i:2;s:14:"ratePicture_17";i:3;s:14:"ratePicture_18";i:4;s:14:"ratePicture_19";i:5;s:14:"ratePicture_20";i:6;s:14:"ratePicture_21";i:7;s:14:"ratePicture_22";}s:11:"filterItems";a:8:{i:0;s:2:"20";i:1;s:2:"20";i:2;s:2:"20";i:3;s:2:"20";i:4;s:2:"20";i:5;s:2:"20";i:6;s:2:"20";i:7;s:2:"20";}}', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"20";i:1;s:2:"20";i:2;s:2:"20";i:3;s:2:"20";}}', 0, 1, NULL),
(21, 18, 3, 'picFav', '收藏排行', 'N;', 'a:3:{s:7:"current";s:7:"history";s:7:"filters";a:4:{i:0;s:5:"today";i:1;s:4:"week";i:2;s:5:"month";i:3;s:7:"history";}s:11:"filterItems";a:4:{i:0;s:2:"20";i:1;s:2:"20";i:2;s:2:"20";i:3;s:2:"20";}}', 0, 1, NULL),
(23, 0, 5, 'forumHot', '论坛版块排行', 'N;', 'N;', 1, 1, NULL),
(24, 23, 1, 'forumPost', '今日发帖排行', 'N;', 'N;', 1, 1, NULL),
(25, 23, 2, 'forumTopic', '主题排行', 'N;', 'N;', 0, 1, NULL),
(26, 23, 3, 'forumArticle', '文章排行', 'N;', 'N;', 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pw_mpageconfig`
--

CREATE TABLE `pw_mpageconfig` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `mode` varchar(20) NOT NULL DEFAULT '',
  `scr` varchar(20) NOT NULL DEFAULT '',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `invokes` text NOT NULL,
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_attachs`
--

CREATE TABLE `pw_ms_attachs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_configs`
--

CREATE TABLE `pw_ms_configs` (
  `uid` int(10) UNSIGNED NOT NULL,
  `blacklist` text,
  `blackcolony` text,
  `blackgroup` text,
  `categories` text,
  `statistics` text,
  `shieldinfo` text,
  `sms_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notice_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `request_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupsms_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field1` text,
  `field2` text,
  `num1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num2` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_ms_configs`
--

INSERT INTO `pw_ms_configs` (`uid`, `blacklist`, `blackcolony`, `blackgroup`, `categories`, `statistics`, `shieldinfo`, `sms_num`, `notice_num`, `request_num`, `groupsms_num`, `field1`, `field2`, `num1`, `num2`) VALUES
(1, '', '', NULL, '', '', '', 0, 0, 0, 0, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_messages`
--

CREATE TABLE `pw_ms_messages` (
  `mid` int(10) UNSIGNED NOT NULL,
  `create_uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `create_username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text,
  `extra` text,
  `expand` varchar(255) NOT NULL DEFAULT '',
  `attach` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_ms_messages`
--

INSERT INTO `pw_ms_messages` (`mid`, `create_uid`, `create_username`, `title`, `content`, `extra`, `expand`, `attach`, `created_time`, `modified_time`) VALUES
(1, 0, 'system', '恭喜您获得新勋章', '恭喜您获得了 [url=http://lovevenus.com/apps.php?q=medal&a=my]社区居民[/url] 勋章\r\n颁发原因：您的连续登录天数达到了1，特发此勋章以兹鼓励。', NULL, 'a:2:{s:10:"categoryid";i:2;s:6:"typeid";i:200;}', 0, 1471073374, 1471073374);

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_relations`
--

CREATE TABLE `pw_ms_relations` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `categoryid` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isown` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `actived_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) NOT NULL DEFAULT '0',
  `relation` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_ms_relations`
--

INSERT INTO `pw_ms_relations` (`rid`, `uid`, `mid`, `categoryid`, `typeid`, `status`, `isown`, `created_time`, `actived_time`, `modified_time`, `relation`) VALUES
(1, 1, 1, 2, 200, 0, 0, 1471073374, 0, 1471073374, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_replies`
--

CREATE TABLE `pw_ms_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `create_uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `create_username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0',
  `modified_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_searchs`
--

CREATE TABLE `pw_ms_searchs` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `create_uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ms_tasks`
--

CREATE TABLE `pw_ms_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_nav`
--

CREATE TABLE `pw_nav` (
  `nid` smallint(6) NOT NULL,
  `nkey` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `title` char(50) NOT NULL DEFAULT '',
  `style` char(50) NOT NULL DEFAULT '',
  `link` char(100) NOT NULL DEFAULT '',
  `alt` char(50) NOT NULL DEFAULT '',
  `pos` varchar(255) NOT NULL,
  `target` tinyint(3) NOT NULL DEFAULT '0',
  `view` smallint(6) NOT NULL DEFAULT '0',
  `upid` smallint(6) NOT NULL DEFAULT '0',
  `isshow` tinyint(3) NOT NULL DEFAULT '0',
  `floattype` varchar(10) NOT NULL DEFAULT '',
  `listtype` varchar(10) NOT NULL DEFAULT '',
  `selflisttype` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_nav`
--

INSERT INTO `pw_nav` (`nid`, `nkey`, `type`, `title`, `style`, `link`, `alt`, `pos`, `target`, `view`, `upid`, `isshow`, `floattype`, `listtype`, `selflisttype`) VALUES
(1, 'bbs', 'main', '论坛', '|||', 'index.php?m=bbs', '', 'bbs,area,cms,o,srch,group', 0, 2, 0, 1, '', '', ''),
(2, 'area', 'main', '门户', '|||', 'index.php?m=area', '', 'bbs,area,cms,srch,group', 0, 1, 0, 1, '', '', ''),
(3, 'o', 'main', '个人中心', '|||', 'u.php', '', 'o', 0, 8, 0, 0, '', '', ''),
(4, 'cms', 'main', '资讯', '|||', 'index.php?m=cms', '', 'bbs,area,cms,srch,group', 0, 5, 0, 1, '', '', ''),
(5, 'area_baby', 'main', '亲子', '|||', 'html/channel/baby', '', '-1', 0, 11, 2, 1, '', '', ''),
(6, 'area_delicious', 'main', '美食', '|||', 'html/channel/delicious', '', '-1', 0, 12, 2, 1, '', '', ''),
(7, 'area_auto', 'main', '汽车', '|||', 'html/channel/auto', '', '-1', 0, 13, 2, 1, '', '', ''),
(8, 'area_decoration', 'main', '家装', '|||', 'html/channel/decoration', '', '-1', 0, 14, 2, 1, '', '', ''),
(9, 'area_tucool', 'main', '图酷', '|||', 'html/channel/tucool', '', 'bbs,area,cms,o,srch,group', 0, 4, 0, 1, '', '', ''),
(10, 'group', 'main', '群组', '|||', 'group.php', '', 'bbs,area,cms,srch,group', 0, 6, 0, 1, '', '', ''),
(11, '', 'main', '广场', '|||', 'index.php?m=o', '', 'bbs,area,cms,srch,group', 0, 7, 0, 0, '', '', ''),
(12, '', 'foot', '联系我们', '', 'sendemail.php', '', '-1', 0, 1, 0, 1, '', '', ''),
(13, '', 'foot', '无图版', '', 'simple/', '', '-1', 0, 2, 0, 1, '', '', ''),
(14, '', 'foot', '手机浏览', '', 'm/introduce.php', '', '-1', 0, 3, 0, 1, '', '', ''),
(15, 'hack', 'head_left', '社区服务', '', '', '', 'bbs,area,cms,srch,group', 0, 1, 0, 1, '', '', ''),
(16, 'hack_blog', 'head_left', '博客接口', '', 'hack.php?H_name=blog', '', '', 0, 1, 15, 0, '', '', ''),
(17, 'hack_passport', 'head_left', '通行证', '', 'hack.php?H_name=passport', '', '', 0, 2, 15, 0, '', '', ''),
(18, 'hack_toolcenter', 'head_left', '道具中心', '', 'profile.php?action=toolcenter', '', '', 0, 3, 15, 1, '', '', ''),
(19, 'hack_rate', 'head_left', '评价管理', '', 'hack.php?H_name=rate', '', '', 0, 4, 15, 0, '', '', ''),
(20, 'hack_bank', 'head_left', '银行', '', 'hack.php?H_name=bank', '', '', 0, 5, 15, 1, '', '', ''),
(21, 'hack_new', 'head_left', '首页调用管理', '', 'hack.php?H_name=new', '', '', 0, 6, 15, 0, '', '', ''),
(22, 'sort', 'head_left', '统计排行', '', 'sort.php', '', 'bbs,area,cms,srch,group', 0, 2, 0, 1, '', '', ''),
(23, 'sort_basic', 'head_left', '基本信息', '', 'sort.php', '', '', 0, 1, 22, 1, '', '', ''),
(24, 'sort_ipstate', 'head_left', '到访IP统计', '', 'sort.php?action=ipstate', '', '', 0, 2, 22, 1, '', '', ''),
(25, 'sort_team', 'head_left', '管理团队', '', 'sort.php?action=team', '', '', 0, 3, 22, 1, '', '', ''),
(26, 'sort_admin', 'head_left', '管理统计', '', 'sort.php?action=admin', '', '', 0, 4, 22, 1, '', '', ''),
(27, 'sort_online', 'head_left', '在线会员', '', 'sort.php?action=online', '', '', 0, 5, 22, 1, '', '', ''),
(28, 'sort_member', 'head_left', '会员排行', '', 'sort.php?action=member', '', '', 0, 6, 22, 1, '', '', ''),
(29, 'sort_forum', 'head_left', '版块排行', '', 'sort.php?action=forum', '', '', 0, 7, 22, 1, '', '', ''),
(30, 'sort_article', 'head_left', '帖子排行', '', 'sort.php?action=article', '', '', 0, 8, 22, 1, '', '', ''),
(31, 'sort_taglist', 'head_left', '标签排行', '', 'link.php?action=taglist', '', '', 0, 9, 22, 1, '', '', ''),
(32, '', 'head_left', '帮助', '', 'faq.php', '', 'bbs,area,cms,srch,group', 0, 3, 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_oboard`
--

CREATE TABLE `pw_oboard` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `c_num` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ifwordsfb` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_online`
--

CREATE TABLE `pw_online` (
  `olid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(10) NOT NULL DEFAULT '0',
  `groupid` tinyint(3) NOT NULL DEFAULT '0',
  `action` varchar(16) NOT NULL DEFAULT '',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `rand` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_online_guest`
--

CREATE TABLE `pw_online_guest` (
  `ip` int(10) NOT NULL DEFAULT '0',
  `token` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(10) NOT NULL DEFAULT '0',
  `action` tinyint(3) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_online_statistics`
--

CREATE TABLE `pw_online_statistics` (
  `name` char(30) NOT NULL DEFAULT '',
  `value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastupdate` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_online_user`
--

CREATE TABLE `pw_online_user` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `ip` int(10) NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupid` tinyint(3) NOT NULL DEFAULT '0',
  `action` tinyint(3) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ouserdata`
--

CREATE TABLE `pw_ouserdata` (
  `uid` int(10) UNSIGNED NOT NULL,
  `index_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `profile_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `info_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `credit_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `owrite_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `msgboard_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `photos_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `diary_privacy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `article_isfeed` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `diary_isfeed` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `photos_isfeed` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `group_isfeed` tinyint(3) UNSIGNED DEFAULT '1',
  `visits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tovisits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tovisit` varchar(255) NOT NULL DEFAULT '',
  `whovisit` varchar(255) NOT NULL DEFAULT '',
  `diarynum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photonum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `owritenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sharenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `diary_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photo_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `owrite_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `share_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `self_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `friend_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `cnlesp_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `article_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `diary_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `photos_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `group_isfollow` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `sinaweibo_isfollow` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `at_isfeed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_ouserdata`
--

INSERT INTO `pw_ouserdata` (`uid`, `index_privacy`, `profile_privacy`, `info_privacy`, `credit_privacy`, `owrite_privacy`, `msgboard_privacy`, `photos_privacy`, `diary_privacy`, `article_isfeed`, `diary_isfeed`, `photos_isfeed`, `group_isfeed`, `visits`, `tovisits`, `tovisit`, `whovisit`, `diarynum`, `photonum`, `owritenum`, `groupnum`, `sharenum`, `diary_lastpost`, `photo_lastpost`, `owrite_lastpost`, `group_lastpost`, `share_lastpost`, `self_isfollow`, `friend_isfollow`, `cnlesp_isfollow`, `article_isfollow`, `diary_isfollow`, `photos_isfollow`, `group_isfollow`, `sinaweibo_isfollow`, `at_isfeed`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_overprint`
--

CREATE TABLE `pw_overprint` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `related` tinyint(3) NOT NULL DEFAULT '0',
  `total` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `isopen` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_overprint`
--

INSERT INTO `pw_overprint` (`id`, `title`, `icon`, `related`, `total`, `createtime`, `isopen`) VALUES
(1, '绿色置顶', 'd2.png', 0, 1, 0, 1),
(2, '蓝色置顶', 'd1.png', 0, 1, 0, 1),
(3, '红色置顶', 'd3.png', 0, 1, 0, 1),
(4, '加亮', 'jl.png', 0, 1, 0, 1),
(5, '推送', 'ts.png', 0, 1, 0, 1),
(6, '提前', 'tq.png', 0, 1, 0, 1),
(7, '推荐', 'tj.png', 0, 1, 0, 1),
(8, '置顶', 'd3.png', -2, 1, 0, 1),
(9, '精华', 'jh.png', -1, 1, 0, 1),
(10, '锁帖', 'sd.png', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_owritedata`
--

CREATE TABLE `pw_owritedata` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isshare` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(10) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `c_num` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pagecache`
--

CREATE TABLE `pw_pagecache` (
  `sign` char(32) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `cachetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pageinvoke`
--

CREATE TABLE `pw_pageinvoke` (
  `id` int(10) UNSIGNED NOT NULL,
  `scr` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(20) NOT NULL DEFAULT '',
  `invokename` varchar(50) NOT NULL DEFAULT '',
  `pieces` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ifverify` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pcfield`
--

CREATE TABLE `pw_pcfield` (
  `fieldid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `pcid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `ifsearch` tinyint(3) NOT NULL DEFAULT '0',
  `ifasearch` tinyint(3) NOT NULL DEFAULT '0',
  `threadshow` tinyint(3) NOT NULL DEFAULT '0',
  `ifmust` tinyint(3) NOT NULL DEFAULT '1',
  `ifdel` tinyint(3) NOT NULL DEFAULT '0',
  `textsize` tinyint(3) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_pcfield`
--

INSERT INTO `pw_pcfield` (`fieldid`, `name`, `fieldname`, `pcid`, `vieworder`, `type`, `rules`, `ifable`, `ifsearch`, `ifasearch`, `threadshow`, `ifmust`, `ifdel`, `textsize`, `descrip`) VALUES
(1, '类别', 'pctype', 1, 1, 'radio', 'a:8:{i:0;s:11:"1=婚庆类";i:1;s:11:"2=房产类";i:2;s:11:"3=汽车类";i:3;s:11:"4=家电类";i:4;s:11:"5=家装类";i:5;s:14:"6=生产原料";i:6;s:11:"7=食品类";i:7;s:8:"8=其他";}', 1, 1, 1, 1, 0, 1, 0, ''),
(2, '发起时间', 'begintime', 1, 2, 'calendar', '', 1, 1, 1, 0, 1, 1, 0, ''),
(3, '截止时间', 'endtime', 1, 3, 'calendar', '', 1, 1, 1, 1, 1, 1, 0, ''),
(4, '商品数量', 'limitnum', 1, 4, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:3:"100";}', 1, 0, 0, 1, 0, 1, 0, '个（不限制，请留空）'),
(5, '报名限制', 'objecter', 1, 5, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 1, 0, 0, 1, 0, ''),
(6, '团购价', 'price', 1, 7, 'text', '', 1, 0, 0, 0, 0, 1, 0, ''),
(7, '押金', 'deposit', 1, 8, 'text', '', 1, 0, 0, 0, 0, 1, 0, '（留空则无需支付押金）'),
(8, '支付方式', 'payway', 1, 9, 'radio', 'a:2:{i:0;s:17:"1=支付宝支付";i:1;s:14:"2=现金支付";}', 1, 0, 1, 0, 0, 1, 0, ''),
(9, '联系人', 'contacter', 1, 10, 'text', '', 1, 1, 0, 0, 1, 1, 0, ''),
(10, '电话', 'tel', 1, 11, 'text', '', 1, 0, 0, 0, 0, 1, 4, ''),
(11, '-', 'phone', 1, 11, 'text', '', 1, 0, 0, 0, 0, 1, 14, '例如：0571-12345678'),
(12, '手机', 'mobile', 1, 12, 'text', '', 1, 0, 0, 0, 1, 1, 0, ''),
(13, '图片上传', 'pcattach', 1, 13, 'upload', '', 1, 0, 0, 0, 0, 1, 0, ''),
(14, '类别', 'pctype', 2, 1, 'radio', 'a:6:{i:0;s:8:"1=出游";i:1;s:9:"2=聚餐 ";i:2;s:8:"3=舞会";i:3;s:8:"4=户外";i:4;s:8:"5=烧烤";i:5;s:8:"6=其他";}', 1, 1, 1, 1, 0, 1, 0, ''),
(15, '发起时间', 'begintime', 2, 2, 'calendar', '', 1, 1, 1, 0, 1, 1, 0, ''),
(16, '过期时间', 'endtime', 2, 3, 'calendar', '', 1, 1, 1, 1, 1, 1, 0, ''),
(17, '活动地点', 'address', 2, 4, 'text', '', 1, 0, 1, 1, 0, 1, 0, ''),
(18, '人数限制', 'limitnum', 2, 5, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:3:"100";}', 1, 0, 0, 0, 0, 1, 0, '人（不限制，请留空）'),
(19, '报名限制', 'objecter', 2, 6, 'radio', 'a:2:{i:0;s:14:"1=所有用户";i:1;s:11:"2=仅好友";}', 1, 0, 1, 0, 0, 1, 0, ''),
(20, '性别限制', 'gender', 2, 7, 'radio', 'a:3:{i:0;s:8:"1=全部";i:1;s:11:"2=仅男生";i:2;s:11:"3=仅女生";}', 1, 0, 1, 0, 0, 1, 0, ''),
(21, '活动经费', 'price', 2, 8, 'text', '', 1, 0, 0, 0, 0, 1, 0, '元/人'),
(22, '支付方式', 'payway', 2, 9, 'radio', 'a:2:{i:0;s:17:"1=支付宝支付";i:1;s:14:"2=现金支付";}', 1, 0, 1, 0, 0, 1, 0, ''),
(23, '联系人', 'contacter', 2, 10, 'text', '', 1, 0, 0, 0, 1, 1, 0, ''),
(24, '电话', 'tel', 2, 11, 'text', '', 1, 0, 0, 0, 0, 1, 4, ''),
(25, '-', 'phone', 2, 11, 'text', '', 1, 0, 0, 0, 0, 1, 14, '例如：0571-123456778'),
(26, '手机', 'mobile', 2, 12, 'text', '', 1, 0, 0, 0, 1, 1, 0, ''),
(27, '图片上传', 'pcattach', 2, 13, 'upload', '', 1, 0, 0, 0, 0, 1, 0, ''),
(28, '旺旺', 'wangwang', 1, 14, 'text', '', 1, 0, 0, 0, 0, 1, 0, ''),
(29, '市场价', 'mprice', 1, 6, 'text', '', 1, 0, 0, 0, 1, 1, 0, ''),
(30, 'QQ', 'qq', 1, 15, 'text', '', 1, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_pcmember`
--

CREATE TABLE `pw_pcmember` (
  `pcmid` mediumint(8) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pcid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `nums` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `totalcash` varchar(20) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `extra` tinyint(3) NOT NULL DEFAULT '0',
  `jointime` int(10) NOT NULL DEFAULT '0',
  `ifpay` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pcvalue1`
--

CREATE TABLE `pw_pcvalue1` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifrecycle` tinyint(3) NOT NULL DEFAULT '0',
  `pctype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `limitnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `objecter` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `price` varchar(255) NOT NULL DEFAULT '',
  `deposit` varchar(255) NOT NULL DEFAULT '',
  `payway` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `contacter` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `pcattach` varchar(255) NOT NULL DEFAULT '',
  `mprice` varchar(255) NOT NULL DEFAULT '',
  `wangwang` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_permission`
--

CREATE TABLE `pw_permission` (
  `uid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `gid` smallint(6) UNSIGNED NOT NULL,
  `rkey` varchar(20) NOT NULL DEFAULT '',
  `type` enum('basic','special','system','systemforum') NOT NULL,
  `rvalue` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_permission`
--

INSERT INTO `pw_permission` (`uid`, `fid`, `gid`, `rkey`, `type`, `rvalue`) VALUES
(0, 0, 1, 'allowvisit', 'basic', '1'),
(0, 0, 1, 'maxmsg', 'basic', '30'),
(0, 0, 1, 'allowhide', 'basic', '0'),
(0, 0, 1, 'allowread', 'basic', '1'),
(0, 0, 1, 'allowportait', 'basic', '1'),
(0, 0, 1, 'upload', 'basic', '1'),
(0, 0, 1, 'allowrp', 'basic', '1'),
(0, 0, 1, 'allowhonor', 'basic', '1'),
(0, 0, 1, 'allowdelatc', 'basic', '1'),
(0, 0, 1, 'allowpost', 'basic', '1'),
(0, 0, 1, 'allownewvote', 'basic', '1'),
(0, 0, 1, 'allowvote', 'basic', '1'),
(0, 0, 1, 'allowactive', 'basic', '1'),
(0, 0, 1, 'htmlcode', 'basic', '0'),
(0, 0, 1, 'allowhidden', 'basic', '1'),
(0, 0, 1, 'allowencode', 'basic', '1'),
(0, 0, 1, 'allowsell', 'basic', '1'),
(0, 0, 1, 'allowsearch', 'basic', '2'),
(0, 0, 1, 'allowmember', 'basic', '1'),
(0, 0, 1, 'allowprofile', 'basic', '1'),
(0, 0, 1, 'allowreport', 'basic', '1'),
(0, 0, 1, 'allowmessege', 'basic', '1'),
(0, 0, 1, 'allowsort', 'basic', '1'),
(0, 0, 1, 'alloworder', 'basic', '1'),
(0, 0, 1, 'allowupload', 'basic', '1'),
(0, 0, 1, 'allowdownload', 'basic', '1'),
(0, 0, 1, 'allownum', 'basic', '50'),
(0, 0, 1, 'edittime', 'basic', '0'),
(0, 0, 1, 'postpertime', 'basic', '3'),
(0, 0, 1, 'searchtime', 'basic', '10'),
(0, 0, 1, 'signnum', 'basic', '100'),
(0, 0, 1, 'show', 'basic', '1'),
(0, 0, 1, 'viewipfrom', 'basic', '0'),
(0, 0, 1, 'imgwidth', 'basic', ''),
(0, 0, 1, 'imgheight', 'basic', ''),
(0, 0, 1, 'msggroup', 'basic', '0'),
(0, 0, 1, 'maxfavor', 'basic', '100'),
(0, 0, 1, 'viewvote', 'basic', '0'),
(0, 0, 1, 'atccheck', 'basic', '1'),
(0, 0, 1, 'markable', 'basic', '1'),
(0, 0, 1, 'postlimit', 'basic', ''),
(0, 0, 1, 'uploadtype', 'basic', ''),
(0, 0, 1, 'markdt', 'basic', ''),
(0, 0, 1, 'ifmemo', 'basic', '1'),
(0, 0, 1, 'atclog', 'basic', '1'),
(0, 0, 1, 'modifyvote', 'basic', '1'),
(0, 0, 1, 'allowreward', 'basic', '1'),
(0, 0, 1, 'allowgoods', 'basic', '1'),
(0, 0, 1, 'allowdebate', 'basic', '1'),
(0, 0, 1, 'anonymous', 'basic', '0'),
(0, 0, 1, 'dig', 'basic', '1'),
(0, 0, 1, 'leaveword', 'basic', '1'),
(0, 0, 1, 'schtime', 'basic', '7776000'),
(0, 0, 1, 'fontsize', 'basic', ''),
(0, 0, 1, 'maxsendmsg', 'basic', ''),
(0, 0, 1, 'pergroup', 'basic', 'member'),
(0, 0, 1, 'maxgraft', 'basic', '5'),
(0, 0, 1, 'pwdlimitime', 'basic', ''),
(0, 0, 1, 'maxcstyles', 'basic', ''),
(0, 0, 1, 'media', 'basic', ''),
(0, 0, 1, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:1:"5";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 2, 'allowvisit', 'basic', '1'),
(0, 0, 2, 'maxmsg', 'basic', '0'),
(0, 0, 2, 'allowhide', 'basic', '0'),
(0, 0, 2, 'allowread', 'basic', '1'),
(0, 0, 2, 'allowportait', 'basic', '0'),
(0, 0, 2, 'upload', 'basic', '0'),
(0, 0, 2, 'allowrp', 'basic', '0'),
(0, 0, 2, 'allowhonor', 'basic', '0'),
(0, 0, 2, 'allowdelatc', 'basic', '0'),
(0, 0, 2, 'allowpost', 'basic', '0'),
(0, 0, 2, 'allownewvote', 'basic', '0'),
(0, 0, 2, 'allowvote', 'basic', '0'),
(0, 0, 2, 'allowactive', 'basic', '0'),
(0, 0, 2, 'htmlcode', 'basic', '0'),
(0, 0, 2, 'allowhidden', 'basic', '0'),
(0, 0, 2, 'allowencode', 'basic', '0'),
(0, 0, 2, 'allowsell', 'basic', '0'),
(0, 0, 2, 'allowsearch', 'basic', '0'),
(0, 0, 2, 'allowmember', 'basic', '0'),
(0, 0, 2, 'allowprofile', 'basic', '1'),
(0, 0, 2, 'allowreport', 'basic', '0'),
(0, 0, 2, 'allowmessege', 'basic', '0'),
(0, 0, 2, 'allowsort', 'basic', '0'),
(0, 0, 2, 'alloworder', 'basic', '0'),
(0, 0, 2, 'allowupload', 'basic', '0'),
(0, 0, 2, 'allowdownload', 'basic', '0'),
(0, 0, 2, 'allownum', 'basic', '0'),
(0, 0, 2, 'edittime', 'basic', '1'),
(0, 0, 2, 'postpertime', 'basic', '10'),
(0, 0, 2, 'searchtime', 'basic', '10'),
(0, 0, 2, 'signnum', 'basic', '0'),
(0, 0, 2, 'show', 'basic', '0'),
(0, 0, 2, 'viewipfrom', 'basic', '0'),
(0, 0, 2, 'imgwidth', 'basic', ''),
(0, 0, 2, 'imgheight', 'basic', ''),
(0, 0, 2, 'fontsize', 'basic', ''),
(0, 0, 2, 'msggroup', 'basic', '0'),
(0, 0, 2, 'maxfavor', 'basic', '100'),
(0, 0, 2, 'viewvote', 'basic', '0'),
(0, 0, 2, 'atccheck', 'basic', '1'),
(0, 0, 2, 'markable', 'basic', '0'),
(0, 0, 2, 'postlimit', 'basic', ''),
(0, 0, 2, 'uploadtype', 'basic', ''),
(0, 0, 2, 'markdt', 'basic', ''),
(0, 0, 2, 'ifmemo', 'basic', '1'),
(0, 0, 2, 'atclog', 'basic', '0'),
(0, 0, 2, 'schtime', 'basic', '7776000'),
(0, 0, 2, 'modifyvote', 'basic', '0'),
(0, 0, 2, 'allowreward', 'basic', '0'),
(0, 0, 2, 'allowgoods', 'basic', '0'),
(0, 0, 2, 'allowdebate', 'basic', '0'),
(0, 0, 2, 'anonymous', 'basic', '0'),
(0, 0, 2, 'dig', 'basic', '0'),
(0, 0, 2, 'leaveword', 'basic', '0'),
(0, 0, 2, 'markset', 'basic', 'a:5:{s:5:"money";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 3, 'allowvisit', 'basic', '1'),
(0, 0, 3, 'maxmsg', 'basic', '50'),
(0, 0, 3, 'allowhide', 'basic', '0'),
(0, 0, 3, 'allowread', 'basic', '1'),
(0, 0, 3, 'allowportait', 'basic', '1'),
(0, 0, 3, 'upload', 'basic', '1'),
(0, 0, 3, 'allowrp', 'basic', '1'),
(0, 0, 3, 'allowhonor', 'basic', '1'),
(0, 0, 3, 'allowdelatc', 'basic', '1'),
(0, 0, 3, 'allowpost', 'basic', '1'),
(0, 0, 3, 'allownewvote', 'basic', '1'),
(0, 0, 3, 'allowvote', 'basic', '1'),
(0, 0, 3, 'allowactive', 'basic', '1'),
(0, 0, 3, 'htmlcode', 'basic', '1'),
(0, 0, 3, 'allowhidden', 'basic', '1'),
(0, 0, 3, 'allowencode', 'basic', '1'),
(0, 0, 3, 'allowsell', 'basic', '1'),
(0, 0, 3, 'allowsearch', 'basic', '2'),
(0, 0, 3, 'allowmember', 'basic', '1'),
(0, 0, 3, 'allowprofile', 'basic', '1'),
(0, 0, 3, 'allowreport', 'basic', '1'),
(0, 0, 3, 'allowmessege', 'basic', '1'),
(0, 0, 3, 'allowsort', 'basic', '1'),
(0, 0, 3, 'alloworder', 'basic', '1'),
(0, 0, 3, 'allowupload', 'basic', '1'),
(0, 0, 3, 'allowdownload', 'basic', '1'),
(0, 0, 3, 'allownum', 'basic', '200'),
(0, 0, 3, 'edittime', 'basic', '0'),
(0, 0, 3, 'postpertime', 'basic', '3'),
(0, 0, 3, 'searchtime', 'basic', '10'),
(0, 0, 3, 'signnum', 'basic', '200'),
(0, 0, 3, 'show', 'basic', '1'),
(0, 0, 3, 'viewipfrom', 'basic', '1'),
(0, 0, 3, 'imgwidth', 'basic', ''),
(0, 0, 3, 'imgheight', 'basic', ''),
(0, 0, 3, 'fontsize', 'basic', ''),
(0, 0, 3, 'msggroup', 'basic', '1'),
(0, 0, 3, 'multiopen', 'basic', '1'),
(0, 0, 3, 'maxfavor', 'basic', '100'),
(0, 0, 3, 'viewvote', 'basic', '1'),
(0, 0, 3, 'atccheck', 'basic', '1'),
(0, 0, 3, 'markable', 'basic', '2'),
(0, 0, 3, 'postlimit', 'basic', ''),
(0, 0, 3, 'uploadtype', 'basic', ''),
(0, 0, 3, 'markdt', 'basic', ''),
(0, 0, 3, 'anonymous', 'basic', '0'),
(0, 0, 3, 'leaveword', 'basic', '1'),
(0, 0, 3, 'allowadmincp', 'system', '1'),
(0, 0, 3, 'delatc', 'systemforum', '1'),
(0, 0, 3, 'moveatc', 'systemforum', '1'),
(0, 0, 3, 'copyatc', 'systemforum', '1'),
(0, 0, 3, 'digestadmin', 'systemforum', '1'),
(0, 0, 3, 'lockadmin', 'systemforum', '1'),
(0, 0, 3, 'pushadmin', 'systemforum', '1'),
(0, 0, 3, 'coloradmin', 'systemforum', '1'),
(0, 0, 3, 'downadmin', 'systemforum', '1'),
(0, 0, 3, 'viewcheck', 'systemforum', '1'),
(0, 0, 3, 'viewclose', 'systemforum', '1'),
(0, 0, 3, 'delattach', 'systemforum', '1'),
(0, 0, 3, 'viewip', 'systemforum', '1'),
(0, 0, 3, 'banuser', 'systemforum', '2'),
(0, 0, 3, 'bantype', 'systemforum', '1'),
(0, 0, 3, 'banmax', 'systemforum', '30'),
(0, 0, 3, 'posthide', 'systemforum', '1'),
(0, 0, 3, 'sellhide', 'systemforum', '1'),
(0, 0, 3, 'encodehide', 'systemforum', '1'),
(0, 0, 3, 'anonyhide', 'systemforum', '1'),
(0, 0, 3, 'postpers', 'systemforum', '1'),
(0, 0, 3, 'replylock', 'systemforum', '1'),
(0, 0, 3, 'modother', 'systemforum', '1'),
(0, 0, 3, 'deltpcs', 'systemforum', '1'),
(0, 0, 3, 'topped', 'systemforum', '4'),
(0, 0, 3, 'tpctype', 'systemforum', '1'),
(0, 0, 3, 'tpccheck', 'systemforum', '1'),
(0, 0, 3, 'allowtime', 'systemforum', '1'),
(0, 0, 3, 'superright', 'system', '1'),
(0, 0, 3, 'ifmemo', 'basic', '1'),
(0, 0, 3, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:3:"100";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 3, 'atclog', 'basic', '1'),
(0, 0, 3, 'schtime', 'basic', '7776000'),
(0, 0, 3, 'maxsendmsg', 'basic', ''),
(0, 0, 3, 'pergroup', 'basic', 'member,system,special'),
(0, 0, 3, 'maxgraft', 'basic', '10'),
(0, 0, 3, 'pwdlimitime', 'basic', ''),
(0, 0, 3, 'maxcstyles', 'basic', ''),
(0, 0, 3, 'modifyvote', 'basic', '1'),
(0, 0, 3, 'allowreward', 'basic', '1'),
(0, 0, 3, 'allowgoods', 'basic', '1'),
(0, 0, 3, 'allowdebate', 'basic', '1'),
(0, 0, 3, 'media', 'basic', ''),
(0, 0, 3, 'dig', 'basic', '1'),
(0, 0, 3, 'shield', 'systemforum', '1'),
(0, 0, 3, 'unite', 'systemforum', '1'),
(0, 0, 3, 'remind', 'systemforum', '1'),
(0, 0, 3, 'pingcp', 'systemforum', '1'),
(0, 0, 3, 'inspect', 'systemforum', '1'),
(0, 0, 3, 'allowpcid', 'basic', '1,2'),
(0, 0, 3, 'allowmodelid', 'basic', '1'),
(0, 0, 3, 'systemforum', 'basic', '1'),
(0, 0, 3, 'areapush', 'systemforum', '1'),
(0, 0, 4, 'allowvisit', 'basic', '1'),
(0, 0, 4, 'areapush', 'systemforum', '1'),
(0, 0, 4, 'maxmsg', 'basic', '50'),
(0, 0, 4, 'allowhide', 'basic', '0'),
(0, 0, 4, 'allowread', 'basic', '1'),
(0, 0, 4, 'allowportait', 'basic', '1'),
(0, 0, 4, 'upload', 'basic', '1'),
(0, 0, 4, 'allowrp', 'basic', '1'),
(0, 0, 4, 'allowhonor', 'basic', '1'),
(0, 0, 4, 'allowdelatc', 'basic', '1'),
(0, 0, 4, 'allowpost', 'basic', '1'),
(0, 0, 4, 'allownewvote', 'basic', '1'),
(0, 0, 4, 'allowvote', 'basic', '1'),
(0, 0, 4, 'allowactive', 'basic', '1'),
(0, 0, 4, 'htmlcode', 'basic', '0'),
(0, 0, 4, 'allowhidden', 'basic', '1'),
(0, 0, 4, 'allowencode', 'basic', '1'),
(0, 0, 4, 'allowsell', 'basic', '1'),
(0, 0, 4, 'allowsearch', 'basic', '2'),
(0, 0, 4, 'allowmember', 'basic', '1'),
(0, 0, 4, 'allowprofile', 'basic', '1'),
(0, 0, 4, 'allowreport', 'basic', '1'),
(0, 0, 4, 'allowmessege', 'basic', '1'),
(0, 0, 4, 'allowsort', 'basic', '1'),
(0, 0, 4, 'alloworder', 'basic', '1'),
(0, 0, 4, 'allowupload', 'basic', '1'),
(0, 0, 4, 'allowdownload', 'basic', '1'),
(0, 0, 4, 'allownum', 'basic', '80'),
(0, 0, 4, 'edittime', 'basic', '0'),
(0, 0, 4, 'postpertime', 'basic', '3'),
(0, 0, 4, 'searchtime', 'basic', '10'),
(0, 0, 4, 'signnum', 'basic', '200'),
(0, 0, 4, 'show', 'basic', '1'),
(0, 0, 4, 'viewipfrom', 'basic', '1'),
(0, 0, 4, 'imgwidth', 'basic', ''),
(0, 0, 4, 'imgheight', 'basic', ''),
(0, 0, 4, 'fontsize', 'basic', ''),
(0, 0, 4, 'msggroup', 'basic', '1'),
(0, 0, 4, 'maxfavor', 'basic', '100'),
(0, 0, 4, 'viewvote', 'basic', '1'),
(0, 0, 4, 'atccheck', 'basic', '1'),
(0, 0, 4, 'markable', 'basic', '2'),
(0, 0, 4, 'postlimit', 'basic', ''),
(0, 0, 4, 'uploadtype', 'basic', ''),
(0, 0, 4, 'markdt', 'basic', ''),
(0, 0, 4, 'anonymous', 'basic', '0'),
(0, 0, 4, 'leaveword', 'basic', '1'),
(0, 0, 4, 'allowadmincp', 'system', '1'),
(0, 0, 4, 'delatc', 'systemforum', '1'),
(0, 0, 4, 'moveatc', 'systemforum', '1'),
(0, 0, 4, 'copyatc', 'systemforum', '1'),
(0, 0, 4, 'digestadmin', 'systemforum', '1'),
(0, 0, 4, 'lockadmin', 'systemforum', '1'),
(0, 0, 4, 'pushadmin', 'systemforum', '1'),
(0, 0, 4, 'coloradmin', 'systemforum', '1'),
(0, 0, 4, 'downadmin', 'systemforum', '1'),
(0, 0, 4, 'viewcheck', 'systemforum', '1'),
(0, 0, 4, 'viewclose', 'systemforum', '1'),
(0, 0, 4, 'delattach', 'systemforum', '1'),
(0, 0, 4, 'viewip', 'systemforum', '1'),
(0, 0, 4, 'banuser', 'systemforum', '2'),
(0, 0, 4, 'bantype', 'systemforum', '1'),
(0, 0, 4, 'banmax', 'systemforum', '20'),
(0, 0, 4, 'posthide', 'systemforum', '1'),
(0, 0, 4, 'sellhide', 'systemforum', '1'),
(0, 0, 4, 'encodehide', 'systemforum', '1'),
(0, 0, 4, 'anonyhide', 'systemforum', '1'),
(0, 0, 4, 'postpers', 'systemforum', '1'),
(0, 0, 4, 'replylock', 'systemforum', '1'),
(0, 0, 4, 'modother', 'systemforum', '1'),
(0, 0, 4, 'deltpcs', 'systemforum', '1'),
(0, 0, 4, 'topped', 'systemforum', '4'),
(0, 0, 4, 'tpctype', 'systemforum', '1'),
(0, 0, 4, 'tpccheck', 'systemforum', '1'),
(0, 0, 4, 'allowtime', 'systemforum', '1'),
(0, 0, 4, 'superright', 'system', '1'),
(0, 0, 4, 'ifmemo', 'basic', '1'),
(0, 0, 4, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:2:"80";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 4, 'atclog', 'basic', '1'),
(0, 0, 4, 'schtime', 'basic', '7776000'),
(0, 0, 4, 'maxsendmsg', 'basic', ''),
(0, 0, 4, 'pergroup', 'basic', 'member,system'),
(0, 0, 4, 'maxgraft', 'basic', '10'),
(0, 0, 4, 'pwdlimitime', 'basic', ''),
(0, 0, 4, 'maxcstyles', 'basic', ''),
(0, 0, 4, 'modifyvote', 'basic', '1'),
(0, 0, 4, 'allowreward', 'basic', '1'),
(0, 0, 4, 'allowgoods', 'basic', '1'),
(0, 0, 4, 'allowdebate', 'basic', '1'),
(0, 0, 4, 'media', 'basic', ''),
(0, 0, 4, 'dig', 'basic', '1'),
(0, 0, 4, 'shield', 'systemforum', '1'),
(0, 0, 4, 'unite', 'systemforum', '1'),
(0, 0, 4, 'remind', 'systemforum', '1'),
(0, 0, 4, 'pingcp', 'systemforum', '1'),
(0, 0, 4, 'inspect', 'systemforum', '1'),
(0, 0, 4, 'allowpcid', 'basic', '1,2'),
(0, 0, 4, 'allowmodelid', 'basic', '1'),
(0, 0, 4, 'systemforum', 'basic', '1'),
(0, 0, 5, 'allowvisit', 'basic', '1'),
(0, 0, 5, 'maxmsg', 'basic', '50'),
(0, 0, 5, 'allowhide', 'basic', '0'),
(0, 0, 5, 'allowread', 'basic', '1'),
(0, 0, 5, 'allowportait', 'basic', '1'),
(0, 0, 5, 'upload', 'basic', '1'),
(0, 0, 5, 'allowrp', 'basic', '1'),
(0, 0, 5, 'allowhonor', 'basic', '1'),
(0, 0, 5, 'allowdelatc', 'basic', '1'),
(0, 0, 5, 'allowpost', 'basic', '1'),
(0, 0, 5, 'allownewvote', 'basic', '1'),
(0, 0, 5, 'allowvote', 'basic', '1'),
(0, 0, 5, 'allowactive', 'basic', '1'),
(0, 0, 5, 'htmlcode', 'basic', '0'),
(0, 0, 5, 'allowhidden', 'basic', '1'),
(0, 0, 5, 'allowencode', 'basic', '1'),
(0, 0, 5, 'allowsell', 'basic', '1'),
(0, 0, 5, 'allowsearch', 'basic', '2'),
(0, 0, 5, 'allowmember', 'basic', '1'),
(0, 0, 5, 'allowprofile', 'basic', '1'),
(0, 0, 5, 'allowreport', 'basic', '1'),
(0, 0, 5, 'allowmessege', 'basic', '1'),
(0, 0, 5, 'allowsort', 'basic', '1'),
(0, 0, 5, 'alloworder', 'basic', '1'),
(0, 0, 5, 'allowupload', 'basic', '1'),
(0, 0, 5, 'allowdownload', 'basic', '1'),
(0, 0, 5, 'allownum', 'basic', '80'),
(0, 0, 5, 'edittime', 'basic', '0'),
(0, 0, 5, 'postpertime', 'basic', '3'),
(0, 0, 5, 'searchtime', 'basic', '10'),
(0, 0, 5, 'signnum', 'basic', '200'),
(0, 0, 5, 'show', 'basic', '1'),
(0, 0, 5, 'viewipfrom', 'basic', '1'),
(0, 0, 5, 'imgwidth', 'basic', ''),
(0, 0, 5, 'imgheight', 'basic', ''),
(0, 0, 5, 'fontsize', 'basic', ''),
(0, 0, 5, 'msggroup', 'basic', '1'),
(0, 0, 5, 'maxfavor', 'basic', '100'),
(0, 0, 5, 'viewvote', 'basic', '1'),
(0, 0, 5, 'atccheck', 'basic', '1'),
(0, 0, 5, 'markable', 'basic', '2'),
(0, 0, 5, 'postlimit', 'basic', ''),
(0, 0, 5, 'uploadtype', 'basic', ''),
(0, 0, 5, 'markdt', 'basic', ''),
(0, 0, 5, 'anonymous', 'basic', '0'),
(0, 0, 5, 'leaveword', 'basic', '1'),
(0, 0, 5, 'allowadmincp', 'system', '1'),
(0, 0, 5, 'delatc', 'systemforum', '1'),
(0, 0, 5, 'moveatc', 'systemforum', '1'),
(0, 0, 5, 'copyatc', 'systemforum', '1'),
(0, 0, 5, 'digestadmin', 'systemforum', '1'),
(0, 0, 5, 'lockadmin', 'systemforum', '1'),
(0, 0, 5, 'pushadmin', 'systemforum', '1'),
(0, 0, 5, 'coloradmin', 'systemforum', '1'),
(0, 0, 5, 'downadmin', 'systemforum', '1'),
(0, 0, 5, 'viewcheck', 'systemforum', '1'),
(0, 0, 5, 'viewclose', 'systemforum', '1'),
(0, 0, 5, 'delattach', 'systemforum', '1'),
(0, 0, 5, 'viewip', 'systemforum', '1'),
(0, 0, 5, 'banuser', 'systemforum', '1'),
(0, 0, 5, 'bantype', 'systemforum', '0'),
(0, 0, 5, 'banmax', 'systemforum', '10'),
(0, 0, 5, 'posthide', 'systemforum', '0'),
(0, 0, 5, 'sellhide', 'systemforum', '0'),
(0, 0, 5, 'encodehide', 'systemforum', '0'),
(0, 0, 5, 'anonyhide', 'systemforum', '0'),
(0, 0, 5, 'postpers', 'systemforum', '0'),
(0, 0, 5, 'replylock', 'systemforum', '1'),
(0, 0, 5, 'modother', 'systemforum', '1'),
(0, 0, 5, 'remind', 'systemforum', '1'),
(0, 0, 5, 'shield', 'systemforum', '1'),
(0, 0, 5, 'topped', 'systemforum', '1'),
(0, 0, 5, 'tpccheck', 'systemforum', '1'),
(0, 0, 5, 'tpctype', 'systemforum', '1'),
(0, 0, 5, 'unite', 'systemforum', '1'),
(0, 0, 5, 'deltpcs', 'systemforum', '1'),
(0, 0, 5, 'allowtime', 'systemforum', '1'),
(0, 0, 5, 'superright', 'system', '0'),
(0, 0, 5, 'ifmemo', 'basic', '1'),
(0, 0, 5, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:2:"80";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 5, 'atclog', 'basic', '1'),
(0, 0, 5, 'schtime', 'basic', '7776000'),
(0, 0, 5, 'modifyvote', 'basic', '1'),
(0, 0, 5, 'allowreward', 'basic', '1'),
(0, 0, 5, 'allowgoods', 'basic', '1'),
(0, 0, 5, 'allowdebate', 'basic', '1'),
(0, 0, 5, 'dig', 'basic', '1'),
(0, 0, 5, 'pingcp', 'systemforum', '1'),
(0, 0, 5, 'inspect', 'systemforum', '1'),
(0, 0, 5, 'maxsendmsg', 'basic', ''),
(0, 0, 5, 'pergroup', 'basic', 'member,system,special'),
(0, 0, 5, 'maxgraft', 'basic', '10'),
(0, 0, 5, 'pwdlimitime', 'basic', ''),
(0, 0, 5, 'maxcstyles', 'basic', ''),
(0, 0, 5, 'media', 'basic', ''),
(0, 0, 5, 'allowpcid', 'basic', '1,2'),
(0, 0, 5, 'allowmodelid', 'basic', '1'),
(0, 0, 5, 'systemforum', 'basic', '1'),
(0, 0, 6, 'allowvisit', 'basic', '1'),
(0, 0, 6, 'maxmsg', 'basic', '10'),
(0, 0, 6, 'allowhide', 'basic', '0'),
(0, 0, 6, 'allowread', 'basic', '1'),
(0, 0, 6, 'allowportait', 'basic', '0'),
(0, 0, 6, 'upload', 'basic', '0'),
(0, 0, 6, 'allowrp', 'basic', '0'),
(0, 0, 6, 'allowhonor', 'basic', '0'),
(0, 0, 6, 'allowdelatc', 'basic', '0'),
(0, 0, 6, 'allowpost', 'basic', '0'),
(0, 0, 6, 'allownewvote', 'basic', '0'),
(0, 0, 6, 'allowvote', 'basic', '0'),
(0, 0, 6, 'allowactive', 'basic', '0'),
(0, 0, 6, 'htmlcode', 'basic', '0'),
(0, 0, 6, 'allowhidden', 'basic', '0'),
(0, 0, 6, 'allowencode', 'basic', '0'),
(0, 0, 6, 'allowsell', 'basic', '0'),
(0, 0, 6, 'allowsearch', 'basic', '0'),
(0, 0, 6, 'allowmember', 'basic', '0'),
(0, 0, 6, 'allowprofile', 'basic', '1'),
(0, 0, 6, 'allowreport', 'basic', '0'),
(0, 0, 6, 'allowmessege', 'basic', '0'),
(0, 0, 6, 'allowsort', 'basic', '0'),
(0, 0, 6, 'alloworder', 'basic', '0'),
(0, 0, 6, 'allowupload', 'basic', '0'),
(0, 0, 6, 'allowdownload', 'basic', '0'),
(0, 0, 6, 'allownum', 'basic', '50'),
(0, 0, 6, 'edittime', 'basic', '0'),
(0, 0, 6, 'postpertime', 'basic', '15'),
(0, 0, 6, 'searchtime', 'basic', '10'),
(0, 0, 6, 'signnum', 'basic', '100'),
(0, 0, 6, 'show', 'basic', '0'),
(0, 0, 6, 'viewipfrom', 'basic', '0'),
(0, 0, 6, 'imgwidth', 'basic', ''),
(0, 0, 6, 'imgheight', 'basic', ''),
(0, 0, 6, 'fontsize', 'basic', ''),
(0, 0, 6, 'msggroup', 'basic', '0'),
(0, 0, 6, 'maxfavor', 'basic', '100'),
(0, 0, 6, 'viewvote', 'basic', '0'),
(0, 0, 6, 'atccheck', 'basic', '1'),
(0, 0, 6, 'markable', 'basic', '0'),
(0, 0, 6, 'postlimit', 'basic', ''),
(0, 0, 6, 'uploadtype', 'basic', ''),
(0, 0, 6, 'markdt', 'basic', ''),
(0, 0, 6, 'ifmemo', 'basic', '0'),
(0, 0, 6, 'atclog', 'basic', '0'),
(0, 0, 6, 'schtime', 'basic', '7776000'),
(0, 0, 6, 'modifyvote', 'basic', '0'),
(0, 0, 6, 'allowreward', 'basic', '0'),
(0, 0, 6, 'allowgoods', 'basic', '0'),
(0, 0, 6, 'allowdebate', 'basic', '0'),
(0, 0, 6, 'anonymous', 'basic', '0'),
(0, 0, 6, 'dig', 'basic', '0'),
(0, 0, 6, 'leaveword', 'basic', '0'),
(0, 0, 6, 'markset', 'basic', 'a:5:{s:5:"money";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 7, 'allowvisit', 'basic', '1'),
(0, 0, 7, 'maxmsg', 'basic', '10'),
(0, 0, 7, 'allowhide', 'basic', '0'),
(0, 0, 7, 'allowread', 'basic', '1'),
(0, 0, 7, 'allowportait', 'basic', '1'),
(0, 0, 7, 'upload', 'basic', '0'),
(0, 0, 7, 'allowrp', 'basic', '1'),
(0, 0, 7, 'allowhonor', 'basic', '0'),
(0, 0, 7, 'allowdelatc', 'basic', '1'),
(0, 0, 7, 'allowpost', 'basic', '1'),
(0, 0, 7, 'allownewvote', 'basic', '1'),
(0, 0, 7, 'allowvote', 'basic', '1'),
(0, 0, 7, 'allowactive', 'basic', '0'),
(0, 0, 7, 'htmlcode', 'basic', '0'),
(0, 0, 7, 'allowhidden', 'basic', '1'),
(0, 0, 7, 'allowencode', 'basic', '1'),
(0, 0, 7, 'allowsell', 'basic', '1'),
(0, 0, 7, 'allowsearch', 'basic', '0'),
(0, 0, 7, 'allowmember', 'basic', '1'),
(0, 0, 7, 'allowprofile', 'basic', '1'),
(0, 0, 7, 'allowreport', 'basic', '0'),
(0, 0, 7, 'allowmessege', 'basic', '0'),
(0, 0, 7, 'allowsort', 'basic', '0'),
(0, 0, 7, 'alloworder', 'basic', '1'),
(0, 0, 7, 'allowupload', 'basic', '1'),
(0, 0, 7, 'allowdownload', 'basic', '1'),
(0, 0, 7, 'allownum', 'basic', '50'),
(0, 0, 7, 'edittime', 'basic', '0'),
(0, 0, 7, 'postpertime', 'basic', '15'),
(0, 0, 7, 'searchtime', 'basic', '10'),
(0, 0, 7, 'signnum', 'basic', '100'),
(0, 0, 7, 'show', 'basic', '0'),
(0, 0, 7, 'viewipfrom', 'basic', '0'),
(0, 0, 7, 'imgwidth', 'basic', ''),
(0, 0, 7, 'imgheight', 'basic', ''),
(0, 0, 7, 'fontsize', 'basic', ''),
(0, 0, 7, 'msggroup', 'basic', '0'),
(0, 0, 7, 'maxfavor', 'basic', '100'),
(0, 0, 7, 'viewvote', 'basic', '0'),
(0, 0, 7, 'atccheck', 'basic', '1'),
(0, 0, 7, 'markable', 'basic', '0'),
(0, 0, 7, 'postlimit', 'basic', ''),
(0, 0, 7, 'uploadtype', 'basic', ''),
(0, 0, 7, 'markdt', 'basic', ''),
(0, 0, 7, 'ifmemo', 'basic', '1'),
(0, 0, 8, 'allowvisit', 'basic', '1'),
(0, 0, 8, 'maxmsg', 'basic', '10'),
(0, 0, 8, 'allowhide', 'basic', '0'),
(0, 0, 8, 'allowread', 'basic', '1'),
(0, 0, 8, 'allowportait', 'basic', '1'),
(0, 0, 8, 'upload', 'basic', '1'),
(0, 0, 8, 'allowrp', 'basic', '1'),
(0, 0, 8, 'allowhonor', 'basic', '1'),
(0, 0, 8, 'allowdelatc', 'basic', '1'),
(0, 0, 8, 'allowpost', 'basic', '1'),
(0, 0, 8, 'allownewvote', 'basic', '0'),
(0, 0, 8, 'allowvote', 'basic', '0'),
(0, 0, 8, 'allowactive', 'basic', '0'),
(0, 0, 8, 'htmlcode', 'basic', '0'),
(0, 0, 8, 'allowhidden', 'basic', '1'),
(0, 0, 8, 'allowencode', 'basic', '0'),
(0, 0, 8, 'allowsell', 'basic', '0'),
(0, 0, 8, 'allowsearch', 'basic', '1'),
(0, 0, 8, 'allowmember', 'basic', '0'),
(0, 0, 8, 'allowprofile', 'basic', '1'),
(0, 0, 8, 'allowreport', 'basic', '1'),
(0, 0, 8, 'allowmessege', 'basic', '1'),
(0, 0, 8, 'allowsort', 'basic', '0'),
(0, 0, 8, 'alloworder', 'basic', '1'),
(0, 0, 8, 'allowupload', 'basic', '1'),
(0, 0, 8, 'allowdownload', 'basic', '1'),
(0, 0, 8, 'allownum', 'basic', '50'),
(0, 0, 8, 'edittime', 'basic', '0'),
(0, 0, 8, 'postpertime', 'basic', '5'),
(0, 0, 8, 'searchtime', 'basic', '10'),
(0, 0, 8, 'signnum', 'basic', '30'),
(0, 0, 8, 'show', 'basic', '0'),
(0, 0, 8, 'viewipfrom', 'basic', '0'),
(0, 0, 8, 'imgwidth', 'basic', ''),
(0, 0, 8, 'imgheight', 'basic', ''),
(0, 0, 8, 'fontsize', 'basic', '3'),
(0, 0, 8, 'msggroup', 'basic', '0'),
(0, 0, 8, 'maxfavor', 'basic', '50'),
(0, 0, 8, 'viewvote', 'basic', '0'),
(0, 0, 8, 'atccheck', 'basic', '1'),
(0, 0, 8, 'markable', 'basic', '0'),
(0, 0, 8, 'postlimit', 'basic', ''),
(0, 0, 8, 'uploadtype', 'basic', ''),
(0, 0, 8, 'markdt', 'basic', ''),
(0, 0, 8, 'anonymous', 'basic', '0'),
(0, 0, 8, 'leaveword', 'basic', '1'),
(0, 0, 8, 'ifmemo', 'basic', '1'),
(0, 0, 8, 'atclog', 'basic', '0'),
(0, 0, 8, 'schtime', 'basic', '7776000'),
(0, 0, 8, 'modifyvote', 'basic', '0'),
(0, 0, 8, 'allowreward', 'basic', '0'),
(0, 0, 8, 'allowgoods', 'basic', '0'),
(0, 0, 8, 'allowdebate', 'basic', '0'),
(0, 0, 8, 'dig', 'basic', '0'),
(0, 0, 8, 'pergroup', 'basic', 'member'),
(0, 0, 8, 'markset', 'basic', 'a:5:{s:5:"money";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 8, 'maxgraft', 'basic', '1'),
(0, 0, 9, 'allowvisit', 'basic', '1'),
(0, 0, 9, 'maxmsg', 'basic', '10'),
(0, 0, 9, 'allowhide', 'basic', '0'),
(0, 0, 9, 'allowread', 'basic', '1'),
(0, 0, 9, 'allowportait', 'basic', '1'),
(0, 0, 9, 'upload', 'basic', '1'),
(0, 0, 9, 'allowrp', 'basic', '1'),
(0, 0, 9, 'allowhonor', 'basic', '1'),
(0, 0, 9, 'allowdelatc', 'basic', '1'),
(0, 0, 9, 'allowpost', 'basic', '1'),
(0, 0, 9, 'allownewvote', 'basic', '1'),
(0, 0, 9, 'allowvote', 'basic', '1'),
(0, 0, 9, 'allowactive', 'basic', '1'),
(0, 0, 9, 'htmlcode', 'basic', '0'),
(0, 0, 9, 'allowhidden', 'basic', '1'),
(0, 0, 9, 'allowencode', 'basic', '1'),
(0, 0, 9, 'allowsell', 'basic', '1'),
(0, 0, 9, 'allowsearch', 'basic', '1'),
(0, 0, 9, 'allowmember', 'basic', '1'),
(0, 0, 9, 'allowprofile', 'basic', '1'),
(0, 0, 9, 'allowreport', 'basic', '1'),
(0, 0, 9, 'allowmessege', 'basic', '1'),
(0, 0, 9, 'allowsort', 'basic', '1'),
(0, 0, 9, 'alloworder', 'basic', '1'),
(0, 0, 9, 'allowupload', 'basic', '1'),
(0, 0, 9, 'allowdownload', 'basic', '1'),
(0, 0, 9, 'allownum', 'basic', '50'),
(0, 0, 9, 'edittime', 'basic', '0'),
(0, 0, 9, 'postpertime', 'basic', '5'),
(0, 0, 9, 'searchtime', 'basic', '10'),
(0, 0, 9, 'signnum', 'basic', '50'),
(0, 0, 9, 'markable', 'basic', '1'),
(0, 0, 9, 'maxfavor', 'basic', '100'),
(0, 0, 9, 'markdt', 'basic', ''),
(0, 0, 9, 'atccheck', 'basic', '1'),
(0, 0, 9, 'anonymous', 'basic', '0'),
(0, 0, 9, 'leaveword', 'basic', '1'),
(0, 0, 9, 'ifmemo', 'basic', '1'),
(0, 0, 9, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"marklimit";N;s:9:"maxcredit";s:1:"5";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 9, 'atclog', 'basic', '1'),
(0, 0, 9, 'show', 'basic', '1'),
(0, 0, 9, 'viewipfrom', 'basic', '0'),
(0, 0, 9, 'schtime', 'basic', '7776000'),
(0, 0, 9, 'msggroup', 'basic', '0'),
(0, 0, 9, 'modifyvote', 'basic', '1'),
(0, 0, 9, 'viewvote', 'basic', '0'),
(0, 0, 9, 'allowreward', 'basic', '1'),
(0, 0, 9, 'allowgoods', 'basic', '1'),
(0, 0, 9, 'allowdebate', 'basic', '1'),
(0, 0, 9, 'dig', 'basic', '1'),
(0, 0, 9, 'maxgraft', 'basic', '2'),
(0, 0, 9, 'pergroup', 'basic', 'member'),
(0, 0, 10, 'allowvisit', 'basic', '1'),
(0, 0, 10, 'pergroup', 'basic', 'member'),
(0, 0, 11, 'pergroup', 'basic', 'member'),
(0, 0, 12, 'pergroup', 'basic', 'member'),
(0, 0, 13, 'pergroup', 'basic', 'member'),
(0, 0, 14, 'pergroup', 'basic', 'member'),
(0, 0, 15, 'pergroup', 'basic', 'member'),
(0, 0, 10, 'maxmsg', 'basic', '30'),
(0, 0, 10, 'allowhide', 'basic', '0'),
(0, 0, 10, 'allowread', 'basic', '1'),
(0, 0, 10, 'allowportait', 'basic', '1'),
(0, 0, 10, 'upload', 'basic', '1'),
(0, 0, 10, 'allowrp', 'basic', '1'),
(0, 0, 10, 'allowhonor', 'basic', '1'),
(0, 0, 10, 'allowdelatc', 'basic', '1'),
(0, 0, 10, 'allowpost', 'basic', '1'),
(0, 0, 10, 'allownewvote', 'basic', '1'),
(0, 0, 10, 'allowvote', 'basic', '1'),
(0, 0, 10, 'allowactive', 'basic', '1'),
(0, 0, 10, 'htmlcode', 'basic', '0'),
(0, 0, 10, 'allowhidden', 'basic', '1'),
(0, 0, 10, 'allowencode', 'basic', '1'),
(0, 0, 10, 'allowsell', 'basic', '1'),
(0, 0, 10, 'allowsearch', 'basic', '2'),
(0, 0, 10, 'allowmember', 'basic', '1'),
(0, 0, 10, 'allowprofile', 'basic', '1'),
(0, 0, 10, 'allowreport', 'basic', '1'),
(0, 0, 10, 'allowmessege', 'basic', '1'),
(0, 0, 10, 'allowsort', 'basic', '1'),
(0, 0, 10, 'alloworder', 'basic', '1'),
(0, 0, 10, 'allowupload', 'basic', '1'),
(0, 0, 10, 'allowdownload', 'basic', '1'),
(0, 0, 10, 'allownum', 'basic', '50'),
(0, 0, 10, 'edittime', 'basic', '0'),
(0, 0, 10, 'postpertime', 'basic', '3'),
(0, 0, 10, 'searchtime', 'basic', '10'),
(0, 0, 10, 'signnum', 'basic', '100'),
(0, 0, 10, 'markable', 'basic', '1'),
(0, 0, 10, 'maxfavor', 'basic', '100'),
(0, 0, 10, 'markdt', 'basic', ''),
(0, 0, 10, 'atccheck', 'basic', '1'),
(0, 0, 10, 'anonymous', 'basic', '0'),
(0, 0, 10, 'leaveword', 'basic', '1'),
(0, 0, 10, 'ifmemo', 'basic', '1'),
(0, 0, 10, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"marklimit";N;s:9:"maxcredit";s:1:"5";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 10, 'atclog', 'basic', '1'),
(0, 0, 10, 'show', 'basic', '1'),
(0, 0, 10, 'modifyvote', 'basic', '1'),
(0, 0, 10, 'allowreward', 'basic', '1'),
(0, 0, 10, 'allowgoods', 'basic', '1'),
(0, 0, 10, 'allowdebate', 'basic', '1'),
(0, 0, 10, 'dig', 'basic', '1'),
(0, 0, 10, 'viewipfrom', 'basic', '0'),
(0, 0, 10, 'schtime', 'basic', '7776000'),
(0, 0, 10, 'msggroup', 'basic', '0'),
(0, 0, 10, 'viewvote', 'basic', '0'),
(0, 0, 10, 'maxgraft', 'basic', '5'),
(0, 0, 11, 'allowvisit', 'basic', '1'),
(0, 0, 11, 'maxmsg', 'basic', '30'),
(0, 0, 11, 'allowhide', 'basic', '0'),
(0, 0, 11, 'allowread', 'basic', '1'),
(0, 0, 11, 'allowportait', 'basic', '1'),
(0, 0, 11, 'upload', 'basic', '1'),
(0, 0, 11, 'allowrp', 'basic', '1'),
(0, 0, 11, 'allowhonor', 'basic', '1'),
(0, 0, 11, 'allowdelatc', 'basic', '1'),
(0, 0, 11, 'allowpost', 'basic', '1'),
(0, 0, 11, 'allownewvote', 'basic', '1'),
(0, 0, 11, 'allowvote', 'basic', '1'),
(0, 0, 11, 'allowactive', 'basic', '1'),
(0, 0, 11, 'htmlcode', 'basic', '0'),
(0, 0, 11, 'allowhidden', 'basic', '1'),
(0, 0, 11, 'allowencode', 'basic', '1'),
(0, 0, 11, 'allowsell', 'basic', '1'),
(0, 0, 11, 'allowsearch', 'basic', '2'),
(0, 0, 11, 'allowmember', 'basic', '1'),
(0, 0, 11, 'allowprofile', 'basic', '1'),
(0, 0, 11, 'allowreport', 'basic', '1'),
(0, 0, 11, 'allowmessege', 'basic', '1'),
(0, 0, 11, 'allowsort', 'basic', '1'),
(0, 0, 11, 'alloworder', 'basic', '1'),
(0, 0, 11, 'allowupload', 'basic', '1'),
(0, 0, 11, 'allowdownload', 'basic', '1'),
(0, 0, 11, 'allownum', 'basic', '50'),
(0, 0, 11, 'edittime', 'basic', '0'),
(0, 0, 11, 'postpertime', 'basic', '3'),
(0, 0, 11, 'searchtime', 'basic', '10'),
(0, 0, 11, 'signnum', 'basic', '150'),
(0, 0, 11, 'markable', 'basic', '1'),
(0, 0, 11, 'maxfavor', 'basic', '100'),
(0, 0, 11, 'markdt', 'basic', ''),
(0, 0, 11, 'atccheck', 'basic', '1'),
(0, 0, 11, 'anonymous', 'basic', '0'),
(0, 0, 11, 'leaveword', 'basic', '1'),
(0, 0, 11, 'ifmemo', 'basic', '1'),
(0, 0, 11, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"marklimit";N;s:9:"maxcredit";s:2:"10";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 11, 'atclog', 'basic', '1'),
(0, 0, 11, 'show', 'basic', '1'),
(0, 0, 11, 'viewipfrom', 'basic', '0'),
(0, 0, 11, 'schtime', 'basic', '7776000'),
(0, 0, 11, 'msggroup', 'basic', '0'),
(0, 0, 11, 'modifyvote', 'basic', '1'),
(0, 0, 11, 'viewvote', 'basic', '0'),
(0, 0, 11, 'allowreward', 'basic', '1'),
(0, 0, 11, 'allowgoods', 'basic', '1'),
(0, 0, 11, 'allowdebate', 'basic', '1'),
(0, 0, 11, 'dig', 'basic', '1'),
(0, 0, 11, 'maxgraft', 'basic', '5'),
(0, 0, 12, 'allowvisit', 'basic', '1'),
(0, 0, 12, 'maxmsg', 'basic', '30'),
(0, 0, 12, 'allowhide', 'basic', '0'),
(0, 0, 12, 'allowread', 'basic', '1'),
(0, 0, 12, 'allowportait', 'basic', '1'),
(0, 0, 12, 'upload', 'basic', '1'),
(0, 0, 12, 'allowrp', 'basic', '1'),
(0, 0, 12, 'allowhonor', 'basic', '1'),
(0, 0, 12, 'allowdelatc', 'basic', '1'),
(0, 0, 12, 'allowpost', 'basic', '1'),
(0, 0, 12, 'allownewvote', 'basic', '1'),
(0, 0, 12, 'allowvote', 'basic', '1'),
(0, 0, 12, 'allowactive', 'basic', '1'),
(0, 0, 12, 'htmlcode', 'basic', '0'),
(0, 0, 12, 'allowhidden', 'basic', '1'),
(0, 0, 12, 'allowencode', 'basic', '1'),
(0, 0, 12, 'allowsell', 'basic', '1'),
(0, 0, 12, 'allowsearch', 'basic', '2'),
(0, 0, 12, 'allowmember', 'basic', '1'),
(0, 0, 12, 'allowprofile', 'basic', '1'),
(0, 0, 12, 'allowreport', 'basic', '1'),
(0, 0, 12, 'allowmessege', 'basic', '1'),
(0, 0, 12, 'allowsort', 'basic', '1'),
(0, 0, 12, 'alloworder', 'basic', '1'),
(0, 0, 12, 'allowupload', 'basic', '1'),
(0, 0, 12, 'allowdownload', 'basic', '1'),
(0, 0, 12, 'allownum', 'basic', '50'),
(0, 0, 12, 'edittime', 'basic', '0'),
(0, 0, 12, 'postpertime', 'basic', '3'),
(0, 0, 12, 'searchtime', 'basic', '10'),
(0, 0, 12, 'signnum', 'basic', '200'),
(0, 0, 12, 'markable', 'basic', '1'),
(0, 0, 12, 'maxfavor', 'basic', '100'),
(0, 0, 12, 'markdt', 'basic', ''),
(0, 0, 12, 'atccheck', 'basic', '1'),
(0, 0, 12, 'anonymous', 'basic', '0'),
(0, 0, 12, 'leaveword', 'basic', '1'),
(0, 0, 12, 'ifmemo', 'basic', '1'),
(0, 0, 12, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"marklimit";N;s:9:"maxcredit";s:2:"20";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 12, 'atclog', 'basic', '1'),
(0, 0, 12, 'show', 'basic', '1'),
(0, 0, 12, 'modifyvote', 'basic', '1'),
(0, 0, 12, 'allowreward', 'basic', '1'),
(0, 0, 12, 'allowgoods', 'basic', '1'),
(0, 0, 12, 'allowdebate', 'basic', '1'),
(0, 0, 12, 'dig', 'basic', '1'),
(0, 0, 12, 'viewipfrom', 'basic', '0'),
(0, 0, 12, 'schtime', 'basic', '7776000'),
(0, 0, 12, 'msggroup', 'basic', '0'),
(0, 0, 12, 'viewvote', 'basic', '0'),
(0, 0, 12, 'maxgraft', 'basic', '5'),
(0, 0, 13, 'allowvisit', 'basic', '1'),
(0, 0, 13, 'maxmsg', 'basic', '50'),
(0, 0, 13, 'allowhide', 'basic', '0'),
(0, 0, 13, 'allowread', 'basic', '1'),
(0, 0, 13, 'allowportait', 'basic', '1'),
(0, 0, 13, 'upload', 'basic', '1'),
(0, 0, 13, 'allowrp', 'basic', '1'),
(0, 0, 13, 'allowhonor', 'basic', '1'),
(0, 0, 13, 'allowdelatc', 'basic', '1'),
(0, 0, 13, 'allowpost', 'basic', '1'),
(0, 0, 13, 'allownewvote', 'basic', '1'),
(0, 0, 13, 'allowvote', 'basic', '1'),
(0, 0, 13, 'allowactive', 'basic', '1'),
(0, 0, 13, 'htmlcode', 'basic', '0'),
(0, 0, 13, 'allowhidden', 'basic', '1'),
(0, 0, 13, 'allowencode', 'basic', '1'),
(0, 0, 13, 'allowsell', 'basic', '1'),
(0, 0, 13, 'allowsearch', 'basic', '2'),
(0, 0, 13, 'allowmember', 'basic', '1'),
(0, 0, 13, 'allowprofile', 'basic', '1'),
(0, 0, 13, 'allowreport', 'basic', '1'),
(0, 0, 13, 'allowmessege', 'basic', '1'),
(0, 0, 13, 'allowsort', 'basic', '1'),
(0, 0, 13, 'alloworder', 'basic', '1'),
(0, 0, 13, 'allowupload', 'basic', '1'),
(0, 0, 13, 'allowdownload', 'basic', '1'),
(0, 0, 13, 'allownum', 'basic', '50'),
(0, 0, 13, 'edittime', 'basic', '0'),
(0, 0, 13, 'postpertime', 'basic', '3'),
(0, 0, 13, 'searchtime', 'basic', '10'),
(0, 0, 13, 'signnum', 'basic', '200'),
(0, 0, 13, 'markable', 'basic', '1'),
(0, 0, 13, 'maxfavor', 'basic', '100'),
(0, 0, 13, 'markdt', 'basic', ''),
(0, 0, 13, 'atccheck', 'basic', '1'),
(0, 0, 13, 'anonymous', 'basic', '0'),
(0, 0, 13, 'leaveword', 'basic', '1'),
(0, 0, 13, 'ifmemo', 'basic', '1'),
(0, 0, 13, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:2:"50";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 13, 'atclog', 'basic', '1'),
(0, 0, 13, 'show', 'basic', '1'),
(0, 0, 13, 'modifyvote', 'basic', '1'),
(0, 0, 13, 'allowreward', 'basic', '1'),
(0, 0, 13, 'allowgoods', 'basic', '1'),
(0, 0, 13, 'allowdebate', 'basic', '1'),
(0, 0, 13, 'dig', 'basic', '1'),
(0, 0, 13, 'viewipfrom', 'basic', '0'),
(0, 0, 13, 'schtime', 'basic', '7776000'),
(0, 0, 13, 'msggroup', 'basic', '0'),
(0, 0, 13, 'viewvote', 'basic', '0'),
(0, 0, 13, 'maxgraft', 'basic', '5'),
(0, 0, 14, 'allowvisit', 'basic', '1'),
(0, 0, 14, 'maxmsg', 'basic', '50'),
(0, 0, 14, 'allowhide', 'basic', '0'),
(0, 0, 14, 'allowread', 'basic', '1'),
(0, 0, 14, 'allowportait', 'basic', '1'),
(0, 0, 14, 'upload', 'basic', '1'),
(0, 0, 14, 'allowrp', 'basic', '1'),
(0, 0, 14, 'allowhonor', 'basic', '1'),
(0, 0, 14, 'allowdelatc', 'basic', '1'),
(0, 0, 14, 'allowpost', 'basic', '1'),
(0, 0, 14, 'allownewvote', 'basic', '1'),
(0, 0, 14, 'allowvote', 'basic', '1'),
(0, 0, 14, 'allowactive', 'basic', '1'),
(0, 0, 14, 'htmlcode', 'basic', '0'),
(0, 0, 14, 'allowhidden', 'basic', '1'),
(0, 0, 14, 'allowencode', 'basic', '1'),
(0, 0, 14, 'allowsell', 'basic', '1'),
(0, 0, 14, 'allowsearch', 'basic', '2'),
(0, 0, 14, 'allowmember', 'basic', '1'),
(0, 0, 14, 'allowprofile', 'basic', '1'),
(0, 0, 14, 'allowreport', 'basic', '1'),
(0, 0, 14, 'allowmessege', 'basic', '1'),
(0, 0, 14, 'allowsort', 'basic', '1'),
(0, 0, 14, 'alloworder', 'basic', '1'),
(0, 0, 14, 'allowupload', 'basic', '1'),
(0, 0, 14, 'allowdownload', 'basic', '1'),
(0, 0, 14, 'allownum', 'basic', '80'),
(0, 0, 14, 'edittime', 'basic', '0'),
(0, 0, 14, 'postpertime', 'basic', '3'),
(0, 0, 14, 'searchtime', 'basic', '10'),
(0, 0, 14, 'signnum', 'basic', '200'),
(0, 0, 14, 'markable', 'basic', '1'),
(0, 0, 14, 'maxfavor', 'basic', '100'),
(0, 0, 14, 'markdt', 'basic', ''),
(0, 0, 14, 'atccheck', 'basic', '1'),
(0, 0, 14, 'anonymous', 'basic', '0'),
(0, 0, 14, 'leaveword', 'basic', '1'),
(0, 0, 14, 'ifmemo', 'basic', '1'),
(0, 0, 14, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"marklimit";N;s:9:"maxcredit";s:2:"80";s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"marklimit";N;s:9:"maxcredit";s:0:"";s:6:"markdt";s:1:"0";}}'),
(0, 0, 14, 'atclog', 'basic', '1'),
(0, 0, 14, 'show', 'basic', '1'),
(0, 0, 14, 'modifyvote', 'basic', '1'),
(0, 0, 14, 'allowreward', 'basic', '1'),
(0, 0, 14, 'allowgoods', 'basic', '1'),
(0, 0, 14, 'allowdebate', 'basic', '1'),
(0, 0, 14, 'dig', 'basic', '1'),
(0, 0, 14, 'viewipfrom', 'basic', '0'),
(0, 0, 14, 'schtime', 'basic', '7776000'),
(0, 0, 14, 'msggroup', 'basic', '0'),
(0, 0, 14, 'viewvote', 'basic', '0'),
(0, 0, 14, 'maxgraft', 'basic', '5'),
(0, 0, 15, 'allowvisit', 'basic', '1'),
(0, 0, 15, 'maxmsg', 'basic', '50'),
(0, 0, 15, 'allowhide', 'basic', '0'),
(0, 0, 15, 'allowread', 'basic', '1'),
(0, 0, 15, 'allowportait', 'basic', '1'),
(0, 0, 15, 'upload', 'basic', '1'),
(0, 0, 15, 'allowrp', 'basic', '1'),
(0, 0, 15, 'allowhonor', 'basic', '1'),
(0, 0, 15, 'allowdelatc', 'basic', '1'),
(0, 0, 15, 'allowpost', 'basic', '1'),
(0, 0, 15, 'allownewvote', 'basic', '1'),
(0, 0, 15, 'allowvote', 'basic', '1'),
(0, 0, 15, 'allowactive', 'basic', '1'),
(0, 0, 15, 'htmlcode', 'basic', '0'),
(0, 0, 15, 'allowhidden', 'basic', '1'),
(0, 0, 15, 'allowencode', 'basic', '1'),
(0, 0, 15, 'allowsell', 'basic', '1'),
(0, 0, 15, 'allowsearch', 'basic', '2'),
(0, 0, 15, 'allowmember', 'basic', '1'),
(0, 0, 15, 'allowprofile', 'basic', '1'),
(0, 0, 15, 'allowreport', 'basic', '1'),
(0, 0, 15, 'allowmessege', 'basic', '1'),
(0, 0, 15, 'allowsort', 'basic', '1'),
(0, 0, 15, 'alloworder', 'basic', '1'),
(0, 0, 15, 'allowupload', 'basic', '1'),
(0, 0, 15, 'allowdownload', 'basic', '1'),
(0, 0, 15, 'allownum', 'basic', '100'),
(0, 0, 15, 'edittime', 'basic', '0'),
(0, 0, 15, 'postpertime', 'basic', '1'),
(0, 0, 15, 'searchtime', 'basic', '10'),
(0, 0, 15, 'signnum', 'basic', '200'),
(0, 0, 15, 'markable', 'basic', '1'),
(0, 0, 15, 'maxfavor', 'basic', '100'),
(0, 0, 15, 'markdt', 'basic', ''),
(0, 0, 15, 'atccheck', 'basic', '1'),
(0, 0, 15, 'anonymous', 'basic', '0'),
(0, 0, 15, 'leaveword', 'basic', '1'),
(0, 0, 15, 'ifmemo', 'basic', '1'),
(0, 0, 15, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:3:"100";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 15, 'atclog', 'basic', '1'),
(0, 0, 15, 'show', 'basic', '1'),
(0, 0, 15, 'viewipfrom', 'basic', '1'),
(0, 0, 15, 'schtime', 'basic', '7776000'),
(0, 0, 15, 'msggroup', 'basic', '1'),
(0, 0, 15, 'modifyvote', 'basic', '1'),
(0, 0, 15, 'viewvote', 'basic', '0'),
(0, 0, 15, 'allowreward', 'basic', '1'),
(0, 0, 15, 'allowgoods', 'basic', '1'),
(0, 0, 15, 'allowdebate', 'basic', '1'),
(0, 0, 15, 'dig', 'basic', '1'),
(0, 0, 15, 'maxgraft', 'basic', '10'),
(0, 0, 16, 'allowvisit', 'basic', '1'),
(0, 0, 16, 'maxmsg', 'basic', '30'),
(0, 0, 16, 'allowhide', 'basic', '0'),
(0, 0, 16, 'allowread', 'basic', '1'),
(0, 0, 16, 'allowportait', 'basic', '1'),
(0, 0, 16, 'upload', 'basic', '1'),
(0, 0, 16, 'allowrp', 'basic', '1'),
(0, 0, 16, 'allowhonor', 'basic', '1'),
(0, 0, 16, 'allowdelatc', 'basic', '1'),
(0, 0, 16, 'allowpost', 'basic', '1'),
(0, 0, 16, 'allownewvote', 'basic', '1'),
(0, 0, 16, 'allowvote', 'basic', '1'),
(0, 0, 16, 'allowactive', 'basic', '1'),
(0, 0, 16, 'htmlcode', 'basic', '0'),
(0, 0, 16, 'allowhidden', 'basic', '1'),
(0, 0, 16, 'allowencode', 'basic', '1'),
(0, 0, 16, 'allowsell', 'basic', '1'),
(0, 0, 16, 'allowsearch', 'basic', '2'),
(0, 0, 16, 'allowmember', 'basic', '1'),
(0, 0, 16, 'allowprofile', 'basic', '1'),
(0, 0, 16, 'allowreport', 'basic', '1'),
(0, 0, 16, 'allowmessege', 'basic', '1'),
(0, 0, 16, 'allowsort', 'basic', '1'),
(0, 0, 16, 'alloworder', 'basic', '1'),
(0, 0, 16, 'allowupload', 'basic', '1'),
(0, 0, 16, 'allowdownload', 'basic', '1'),
(0, 0, 16, 'allownum', 'basic', '50'),
(0, 0, 16, 'edittime', 'basic', '0'),
(0, 0, 16, 'postpertime', 'basic', '3'),
(0, 0, 16, 'searchtime', 'basic', '10'),
(0, 0, 16, 'signnum', 'basic', '100'),
(0, 0, 16, 'show', 'basic', '1'),
(0, 0, 16, 'viewipfrom', 'basic', '0'),
(0, 0, 16, 'imgwidth', 'basic', ''),
(0, 0, 16, 'imgheight', 'basic', ''),
(0, 0, 16, 'fontsize', 'basic', ''),
(0, 0, 16, 'msggroup', 'basic', '0'),
(0, 0, 16, 'maxfavor', 'basic', '100'),
(0, 0, 16, 'viewvote', 'basic', '0'),
(0, 0, 16, 'atccheck', 'basic', '1'),
(0, 0, 16, 'markable', 'basic', '1'),
(0, 0, 16, 'postlimit', 'basic', ''),
(0, 0, 16, 'uploadtype', 'basic', ''),
(0, 0, 16, 'markdt', 'basic', ''),
(0, 0, 16, 'anonymous', 'basic', '0'),
(0, 0, 16, 'leaveword', 'basic', '1'),
(0, 0, 16, 'allowadmincp', 'system', '0'),
(0, 0, 16, 'delatc', 'systemforum', '0'),
(0, 0, 16, 'moveatc', 'systemforum', '0'),
(0, 0, 16, 'copyatc', 'systemforum', '0'),
(0, 0, 16, 'digestadmin', 'systemforum', '0'),
(0, 0, 16, 'lockadmin', 'systemforum', '0'),
(0, 0, 16, 'pushadmin', 'systemforum', '0'),
(0, 0, 16, 'coloradmin', 'systemforum', '0'),
(0, 0, 16, 'downadmin', 'systemforum', '0'),
(0, 0, 16, 'viewcheck', 'systemforum', '0'),
(0, 0, 16, 'viewclose', 'systemforum', '0'),
(0, 0, 16, 'delattach', 'systemforum', '0'),
(0, 0, 16, 'viewip', 'systemforum', '0'),
(0, 0, 16, 'banuser', 'systemforum', '0'),
(0, 0, 16, 'bantype', 'systemforum', '0'),
(0, 0, 16, 'banmax', 'systemforum', '0'),
(0, 0, 16, 'posthide', 'systemforum', '0'),
(0, 0, 16, 'sellhide', 'systemforum', '0'),
(0, 0, 16, 'encodehide', 'systemforum', '0'),
(0, 0, 16, 'anonyhide', 'systemforum', '0'),
(0, 0, 16, 'postpers', 'systemforum', '0'),
(0, 0, 16, 'replylock', 'systemforum', '0'),
(0, 0, 16, 'modother', 'systemforum', '0'),
(0, 0, 16, 'deltpcs', 'systemforum', '0'),
(0, 0, 16, 'topped', 'systemforum', '0'),
(0, 0, 16, 'tpctype', 'systemforum', '0'),
(0, 0, 16, 'tpccheck', 'systemforum', '0'),
(0, 0, 16, 'allowtime', 'systemforum', '0'),
(0, 0, 16, 'superright', 'system', '0'),
(0, 0, 16, 'ifmemo', 'basic', '1'),
(0, 0, 16, 'markset', 'basic', 'a:5:{s:5:"money";a:4:{s:9:"markctype";s:5:"money";s:9:"maxcredit";s:1:"5";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 16, 'atclog', 'basic', '1'),
(0, 0, 16, 'schtime', 'basic', '7776000'),
(0, 0, 16, 'maxsendmsg', 'basic', ''),
(0, 0, 16, 'pergroup', 'basic', 'member,special'),
(0, 0, 16, 'maxgraft', 'basic', '2'),
(0, 0, 16, 'pwdlimitime', 'basic', ''),
(0, 0, 16, 'maxcstyles', 'basic', ''),
(0, 0, 16, 'modifyvote', 'basic', '1'),
(0, 0, 16, 'allowreward', 'basic', '1'),
(0, 0, 16, 'allowgoods', 'basic', '1'),
(0, 0, 16, 'allowdebate', 'basic', '1'),
(0, 0, 16, 'media', 'basic', ''),
(0, 0, 16, 'dig', 'basic', '1'),
(0, 0, 17, 'allowvisit', 'basic', '1'),
(0, 0, 17, 'allowhide', 'basic', '0'),
(0, 0, 17, 'allowread', 'basic', '0'),
(0, 0, 17, 'allowsearch', 'basic', '0'),
(0, 0, 17, 'allowmember', 'basic', '0'),
(0, 0, 17, 'allowprofile', 'basic', '0'),
(0, 0, 17, 'atclog', 'basic', '0'),
(0, 0, 17, 'show', 'basic', '0'),
(0, 0, 17, 'allowreport', 'basic', '0'),
(0, 0, 17, 'upload', 'basic', '0'),
(0, 0, 17, 'allowportait', 'basic', '0'),
(0, 0, 17, 'allowhonor', 'basic', '0'),
(0, 0, 17, 'allowmessege', 'basic', '0'),
(0, 0, 17, 'allowsort', 'basic', '0'),
(0, 0, 17, 'alloworder', 'basic', '0'),
(0, 0, 17, 'viewipfrom', 'basic', '0'),
(0, 0, 17, 'schtime', 'basic', '7776000'),
(0, 0, 17, 'msggroup', 'basic', '0'),
(0, 0, 17, 'ifmemo', 'basic', '0'),
(0, 0, 17, 'allowpost', 'basic', '0'),
(0, 0, 17, 'allowrp', 'basic', '0'),
(0, 0, 17, 'allownewvote', 'basic', '0'),
(0, 0, 17, 'modifyvote', 'basic', '0'),
(0, 0, 17, 'allowvote', 'basic', '0'),
(0, 0, 17, 'viewvote', 'basic', '0'),
(0, 0, 17, 'allowactive', 'basic', '0'),
(0, 0, 17, 'allowreward', 'basic', '0'),
(0, 0, 17, 'allowgoods', 'basic', '0'),
(0, 0, 17, 'allowdebate', 'basic', '0'),
(0, 0, 17, 'htmlcode', 'basic', '0'),
(0, 0, 17, 'allowhidden', 'basic', '0'),
(0, 0, 17, 'allowsell', 'basic', '0'),
(0, 0, 17, 'allowencode', 'basic', '0'),
(0, 0, 17, 'anonymous', 'basic', '0'),
(0, 0, 17, 'dig', 'basic', '0'),
(0, 0, 17, 'leaveword', 'basic', '0'),
(0, 0, 17, 'allowdelatc', 'basic', '0'),
(0, 0, 17, 'atccheck', 'basic', '0'),
(0, 0, 17, 'markable', 'basic', '0'),
(0, 0, 17, 'markset', 'basic', 'a:5:{s:5:"money";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:4:"rvrc";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:6:"credit";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}s:8:"currency";a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}i:1;a:3:{s:9:"maxcredit";s:0:"";s:9:"marklimit";N;s:6:"markdt";s:1:"0";}}'),
(0, 0, 17, 'allowupload', 'basic', '0'),
(0, 0, 17, 'allowdownload', 'basic', '0'),
(0, 0, 17, 'allowadmincp', 'system', '0'),
(0, 0, 17, 'superright', 'system', '1'),
(0, 0, 17, 'posthide', 'systemforum', '0'),
(0, 0, 17, 'sellhide', 'systemforum', '0'),
(0, 0, 17, 'encodehide', 'systemforum', '0'),
(0, 0, 17, 'anonyhide', 'systemforum', '0'),
(0, 0, 17, 'postpers', 'systemforum', '1'),
(0, 0, 17, 'replylock', 'systemforum', '0'),
(0, 0, 17, 'viewip', 'systemforum', '0'),
(0, 0, 17, 'topped', 'systemforum', '0'),
(0, 0, 17, 'digestadmin', 'systemforum', '0'),
(0, 0, 17, 'lockadmin', 'systemforum', '0'),
(0, 0, 17, 'pushadmin', 'systemforum', '0'),
(0, 0, 17, 'coloradmin', 'systemforum', '0'),
(0, 0, 17, 'downadmin', 'systemforum', '0'),
(0, 0, 17, 'tpctype', 'systemforum', '0'),
(0, 0, 17, 'tpccheck', 'systemforum', '0'),
(0, 0, 17, 'delatc', 'systemforum', '0'),
(0, 0, 17, 'moveatc', 'systemforum', '0'),
(0, 0, 17, 'copyatc', 'systemforum', '0'),
(0, 0, 17, 'modother', 'systemforum', '0'),
(0, 0, 17, 'deltpcs', 'systemforum', '0'),
(0, 0, 17, 'viewcheck', 'systemforum', '0'),
(0, 0, 17, 'viewclose', 'systemforum', '0'),
(0, 0, 17, 'delattach', 'systemforum', '0'),
(0, 0, 17, 'shield', 'systemforum', '0'),
(0, 0, 17, 'unite', 'systemforum', '0'),
(0, 0, 17, 'remind', 'systemforum', '0'),
(0, 0, 17, 'pingcp', 'systemforum', '0'),
(0, 0, 17, 'inspect', 'systemforum', '0'),
(0, 0, 17, 'allowtime', 'systemforum', '0'),
(0, 0, 17, 'banuser', 'systemforum', '0'),
(0, 0, 17, 'bantype', 'systemforum', '0'),
(0, 0, 17, 'areapush', 'systemforum', '1'),
(0, 0, 3, 'overprint', 'systemforum', '1'),
(0, 0, 3, 'replayorder', 'systemforum', '1'),
(0, 0, 3, 'replaytopped', 'systemforum', '1'),
(0, 0, 3, 'userbinding', 'basic', '1'),
(0, 0, 4, 'overprint', 'systemforum', '1'),
(0, 0, 4, 'replayorder', 'systemforum', '1'),
(0, 0, 4, 'replaytopped', 'systemforum', '1'),
(0, 0, 4, 'userbinding', 'basic', '1'),
(0, 0, 17, 'overprint', 'systemforum', '1'),
(0, 0, 17, 'replayorder', 'systemforum', '1'),
(0, 0, 17, 'replaytopped', 'systemforum', '1'),
(0, 0, 17, 'userbinding', 'basic', '1'),
(0, 0, 5, 'overprint', 'systemforum', '1'),
(0, 0, 5, 'replayorder', 'systemforum', '1'),
(0, 0, 5, 'replaytopped', 'systemforum', '1'),
(0, 0, 5, 'userbinding', 'basic', '1'),
(0, 0, 8, 'maxsendmsg', 'basic', '0'),
(0, 0, 8, 'multiopen', 'basic', '0'),
(0, 0, 8, 'userbinding', 'basic', '0'),
(0, 0, 8, 'allowmodelid', 'basic', '0'),
(0, 0, 8, 'allowcreate', 'basic', '1'),
(0, 0, 9, 'maxsendmsg', 'basic', '0'),
(0, 0, 9, 'multiopen', 'basic', '0'),
(0, 0, 9, 'userbinding', 'basic', '0'),
(0, 0, 9, 'allowmodelid', 'basic', '0'),
(0, 0, 9, 'allowcreate', 'basic', '5'),
(0, 0, 11, 'maxsendmsg', 'basic', '0'),
(0, 0, 11, 'multiopen', 'basic', '0'),
(0, 0, 11, 'userbinding', 'basic', '0'),
(0, 0, 11, 'allowmodelid', 'basic', '0'),
(0, 0, 11, 'allowcreate', 'basic', '5'),
(0, 0, 10, 'maxsendmsg', 'basic', '0'),
(0, 0, 10, 'multiopen', 'basic', '0'),
(0, 0, 10, 'userbinding', 'basic', '0'),
(0, 0, 10, 'allowmodelid', 'basic', '0'),
(0, 0, 10, 'allowcreate', 'basic', '5'),
(0, 0, 12, 'maxsendmsg', 'basic', '0'),
(0, 0, 12, 'multiopen', 'basic', '0'),
(0, 0, 12, 'userbinding', 'basic', '0'),
(0, 0, 12, 'allowmodelid', 'basic', '0'),
(0, 0, 12, 'allowcreate', 'basic', '10'),
(0, 0, 13, 'allowcreate', 'basic', '10'),
(0, 0, 14, 'maxsendmsg', 'basic', '0'),
(0, 0, 14, 'multiopen', 'basic', '0'),
(0, 0, 14, 'userbinding', 'basic', '0'),
(0, 0, 14, 'allowmodelid', 'basic', '0'),
(0, 0, 14, 'allowcreate', 'basic', '20'),
(0, 0, 15, 'allowcreate', 'basic', '20'),
(0, 0, 3, 'tcanedit', 'systemforum', '3,4,5');
INSERT INTO `pw_permission` (`uid`, `fid`, `gid`, `rkey`, `type`, `rvalue`) VALUES
(0, 0, 4, 'tcanedit', 'systemforum', '3,4,5'),
(0, 0, 5, 'tcanedit', 'systemforum', '5'),
(0, 0, 1, 'allowmusic', 'basic', '1'),
(0, 0, 1, 'allowvideo', 'basic', '1'),
(0, 0, 2, 'allowmusic', 'basic', '0'),
(0, 0, 2, 'allowvideo', 'basic', '0'),
(0, 0, 3, 'allowmusic', 'basic', '1'),
(0, 0, 3, 'allowvideo', 'basic', '1'),
(0, 0, 4, 'allowmusic', 'basic', '1'),
(0, 0, 4, 'allowvideo', 'basic', '1'),
(0, 0, 5, 'allowmusic', 'basic', '1'),
(0, 0, 5, 'allowvideo', 'basic', '1'),
(0, 0, 6, 'allowmusic', 'basic', '0'),
(0, 0, 6, 'allowvideo', 'basic', '0'),
(0, 0, 7, 'allowmusic', 'basic', '0'),
(0, 0, 7, 'allowvideo', 'basic', '0'),
(0, 0, 8, 'allowmusic', 'basic', '1'),
(0, 0, 8, 'allowvideo', 'basic', '1'),
(0, 0, 9, 'allowmusic', 'basic', '1'),
(0, 0, 9, 'allowvideo', 'basic', '1'),
(0, 0, 10, 'allowmusic', 'basic', '1'),
(0, 0, 10, 'allowvideo', 'basic', '1'),
(0, 0, 11, 'allowmusic', 'basic', '1'),
(0, 0, 11, 'allowvideo', 'basic', '1'),
(0, 0, 12, 'allowmusic', 'basic', '1'),
(0, 0, 12, 'allowvideo', 'basic', '1'),
(0, 0, 13, 'allowmusic', 'basic', '1'),
(0, 0, 13, 'allowvideo', 'basic', '1'),
(0, 0, 14, 'allowmusic', 'basic', '1'),
(0, 0, 14, 'allowvideo', 'basic', '1'),
(0, 0, 15, 'allowmusic', 'basic', '1'),
(0, 0, 15, 'allowvideo', 'basic', '1'),
(0, 0, 16, 'allowmusic', 'basic', '1'),
(0, 0, 16, 'allowvideo', 'basic', '1'),
(0, 0, 17, 'allowmusic', 'basic', '1'),
(0, 0, 17, 'allowvideo', 'basic', '1'),
(0, 0, 3, 'allowat', 'basic', '1'),
(0, 0, 3, 'allowreplyreward', 'basic', '1'),
(0, 0, 3, 'allowremotepic', 'basic', '1'),
(0, 0, 3, 'atnum', 'basic', '10'),
(0, 0, 3, 'robbuild', 'basic', '1'),
(0, 0, 4, 'allowat', 'basic', '1'),
(0, 0, 4, 'allowreplyreward', 'basic', '1'),
(0, 0, 4, 'allowremotepic', 'basic', '1'),
(0, 0, 4, 'atnum', 'basic', '10'),
(0, 0, 4, 'robbuild', 'basic', '1'),
(0, 0, 5, 'allowat', 'basic', '1'),
(0, 0, 5, 'allowreplyreward', 'basic', '1'),
(0, 0, 5, 'allowremotepic', 'basic', '1'),
(0, 0, 5, 'atnum', 'basic', '10'),
(0, 0, 5, 'robbuild', 'basic', '1'),
(0, 0, 8, 'allowat', 'basic', '1'),
(0, 0, 8, 'allowreplyreward', 'basic', '1'),
(0, 0, 8, 'allowremotepic', 'basic', '1'),
(0, 0, 8, 'atnum', 'basic', '3'),
(0, 0, 9, 'allowat', 'basic', '1'),
(0, 0, 9, 'allowreplyreward', 'basic', '1'),
(0, 0, 9, 'allowremotepic', 'basic', '1'),
(0, 0, 9, 'atnum', 'basic', '3'),
(0, 0, 10, 'allowat', 'basic', '1'),
(0, 0, 10, 'allowreplyreward', 'basic', '1'),
(0, 0, 10, 'allowremotepic', 'basic', '1'),
(0, 0, 10, 'atnum', 'basic', '3'),
(0, 0, 11, 'allowat', 'basic', '1'),
(0, 0, 11, 'allowreplyreward', 'basic', '1'),
(0, 0, 11, 'allowremotepic', 'basic', '1'),
(0, 0, 11, 'atnum', 'basic', '3'),
(0, 0, 12, 'allowat', 'basic', '1'),
(0, 0, 12, 'allowreplyreward', 'basic', '1'),
(0, 0, 12, 'allowremotepic', 'basic', '1'),
(0, 0, 12, 'atnum', 'basic', '3'),
(0, 0, 13, 'allowat', 'basic', '1'),
(0, 0, 13, 'allowreplyreward', 'basic', '1'),
(0, 0, 13, 'allowremotepic', 'basic', '1'),
(0, 0, 13, 'atnum', 'basic', '3'),
(0, 0, 14, 'allowat', 'basic', '1'),
(0, 0, 14, 'allowreplyreward', 'basic', '1'),
(0, 0, 14, 'allowremotepic', 'basic', '1'),
(0, 0, 14, 'atnum', 'basic', '3'),
(0, 0, 15, 'allowat', 'basic', '1'),
(0, 0, 15, 'allowreplyreward', 'basic', '1'),
(0, 0, 15, 'allowremotepic', 'basic', '1'),
(0, 0, 15, 'atnum', 'basic', '3'),
(0, 0, 16, 'allowat', 'basic', '1'),
(0, 0, 16, 'allowreplyreward', 'basic', '1'),
(0, 0, 16, 'allowremotepic', 'basic', '1'),
(0, 0, 16, 'atnum', 'basic', '10'),
(0, 0, 17, 'allowat', 'basic', '1'),
(0, 0, 17, 'allowreplyreward', 'basic', '1'),
(0, 0, 17, 'allowremotepic', 'basic', '1'),
(0, 0, 17, 'atnum', 'basic', '10'),
(0, 0, 17, 'robbuild', 'basic', '1');

-- --------------------------------------------------------

--
-- 表的结构 `pw_pidtmp`
--

CREATE TABLE `pw_pidtmp` (
  `pid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pinglog`
--

CREATE TABLE `pw_pinglog` (
  `id` mediumint(8) NOT NULL,
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(15) NOT NULL DEFAULT '',
  `point` varchar(10) NOT NULL DEFAULT '',
  `pinger` varchar(15) NOT NULL DEFAULT '',
  `record` mediumtext NOT NULL,
  `pingdate` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_plan`
--

CREATE TABLE `pw_plan` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `subject` varchar(80) NOT NULL DEFAULT '',
  `month` varchar(2) NOT NULL DEFAULT '',
  `week` varchar(1) NOT NULL DEFAULT '',
  `day` varchar(2) NOT NULL DEFAULT '',
  `hour` varchar(80) NOT NULL DEFAULT '',
  `usetime` int(10) NOT NULL DEFAULT '0',
  `nexttime` int(10) NOT NULL DEFAULT '0',
  `ifsave` tinyint(3) NOT NULL DEFAULT '0',
  `ifopen` tinyint(3) NOT NULL DEFAULT '0',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_plan`
--

INSERT INTO `pw_plan` (`id`, `subject`, `month`, `week`, `day`, `hour`, `usetime`, `nexttime`, `ifsave`, `ifopen`, `filename`, `config`) VALUES
(1, '自动解除禁言', '*', '*', '20', '30', 0, 0, 0, 0, 'freeban', ''),
(2, '发送生日短消息', '*', '*', '0', '*', 0, 0, 1, 0, 'birthday', ''),
(3, '悬赏帖到期通知', '*', '1', '12', '30', 0, 0, 1, 0, 'rewardmsg', ''),
(4, '管理团队工资发放', '15', '*', '2', '*', 0, 0, 0, 0, 'team', 'a:3:{s:10:"credittype";s:6:"credit";s:6:"credit";a:3:{i:3;s:3:"100";i:4;s:2:"60";i:5;s:2:"50";}s:6:"groups";s:5:"3,4,5";}'),
(5, '勋章自动回收', '*', '*', '*', '30', 1471073417, 1471077000, 0, 1, 'medal', ''),
(6, '限期头衔自动回收', '*', '*', '22', '*', 0, 0, 0, 0, 'extragroup', ''),
(7, '广告到期提醒', '*', '*', '9', '*', 1471073275, 1471136400, 0, 1, 'alteradvert', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_polls`
--

CREATE TABLE `pw_polls` (
  `pollid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `voteopts` mediumtext NOT NULL,
  `modifiable` tinyint(3) NOT NULL DEFAULT '0',
  `previewable` tinyint(3) NOT NULL DEFAULT '0',
  `multiple` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `mostvotes` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `voters` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `timelimit` int(10) NOT NULL DEFAULT '0',
  `leastvotes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regdatelimit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `creditlimit` varchar(255) NOT NULL DEFAULT '',
  `postnumlimit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_portalpage`
--

CREATE TABLE `pw_portalpage` (
  `id` int(10) UNSIGNED NOT NULL,
  `sign` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_postcate`
--

CREATE TABLE `pw_postcate` (
  `pcid` tinyint(3) UNSIGNED NOT NULL,
  `sign` enum('basic','buy') NOT NULL DEFAULT 'basic',
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `viewright` varchar(255) NOT NULL DEFAULT '',
  `adminright` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_postcate`
--

INSERT INTO `pw_postcate` (`pcid`, `sign`, `name`, `ifable`, `vieworder`, `viewright`, `adminright`) VALUES
(1, 'buy', '团购', 1, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_posts`
--

CREATE TABLE `pw_posts` (
  `pid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `aid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon` tinyint(2) NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT '0',
  `buy` text NOT NULL,
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL DEFAULT '',
  `leaveword` varchar(255) NOT NULL DEFAULT '',
  `ipfrom` varchar(255) NOT NULL DEFAULT '',
  `ifconvert` tinyint(3) NOT NULL DEFAULT '1',
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT '1',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `ifreward` tinyint(3) NOT NULL DEFAULT '0',
  `ifshield` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `anonymous` tinyint(3) NOT NULL DEFAULT '0',
  `ifhide` tinyint(3) NOT NULL DEFAULT '0',
  `frommob` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_postsfloor`
--

CREATE TABLE `pw_postsfloor` (
  `tid` int(10) NOT NULL,
  `floor` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_poststopped`
--

CREATE TABLE `pw_poststopped` (
  `fid` smallint(6) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL,
  `floor` int(10) UNSIGNED NOT NULL,
  `uptime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `overtime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_privacy`
--

CREATE TABLE `pw_privacy` (
  `uid` mediumint(8) NOT NULL,
  `ptype` varchar(15) NOT NULL,
  `pkey` varchar(15) NOT NULL,
  `value` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_proclock`
--

CREATE TABLE `pw_proclock` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `action` varchar(50) NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pushdata`
--

CREATE TABLE `pw_pushdata` (
  `id` int(10) UNSIGNED NOT NULL,
  `invokepieceid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `editor` varchar(15) NOT NULL DEFAULT '',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `titlecss` varchar(255) NOT NULL DEFAULT '',
  `pushtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifverify` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `ifbusiness` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_pushpic`
--

CREATE TABLE `pw_pushpic` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `invokepieceid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `creator` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_rate`
--

CREATE TABLE `pw_rate` (
  `objectid` int(10) NOT NULL DEFAULT '0',
  `optionid` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(6) NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_rateconfig`
--

CREATE TABLE `pw_rateconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(12) NOT NULL DEFAULT '',
  `icon` varchar(75) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `typeid` tinyint(1) NOT NULL DEFAULT '0',
  `creditset` tinyint(1) NOT NULL DEFAULT '0',
  `voternum` tinyint(1) NOT NULL DEFAULT '0',
  `authornum` tinyint(1) NOT NULL DEFAULT '0',
  `creator` varchar(20) DEFAULT '',
  `created_at` int(10) DEFAULT '0',
  `updater` varchar(20) DEFAULT '',
  `update_at` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_rateconfig`
--

INSERT INTO `pw_rateconfig` (`id`, `title`, `icon`, `isopen`, `isdefault`, `typeid`, `creditset`, `voternum`, `authornum`, `creator`, `created_at`, `updater`, `update_at`) VALUES
(1, '精彩', '01.gif', 1, 1, 1, -1, 1, 1, 'system', 1251030975, 'admin', 1252394328),
(2, '感动', '02.gif', 1, 1, 1, -1, 1, 1, 'system', 1251030975, 'admin', 1252394328),
(3, '搞笑', '03.gif', 1, 1, 1, -1, 1, 1, 'system', 1251030975, 'admin', 1252394328),
(4, '开心', '04.gif', 1, 1, 1, -1, 1, 1, 'system', 1251030975, 'admin', 1252394328),
(5, '愤怒', '05.gif', 1, 1, 1, -1, 1, 1, 'system', 1251030975, 'admin', 1252394328),
(6, '无聊', '06.gif', 1, 1, 1, -1, 1, 0, 'system', 1251030975, 'admin', 1252394328),
(7, '灌水', '07.gif', 1, 1, 1, -1, 1, -2, 'system', 1251030975, 'admin', 1252394328),
(8, '精彩', '01.gif', 1, 1, 2, -1, 1, 1, 'system', 1251030975, 'admin', 1252394398),
(9, '感动', '02.gif', 1, 1, 2, -1, 1, 1, 'system', 1251030975, 'admin', 1252394398),
(10, '搞笑', '03.gif', 1, 1, 2, -1, 1, 1, 'system', 1251030975, 'admin', 1252394398),
(11, '开心', '04.gif', 1, 1, 2, -1, 1, 1, 'system', 1251030975, 'admin', 1252394398),
(12, '愤怒', '05.gif', 1, 1, 2, -1, 1, 1, 'system', 1251030975, 'admin', 1252394398),
(13, '无聊', '06.gif', 1, 1, 2, -1, 1, 0, 'system', 1251030975, 'admin', 1252394398),
(14, '灌水', '07.gif', 1, 1, 2, -1, 1, -1, 'system', 1251030975, 'admin', 1252394398),
(15, '精彩', '01.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(16, '唯美', '02.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(17, '有趣', '03.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(18, '震惊', '04.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(19, '原创', '05.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(20, '专业', '06.gif', 1, 1, 3, -1, 1, 1, 'system', 1251030975, 'admin', 1252394438),
(21, '无聊', '07.gif', 1, 1, 3, -1, 1, 0, 'system', 1251030975, 'admin', 1252394438),
(22, '劣质', '08.gif', 1, 1, 3, -1, 1, -2, 'system', 1251030975, 'admin', 1252394438);

-- --------------------------------------------------------

--
-- 表的结构 `pw_rateresult`
--

CREATE TABLE `pw_rateresult` (
  `id` int(10) UNSIGNED NOT NULL,
  `objectid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `optionid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` tinyint(3) NOT NULL DEFAULT '0',
  `num` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_recycle`
--

CREATE TABLE `pw_recycle` (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_replyreward`
--

CREATE TABLE `pw_replyreward` (
  `tid` int(10) UNSIGNED NOT NULL,
  `credittype` varchar(30) NOT NULL DEFAULT '',
  `creditnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rewardtimes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `repeattimes` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `chance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lefttimes` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_replyrewardrecord`
--

CREATE TABLE `pw_replyrewardrecord` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `credittype` varchar(30) NOT NULL DEFAULT '',
  `creditnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rewardtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_report`
--

CREATE TABLE `pw_report` (
  `id` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_reward`
--

CREATE TABLE `pw_reward` (
  `tid` int(10) UNSIGNED NOT NULL,
  `cbtype` varchar(20) NOT NULL DEFAULT '',
  `catype` varchar(20) NOT NULL DEFAULT '',
  `cbval` int(10) NOT NULL DEFAULT '0',
  `caval` int(10) NOT NULL DEFAULT '0',
  `timelimit` int(10) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `pid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_robbuild`
--

CREATE TABLE `pw_robbuild` (
  `tid` int(10) UNSIGNED NOT NULL,
  `authorid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endbuild` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `awardbuilds` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_robbuildfloor`
--

CREATE TABLE `pw_robbuildfloor` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_schcache`
--

CREATE TABLE `pw_schcache` (
  `sid` mediumint(8) UNSIGNED NOT NULL,
  `sorderby` varchar(13) NOT NULL DEFAULT '',
  `schline` varchar(32) NOT NULL DEFAULT '',
  `schtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `schedid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_school`
--

CREATE TABLE `pw_school` (
  `schoolid` int(11) UNSIGNED NOT NULL,
  `schoolname` varchar(32) NOT NULL DEFAULT '',
  `areaid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_school`
--

INSERT INTO `pw_school` (`schoolid`, `schoolname`, `areaid`, `type`) VALUES
(1001, '清华大学', 110000, 3),
(1002, '北京大学', 110000, 3),
(1003, '中国人民大学', 110000, 3),
(1004, '北京航空航天大学', 110000, 3),
(1005, '北京邮电大学', 110000, 3),
(1006, '北京师范大学', 110000, 3),
(1007, '中国传媒大学', 110000, 3),
(1008, '北京语言大学', 110000, 3),
(1009, '北京科技大学', 110000, 3),
(1010, '中国农业大学', 110000, 3),
(1011, '北京理工大学', 110000, 3),
(1012, '北京林业大学', 110000, 3),
(1013, '北京交通大学', 110000, 3),
(1014, '中国矿业大学（北京）', 110000, 3),
(1015, '北京信息科技大学', 110000, 3),
(1016, '北京工业大学', 110000, 3),
(1017, '北京化工大学', 110000, 3),
(1018, '中国政法大学', 110000, 3),
(1019, '对外经贸大学', 110000, 3),
(1020, '中央民族大学', 110000, 3),
(1021, '中国地质大学（北京）', 110000, 3),
(1022, '中科院', 110000, 3),
(1023, '北京中医药大学', 110000, 3),
(1024, '首都经济贸易大学', 110000, 3),
(1025, '中央财经大学', 110000, 3),
(1026, '北方工业大学', 110000, 3),
(1027, '中国石油大学（北京）', 110000, 3),
(1028, '外交学院', 110000, 3),
(1029, '首都师范大学', 110000, 3),
(1030, '中央戏剧学院', 110000, 3),
(1031, '中国青年政治学院', 110000, 3),
(1032, '北京外国语大学', 110000, 3),
(1033, '华北电力大学（北京）', 110000, 3),
(1034, '中国人民公安大学', 110000, 3),
(1035, '中国协和医科大学', 110000, 3),
(1036, '北京体育大学', 110000, 3),
(1037, '北京工商大学', 110000, 3),
(1038, '北京联合大学', 110000, 3),
(1039, '首都医科大学', 110000, 3),
(1040, '国际关系学院', 110000, 3),
(1041, '中央美术学院', 110000, 3),
(1042, '北京电子科技学院', 110000, 3),
(1043, '中国劳动关系学院', 110000, 3),
(1044, '中华女子学院', 110000, 3),
(1045, '北京建筑工程学院', 110000, 3),
(1046, '北京印刷学院', 110000, 3),
(1047, '北京石油化工学院', 110000, 3),
(1048, '首钢工学院', 110000, 3),
(1049, '北京农学院', 110000, 3),
(1050, '首都体育学院', 110000, 3),
(1051, '北京第二外国语学院', 110000, 3),
(1052, '北京物资学院', 110000, 3),
(1053, '北京警察学院', 110000, 3),
(1054, '中央音乐学院', 110000, 3),
(1055, '中国戏曲学院', 110000, 3),
(1056, '北京舞蹈学院', 110000, 3),
(1057, '北京城市学院', 110000, 3),
(1058, '北京电影学院', 110000, 3),
(1059, '北京服装学院', 110000, 3),
(1060, '北京工商大学嘉华学院', 110000, 3),
(1061, '首都师范大学科德学院', 110000, 3),
(1062, '北京工业大学耿丹学院', 110000, 3),
(1063, '北京化工大学北方学院', 110000, 3),
(1064, '北京联合大学广告学院', 110000, 3),
(1065, '北京邮电大学世纪学院', 110000, 3),
(1066, '北京大学医学部', 110000, 3),
(1067, '北京政法职业学院', 110000, 3),
(1068, '北京信息职业技术学院', 110000, 3),
(1069, '北京现代职业技术学院', 110000, 3),
(1070, '北京现代音乐研修学院', 110000, 3),
(1071, '北京戏曲艺术职业学院', 110000, 3),
(1072, '北京锡华国际经贸职业学院', 110000, 3),
(1073, '北京盛基艺术学校', 110000, 3),
(1074, '北京培黎职业学院', 110000, 3),
(1075, '北京农业职业学院', 110000, 3),
(1076, '北京科技职业学院', 110000, 3),
(1077, '北京科技经营管理学院', 110000, 3),
(1078, '北京经贸职业学院', 110000, 3),
(1079, '北京经济技术职业学院', 110000, 3),
(1080, '北京京北职业技术学院', 110000, 3),
(1081, '北京交通职业技术学院', 110000, 3),
(1082, '北京吉利大学', 110000, 3),
(1083, '北京汇佳职业学院', 110000, 3),
(1084, '北京工业职业技术学院', 110000, 3),
(1085, '北京工商管理专修学院', 110000, 3),
(1086, '北京电子科技职业学院', 110000, 3),
(1087, '北京财贸职业学院', 110000, 3),
(1088, '北京北大方正软件技术学院', 110000, 3),
(1089, '北大资源美术学院', 110000, 3),
(1090, '北京人文大学', 110000, 3),
(1091, '北京高等秘书学院', 110000, 3),
(1092, '北京应用技术大学', 110000, 3),
(1093, '中国防卫科技学院', 110000, 3),
(1094, '中国音乐学院', 110000, 3),
(1095, '中国信息大学', 110000, 3),
(1096, '北京青年政治学院', 110000, 3),
(1097, '北京财经专修学院', 110000, 3),
(1098, '北京经济管理职业学院', 110000, 3),
(1099, '北京美国英语语言学院', 110000, 3),
(1100, '中国管理软件学院', 110000, 3),
(1101, '财政部财政科学研究所', 110000, 3),
(1102, '北大资源学院', 110000, 3),
(1103, '北京现代管理大学', 110000, 3),
(1104, '网络销售大学', 110000, 3),
(1105, '朝阳二外', 110000, 3),
(2001, '复旦大学', 310000, 3),
(2002, '上海交通大学', 310000, 3),
(2003, '同济大学', 310000, 3),
(2004, '华东师大', 310000, 3),
(2005, '上海财经', 310000, 3),
(2006, '华东理工', 310000, 3),
(2007, '上海商学院', 310000, 3),
(2008, '东华大学', 310000, 3),
(2009, '上海理工', 310000, 3),
(2010, '上海大学', 310000, 3),
(2011, '上外', 310000, 3),
(2012, '上海海事', 310000, 3),
(2013, '上海工程', 310000, 3),
(2014, '上海水产', 310000, 3),
(2015, '上海中医药', 310000, 3),
(2016, '上海师大', 310000, 3),
(2017, '建桥学院', 310000, 3),
(2018, '上海政法', 310000, 3),
(2019, '上海电机', 310000, 3),
(2020, '上海二工大', 310000, 3),
(2021, '上海应用技术学院', 310000, 3),
(2022, '上海电力', 310000, 3),
(2023, '上海外贸', 310000, 3),
(2024, '上海金融', 310000, 3),
(2025, '上海立信会计学院', 310000, 3),
(2026, '上海体院', 310000, 3),
(2027, '上海音乐学院', 310000, 3),
(2028, '上戏', 310000, 3),
(2029, '杉达学院', 310000, 3),
(2030, '华东政法大学', 310000, 3),
(2031, '上外贤达经济人文学院', 310000, 3),
(2032, '同济大学同科学院', 310000, 3),
(2033, '上海师范大学天华学院', 310000, 3),
(2034, '上海东方文化职业学院', 310000, 3),
(2035, '上海工商学院', 310000, 3),
(2036, '复旦大学上海视觉艺术学院', 310000, 3),
(2037, '复旦大学上海医学院', 310000, 3),
(2038, '复旦大学太平洋金融学院', 310000, 3),
(2039, '上海邦德职业技术学院', 310000, 3),
(2040, '上海诚信学院', 310000, 3),
(2041, '上海城市管理职业技术学院', 310000, 3),
(2042, '上海出版印刷高等专科学校', 310000, 3),
(2043, '上海电影艺术职业学院', 310000, 3),
(2044, '上海电子信息职业技术学院', 310000, 3),
(2045, '上海东海职业技术学院', 310000, 3),
(2046, '上海工会管理职业学院', 310000, 3),
(2047, '上海工商外国语学院', 310000, 3),
(2048, '上海工艺美术职业学院', 310000, 3),
(2049, '上海公安高等专科学校', 310000, 3),
(2050, '上海海关学院', 310000, 3),
(2051, '上海海事职业技术学院', 310000, 3),
(2052, '上海济光职业技术学院', 310000, 3),
(2053, '上海建峰职业技术学院', 310000, 3),
(2054, '上海交通职业技术学院', 310000, 3),
(2055, '上海科学技术职业学院', 310000, 3),
(2056, '上海立达职业技术学院', 310000, 3),
(2057, '上海旅游高等专科学校', 310000, 3),
(2058, '上海民远职业技术学院', 310000, 3),
(2059, '上海农林职业技术学院', 310000, 3),
(2060, '上海欧华职业技术学院', 310000, 3),
(2061, '上海思博职业技术学院', 310000, 3),
(2062, '上海托普信息技术学院', 310000, 3),
(2063, '上海新侨职业技术学院', 310000, 3),
(2064, '上海行健职业学院', 310000, 3),
(2065, '上海医疗器械高等专科学校', 310000, 3),
(2066, '上海医药高等专科学校', 310000, 3),
(2067, '上海震旦职业学院', 310000, 3),
(2068, '上海中华职业技术学院', 310000, 3),
(2069, '上海中侨职业技术学院', 310000, 3),
(2070, '上海纺织工业职工大学', 310000, 3),
(3001, '南开大学', 120000, 3),
(3002, '天津大学', 120000, 3),
(3003, '河北工大', 120000, 3),
(3004, '天津师大', 120000, 3),
(3005, '天津工大', 120000, 3),
(3006, '天津科大', 120000, 3),
(3007, '天津理工', 120000, 3),
(3008, '天津医大', 120000, 3),
(3009, '天津中医药', 120000, 3),
(3010, '天津财经', 120000, 3),
(3011, '中国民航大学', 120000, 3),
(3012, '天津城市建设学院', 120000, 3),
(3013, '天津农院', 120000, 3),
(3014, '天津工程师范', 120000, 3),
(3015, '天外', 120000, 3),
(3016, '天津商业大学', 120000, 3),
(3017, '天津体院', 120000, 3),
(3018, '天津音乐学院', 120000, 3),
(3019, '天津美院', 120000, 3),
(3020, '民办天狮职业技术学院', 120000, 3),
(3021, '天津滨海职业技术学院', 120000, 3),
(3022, '天津渤海职业技术学院', 120000, 3),
(3023, '天津城市建设管理职业技术学院', 120000, 3),
(3024, '天津城市职业学院', 120000, 3),
(3025, '天津电子信息职业技术学院', 120000, 3),
(3026, '天津对外经济贸易职业学院', 120000, 3),
(3027, '天津工程职业技术学院', 120000, 3),
(3028, '天津工商职业技术学院', 120000, 3),
(3029, '天津工业职业技术学院', 120000, 3),
(3030, '天津工艺美术职业学院', 120000, 3),
(3031, '天津公安警官职业学院', 120000, 3),
(3032, '天津海运职业学院', 120000, 3),
(3033, '天津机电职业技术学院', 120000, 3),
(3034, '天津交通职业学院', 120000, 3),
(3035, '天津开发区职业技术学院', 120000, 3),
(3036, '天津青年职业学院', 120000, 3),
(3037, '天津轻工职业技术学院', 120000, 3),
(3038, '天津生物工程职业技术学院', 120000, 3),
(3039, '天津石油职业技术学院', 120000, 3),
(3040, '天津铁道职业技术学院', 120000, 3),
(3041, '天津现代职业技术学院', 120000, 3),
(3042, '天津冶金职业技术学院', 120000, 3),
(3043, '天津医学高等专科学校', 120000, 3),
(3044, '天津艺术职业学院', 120000, 3),
(3045, '天津职业大学', 120000, 3),
(3046, '天津中德职业技术学院', 120000, 3),
(3047, '天津市工会管理干部学院', 120000, 3),
(3048, '天津外国语学院滨海外事学院', 120000, 3),
(3049, '天津体育学院运动与文化艺术学院', 120000, 3),
(3050, '天津商学院宝德学院', 120000, 3),
(3051, '天津医科大学临床医学院', 120000, 3),
(3052, '北京科技大学天津学院', 120000, 3),
(3053, '天津师范大学津沽学院', 120000, 3),
(3054, '天津理工大学中环信息学院', 120000, 3),
(3055, '天津大学仁爱学院', 120000, 3),
(3056, '天津财经大学珠江学院', 120000, 3),
(3057, '南开大学滨海学院', 120000, 3),
(4001, '重庆大学', 500000, 3),
(4002, '西南大学', 500000, 3),
(4003, '重庆师大', 500000, 3),
(4004, '西南政法', 500000, 3),
(4005, '重庆交大', 500000, 3),
(4006, '重庆邮电大学', 500000, 3),
(4007, '重庆医大', 500000, 3),
(4008, '重庆工商', 500000, 3),
(4009, '重庆科技学院', 500000, 3),
(4010, '重庆工学院', 500000, 3),
(4011, '长江师范学院', 500000, 3),
(4012, '四川外国语', 500000, 3),
(4013, '四川美院', 500000, 3),
(4014, '重庆三峡学院', 500000, 3),
(4015, '重庆文理', 500000, 3),
(4016, '重庆巴渝职业技术学院', 500000, 3),
(4017, '重庆城市职业学院', 500000, 3),
(4018, '重庆电力高等专科学校', 500000, 3),
(4019, '重庆电子科技职业学院', 500000, 3),
(4020, '重庆电子职业技术学院', 500000, 3),
(4021, '重庆工程职业技术学院', 500000, 3),
(4022, '重庆工商职业学院', 500000, 3),
(4023, '重庆工业职业技术学院', 500000, 3),
(4024, '重庆光彩职业技术学院', 500000, 3),
(4025, '重庆海联职业技术学院', 500000, 3),
(4026, '重庆机电职业技术学院', 500000, 3),
(4027, '重庆警官职业学院', 500000, 3),
(4028, '重庆民生职业技术学院', 500000, 3),
(4029, '重庆三峡医药高等专科学校', 500000, 3),
(4030, '重庆三峡职业学院', 500000, 3),
(4031, '重庆水利电力职业技术学院', 500000, 3),
(4032, '重庆信息技术职业学院', 500000, 3),
(4033, '重庆医药高等专科学校', 500000, 3),
(4034, '重庆正大软件职业技术学院', 500000, 3),
(4035, '重庆职业技术学院', 500000, 3),
(4036, '重庆教育学院', 500000, 3),
(4037, '重庆应用外国语专修学院', 500000, 3),
(4038, '重庆大学城市科技学院', 500000, 3),
(4039, '西南大学育才学院', 500000, 3),
(4040, '四川外语学院重庆南方翻译学院', 500000, 3),
(4041, '重庆师范大学涉外商贸学院', 500000, 3),
(4042, '重庆工商大学融智学院', 500000, 3),
(4043, '重庆工商大学派斯学院', 500000, 3),
(4044, '重庆邮电大学移通学院', 500000, 3),
(4045, '重庆工贸职业技术学院', 500000, 3),
(4046, '重庆青年职业技术学院', 500000, 3),
(4047, '重庆城市管理职业学院', 500000, 3),
(5001, '哈工大', 230000, 3),
(5002, '哈工程', 230000, 3),
(5003, '东北林大', 230000, 3),
(5004, '东北农大', 230000, 3),
(5005, '哈尔滨医科大', 230000, 3),
(5006, '黑龙江中医药', 230000, 3),
(5007, '黑工程', 230000, 3),
(5008, '黑龙江科技大学', 230000, 3),
(5009, '哈尔滨学院', 230000, 3),
(5010, '哈尔滨体院', 230000, 3),
(5011, '东方学院', 230000, 3),
(5012, '黑龙江大学', 230000, 3),
(5013, '哈尔滨商业大学', 230000, 3),
(5014, '哈师大', 230000, 3),
(5015, '哈理工', 230000, 3),
(5016, '佳木斯大学', 230000, 3),
(5017, '齐齐哈尔大学', 230000, 3),
(5018, '齐齐哈尔医学院', 230000, 3),
(5019, '黑龙江八一农垦大学', 230000, 3),
(5020, '大庆石油', 230000, 3),
(5021, '大庆师范学院', 230000, 3),
(5022, '牡丹江医学院', 230000, 3),
(5023, '牡丹江师范', 230000, 3),
(5024, '绥化学院', 230000, 3),
(5025, '黑河学院', 230000, 3),
(5026, '大庆医学高等专科学校', 230000, 3),
(5027, '大庆职业学院', 230000, 3),
(5028, '大兴安岭职业学院', 230000, 3),
(5029, '哈尔滨电力职业技术学院', 230000, 3),
(5030, '哈尔滨华夏计算机职业技术学院', 230000, 3),
(5031, '哈尔滨金融高等专科学校', 230000, 3),
(5032, '哈尔滨铁道职业技术学院', 230000, 3),
(5033, '哈尔滨现代公共关系职业学院', 230000, 3),
(5034, '哈尔滨职业技术学院', 230000, 3),
(5035, '鹤岗师范高等专科学校', 230000, 3),
(5036, '黑龙江北开职业技术学院', 230000, 3),
(5037, '黑龙江工商职业技术学院', 230000, 3),
(5038, '黑龙江公安警官职业学院', 230000, 3),
(5039, '黑龙江建筑职业技术学院', 230000, 3),
(5040, '黑龙江林业职业技术学院', 230000, 3),
(5041, '黑龙江旅游职业技术学院', 230000, 3),
(5042, '黑龙江煤炭职业技术学院', 230000, 3),
(5043, '黑龙江民族职业学院', 230000, 3),
(5044, '黑龙江农垦林业职业技术学院', 230000, 3),
(5045, '黑龙江农垦农业职业技术学院', 230000, 3),
(5046, '黑龙江农垦职业学院', 230000, 3),
(5047, '黑龙江农业工程职业学院', 230000, 3),
(5048, '黑龙江农业经济职业学院', 230000, 3),
(5049, '黑龙江农业职业技术学院', 230000, 3),
(5050, '黑龙江三江美术职业学院', 230000, 3),
(5051, '黑龙江商业职业学院', 230000, 3),
(5052, '黑龙江生态工程职业学院', 230000, 3),
(5053, '黑龙江生物科技职业学院', 230000, 3),
(5054, '黑龙江司法警官职业学院', 230000, 3),
(5055, '黑龙江信息技术职业学院', 230000, 3),
(5056, '黑龙江畜牧兽医职业学院', 230000, 3),
(5057, '黑龙江艺术职业学院', 230000, 3),
(5058, '鸡西大学', 230000, 3),
(5059, '牡丹江大学', 230000, 3),
(5060, '七台河职业学院', 230000, 3),
(5061, '齐齐哈尔高等师范专科学校', 230000, 3),
(5062, '齐齐哈尔职业学院', 230000, 3),
(5063, '伊春职业学院', 230000, 3),
(5064, '哈尔滨师范大学阿城学院', 230000, 3),
(5065, '黑龙江工程学院', 230000, 3),
(5066, '黑龙江省政法管理干部学院', 230000, 3),
(5067, '黑龙江交通职业技术学院', 230000, 3),
(5068, '哈尔滨应用职业技术学院', 230000, 3),
(5069, '黑龙江省教育学院', 230000, 3),
(5070, '哈尔滨理工大学远东学院', 230000, 3),
(5071, '哈尔滨师范大学呼兰学院', 230000, 3),
(5072, '哈尔滨师范大学恒星学院', 230000, 3),
(5073, '哈尔滨商业大学德强商务学院', 230000, 3),
(5074, '大庆石油学院华瑞学院', 230000, 3),
(5075, '东北农业大学成栋学院', 230000, 3),
(5076, '黑龙江大学剑桥学院', 230000, 3),
(5077, '哈尔滨商业大学广厦学院', 230000, 3),
(5078, '哈尔滨工业大学华德应用技术学院', 230000, 3),
(5079, '鹤岗矿务局职工大学', 230000, 3),
(5080, '哈尔滨市职工医学院', 230000, 3),
(5081, '佳木斯教育学院', 230000, 3),
(5082, '黑龙江幼儿师范高等专科学校', 230000, 3),
(5083, '哈尔滨外国语学院', 230000, 3),
(6001, '吉林大学', 220000, 3),
(6002, '东北师范大学', 220000, 3),
(6003, '长春大学', 220000, 3),
(6004, '吉林农大', 220000, 3),
(6005, '长春中医药', 220000, 3),
(6006, '东北电力大学', 220000, 3),
(6007, '吉林化工', 220000, 3),
(6008, '吉林建筑', 220000, 3),
(6009, '长春工程学院', 220000, 3),
(6010, '长春师范学院', 220000, 3),
(6011, '吉林工程师范', 220000, 3),
(6012, '吉林华桥外语', 220000, 3),
(6013, '长春税务', 220000, 3),
(6014, '吉林体院', 220000, 3),
(6015, '吉林艺术学院', 220000, 3),
(6016, '长春工大', 220000, 3),
(6017, '长春理工', 220000, 3),
(6018, '延边大学', 220000, 3),
(6019, '北华大学', 220000, 3),
(6020, '吉林农业科技学院', 220000, 3),
(6021, '吉林医药学院', 220000, 3),
(6022, '吉林师范', 220000, 3),
(6023, '白城师范学院', 220000, 3),
(6024, '通化师范', 220000, 3),
(6025, '白城医学高等专科学校', 220000, 3),
(6026, '长春东方职业学院', 220000, 3),
(6027, '长春金融高等专科学校', 220000, 3),
(6028, '长春汽车工业高等专科学校', 220000, 3),
(6029, '长春信息技术职业学院', 220000, 3),
(6030, '长春医学高等专科学校', 220000, 3),
(6031, '长春职业技术学院', 220000, 3),
(6032, '东北师范大学人文学院', 220000, 3),
(6033, '吉林工商学院—财经校区', 220000, 3),
(6034, '吉林大学—莱姆顿学院', 220000, 3),
(6035, '吉林电子信息职业技术学院', 220000, 3),
(6036, '吉林对外经贸职业学院', 220000, 3),
(6037, '吉林工业职业技术学院', 220000, 3),
(6038, '吉林公安高等专科学校', 220000, 3),
(6039, '吉林交通职业技术学院', 220000, 3),
(6040, '吉林工商学院—工程校区', 220000, 3),
(6041, '吉林农业工程职业技术学院', 220000, 3),
(6042, '吉林工商学院—商贸校区', 220000, 3),
(6043, '吉林司法警官职业学院', 220000, 3),
(6044, '辽源职业技术学院', 220000, 3),
(6045, '四平职业大学', 220000, 3),
(6046, '松原职业技术学院', 220000, 3),
(6047, '吉林省教育学院', 220000, 3),
(6048, '吉林经济管理干部学院', 220000, 3),
(6049, '长春大学光华学院', 220000, 3),
(6050, '长春大学旅游学院', 220000, 3),
(6051, '长春工业大学人文信息学院', 220000, 3),
(6052, '吉林艺术学院动画学院', 220000, 3),
(6053, '长春理工大学光电信息学院', 220000, 3),
(6054, '长春税务学院信息经济学院', 220000, 3),
(6055, '吉林农业大学发展学院', 220000, 3),
(6056, '吉林师范大学博达学院', 220000, 3),
(6057, '吉林铁道职业技术学院', 220000, 3),
(6058, '白城职业技术学院', 220000, 3),
(6059, '吉林建筑工程学院建筑装饰学院', 220000, 3),
(6060, '吉林建筑工程学院城建学院', 220000, 3),
(7001, '大连理工', 210000, 3),
(7002, '东北大学', 210000, 3),
(7003, '辽宁大学', 210000, 3),
(7004, '大连海事', 210000, 3),
(7005, '东北财经', 210000, 3),
(7006, '大连大学', 210000, 3),
(7007, '大连交大', 210000, 3),
(7008, '大连医大', 210000, 3),
(7009, '辽宁师大', 210000, 3),
(7010, '大连民族', 210000, 3),
(7011, '大连工大', 210000, 3),
(7012, '大连水产', 210000, 3),
(7013, '大连外国语学院', 210000, 3),
(7014, '辽宁外经贸', 210000, 3),
(7015, '沈阳大学', 210000, 3),
(7016, '沈阳理工', 210000, 3),
(7017, '沈阳工大', 210000, 3),
(7018, '沈阳建筑', 210000, 3),
(7019, '沈阳农大', 210000, 3),
(7020, '辽宁中医药', 210000, 3),
(7021, '沈阳药科', 210000, 3),
(7022, '沈阳师范', 210000, 3),
(7023, '中国刑警学院', 210000, 3),
(7024, '沈阳化工', 210000, 3),
(7025, '沈阳航空工业学院', 210000, 3),
(7026, '沈阳工程', 210000, 3),
(7027, '沈阳医学院', 210000, 3),
(7028, '沈阳体院', 210000, 3),
(7029, '鲁迅美院', 210000, 3),
(7030, '沈阳音乐学院', 210000, 3),
(7031, '中国医科大', 210000, 3),
(7032, '辽宁工大', 210000, 3),
(7033, '辽宁石化', 210000, 3),
(7034, '鞍山科大', 210000, 3),
(7035, '鞍山师范学院', 210000, 3),
(7036, '渤海大学', 210000, 3),
(7037, '辽宁工业大学', 210000, 3),
(7038, '辽宁医学院', 210000, 3),
(7039, '辽宁科技学院', 210000, 3),
(7040, '辽东学院', 210000, 3),
(7041, '鞍山市高等职业专科学校', 210000, 3),
(7042, '渤海船舶职业学院', 210000, 3),
(7043, '渤海大学文理学院', 210000, 3),
(7044, '朝阳师范高等专科学校', 210000, 3),
(7045, '大连东软信息学院', 210000, 3),
(7046, '大连翻译职业技术学院', 210000, 3),
(7047, '大连枫叶职业技术学院', 210000, 3),
(7048, '大连软件职业学院', 210000, 3),
(7049, '大连商务职业学院', 210000, 3),
(7050, '大连艺术职业学院', 210000, 3),
(7051, '大连职业技术学院', 210000, 3),
(7052, '抚顺师范高等专科学校', 210000, 3),
(7053, '抚顺职业技术学院', 210000, 3),
(7054, '阜新高等专科学校', 210000, 3),
(7055, '锦州商务职业学院', 210000, 3),
(7056, '锦州师范高等专科学校', 210000, 3),
(7057, '辽宁广播电视大学', 210000, 3),
(7058, '辽宁广告职业学院', 210000, 3),
(7059, '辽宁机电职业技术学院', 210000, 3),
(7060, '辽宁交通高等专科学校', 210000, 3),
(7061, '沈阳大学师范学院', 210000, 3),
(7062, '辽宁金融职业学院', 210000, 3),
(7063, '辽宁经济职业技术学院', 210000, 3),
(7064, '辽宁警官高等专科学校', 210000, 3),
(7065, '辽宁科技大学', 210000, 3),
(7066, '辽宁林业职业技术学院', 210000, 3),
(7067, '辽宁美术职业学院', 210000, 3),
(7068, '辽宁农业职业技术学院', 210000, 3),
(7069, '辽宁商贸职业学院', 210000, 3),
(7070, '辽宁石化职业技术学院', 210000, 3),
(7071, '大连广播电视大学', 210000, 3),
(7072, '辽宁体育运动职业技术学院', 210000, 3),
(7073, '辽宁信息职业技术学院', 210000, 3),
(7074, '辽阳职业技术学院', 210000, 3),
(7075, '盘锦职业技术学院', 210000, 3),
(7076, '沈阳航空职业技术学院', 210000, 3),
(7077, '沈阳职业技术学院', 210000, 3),
(7078, '辽宁职业学院', 210000, 3),
(7079, '铁岭师范高等专科学校', 210000, 3),
(7080, '营口职业技术学院', 210000, 3),
(7081, '沈阳广播电视大学', 210000, 3),
(7082, '青岛峻通科技专修学院', 210000, 3),
(7083, '辽河石油职业技术学院', 210000, 3),
(7084, '青岛广播电视大学', 210000, 3),
(7085, '沈阳航空工业学院北方科技学院', 210000, 3),
(7086, '沈阳理工大学应用技术学院', 210000, 3),
(7087, '大连工业大学艺术与信息工程学院', 210000, 3),
(7088, '大连交通大学信息工程学院', 210000, 3),
(7089, '沈阳建筑大学城市建设学院', 210000, 3),
(7090, '辽宁科技大学信息技术学院', 210000, 3),
(7091, '辽宁石油化工大学顺华能源学院', 210000, 3),
(7092, '沈阳化工学院科亚学院', 210000, 3),
(7093, '沈阳农业大学科学技术学院', 210000, 3),
(7094, '中国医科大学临床医药学院', 210000, 3),
(7095, '大连医科大学中山学院', 210000, 3),
(7096, '辽宁医学院医疗学院', 210000, 3),
(7097, '辽宁中医药大学杏林学院', 210000, 3),
(7098, '沈阳医学院何氏视觉科学学院', 210000, 3),
(7099, '辽宁师范大学海华学院', 210000, 3),
(7100, '东北财经大学津桥商学院', 210000, 3),
(7101, '沈阳师范大学渤海学院', 210000, 3),
(7102, '大连理工大学城市学院', 210000, 3),
(7103, '沈阳大学科技工程学院', 210000, 3),
(7104, '辽宁装备制造职业技术学院', 210000, 3),
(7105, '辽宁文化艺术职工大学', 210000, 3),
(7106, '辽宁公安司法管理干部学院', 210000, 3),
(7107, '沈阳工业大学工程学院', 210000, 3),
(8001, '山东大学', 370000, 3),
(8002, '中国海洋大学', 370000, 3),
(8003, '济南大学', 370000, 3),
(8004, '山东建筑大学', 370000, 3),
(8005, '山东师大', 370000, 3),
(8006, '山东经济学院', 370000, 3),
(8007, '山东中医药', 370000, 3),
(8008, '山东轻工', 370000, 3),
(8009, '山东交通学院', 370000, 3),
(8010, '山东警院', 370000, 3),
(8011, '山东体院', 370000, 3),
(8012, '山东艺术学院', 370000, 3),
(8013, '山东工美', 370000, 3),
(8014, '曲阜师大', 370000, 3),
(8015, '烟台大学', 370000, 3),
(8016, '鲁东大学', 370000, 3),
(8017, '山东工商', 370000, 3),
(8018, '南山学院', 370000, 3),
(8019, '青岛大学', 370000, 3),
(8020, '山东科大', 370000, 3),
(8021, '青岛科大', 370000, 3),
(8022, '青岛理工', 370000, 3),
(8023, '青岛农业大学', 370000, 3),
(8024, '滨海学院', 370000, 3),
(8025, '中国石油大学华东', 370000, 3),
(8026, '聊城大学', 370000, 3),
(8027, '山东理工', 370000, 3),
(8028, '潍坊医学院', 370000, 3),
(8029, '潍坊学院', 370000, 3),
(8030, '泰山医学院', 370000, 3),
(8031, '山东财政', 370000, 3),
(8032, '泰山学院', 370000, 3),
(8033, '山东农大', 370000, 3),
(8034, '滨州医学院', 370000, 3),
(8035, '滨州学院', 370000, 3),
(8036, '济宁医学院', 370000, 3),
(8037, '临沂师范', 370000, 3),
(8038, '德州学院', 370000, 3),
(8039, '枣庄学院', 370000, 3),
(8040, '菏泽学院', 370000, 3),
(8041, '滨州职业学院', 370000, 3),
(8042, '德州教育学院', 370000, 3),
(8043, '德州科技职业学院', 370000, 3),
(8044, '东营职业学院', 370000, 3),
(8045, '哈工大(威海)', 370000, 3),
(8046, '菏泽医学专科学校', 370000, 3),
(8047, '济南工程职业技术学院', 370000, 3),
(8048, '济南铁道职业技术学院', 370000, 3),
(8049, '济南职业学院', 370000, 3),
(8050, '济宁学院', 370000, 3),
(8051, '济宁职业技术学院', 370000, 3),
(8052, '莱芜职业技术学院', 370000, 3),
(8053, '聊城职业技术学院', 370000, 3),
(8054, '青岛飞洋职业技术学院', 370000, 3),
(8055, '青岛港湾职业技术学院', 370000, 3),
(8056, '青岛恒星职业技术学院', 370000, 3),
(8057, '青岛黄海职业学院', 370000, 3),
(8058, '青岛求实学院', 370000, 3),
(8059, '青岛求实职业技术学院', 370000, 3),
(8060, '青岛远洋船员学院', 370000, 3),
(8061, '青岛职业技术学院', 370000, 3),
(8062, '曲阜远东职业技术学院', 370000, 3),
(8063, '日照职业技术学院', 370000, 3),
(8064, '山东大王职业学院', 370000, 3),
(8065, '山东大学威海分校', 370000, 3),
(8066, '山东电力高等专科学校', 370000, 3),
(8067, '山东电子职业技术学院', 370000, 3),
(8068, '山东纺织职业学院', 370000, 3),
(8069, '山东服装职业学院', 370000, 3),
(8070, '山东工业职业学院', 370000, 3),
(8071, '山东华宇职业技术学院', 370000, 3),
(8072, '山东化工职业学院', 370000, 3),
(8073, '山东交通职业学院', 370000, 3),
(8074, '山东经贸职业学院', 370000, 3),
(8075, '山东军星职业技术学院', 370000, 3),
(8076, '山东凯文科技职业学院', 370000, 3),
(8077, '山东科技职业学院', 370000, 3),
(8078, '山东劳动职业技术学院', 370000, 3),
(8079, '山东力明科技职业学院', 370000, 3),
(8080, '山东旅游职业学院', 370000, 3),
(8081, '山东铝业职业学院', 370000, 3),
(8082, '山东商业职业技术学院', 370000, 3),
(8083, '山东胜利职业学院', 370000, 3),
(8084, '山东省青岛酒店管理学院', 370000, 3),
(8085, '山东水利职业技术学院', 370000, 3),
(8086, '山东省潍坊艺术学校', 370000, 3),
(8087, '山东圣翰财贸职业学院', 370000, 3),
(8088, '山东水利职业学院', 370000, 3),
(8089, '山东水利专科学校', 370000, 3),
(8090, '山东丝绸纺织职业学院', 370000, 3),
(8091, '山东外国语职业学院', 370000, 3),
(8092, '山东外贸职业学院', 370000, 3),
(8093, '山东外事翻译学院威海分校', 370000, 3),
(8094, '山东外事翻译职业学院', 370000, 3),
(8095, '山东万杰医学高等专科学校', 370000, 3),
(8096, '山东威海财经专修学院', 370000, 3),
(8097, '山东威海外国语进修学院', 370000, 3),
(8098, '山东现代职业学院', 370000, 3),
(8099, '山东协和职业技术学院', 370000, 3),
(8100, '山东信息职业技术学院', 370000, 3),
(8101, '山东行政学院(山东经济管理干部学院)', 370000, 3),
(8102, '山东杏林科技职业学院', 370000, 3),
(8103, '山东畜牧兽医职业学院', 370000, 3),
(8104, '山东药品食品职业学院', 370000, 3),
(8105, '山东医学高等专科学校', 370000, 3),
(8106, '山东英才职业技术学院', 370000, 3),
(8107, '山东政法学院', 370000, 3),
(8108, '山东中医药高等专科学校', 370000, 3),
(8109, '泰山职业技术学院', 370000, 3),
(8110, '万杰科技学院', 370000, 3),
(8111, '威海市广播电视大学', 370000, 3),
(8112, '威海市交通学校', 370000, 3),
(8113, '威海职业(技术)学院', 370000, 3),
(8114, '威海中加国际工商学院', 370000, 3),
(8115, '潍坊工商职业学院', 370000, 3),
(8116, '潍坊教育学院', 370000, 3),
(8117, '潍坊科技职业学院', 370000, 3),
(8118, '潍坊职业学院', 370000, 3),
(8119, '文登师范', 370000, 3),
(8120, '烟台职业学院', 370000, 3),
(8121, '枣庄科技职业学院', 370000, 3),
(8122, '中国石油大学(华东)东营校区', 370000, 3),
(8123, '淄博广播电视大学', 370000, 3),
(8124, '淄博恒星外国语学院', 370000, 3),
(8125, '淄博科技职业学院', 370000, 3),
(8126, '淄博师专', 370000, 3),
(8127, '淄博职业学院', 370000, 3),
(8128, '山东省教育学院', 370000, 3),
(8129, '山东技师学院', 370000, 3),
(8130, '日照广播电视大学', 370000, 3),
(8131, '中华女子学院山东分院', 370000, 3),
(8132, '山东城市建设职业学院', 370000, 3),
(8133, '烟台工程职业技术学院', 370000, 3),
(8134, '山东商务职业学院', 370000, 3),
(8135, '烟台汽车工程职业学院', 370000, 3),
(8136, '山东省农业管理干部学院', 370000, 3),
(8137, '山东省青年管理干部学院', 370000, 3),
(8138, '山东省工会管理干部学院', 370000, 3),
(8139, '山东广播电视大学', 370000, 3),
(8140, '德州职业技术学院', 370000, 3),
(8141, '中国石油大学胜利学院', 370000, 3),
(8142, '烟台大学文经学院', 370000, 3),
(8143, '青岛理工大学琴岛学院', 370000, 3),
(8144, '山东科技大学泰山科技学院', 370000, 3),
(8145, '中国海洋大学青岛学院', 370000, 3),
(8146, '山东经济学院燕山学院', 370000, 3),
(8147, '青岛农业大学海都学院', 370000, 3),
(8148, '曲阜师范大学杏坛学院', 370000, 3),
(8149, '山东财政学院东方学院', 370000, 3),
(8150, '山东师范大学历山学院', 370000, 3),
(8151, '聊城大学东昌学院', 370000, 3),
(8152, '济南大学泉城学院', 370000, 3),
(8153, '中国农业大学（烟台校区）', 370000, 3),
(8154, '日照师范学校', 370000, 3),
(8155, '山东艺术设计学院', 370000, 3),
(8156, '滨州技术学院', 370000, 3),
(8157, '山东省贸易职工大学', 370000, 3),
(8158, '山东冶金技术学院', 370000, 3),
(8159, '山东省济宁市技术学院', 370000, 3),
(8160, '济南广播电视大学', 370000, 3),
(9001, '山西大学', 140000, 3),
(9002, '太原理工', 140000, 3),
(9003, '中北大学', 140000, 3),
(9004, '山西医大', 140000, 3),
(9005, '山西中医学院', 140000, 3),
(9006, '太原师范', 140000, 3),
(9007, '太原科大', 140000, 3),
(9008, '山西财经', 140000, 3),
(9009, '山西师大', 140000, 3),
(9010, '山西农大', 140000, 3),
(9011, '大同大学', 140000, 3),
(9012, '长治医学院', 140000, 3),
(9013, '长治学院', 140000, 3),
(9014, '运城学院', 140000, 3),
(9015, '晋中学院', 140000, 3),
(9016, '忻州师范', 140000, 3),
(9017, '北岳职业技术学院', 140000, 3),
(9018, '长治职业技术学院', 140000, 3),
(9019, '晋城职业技术学院', 140000, 3),
(9020, '晋中职业技术学院', 140000, 3),
(9021, '临汾职业技术学院', 140000, 3),
(9022, '潞安职业技术学院', 140000, 3),
(9023, '吕梁高等专科学校', 140000, 3),
(9024, '山西财贸职业技术学院', 140000, 3),
(9025, '山西财政税务专科学校', 140000, 3),
(9026, '山西电力职业技术学院', 140000, 3),
(9027, '山西工程职业技术学院', 140000, 3),
(9028, '山西工商职业学院', 140000, 3),
(9029, '山西管理职业学院', 140000, 3),
(9030, '山西国际商务职业学院', 140000, 3),
(9031, '山西华澳商贸职业学院', 140000, 3),
(9032, '山西机电职业技术学院', 140000, 3),
(9033, '山西建筑职业技术学院', 140000, 3),
(9034, '山西交通职业技术学院', 140000, 3),
(9035, '山西金融职业技术学院', 140000, 3),
(9036, '山西警官高等专科学校', 140000, 3),
(9037, '山西警官职业学院', 140000, 3),
(9038, '山西林业职业技术学院', 140000, 3),
(9039, '山西旅游职业学院', 140000, 3),
(9040, '山西煤炭职业技术学院', 140000, 3),
(9041, '山西生物应用职业技术学院', 140000, 3),
(9042, '山西水利职业技术学院', 140000, 3),
(9043, '山西体育职业学院', 140000, 3),
(9044, '山西同文外语职业学院', 140000, 3),
(9045, '山西戏剧职业学院', 140000, 3),
(9046, '山西信息职业技术学院', 140000, 3),
(9047, '山西兴华职业学院', 140000, 3),
(9048, '山西艺术职业学院', 140000, 3),
(9049, '山西运城农业职业技术学院', 140000, 3),
(9050, '山西运城学院', 140000, 3),
(9051, '山西综合职业技术学院', 140000, 3),
(9052, '太原城市职业技术学院', 140000, 3),
(9053, '太原大学', 140000, 3),
(9054, '太原电力高等专科学校', 140000, 3),
(9055, '太原旅游职业学院', 140000, 3),
(9056, '忻州职业技术学院', 140000, 3),
(9057, '阳泉职业技术学院', 140000, 3),
(9058, '山西广播电影电视管理干部学院', 140000, 3),
(9059, '山西城市职业技术学院', 140000, 3),
(9060, '运城农业学院', 140000, 3),
(9061, '山西广播电视大学', 140000, 3),
(9062, '晋中学院师范学院', 140000, 3),
(9063, '朔州职业技术学院', 140000, 3),
(9064, '山西农业大学平遥机电学院', 140000, 3),
(9065, '山西农业大学信息学院', 140000, 3),
(9066, '山西农业大学太原畜牧兽医学院', 140000, 3),
(9067, '山西农业大学太原园艺学院（太原农业学校）', 140000, 3),
(9068, '山西农业大学原平农学院（原平农业学校）', 140000, 3),
(9069, '太原科技大学运城工学院（运城工学院）', 140000, 3),
(9070, '山西财经大学运城学院', 140000, 3),
(9071, '山西医科大学汾阳分院', 140000, 3),
(9072, '山西医科大学晋祠学院', 140000, 3),
(9073, '太原科技大学华科学院', 140000, 3),
(9074, '山西财经大学华商学院', 140000, 3),
(9075, '中北大学信息商务学院', 140000, 3),
(9076, '山西师范大学现代文理学院', 140000, 3),
(9077, '忻州师范学院五寨分院（五寨师范学院）', 140000, 3),
(9078, '山西大学商务学院', 140000, 3),
(9079, '太原工业学院', 140000, 3),
(9080, '山西经济管理干部学院', 140000, 3),
(10001, '西安交大', 610000, 3),
(10002, '长安大学', 610000, 3),
(10003, '西北工大', 610000, 3),
(10004, '西北大学', 610000, 3),
(10005, '陕西师大', 610000, 3),
(10006, '西安电子科大', 610000, 3),
(10007, '西安理工', 610000, 3),
(10008, '西安科大', 610000, 3),
(10009, '西安工大', 610000, 3),
(10010, '西外', 610000, 3),
(10011, '西邮', 610000, 3),
(10012, '西安医学院', 610000, 3),
(10013, '西安财经', 610000, 3),
(10014, '西北政法', 610000, 3),
(10015, '西安体院', 610000, 3),
(10016, '西安美院', 610000, 3),
(10017, '西安音乐学院', 610000, 3),
(10018, '西安文理学院', 610000, 3),
(10019, '西京学院', 610000, 3),
(10020, '西安翻译学院', 610000, 3),
(10021, '培华学院', 610000, 3),
(10022, '欧亚学院', 610000, 3),
(10023, '西安外事', 610000, 3),
(10024, '西安石油', 610000, 3),
(10025, '西安建筑科大', 610000, 3),
(10026, '第四军医大学', 610000, 3),
(10027, '西安电子科技大学高等职业技术学院', 610000, 3),
(10028, '西北工业大学明德学院', 610000, 3),
(10029, '陕西师范大学高等职业技术学院', 610000, 3),
(10030, '长安大学兴华学院', 610000, 3),
(10031, '延安大学', 610000, 3),
(10032, '陕西中医学院', 610000, 3),
(10033, '咸阳师范学院', 610000, 3),
(10034, '陕西科大', 610000, 3),
(10035, '宝鸡文理学院', 610000, 3),
(10036, '渭南师范', 610000, 3),
(10037, '陕西理工', 610000, 3),
(10038, '榆林学院', 610000, 3),
(10039, '商洛学院', 610000, 3),
(10040, '安康学院', 610000, 3),
(10041, '西北农林科大', 610000, 3),
(10042, '安康职业技术学院', 610000, 3),
(10043, '宝鸡职业技术学院', 610000, 3),
(10044, '汉中职业技术学院', 610000, 3),
(10045, '陕西财经职业技术学院', 610000, 3),
(10046, '陕西电子科技职业学院', 610000, 3),
(10047, '陕西电子信息职业技术学院', 610000, 3),
(10048, '陕西纺织服装职业技术学院', 610000, 3),
(10049, '陕西服装艺术职业学院', 610000, 3),
(10050, '陕西工业职业技术学院', 610000, 3),
(10051, '陕西国防工业职业技术学院', 610000, 3),
(10052, '陕西国际商贸职业学院', 610000, 3),
(10053, '陕西航空职业技术学院', 610000, 3),
(10054, '陕西交通职业技术学院', 610000, 3),
(10055, '陕西经济管理职业技术学院', 610000, 3),
(10056, '陕西警官职业学院', 610000, 3),
(10057, '陕西旅游烹饪职业学院', 610000, 3),
(10058, '陕西能源职业技术学院', 610000, 3),
(10059, '陕西青年职业学院', 610000, 3),
(10060, '陕西铁路工程职业技术学院', 610000, 3),
(10061, '陕西邮电职业技术学院', 610000, 3),
(10062, '陕西职业技术学院', 610000, 3),
(10063, '商洛职业技术学院', 610000, 3),
(10064, '铜川职业技术学院', 610000, 3),
(10065, '渭南职业技术学院', 610000, 3),
(10066, '西安电力高等专科学校', 610000, 3),
(10067, '西安东方亚太职业技术学院', 610000, 3),
(10068, '西安高新科技职业学院', 610000, 3),
(10069, '西安工程大学', 610000, 3),
(10070, '西安海棠职业学院', 610000, 3),
(10071, '西安航空技术高等专科学校', 610000, 3),
(10072, '西安航空职业技术学院', 610000, 3),
(10073, '西安科技商贸职业学院', 610000, 3),
(10074, '西安汽车科技职业学院', 610000, 3),
(10075, '西安三资职业学院', 610000, 3),
(10076, '西安思源学院', 610000, 3),
(10077, '西安铁路职业技术学院', 610000, 3),
(10078, '西安职业技术学院', 610000, 3),
(10079, '咸阳职业技术学院', 610000, 3),
(10080, '延安职业技术学院', 610000, 3),
(10081, '杨凌职业技术学院', 610000, 3),
(10082, '陕西银行学校', 610000, 3),
(10083, '西安机电信息技术学院', 610000, 3),
(10084, '陕西教育学院', 610000, 3),
(10085, '陕西省旅游学校', 610000, 3),
(10086, '西安铁路工程职工大学', 610000, 3),
(10087, '西安华西专修大学', 610000, 3),
(10088, '西安航空职工大学', 610000, 3),
(10089, '西安建筑科技大学华清学院', 610000, 3),
(10090, '西安财经学院行知学院', 610000, 3),
(10091, '陕西科技大学镐京学院', 610000, 3),
(10092, '西安工业大学北方信息工程学院', 610000, 3),
(10093, '延安大学西安创新学院', 610000, 3),
(10094, '西安电子科技大学长安学院', 610000, 3),
(10095, '西安理工大学高科学院', 610000, 3),
(10096, '西安科技大学高新学院', 610000, 3),
(10097, '西安交通大学城市学院', 610000, 3),
(10098, '西北大学现代学院', 610000, 3),
(11001, '河北大学', 130000, 3),
(11002, '河北农大', 130000, 3),
(11003, '中央司法警官学院', 130000, 3),
(11004, '石家庄铁院', 130000, 3),
(11005, '石家庄经院', 130000, 3),
(11006, '河北师大', 130000, 3),
(11007, '河北科技', 130000, 3),
(11008, '河北医科', 130000, 3),
(11009, '河北经贸', 130000, 3),
(11010, '河北体院', 130000, 3),
(11011, '石家庄学院', 130000, 3),
(11012, '燕山大学', 130000, 3),
(11013, '河北科师', 130000, 3),
(11014, '河北理工', 130000, 3),
(11015, '华北煤炭医学', 130000, 3),
(11016, '唐山学院', 130000, 3),
(11017, '唐山师范', 130000, 3),
(11018, '华北航工', 130000, 3),
(11019, '廊坊师范', 130000, 3),
(11020, '防灾科技学院', 130000, 3),
(11021, '华北科技', 130000, 3),
(11022, '河北建工', 130000, 3),
(11023, '北方学院', 130000, 3),
(11024, '承德医学院', 130000, 3),
(11025, '邢台学院', 130000, 3),
(11026, '河北工程', 130000, 3),
(11027, '邯郸学院', 130000, 3),
(11028, '衡水学院', 130000, 3),
(11029, '保定电力职业技术学院', 130000, 3),
(11030, '保定科技职业学院', 130000, 3),
(11031, '河北金融学院', 130000, 3),
(11032, '保定学院', 130000, 3),
(11033, '保定职业技术学院', 130000, 3),
(11034, '渤海石油职业学院', 130000, 3),
(11035, '沧州师范专科学校', 130000, 3),
(11036, '沧州医学高等专科学校', 130000, 3),
(11037, '沧州职业技术学院', 130000, 3),
(11038, '河北旅游职业学院', 130000, 3),
(11039, '承德民族师范高等专科学校', 130000, 3),
(11040, '承德石油高等专科学校', 130000, 3),
(11041, '大庆石油学院秦皇岛分院', 130000, 3),
(11042, '东北大学秦皇岛校区', 130000, 3),
(11043, '邯郸职业技术学院', 130000, 3),
(11044, '河北大学医学部', 130000, 3),
(11045, '河北工程技术高等专科学校', 130000, 3),
(11046, '河北工业职业技术学院', 130000, 3),
(11047, '河北公安警察职业学院', 130000, 3),
(11048, '河北化工医药职业技术学院', 130000, 3),
(11049, '河北机电职业技术学院', 130000, 3),
(11050, '河北建材职业技术学院', 130000, 3),
(11051, '河北交通职业技术学院', 130000, 3),
(11052, '河北京都高尔夫职业学院', 130000, 3),
(11053, '河北农业大学', 130000, 3),
(11054, '河北农业大学海洋学院', 130000, 3),
(11055, '河北女子职业技术学院', 130000, 3),
(11056, '河北软件职业技术学院', 130000, 3),
(11057, '河北省艺术职业学院', 130000, 3),
(11058, '河北石油职业技术学院', 130000, 3),
(11059, '河北司法警官职业学院', 130000, 3),
(11060, '河北通信职业技术学院', 130000, 3),
(11061, '河北远东职业技术学院', 130000, 3),
(11062, '河北政法管理干部学院', 130000, 3),
(11063, '河北职业技术学院', 130000, 3),
(11064, '衡水职业技术学院', 130000, 3),
(11065, '华北电力大学(保定)', 130000, 3),
(11066, '监督管理局', 130000, 3),
(11067, '廊坊大学城北大方正软件学院', 130000, 3),
(11068, '廊坊东方大学城北京澳际联邦英语学校', 130000, 3),
(11069, '廊坊东方大学城北京财经学院', 130000, 3),
(11070, '廊坊东方大学城北京城市学院', 130000, 3),
(11071, '廊坊东方大学城北京传媒学院', 130000, 3),
(11072, '廊坊东方大学城北京经济技术职业学院', 130000, 3),
(11073, '廊坊东方大学城北京经贸职业学院航空服务学院', 130000, 3),
(11074, '廊坊东方大学城北京联合大学', 130000, 3),
(11075, '廊坊东方大学城北京中医药大学中专部', 130000, 3),
(11076, '廊坊东方大学城河北体育学院', 130000, 3),
(11077, '廊坊东方大学城廊坊职业技术学院', 130000, 3),
(11078, '秦皇岛教育学院', 130000, 3),
(11079, '秦皇岛外国语职业学院', 130000, 3),
(11080, '秦皇岛职业技术学院', 130000, 3),
(11081, '石家庄东方美术职业学院', 130000, 3),
(11082, '石家庄法商职业学院', 130000, 3),
(11083, '石家庄工商职业学院', 130000, 3),
(11084, '石家庄计算机职业学院', 130000, 3),
(11085, '石家庄科技信息职业学院', 130000, 3),
(11086, '石家庄联合技术职业学院', 130000, 3),
(11087, '石家庄铁路职业技术学院', 130000, 3),
(11088, '石家庄外国语职业学院', 130000, 3),
(11089, '石家庄外经贸职业学院', 130000, 3),
(11090, '石家庄外语翻译职业学院', 130000, 3),
(11091, '石家庄信息工程职业学院', 130000, 3),
(11092, '石家庄医学高等专科学校', 130000, 3),
(11093, '河北传媒学院', 130000, 3),
(11094, '石家庄邮电职业技术学院', 130000, 3),
(11095, '石家庄职业技术学院', 130000, 3),
(11096, '唐山工业职业技术学院', 130000, 3),
(11097, '唐山广播电视大学', 130000, 3),
(11098, '唐山科技职业技术学院', 130000, 3),
(11099, '唐山职业技术学院', 130000, 3),
(11100, '邢台医学高等专科学校', 130000, 3),
(11101, '邢台职业技术学院', 130000, 3),
(11102, '张家口职业技术学院', 130000, 3),
(11103, '中国地质大学长城学院', 130000, 3),
(11104, '中国环境管理干部学院', 130000, 3),
(11105, '中国民航管理干部学院', 130000, 3),
(11106, '张家口教育学院', 130000, 3),
(11107, '河北能源职业技术学院', 130000, 3),
(11108, '承德卫生学校', 130000, 3),
(11109, '邯郸中原外国语职业学院', 130000, 3),
(11110, '河北师范大学汇华学院', 130000, 3),
(11111, '华北煤炭医学院冀唐学院', 130000, 3),
(11112, '河北医科大学临床学院', 130000, 3),
(11113, '河北农业大学现代科技学院', 130000, 3),
(11114, '石家庄铁道学院四方学院', 130000, 3),
(11115, '燕山大学里仁学院', 130000, 3),
(11116, '河北工程大学科信学院', 130000, 3),
(11117, '河北理工大学轻工学院', 130000, 3),
(11118, '河北大学工商学院', 130000, 3),
(11119, '河北经贸大学经济管理学院', 130000, 3),
(12001, '郑州大学', 410000, 3),
(12002, '河南工业', 410000, 3),
(12003, '河南农大', 410000, 3),
(12004, '华北水利水电', 410000, 3),
(12005, '郑州轻工', 410000, 3),
(12006, '郑州航空工业', 410000, 3),
(12007, '黄河科技', 410000, 3),
(12008, '中原工学院', 410000, 3),
(12009, '河南中医学院', 410000, 3),
(12010, '河南财经', 410000, 3),
(12011, '河南大学', 410000, 3),
(12012, '河南科技大学', 410000, 3),
(12013, '洛阳师院', 410000, 3),
(12014, '安阳工学院', 410000, 3),
(12015, '安阳师院', 410000, 3),
(12016, '南阳理工', 410000, 3),
(12017, '南阳师院', 410000, 3),
(12018, '平顶山工学院', 410000, 3),
(12019, '平顶山学院', 410000, 3),
(12020, '新乡医学院', 410000, 3),
(12021, '河南科技学院', 410000, 3),
(12022, '河南师大', 410000, 3),
(12023, '信阳师院', 410000, 3),
(12024, '商丘师院', 410000, 3),
(12025, '周口师院', 410000, 3),
(12026, '黄淮学院', 410000, 3),
(12027, '许昌学院', 410000, 3),
(12028, '河南理工', 410000, 3),
(12029, '河南财政税务高等专科学校', 410000, 3),
(12030, '河南工程学院', 410000, 3),
(12031, '河南工业贸易职业学院', 410000, 3),
(12032, '河南工业职业技术学院', 410000, 3),
(12033, '河南公安高等专科学校', 410000, 3),
(12034, '河南广播影视学院', 410000, 3),
(12035, '河南机电高等专科学校', 410000, 3),
(12036, '河南检察职业学院', 410000, 3),
(12037, '河南交通职业技术学院', 410000, 3),
(12038, '河南教育学院', 410000, 3),
(12039, '河南经贸职业学院', 410000, 3),
(12040, '河南农业职业学院', 410000, 3),
(12041, '河南商业高等专科学校', 410000, 3),
(12042, '河南省工商行政管理广播电视大学', 410000, 3),
(12043, '河南省政法管理干部学院', 410000, 3),
(12044, '河南司法警官职业学院', 410000, 3),
(12045, '河南新华电脑学院', 410000, 3),
(12046, '河南职业技术学院', 410000, 3),
(12047, '河南质量工程职业学院', 410000, 3),
(12048, '鹤壁职业技术学院', 410000, 3),
(12049, '黄河水利职业技术学院', 410000, 3),
(12050, '济源职业技术学院', 410000, 3),
(12051, '焦作大学', 410000, 3),
(12052, '焦作师范高等专科学校', 410000, 3),
(12053, '开封大学', 410000, 3),
(12054, '开封市电子科技专修学校', 410000, 3),
(12055, '洛阳大学', 410000, 3),
(12056, '洛阳理工学院', 410000, 3),
(12057, '漯河医学高等专科学校', 410000, 3),
(12058, '漯河职业技术学院', 410000, 3),
(12059, '南阳医学高等专科学校', 410000, 3),
(12060, '平顶山教育学院', 410000, 3),
(12061, '平顶山职业技术学院', 410000, 3),
(12062, '平原大学', 410000, 3),
(12063, '濮阳职业技术学院', 410000, 3),
(12064, '三门峡职业技术学院', 410000, 3),
(12065, '商丘科技职业学院', 410000, 3),
(12066, '商丘医学高等专科学校', 410000, 3),
(12067, '商丘职业技术学院', 410000, 3),
(12068, '嵩山少林武术职业学院', 410000, 3),
(12069, '铁道警官高等专科学校', 410000, 3),
(12070, '新乡师范高等专科学校', 410000, 3),
(12071, '新乡市教育学院', 410000, 3),
(12072, '信阳农业高等专科学校', 410000, 3),
(12073, '信阳职业技术学院', 410000, 3),
(12074, '许昌职业技术学院', 410000, 3),
(12075, '永城职业学院', 410000, 3),
(12076, '郑州大学西亚斯国际学院', 410000, 3),
(12077, '郑州电力高等专科学校', 410000, 3),
(12078, '郑州电子信息职业技术学院', 410000, 3),
(12079, '郑州工业安全职业学院', 410000, 3),
(12080, '郑州华信职业技术学院', 410000, 3),
(12081, '郑州交通学院', 410000, 3),
(12082, '郑州经贸职业学院', 410000, 3),
(12083, '郑州科技职业学院', 410000, 3),
(12084, '郑州旅游职业学院', 410000, 3),
(12085, '郑州牧业工程高等专科学校', 410000, 3),
(12086, '郑州师范高等专科学校', 410000, 3),
(12087, '郑州澍青医学高等专科学校', 410000, 3),
(12088, '郑州铁路职业技术学院', 410000, 3),
(12089, '郑州信息科技职业学院', 410000, 3),
(12090, '郑州职业技术学院', 410000, 3),
(12091, '中州大学', 410000, 3),
(12092, '周口职业技术学院', 410000, 3),
(12093, '郑州大学升达经贸管理学院', 410000, 3),
(12094, '河南建筑职工大学', 410000, 3),
(12095, '洛阳工业高等专科学校', 410000, 3),
(12096, '河南职工医学院', 410000, 3),
(12097, '河南科技学院新科学院', 410000, 3),
(12098, '河南理工大学万方科技学院', 410000, 3),
(12099, '中原工学院信息商务学院', 410000, 3),
(12100, '安阳师范学院人文管理学院', 410000, 3),
(12101, '河南农业大学华豫学院', 410000, 3),
(12102, '河南财经学院成功学院', 410000, 3),
(12103, '开封教育学院', 410000, 3),
(12104, '河南政法管理干部学院', 410000, 3),
(12105, '河南卫生职工学院', 410000, 3),
(12106, '河南省建筑职工大学', 410000, 3),
(12107, '河南大学民生学院', 410000, 3),
(12108, '河南师范大学新联学院', 410000, 3),
(12109, '新乡医学院三全学院', 410000, 3),
(12110, '信阳师范学院华锐学院', 410000, 3),
(13001, '武汉大学', 420000, 3),
(13002, '华中科大', 420000, 3),
(13003, '华中农大', 420000, 3),
(13004, '武汉理工', 420000, 3),
(13005, '中国地质大学（武汉）', 420000, 3),
(13006, '中南财经政法', 420000, 3),
(13007, '中南民族大学', 420000, 3),
(13008, '华中师大', 420000, 3),
(13009, '武汉工业学院', 420000, 3),
(13010, '武汉科技学院', 420000, 3),
(13011, '湖北中医学院', 420000, 3),
(13012, '湖北经济学院', 420000, 3),
(13013, '湖北警官学院', 420000, 3),
(13014, '武汉体院', 420000, 3),
(13015, '湖北美院', 420000, 3),
(13016, '武汉音乐学院', 420000, 3),
(13017, '武汉生物工程学院', 420000, 3),
(13018, '湖北工大', 420000, 3),
(13019, '湖北大学', 420000, 3),
(13020, '江汉大学', 420000, 3),
(13021, '武汉工大', 420000, 3),
(13022, '武汉科大', 420000, 3),
(13023, '长江大学', 420000, 3),
(13024, '三峡大学', 420000, 3),
(13025, '湖北汽院', 420000, 3),
(13026, '郧阳医学院', 420000, 3),
(13027, '孝感学院', 420000, 3),
(13028, '湖北师范学院', 420000, 3),
(13029, '黄石理工', 420000, 3),
(13030, '黄冈师院', 420000, 3),
(13031, '湖北民族学院', 420000, 3),
(13032, '襄樊学院', 420000, 3),
(13033, '咸宁学院', 420000, 3),
(13034, '长江工程职业技术学院', 420000, 3),
(13035, '长江职业学院', 420000, 3),
(13036, '鄂东职业技术学院', 420000, 3),
(13037, '鄂州大学', 420000, 3),
(13038, '恩施职业技术学院', 420000, 3),
(13039, '湖北财经高等专科学校', 420000, 3),
(13040, '湖北财税职业学院', 420000, 3),
(13041, '湖北城市建设职业技术学院', 420000, 3),
(13042, '湖北工业大学商贸学院', 420000, 3),
(13043, '湖北国土资源职业学院', 420000, 3),
(13044, '湖北黄石机电职业技术学院', 420000, 3),
(13045, '湖北交通职业技术学院', 420000, 3),
(13046, '湖北第二师范学院', 420000, 3),
(13047, '湖北经济管理干部学院', 420000, 3),
(13048, '湖北开放职业学院', 420000, 3),
(13049, '湖北民族学院科技学院', 420000, 3),
(13050, '湖北轻工职业技术学院', 420000, 3),
(13051, '湖北三峡职业技术学院', 420000, 3),
(13052, '湖北生态工程职业技术学院', 420000, 3),
(13053, '湖北生物科技职业学院', 420000, 3),
(13054, '湖北省水利水电职业技术学院', 420000, 3),
(13055, '湖北师范学院文理学院', 420000, 3),
(13056, '湖北艺术职业学院', 420000, 3),
(13057, '湖北职业技术学院', 420000, 3),
(13058, '湖北中医药高等专科学校', 420000, 3),
(13059, '黄冈科技职业学院', 420000, 3),
(13060, '黄冈职业技术学院', 420000, 3),
(13061, '江汉艺术职业学院', 420000, 3),
(13062, '荆楚理工学院', 420000, 3),
(13063, '荆州职业技术学院', 420000, 3),
(13064, '沙市职业大学', 420000, 3),
(13065, '沙洋师范高等专科学校', 420000, 3),
(13066, '十堰职业技术学院', 420000, 3),
(13067, '随州职业技术学院', 420000, 3),
(13068, '武汉船舶职业技术学院', 420000, 3),
(13069, '武汉电力职业技术学院', 420000, 3),
(13070, '武汉工程职业技术学院', 420000, 3),
(13071, '武汉工业职业技术学院', 420000, 3),
(13072, '武汉航海职业技术学院', 420000, 3),
(13073, '武汉交通职业学院', 420000, 3),
(13074, '武汉警官职业学院', 420000, 3),
(13075, '武汉科技职业学院', 420000, 3),
(13076, '武汉理工大学华夏学院', 420000, 3),
(13077, '武汉民政职业学院', 420000, 3),
(13078, '武汉软件工程职业学院', 420000, 3),
(13079, '武汉商贸学院', 420000, 3),
(13080, '武汉商业服务学院', 420000, 3),
(13081, '武汉时代职业学院', 420000, 3),
(13082, '武汉铁路职业技术学院', 420000, 3),
(13083, '武汉外语外事职业学院', 420000, 3),
(13084, '武汉信息传播职业技术学院', 420000, 3),
(13085, '武汉职业技术学院', 420000, 3),
(13086, '仙桃职业学院', 420000, 3),
(13087, '咸宁职业技术学院', 420000, 3),
(13088, '襄樊职业技术学院', 420000, 3),
(13089, '孝感学院新技术学院', 420000, 3),
(13090, '郧阳师范高等专科学校', 420000, 3),
(13091, '中南民族大学工商学院', 420000, 3),
(13092, '黄冈广播电视大学', 420000, 3),
(13093, '华中科技大学文华学院', 420000, 3),
(13094, '华中师范大学汉口分校', 420000, 3),
(13095, '湖北大学知行学院', 420000, 3),
(13096, '三峡大学科技学院', 420000, 3),
(13097, '武汉科技大学中南分校', 420000, 3),
(13098, '湖北工业大学工程技术学院', 420000, 3),
(13099, '武汉工业学院工商学院', 420000, 3),
(13100, '武汉工程大学邮电与信息工程学院　', 420000, 3),
(13101, '武汉科技学院外经贸学院', 420000, 3),
(13102, '江汉大学文理学院', 420000, 3),
(13103, '湖北汽车工业学院科技学院', 420000, 3),
(13104, '湖北经济学院法商学院　', 420000, 3),
(13105, '武汉体育学院体育科技学院', 420000, 3),
(13106, '郧阳医学院药护学院', 420000, 3),
(13107, '襄樊学院理工学院', 420000, 3),
(13108, '中国地质大学江城学院', 420000, 3),
(13109, '长江大学文理学院', 420000, 3),
(13110, '长江大学工程技术学院', 420000, 3),
(13111, '华中师范大学武汉影视工程学院', 420000, 3),
(13112, '武汉大学东湖分校', 420000, 3),
(13113, '中南财经政法武汉学院', 420000, 3),
(13114, '华中科技大学武昌分校　', 420000, 3),
(14001, '湖南师大', 430000, 3),
(14002, '中南大学', 430000, 3),
(14003, '湖南大学', 430000, 3),
(14004, '长沙理工', 430000, 3),
(14005, '湖南农大', 430000, 3),
(14006, '湖南中医药', 430000, 3),
(14007, '中南林业科大', 430000, 3),
(14008, '长沙学院', 430000, 3),
(14009, '长沙医学院', 430000, 3),
(14010, '湖南涉外经济', 430000, 3),
(14011, '湖南商学院', 430000, 3),
(14012, '湖南人文科技', 430000, 3),
(14013, '湘潭大学', 430000, 3),
(14014, '湖南科大', 430000, 3),
(14015, '湖南工程学院', 430000, 3),
(14016, '南华大学', 430000, 3),
(14017, '吉首大学', 430000, 3),
(14018, '湖南工大', 430000, 3),
(14019, '湖南城市', 430000, 3),
(14020, '湖南理工学院', 430000, 3),
(14021, '湘南学院', 430000, 3),
(14022, '衡阳师院', 430000, 3),
(14023, '湖南文理', 430000, 3),
(14024, '怀化学院', 430000, 3),
(14025, '湖南科技学院', 430000, 3),
(14026, '邵阳学院', 430000, 3),
(14027, '保险职业学院', 430000, 3),
(14028, '长沙电力职业技术学院', 430000, 3),
(14029, '长沙航空职业学院', 430000, 3),
(14030, '长沙环境保护职业技术学院', 430000, 3),
(14031, '长沙民政职业技术学院', 430000, 3),
(14032, '长沙南方职业学院', 430000, 3),
(14033, '长沙商贸旅游职业技术学院', 430000, 3),
(14034, '长沙师范专科学校', 430000, 3),
(14035, '长沙通信职业技术学院', 430000, 3),
(14036, '长沙职工大学', 430000, 3),
(14037, '长沙职业技术学院', 430000, 3),
(14038, '常德职业技术学院', 430000, 3),
(14039, '郴州职业技术学院', 430000, 3),
(14040, '衡阳财经工业职业技术学院', 430000, 3),
(14041, '湖南安全技术职业学院', 430000, 3),
(14042, '湖南财经高等专科学校', 430000, 3),
(14043, '湖南城建职业技术学院', 430000, 3),
(14044, '湖南大众传媒学院', 430000, 3),
(14045, '湖南第一师范', 430000, 3),
(14046, '湖南对外经济贸易职业学院', 430000, 3),
(14047, '湖南工程职业技术学院', 430000, 3),
(14048, '湖南工学院', 430000, 3),
(14049, '湖南工业职业技术学院', 430000, 3),
(14050, '湖南工艺美术职业学院', 430000, 3),
(14051, '湖南公安高等专科学校', 430000, 3),
(14052, '湖南广播电视大学', 430000, 3),
(14053, '湖南化工职业技术学院', 430000, 3),
(14054, '湖南环境生物职业技术学院', 430000, 3),
(14055, '湖南机电职业技术学院', 430000, 3),
(14056, '湖南建材高等专科学校', 430000, 3),
(14057, '湖南交通工程职业技术学院', 430000, 3),
(14058, '湖南交通职业技术学院', 430000, 3),
(14059, '湖南经济干部管理学院', 430000, 3),
(14060, '湖南九嶷职业技术学院', 430000, 3),
(14061, '湖南科技经贸职业学院', 430000, 3),
(14062, '湖南科技职业技术学院', 430000, 3),
(14063, '湖南理工职业技术学院', 430000, 3),
(14064, '湖南娄底远东职业学校', 430000, 3),
(14065, '湖南民族职业学院', 430000, 3),
(14066, '湖南农业大学国际学院', 430000, 3),
(14067, '湖南女子大学', 430000, 3),
(14068, '湖南软件职业技术学院', 430000, 3),
(14069, '湖南商务职业技术学院', 430000, 3),
(14070, '湖南生物环境职业技术学院', 430000, 3),
(14071, '湖南生物机电职业技术学院', 430000, 3),
(14072, '湖南省水利水电职业技术学院', 430000, 3),
(14073, '湖南石油化工职业技术学院', 430000, 3),
(14074, '湖南税务高等专科学校', 430000, 3),
(14075, '湖南司法警官职业技术学院', 430000, 3),
(14076, '湖南体育职业学院', 430000, 3),
(14077, '湖南铁道职业技术学院', 430000, 3),
(14078, '湖南铁路科技职业技术学院', 430000, 3),
(14079, '湖南同德职业学院', 430000, 3),
(14080, '湖南网络工程职业学院', 430000, 3),
(14081, '湖南现代物流职业技术学院', 430000, 3),
(14082, '湖南信息科学职业学院', 430000, 3),
(14083, '湖南信息职业技术学院', 430000, 3),
(14084, '湖南行政学院', 430000, 3),
(14085, '湖南冶金职业技术学院', 430000, 3),
(14086, '湖南艺术职业学院', 430000, 3),
(14087, '湖南中医药高等专科学校', 430000, 3),
(14088, '怀化医学高等专科学校', 430000, 3),
(14089, '怀化职业技术学院', 430000, 3),
(14090, '娄底理工学院', 430000, 3),
(14091, '娄底市卫生学校', 430000, 3),
(14092, '娄底职业技术学院', 430000, 3),
(14093, '邵阳医学高等专科学校', 430000, 3),
(14094, '邵阳职业技术学院', 430000, 3),
(14095, '湘潭职业技术学院', 430000, 3),
(14096, '湘西民族职业技术学院', 430000, 3),
(14097, '潇湘职业学院', 430000, 3),
(14098, '益阳职业技术学院', 430000, 3),
(14099, '永州职业技术学院', 430000, 3),
(14100, '岳阳职业技术学院', 430000, 3),
(14101, '张家界航空工业职业技术学院', 430000, 3),
(14102, '株洲师范高等专科学校', 430000, 3),
(14103, '株洲职业技术学院', 430000, 3),
(14104, '湘潭大学兴湘学院', 430000, 3),
(14105, '湖南工业大学科技学院', 430000, 3),
(14106, '湖南科技大学潇湘学院', 430000, 3),
(14107, '南华大学船山学院', 430000, 3),
(14108, '湖南商学院北津学院', 430000, 3),
(14109, '湖南师范大学树达学院', 430000, 3),
(14110, '湖南农业大学东方科技学院', 430000, 3),
(14111, '中南林业科技大学涉外学院', 430000, 3),
(14112, '湖南文理学院芙蓉学院', 430000, 3),
(14113, '湖南理工学院南湖学院', 430000, 3),
(14114, '衡阳师范学院南岳学院', 430000, 3),
(14115, '湖南工程学院应用技术学院', 430000, 3),
(14116, '湖南中医药大学湘杏学院', 430000, 3),
(14117, '吉首大学张家界学院', 430000, 3),
(14118, '长沙理工大学城南学院', 430000, 3),
(14119, '湖南都市职业学院', 430000, 3),
(14120, '湖南电子科技职业学院', 430000, 3),
(14121, '湖南外国语职业学院', 430000, 3),
(15001, '海南大学', 460000, 3),
(15002, '海南医学院', 460000, 3),
(15003, '海南师范大学', 460000, 3),
(15004, '华南热带农大', 460000, 3),
(15005, '琼州大学', 460000, 3),
(15006, '海口经济职业技术学院', 460000, 3),
(15007, '海南经贸职业技术学院', 460000, 3),
(15008, '海南软件职业技术学院', 460000, 3),
(15009, '海南外国语职业学院', 460000, 3),
(15010, '海南万和信息职业技术学院', 460000, 3),
(15011, '海南政法职业学院', 460000, 3),
(15012, '海南职业技术学院', 460000, 3),
(15013, '琼台师范高等专科学校', 460000, 3),
(15014, '三亚航空旅游职业学院', 460000, 3),
(15015, '三亚卓达旅游职业学院', 460000, 3),
(15016, '海南大学三亚学院', 460000, 3),
(16001, '南京大学', 320000, 3),
(16002, '河海大学', 320000, 3),
(16003, '南京师大', 320000, 3),
(16004, '南京理工', 320000, 3),
(16005, '东南大学', 320000, 3),
(16006, '南航', 320000, 3),
(16007, '南京财经', 320000, 3),
(16008, '南京医科大', 320000, 3),
(16009, '南京工大', 320000, 3),
(16010, '南京农大', 320000, 3),
(16011, '南京林大', 320000, 3),
(16012, '南邮', 320000, 3),
(16013, '南京信息工程大学', 320000, 3),
(16014, '南京中医药', 320000, 3),
(16015, '南京工程', 320000, 3),
(16016, '金陵科技学院', 320000, 3),
(16017, '晓庄学院', 320000, 3),
(16018, '南京审计学院', 320000, 3),
(16019, '江苏警官学院', 320000, 3),
(16020, '南京体院', 320000, 3),
(16021, '南京艺术学院', 320000, 3),
(16022, '三江学院', 320000, 3),
(16023, '中国药科大', 320000, 3),
(16024, '苏州大学', 320000, 3),
(16025, '江南大学', 320000, 3),
(16026, '中国矿大（徐州）', 320000, 3),
(16027, '徐州师大', 320000, 3),
(16028, '徐州工程', 320000, 3),
(16029, '徐州医学院', 320000, 3),
(16030, '扬州大学', 320000, 3),
(16031, '江苏大学', 320000, 3),
(16032, '江苏科大', 320000, 3),
(16033, '南通大学', 320000, 3),
(16034, '江苏工业', 320000, 3),
(16035, '常州工学院', 320000, 3),
(16036, '江苏技术师范', 320000, 3),
(16037, '淮阴工学院', 320000, 3),
(16038, '淮阴师范', 320000, 3),
(16039, '淮海工学院', 320000, 3),
(16040, '盐城工学院', 320000, 3),
(16041, '盐城师范学院', 320000, 3),
(16042, '常熟理工', 320000, 3),
(16043, '常州纺织服装职业技术学院', 320000, 3),
(16044, '常州工程职业技术学院', 320000, 3),
(16045, '常州机电职业技术学院', 320000, 3),
(16046, '常州轻工职业技术学院', 320000, 3),
(16047, '常州信息职业技术学院', 320000, 3),
(16048, '硅湖职业技术学院', 320000, 3),
(16049, '河海大学常州校区', 320000, 3),
(16050, '淮安信息职业技术学院', 320000, 3),
(16051, '建东职业技术学院', 320000, 3),
(16052, '健雄职业技术学院', 320000, 3),
(16053, '江海职业技术学院', 320000, 3),
(16054, '江南影视艺术职业学院', 320000, 3),
(16055, '江苏财经职业技术学院', 320000, 3),
(16056, '江苏海事职业技术学院', 320000, 3),
(16057, '江苏经贸职业技术学院', 320000, 3),
(16058, '江苏联合职业技术学院', 320000, 3),
(16059, '江苏农林职业技术学院', 320000, 3),
(16060, '江苏食品职业技术学院', 320000, 3),
(16061, '江苏信息职业技术学院', 320000, 3),
(16062, '江苏畜牧兽医职业技术学院', 320000, 3),
(16063, '江阴职业技术学院', 320000, 3),
(16064, '金肯职业技术学院', 320000, 3),
(16065, '金山职业技术学院', 320000, 3),
(16066, '九州职业技术学院', 320000, 3),
(16067, '昆山登云科技职业学院', 320000, 3),
(16068, '连云港师范高等专科学校', 320000, 3),
(16069, '连云港职业技术学院', 320000, 3),
(16070, '民办明达职业技术学院', 320000, 3),
(16071, '南京动力高等专科学校', 320000, 3),
(16072, '南京工业职业技术学院', 320000, 3),
(16073, '南京化工职业技术学院', 320000, 3),
(16074, '南京交通职业技术学院', 320000, 3),
(16075, '南京人口管理干部学院', 320000, 3),
(16076, '南京森林公安高等专科学校', 320000, 3),
(16077, '南京视觉艺术职业学院', 320000, 3),
(16078, '南京特殊教育职业技术学院', 320000, 3),
(16079, '南京铁道职业技术学院', 320000, 3),
(16080, '南京信息职业技术学院', 320000, 3),
(16081, '南通纺织职业技术学院', 320000, 3),
(16082, '南通航运职业技术学院', 320000, 3),
(16083, '南通农业职业技术学院', 320000, 3),
(16084, '南通职业大学', 320000, 3),
(16085, '培尔职业技术学院', 320000, 3),
(16086, '沙洲职业工学院', 320000, 3),
(16087, '苏州港大思培科技职业学院', 320000, 3),
(16088, '苏州工业园区职业技术学院', 320000, 3),
(16089, '苏州工业职业技术学院', 320000, 3),
(16090, '苏州工艺美术职业技术学院', 320000, 3),
(16091, '苏州经贸职业技术学院', 320000, 3),
(16092, '苏州科技大学', 320000, 3),
(16093, '苏州农业职业技术学院', 320000, 3),
(16094, '苏州托普信息职业技术学院', 320000, 3),
(16095, '苏州职业大学', 320000, 3),
(16096, '宿迁学院', 320000, 3),
(16097, '泰州师范高等专科学校', 320000, 3),
(16098, '泰州职业技术学院', 320000, 3),
(16099, '无锡城市职业技术学院', 320000, 3),
(16100, '无锡工艺职业技术学院', 320000, 3),
(16101, '无锡科技职业学院', 320000, 3),
(16102, '无锡南洋职业技术学院', 320000, 3),
(16103, '无锡轻工大学', 320000, 3),
(16104, '无锡商业职业技术学院', 320000, 3),
(16105, '无锡职业技术学院', 320000, 3),
(16106, '徐州工业职业技术学院', 320000, 3),
(16107, '徐州广播电视大学', 320000, 3),
(16108, '徐州建筑职业技术学院', 320000, 3),
(16109, '徐州教育学院', 320000, 3),
(16110, '徐州工程学院', 320000, 3),
(16111, '炎黄职业技术学院', 320000, 3),
(16112, '盐城纺织职业技术学院', 320000, 3),
(16113, '扬州工业职业技术学院', 320000, 3),
(16114, '扬州环境资源管理学院', 320000, 3),
(16115, '扬州环境资源职业技术学院', 320000, 3),
(16116, '扬州教育学院', 320000, 3),
(16117, '扬州职业大学', 320000, 3),
(16118, '应天职业技术学院', 320000, 3),
(16119, '镇江市高等专科学校', 320000, 3),
(16120, '正德职业技术学院', 320000, 3),
(16121, '中国传媒大学南广学院', 320000, 3),
(16122, '钟山职业技术学院', 320000, 3),
(16123, '紫琅职业技术学院', 320000, 3),
(16124, '江苏广播电视大学', 320000, 3),
(16125, '江苏教育学院', 320000, 3),
(16126, '徐州师范高等专科学校', 320000, 3),
(16127, '江苏省省级机关管理干部学院', 320000, 3),
(16128, '江苏职工医科大学', 320000, 3),
(16129, '苏州卫生职业技术学院', 320000, 3),
(16130, '盐城卫生职业技术学院', 320000, 3),
(16131, '金陵旅馆管理干部学院', 320000, 3),
(16132, '南京市广播电视大学', 320000, 3),
(17001, '江西财经', 360000, 3),
(17002, '南昌大学', 360000, 3),
(17003, '华东交通大学', 360000, 3),
(17004, '南昌航空大学', 360000, 3),
(17005, '南昌工程', 360000, 3),
(17006, '南昌理工', 360000, 3),
(17007, '江西中医学院', 360000, 3),
(17008, '江西科技师范学院', 360000, 3),
(17009, '蓝天学院', 360000, 3),
(17010, '江西农大', 360000, 3),
(17011, '江西师大', 360000, 3),
(17012, '东华理工大学', 360000, 3),
(17013, '景德镇陶瓷学院', 360000, 3),
(17014, '赣南医学院', 360000, 3),
(17015, '赣南师范学院', 360000, 3),
(17016, '江西理工', 360000, 3),
(17017, '上饶师范学院', 360000, 3),
(17018, '井冈山大学', 360000, 3),
(17019, '宜春学院', 360000, 3),
(17020, '九江学院', 360000, 3),
(17021, '抚州职业技术学院', 360000, 3),
(17022, '赣南教育学院', 360000, 3),
(17023, '赣西科技职业学院', 360000, 3),
(17024, '江西财经职业学院', 360000, 3),
(17025, '江西城市学院', 360000, 3),
(17026, '江西大宇学院', 360000, 3),
(17027, '江西电力职业技术学院', 360000, 3),
(17028, '江西服装职业技术学院', 360000, 3),
(17029, '江西赣江职业技术学院', 360000, 3),
(17030, '江西工程职业学院', 360000, 3),
(17031, '江西工业工程职业技术学院', 360000, 3),
(17032, '江西工业贸易职业技术学院', 360000, 3),
(17033, '江西工业职业技术学院', 360000, 3),
(17034, '江西公安专科学校', 360000, 3),
(17035, '江西航空职业技术学院', 360000, 3),
(17036, '江西护理职业技术学院', 360000, 3),
(17037, '江西环境工程职业学院', 360000, 3),
(17038, '江西机电职业技术学院', 360000, 3),
(17039, '江西建设职业技术学院', 360000, 3),
(17040, '江西交通职业技术学院', 360000, 3),
(17041, '江西教育学院', 360000, 3),
(17042, '江西经济管理干部学院', 360000, 3),
(17043, '江西经济管理职业学院', 360000, 3),
(17044, '江西科技职业学院', 360000, 3),
(17045, '江西旅游商贸职业学院', 360000, 3),
(17046, '江西南昌教育学院', 360000, 3),
(17047, '江西农业工程职业学院', 360000, 3),
(17048, '江西青年职业学院', 360000, 3),
(17049, '江西轻工职业技术学院', 360000, 3),
(17050, '江西生物科技职业学院', 360000, 3),
(17051, '江西省广播电视大学', 360000, 3),
(17052, '江西司法警官职业学院', 360000, 3),
(17053, '江西陶瓷工艺美术职业学院', 360000, 3),
(17054, '江西外语外贸职业学院', 360000, 3),
(17055, '江西先锋软件职业技术学院', 360000, 3),
(17056, '江西现代职业技术学院', 360000, 3),
(17057, '江西信息应用职业技术学院', 360000, 3),
(17058, '江西行政管理干部学院', 360000, 3),
(17059, '江西艺术职业学院', 360000, 3),
(17060, '江西应用技术职业学院', 360000, 3),
(17061, '江西渝州科技职业学院', 360000, 3),
(17062, '江西制造职业技术学院', 360000, 3),
(17063, '江西中医药高等专科学校', 360000, 3),
(17064, '景德镇高等专科学校', 360000, 3),
(17065, '九江职业大学', 360000, 3),
(17066, '九江职业技术学院', 360000, 3),
(17067, '南昌钢铁职工大学', 360000, 3),
(17068, '南昌师范高等专科学校', 360000, 3),
(17069, '南昌市业余大学', 360000, 3),
(17070, '南昌市职工科技大学', 360000, 3),
(17071, '萍乡高等专科学校', 360000, 3),
(17072, '上饶职业技术学院', 360000, 3),
(17073, '新余钢铁有限责任公司职工大学', 360000, 3),
(17074, '新余高等专科学校', 360000, 3),
(17075, '宜春职业技术学院', 360000, 3),
(17076, '鹰潭职业技术学院', 360000, 3),
(17077, '江西应用工程职业学院', 360000, 3),
(17078, '江西农业大学南昌商学院', 360000, 3),
(17079, '江西师范大学科学技术学院', 360000, 3),
(17080, '华东交通大学理工学院', 360000, 3),
(17081, '江西理工大学应用科学学院', 360000, 3),
(17082, '东华理工大学长江学院', 360000, 3),
(17083, '南昌航空大学科技学院', 360000, 3),
(17084, '江西中医学院科技学院', 360000, 3),
(17085, '江西财经大学现代经济管理学院', 360000, 3),
(17086, '赣南师范学院科技学院', 360000, 3),
(17087, '景德镇陶瓷学院科技艺术学院', 360000, 3),
(17088, '江西科技师范学院理工学院', 360000, 3),
(17089, '南昌大学共青学院', 360000, 3),
(17090, '南昌大学科学技术学院', 360000, 3),
(18001, '华南理工大学', 440000, 3),
(18002, '中山大学', 440000, 3),
(18003, '暨南大学', 440000, 3),
(18004, '华南师范大学', 440000, 3),
(18005, '广东工业大学', 440000, 3),
(18006, '华南农业大学', 440000, 3),
(18007, '广州大学', 440000, 3),
(18008, '广东外语外贸大学', 440000, 3),
(18009, '广州中医药大学', 440000, 3),
(18010, '南方医科大学', 440000, 3),
(18011, '仲恺农业技术学院', 440000, 3),
(18012, '广州医学院', 440000, 3),
(18013, '广东药学院', 440000, 3),
(18014, '广东金融学院', 440000, 3),
(18015, '广东商学院', 440000, 3),
(18016, '广东警官学院', 440000, 3),
(18017, '广州体育学院', 440000, 3),
(18018, '广州美术学院', 440000, 3),
(18019, '星海音乐学院', 440000, 3),
(18020, '广东技术师范学院', 440000, 3),
(18021, '广东培正学院', 440000, 3),
(18022, '广东白云学院', 440000, 3),
(18023, '深圳大学', 440000, 3),
(18024, '汕头大学', 440000, 3),
(18025, '五邑大学', 440000, 3),
(18026, '肇庆学院', 440000, 3),
(18027, '茂名学院', 440000, 3),
(18028, '东莞理工', 440000, 3),
(18029, '广东医学院', 440000, 3),
(18030, '湛江师范', 440000, 3),
(18031, '广东海洋', 440000, 3),
(18032, '韶关学院', 440000, 3),
(18033, '韩山师范', 440000, 3),
(18034, '嘉应学院', 440000, 3),
(18035, '惠州学院', 440000, 3),
(18036, '佛山科技学院', 440000, 3),
(18037, '中山大学南方学院', 440000, 3),
(18038, '广东外语外贸大学南国商学院', 440000, 3),
(18039, '华南理工大学广州汽车学院', 440000, 3),
(18040, '北京理工大学珠海学院', 440000, 3),
(18041, '北京师范大学珠海分校', 440000, 3),
(18042, '电子科技大学中山学院', 440000, 3),
(18043, '东莞理工学院城市学院', 440000, 3),
(18044, '东莞南博职业技术学院', 440000, 3),
(18045, '番禺职业技术学院', 440000, 3),
(18046, '佛山职业技术学院', 440000, 3),
(18047, '广东财经职业学院', 440000, 3),
(18048, '广东潮汕职业技术学院', 440000, 3),
(18049, '广东纺织职业技术学院', 440000, 3),
(18050, '广东工程职业技术学院', 440000, 3),
(18051, '广东工贸职业技术学院', 440000, 3),
(18052, '广东工业大学华立学院', 440000, 3),
(18053, '广东海洋大学寸金学院', 440000, 3),
(18054, '广东海洋大学海滨学院', 440000, 3),
(18055, '广东化工制药职业技术学院', 440000, 3),
(18056, '广东机电职业技术学院', 440000, 3),
(18057, '广东技术师范学院北校区', 440000, 3),
(18058, '广东建华职业学院', 440000, 3),
(18059, '广东建设职业技术学院', 440000, 3),
(18060, '广东交通职业技术学院', 440000, 3),
(18061, '广东教育学院', 440000, 3),
(18062, '广东科学技术职业学院', 440000, 3),
(18063, '广东理工职业学院', 440000, 3),
(18064, '广东岭南职业技术学院', 440000, 3),
(18065, '广东农工商职业技术学院', 440000, 3),
(18066, '广东女子职业技术学院', 440000, 3),
(18067, '广东轻工职业技术学院', 440000, 3),
(18068, '广东省新闻出版技师学院', 440000, 3),
(18069, '广东水利电力职业技术学院', 440000, 3),
(18070, '广东司法警官职业学院', 440000, 3),
(18071, '广东松山职业技术学院', 440000, 3),
(18072, '广东体育职业技术学院', 440000, 3),
(18073, '广东外语外贸大学公开学院', 440000, 3),
(18074, '广东外语艺术职业学院', 440000, 3),
(18075, '广东文艺职业学院', 440000, 3),
(18076, '广东新安职业技术学院', 440000, 3),
(18077, '广东行政职业学院', 440000, 3),
(18078, '广东亚视演艺职业学院', 440000, 3),
(18079, '广东邮电职业技术学院', 440000, 3),
(18080, '广州城市职业学院', 440000, 3),
(18081, '广州大学城建学院', 440000, 3),
(18082, '广州大学华软软件学院', 440000, 3),
(18083, '广州大学市政技术学院', 440000, 3),
(18084, '广州大学松田学院', 440000, 3),
(18085, '广州工程技术职业学院', 440000, 3),
(18086, '广州工商职业技术学院', 440000, 3),
(18087, '广州航海高等专科学校', 440000, 3),
(18088, '广州华立科技职业学院', 440000, 3),
(18089, '广州华南商贸职业学院', 440000, 3),
(18090, '广州康大职业技术学院', 440000, 3),
(18091, '广州科技贸易职业学院', 440000, 3),
(18092, '广州科技职业技术学院', 440000, 3),
(18093, '广州民航职业技术学院', 440000, 3),
(18094, '广州南洋理工职业学院', 440000, 3),
(18095, '广州涉外经济职业技术学院', 440000, 3),
(18096, '广州体育职业技术学院', 440000, 3),
(18097, '广州铁路职业技术学院', 440000, 3),
(18098, '广州现代信息工程职业技术学院', 440000, 3),
(18099, '河源职业技术学院', 440000, 3),
(18100, '华澳国际会计学院', 440000, 3),
(18101, '华南农业大学珠江学院', 440000, 3),
(18102, '华南师范大学增城学院', 440000, 3),
(18103, '惠州经济职业技术学院', 440000, 3),
(18104, '吉林大学珠海学院', 440000, 3),
(18105, '江门职业技术学院', 440000, 3),
(18106, '揭阳职业技术学院', 440000, 3),
(18107, '罗定职业技术学院', 440000, 3),
(18108, '茂名职业技术学院', 440000, 3),
(18109, '南华工商学院', 440000, 3),
(18110, '南海东软信息技术学院', 440000, 3),
(18111, '清远职业技术学院', 440000, 3),
(18112, '汕头职业技术学院', 440000, 3),
(18113, '汕尾职业技术学院', 440000, 3),
(18114, '深圳信息职业技术学院', 440000, 3),
(18115, '深圳振西科技学院', 440000, 3),
(18116, '深圳职业技术学院', 440000, 3);
INSERT INTO `pw_school` (`schoolid`, `schoolname`, `areaid`, `type`) VALUES
(18117, '顺德职业技术学院', 440000, 3),
(18118, '私立华联学院', 440000, 3),
(18119, '阳江职业技术学院', 440000, 3),
(18120, '湛江技师学院', 440000, 3),
(18121, '湛江教育学院', 440000, 3),
(18122, '湛师基础教育学院', 440000, 3),
(18123, '肇庆工商职业技术学院', 440000, 3),
(18124, '肇庆科技职业技术学院', 440000, 3),
(18125, '肇庆医学高等专科学校', 440000, 3),
(18126, '中山火炬职业技术学院', 440000, 3),
(18127, '珠海城市职业技术学院', 440000, 3),
(18128, '珠海艺术职业学院', 440000, 3),
(18129, '遵义医学院珠海校区', 440000, 3),
(18130, '广东技术师范天河分院', 440000, 3),
(18131, '广东科学技术职业学院国防工大', 440000, 3),
(18132, '茂名广播电视大学', 440000, 3),
(18133, '广东石油化工职业技术学校', 440000, 3),
(18134, '中山大学新华学院', 440000, 3),
(18135, '广东商学院华商学院', 440000, 3),
(18136, '南开大学深圳金融工程学院', 440000, 3),
(18137, '北京师范大学－香港浸会大学联合国际学院', 440000, 3),
(18138, '广州金桥管理干部学院', 440000, 3),
(18139, '广州大学纺织服装学院', 440000, 3),
(18140, '华南师范大学南海校区', 440000, 3),
(18141, '暨南大学深圳旅游学院', 440000, 3),
(18142, '暨南大学珠海学院', 440000, 3),
(19001, '广西大学', 450000, 3),
(19002, '广西医科大学', 450000, 3),
(19003, '广西民族大学', 450000, 3),
(19004, '广西中医学院', 450000, 3),
(19005, '广西师范学院', 450000, 3),
(19006, '广西财经学院', 450000, 3),
(19007, '广西艺术学院', 450000, 3),
(19008, '桂林电子科技大学', 450000, 3),
(19009, '广西师范大学', 450000, 3),
(19010, '桂林工学院', 450000, 3),
(19011, '桂林医学院', 450000, 3),
(19012, '广西工学院', 450000, 3),
(19013, '右江民族医学院', 450000, 3),
(19014, '百色学院', 450000, 3),
(19015, '河池学院', 450000, 3),
(19016, '玉林师范学院', 450000, 3),
(19017, '钦州学院', 450000, 3),
(19018, '贺州学院', 450000, 3),
(19019, '梧州学院', 450000, 3),
(19020, '广西大学行健文理学院', 450000, 3),
(19021, '广西师范大学漓江学院', 450000, 3),
(19022, '桂林电子科技大学信息科技学院', 450000, 3),
(19023, '桂林工学院博文管理学院', 450000, 3),
(19024, '广西工学院鹿山学院', 450000, 3),
(19025, '广西师范学院师园学院', 450000, 3),
(19026, '广西民族大学相思湖学院', 450000, 3),
(19027, '广西中医学院赛恩斯新医药学院', 450000, 3),
(19028, '北海宏源足球职业学院', 450000, 3),
(19029, '北海艺术设计职业学院', 450000, 3),
(19030, '北海职业学院', 450000, 3),
(19031, '广西城市职业学院', 450000, 3),
(19032, '广西电力职业技术学院', 450000, 3),
(19033, '广西东方外语职业学院', 450000, 3),
(19034, '广西工商职业技术学院', 450000, 3),
(19035, '广西工业职业技术学院', 450000, 3),
(19036, '广西国际商务职业技术学院', 450000, 3),
(19037, '广西机电职业技术学院', 450000, 3),
(19038, '广西建设职业技术学院', 450000, 3),
(19039, '广西交通职业技术学院', 450000, 3),
(19040, '广西经济管理干部学院', 450000, 3),
(19041, '广西经贸职业技术学院', 450000, 3),
(19042, '广西警管高等专科学校', 450000, 3),
(19043, '广西农业职业技术学院', 450000, 3),
(19044, '广西轻工高级技工学校', 450000, 3),
(19045, '广西生态工程职业技术学院', 450000, 3),
(19046, '广西水利电力职业技术学院', 450000, 3),
(19047, '广西体育高等专科学校', 450000, 3),
(19048, '广西演艺职业学院', 450000, 3),
(19049, '广西英华国际职业学院', 450000, 3),
(19050, '广西邕江大学', 450000, 3),
(19051, '广西幼儿师范学校', 450000, 3),
(19052, '广西职业技术学院', 450000, 3),
(19053, '贵港职业学院', 450000, 3),
(19054, '桂林航天工业高等专科学校', 450000, 3),
(19055, '桂林旅游高等专科学校', 450000, 3),
(19056, '桂林山水职业学院', 450000, 3),
(19057, '桂林师范高等专科学校', 450000, 3),
(19058, '河池职业学院', 450000, 3),
(19059, '柳州师范高等专科学校', 450000, 3),
(19060, '柳州医学高等专科学校', 450000, 3),
(19061, '柳州运输职业技术学院', 450000, 3),
(19062, '柳州职业技术学院', 450000, 3),
(19063, '南宁师范高等专科学校', 450000, 3),
(19064, '南宁职业技术学院', 450000, 3),
(19065, '南宁地区教育学院', 450000, 3),
(19066, '北京航空航天大学北海学院', 450000, 3),
(19067, '桂林工学院南宁分院', 450000, 3),
(19068, '百色职业学院', 450000, 3),
(20001, '昆明理工', 530000, 3),
(20002, '云南农大', 530000, 3),
(20003, '云南师大', 530000, 3),
(20004, '云南财经', 530000, 3),
(20005, '云南民大', 530000, 3),
(20006, '西南林学院', 530000, 3),
(20007, '昆明医学院', 530000, 3),
(20008, '云南中医学院', 530000, 3),
(20009, '红河学院', 530000, 3),
(20010, '云南警官学院', 530000, 3),
(20011, '云南艺术', 530000, 3),
(20012, '云南大学', 530000, 3),
(20013, '曲靖师范', 530000, 3),
(20014, '玉溪师院', 530000, 3),
(20015, '楚雄师院', 530000, 3),
(20016, '大理学院', 530000, 3),
(20017, '保山师范高等专科学校', 530000, 3),
(20018, '保山中医药高等专科学校', 530000, 3),
(20019, '楚雄医药高等专科学校', 530000, 3),
(20020, '德宏师范高等专科学校', 530000, 3),
(20021, '云南大学滇池学院', 530000, 3),
(20022, '昆明大学', 530000, 3),
(20023, '昆明工业职业技术学院', 530000, 3),
(20024, '昆明师范高等专科学校', 530000, 3),
(20025, '昆明扬帆职业技术学院', 530000, 3),
(20026, '昆明冶金高等专科学校', 530000, 3),
(20027, '昆明艺术职业学院', 530000, 3),
(20028, '丽江师范高等专科学校', 530000, 3),
(20029, '曲靖医学高等专科学校', 530000, 3),
(20030, '思茅师范高等专科学校', 530000, 3),
(20031, '文山师范高等专科学校', 530000, 3),
(20032, '西双版纳职业技术学院', 530000, 3),
(20033, '玉溪农业职业技术学院', 530000, 3),
(20034, '云南爱因森软件职业学院', 530000, 3),
(20035, '云南北美职业学院', 530000, 3),
(20036, '云南广播电视大学', 530000, 3),
(20037, '云南国防工业职业技术学院', 530000, 3),
(20038, '云南国土资源职业学院', 530000, 3),
(20039, '云南机电职业技术学院', 530000, 3),
(20040, '云南交通职业技术学院', 530000, 3),
(20041, '云南经济管理职业学院', 530000, 3),
(20042, '云南科技信息职业技术学院', 530000, 3),
(20043, '云南林业职业技术学院', 530000, 3),
(20044, '云南能源职业技术学院', 530000, 3),
(20045, '云南农业职业技术学院', 530000, 3),
(20046, '云南热带作物职业学院', 530000, 3),
(20047, '云南省林业科学院', 530000, 3),
(20048, '云南师范大学商学院', 530000, 3),
(20049, '云南司法警官职业学院', 530000, 3),
(20050, '云南体育运动职业技术学院', 530000, 3),
(20051, '云南文化艺术职业学院', 530000, 3),
(20052, '云南新兴职业学院', 530000, 3),
(20053, '云南医学高等专科学校', 530000, 3),
(20054, '云南昭通师范专科学校', 530000, 3),
(20055, '昭通师范高等专科学校', 530000, 3),
(20056, '昆明学院', 530000, 3),
(20057, '昆明理工大学津桥学院', 530000, 3),
(20058, '云南师范大学文理学院', 530000, 3),
(20059, '昆明医学院海源学院', 530000, 3),
(20060, '云南艺术学院文华学院', 530000, 3),
(20061, '云南大学旅游文化学院', 530000, 3),
(20062, '临沧师范高等专科学校', 530000, 3),
(21001, '贵州大学', 520000, 3),
(21002, '贵阳医学院', 520000, 3),
(21003, '贵阳中医学院', 520000, 3),
(21004, '贵州财经', 520000, 3),
(21005, '贵州民族', 520000, 3),
(21006, '贵阳学院', 520000, 3),
(21007, '贵州师大', 520000, 3),
(21008, '铜仁学院', 520000, 3),
(21009, '遵义医学院', 520000, 3),
(21010, '遵义师范', 520000, 3),
(21011, '毕节学院', 520000, 3),
(21012, '黔南师院', 520000, 3),
(21013, '安顺学院', 520000, 3),
(21014, '凯里学院', 520000, 3),
(21015, '安顺职业技术学院', 520000, 3),
(21016, '贵州电力职业技术学院', 520000, 3),
(21017, '贵州电子信息职业技术学院', 520000, 3),
(21018, '贵州航天职业技术学院', 520000, 3),
(21019, '贵州鸿源管理工程职业学院', 520000, 3),
(21020, '贵州交通职业技术学院', 520000, 3),
(21021, '贵州警官职业学院', 520000, 3),
(21022, '贵州科技工程职业学院', 520000, 3),
(21023, '贵州理工职业技术学院', 520000, 3),
(21024, '贵州轻工职业技术学院', 520000, 3),
(21025, '贵州商业高等专科学校', 520000, 3),
(21026, '六盘水师范高等专科学校', 520000, 3),
(21027, '六盘水职业技术学院', 520000, 3),
(21028, '黔东南民族职业技术学院', 520000, 3),
(21029, '黔南民族医学高等专科学校', 520000, 3),
(21030, '黔南民族职业技术学院', 520000, 3),
(21031, '黔西南民族师范高等专科学校', 520000, 3),
(21032, '黔西南民族职业技术学院', 520000, 3),
(21033, '铜仁职业技术学院', 520000, 3),
(21034, '遵义医药高等专科学校', 520000, 3),
(21035, '遵义职业技术学院', 520000, 3),
(21036, '贵州财经学院商务学院', 520000, 3),
(21037, '贵州民族学院人文科技学院', 520000, 3),
(21038, '贵州师范大学求是学院', 520000, 3),
(21039, '贵阳医学院神奇民族医药学院', 520000, 3),
(21040, '遵义医学院医学与科技学院', 520000, 3),
(21041, '贵阳中医学院时珍学院', 520000, 3),
(21042, '贵州大学明德学院', 520000, 3),
(21043, '贵州大学科技学院', 520000, 3),
(21044, '贵阳护理职业学院', 520000, 3),
(21045, '贵州亚泰职业学院', 520000, 3),
(21046, '贵州教育学院', 520000, 3),
(22001, '四川大学', 510000, 3),
(22002, '四川农大', 510000, 3),
(22003, '电子科大', 510000, 3),
(22004, '西南交大', 510000, 3),
(22005, '成都理工', 510000, 3),
(22006, '四川师大', 510000, 3),
(22007, '西南民族大学', 510000, 3),
(22008, '成都大学', 510000, 3),
(22009, '西南财经', 510000, 3),
(22010, '西华大学', 510000, 3),
(22011, '成都中医药', 510000, 3),
(22012, '成都信息工程大学', 510000, 3),
(22013, '成都医学院', 510000, 3),
(22014, '四川文理学院', 510000, 3),
(22015, '成都体院', 510000, 3),
(22016, '四川音乐学院', 510000, 3),
(22017, '西南石油', 510000, 3),
(22018, '中国民航飞行学院', 510000, 3),
(22019, '四川理工', 510000, 3),
(22020, '泸州医学院', 510000, 3),
(22021, '四川警察学院', 510000, 3),
(22022, '川北医学院', 510000, 3),
(22023, '西华师大', 510000, 3),
(22024, '内江师范', 510000, 3),
(22025, '乐山师院', 510000, 3),
(22026, '绵阳师范', 510000, 3),
(22027, '西南科大', 510000, 3),
(22028, '西昌学院', 510000, 3),
(22029, '宜宾学院', 510000, 3),
(22030, '攀枝花学院', 510000, 3),
(22031, '阿坝师范高等专科学校', 510000, 3),
(22032, '成都电子机械高等专科学校', 510000, 3),
(22033, '成都东软信息技术职业学院', 510000, 3),
(22034, '成都纺织高等专科学校', 510000, 3),
(22035, '成都广播电视大学', 510000, 3),
(22036, '成都航空职业技术学院', 510000, 3),
(22037, '成都理工大学广播影视学院', 510000, 3),
(22038, '成都农业科技职业学院', 510000, 3),
(22039, '成都艺术职业学院', 510000, 3),
(22040, '成都职业技术学院', 510000, 3),
(22041, '达州职业技术学院', 510000, 3),
(22042, '电子科技大学成都学院', 510000, 3),
(22043, '广安职业技术学院', 510000, 3),
(22044, '康定民族师范高等专科学校', 510000, 3),
(22045, '乐山职业技术学院', 510000, 3),
(22046, '泸州职业技术学院', 510000, 3),
(22047, '眉山职业技术学院', 510000, 3),
(22048, '绵阳职业技术学院', 510000, 3),
(22049, '民办四川天一学院', 510000, 3),
(22050, '内江职业技术学院', 510000, 3),
(22051, '南充职业技术学院', 510000, 3),
(22052, '四川大学龙泉校区', 510000, 3),
(22053, '四川电力职业技术学院', 510000, 3),
(22054, '四川工程职业技术学院', 510000, 3),
(22055, '四川工商职业技术学院', 510000, 3),
(22056, '四川管理职业学院', 510000, 3),
(22057, '四川广播电视大学', 510000, 3),
(22058, '四川国际标榜职业学院', 510000, 3),
(22059, '四川航天职业技术学院', 510000, 3),
(22060, '四川华新现代职业学院', 510000, 3),
(22061, '四川化工职业技术学院', 510000, 3),
(22062, '四川机电职业技术学院', 510000, 3),
(22063, '四川建筑职业技术学院', 510000, 3),
(22064, '四川交通职业技术学院', 510000, 3),
(22065, '四川教育学院', 510000, 3),
(22066, '四川警安职业学院', 510000, 3),
(22067, '四川烹饪高等专科学校', 510000, 3),
(22068, '四川商务职业学院', 510000, 3),
(22069, '四川师范大学绵阳初等教育学院', 510000, 3),
(22070, '四川水利职业技术学院', 510000, 3),
(22071, '四川司法警官职业学院', 510000, 3),
(22072, '四川托普信息技术职业学院', 510000, 3),
(22073, '四川外语学院成都学院', 510000, 3),
(22074, '四川文化传媒职业学院', 510000, 3),
(22075, '四川信息工程学校', 510000, 3),
(22076, '四川邮电职业技术学院', 510000, 3),
(22077, '四川职业技术学院', 510000, 3),
(22078, '四川中医药高等专科学校', 510000, 3),
(22079, '雅安职业技术学院', 510000, 3),
(22080, '宜宾职业技术学院', 510000, 3),
(22081, '四川大学锦城学院', 510000, 3),
(22082, '四川大学锦江学院', 510000, 3),
(22083, '德阳职业技术学校', 510000, 3),
(22084, '四川信息职业技术学院', 510000, 3),
(22085, '四川艺术职业学院', 510000, 3),
(22086, '四川师范大学成都学院', 510000, 3),
(22087, '四川师范大学文理学院', 510000, 3),
(22088, '成都信息工程学院银杏酒店管理学院', 510000, 3),
(22089, '成都理工大学工程技术学院', 510000, 3),
(22090, '四川文化产业职业学院', 510000, 3),
(22091, '四川科技职业学院', 510000, 3),
(22092, '西南科技大学城市学院', 510000, 3),
(22093, '四川音乐学院绵阳艺术学院', 510000, 3),
(22094, '西南财经大学天府学院', 510000, 3),
(23001, '内蒙古大学', 150000, 3),
(23002, '内蒙古工业大学', 150000, 3),
(23003, '内蒙古农大', 150000, 3),
(23004, '内蒙古师大', 150000, 3),
(23005, '内蒙古医学院', 150000, 3),
(23006, '内蒙古财经', 150000, 3),
(23007, '内蒙古科大', 150000, 3),
(23008, '内蒙古民族大学', 150000, 3),
(23009, '赤峰学院', 150000, 3),
(23010, '呼伦贝尔学院', 150000, 3),
(23011, '包头钢铁职业技术学院', 150000, 3),
(23012, '包头轻工职业技术学院', 150000, 3),
(23013, '包头职业技术学院', 150000, 3),
(23014, '河套大学', 150000, 3),
(23015, '呼和浩特职业学院', 150000, 3),
(23016, '集宁师范高等专科学校', 150000, 3),
(23017, '科尔沁艺术职业学院', 150000, 3),
(23018, '内蒙古财税职业学院', 150000, 3),
(23019, '内蒙古电子信息职业技术学院', 150000, 3),
(23020, '内蒙古青城大学', 150000, 3),
(23021, '内蒙古化工职业学院', 150000, 3),
(23022, '内蒙古机电职业技术学院', 150000, 3),
(23023, '内蒙古建筑职业技术学院', 150000, 3),
(23024, '内蒙古交通职业技术学院', 150000, 3),
(23025, '内蒙古民族高等专科学校', 150000, 3),
(23026, '内蒙古商贸职业学院', 150000, 3),
(23027, '内蒙古体育职业学院', 150000, 3),
(23028, '通辽职业学院', 150000, 3),
(23029, '乌海职业技术学院', 150000, 3),
(23030, '乌兰察布职业学院', 150000, 3),
(23031, '锡林郭勒职业学院', 150000, 3),
(23032, '兴安职业技术学院', 150000, 3),
(23033, '内蒙古警察职业学院', 150000, 3),
(23034, '内蒙古北方职业技术学院', 150000, 3),
(23035, '内蒙古丰州学院', 150000, 3),
(23036, '内蒙古经贸外语职业学院', 150000, 3),
(23037, '内蒙古科技职业学院', 150000, 3),
(23038, '赤峰职业技术学院', 150000, 3),
(24001, '宁夏大学', 640000, 3),
(24002, '北方民大', 640000, 3),
(24003, '宁夏医学院', 640000, 3),
(24004, '宁夏理工', 640000, 3),
(24005, '宁夏师范', 640000, 3),
(24006, '吴忠职业技术学院', 640000, 3),
(24007, '宁夏职业技术学院', 640000, 3),
(24008, '宁夏财经职业技术学院', 640000, 3),
(24009, '宁夏司法警官职业学院', 640000, 3),
(24010, '宁夏师范学院', 640000, 3),
(24011, '宁夏工业职业学院', 640000, 3),
(24012, '宁夏经贸职业技术学院', 640000, 3),
(24013, '宁夏建设职业技术学院', 640000, 3),
(24014, '银川科技职业学院', 640000, 3),
(24015, '宁夏大学新华学院', 640000, 3),
(25001, '兰州大学', 620000, 3),
(25002, '西北民大', 620000, 3),
(25003, '西北师大', 620000, 3),
(25004, '甘肃中医学院', 620000, 3),
(25005, '兰州商院', 620000, 3),
(25006, '甘肃政法学院', 620000, 3),
(25007, '兰州城市学院', 620000, 3),
(25008, '甘肃农大', 620000, 3),
(25009, '兰州理工', 620000, 3),
(25010, '兰州交大', 620000, 3),
(25011, '天水师院', 620000, 3),
(25012, '陇东学院', 620000, 3),
(25013, '河西学院', 620000, 3),
(25014, '兰州石化职业技术学院', 620000, 3),
(25015, '甘肃工业职业技术学院', 620000, 3),
(25016, '甘肃警察职业学院', 620000, 3),
(25017, '兰州理工大学技术工程学院', 620000, 3),
(25018, '兰州职业技术学院', 620000, 3),
(25019, '武威职业学院', 620000, 3),
(25020, '张掖医学高等专科学校', 620000, 3),
(25021, '甘肃畜牧工程职业技术学院', 620000, 3),
(25022, '陇南师范高等专科学校', 620000, 3),
(25023, '合作民族师范高等专科学校', 620000, 3),
(25024, '甘肃联合大学', 620000, 3),
(25025, '甘肃林业职业技术学院', 620000, 3),
(25026, '甘肃建筑职业技术学院', 620000, 3),
(25027, '酒泉职业技术学院', 620000, 3),
(25028, '甘肃农业职业技术学院', 620000, 3),
(25029, '平凉医学高等专科学校', 620000, 3),
(25030, '兰州资源环境职业技术学院', 620000, 3),
(25031, '定西师范高等专科学校', 620000, 3),
(25032, '兰州交通大学博文学院', 620000, 3),
(25033, '兰州工业高等专科学校', 620000, 3),
(25034, '兰州外语职业学院', 620000, 3),
(25035, '兰州教育学院', 620000, 3),
(25036, '甘肃钢铁职业技术学院', 620000, 3),
(26001, '青海大学', 630000, 3),
(26002, '青海师大', 630000, 3),
(26003, '青海民院', 630000, 3),
(26004, '青海民族师范高等专科学校', 630000, 3),
(26005, '青海财经职业学院', 630000, 3),
(26006, '青海畜牧兽医职业技术学院', 630000, 3),
(26007, '青海建筑职业技术学院', 630000, 3),
(26008, '青海师范高等专科学校', 630000, 3),
(26009, '青海警官职业学院', 630000, 3),
(26010, '青海交通职业技术学院', 630000, 3),
(26011, '青海卫生职业技术学院', 630000, 3),
(27001, '西藏大学', 540000, 3),
(27002, '西藏藏医学院', 540000, 3),
(27003, '西藏民院', 540000, 3),
(27004, '拉萨师范高等专科学校', 540000, 3),
(27005, '西藏警官高等专科学校', 540000, 3),
(27006, '西藏职业技术学院', 540000, 3),
(28001, '新疆大学', 650000, 3),
(28002, '新疆农大', 650000, 3),
(28003, '新疆医科大', 650000, 3),
(28004, '新疆师大', 650000, 3),
(28005, '新疆财经', 650000, 3),
(28006, '新疆艺术学院', 650000, 3),
(28007, '石河子大学', 650000, 3),
(28008, '塔里木大学', 650000, 3),
(28009, '喀什师院', 650000, 3),
(28010, '伊犁师院', 650000, 3),
(28011, '昌吉学院', 650000, 3),
(28012, '阿克苏职业技术学院', 650000, 3),
(28013, '巴音郭楞职业技术学院', 650000, 3),
(28014, '昌吉职业技术学院', 650000, 3),
(28015, '和田师范专科学校', 650000, 3),
(28016, '克拉玛依职业技术学院', 650000, 3),
(28017, '乌鲁木齐职业大学', 650000, 3),
(28018, '新疆兵团警官高等专科学校', 650000, 3),
(28019, '新疆工业高等专科学校', 650000, 3),
(28020, '新疆机电职业技术学院', 650000, 3),
(28021, '新疆建设职业技术学院', 650000, 3),
(28022, '新疆交通职业技术学院', 650000, 3),
(28023, '新疆警官高等专科学校', 650000, 3),
(28024, '新疆能源职业技术学院', 650000, 3),
(28025, '新疆农业职业技术学院', 650000, 3),
(28026, '新疆轻工职业技术学院', 650000, 3),
(28027, '新疆石河子职业技术学院', 650000, 3),
(28028, '新疆天山职业技术学院', 650000, 3),
(28029, '新疆维吾尔医学专科学校', 650000, 3),
(28030, '新疆现代职业技术学院', 650000, 3),
(28031, '伊犁职业技术学院', 650000, 3),
(28032, '新疆科信学院', 650000, 3),
(28033, '新疆职业大学', 650000, 3),
(28034, '新疆石油学院', 650000, 3),
(28035, '新疆大学科学技术学院', 650000, 3),
(28036, '新疆农业大学科学技术学院', 650000, 3),
(28037, '新疆财经大学商务学院', 650000, 3),
(28038, '新疆医科大学厚博学院', 650000, 3),
(28039, '石河子大学科技学院', 650000, 3),
(29001, '中国科大', 340000, 3),
(29002, '安徽大学', 340000, 3),
(29003, '合肥工大', 340000, 3),
(29004, '安徽医科大', 340000, 3),
(29005, '安徽建工', 340000, 3),
(29006, '安徽中医', 340000, 3),
(29007, '合肥学院', 340000, 3),
(29008, '安徽农大', 340000, 3),
(29009, '安徽工业大学', 340000, 3),
(29010, '安徽科技', 340000, 3),
(29011, '皖南医学院', 340000, 3),
(29012, '安徽师大', 340000, 3),
(29013, '安徽工程科技', 340000, 3),
(29014, '蚌埠医学院', 340000, 3),
(29015, '安徽财经', 340000, 3),
(29016, '阜阳师范', 340000, 3),
(29017, '淮南师范', 340000, 3),
(29018, '安徽理工', 340000, 3),
(29019, '淮北煤炭师范', 340000, 3),
(29020, '安庆师范', 340000, 3),
(29021, '铜陵学院', 340000, 3),
(29022, '皖西学院', 340000, 3),
(29023, '巢湖学院', 340000, 3),
(29024, '滁州学院', 340000, 3),
(29025, '宿州学院', 340000, 3),
(29026, '黄山学院', 340000, 3),
(29027, '新华学院', 340000, 3),
(29028, '蚌埠学院', 340000, 3),
(29029, '安徽财贸职业学院', 340000, 3),
(29030, '安徽城市管理职业学院', 340000, 3),
(29031, '安徽电气工程职业技术学院', 340000, 3),
(29032, '安徽电子信息职业技术学院', 340000, 3),
(29033, '安徽工贸职业技术学院', 340000, 3),
(29034, '安徽工商职业学院', 340000, 3),
(29035, '安徽工业经济职业技术学院', 340000, 3),
(29036, '安徽公安职业学院', 340000, 3),
(29037, '安徽广播影视职业技术学院', 340000, 3),
(29038, '安徽国防科技职业学院', 340000, 3),
(29039, '安徽国际商务职业学院', 340000, 3),
(29040, '安徽机电职业技术学院', 340000, 3),
(29041, '安徽交通职业技术学院', 340000, 3),
(29042, '安徽教育学院', 340000, 3),
(29043, '安徽经济管理学院', 340000, 3),
(29044, '安徽警官职业学院', 340000, 3),
(29045, '安徽林业职业技术学院', 340000, 3),
(29046, '安徽明星科技职业学院', 340000, 3),
(29047, '安徽商贸职业技术学院', 340000, 3),
(29048, '安徽审计职业学院', 340000, 3),
(29049, '安徽省三联职业技术学院', 340000, 3),
(29050, '安徽水利水电职业技术学院', 340000, 3),
(29051, '安徽体育运动职业技术学院', 340000, 3),
(29052, '安徽文达信息技术职业学院', 340000, 3),
(29053, '安徽新闻出版职业技术学院', 340000, 3),
(29054, '安徽冶金科技职业学院', 340000, 3),
(29055, '安徽医学高等专科学校', 340000, 3),
(29056, '安徽艺术职业学院', 340000, 3),
(29057, '安徽邮电职业技术学院', 340000, 3),
(29058, '安徽职业技术学院', 340000, 3),
(29059, '安徽中澳科技职业学院', 340000, 3),
(29060, '安徽中医药高等专科学校', 340000, 3),
(29061, '安庆职业技术学院', 340000, 3),
(29062, '蚌埠高等专科学校', 340000, 3),
(29063, '蚌埠职业教育专修学院', 340000, 3),
(29064, '亳州师范高等专科学校', 340000, 3),
(29065, '亳州职业技术学院', 340000, 3),
(29066, '巢湖职业技术学院', 340000, 3),
(29067, '池州师范专科学校', 340000, 3),
(29068, '池州职业技术学院', 340000, 3),
(29069, '滁州职业技术学院', 340000, 3),
(29070, '阜阳科技职业学院', 340000, 3),
(29071, '阜阳职业技术学院', 340000, 3),
(29072, '合肥市万博科技职业学院', 340000, 3),
(29073, '合肥通用职业技术学院', 340000, 3),
(29074, '淮北职业技术学院', 340000, 3),
(29075, '淮南联合大学', 340000, 3),
(29076, '淮南职业技术学院', 340000, 3),
(29077, '六安职业技术学院', 340000, 3),
(29078, '马鞍山师范高等专科学校', 340000, 3),
(29079, '民办安徽外国语职业技术学院', 340000, 3),
(29080, '民办合肥经济技术职业学院', 340000, 3),
(29081, '宿州职业技术学院', 340000, 3),
(29082, '铜陵职业技术学院', 340000, 3),
(29083, '芜湖信息技术职业学院', 340000, 3),
(29084, '芜湖职业技术学院', 340000, 3),
(29085, '宣城职业技术学院', 340000, 3),
(29086, '安徽师范大学皖江学院', 340000, 3),
(29087, '合肥师范学院', 340000, 3),
(29088, '凤阳师范高等专科学校', 340000, 3),
(29089, '安庆医药高等专科学校', 340000, 3),
(29090, '安徽工业职业技术学院', 340000, 3),
(29091, '合肥幼儿师范学校', 340000, 3),
(30001, '浙江大学', 330000, 3),
(30002, '浙江理工', 330000, 3),
(30003, '浙江工大', 330000, 3),
(30004, '杭州电子科大', 330000, 3),
(30005, '浙江中医药', 330000, 3),
(30006, '浙江工商', 330000, 3),
(30007, '中国计量', 330000, 3),
(30008, '浙江科技', 330000, 3),
(30009, '浙江林院', 330000, 3),
(30010, '杭州师范', 330000, 3),
(30011, '浙江传媒', 330000, 3),
(30012, '浙江财经', 330000, 3),
(30013, '中国美术学院', 330000, 3),
(30014, '树人大学', 330000, 3),
(30015, '宁波大学', 330000, 3),
(30016, '宁波工程', 330000, 3),
(30017, '万里学院', 330000, 3),
(30018, '诺丁汉大学', 330000, 3),
(30019, '嘉兴学院', 330000, 3),
(30020, '浙江海洋', 330000, 3),
(30021, '温州大学', 330000, 3),
(30022, '温州医学院', 330000, 3),
(30023, '湖州师范', 330000, 3),
(30024, '台州学院', 330000, 3),
(30025, '绍兴文理学院', 330000, 3),
(30026, '丽水学院', 330000, 3),
(30027, '浙江师大', 330000, 3),
(30028, '长征职业技术学院', 330000, 3),
(30029, '公安海警高等专科学校', 330000, 3),
(30030, '杭州万向职业技术学院', 330000, 3),
(30031, '杭州职业技术学院', 330000, 3),
(30032, '湖州职业技术学院', 330000, 3),
(30033, '嘉兴职业技术学院', 330000, 3),
(30034, '金华职业技术学院', 330000, 3),
(30035, '科技求是学院', 330000, 3),
(30036, '丽水职业技术学院', 330000, 3),
(30037, '宁波城市职业技术学院', 330000, 3),
(30038, '宁波大红鹰职业技术学院', 330000, 3),
(30039, '宁波大学科技学院', 330000, 3),
(30040, '宁波天一职业技术学院', 330000, 3),
(30041, '宁波职业技术学院', 330000, 3),
(30042, '衢州职业技术学院', 330000, 3),
(30043, '绍兴托普信息职业技术学院', 330000, 3),
(30044, '绍兴越秀外国语职业学院', 330000, 3),
(30045, '台州职业技术学院', 330000, 3),
(30046, '温州职业技术学院', 330000, 3),
(30047, '义乌工商职业技术学院', 330000, 3),
(30048, '浙江大学城市学院', 330000, 3),
(30049, '浙江大学宁波理工学院', 330000, 3),
(30050, '浙江东方职业技术学院', 330000, 3),
(30051, '浙江纺织服装职业技术学院', 330000, 3),
(30052, '浙江工贸职业技术学院', 330000, 3),
(30053, '浙江工商职业技术学院', 330000, 3),
(30054, '浙江工业职业技术学院', 330000, 3),
(30055, '浙江警察学院', 330000, 3),
(30056, '浙江广厦建设职业技术学院', 330000, 3),
(30057, '浙江机电职业技术学院', 330000, 3),
(30058, '浙江建设职业技术学院', 330000, 3),
(30059, '浙江交通职业技术学院', 330000, 3),
(30060, '浙江教育学院', 330000, 3),
(30061, '浙江金融职业学院', 330000, 3),
(30062, '浙江经济职业技术学院', 330000, 3),
(30063, '浙江经贸职业技术学院', 330000, 3),
(30064, '浙江警官职业学院', 330000, 3),
(30065, '浙江旅游职业学院', 330000, 3),
(30066, '浙江商业职业技术学院', 330000, 3),
(30067, '浙江水利水电专科学校', 330000, 3),
(30068, '浙江医学高等专科学校', 330000, 3),
(30069, '浙江医药高等专科学校', 330000, 3),
(30070, '浙江艺术职业学院', 330000, 3),
(30071, '浙江育英职业技术学院', 330000, 3),
(30072, '浙江电力职业技术学院', 330000, 3),
(30073, '嘉兴南洋职业技术学院', 330000, 3),
(30074, '浙江国际海运职业技术学校', 330000, 3),
(30075, '浙江工业大学浙西分校', 330000, 3),
(30076, '浙江国际海运职业技术学院', 330000, 3),
(31001, '厦门大学', 350000, 3),
(31002, '集美大学', 350000, 3),
(31003, '厦门理工学院', 350000, 3),
(31004, '福州大学', 350000, 3),
(31005, '福建师范大学', 350000, 3),
(31006, '福建农林大学', 350000, 3),
(31007, '福建医科大学', 350000, 3),
(31008, '福建工程学院', 350000, 3),
(31009, '福建中医学院', 350000, 3),
(31010, '闽江学院', 350000, 3),
(31011, '华侨大学', 350000, 3),
(31012, '仰恩大学', 350000, 3),
(31013, '泉州师范学院', 350000, 3),
(31014, '漳州师范', 350000, 3),
(31015, '莆田学院', 350000, 3),
(31016, '三明学院', 350000, 3),
(31017, '龙岩学院', 350000, 3),
(31018, '厦门大学嘉庚学院', 350000, 3),
(31019, '集美大学诚毅学院', 350000, 3),
(31020, '福州大学阳光学院', 350000, 3),
(31021, '福州大学至诚学院', 350000, 3),
(31022, '福建师范大学协和学院', 350000, 3),
(31023, '福建师范大学闽南科技学院', 350000, 3),
(31024, '福建农林大学东方学院', 350000, 3),
(31025, '福建农林大学金山学院', 350000, 3),
(31026, '华侨大学福建音乐学院', 350000, 3),
(31027, '福建电力职业技术学院', 350000, 3),
(31028, '福建对外经济贸易职业技术学院', 350000, 3),
(31029, '福建警察学院', 350000, 3),
(31030, '福建广播电视大学', 350000, 3),
(31031, '福建华南女子职业学院', 350000, 3),
(31032, '福建交通职业技术学院', 350000, 3),
(31033, '福建教育学院', 350000, 3),
(31034, '福建金融职业技术学院', 350000, 3),
(31035, '福建警官职业学院', 350000, 3),
(31036, '福建林业职业技术学院', 350000, 3),
(31037, '福建农业职业技术学院', 350000, 3),
(31038, '福建商业高等专科学校', 350000, 3),
(31039, '福建生物工程职业技术学院', 350000, 3),
(31040, '福建水利电力职业技术学院', 350000, 3),
(31041, '福建卫生职业技术学院', 350000, 3),
(31042, '福建信息职业技术学院', 350000, 3),
(31043, '福建行政学院', 350000, 3),
(31044, '福建中医学院五洲科技学院', 350000, 3),
(31045, '福州海峡职业技术学院', 350000, 3),
(31046, '福州科技职业技术学院', 350000, 3),
(31047, '福州黎明职业技术学院', 350000, 3),
(31048, '福州软件职业技术学院', 350000, 3),
(31049, '福州外语外贸职业技术学院', 350000, 3),
(31050, '福州英华职业学院', 350000, 3),
(31051, '福州职业技术学院', 350000, 3),
(31052, '黎明职业大学', 350000, 3),
(31053, '湄洲湾职业技术学院', 350000, 3),
(31054, '闽北职业技术学院', 350000, 3),
(31055, '闽西职业技术学院', 350000, 3),
(31056, '武夷学院', 350000, 3),
(31057, '宁德师范高等专科学校', 350000, 3),
(31058, '泉州纺织服装职业学院', 350000, 3),
(31059, '泉州光电信息职业学院', 350000, 3),
(31060, '泉州华光摄影艺术职业学院', 350000, 3),
(31061, '泉州经贸职业技术学院', 350000, 3),
(31062, '泉州信息职业技术学院', 350000, 3),
(31063, '泉州医学高等专科学校', 350000, 3),
(31064, '泉州理工学院', 350000, 3),
(31065, '三明职业技术学院', 350000, 3),
(31066, '厦门海洋职业技术学院', 350000, 3),
(31067, '厦门华天涉外职业技术学院', 350000, 3),
(31068, '厦门华厦职业学院', 350000, 3),
(31069, '厦门南洋学院', 350000, 3),
(31070, '厦门兴才职业技术学院', 350000, 3),
(31071, '厦门演艺职业学院', 350000, 3),
(31072, '漳州职业技术学院', 350000, 3),
(31073, '福建政法管理干部学院', 350000, 3),
(31074, '武夷职业技术学院', 350000, 3),
(31075, '厦门城市职业学院', 350000, 3),
(31076, '漳州卫生职业学院', 350000, 3),
(32001, '国立台湾大学', 710000, 3),
(32002, '国立中正大学', 710000, 3),
(32003, '国立台湾艺术大学', 710000, 3),
(32004, '国立清华大学', 710000, 3),
(32005, '国立中山大学', 710000, 3),
(32006, '国立政治大学', 710000, 3),
(32007, '国立成功大学', 710000, 3),
(32008, '国立中央大学', 710000, 3),
(32009, '国立阳明大学', 710000, 3),
(32010, '国立东华大学', 710000, 3),
(32011, '国立中兴大学', 710000, 3),
(32012, '国立台湾师范大学', 710000, 3),
(32013, '国立台湾海洋大学', 710000, 3),
(32014, '国立高雄大学', 710000, 3),
(32015, '国立嘉义大学', 710000, 3),
(32016, '国立台湾科技大学', 710000, 3),
(32017, '国立空中大学', 710000, 3),
(32018, '国立台北大学', 710000, 3),
(32019, '国立高雄师范大学', 710000, 3),
(32020, '国立联合大学', 710000, 3),
(32021, '国立暨南国际大学', 710000, 3),
(32022, '国立屏东科技大学', 710000, 3),
(32023, '国立彰化师范大学', 710000, 3),
(32024, '国立台北科技大学', 710000, 3),
(32025, '国立台东大学', 710000, 3),
(32026, '国立宜蓝大学', 710000, 3),
(32027, '国立台北艺术大学', 710000, 3),
(32028, '国立云林科技大学', 710000, 3),
(32029, '国立台南大学', 710000, 3),
(32030, '国立虎尾科技大学', 710000, 3),
(32031, '国立花莲教育大学', 710000, 3),
(32032, '国立高雄第一科技大学', 710000, 3),
(32033, '国立屏东教育大学', 710000, 3),
(32034, '国立新竹教育大学', 710000, 3),
(32035, '国立澎湖科技大学', 710000, 3),
(32036, '建国科技大学', 710000, 3),
(32037, '国立台南艺术大学', 710000, 3),
(32038, '国立高雄应用科技大学', 710000, 3),
(32039, '国立高雄海洋科技大学', 710000, 3),
(32040, '国立勤益科技大学', 710000, 3),
(32041, '东吴大学', 710000, 3),
(33001, '香港大学', 810000, 3),
(33002, '香港中文大学', 810000, 3),
(33003, '香港科技大学', 810000, 3),
(33004, '香港理工大学', 810000, 3),
(33005, '香港城市大学', 810000, 3),
(33006, '香港浸会大学', 810000, 3),
(33007, '香港岭南大学', 810000, 3),
(33008, '香港国际工商管理学院', 810000, 3),
(33009, '香港珠海学院', 810000, 3),
(33010, '香港教育学院', 810000, 3),
(33011, '香港树仁大学', 810000, 3),
(33012, '香港演艺学院', 810000, 3),
(34001, '澳门大学', 820000, 3),
(34002, '澳门理工学院', 820000, 3),
(34003, '澳门科技大学', 820000, 3),
(34004, '澳门旅游学院', 820000, 3),
(34005, '澳门镜湖护理学院', 820000, 3),
(34006, '澳门国际公开大学', 820000, 3);

-- --------------------------------------------------------

--
-- 表的结构 `pw_searchadvert`
--

CREATE TABLE `pw_searchadvert` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifshow` tinyint(3) NOT NULL DEFAULT '0',
  `orderby` tinyint(3) NOT NULL DEFAULT '0',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_searchforum`
--

CREATE TABLE `pw_searchforum` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_searchhotwords`
--

CREATE TABLE `pw_searchhotwords` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `fromtype` enum('custom','auto') NOT NULL DEFAULT 'custom',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_searchhotwords`
--

INSERT INTO `pw_searchhotwords` (`id`, `keyword`, `vieworder`, `fromtype`, `posttime`, `expire`) VALUES
(1, '结婚', 1, 'custom', 1300247428, 0),
(2, '母婴', 2, 'custom', 1300247428, 0),
(3, 'phpwind', 3, 'custom', 1300712565, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_searchstatistic`
--

CREATE TABLE `pw_searchstatistic` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT '0',
  `created_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_setform`
--

CREATE TABLE `pw_setform` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifopen` tinyint(3) NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_setform`
--

INSERT INTO `pw_setform` (`id`, `name`, `ifopen`, `value`) VALUES
(1, '出租信息', 1, '<table cellspacing="1" cellpadding="1" align="left" width="100%" style="background:#D4EFF7;text-align:left"><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>联  系 人:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>联系方式:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>房屋类型:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>房屋位置:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b><font color="#ff3300">出租</font>价格:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>房屋层次:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>房屋面积:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>建造年份:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr><tr><td width="30%" align="center" style="background:#fff;height:25px;"><b>简单情况:</b></td><td style="background:#fff;padding-left:5px"><p contentEditable=true></p></td></tr></table>');

-- --------------------------------------------------------

--
-- 表的结构 `pw_sharelinks`
--

CREATE TABLE `pw_sharelinks` (
  `sid` smallint(6) UNSIGNED NOT NULL,
  `threadorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `descrip` varchar(200) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_sharelinks`
--

INSERT INTO `pw_sharelinks` (`sid`, `threadorder`, `name`, `url`, `descrip`, `logo`, `ifcheck`, `username`) VALUES
(1, 0, 'phpwind Board', 'http://www.phpwind.net', 'PHPwind官方论坛', 'logo.gif', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_sharelinksrelation`
--

CREATE TABLE `pw_sharelinksrelation` (
  `sid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `stid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_sharelinkstype`
--

CREATE TABLE `pw_sharelinkstype` (
  `stid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `vieworder` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_sharelinkstype`
--

INSERT INTO `pw_sharelinkstype` (`stid`, `name`, `vieworder`, `ifable`) VALUES
(1, '分类一', 1, 1),
(2, '分类二', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_singleright`
--

CREATE TABLE `pw_singleright` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `visit` varchar(80) NOT NULL DEFAULT '',
  `post` varchar(80) NOT NULL DEFAULT '',
  `reply` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_smiles`
--

CREATE TABLE `pw_smiles` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `descipt` varchar(100) NOT NULL DEFAULT '',
  `vieworder` tinyint(2) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_smiles`
--

INSERT INTO `pw_smiles` (`id`, `path`, `name`, `descipt`, `vieworder`, `type`) VALUES
(1, 'default', '默认表情', '', 1, 0),
(2, '1.gif', '', '', 0, 1),
(3, '2.gif', '', '', 0, 1),
(4, '3.gif', '', '', 0, 1),
(5, '4.gif', '', '', 0, 1),
(6, '5.gif', '', '', 0, 1),
(7, '6.gif', '', '', 0, 1),
(8, '7.gif', '', '', 0, 1),
(9, '8.gif', '', '', 0, 1),
(10, '9.gif', '', '', 0, 1),
(11, '10.gif', '', '', 0, 1),
(12, '11.gif', '', '', 0, 1),
(13, '12.gif', '', '', 0, 1),
(14, '13.gif', '', '', 0, 1),
(15, '14.gif', '', '', 0, 1),
(16, 'wangwang', '旺旺', '', 2, 0),
(152, '9.gif', '', '', 0, 16),
(151, '8.gif', '', '', 0, 16),
(150, '7.gif', '', '', 0, 16),
(149, '6.gif', '', '', 0, 16),
(148, '5.gif', '', '', 0, 16),
(147, '4.gif', '', '', 0, 16),
(146, '37.gif', '', '', 0, 16),
(145, '36.gif', '', '', 0, 16),
(144, '35.gif', '', '', 0, 16),
(143, '34.gif', '', '', 0, 16),
(142, '33.gif', '', '', 0, 16),
(141, '32.gif', '', '', 0, 16),
(140, '31.gif', '', '', 0, 16),
(139, '30.gif', '', '', 0, 16),
(138, '3.gif', '', '', 0, 16),
(137, '29.gif', '', '', 0, 16),
(136, '28.gif', '', '', 0, 16),
(135, '27.gif', '', '', 0, 16),
(134, '26.gif', '', '', 0, 16),
(133, '25.gif', '', '', 0, 16),
(132, '24.gif', '', '', 0, 16),
(131, '23.gif', '', '', 0, 16),
(130, '22.gif', '', '', 0, 16),
(129, '21.gif', '', '', 0, 16),
(128, '20.gif', '', '', 0, 16),
(127, '2.gif', '', '', 0, 16),
(126, '19.gif', '', '', 0, 16),
(125, '18.gif', '', '', 0, 16),
(124, '17.gif', '', '', 0, 16),
(123, '16.gif', '', '', 0, 16),
(122, '15.gif', '', '', 0, 16),
(121, '14.gif', '', '', 0, 16),
(120, '13.gif', '', '', 0, 16),
(119, '12.gif', '', '', 0, 16),
(118, '11.gif', '', '', 0, 16),
(117, '10.gif', '', '', 0, 16),
(116, '1.gif', '', '', 0, 16);

-- --------------------------------------------------------

--
-- 表的结构 `pw_space`
--

CREATE TABLE `pw_space` (
  `uid` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `domain` varchar(20) NOT NULL DEFAULT '',
  `spacetype` tinyint(1) NOT NULL DEFAULT '0',
  `banner` varchar(50) NOT NULL DEFAULT '',
  `skin` varchar(15) NOT NULL DEFAULT '',
  `visits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tovisits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `visitors` varchar(255) NOT NULL DEFAULT '',
  `tovisitors` varchar(255) NOT NULL DEFAULT '',
  `layout` text NOT NULL,
  `modelset` text NOT NULL,
  `descript` varchar(255) NOT NULL DEFAULT '',
  `spacestyle` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_sqlcv`
--

CREATE TABLE `pw_sqlcv` (
  `id` int(10) NOT NULL,
  `var` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_statistics_daily`
--

CREATE TABLE `pw_statistics_daily` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(32) NOT NULL DEFAULT '',
  `typeid` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `value` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_statistics_daily`
--

INSERT INTO `pw_statistics_daily` (`id`, `name`, `typeid`, `date`, `value`, `updatetime`) VALUES
(1, 'userinbbs', 15, '2016-08-13', 0, 1471073275),
(2, 'guestinbbs', 15, '2016-08-13', 1, 1471073275);

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopic`
--

CREATE TABLE `pw_stopic` (
  `stopic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bg_id` int(10) NOT NULL DEFAULT '0',
  `copy_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `layout` varchar(20) NOT NULL DEFAULT '',
  `create_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `start_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `end_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `used_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `banner_url` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `block_config` text NOT NULL,
  `layout_config` text NOT NULL,
  `nav_config` text NOT NULL,
  `file_name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopicblock`
--

CREATE TABLE `pw_stopicblock` (
  `block_id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tagcode` text NOT NULL,
  `begin` text NOT NULL,
  `loops` text NOT NULL,
  `end` text NOT NULL,
  `config` varchar(255) NOT NULL DEFAULT '',
  `replacetag` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopiccategory`
--

CREATE TABLE `pw_stopiccategory` (
  `id` smallint(6) NOT NULL,
  `title` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(6) NOT NULL DEFAULT '0',
  `creator` varchar(20) DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_stopiccategory`
--

INSERT INTO `pw_stopiccategory` (`id`, `title`, `status`, `num`, `creator`, `createtime`) VALUES
(1, '房产', 1, 0, 'phpwind', 1250759842),
(2, '汽车', 1, 0, 'phpwind', 1250759842),
(3, '婚庆', 1, 0, 'phpwind', 1250759842),
(4, '母婴', 1, 0, 'phpwind', 1250759842),
(5, '团购', 1, 0, 'phpwind', 1250759842);

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopicpictures`
--

CREATE TABLE `pw_stopicpictures` (
  `id` int(10) NOT NULL,
  `categoryid` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `num` smallint(6) NOT NULL DEFAULT '0',
  `creator` varchar(20) DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopicunit`
--

CREATE TABLE `pw_stopicunit` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `stopic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `html_id` varchar(50) NOT NULL DEFAULT '',
  `block_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopic_comment`
--

CREATE TABLE `pw_stopic_comment` (
  `commentid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stopic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `replynum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_stopic_commentreply`
--

CREATE TABLE `pw_stopic_commentreply` (
  `replyid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_styles`
--

CREATE TABLE `pw_styles` (
  `sid` smallint(6) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `customname` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `lastmodify` int(10) NOT NULL DEFAULT '0',
  `ifopen` tinyint(1) NOT NULL DEFAULT '0',
  `stylepath` varchar(50) NOT NULL DEFAULT '',
  `tplpath` varchar(50) NOT NULL DEFAULT '',
  `yeyestyle` varchar(3) NOT NULL DEFAULT '',
  `bgcolor` varchar(100) NOT NULL DEFAULT '',
  `linkcolor` varchar(7) NOT NULL DEFAULT '',
  `tablecolor` varchar(7) NOT NULL DEFAULT '',
  `tdcolor` varchar(7) NOT NULL DEFAULT '',
  `tablewidth` varchar(7) NOT NULL DEFAULT '',
  `mtablewidth` varchar(7) NOT NULL DEFAULT '',
  `headcolor` varchar(100) NOT NULL DEFAULT '',
  `headborder` varchar(7) NOT NULL DEFAULT '',
  `headfontone` varchar(7) NOT NULL DEFAULT '',
  `headfonttwo` varchar(7) NOT NULL DEFAULT '',
  `cbgcolor` varchar(100) NOT NULL DEFAULT '',
  `cbgborder` varchar(7) NOT NULL DEFAULT '',
  `cbgfont` varchar(7) NOT NULL DEFAULT '',
  `forumcolorone` varchar(7) NOT NULL DEFAULT '',
  `forumcolortwo` varchar(7) NOT NULL DEFAULT '',
  `extcss` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_styles`
--

INSERT INTO `pw_styles` (`sid`, `uid`, `name`, `customname`, `createtime`, `lastmodify`, `ifopen`, `stylepath`, `tplpath`, `yeyestyle`, `bgcolor`, `linkcolor`, `tablecolor`, `tdcolor`, `tablewidth`, `mtablewidth`, `headcolor`, `headborder`, `headfontone`, `headfonttwo`, `cbgcolor`, `cbgborder`, `cbgfont`, `forumcolorone`, `forumcolortwo`, `extcss`) VALUES
(1, 0, 'wind', '蓝色天空', 0, 0, 1, 'wind', 'wind', '0', '#fff', '#333333', '#bdcfdd', '#d5e6ed', '960px', '960px', '#eaf1f7', '#c6d9e7', '#1b72af', '#1b72af', '#f7f7f7', '#eaeaea', '#666', '#ffffff', '#f3f9fb', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_tagdata`
--

CREATE TABLE `pw_tagdata` (
  `tagid` mediumint(8) NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_tags`
--

CREATE TABLE `pw_tags` (
  `tagid` mediumint(8) UNSIGNED NOT NULL,
  `tagname` varchar(15) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT '0',
  `ifhot` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_task`
--

CREATE TABLE `pw_task` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(20) DEFAULT '',
  `task` varchar(255) DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `next` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_task`
--

INSERT INTO `pw_task` (`id`, `name`, `task`, `count`, `last`, `next`, `ctime`) VALUES
(1, '广告到期提醒', 'alteradver', 1, 1258970602, 1258970612, 1258970602);

-- --------------------------------------------------------

--
-- 表的结构 `pw_temp_keywords`
--

CREATE TABLE `pw_temp_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `created_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_threads`
--

CREATE TABLE `pw_threads` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `titlefont` varchar(15) NOT NULL DEFAULT '',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `toolinfo` varchar(16) NOT NULL DEFAULT '',
  `toolfield` varchar(21) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastposter` varchar(15) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `favors` int(10) NOT NULL DEFAULT '0',
  `modelid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `shares` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topped` smallint(6) NOT NULL DEFAULT '0',
  `topreplays` smallint(6) NOT NULL DEFAULT '0',
  `locked` tinyint(3) NOT NULL DEFAULT '0',
  `digest` tinyint(3) NOT NULL DEFAULT '0',
  `special` tinyint(3) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `ifupload` tinyint(3) NOT NULL DEFAULT '0',
  `ifmail` tinyint(3) NOT NULL DEFAULT '0',
  `ifmark` smallint(6) NOT NULL DEFAULT '0',
  `ifshield` tinyint(3) NOT NULL DEFAULT '0',
  `anonymous` tinyint(3) NOT NULL DEFAULT '0',
  `dig` int(10) NOT NULL DEFAULT '0',
  `fight` int(10) NOT NULL DEFAULT '0',
  `ptable` tinyint(3) NOT NULL DEFAULT '0',
  `ifmagic` tinyint(3) NOT NULL DEFAULT '0',
  `ifhide` tinyint(3) NOT NULL DEFAULT '0',
  `inspect` varchar(30) NOT NULL DEFAULT '',
  `frommob` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tpcstatus` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `specialsort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_threads`
--

INSERT INTO `pw_threads` (`tid`, `fid`, `icon`, `titlefont`, `author`, `authorid`, `subject`, `toolinfo`, `toolfield`, `ifcheck`, `type`, `postdate`, `lastpost`, `lastposter`, `hits`, `replies`, `favors`, `modelid`, `shares`, `topped`, `topreplays`, `locked`, `digest`, `special`, `state`, `ifupload`, `ifmail`, `ifmark`, `ifshield`, `anonymous`, `dig`, `fight`, `ptable`, `ifmagic`, `ifhide`, `inspect`, `frommob`, `tpcstatus`, `specialsort`) VALUES
(1, 2, 0, '', 'admin', 1, '嗷嗷嗷 嗷嗷嗷&nbsp;&nbsp;啊呜', '', '', 1, 0, 1471073509, 1471073509, 'admin', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_threads_at`
--

CREATE TABLE `pw_threads_at` (
  `id` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_threads_img`
--

CREATE TABLE `pw_threads_img` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tpcnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `totalnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `collectnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `cover` varchar(80) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT '1',
  `topped` smallint(6) NOT NULL DEFAULT '0',
  `ifthumb` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_tmsgs`
--

CREATE TABLE `pw_tmsgs` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `aid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT '0',
  `buy` text NOT NULL,
  `ipfrom` varchar(255) NOT NULL DEFAULT '',
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL DEFAULT '',
  `tags` varchar(100) NOT NULL DEFAULT '',
  `ifconvert` tinyint(3) NOT NULL DEFAULT '1',
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT '1',
  `content` mediumtext NOT NULL,
  `form` varchar(30) NOT NULL DEFAULT '',
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `c_from` varchar(30) NOT NULL DEFAULT '',
  `magic` varchar(50) NOT NULL DEFAULT '',
  `overprint` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_tmsgs`
--

INSERT INTO `pw_tmsgs` (`tid`, `aid`, `userip`, `ifsign`, `buy`, `ipfrom`, `alterinfo`, `remindinfo`, `tags`, `ifconvert`, `ifwordsfb`, `content`, `form`, `ifmark`, `c_from`, `magic`, `overprint`) VALUES
(1, 0, '127.0.0.1', 1, '', '本机地址\r', '', '', '	', 1, 1, '胖子狗 嗷嗷嗷', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_toollog`
--

CREATE TABLE `pw_toollog` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `nums` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(6) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_tools`
--

CREATE TABLE `pw_tools` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `price` varchar(255) NOT NULL DEFAULT '',
  `creditype` varchar(10) NOT NULL DEFAULT '',
  `rmb` decimal(8,2) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `stock` smallint(6) NOT NULL DEFAULT '0',
  `conditions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_tools`
--

INSERT INTO `pw_tools` (`id`, `name`, `filename`, `descrip`, `vieworder`, `logo`, `state`, `price`, `creditype`, `rmb`, `type`, `stock`, `conditions`) VALUES
(1, '威望工具', 'reputation', '可将自己负威望清零', 1, '1.gif', 1, '100', 'money', '10.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(2, '清零卡', 'credit', '可将自己所有负分清零,包括铜币,威望,贡献值,积分', 2, '2.gif', 1, '100', 'money', '10.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(3, '醒目卡', 'colortitle', '可以将自己的帖子标题加亮显示', 3, '3.gif', 1, '200', 'money', '20.00', 1, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(4, '置顶I', 'top', '可将自己发表的帖子在版块中置顶，置顶时间为6小时', 4, '4.gif', 1, '200', 'money', '20.00', 1, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(5, '置顶II', 'top2', '可将自己发表的帖子在分类中置顶，置顶时间为6小时', 5, '5.gif', 1, '500', 'money', '50.00', 1, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(6, '置顶III', 'top3', '可将自己发表的帖子在整个论坛中置顶，置顶时间为6小时', 6, '6.gif', 1, '1000', 'money', '100.00', 1, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(7, '提前帖子', 'upread', '可以把自己发表的帖子提前到帖子所在版块的第一页', 7, '7.gif', 1, '100', 'money', '10.00', 1, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(8, '改名卡', 'changename', '可更改自己在论坛的用户名', 8, '8.gif', 1, '1000', 'money', '100.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(9, '精华I', 'digest', '可以将自己的帖子加为精华I', 9, '9.gif', 0, '100', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(10, '精华II', 'digest2', '可以将自己的帖子加为精华II', 10, '10.gif', 0, '200', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(11, '锁定帖子', 'lock', '可以将自己发表的帖子锁定，不让其他会员回复此帖', 11, '11.gif', 0, '100', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(12, '解除锁定', 'unlock', '可以解除自己被帖子锁定，让其他会员可以回复此帖', 12, '12.gif', 0, '100', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(13, '鲜花', 'flower', '可以给帖子增加推荐数', 13, '13.gif', 1, '10', 'money', '1.00', 1, 1000, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(14, '鸡蛋', 'egg', '可以给帖子减少推荐数', 14, '14.gif', 1, '10', 'money', '1.00', 1, 1000, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(15, '运气卡', 'luck', '使用后随机加减交易币(-100,100)', 15, '15.gif', 0, '10', 'currency', '0.00', 2, 100, 'a:2:{s:4:"luck";a:3:{s:6:"range1";s:4:"-100";s:6:"range2";s:3:"100";s:8:"lucktype";s:8:"currency";}s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(16, '生日卡', 'birth', '以短消息方式发送给好友，祝好友生日快乐', 16, '16.gif', 1, '50', 'money', '5.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(17, '沉淀卡', 'backdown', '帖子中使用，每用一次让帖子丢到12小时前', 17, '17.gif', 0, '10', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(18, '猪头术', 'pig', '使用后让对方头像变为猪头，此效果持续24小时或到对方使用清洗卡为止', 18, '18.gif', 1, '200', 'money', '20.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(19, '还原卡', 'clear', '清除猪头卡的效果', 19, '19.gif', 1, '200', 'money', '20.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(20, '透视镜', 'mirror', '对用户使用 查看用户IP', 20, '20.gif', 0, '10', 'currency', '0.00', 2, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}'),
(21, '护身符', 'defend', '使用后，不能对该用户实现猪头术效果，48小时内有效', 21, '21.gif', 1, '100', 'money', '10.00', 2, 100, 'a:1:{s:6:"credit";a:6:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";}}'),
(22, '时空卡', 'backup', '帖子中使用，让帖子发布到12小时后', 22, '22.gif', 0, '10', 'currency', '0.00', 1, 100, 'a:1:{s:6:"credit";a:7:{s:7:"postnum";s:1:"0";s:7:"digests";s:1:"0";s:4:"rvrc";s:1:"0";s:5:"money";s:1:"0";s:6:"credit";s:1:"0";i:1;s:1:"0";i:2;s:1:"0";}}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_topiccate`
--

CREATE TABLE `pw_topiccate` (
  `cateid` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `ifdel` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_topiccate`
--

INSERT INTO `pw_topiccate` (`cateid`, `name`, `ifable`, `vieworder`, `ifdel`) VALUES
(1, '房屋交易', 1, 4, 1),
(2, '美食分类', 1, 2, 1),
(3, '婚庆婚介', 1, 3, 1),
(4, '母婴分类', 1, 1, 1),
(5, '汽车交易', 1, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicfield`
--

CREATE TABLE `pw_topicfield` (
  `fieldid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `modelid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '0',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `ifsearch` tinyint(3) NOT NULL DEFAULT '0',
  `ifasearch` tinyint(3) NOT NULL DEFAULT '0',
  `threadshow` tinyint(3) NOT NULL DEFAULT '0',
  `ifmust` tinyint(3) NOT NULL DEFAULT '1',
  `textsize` tinyint(3) NOT NULL DEFAULT '0',
  `descrip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_topicfield`
--

INSERT INTO `pw_topicfield` (`fieldid`, `name`, `fieldname`, `modelid`, `vieworder`, `type`, `rules`, `ifable`, `ifsearch`, `ifasearch`, `threadshow`, `ifmust`, `textsize`, `descrip`) VALUES
(1, '楼盘名称', 'field1', 1, 1, 'text', 'b:0;', 1, 1, 1, 1, 1, 50, ''),
(2, '区域', 'field2', 1, 4, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(3, '价格', 'field3', 1, 3, 'text', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:9:"100000000";}', 1, 0, 0, 1, 1, 10, '元（人民币）'),
(4, '房屋类型', 'field4', 1, 2, 'radio', 'a:5:{i:0;s:8:"1=住宅";i:1;s:8:"2=民房";i:2;s:8:"3=别墅";i:3;s:8:"4=商铺";i:4;s:17:"5=经济适用房";}', 1, 1, 1, 1, 1, 0, ''),
(5, '租赁类型', 'field5', 1, 5, 'select', 'a:4:{i:0;s:8:"1=全部";i:1;s:8:"2=整租";i:2;s:8:"3=合租";i:3;s:8:"4=短租";}', 1, 0, 1, 1, 1, 0, ''),
(6, '来源', 'field6', 1, 6, 'radio', 'a:2:{i:0;s:8:"1=个人";i:1;s:8:"2=中介";}', 1, 0, 1, 0, 1, 0, ''),
(7, '楼层', 'field7', 1, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(8, '/', 'field8', 1, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：2/6，表示第2层，总共6层。'),
(9, '建筑面积', 'field9', 1, 8, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:5:"10000";}', 1, 0, 0, 0, 0, 0, '平方米'),
(10, '建筑年代', 'field10', 1, 9, 'select', 'a:19:{i:0;s:6:"1=1991";i:1;s:6:"2=1992";i:2;s:6:"3=1993";i:3;s:6:"4=1994";i:4;s:6:"5=1995";i:5;s:6:"6=1996";i:6;s:6:"7=1997";i:7;s:6:"8=1998";i:8;s:6:"9=1999";i:9;s:7:"10=2000";i:10;s:7:"11=2001";i:11;s:7:"12=2002";i:12;s:7:"13=2003";i:13;s:7:"14=2004";i:14;s:7:"15=2005";i:15;s:7:"16=2006";i:16;s:7:"17=2007";i:17;s:7:"18=2008";i:18;s:7:"19=2009";}', 1, 0, 1, 0, 0, 0, '年'),
(11, '特色房屋', 'field11', 1, 11, 'radio', 'a:8:{i:0;s:11:"1=地铁房";i:1;s:11:"2=学区房";i:2;s:8:"3=婚房";i:3;s:11:"4=海景房";i:4;s:11:"5=湖景房";i:5;s:11:"6=江景房";i:6;s:11:"7=赡老房";i:7;s:8:"8=其他";}', 1, 0, 1, 0, 0, 0, ''),
(12, '装修情况', 'field12', 1, 12, 'radio', 'a:5:{i:0;s:8:"1=全部";i:1;s:8:"2=毛坯";i:2;s:8:"3=简装";i:3;s:8:"4=中装";i:4;s:8:"5=精装";}', 1, 1, 1, 0, 0, 0, ''),
(13, '电话', 'field13', 1, 14, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(14, '-', 'field14', 1, 14, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如：0571-12345678'),
(15, '手机', 'field15', 1, 15, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：13812345678'),
(16, '地址', 'field16', 1, 16, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(17, '有效期', 'field17', 1, 17, 'select', 'a:7:{i:0;s:11:"1=一星期";i:1;s:11:"2=半个月";i:2;s:11:"3=一个月";i:3;s:11:"4=三个月";i:4;s:8:"5=半年";i:5;s:8:"6=一年";i:6;s:8:"7=长期";}', 1, 0, 0, 0, 0, 0, ''),
(18, '房屋图片', 'field18', 1, 18, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(19, '最短租期', 'field19', 1, 10, 'select', 'a:5:{i:0;s:8:"1=一月";i:1;s:8:"2=二月";i:2;s:8:"3=三月";i:3;s:8:"4=半年";i:4;s:8:"5=一年";}', 1, 0, 0, 0, 0, 0, ''),
(20, '户型{#}室', 'field20', 1, 13, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(21, '{#}厅', 'field21', 1, 13, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(22, '{#}卫', 'field22', 1, 13, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(23, '{#}阳台', 'field23', 1, 13, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(24, '区域', 'field24', 2, 2, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(25, '楼盘名称', 'field25', 2, 1, 'text', 'b:0;', 1, 0, 1, 1, 1, 50, ''),
(26, '价格', 'field26', 2, 3, 'text', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:9:"100000000";}', 1, 0, 0, 1, 1, 0, '元（人民币）'),
(27, '房屋类型', 'field27', 2, 4, 'radio', 'a:5:{i:0;s:8:"1=住宅";i:1;s:8:"2=民房";i:2;s:8:"3=别墅";i:3;s:8:"4=商铺";i:4;s:17:"5=经济适用房";}', 1, 1, 1, 1, 1, 0, ''),
(28, '来源', 'field28', 2, 6, 'radio', 'a:2:{i:0;s:8:"1=个人";i:1;s:8:"2=中介";}', 1, 0, 1, 0, 1, 0, ''),
(29, '楼层', 'field29', 2, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(30, '/', 'field30', 2, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：2/6，表示第2层，总共6层。'),
(31, '房屋状态', 'field31', 2, 5, 'select', 'a:3:{i:0;s:8:"1=现房";i:1;s:8:"2=期房";i:2;s:8:"3=尾房";}', 1, 1, 1, 0, 0, 0, ''),
(32, '建筑面积', 'field32', 2, 8, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:5:"10000";}', 1, 0, 0, 0, 1, 0, '平方米'),
(33, '建筑年代', 'field33', 2, 9, 'select', 'a:19:{i:0;s:6:"1=1991";i:1;s:6:"2=1992";i:2;s:6:"3=1993";i:3;s:6:"4=1994";i:4;s:6:"5=1995";i:5;s:6:"6=1996";i:6;s:6:"7=1997";i:7;s:6:"8=1998";i:8;s:6:"9=1999";i:9;s:7:"10=2000";i:10;s:7:"11=2001";i:11;s:7:"12=2002";i:12;s:7:"13=2003";i:13;s:7:"14=2004";i:14;s:7:"15=2005";i:15;s:7:"16=2006";i:16;s:7:"17=2007";i:17;s:7:"18=2008";i:18;s:7:"19=2009";}', 1, 0, 0, 0, 0, 0, '年'),
(34, '特色房屋', 'field34', 2, 10, 'radio', 'a:8:{i:0;s:11:"1=地铁房";i:1;s:11:"2=学区房";i:2;s:8:"3=婚房";i:3;s:11:"4=海景房";i:4;s:11:"5=湖景房";i:5;s:11:"6=江景房";i:6;s:11:"7=赡老房";i:7;s:8:"8=其他";}', 1, 0, 1, 0, 0, 0, ''),
(35, '装修情况', 'field35', 2, 11, 'radio', 'a:5:{i:0;s:8:"1=全部";i:1;s:8:"2=毛坯";i:2;s:8:"3=简装";i:3;s:8:"4=中装";i:4;s:8:"5=精装";}', 1, 1, 1, 0, 0, 0, ''),
(36, '电话', 'field36', 2, 13, 'number', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(37, '-', 'field37', 2, 13, 'number', 'b:0;', 1, 0, 0, 0, 0, 20, '例如：0571-12345678'),
(38, '手机', 'field38', 2, 14, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(39, '地址', 'field39', 2, 15, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(40, '有效期', 'field40', 2, 16, 'select', 'a:7:{i:0;s:11:"1=一星期";i:1;s:11:"2=半个月";i:2;s:11:"3=一个月";i:3;s:11:"4=三个月";i:4;s:8:"5=半年";i:5;s:8:"6=一年";i:6;s:8:"7=长期";}', 1, 0, 1, 0, 0, 0, ''),
(41, '房屋图片', 'field41', 2, 17, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(42, '户型{#}室', 'field42', 2, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(43, '{#}厅', 'field43', 2, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(44, '{#}卫', 'field44', 2, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(45, '{#}阳台', 'field45', 2, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(46, '区域', 'field46', 3, 2, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(47, '楼盘名称', 'field47', 3, 1, 'text', 'b:0;', 1, 1, 1, 1, 1, 50, ''),
(48, '价格', 'field48', 3, 3, 'text', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:9:"100000000";}', 1, 0, 0, 1, 1, 0, '元（人民币）'),
(49, '房屋类型', 'field49', 3, 4, 'radio', 'a:5:{i:0;s:8:"1=住宅";i:1;s:8:"2=民房";i:2;s:8:"3=别墅";i:3;s:8:"4=商铺";i:4;s:17:"5=经济适用房";}', 1, 1, 1, 0, 1, 0, ''),
(50, '来源', 'field50', 3, 6, 'radio', 'a:2:{i:0;s:8:"1=个人";i:1;s:8:"2=中介";}', 1, 0, 1, 0, 0, 0, ''),
(51, '楼层', 'field51', 3, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(52, '/', 'field52', 3, 7, 'number', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：2/6，表示第2层，总共6层。'),
(53, '房屋状态', 'field53', 3, 5, 'select', 'a:3:{i:0;s:8:"1=现房";i:1;s:8:"2=期房";i:2;s:8:"3=尾房";}', 1, 1, 1, 0, 0, 0, ''),
(54, '建筑面积', 'field54', 3, 8, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:5:"10000";}', 1, 0, 0, 1, 1, 0, '平方米'),
(55, '建筑年代', 'field55', 3, 9, 'select', 'a:19:{i:0;s:6:"1=1991";i:1;s:6:"2=1992";i:2;s:6:"3=1993";i:3;s:6:"4=1994";i:4;s:6:"5=1995";i:5;s:6:"6=1996";i:6;s:6:"7=1997";i:7;s:6:"8=1998";i:8;s:6:"9=1999";i:9;s:7:"10=2000";i:10;s:7:"11=2001";i:11;s:7:"12=2002";i:12;s:7:"13=2003";i:13;s:7:"14=2004";i:14;s:7:"15=2005";i:15;s:7:"16=2006";i:16;s:7:"17=2007";i:17;s:7:"18=2008";i:18;s:7:"19=2009";}', 1, 0, 1, 0, 0, 0, '年'),
(56, '特色房屋', 'field56', 3, 10, 'radio', 'a:8:{i:0;s:11:"1=地铁房";i:1;s:11:"2=学区房";i:2;s:8:"3=婚房";i:3;s:11:"4=海景房";i:4;s:11:"5=湖景房";i:5;s:11:"6=江景房";i:6;s:11:"7=赡老房";i:7;s:8:"8=其他";}', 1, 0, 1, 0, 0, 0, ''),
(57, '装修情况', 'field57', 3, 11, 'radio', 'a:5:{i:0;s:8:"1=全部";i:1;s:8:"2=毛坯";i:2;s:8:"3=简装";i:3;s:8:"4=中装";i:4;s:8:"5=精装";}', 1, 0, 1, 0, 0, 0, ''),
(58, '户型{#}室', 'field58', 3, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(59, '{#}厅', 'field59', 3, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(60, '{#}卫', 'field60', 3, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(61, '{#}阳台', 'field61', 3, 12, 'select', 'a:7:{i:0;s:3:"1=0";i:1;s:3:"2=1";i:2;s:3:"3=2";i:3;s:3:"4=3";i:4;s:3:"5=4";i:5;s:3:"6=5";i:6;s:3:"7=6";}', 1, 0, 0, 0, 0, 0, ''),
(62, '电话', 'field62', 3, 13, 'number', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(63, '-', 'field63', 3, 13, 'number', 'b:0;', 1, 0, 0, 0, 0, 20, '例如：0571-12345678'),
(64, '手机', 'field64', 3, 14, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(65, '地址', 'field65', 3, 15, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(66, '有效期', 'field66', 3, 16, 'select', 'a:7:{i:0;s:11:"1=一星期";i:1;s:11:"2=半个月";i:2;s:11:"3=一个月";i:3;s:11:"4=三个月";i:4;s:8:"5=半年";i:5;s:8:"6=一年";i:6;s:8:"7=长期";}', 1, 0, 0, 0, 0, 0, ''),
(67, '房屋图片', 'field67', 3, 17, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(68, '店名', 'field68', 4, 1, 'text', 'b:0;', 1, 1, 1, 1, 1, 50, ''),
(69, '经营性质', 'field69', 4, 2, 'radio', 'a:5:{i:0;s:9:"1=中餐 ";i:1;s:9:"2=西餐 ";i:2;s:9:"3=快餐 ";i:3;s:9:"4=小吃 ";i:4;s:9:"5=其它 ";}', 1, 1, 1, 1, 1, 0, ''),
(70, '美食分类', 'field70', 4, 3, 'radio', 'a:16:{i:0;s:12:"1=江浙菜 ";i:1;s:9:"2=川菜 ";i:2;s:9:"3=湘菜 ";i:3;s:9:"4=粤菜 ";i:4;s:12:"5=东北菜 ";i:5;s:12:"6=日韩菜 ";i:6;s:12:"7=特色菜 ";i:7;s:9:"8=西餐 ";i:8;s:9:"9=快餐 ";i:9;s:10:"10=海鲜 ";i:10;s:10:"11=烧烤 ";i:11;s:10:"12=火锅 ";i:12;s:10:"13=清真 ";i:13;s:10:"14=小吃 ";i:14;s:16:"15=蛋糕面包 ";i:15;s:16:"16=甜点饮料 ";}', 1, 1, 1, 1, 1, 0, ''),
(71, '区域', 'field71', 4, 4, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(72, '电话', 'field72', 4, 5, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(73, '-', 'field73', 4, 5, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如：0571-12345678'),
(74, '地址', 'field74', 4, 7, 'text', 'b:0;', 1, 0, 1, 0, 0, 50, ''),
(75, '公交', 'field75', 4, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(76, '车位', 'field76', 4, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(77, '营业时间', 'field77', 4, 10, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(78, '-', 'field78', 4, 10, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：上午9点-晚上10点'),
(79, '营业状态', 'field79', 4, 12, 'radio', 'a:2:{i:0;s:11:"1=营业中";i:1;s:11:"2=已歇业";}', 1, 0, 1, 0, 1, 0, ''),
(80, '图片上传', 'field80', 4, 13, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(81, '店名', 'field81', 5, 1, 'text', 'b:0;', 1, 1, 1, 1, 1, 50, ''),
(82, '经营性质', 'field82', 5, 2, 'radio', 'a:2:{i:0;s:14:"1=婚介交友";i:1;s:14:"2=婚庆服务";}', 1, 1, 1, 1, 1, 0, ''),
(83, '区域', 'field83', 5, 3, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(84, '电话', 'field84', 5, 4, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(85, '-', 'field85', 5, 4, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如，0571-12345678'),
(86, '地址', 'field86', 5, 6, 'text', 'b:0;', 1, 0, 1, 0, 0, 50, ''),
(87, '公交', 'field87', 5, 7, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(88, '车位', 'field88', 5, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(89, '营业时间', 'field89', 5, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(90, '-', 'field90', 5, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：上午9点-晚上10点'),
(91, '营业状态', 'field91', 5, 11, 'radio', 'a:2:{i:0;s:11:"1=营业中";i:1;s:11:"2=已歇业";}', 1, 0, 1, 0, 0, 0, ''),
(92, '图片上传', 'field92', 5, 12, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(93, '店名', 'field93', 6, 1, 'text', 'b:0;', 1, 1, 1, 1, 1, 50, ''),
(94, '经营性质', 'field94', 6, 2, 'radio', 'a:7:{i:0;s:14:"1=母婴产品";i:1;s:14:"2=儿童服装";i:2;s:14:"3=美容美体";i:3;s:14:"4=早教机构";i:4;s:14:"5=出行游乐";i:5;s:14:"6=婴儿摄影";i:6;s:14:"7=家政月嫂";}', 1, 1, 1, 1, 1, 0, ''),
(95, '区域', 'field95', 6, 3, 'select', 'a:7:{i:0;s:8:"1=杭州";i:1;s:11:"2=西湖区";i:2;s:11:"3=拱墅区";i:3;s:11:"4=下城区";i:4;s:11:"5=上城区";i:5;s:11:"6=下沙区";i:6;s:11:"7=滨江区";}', 1, 1, 1, 1, 1, 0, ''),
(96, '电话', 'field96', 6, 4, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(97, '-', 'field97', 6, 4, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如，0571-12345678'),
(98, '地址', 'field98', 6, 6, 'text', 'b:0;', 1, 0, 1, 0, 0, 50, ''),
(99, '公交', 'field99', 6, 7, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(100, '车位', 'field100', 6, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(101, '营业时间', 'field101', 6, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(102, '-', 'field102', 6, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '例如：上午9点-晚上10点'),
(103, '营业状态', 'field103', 6, 11, 'radio', 'a:2:{i:0;s:11:"1=营业中";i:1;s:11:"2=已歇业";}', 1, 0, 1, 0, 0, 0, ''),
(104, '图片上传', 'field104', 6, 12, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(105, '卖家身份', 'field105', 7, 1, 'radio', 'a:2:{i:0;s:8:"1=个人";i:1;s:14:"2=出租公司";}', 1, 1, 1, 0, 1, 0, ''),
(106, '车辆类型', 'field106', 7, 2, 'checkbox', 'a:15:{i:0;s:11:"1=微型车";i:1;s:14:"2=小型轿车";i:2;s:17:"3=紧凑型轿车";i:3;s:14:"4=中型轿车";i:4;s:17:"5=豪华型轿车";i:5;s:11:"6=面包车";i:6;s:11:"7=越野车";i:7;s:8:"8=跑车";i:8;s:9:"9=SUV/SRV";i:9;s:6:"10=MPV";i:10;s:16:"11=客车/中巴";i:11;s:16:"12=货车/皮卡";i:12;s:15:"13=厢式货车";i:13;s:15:"14=工程车辆";i:14;s:9:"15=其他";}', 1, 1, 1, 1, 1, 0, ''),
(107, '车辆型号', 'field107', 7, 3, 'text', 'b:0;', 1, 1, 1, 1, 1, 0, ''),
(108, '新旧程度', 'field108', 7, 4, 'select', 'a:7:{i:0;s:8:"1=全新";i:1;s:6:"2=9成";i:2;s:6:"3=8成";i:3;s:6:"4=7成";i:4;s:6:"5=6成";i:5;s:6:"6=5成";i:6;s:12:"7=5成以下";}', 1, 1, 1, 1, 1, 0, ''),
(109, '预售价位', 'field109', 7, 5, 'number', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:8:"10000000";}', 1, 0, 0, 0, 1, 0, '元'),
(110, '电话', 'field110', 7, 6, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(111, '-', 'field111', 7, 6, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如：0571-12345678'),
(112, '手机', 'field112', 7, 7, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(113, '地址', 'field113', 7, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(114, '联系人', 'field114', 7, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(115, '车辆图片', 'field115', 7, 10, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(116, '出租者身份', 'field116', 8, 1, 'radio', 'a:2:{i:0;s:8:"1=个人";i:1;s:14:"2=出租公司";}', 1, 1, 1, 0, 1, 0, ''),
(117, '车辆类型', 'field117', 8, 2, 'checkbox', 'a:15:{i:0;s:11:"1=微型车";i:1;s:14:"2=小型轿车";i:2;s:17:"3=紧凑型轿车";i:3;s:14:"4=中型轿车";i:4;s:17:"5=豪华型轿车";i:5;s:11:"6=面包车";i:6;s:11:"7=越野车";i:7;s:8:"8=跑车";i:8;s:9:"9=SUV/SRV";i:9;s:6:"10=MPV";i:10;s:16:"11=客车/中巴";i:11;s:16:"12=货车/皮卡";i:12;s:15:"13=厢式货车";i:13;s:15:"14=工程车辆";i:14;s:9:"15=其他";}', 1, 1, 1, 0, 1, 0, ''),
(118, '车辆型号', 'field118', 8, 3, 'text', 'b:0;', 1, 1, 1, 1, 1, 0, ''),
(119, '出租价格', 'field119', 8, 5, 'text', 'a:2:{s:6:"minnum";s:1:"1";s:6:"maxnum";s:8:"10000000";}', 1, 0, 0, 1, 1, 0, '元/天'),
(120, '电话', 'field120', 8, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 10, ''),
(121, '-', 'field121', 8, 8, 'text', 'b:0;', 1, 0, 0, 0, 0, 20, '例如，0571-12345678'),
(122, '手机', 'field122', 8, 9, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(123, '地址', 'field123', 8, 10, 'text', 'b:0;', 1, 0, 0, 0, 0, 50, ''),
(124, '联系人', 'field124', 8, 11, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(125, '车辆图片', 'field125', 8, 12, 'upload', 'b:0;', 1, 0, 0, 0, 0, 0, ''),
(126, '服务内容', 'field126', 8, 4, 'checkbox', 'a:7:{i:0;s:14:"1=班车接送";i:1;s:26:"2=个人单位长租短包";i:2;s:14:"3=会展服务";i:3;s:14:"4=婚庆服务";i:4;s:14:"5=机场接送";i:5;s:14:"6=商务旅游";i:6;s:8:"7=其他";}', 1, 1, 1, 1, 1, 0, ''),
(127, '押金', 'field127', 8, 6, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '元'),
(128, '里程限制', 'field128', 8, 7, 'text', 'b:0;', 1, 0, 0, 0, 0, 0, '公里');

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicmodel`
--

CREATE TABLE `pw_topicmodel` (
  `modelid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `cateid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ifable` tinyint(3) NOT NULL DEFAULT '1',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_topicmodel`
--

INSERT INTO `pw_topicmodel` (`modelid`, `name`, `cateid`, `ifable`, `vieworder`) VALUES
(1, '出租', 1, 1, 1),
(2, '出售', 1, 1, 2),
(3, '求购', 1, 1, 4),
(4, '美食', 2, 1, 0),
(5, '婚庆婚介', 3, 1, 0),
(6, '母婴', 4, 1, 0),
(7, '出售', 5, 1, 0),
(8, '出租', 5, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_topictype`
--

CREATE TABLE `pw_topictype` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT '0',
  `upid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `ifsys` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue1`
--

CREATE TABLE `pw_topicvalue1` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field1` varchar(255) NOT NULL,
  `field2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field3` varchar(255) NOT NULL,
  `field4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field7` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field8` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field9` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field11` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field12` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field13` varchar(255) NOT NULL,
  `field14` varchar(255) NOT NULL,
  `field15` varchar(255) NOT NULL,
  `field16` varchar(255) NOT NULL,
  `field17` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field18` varchar(255) NOT NULL,
  `field19` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field20` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field21` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field22` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field23` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue2`
--

CREATE TABLE `pw_topicvalue2` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field24` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field25` varchar(255) NOT NULL,
  `field26` varchar(255) NOT NULL,
  `field27` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field28` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field29` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field30` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field31` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field32` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field33` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field34` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field35` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field36` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field37` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field38` varchar(255) NOT NULL,
  `field39` varchar(255) NOT NULL,
  `field40` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field41` varchar(255) NOT NULL,
  `field42` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field43` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field44` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field45` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue3`
--

CREATE TABLE `pw_topicvalue3` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field46` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field47` varchar(255) NOT NULL,
  `field48` varchar(255) NOT NULL,
  `field49` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field50` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field51` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field52` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field53` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field54` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field55` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field56` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field57` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field58` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field59` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field60` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field61` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field62` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field63` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field64` varchar(255) NOT NULL,
  `field65` varchar(255) NOT NULL,
  `field66` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field67` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue4`
--

CREATE TABLE `pw_topicvalue4` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field68` varchar(255) NOT NULL,
  `field69` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field70` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field71` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field72` varchar(255) NOT NULL,
  `field73` varchar(255) NOT NULL,
  `field74` varchar(255) NOT NULL,
  `field75` varchar(255) NOT NULL,
  `field76` varchar(255) NOT NULL,
  `field77` varchar(255) NOT NULL,
  `field78` varchar(255) NOT NULL,
  `field79` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field80` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue5`
--

CREATE TABLE `pw_topicvalue5` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field81` varchar(255) NOT NULL,
  `field82` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field83` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field84` varchar(255) NOT NULL,
  `field85` varchar(255) NOT NULL,
  `field86` varchar(255) NOT NULL,
  `field87` varchar(255) NOT NULL,
  `field88` varchar(255) NOT NULL,
  `field89` varchar(255) NOT NULL,
  `field90` varchar(255) NOT NULL,
  `field91` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field92` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue6`
--

CREATE TABLE `pw_topicvalue6` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field93` varchar(255) NOT NULL,
  `field94` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field95` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field96` varchar(255) NOT NULL,
  `field97` varchar(255) NOT NULL,
  `field98` varchar(255) NOT NULL,
  `field99` varchar(255) NOT NULL,
  `field100` varchar(255) NOT NULL,
  `field101` varchar(255) NOT NULL,
  `field102` varchar(255) NOT NULL,
  `field103` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field104` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue7`
--

CREATE TABLE `pw_topicvalue7` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field105` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field106` varchar(255) NOT NULL,
  `field107` varchar(255) NOT NULL,
  `field108` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field109` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field110` varchar(255) NOT NULL,
  `field111` varchar(255) NOT NULL,
  `field112` varchar(255) NOT NULL,
  `field113` varchar(255) NOT NULL,
  `field114` varchar(255) NOT NULL,
  `field115` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_topicvalue8`
--

CREATE TABLE `pw_topicvalue8` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `fid` smallint(6) UNSIGNED NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `field116` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field117` varchar(255) NOT NULL,
  `field118` varchar(255) NOT NULL,
  `field119` varchar(255) NOT NULL,
  `field120` varchar(255) NOT NULL,
  `field121` varchar(255) NOT NULL,
  `field122` varchar(255) NOT NULL,
  `field123` varchar(255) NOT NULL,
  `field124` varchar(255) NOT NULL,
  `field125` varchar(255) NOT NULL,
  `field126` varchar(255) NOT NULL,
  `field127` varchar(255) NOT NULL,
  `field128` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_tpl`
--

CREATE TABLE `pw_tpl` (
  `tplid` smallint(6) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `tagcode` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_tpl`
--

INSERT INTO `pw_tpl` (`tplid`, `type`, `name`, `descrip`, `tagcode`, `image`) VALUES
(1, 'subject', '帖子列表1', '由一张图片和若干帖子列表组成', '<list action="image" num="1" title="图片模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n</loop>\r\n<list action="subject" num="10" title="帖子排行模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" title="{title}" target="_blank">{title,30}</a></li>\r\n</loop>\r\n</ul>', '1.jpg'),
(2, 'subject', '帖子列表2', '由标题和摘要组成', '<list action="subject" num="3" title="帖子及摘要" />\r\n<loop>\r\n<h4><a href="{url}" target="_blank">{title,25}</a></h4>\r\n<p>{descrip,40}</p>\r\n<ul class="cc area-list-tree">\r\n{tagrelate}\r\n</ul>\r\n</loop>', '2.jpg'),
(3, 'subject', '帖子列表3', '由若干图片和若干帖子列表组成，图片在帖子列表的左侧', '<list action="image" num="2" title="图片模块" />\r\n<table width="100%">\r\n<tr>\r\n<th>\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n</loop>\r\n</th>\r\n<td>\r\n<list action="subject" num="10" title="帖子排行模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" title="{title}" target="_blank">{title,30}</a></li>\r\n</loop>\r\n</ul>\r\n</td>\r\n</tr></table>', '3.jpg'),
(4, 'subject', '帖子列表4', '只由帖子列表组成', '<list action="subject" num="8" title="帖子列表" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" target="_blank">{title,32}</a></li>\r\n</loop>\r\n</ul>', '4.jpg'),
(5, 'image', '图文混合', '由图片和帖子列表，及摘早组成', '<list action="image" num="3" title="图文模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n<h4><a href="{url}" target="_blank">{title,32}</a></h4>\r\n<p>{descrip,50}</p>\r\n<div class="c"></div>\r\n</loop>', '5.jpg'),
(6, 'subject', '帖子列表6', '由若干图片和若干帖子列表组成，图片在帖子列表的左侧,且图片带有标题', '<list action="image" num="4" title="图片模块" />\r\n<table width="100%">\r\n<tr>\r\n<th>\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /><p>{title,8}</p></a>\r\n</loop>\r\n</th>\r\n<td>\r\n<list action="subject" num="12" title="帖子排行模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" title="{title}" target="_blank">{title,30}</a></li>\r\n</loop>\r\n</ul>\r\n</td>\r\n</tr></table>', '6.jpg'),
(7, 'image', '最新图片', '包括图片，和图片所在的帖子名称', '<list action="image" num="6" title="图片模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /><p>{title,8}</p></a>\r\n</loop>', '7.jpg'),
(8, 'forum', '版块排行', '版块排行列表', '<list action="forum" num="12" title="版块模块" />\r\n<ul>\r\n<loop>\r\n<li><span class="fr">{value}</span><a href="{url}" target="_blank">{title}</a></li>\r\n</loop>\r\n</ul>', '8.jpg'),
(9, 'user', '用户排行', '版块排行列表', '<list action="user" num="12" title="用户模块" />\r\n<ul>\r\n<loop>\r\n<li><span>{value}</span><img src="{image,40,40}" align="absmiddle" /> <a href="{url}" target="_blank">{title}</a></li>\r\n</loop>\r\n</ul>', '9.jpg'),
(11, 'player', '播放器1', '播放器', '<div id="pwSlidePlayer" class="pwSlide cc">\r\n<!--#\r\n	$tmpCount=0;\r\n#-->\r\n					<list action="image" num="6" title="播放器" />\r\n					<loop>\r\n<!--#\r\n	$tmpStyle = $tmpCount ? \'style="display:none;"\' : \'\';\r\n	$tmpCount++;\r\n#-->\r\n                        <div id="Switch_$key" $tmpStyle>\r\n                            <a href="{url}" target="_blank"><img class="pwSlideFilter" src="{image,288,198}" />\r\n							<h1>{title,36}</h1></a>\r\n                        </div>\r\n                        </loop>\r\n					<ul id="SwitchNav"></ul>\r\n					<div class="pwSlide-bg"></div>\r\n				</div>\r\n				<div class="c"></div>\r\n				<script type="text/javascript" src="js/sliderplayer.js"></script>\r\n				<script type="text/javascript">pwSliderPlayers("pwSlidePlayer");</script>', '10.jpg'),
(12, 'user', '用户排行2', '不包括头像', '<list action="user" num="12" title="用户模块" />\r\n<ul>\r\n<loop>\r\n<li><span class="fr">{value}</span><a href="{url}" target="_blank">{title}</a></li>\r\n</loop>\r\n</ul>', '11.jpg'),
(13, 'subject', '帖子列表5', '包括帖子所在的版块', '<list action="subject" num="12" title="帖子列表" />\r\n<ul>\r\n<loop>\r\n<li><span><a href="{forumurl}" target="_blank">[{forumname}]</a></span><a href="{url}"  target="_blank">{title,32}</a></li>\r\n</loop>\r\n</ul>', '12.jpg'),
(14, 'subject', '帖子列表7', '包括帖子标题和作者', '<list action="subject" num="12" title="帖子列表" />\r\n<ul>\r\n<loop>\r\n<li><span class="fr"><a href="u.php?username={author}" target="_blank">{author}</a></span><a href="{url}"  target="_blank">{title,32}</a></li>\r\n</loop>\r\n</ul>', '13.jpg'),
(15, 'subject', '帖子图片复合', '由一个图片有标题模块和帖子模块组成', '<list action="image" num="2" title="图片模块" />\r\n<table width="100%">\r\n<tr>\r\n<th>\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n<h4><a href="{url}" target="_blank">{title,32}</a></h4>\r\n<p>{descrip,50}</p>\r\n<div class="c"></div>\r\n</loop>\r\n</th>\r\n<td>\r\n<list action="subject" num="10" title="帖子排行模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="u.php?username={author}" class="fr">{author}</a><a href="{url}" title="{title}" target="_blank">{title,30}</a></li>\r\n</loop>\r\n</ul>\r\n</td>\r\n</tr></table>', '14.jpg'),
(16, 'image', '图片列表', '只包括图片', '<list action="image" num="6" title="图片模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n</loop>', '15.jpg'),
(17, 'subject', '帖子列表及说明', '包括版块名称帖子及摘要说明', '<list action="subject" num="10" title="帖子列表" />\r\n<ul>\r\n<loop>\r\n<li><a href="{forumurl}"><span>[{forumname}]</span></a><a href="{url}" target="_blank">{title,28}</a><span>&nbsp;{descrip,22}</span></li>\r\n</loop>\r\n</ul>', '16.jpg'),
(18, 'subject', '帖子及图片复合', '由图片模块和帖子模块组成', '<list action="image" num="3" title="图片模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n</loop>\r\n<div class="c"></div>\r\n<list action="subject" num="7" title="帖子模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" target="_blank">{title,36}</a></li>\r\n</loop>\r\n</ul>', '17.jpg'),
(19, 'tag', '标签模块', '标签列表', '<list action="tag" num="10" title="标签模块" />\r\n<loop>\r\n<a href="{url}" target="_blank">{title}</a>\r\n</loop>', '18.jpg'),
(20, 'subject', '帖子及图片复合2', '由图片模块和帖子模块组成', '<list action="image" num="1" title="图片模块" />\r\n<loop>\r\n<a href="{url}" target="_blank"><img src="{image,100,100}" class="fl" /></a>\r\n<h4><a href="{url}" target="_blank">{title,40}</a></h4>\r\n<p>{descrip,60}</p>\r\n</loop>\r\n<div class="c"></div>\r\n<list action="subject" num="7" title="帖子模块" />\r\n<ul>\r\n<loop>\r\n<li><a href="{url}" target="_blank">{title,40}</a></li>\r\n</loop>\r\n</ul>', '19.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pw_trade`
--

CREATE TABLE `pw_trade` (
  `tid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `icon` varchar(80) NOT NULL DEFAULT '',
  `degree` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `type` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `num` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `salenum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `costprice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `locus` varchar(30) NOT NULL DEFAULT '',
  `paymethod` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `transport` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `mailfee` decimal(6,2) NOT NULL DEFAULT '0.00',
  `expressfee` decimal(6,2) NOT NULL DEFAULT '0.00',
  `emsfee` decimal(6,2) NOT NULL DEFAULT '0.00',
  `deadline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_tradeorder`
--

CREATE TABLE `pw_tradeorder` (
  `oid` mediumint(8) UNSIGNED NOT NULL,
  `order_no` varchar(30) NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL DEFAULT '',
  `buyer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seller` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `quantity` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `transportfee` decimal(6,2) NOT NULL DEFAULT '0.00',
  `transport` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `buydate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tradedate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifpay` tinyint(3) NOT NULL DEFAULT '0',
  `address` varchar(80) NOT NULL DEFAULT '',
  `consignee` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `zip` varchar(15) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `payment` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tradeinfo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ucapp`
--

CREATE TABLE `pw_ucapp` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(50) NOT NULL DEFAULT '',
  `secretkey` varchar(40) NOT NULL DEFAULT '',
  `interface` varchar(30) NOT NULL DEFAULT '',
  `uc` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ucnotify`
--

CREATE TABLE `pw_ucnotify` (
  `nid` mediumint(8) NOT NULL,
  `action` varchar(20) NOT NULL DEFAULT '',
  `param` text NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `complete` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_ucsyncredit`
--

CREATE TABLE `pw_ucsyncredit` (
  `uid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_userapp`
--

CREATE TABLE `pw_userapp` (
  `uid` int(10) UNSIGNED NOT NULL,
  `appid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `appname` varchar(20) NOT NULL DEFAULT '',
  `appinfo` text NOT NULL,
  `appevent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_userbinding`
--

CREATE TABLE `pw_userbinding` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `password` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_usercache`
--

CREATE TABLE `pw_usercache` (
  `uid` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_usercache`
--

INSERT INTO `pw_usercache` (`uid`, `type`, `typeid`, `expire`, `num`, `value`) VALUES
(1, 'friend', 0, 1471681914, 5, 'a:0:{}'),
(1, 'tags', 0, 1471080714, 10, 'a:0:{}'),
(1, 'messageboard', 0, 1471681914, 5, 'a:0:{}'),
(1, 'article', 0, 1471077114, 5, 'a:1:{i:1;a:12:{s:3:"tid";s:1:"1";s:7:"subject";s:37:"嗷嗷嗷 嗷嗷嗷&nbsp;&nbsp;啊呜";s:8:"postdate";s:10:"2016-08-13";s:7:"replies";s:1:"0";s:4:"hits";s:1:"2";s:9:"anonymous";s:1:"0";s:8:"authorid";s:1:"1";s:8:"forumsid";s:1:"2";s:6:"forums";s:12:"默认版块";s:10:"allowvisit";s:0:"";s:8:"password";s:0:"";s:7:"content";s:19:"胖子狗 嗷嗷嗷";}}'),
(1, 'reply', 0, 1471077114, 5, 'a:0:{}');

-- --------------------------------------------------------

--
-- 表的结构 `pw_usergroups`
--

CREATE TABLE `pw_usergroups` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `gptype` enum('default','member','system','special') NOT NULL DEFAULT 'member',
  `grouptitle` varchar(60) NOT NULL DEFAULT '',
  `groupimg` varchar(15) NOT NULL DEFAULT '',
  `grouppost` int(10) NOT NULL DEFAULT '0',
  `ifdefault` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_usergroups`
--

INSERT INTO `pw_usergroups` (`gid`, `gptype`, `grouptitle`, `groupimg`, `grouppost`, `ifdefault`) VALUES
(1, 'default', 'default', '0', 0, 1),
(2, 'default', '游客', '0', 0, 0),
(3, 'system', '管理员', '21', 0, 0),
(4, 'system', '总版主', '20', 0, 0),
(5, 'system', '论坛版主', '19', 0, 0),
(6, 'default', '禁止发言', '0', 0, 0),
(7, 'default', '未验证会员', '0', 0, 0),
(8, 'member', '新手上路', '1', 0, 0),
(9, 'member', '侠客', '2', 100, 0),
(10, 'member', '骑士', '3', 300, 0),
(11, 'member', '圣骑士', '4', 600, 0),
(12, 'member', '精灵王', '5', 1000, 0),
(13, 'member', '风云使者', '6', 5000, 0),
(14, 'member', '光明使者', '7', 10000, 0),
(15, 'member', '天使', '8', 50000, 0),
(16, 'special', '荣誉会员', '16', 0, 0),
(17, 'system', '门户编辑', '18', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pw_usertool`
--

CREATE TABLE `pw_usertool` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `toolid` smallint(6) NOT NULL DEFAULT '0',
  `nums` smallint(6) NOT NULL DEFAULT '0',
  `sellnums` smallint(6) NOT NULL DEFAULT '0',
  `sellprice` varchar(255) NOT NULL DEFAULT '',
  `sellstatus` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_user_career`
--

CREATE TABLE `pw_user_career` (
  `careerid` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `companyid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_user_education`
--

CREATE TABLE `pw_user_education` (
  `educationid` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `schoolid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `educationlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_voter`
--

CREATE TABLE `pw_voter` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `vote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_wappush`
--

CREATE TABLE `pw_wappush` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `typeid` smallint(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_wappushtype`
--

CREATE TABLE `pw_wappushtype` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `sort` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `typename` varchar(50) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_bind`
--

CREATE TABLE `pw_weibo_bind` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weibotype` varchar(20) NOT NULL,
  `info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_cmrelations`
--

CREATE TABLE `pw_weibo_cmrelations` (
  `cid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_cnrelations`
--

CREATE TABLE `pw_weibo_cnrelations` (
  `cyid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_comment`
--

CREATE TABLE `pw_weibo_comment` (
  `cid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(250) NOT NULL DEFAULT '',
  `extra` text NOT NULL,
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_content`
--

CREATE TABLE `pw_weibo_content` (
  `mid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `extra` text NOT NULL,
  `contenttype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `objectid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `transmit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_weibo_content`
--

INSERT INTO `pw_weibo_content` (`mid`, `uid`, `username`, `content`, `extra`, `contenttype`, `type`, `objectid`, `replies`, `transmit`, `postdate`) VALUES
(1, 1, 'admin', '胖子狗 嗷嗷嗷', 'a:4:{s:5:"title";s:37:"嗷嗷嗷 嗷嗷嗷&nbsp;&nbsp;啊呜";s:3:"fid";i:2;s:5:"fname";s:12:"默认版块";s:7:"atusers";N;}', 0, 10, 1, 0, 0, 1471073509);

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_login_session`
--

CREATE TABLE `pw_weibo_login_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sessiondata` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_login_user`
--

CREATE TABLE `pw_weibo_login_user` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hasresetpwd` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `extra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_referto`
--

CREATE TABLE `pw_weibo_referto` (
  `uid` int(10) UNSIGNED NOT NULL,
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_relations`
--

CREATE TABLE `pw_weibo_relations` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authorid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `postdate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_weibo_relations`
--

INSERT INTO `pw_weibo_relations` (`uid`, `mid`, `authorid`, `type`, `postdate`) VALUES
(1, 1, 1, 10, 1471073509);

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_topicattention`
--

CREATE TABLE `pw_weibo_topicattention` (
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_topicrelations`
--

CREATE TABLE `pw_weibo_topicrelations` (
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_weibo_topics`
--

CREATE TABLE `pw_weibo_topics` (
  `topicid` int(10) UNSIGNED NOT NULL,
  `topicname` varchar(255) NOT NULL DEFAULT '',
  `num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ifhot` tinyint(3) NOT NULL DEFAULT '1',
  `crtime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_windcode`
--

CREATE TABLE `pw_windcode` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT '',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `pattern` varchar(30) NOT NULL DEFAULT '',
  `replacement` text NOT NULL,
  `param` tinyint(3) NOT NULL DEFAULT '0',
  `ifopen` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `descrip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_wordfb`
--

CREATE TABLE `pw_wordfb` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `word` varchar(100) NOT NULL DEFAULT '',
  `wordreplace` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `wordtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `custom` tinyint(3) NOT NULL DEFAULT '0',
  `classid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pw_write_smiles`
--

CREATE TABLE `pw_write_smiles` (
  `smileid` smallint(6) UNSIGNED NOT NULL,
  `typeid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vieworder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `tag` varchar(30) NOT NULL DEFAULT '',
  `desciption` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pw_write_smiles`
--

INSERT INTO `pw_write_smiles` (`smileid`, `typeid`, `vieworder`, `path`, `name`, `tag`, `desciption`) VALUES
(1, 0, 1, '1.gif', '微笑', '', ''),
(2, 0, 2, '3.gif', '乖', '', ''),
(3, 0, 3, '4.gif', '花痴', '', ''),
(4, 0, 4, '5.gif', '哈哈', '', ''),
(5, 0, 5, '6.gif', '呼叫', '', ''),
(6, 0, 6, '7.gif', '天使', '', ''),
(7, 0, 7, '8.gif', '摇头', '', ''),
(8, 0, 8, '9.gif', '不会吧', '', ''),
(9, 0, 9, '10.gif', '忧伤', '', ''),
(10, 0, 10, '11.gif', '悲泣', '', ''),
(11, 0, 11, '12.gif', 'I服了U', '', ''),
(12, 0, 12, '13.gif', '背', '', ''),
(13, 0, 13, '14.gif', '鄙视', '', ''),
(14, 0, 14, '15.gif', '大怒', '', ''),
(15, 0, 15, '16.gif', '好的', '', ''),
(16, 0, 16, '17.gif', '鼓掌', '', ''),
(17, 0, 17, '18.gif', '握手', '', ''),
(18, 0, 18, '19.gif', '玫瑰', '', ''),
(19, 0, 19, '20.gif', '心碎', '', ''),
(20, 0, 20, '21.gif', '委屈', '', ''),
(21, 0, 21, '22.gif', '老大', '', ''),
(22, 0, 22, '23.gif', '炸弹', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pw_yun_setting`
--

CREATE TABLE `pw_yun_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pw_acloud_apis`
--
ALTER TABLE `pw_acloud_apis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`name`);

--
-- Indexes for table `pw_acloud_apps`
--
ALTER TABLE `pw_acloud_apps`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `pw_acloud_app_configs`
--
ALTER TABLE `pw_acloud_app_configs`
  ADD UNIQUE KEY `app_id` (`app_id`,`app_key`);

--
-- Indexes for table `pw_acloud_extras`
--
ALTER TABLE `pw_acloud_extras`
  ADD PRIMARY KEY (`ekey`);

--
-- Indexes for table `pw_acloud_keys`
--
ALTER TABLE `pw_acloud_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_acloud_sql_log`
--
ALTER TABLE `pw_acloud_sql_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_acloud_table_settings`
--
ALTER TABLE `pw_acloud_table_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pw_actattachs`
--
ALTER TABLE `pw_actattachs`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `idx_actid` (`actid`);

--
-- Indexes for table `pw_actions`
--
ALTER TABLE `pw_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_active`
--
ALTER TABLE `pw_active`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cid` (`cid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_activity`
--
ALTER TABLE `pw_activity`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_admin` (`admin`);

--
-- Indexes for table `pw_activitycate`
--
ALTER TABLE `pw_activitycate`
  ADD PRIMARY KEY (`actid`),
  ADD KEY `idx_vieworder` (`vieworder`);

--
-- Indexes for table `pw_activitydefaultvalue`
--
ALTER TABLE `pw_activitydefaultvalue`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_actmid_fid` (`actmid`,`fid`);

--
-- Indexes for table `pw_activityfield`
--
ALTER TABLE `pw_activityfield`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `idx_actmid` (`actmid`);

--
-- Indexes for table `pw_activitymembers`
--
ALTER TABLE `pw_activitymembers`
  ADD PRIMARY KEY (`actuid`),
  ADD KEY `idx_tid_uid` (`tid`,`uid`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_fupid` (`fupid`);

--
-- Indexes for table `pw_activitymodel`
--
ALTER TABLE `pw_activitymodel`
  ADD PRIMARY KEY (`actmid`),
  ADD KEY `idx_actid` (`actid`);

--
-- Indexes for table `pw_activitypaylog`
--
ALTER TABLE `pw_activitypaylog`
  ADD PRIMARY KEY (`actpid`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_authorid` (`authorid`),
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_actuid_costtype` (`actuid`,`costtype`),
  ADD KEY `idx_fromuid` (`fromuid`);

--
-- Indexes for table `pw_activityvalue1`
--
ALTER TABLE `pw_activityvalue1`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue2`
--
ALTER TABLE `pw_activityvalue2`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue3`
--
ALTER TABLE `pw_activityvalue3`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue4`
--
ALTER TABLE `pw_activityvalue4`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue5`
--
ALTER TABLE `pw_activityvalue5`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue6`
--
ALTER TABLE `pw_activityvalue6`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue7`
--
ALTER TABLE `pw_activityvalue7`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue8`
--
ALTER TABLE `pw_activityvalue8`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue9`
--
ALTER TABLE `pw_activityvalue9`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue10`
--
ALTER TABLE `pw_activityvalue10`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue11`
--
ALTER TABLE `pw_activityvalue11`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue12`
--
ALTER TABLE `pw_activityvalue12`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue13`
--
ALTER TABLE `pw_activityvalue13`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue14`
--
ALTER TABLE `pw_activityvalue14`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue15`
--
ALTER TABLE `pw_activityvalue15`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue16`
--
ALTER TABLE `pw_activityvalue16`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_activityvalue17`
--
ALTER TABLE `pw_activityvalue17`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_actmember`
--
ALTER TABLE `pw_actmember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_actid` (`actid`),
  ADD KEY `idx_winduid` (`winduid`);

--
-- Indexes for table `pw_actmembers`
--
ALTER TABLE `pw_actmembers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_actid` (`actid`);

--
-- Indexes for table `pw_administrators`
--
ALTER TABLE `pw_administrators`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_adminlog`
--
ALTER TABLE `pw_adminlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type_timestamp` (`type`,`timestamp`),
  ADD KEY `idx_username1` (`username1`),
  ADD KEY `idx_username2` (`username2`);

--
-- Indexes for table `pw_adminset`
--
ALTER TABLE `pw_adminset`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `pw_advert`
--
ALTER TABLE `pw_advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_announce`
--
ALTER TABLE `pw_announce`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `idx_vieworder_startdate` (`vieworder`,`startdate`),
  ADD KEY `idx_fid` (`fid`);

--
-- Indexes for table `pw_areas`
--
ALTER TABLE `pw_areas`
  ADD PRIMARY KEY (`areaid`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_parentid_vieworder` (`parentid`,`vieworder`);

--
-- Indexes for table `pw_area_level`
--
ALTER TABLE `pw_area_level`
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_argument`
--
ALTER TABLE `pw_argument`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_cyid_topped_lastpost` (`cyid`,`topped`,`lastpost`),
  ADD KEY `idx_lastpost` (`lastpost`),
  ADD KEY `idx_postdate` (`postdate`),
  ADD KEY `idx_digest` (`digest`);

--
-- Indexes for table `pw_attachbuy`
--
ALTER TABLE `pw_attachbuy`
  ADD PRIMARY KEY (`aid`,`uid`);

--
-- Indexes for table `pw_attachdownload`
--
ALTER TABLE `pw_attachdownload`
  ADD PRIMARY KEY (`aid`,`uid`);

--
-- Indexes for table `pw_attachs`
--
ALTER TABLE `pw_attachs`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `idx_fid` (`fid`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_did` (`did`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_tid_pid` (`tid`,`pid`);

--
-- Indexes for table `pw_attention`
--
ALTER TABLE `pw_attention`
  ADD PRIMARY KEY (`friendid`,`uid`),
  ADD KEY `idx_joindate` (`joindate`),
  ADD KEY `idx_uid_joindate` (`uid`,`joindate`),
  ADD KEY `idx_friendid_joindate` (`friendid`,`joindate`);

--
-- Indexes for table `pw_attention_blacklist`
--
ALTER TABLE `pw_attention_blacklist`
  ADD PRIMARY KEY (`uid`,`touid`);

--
-- Indexes for table `pw_auth_certificate`
--
ALTER TABLE `pw_auth_certificate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uid` (`uid`),
  ADD KEY `idx_state` (`state`);

--
-- Indexes for table `pw_ban`
--
ALTER TABLE `pw_ban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_type_uid` (`type`,`uid`);

--
-- Indexes for table `pw_banuser`
--
ALTER TABLE `pw_banuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uid_fid` (`uid`,`fid`);

--
-- Indexes for table `pw_bbsinfo`
--
ALTER TABLE `pw_bbsinfo`
  ADD KEY `id` (`id`);

--
-- Indexes for table `pw_buyadvert`
--
ALTER TABLE `pw_buyadvert`
  ADD PRIMARY KEY (`id`,`uid`);

--
-- Indexes for table `pw_cache`
--
ALTER TABLE `pw_cache`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pw_cachedata`
--
ALTER TABLE `pw_cachedata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_invokepieceid_fid_loopid` (`invokepieceid`,`fid`,`loopid`);

--
-- Indexes for table `pw_cache_distribute`
--
ALTER TABLE `pw_cache_distribute`
  ADD PRIMARY KEY (`ckey`);

--
-- Indexes for table `pw_cache_members`
--
ALTER TABLE `pw_cache_members`
  ADD PRIMARY KEY (`ckey`);

--
-- Indexes for table `pw_channel`
--
ALTER TABLE `pw_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_alias` (`alias`),
  ADD KEY `idx_relatetheme` (`relate_theme`),
  ADD KEY `idx_queue` (`queue`);

--
-- Indexes for table `pw_clientorder`
--
ALTER TABLE `pw_clientorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_orderno` (`order_no`);

--
-- Indexes for table `pw_cmembers`
--
ALTER TABLE `pw_cmembers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_colonyid_uid` (`colonyid`,`uid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_cms_article`
--
ALTER TABLE `pw_cms_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `idx_columnid` (`column_id`);

--
-- Indexes for table `pw_cms_articlecontent`
--
ALTER TABLE `pw_cms_articlecontent`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `pw_cms_articleextend`
--
ALTER TABLE `pw_cms_articleextend`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `pw_cms_attach`
--
ALTER TABLE `pw_cms_attach`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `idx_articleid` (`article_id`);

--
-- Indexes for table `pw_cms_column`
--
ALTER TABLE `pw_cms_column`
  ADD PRIMARY KEY (`column_id`);

--
-- Indexes for table `pw_cms_comment`
--
ALTER TABLE `pw_cms_comment`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `idx_articleid_postdate` (`article_id`,`postdate`);

--
-- Indexes for table `pw_cms_commentreply`
--
ALTER TABLE `pw_cms_commentreply`
  ADD PRIMARY KEY (`replyid`),
  ADD KEY `idx_commentid_postdate` (`commentid`,`postdate`);

--
-- Indexes for table `pw_cms_purview`
--
ALTER TABLE `pw_cms_purview`
  ADD PRIMARY KEY (`purview_id`);

--
-- Indexes for table `pw_cnalbum`
--
ALTER TABLE `pw_cnalbum`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `idx_atype_ownerid` (`atype`,`ownerid`);

--
-- Indexes for table `pw_cnclass`
--
ALTER TABLE `pw_cnclass`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `pw_cnlevel`
--
ALTER TABLE `pw_cnlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_cnphoto`
--
ALTER TABLE `pw_cnphoto`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `idx_aid_uptime` (`aid`,`uptime`);

--
-- Indexes for table `pw_cnskin`
--
ALTER TABLE `pw_cnskin`
  ADD PRIMARY KEY (`dir`);

--
-- Indexes for table `pw_cnstyles`
--
ALTER TABLE `pw_cnstyles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cname` (`cname`);

--
-- Indexes for table `pw_collection`
--
ALTER TABLE `pw_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid_postdate` (`uid`,`postdate`),
  ADD KEY `idx_ctid` (`ctid`);

--
-- Indexes for table `pw_collectiontype`
--
ALTER TABLE `pw_collectiontype`
  ADD PRIMARY KEY (`ctid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_colonys`
--
ALTER TABLE `pw_colonys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cname` (`cname`),
  ADD KEY `idx_admin` (`admin`),
  ADD KEY `idx_classid` (`classid`),
  ADD KEY `idx_classid_vieworder` (`classid`,`vieworder`);

--
-- Indexes for table `pw_comment`
--
ALTER TABLE `pw_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type_typeid` (`type`,`typeid`),
  ADD KEY `idx_upid` (`upid`),
  ADD KEY `idx_postdate` (`postdate`);

--
-- Indexes for table `pw_company`
--
ALTER TABLE `pw_company`
  ADD PRIMARY KEY (`companyid`),
  ADD UNIQUE KEY `idx_companyname` (`companyname`);

--
-- Indexes for table `pw_config`
--
ALTER TABLE `pw_config`
  ADD PRIMARY KEY (`db_name`);

--
-- Indexes for table `pw_creditlog`
--
ALTER TABLE `pw_creditlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_adddate` (`adddate`);

--
-- Indexes for table `pw_credits`
--
ALTER TABLE `pw_credits`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_customfield`
--
ALTER TABLE `pw_customfield`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_cwritedata`
--
ALTER TABLE `pw_cwritedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_mood_moodfirst` (`mood`,`moodfirst`);

--
-- Indexes for table `pw_datanalyse`
--
ALTER TABLE `pw_datanalyse`
  ADD UNIQUE KEY `idx_action_timeunit_tag` (`action`,`tag`,`timeunit`),
  ADD KEY `idx_tag_action` (`tag`,`action`);

--
-- Indexes for table `pw_datastate`
--
ALTER TABLE `pw_datastate`
  ADD PRIMARY KEY (`year`,`month`,`day`);

--
-- Indexes for table `pw_datastore`
--
ALTER TABLE `pw_datastore`
  ADD PRIMARY KEY (`skey`),
  ADD KEY `idx_expire` (`expire`);

--
-- Indexes for table `pw_debatedata`
--
ALTER TABLE `pw_debatedata`
  ADD PRIMARY KEY (`pid`,`tid`,`authorid`);

--
-- Indexes for table `pw_debates`
--
ALTER TABLE `pw_debates`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_delta_diarys`
--
ALTER TABLE `pw_delta_diarys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_delta_members`
--
ALTER TABLE `pw_delta_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_delta_posts`
--
ALTER TABLE `pw_delta_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_delta_threads`
--
ALTER TABLE `pw_delta_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_diary`
--
ALTER TABLE `pw_diary`
  ADD PRIMARY KEY (`did`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_postdate` (`postdate`);

--
-- Indexes for table `pw_diarytype`
--
ALTER TABLE `pw_diarytype`
  ADD PRIMARY KEY (`dtid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_draft`
--
ALTER TABLE `pw_draft`
  ADD PRIMARY KEY (`did`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_elements`
--
ALTER TABLE `pw_elements`
  ADD PRIMARY KEY (`eid`),
  ADD UNIQUE KEY `idx_type_mark_id` (`type`,`mark`,`id`),
  ADD KEY `idx_type_value` (`type`,`value`);

--
-- Indexes for table `pw_extragroups`
--
ALTER TABLE `pw_extragroups`
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_favors`
--
ALTER TABLE `pw_favors`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_feed`
--
ALTER TABLE `pw_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_filter`
--
ALTER TABLE `pw_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `pw_filter_class`
--
ALTER TABLE `pw_filter_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_filter_dictionary`
--
ALTER TABLE `pw_filter_dictionary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_focus`
--
ALTER TABLE `pw_focus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pushto` (`pushto`);

--
-- Indexes for table `pw_forumdata`
--
ALTER TABLE `pw_forumdata`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `idx_aid` (`aid`);

--
-- Indexes for table `pw_forumlog`
--
ALTER TABLE `pw_forumlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_username1` (`username1`),
  ADD KEY `idx_username2` (`username2`);

--
-- Indexes for table `pw_forummsg`
--
ALTER TABLE `pw_forummsg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fid` (`fid`);

--
-- Indexes for table `pw_forums`
--
ALTER TABLE `pw_forums`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `idx_fup` (`fup`),
  ADD KEY `idx_ifsub_vieworder_fup` (`ifsub`,`vieworder`,`fup`);

--
-- Indexes for table `pw_forumsell`
--
ALTER TABLE `pw_forumsell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fid` (`fid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_forumsextra`
--
ALTER TABLE `pw_forumsextra`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `pw_friends`
--
ALTER TABLE `pw_friends`
  ADD PRIMARY KEY (`uid`,`friendid`),
  ADD KEY `idx_joindate` (`joindate`),
  ADD KEY `idx_ftid` (`ftid`),
  ADD KEY `idx_uid_joindate` (`uid`,`joindate`);

--
-- Indexes for table `pw_friendtype`
--
ALTER TABLE `pw_friendtype`
  ADD PRIMARY KEY (`ftid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_group_replay`
--
ALTER TABLE `pw_group_replay`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `pw_hack`
--
ALTER TABLE `pw_hack`
  ADD PRIMARY KEY (`hk_name`);

--
-- Indexes for table `pw_help`
--
ALTER TABLE `pw_help`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `idx_hup` (`hup`);

--
-- Indexes for table `pw_hits_threads`
--
ALTER TABLE `pw_hits_threads`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_invitecode`
--
ALTER TABLE `pw_invitecode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_invcode` (`invcode`);

--
-- Indexes for table `pw_inviterecord`
--
ALTER TABLE `pw_inviterecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid_ip` (`uid`,`ip`),
  ADD KEY `idx_typeid` (`typeid`);

--
-- Indexes for table `pw_invoke`
--
ALTER TABLE `pw_invoke`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`name`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_scr_sign` (`scr`,`sign`);

--
-- Indexes for table `pw_invokepiece`
--
ALTER TABLE `pw_invokepiece`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_invokename` (`invokename`,`title`);

--
-- Indexes for table `pw_ipstates`
--
ALTER TABLE `pw_ipstates`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `pw_job`
--
ALTER TABLE `pw_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_jober`
--
ALTER TABLE `pw_jober`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jobid_userid` (`jobid`,`userid`),
  ADD KEY `idx_userid_status` (`userid`,`status`);

--
-- Indexes for table `pw_kmd_info`
--
ALTER TABLE `pw_kmd_info`
  ADD PRIMARY KEY (`kid`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `pw_kmd_paylog`
--
ALTER TABLE `pw_kmd_paylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fid` (`fid`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_createtime` (`createtime`);

--
-- Indexes for table `pw_kmd_spread`
--
ALTER TABLE `pw_kmd_spread`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `pw_kmd_user`
--
ALTER TABLE `pw_kmd_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_log_aggregate`
--
ALTER TABLE `pw_log_aggregate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_type_operate` (`sid`,`type`,`operate`);

--
-- Indexes for table `pw_log_attachs`
--
ALTER TABLE `pw_log_attachs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_colonys`
--
ALTER TABLE `pw_log_colonys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_diary`
--
ALTER TABLE `pw_log_diary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_forums`
--
ALTER TABLE `pw_log_forums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_members`
--
ALTER TABLE `pw_log_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_postdefend`
--
ALTER TABLE `pw_log_postdefend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_log_posts`
--
ALTER TABLE `pw_log_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_postverify`
--
ALTER TABLE `pw_log_postverify`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_tid_pid` (`tid`,`pid`),
  ADD KEY `idx_modifiedtime` (`modified_time`);

--
-- Indexes for table `pw_log_setting`
--
ALTER TABLE `pw_log_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_log_threads`
--
ALTER TABLE `pw_log_threads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_log_userdefend`
--
ALTER TABLE `pw_log_userdefend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_log_weibos`
--
ALTER TABLE `pw_log_weibos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sid_operate` (`sid`,`operate`);

--
-- Indexes for table `pw_medal_apply`
--
ALTER TABLE `pw_medal_apply`
  ADD PRIMARY KEY (`apply_id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_medal_id` (`medal_id`);

--
-- Indexes for table `pw_medal_award`
--
ALTER TABLE `pw_medal_award`
  ADD PRIMARY KEY (`award_id`),
  ADD UNIQUE KEY `idx_medalid_uid` (`medal_id`,`uid`),
  ADD KEY `idx_deadline` (`deadline`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_medal_info`
--
ALTER TABLE `pw_medal_info`
  ADD PRIMARY KEY (`medal_id`),
  ADD UNIQUE KEY `idx_identify` (`identify`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_sortorder` (`sortorder`),
  ADD KEY `idx_associate` (`associate`);

--
-- Indexes for table `pw_medal_log`
--
ALTER TABLE `pw_medal_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `pw_membercredit`
--
ALTER TABLE `pw_membercredit`
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_cid` (`cid`),
  ADD KEY `idx_cid_value` (`cid`,`value`);

--
-- Indexes for table `pw_memberdata`
--
ALTER TABLE `pw_memberdata`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_postnum` (`postnum`);

--
-- Indexes for table `pw_memberinfo`
--
ALTER TABLE `pw_memberinfo`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_members`
--
ALTER TABLE `pw_members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_groupid` (`groupid`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `pw_membertags`
--
ALTER TABLE `pw_membertags`
  ADD PRIMARY KEY (`tagid`),
  ADD UNIQUE KEY `idx_tagname` (`tagname`),
  ADD KEY `idx_ifhot_num` (`ifhot`,`num`);

--
-- Indexes for table `pw_membertags_relations`
--
ALTER TABLE `pw_membertags_relations`
  ADD UNIQUE KEY `idx_tagid_userid` (`tagid`,`userid`),
  ADD KEY `idx_userid` (`userid`),
  ADD KEY `idx_crtime` (`crtime`);

--
-- Indexes for table `pw_member_behavior_statistic`
--
ALTER TABLE `pw_member_behavior_statistic`
  ADD UNIQUE KEY `idx_uid_behavior` (`uid`,`behavior`);

--
-- Indexes for table `pw_memo`
--
ALTER TABLE `pw_memo`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `idx_isuser_username` (`isuser`,`username`);

--
-- Indexes for table `pw_modehot`
--
ALTER TABLE `pw_modehot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_mpageconfig`
--
ALTER TABLE `pw_mpageconfig`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mode_scr_fid` (`mode`,`scr`,`fid`);

--
-- Indexes for table `pw_ms_attachs`
--
ALTER TABLE `pw_ms_attachs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mid` (`mid`);

--
-- Indexes for table `pw_ms_configs`
--
ALTER TABLE `pw_ms_configs`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_ms_messages`
--
ALTER TABLE `pw_ms_messages`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `pw_ms_relations`
--
ALTER TABLE `pw_ms_relations`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `idx_uid_categoryid_typeid_modifiedtime` (`uid`,`categoryid`,`typeid`,`modified_time`),
  ADD KEY `idx_uid_categoryid_modifiedtime` (`uid`,`categoryid`,`modified_time`),
  ADD KEY `idx_uid_status_modifiedtime` (`uid`,`status`,`modified_time`),
  ADD KEY `idx_uid_isown_modifiedtime` (`uid`,`isown`,`modified_time`),
  ADD KEY `idx_mid` (`mid`);

--
-- Indexes for table `pw_ms_replies`
--
ALTER TABLE `pw_ms_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parentid_createdtime` (`parentid`,`created_time`);

--
-- Indexes for table `pw_ms_searchs`
--
ALTER TABLE `pw_ms_searchs`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `idx_uid_createuid_createdtime` (`uid`,`create_uid`,`created_time`);

--
-- Indexes for table `pw_ms_tasks`
--
ALTER TABLE `pw_ms_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createdtime` (`created_time`);

--
-- Indexes for table `pw_nav`
--
ALTER TABLE `pw_nav`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `pw_oboard`
--
ALTER TABLE `pw_oboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_touid` (`touid`);

--
-- Indexes for table `pw_online`
--
ALTER TABLE `pw_online`
  ADD PRIMARY KEY (`olid`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_ip` (`ip`);

--
-- Indexes for table `pw_online_guest`
--
ALTER TABLE `pw_online_guest`
  ADD PRIMARY KEY (`ip`,`token`),
  ADD KEY `idx_ip` (`ip`);

--
-- Indexes for table `pw_online_statistics`
--
ALTER TABLE `pw_online_statistics`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pw_online_user`
--
ALTER TABLE `pw_online_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_fid` (`fid`);

--
-- Indexes for table `pw_ouserdata`
--
ALTER TABLE `pw_ouserdata`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_overprint`
--
ALTER TABLE `pw_overprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_owritedata`
--
ALTER TABLE `pw_owritedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_pagecache`
--
ALTER TABLE `pw_pagecache`
  ADD PRIMARY KEY (`sign`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_pageinvoke`
--
ALTER TABLE `pw_pageinvoke`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_scr_sign_invokename` (`scr`,`sign`,`invokename`),
  ADD KEY `idx_invokename` (`invokename`);

--
-- Indexes for table `pw_pcfield`
--
ALTER TABLE `pw_pcfield`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `idx_pcid` (`pcid`);

--
-- Indexes for table `pw_pcmember`
--
ALTER TABLE `pw_pcmember`
  ADD PRIMARY KEY (`pcmid`),
  ADD KEY `idx_tid_uid` (`tid`,`uid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_pcvalue1`
--
ALTER TABLE `pw_pcvalue1`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_fid` (`fid`);

--
-- Indexes for table `pw_permission`
--
ALTER TABLE `pw_permission`
  ADD PRIMARY KEY (`uid`,`fid`,`gid`,`rkey`),
  ADD KEY `idx_rkey` (`rkey`);

--
-- Indexes for table `pw_pidtmp`
--
ALTER TABLE `pw_pidtmp`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pw_pinglog`
--
ALTER TABLE `pw_pinglog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tid_pid` (`tid`,`pid`),
  ADD KEY `idx_pid` (`pid`),
  ADD KEY `idx_fid_tid_pid` (`fid`,`tid`,`pid`);

--
-- Indexes for table `pw_plan`
--
ALTER TABLE `pw_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_polls`
--
ALTER TABLE `pw_polls`
  ADD PRIMARY KEY (`pollid`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `pw_portalpage`
--
ALTER TABLE `pw_portalpage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sign` (`sign`);

--
-- Indexes for table `pw_postcate`
--
ALTER TABLE `pw_postcate`
  ADD PRIMARY KEY (`pcid`);

--
-- Indexes for table `pw_posts`
--
ALTER TABLE `pw_posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `idx_fid` (`fid`),
  ADD KEY `idx_postdate` (`postdate`),
  ADD KEY `idx_tid` (`tid`,`postdate`),
  ADD KEY `idx_authorid` (`authorid`),
  ADD KEY `idx_ifcheck` (`ifcheck`);

--
-- Indexes for table `pw_postsfloor`
--
ALTER TABLE `pw_postsfloor`
  ADD PRIMARY KEY (`tid`,`floor`),
  ADD UNIQUE KEY `idx_pid` (`pid`);

--
-- Indexes for table `pw_poststopped`
--
ALTER TABLE `pw_poststopped`
  ADD PRIMARY KEY (`fid`,`tid`,`pid`);

--
-- Indexes for table `pw_privacy`
--
ALTER TABLE `pw_privacy`
  ADD PRIMARY KEY (`uid`,`ptype`,`pkey`);

--
-- Indexes for table `pw_proclock`
--
ALTER TABLE `pw_proclock`
  ADD PRIMARY KEY (`uid`,`action`);

--
-- Indexes for table `pw_pushdata`
--
ALTER TABLE `pw_pushdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ifverify_invokepieceid_vieworder_starttime` (`ifverify`,`invokepieceid`,`vieworder`,`starttime`);

--
-- Indexes for table `pw_pushpic`
--
ALTER TABLE `pw_pushpic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_rate`
--
ALTER TABLE `pw_rate`
  ADD KEY `idx_typeid_objectid_uid` (`typeid`,`objectid`,`uid`),
  ADD KEY `idx_typeid_createdat_optionid_objectid` (`typeid`,`created_at`,`optionid`,`objectid`),
  ADD KEY `idx_uid_createdat` (`uid`,`created_at`);

--
-- Indexes for table `pw_rateconfig`
--
ALTER TABLE `pw_rateconfig`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_typeid` (`typeid`);

--
-- Indexes for table `pw_rateresult`
--
ALTER TABLE `pw_rateresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_optionid_objectid` (`optionid`,`objectid`),
  ADD KEY `idx_typeid_objectid` (`typeid`,`objectid`);

--
-- Indexes for table `pw_recycle`
--
ALTER TABLE `pw_recycle`
  ADD PRIMARY KEY (`pid`,`tid`),
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_fid_pid` (`fid`,`pid`);

--
-- Indexes for table `pw_replyreward`
--
ALTER TABLE `pw_replyreward`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_replyrewardrecord`
--
ALTER TABLE `pw_replyrewardrecord`
  ADD UNIQUE KEY `idx_tid_pid` (`tid`,`pid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_report`
--
ALTER TABLE `pw_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_reward`
--
ALTER TABLE `pw_reward`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_timelimit` (`timelimit`);

--
-- Indexes for table `pw_robbuild`
--
ALTER TABLE `pw_robbuild`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_robbuildfloor`
--
ALTER TABLE `pw_robbuildfloor`
  ADD PRIMARY KEY (`tid`,`floor`),
  ADD UNIQUE KEY `idx_pid` (`pid`);

--
-- Indexes for table `pw_schcache`
--
ALTER TABLE `pw_schcache`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `idx_schline` (`schline`);

--
-- Indexes for table `pw_school`
--
ALTER TABLE `pw_school`
  ADD PRIMARY KEY (`schoolid`),
  ADD KEY `idx_areaid_type` (`areaid`,`type`);

--
-- Indexes for table `pw_searchadvert`
--
ALTER TABLE `pw_searchadvert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_keyword` (`keyword`);

--
-- Indexes for table `pw_searchforum`
--
ALTER TABLE `pw_searchforum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_searchhotwords`
--
ALTER TABLE `pw_searchhotwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_searchstatistic`
--
ALTER TABLE `pw_searchstatistic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_time` (`created_time`);

--
-- Indexes for table `pw_setform`
--
ALTER TABLE `pw_setform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_sharelinks`
--
ALTER TABLE `pw_sharelinks`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `pw_sharelinksrelation`
--
ALTER TABLE `pw_sharelinksrelation`
  ADD UNIQUE KEY `idx_stid_sid` (`stid`,`sid`),
  ADD KEY `idx_sid` (`sid`);

--
-- Indexes for table `pw_sharelinkstype`
--
ALTER TABLE `pw_sharelinkstype`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `pw_singleright`
--
ALTER TABLE `pw_singleright`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_smiles`
--
ALTER TABLE `pw_smiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_space`
--
ALTER TABLE `pw_space`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_sqlcv`
--
ALTER TABLE `pw_sqlcv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_statistics_daily`
--
ALTER TABLE `pw_statistics_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_date_typeid` (`name`,`date`,`typeid`);

--
-- Indexes for table `pw_stopic`
--
ALTER TABLE `pw_stopic`
  ADD PRIMARY KEY (`stopic_id`);

--
-- Indexes for table `pw_stopicblock`
--
ALTER TABLE `pw_stopicblock`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `pw_stopiccategory`
--
ALTER TABLE `pw_stopiccategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_stopicpictures`
--
ALTER TABLE `pw_stopicpictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_stopicunit`
--
ALTER TABLE `pw_stopicunit`
  ADD PRIMARY KEY (`unit_id`),
  ADD UNIQUE KEY `idx_stopicid_htmlid` (`stopic_id`,`html_id`);

--
-- Indexes for table `pw_stopic_comment`
--
ALTER TABLE `pw_stopic_comment`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `idx_stopicid_postdate` (`stopic_id`,`postdate`);

--
-- Indexes for table `pw_stopic_commentreply`
--
ALTER TABLE `pw_stopic_commentreply`
  ADD PRIMARY KEY (`replyid`),
  ADD KEY `idx_commentid_postdate` (`commentid`,`postdate`);

--
-- Indexes for table `pw_styles`
--
ALTER TABLE `pw_styles`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_tagdata`
--
ALTER TABLE `pw_tagdata`
  ADD KEY `idx_tagid` (`tagid`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `pw_tags`
--
ALTER TABLE `pw_tags`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `idx_ifhot_num` (`ifhot`,`num`),
  ADD KEY `idx_tagname` (`tagname`);

--
-- Indexes for table `pw_task`
--
ALTER TABLE `pw_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_next` (`next`);

--
-- Indexes for table `pw_temp_keywords`
--
ALTER TABLE `pw_temp_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_threads`
--
ALTER TABLE `pw_threads`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_authorid` (`authorid`),
  ADD KEY `idx_postdate` (`postdate`),
  ADD KEY `idx_digest` (`digest`),
  ADD KEY `idx_fid_type_ifcheck` (`fid`,`type`,`ifcheck`),
  ADD KEY `idx_special` (`special`),
  ADD KEY `idx_fid_ifcheck_specialsort_lastpost` (`fid`,`ifcheck`,`specialsort`,`lastpost`);

--
-- Indexes for table `pw_threads_at`
--
ALTER TABLE `pw_threads_at`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_tid_pid_uid` (`tid`,`pid`,`uid`);

--
-- Indexes for table `pw_threads_img`
--
ALTER TABLE `pw_threads_img`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_fid_topped_tid` (`fid`,`topped`,`tid`),
  ADD KEY `idx_fid_topped_totalnum` (`fid`,`topped`,`totalnum`);

--
-- Indexes for table `pw_tmsgs`
--
ALTER TABLE `pw_tmsgs`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_toollog`
--
ALTER TABLE `pw_toollog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_touid` (`touid`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_tools`
--
ALTER TABLE `pw_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_topiccate`
--
ALTER TABLE `pw_topiccate`
  ADD PRIMARY KEY (`cateid`);

--
-- Indexes for table `pw_topicfield`
--
ALTER TABLE `pw_topicfield`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `idx_modelid` (`modelid`);

--
-- Indexes for table `pw_topicmodel`
--
ALTER TABLE `pw_topicmodel`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `idx_cateid` (`cateid`);

--
-- Indexes for table `pw_topictype`
--
ALTER TABLE `pw_topictype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_topicvalue1`
--
ALTER TABLE `pw_topicvalue1`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue2`
--
ALTER TABLE `pw_topicvalue2`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue3`
--
ALTER TABLE `pw_topicvalue3`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue4`
--
ALTER TABLE `pw_topicvalue4`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue5`
--
ALTER TABLE `pw_topicvalue5`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue6`
--
ALTER TABLE `pw_topicvalue6`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue7`
--
ALTER TABLE `pw_topicvalue7`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_topicvalue8`
--
ALTER TABLE `pw_topicvalue8`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `pw_tpl`
--
ALTER TABLE `pw_tpl`
  ADD PRIMARY KEY (`tplid`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `pw_trade`
--
ALTER TABLE `pw_trade`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_tradeorder`
--
ALTER TABLE `pw_tradeorder`
  ADD PRIMARY KEY (`oid`),
  ADD UNIQUE KEY `idx_orderno` (`order_no`),
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_buyer` (`buyer`),
  ADD KEY `idx_seller` (`seller`);

--
-- Indexes for table `pw_ucapp`
--
ALTER TABLE `pw_ucapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_ucnotify`
--
ALTER TABLE `pw_ucnotify`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `pw_ucsyncredit`
--
ALTER TABLE `pw_ucsyncredit`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pw_userapp`
--
ALTER TABLE `pw_userapp`
  ADD PRIMARY KEY (`uid`,`appid`);

--
-- Indexes for table `pw_userbinding`
--
ALTER TABLE `pw_userbinding`
  ADD PRIMARY KEY (`id`,`uid`),
  ADD UNIQUE KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_usercache`
--
ALTER TABLE `pw_usercache`
  ADD PRIMARY KEY (`uid`,`type`);

--
-- Indexes for table `pw_usergroups`
--
ALTER TABLE `pw_usergroups`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `idx_gptype` (`gptype`),
  ADD KEY `idx_grouppost` (`grouppost`);

--
-- Indexes for table `pw_usertool`
--
ALTER TABLE `pw_usertool`
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_user_career`
--
ALTER TABLE `pw_user_career`
  ADD PRIMARY KEY (`careerid`),
  ADD KEY `idx_uid_companyid` (`uid`,`companyid`);

--
-- Indexes for table `pw_user_education`
--
ALTER TABLE `pw_user_education`
  ADD PRIMARY KEY (`educationid`),
  ADD KEY `idx_uid_schoolid` (`uid`,`schoolid`);

--
-- Indexes for table `pw_voter`
--
ALTER TABLE `pw_voter`
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `pw_wappush`
--
ALTER TABLE `pw_wappush`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_wappushtype`
--
ALTER TABLE `pw_wappushtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_weibo_bind`
--
ALTER TABLE `pw_weibo_bind`
  ADD UNIQUE KEY `uid_weibotype` (`uid`,`weibotype`);

--
-- Indexes for table `pw_weibo_cmrelations`
--
ALTER TABLE `pw_weibo_cmrelations`
  ADD PRIMARY KEY (`cid`,`uid`);

--
-- Indexes for table `pw_weibo_cnrelations`
--
ALTER TABLE `pw_weibo_cnrelations`
  ADD PRIMARY KEY (`cyid`,`mid`);

--
-- Indexes for table `pw_weibo_comment`
--
ALTER TABLE `pw_weibo_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_mid_postdate` (`mid`,`postdate`);

--
-- Indexes for table `pw_weibo_content`
--
ALTER TABLE `pw_weibo_content`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `idx_uid_postdate` (`uid`,`postdate`),
  ADD KEY `idx_type_objectid` (`type`,`objectid`),
  ADD KEY `idx_postdate` (`postdate`);

--
-- Indexes for table `pw_weibo_login_session`
--
ALTER TABLE `pw_weibo_login_session`
  ADD PRIMARY KEY (`sessionid`);

--
-- Indexes for table `pw_weibo_referto`
--
ALTER TABLE `pw_weibo_referto`
  ADD PRIMARY KEY (`uid`,`mid`);

--
-- Indexes for table `pw_weibo_relations`
--
ALTER TABLE `pw_weibo_relations`
  ADD KEY `idx_mid` (`mid`),
  ADD KEY `idx_uid_postdate` (`uid`,`postdate`);

--
-- Indexes for table `pw_weibo_topicattention`
--
ALTER TABLE `pw_weibo_topicattention`
  ADD UNIQUE KEY `idx_userid_topicid` (`userid`,`topicid`);

--
-- Indexes for table `pw_weibo_topicrelations`
--
ALTER TABLE `pw_weibo_topicrelations`
  ADD UNIQUE KEY `idx_topicid_mid` (`topicid`,`mid`),
  ADD KEY `idx_mid` (`mid`),
  ADD KEY `idx_crtime` (`crtime`);

--
-- Indexes for table `pw_weibo_topics`
--
ALTER TABLE `pw_weibo_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `idx_topicname` (`topicname`),
  ADD KEY `idx_crtime_ifhot` (`crtime`,`ifhot`);

--
-- Indexes for table `pw_windcode`
--
ALTER TABLE `pw_windcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_wordfb`
--
ALTER TABLE `pw_wordfb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_write_smiles`
--
ALTER TABLE `pw_write_smiles`
  ADD PRIMARY KEY (`smileid`);

--
-- Indexes for table `pw_yun_setting`
--
ALTER TABLE `pw_yun_setting`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pw_acloud_apis`
--
ALTER TABLE `pw_acloud_apis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- 使用表AUTO_INCREMENT `pw_acloud_keys`
--
ALTER TABLE `pw_acloud_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `pw_acloud_sql_log`
--
ALTER TABLE `pw_acloud_sql_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_actattachs`
--
ALTER TABLE `pw_actattachs`
  MODIFY `aid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_actions`
--
ALTER TABLE `pw_actions`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pw_active`
--
ALTER TABLE `pw_active`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_activitycate`
--
ALTER TABLE `pw_activitycate`
  MODIFY `actid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `pw_activityfield`
--
ALTER TABLE `pw_activityfield`
  MODIFY `fieldid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;
--
-- 使用表AUTO_INCREMENT `pw_activitymembers`
--
ALTER TABLE `pw_activitymembers`
  MODIFY `actuid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_activitymodel`
--
ALTER TABLE `pw_activitymodel`
  MODIFY `actmid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `pw_activitypaylog`
--
ALTER TABLE `pw_activitypaylog`
  MODIFY `actpid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_actmember`
--
ALTER TABLE `pw_actmember`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_actmembers`
--
ALTER TABLE `pw_actmembers`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_adminlog`
--
ALTER TABLE `pw_adminlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_advert`
--
ALTER TABLE `pw_advert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- 使用表AUTO_INCREMENT `pw_announce`
--
ALTER TABLE `pw_announce`
  MODIFY `aid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_areas`
--
ALTER TABLE `pw_areas`
  MODIFY `areaid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910007;
--
-- 使用表AUTO_INCREMENT `pw_attachs`
--
ALTER TABLE `pw_attachs`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_auth_certificate`
--
ALTER TABLE `pw_auth_certificate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ban`
--
ALTER TABLE `pw_ban`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_banuser`
--
ALTER TABLE `pw_banuser`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_bbsinfo`
--
ALTER TABLE `pw_bbsinfo`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_cachedata`
--
ALTER TABLE `pw_cachedata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;
--
-- 使用表AUTO_INCREMENT `pw_channel`
--
ALTER TABLE `pw_channel`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `pw_clientorder`
--
ALTER TABLE `pw_clientorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cmembers`
--
ALTER TABLE `pw_cmembers`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_article`
--
ALTER TABLE `pw_cms_article`
  MODIFY `article_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_attach`
--
ALTER TABLE `pw_cms_attach`
  MODIFY `attach_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_column`
--
ALTER TABLE `pw_cms_column`
  MODIFY `column_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_comment`
--
ALTER TABLE `pw_cms_comment`
  MODIFY `commentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_commentreply`
--
ALTER TABLE `pw_cms_commentreply`
  MODIFY `replyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cms_purview`
--
ALTER TABLE `pw_cms_purview`
  MODIFY `purview_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cnalbum`
--
ALTER TABLE `pw_cnalbum`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cnlevel`
--
ALTER TABLE `pw_cnlevel`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pw_cnphoto`
--
ALTER TABLE `pw_cnphoto`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_cnstyles`
--
ALTER TABLE `pw_cnstyles`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_collection`
--
ALTER TABLE `pw_collection`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_collectiontype`
--
ALTER TABLE `pw_collectiontype`
  MODIFY `ctid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_colonys`
--
ALTER TABLE `pw_colonys`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_comment`
--
ALTER TABLE `pw_comment`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_company`
--
ALTER TABLE `pw_company`
  MODIFY `companyid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_creditlog`
--
ALTER TABLE `pw_creditlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_credits`
--
ALTER TABLE `pw_credits`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_customfield`
--
ALTER TABLE `pw_customfield`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `pw_cwritedata`
--
ALTER TABLE `pw_cwritedata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_delta_diarys`
--
ALTER TABLE `pw_delta_diarys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_delta_members`
--
ALTER TABLE `pw_delta_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_delta_posts`
--
ALTER TABLE `pw_delta_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_delta_threads`
--
ALTER TABLE `pw_delta_threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_diary`
--
ALTER TABLE `pw_diary`
  MODIFY `did` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_diarytype`
--
ALTER TABLE `pw_diarytype`
  MODIFY `dtid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_draft`
--
ALTER TABLE `pw_draft`
  MODIFY `did` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_elements`
--
ALTER TABLE `pw_elements`
  MODIFY `eid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `pw_feed`
--
ALTER TABLE `pw_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_filter`
--
ALTER TABLE `pw_filter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_filter_class`
--
ALTER TABLE `pw_filter_class`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_filter_dictionary`
--
ALTER TABLE `pw_filter_dictionary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_focus`
--
ALTER TABLE `pw_focus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_forumlog`
--
ALTER TABLE `pw_forumlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_forummsg`
--
ALTER TABLE `pw_forummsg`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_forums`
--
ALTER TABLE `pw_forums`
  MODIFY `fid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `pw_forumsell`
--
ALTER TABLE `pw_forumsell`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_friendtype`
--
ALTER TABLE `pw_friendtype`
  MODIFY `ftid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_help`
--
ALTER TABLE `pw_help`
  MODIFY `hid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `pw_invitecode`
--
ALTER TABLE `pw_invitecode`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_inviterecord`
--
ALTER TABLE `pw_inviterecord`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_invoke`
--
ALTER TABLE `pw_invoke`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- 使用表AUTO_INCREMENT `pw_invokepiece`
--
ALTER TABLE `pw_invokepiece`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- 使用表AUTO_INCREMENT `pw_job`
--
ALTER TABLE `pw_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `pw_jober`
--
ALTER TABLE `pw_jober`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `pw_kmd_info`
--
ALTER TABLE `pw_kmd_info`
  MODIFY `kid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_kmd_paylog`
--
ALTER TABLE `pw_kmd_paylog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_kmd_spread`
--
ALTER TABLE `pw_kmd_spread`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `pw_log_aggregate`
--
ALTER TABLE `pw_log_aggregate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_attachs`
--
ALTER TABLE `pw_log_attachs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_colonys`
--
ALTER TABLE `pw_log_colonys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_diary`
--
ALTER TABLE `pw_log_diary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_forums`
--
ALTER TABLE `pw_log_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_members`
--
ALTER TABLE `pw_log_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_postdefend`
--
ALTER TABLE `pw_log_postdefend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_posts`
--
ALTER TABLE `pw_log_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_postverify`
--
ALTER TABLE `pw_log_postverify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_setting`
--
ALTER TABLE `pw_log_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_threads`
--
ALTER TABLE `pw_log_threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_userdefend`
--
ALTER TABLE `pw_log_userdefend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_log_weibos`
--
ALTER TABLE `pw_log_weibos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_medal_apply`
--
ALTER TABLE `pw_medal_apply`
  MODIFY `apply_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_medal_award`
--
ALTER TABLE `pw_medal_award`
  MODIFY `award_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_medal_info`
--
ALTER TABLE `pw_medal_info`
  MODIFY `medal_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `pw_medal_log`
--
ALTER TABLE `pw_medal_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_members`
--
ALTER TABLE `pw_members`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_membertags`
--
ALTER TABLE `pw_membertags`
  MODIFY `tagid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_memo`
--
ALTER TABLE `pw_memo`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_modehot`
--
ALTER TABLE `pw_modehot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `pw_mpageconfig`
--
ALTER TABLE `pw_mpageconfig`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ms_attachs`
--
ALTER TABLE `pw_ms_attachs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ms_messages`
--
ALTER TABLE `pw_ms_messages`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_ms_relations`
--
ALTER TABLE `pw_ms_relations`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_ms_replies`
--
ALTER TABLE `pw_ms_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ms_searchs`
--
ALTER TABLE `pw_ms_searchs`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ms_tasks`
--
ALTER TABLE `pw_ms_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_nav`
--
ALTER TABLE `pw_nav`
  MODIFY `nid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `pw_oboard`
--
ALTER TABLE `pw_oboard`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_overprint`
--
ALTER TABLE `pw_overprint`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `pw_owritedata`
--
ALTER TABLE `pw_owritedata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pageinvoke`
--
ALTER TABLE `pw_pageinvoke`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pcfield`
--
ALTER TABLE `pw_pcfield`
  MODIFY `fieldid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `pw_pcmember`
--
ALTER TABLE `pw_pcmember`
  MODIFY `pcmid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pidtmp`
--
ALTER TABLE `pw_pidtmp`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pinglog`
--
ALTER TABLE `pw_pinglog`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_plan`
--
ALTER TABLE `pw_plan`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `pw_polls`
--
ALTER TABLE `pw_polls`
  MODIFY `pollid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_portalpage`
--
ALTER TABLE `pw_portalpage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_postcate`
--
ALTER TABLE `pw_postcate`
  MODIFY `pcid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_posts`
--
ALTER TABLE `pw_posts`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_postsfloor`
--
ALTER TABLE `pw_postsfloor`
  MODIFY `floor` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pushdata`
--
ALTER TABLE `pw_pushdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_pushpic`
--
ALTER TABLE `pw_pushpic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_rateconfig`
--
ALTER TABLE `pw_rateconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `pw_rateresult`
--
ALTER TABLE `pw_rateresult`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_report`
--
ALTER TABLE `pw_report`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_schcache`
--
ALTER TABLE `pw_schcache`
  MODIFY `sid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_school`
--
ALTER TABLE `pw_school`
  MODIFY `schoolid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34007;
--
-- 使用表AUTO_INCREMENT `pw_searchadvert`
--
ALTER TABLE `pw_searchadvert`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_searchforum`
--
ALTER TABLE `pw_searchforum`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_searchhotwords`
--
ALTER TABLE `pw_searchhotwords`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `pw_searchstatistic`
--
ALTER TABLE `pw_searchstatistic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_setform`
--
ALTER TABLE `pw_setform`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_sharelinks`
--
ALTER TABLE `pw_sharelinks`
  MODIFY `sid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_sharelinkstype`
--
ALTER TABLE `pw_sharelinkstype`
  MODIFY `stid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `pw_smiles`
--
ALTER TABLE `pw_smiles`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- 使用表AUTO_INCREMENT `pw_sqlcv`
--
ALTER TABLE `pw_sqlcv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_statistics_daily`
--
ALTER TABLE `pw_statistics_daily`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `pw_stopic`
--
ALTER TABLE `pw_stopic`
  MODIFY `stopic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_stopicblock`
--
ALTER TABLE `pw_stopicblock`
  MODIFY `block_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_stopiccategory`
--
ALTER TABLE `pw_stopiccategory`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pw_stopicpictures`
--
ALTER TABLE `pw_stopicpictures`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_stopicunit`
--
ALTER TABLE `pw_stopicunit`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_stopic_comment`
--
ALTER TABLE `pw_stopic_comment`
  MODIFY `commentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_stopic_commentreply`
--
ALTER TABLE `pw_stopic_commentreply`
  MODIFY `replyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_styles`
--
ALTER TABLE `pw_styles`
  MODIFY `sid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_tags`
--
ALTER TABLE `pw_tags`
  MODIFY `tagid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_task`
--
ALTER TABLE `pw_task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_temp_keywords`
--
ALTER TABLE `pw_temp_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_threads`
--
ALTER TABLE `pw_threads`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_threads_at`
--
ALTER TABLE `pw_threads_at`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_toollog`
--
ALTER TABLE `pw_toollog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_tools`
--
ALTER TABLE `pw_tools`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `pw_topiccate`
--
ALTER TABLE `pw_topiccate`
  MODIFY `cateid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pw_topicfield`
--
ALTER TABLE `pw_topicfield`
  MODIFY `fieldid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- 使用表AUTO_INCREMENT `pw_topicmodel`
--
ALTER TABLE `pw_topicmodel`
  MODIFY `modelid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `pw_topictype`
--
ALTER TABLE `pw_topictype`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_tpl`
--
ALTER TABLE `pw_tpl`
  MODIFY `tplid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `pw_tradeorder`
--
ALTER TABLE `pw_tradeorder`
  MODIFY `oid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ucapp`
--
ALTER TABLE `pw_ucapp`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_ucnotify`
--
ALTER TABLE `pw_ucnotify`
  MODIFY `nid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_userbinding`
--
ALTER TABLE `pw_userbinding`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_usergroups`
--
ALTER TABLE `pw_usergroups`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `pw_user_career`
--
ALTER TABLE `pw_user_career`
  MODIFY `careerid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_user_education`
--
ALTER TABLE `pw_user_education`
  MODIFY `educationid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_wappush`
--
ALTER TABLE `pw_wappush`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_wappushtype`
--
ALTER TABLE `pw_wappushtype`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_weibo_comment`
--
ALTER TABLE `pw_weibo_comment`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_weibo_content`
--
ALTER TABLE `pw_weibo_content`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pw_weibo_topics`
--
ALTER TABLE `pw_weibo_topics`
  MODIFY `topicid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_windcode`
--
ALTER TABLE `pw_windcode`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_wordfb`
--
ALTER TABLE `pw_wordfb`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pw_write_smiles`
--
ALTER TABLE `pw_write_smiles`
  MODIFY `smileid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `pw_yun_setting`
--
ALTER TABLE `pw_yun_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
