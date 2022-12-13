/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 13/12/2022 17:46:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `shtml` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `summary` varchar(8000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `post_time` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `view` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comment_count` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comments` varchar(2550) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, '111', 'xxx', 'ddddddddddddddddddd ', 'b', 'zs', '2022-11-24 09:55:49.000000', '111111', '0', '1', '[{\"username\":\"18851908011@qq.com\",\"comment\":\"wwwwwwwwwww\",\"postTime\":\"2022-11-24T07:38:55.471Z\"},{\"username\":\"18851908011@qq.com\",\"comment\":\"wwwwwwwwwww\",\"postTime\":\"2022-11-24T07:38:55.471Z\"},{\"username\":\"18851908011@qq.com\",\"comment\":\"www\",\"postTime\":\"2022-11-24T07:39:00.716Z\"}]');
INSERT INTO `articles` VALUES (12, '[\"111\"]', '<p>wwwwwwwwwww</p>\n', 'wwwwwwwwwww', 'aaaaaaaa', '18851908011@qq.com', '2022-11-24 15:38:36.279', '0', '0', '1', NULL);
INSERT INTO `articles` VALUES (13, '[\"Html、Css\"]', '<p>详情见W3C（cursor属性）<br />\n设置元素的cursor属性,取值有：<br />\n自定义的url<br />\nauto<br />\ncrosshair<br />\ndefault<br />\npointer<br />\nmove<br />\ne-resize<br />\nne-resize<br />\nnw-resize<br />\nn-resize<br />\nse-resize<br />\nsw-resize<br />\ns-resize<br />\nw-resize<br />\ntext<br />\nwait<br />\nhelp</p>\n', '详情见W3C（cursor属性）\n  设置元素的cursor属性,取值有：\n  自定义的url\n  auto\n  crosshair\n  default\n  pointer\n  move\n  e-resize\n  ne-resize\n  nw-resize\n  n-resize\n  se-resize\n  sw-resize\n  s-resize\n  w-resize\n  text\n  wait\n  help', '改鼠标形状', '18851908011@qq.com', '2022-11-30 15:40:41.522', '0', '0', '1', '[{\"username\":\"18851908011@qq.com\",\"comment\":\"牛逼\",\"postTime\":\"2022-11-30T07:45:59.307Z\"}]');
INSERT INTO `articles` VALUES (14, '[\"Html、Css\"]', '<p><strong>.scss文件</strong></p>\n<pre><code class=\"lang-\">* {\n  &amp;::-webkit-scrollbar {\n    width: 7px;\n    height: 7px;\n  }\n  &amp;::-webkit-scrollbar-thumb {\n    border-radius: 10px;\n    -webkit-box-shadow: inset 0 0 5px #9b9ba3;\n    background: rgba(152, 155, 163, 0.5);\n  }\n}\n</code></pre>\n<p><strong>水平滚动条</strong></p>\n<pre><code class=\"lang-\"> （在ie和edge上仍然有滚动条，谷歌没有）\n  body,html{\n    width: 100%;\n    scrollbar-width: none;\n    -webkit-overflow-scrolling: touch;\n    &amp;::-webkit-scrollbar {\n    display: none;\n  }\n  }\n</code></pre>\n<p><strong>垂直滚动条</strong></p>\n<pre><code class=\"lang-\">    &amp;::-webkit-scrollbar {\n        width: 3px;\n        height: 13px;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n    }\n\n    &amp;::-webkit-scrollbar-thumb {\n        background-color: #ccc;\n        background-clip: padding-box;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n        min-height: 28px;\n    }\n\n    &amp;::-webkit-scrollbar-thumb:hover {\n        background-color: #ccc;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n    }\n</code></pre>\n<h5><a id=\"_58\"></a></h5>\n', ' **.scss文件** \n\n```\n* {\n  &::-webkit-scrollbar {\n    width: 7px;\n    height: 7px;\n  }\n  &::-webkit-scrollbar-thumb {\n    border-radius: 10px;\n    -webkit-box-shadow: inset 0 0 5px #9b9ba3;\n    background: rgba(152, 155, 163, 0.5);\n  }\n}\n```\n\n**水平滚动条**\n\n```\n （在ie和edge上仍然有滚动条，谷歌没有）\n  body,html{\n    width: 100%;\n    scrollbar-width: none;\n    -webkit-overflow-scrolling: touch;\n    &::-webkit-scrollbar {\n    display: none;\n  }\n  }\n```\n\n**垂直滚动条**\n\n```\n    &::-webkit-scrollbar {\n        width: 3px;\n        height: 13px;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n    }\n\n    &::-webkit-scrollbar-thumb {\n        background-color: #ccc;\n        background-clip: padding-box;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n        min-height: 28px;\n    }\n\n    &::-webkit-scrollbar-thumb:hover {\n        background-color: #ccc;\n        -webkit-border-radius: 5px;\n        -moz-border-radius: 5px;\n        border-radius: 5px;\n    }\n```\n\n##### ', '滚动条样式', '18851908011@qq.com', '2022-11-30 15:55:06.749', '0', '0', '1', NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `reply_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `reply_comment_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `article_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, '111', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for pics
-- ----------------------------
DROP TABLE IF EXISTS `pics`;
CREATE TABLE `pics`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `creat_at` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pics
-- ----------------------------
INSERT INTO `pics` VALUES (1, 'https://s2.loli.net/2022/06/27/3Pcs4N9XiImny7p.jpg', '金木研', '2018.5', NULL);
INSERT INTO `pics` VALUES (4, 'https://s2.loli.net/2022/06/27/PuX8iwoOALRIQHS.jpg', '戴亚', '2018.4', NULL);
INSERT INTO `pics` VALUES (5, 'https://s2.loli.net/2022/06/27/HP8CRIcvdjJzVow.jpg', '晚街', '2018.4', NULL);
INSERT INTO `pics` VALUES (6, 'https://s2.loli.net/2022/06/27/caxF5eXTjgfHqBZ.jpg', '表情包猫猫', '2018.12', NULL);
INSERT INTO `pics` VALUES (7, 'https://s2.loli.net/2022/06/27/uxIVOnSvibAlGo7.jpg', '幽灵Reol', '2019.8', NULL);
INSERT INTO `pics` VALUES (8, 'https://s2.loli.net/2022/06/27/Uvb3Hd6uYPBZoVS.jpg', '表情包黄狗', '2020.1', NULL);
INSERT INTO `pics` VALUES (9, 'https://s2.loli.net/2022/06/27/ejIvw9J5hQiq73b.jpg', '红发reol猫', '2020.1', NULL);
INSERT INTO `pics` VALUES (10, 'https://s2.loli.net/2022/06/27/DKWoJyMSg3VfuHE.jpg', '诶reol猫', '2020.2', NULL);
INSERT INTO `pics` VALUES (11, 'https://s2.loli.net/2022/06/27/EdLbr2V4DPuUaIj.jpg', '夸我', '2020.5', NULL);
INSERT INTO `pics` VALUES (12, 'https://s2.loli.net/2022/06/27/GUqLAyNZBKST8Co.jpg', 'okiku', '2020.5', NULL);
INSERT INTO `pics` VALUES (13, 'https://s2.loli.net/2022/06/27/UibrfSINj8RA9F4.jpg', '1LDK', '2020.5', NULL);
INSERT INTO `pics` VALUES (14, 'https://s2.loli.net/2022/06/27/mK7DbRF2ehP58Il.jpg', 'Q？', '2020.11', NULL);
INSERT INTO `pics` VALUES (15, 'https://s2.loli.net/2022/06/27/oGSlhmjcueT8XLY.jpg', 'YouTube纪录片', '2020.11', NULL);
INSERT INTO `pics` VALUES (16, 'https://s2.loli.net/2022/06/27/UImBEkcz1fbYrFt.jpg', 'utena', '2020.10', NULL);
INSERT INTO `pics` VALUES (17, 'https://s2.loli.net/2022/06/27/GhJxRUiVjFqNZM3.png', '第六感', '2020.7', NULL);
INSERT INTO `pics` VALUES (18, 'https://s2.loli.net/2022/06/27/Sl2XJI3Nh8ucCMT.jpg', '第六感', '2020.8', NULL);
INSERT INTO `pics` VALUES (19, 'https://s2.loli.net/2022/06/27/2QBgVhYXlWCkmdS.jpg', '嘴角起泡想打架', '2020.12', NULL);
INSERT INTO `pics` VALUES (20, 'https://s2.loli.net/2022/06/27/BWtsxqHowzG2apR.jpg', '2b', '2020.10', NULL);
INSERT INTO `pics` VALUES (21, 'https://s2.loli.net/2022/06/27/uzDrNbXHxlIdS5y.jpg', '朋友的狗', '2020.7', NULL);
INSERT INTO `pics` VALUES (22, 'https://s2.loli.net/2022/06/27/QS8jnGqtm94MKA6.jpg', '猫', '2020.7', NULL);
INSERT INTO `pics` VALUES (23, 'https://s2.loli.net/2022/06/27/p3EWi1HN8kIBRGZ.jpg', '猫', '2020.6', NULL);
INSERT INTO `pics` VALUES (24, 'https://s2.loli.net/2022/06/27/pR42a7WZ5lhMwnr.jpg', '缝缝补补又三年', '2021.1', NULL);
INSERT INTO `pics` VALUES (25, 'https://s2.loli.net/2022/06/27/awOzcs2L3RKlj4h.jpg', 'live', '2021.1', NULL);
INSERT INTO `pics` VALUES (26, 'https://s2.loli.net/2022/06/27/BKhT7QSCvJPj4ae.jpg', 'live', '2021.2', NULL);
INSERT INTO `pics` VALUES (27, 'https://s2.loli.net/2022/06/27/qtDrFwGRZIPeoU9.jpg', 'a look', '2021.2', NULL);
INSERT INTO `pics` VALUES (28, 'https://s2.loli.net/2022/06/27/oYad9LvmBbkMWHN.jpg', 'three persons', '2021.3', NULL);
INSERT INTO `pics` VALUES (29, 'https://s2.loli.net/2022/06/27/yLlemzXtRGUdvCS.jpg', '音沙汰', '2021.6', NULL);
INSERT INTO `pics` VALUES (30, 'https://s2.loli.net/2022/06/27/I2qvXNloymZcruQ.jpg', 'drb live', '2021.8', NULL);
INSERT INTO `pics` VALUES (31, 'https://s2.loli.net/2022/06/27/MKxH2qW9mGFV8a1.jpg', 'owl', '2022.1', NULL);
INSERT INTO `pics` VALUES (32, 'https://s2.loli.net/2022/09/21/73cfyevxiDBJ8wd.jpg', 'Bichon Frisé', '2022.9', NULL);

-- ----------------------------
-- Table structure for tag_links
-- ----------------------------
DROP TABLE IF EXISTS `tag_links`;
CREATE TABLE `tag_links`  (
  `aid` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tid` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`aid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_links
-- ----------------------------
INSERT INTO `tag_links` VALUES ('1', '111');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '111');
INSERT INTO `tags` VALUES (3, '组件');
INSERT INTO `tags` VALUES (4, 'Html、Css');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `usernum` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'testadmin', '3043bc5449ee4f5b4163103288958217', '1', 'testadmin', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (12, 'test', '3043bc5449ee4f5b4163103288958217', '1', 'testadmin', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (13, '18851908011@qq.com', '0823b752b805910ac2878b6ca0b38649', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (14, 'luting', '0823b752b805910ac2878b6ca0b38649', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for visitors
-- ----------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `reminder` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitors
-- ----------------------------
INSERT INTO `visitors` VALUES (1, 'testadmin', '3043bc5449ee4f5b4163103288958217', '1', 'testadmin', NULL);
INSERT INTO `visitors` VALUES (12, 'test', '3043bc5449ee4f5b4163103288958217', '1', 'testadmin', NULL);

-- ----------------------------
-- Table structure for webs
-- ----------------------------
DROP TABLE IF EXISTS `webs`;
CREATE TABLE `webs`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `href` varchar(555) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webs
-- ----------------------------
INSERT INTO `webs` VALUES (1, 'Bootstrap（友情链接很多）', 'https://www.bootcss.com/', 'Bootstrap');
INSERT INTO `webs` VALUES (124, 'Vue CLI', 'https://cli.vuejs.org/zh/', 'Vue.js');
INSERT INTO `webs` VALUES (125, 'Vue.js', 'https://cn.vuejs.org/', 'Vue.js');
INSERT INTO `webs` VALUES (126, 'art-template模板引擎', 'https://aui.github.io/art-template/zh-cn/docs/index.html', 'NodeJS');
INSERT INTO `webs` VALUES (127, 'npm官网', 'https://www.npmjs.com', 'NodeJS');
INSERT INTO `webs` VALUES (128, 'NodeJS中文网', 'http://nodejs.cn/', 'NodeJS');
INSERT INTO `webs` VALUES (129, 'NodeJS官网', 'https://nodejs.org/zh-cn/', 'NodeJS');
INSERT INTO `webs` VALUES (130, 'canvas api文档', 'https://www.canvasapi.cn/', 'Canvas');
INSERT INTO `webs` VALUES (131, 'webpack中文文档', 'https://www.webpackjs.com/concepts/', 'webpack');
INSERT INTO `webs` VALUES (132, 'babel中文网', 'https://babel.docschina.org/docs/en/', 'Babel(JavaScript compiler)');
INSERT INTO `webs` VALUES (133, 'Sass中文网', 'https://www.sass.hk', 'Sass(css预处理)');
INSERT INTO `webs` VALUES (134, '开源中国', 'https://tool.oschina.net/less', 'Less(css预处理)');
INSERT INTO `webs` VALUES (135, '考拉客户端', 'http://koala-app.com/index-zh.html', 'Less(css预处理)');
INSERT INTO `webs` VALUES (136, 'less语言特性(中文)', 'https://www.html.cn/doc/less/features/', 'Less(css预处理)');
INSERT INTO `webs` VALUES (137, 'less中文网', 'http://lesscss.cn/', 'Less(css预处理)');
INSERT INTO `webs` VALUES (138, '比特虫，在线制作ico图标', 'http://www.bitbug.net', 'icon');
INSERT INTO `webs` VALUES (139, 'icomoon矢量图标', 'https://icomoon.io', 'icon');
INSERT INTO `webs` VALUES (140, '图标字体库和CSS框架', 'http://fontawesome.dashgame.com/', 'icon');
INSERT INTO `webs` VALUES (141, 'emoji', 'https://emojipedia.org/', 'icon');
INSERT INTO `webs` VALUES (142, '阿里巴巴矢量图标库', 'https://www.iconfont.cn/?spm=a313x.7781069.1998910419.d4d0a486a', 'icon博客社区');
INSERT INTO `webs` VALUES (143, '汤姆大叔的博客', 'https://www.cnblogs.com/TomXu/archive/2011/12/15/2288411.html', '博客社区');
INSERT INTO `webs` VALUES (144, 'CSS参考手册', 'http://f2er.club/', '博客社区');
INSERT INTO `webs` VALUES (145, 'CSS森林', 'https://www.cssforest.org/', '博客社区');
INSERT INTO `webs` VALUES (146, '廖雪峰的官方网站', 'https://www.liaoxuefeng.com/wiki/1022910821149312', '博客社区');
INSERT INTO `webs` VALUES (147, 'segmentfault', 'https://segmentfault.com', '博客社区');
INSERT INTO `webs` VALUES (148, '稀土掘金', 'https://juejin.cn/', '博客社区');
INSERT INTO `webs` VALUES (149, 'csdn', 'https://blog.csdn.net/nav/web', '博客社区');
INSERT INTO `webs` VALUES (150, 'CSS参考手册', 'http://css.doyoe.com/', '查询文档');
INSERT INTO `webs` VALUES (151, 'mdn', 'https://developer.mozilla.org/zh-CN/', '查询文档');
INSERT INTO `webs` VALUES (152, 'w3c', 'https://www.w3school.com.cn', '查询文档');
INSERT INTO `webs` VALUES (153, '清空默认边距', 'http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css', '工具网站');
INSERT INTO `webs` VALUES (154, '常用色彩搭配表', 'http://tool.c7sky.com/webcolor/', '工具网站');
INSERT INTO `webs` VALUES (155, '短信验证码接口', 'https://www.mysubmail.com/sms/api?tag=jq22', '工具网站');
INSERT INTO `webs` VALUES (156, '在线jpg,png图片转SVG工具', 'http://www.bejson.com/convert/image_to_svg/', '工具网站');
INSERT INTO `webs` VALUES (157, 'MarkDown编辑器', 'https://www.typora.io', '工具网站');
INSERT INTO `webs` VALUES (158, 'Markdown (Web上使用的文本转换到HTML)', 'http://tool.oschina.net/', '工具网站');
INSERT INTO `webs` VALUES (159, 'json', 'http://www.bejson.com', '工具网站');
INSERT INTO `webs` VALUES (160, '菜鸟教程(学习)', 'https://www.runoob.com', '工具网站');
INSERT INTO `webs` VALUES (161, 'Oeasy(学习)', 'http://oeasy.org/', '工具网站');
INSERT INTO `webs` VALUES (162, '史莱姆导航', 'http://www.slimegps.cn', '工具网站');
INSERT INTO `webs` VALUES (163, '龙喵网导航', 'http://ailongmiao.com/', '工具网站');
INSERT INTO `webs` VALUES (164, 'cxy521程序员一站式导航', 'https://www.cxy521.com/', '工具网站');
INSERT INTO `webs` VALUES (165, '微工具', 'http://www.wetools.com/', '工具网站');
INSERT INTO `webs` VALUES (166, '在线工具', 'http://tool.oschina.net/', '工具网站');
INSERT INTO `webs` VALUES (167, 'sm.ms免费保存图片', 'https://sm.ms/', '工具网站');
INSERT INTO `webs` VALUES (168, 'jQuery插件库（代码、效果）', 'https://www.jq22.com/', '工具网站');
INSERT INTO `webs` VALUES (169, '程序员的工具箱', 'https://tool.lu/index.html', '工具网站');
INSERT INTO `webs` VALUES (170, 'VChart 组件使用教程', 'https://www.wenjiangs.com/doc/vux-v-chart#title-9', 'Work');
INSERT INTO `webs` VALUES (171, '网易云课堂', 'https://study.163.com', 'Work');
INSERT INTO `webs` VALUES (172, '知播渔', 'https://www.it666.com/', 'Work');
INSERT INTO `webs` VALUES (173, '思极大学', 'https://sjxt.vip/#/study/course/index', 'Work');
INSERT INTO `webs` VALUES (174, '国网大学', 'https://pc.sgu.com.cn/sgu/dsxxjy/login', 'Work');
INSERT INTO `webs` VALUES (175, 'processon在线流程图', 'https://www.processon.com/', 'Work');
INSERT INTO `webs` VALUES (176, 'Axure RP 教程', 'https://iowiki.com/axure_rp/axure_rp_index.html', 'Work');
INSERT INTO `webs` VALUES (177, '产品大牛网', 'https://www.pmdaniu.com/explore', 'Work');
INSERT INTO `webs` VALUES (178, 'ant design library（axure）无交互', 'https://library.ant.design', 'Work');
INSERT INTO `webs` VALUES (179, 'axure非官方文档', 'https://www.axure.com.cn/axure/course', 'Work');
INSERT INTO `webs` VALUES (180, 'jQuery', 'https://www.w3school.com.cn/jquery/index.asp', 'Work');
INSERT INTO `webs` VALUES (181, 'lodash（js工具库）', 'https://www.lodashjs.com', 'Work');
INSERT INTO `webs` VALUES (182, '语雀', 'https://www.yuque.com/sgz6zr', 'Work');
INSERT INTO `webs` VALUES (183, 'Vant', 'https://vant-contrib.gitee.io/vant/#/zh-CN/button', 'Work');
INSERT INTO `webs` VALUES (184, '蓝湖', 'https://lanhuapp.com/web/#/item', 'Work');
INSERT INTO `webs` VALUES (185, '微信开放社区', 'https://developers.weixin.qq.com/community/develop/mixflow', 'Work');
INSERT INTO `webs` VALUES (186, '微信开放文档', 'https://developers.weixin.qq.com/miniprogram/dev/api', 'Work');
INSERT INTO `webs` VALUES (187, '微信公众平台', 'https://mp.weixin.qq.com', 'Work');
INSERT INTO `webs` VALUES (188, '地理轮廓图json下载', 'http://datav.aliyun.com/tools/atlas/#&lat=31.769817845138945&lng=104.29901249999999&zoom=4', 'Work');
INSERT INTO `webs` VALUES (189, 'Echarts', 'https://echarts.apache.org/zh/index.html', 'Work');
INSERT INTO `webs` VALUES (190, 'Element UI', 'https://element.eleme.cn/#/zh-CN/component/layout', 'Work');
INSERT INTO `webs` VALUES (191, 'Ant Design of Vue', 'https://2x.antdv.com/components/icon-cn', 'Work');
INSERT INTO `webs` VALUES (192, 'cssbattle', 'https://cssbattle.dev/', '趣味比赛');

-- ----------------------------
-- Table structure for websites
-- ----------------------------
DROP TABLE IF EXISTS `websites`;
CREATE TABLE `websites`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `href` varchar(555) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12203 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of websites
-- ----------------------------
INSERT INTO `websites` VALUES (0, '麦克马斯特大学的经济思想史档案库', 'http://socserv.mcmaster.ca/econ/ugcm/3ll3/', '书');
INSERT INTO `websites` VALUES (1, '搬书匠', 'http://www.banshujiang.cn/', '书');
INSERT INTO `websites` VALUES (2, 'marxists哲学', 'http://www.marxists.org/reference/subject/philosophy/index.htm', '书');
INSERT INTO `websites` VALUES (3, '美国国家科学院在线数据库', 'http://www.nap.edu/', '书');
INSERT INTO `websites` VALUES (4, '世界数字图书馆', 'https://www.wdl.org/zh/', '书');
INSERT INTO `websites` VALUES (5, '亚马逊官方免费电子书', 'https://www.amazon.cn/Kindle%E5%85%8D%E8%B4%B9%E7%94%B5%E5%AD%90%E4%B9%A6/b/ref=amb_link_3?ie=UTF8&node=116175071&pf_rd_m=A1AJ19PSB66TGU&pf_rd_s=merchandised-search-leftnav&pf_rd_r=QA09QX96YRZ5BVM6D6DF&pf_rd_r=QA09QX96YRZ5BVM6D6DF&pf_rd_t=101&pf_rd_p=047e4bfa-1996-4eba-bf3c-4dcb84fb6933&pf_rd_p=047e4bfa-1996-4eba-bf3c-4dcb84fb6933&pf_rd_i=116169071', '书');
INSERT INTO `websites` VALUES (6, 'ZURE', 'https://zure.fun/', '书');
INSERT INTO `websites` VALUES (7, 'LoreFree', 'https://lorefree.com/', '书');
INSERT INTO `websites` VALUES (8, '盘搜搜', 'https://www.pansoso.com/', '书');
INSERT INTO `websites` VALUES (9, '书享家', 'http://shuxiangjia.cn/', '书');
INSERT INTO `websites` VALUES (10, '书单网', 'https://www.shudan.vip/', '书');
INSERT INTO `websites` VALUES (11, '苦瓜书盘', 'http://www.kgbook.com/', '书');
INSERT INTO `websites` VALUES (12, '中国国家图书馆', 'http://www.nlc.cn/', '书');
INSERT INTO `websites` VALUES (13, '全历史(Allhistory)', 'https://www.allhistory.com', '书');
INSERT INTO `websites` VALUES (14, 'Z-library', 'https://zh.singlelogin.org/', '书');
INSERT INTO `websites` VALUES (15, 'SoBooks', 'https://sobooks.cc/', '书');
INSERT INTO `websites` VALUES (16, '鸠摩搜书', 'https://www.jiumodiary.com/', '书');
INSERT INTO `websites` VALUES (17, '书格(数字古籍图书馆)', 'https://www.shuge.org', '书');
INSERT INTO `websites` VALUES (18, '第一PPT', 'http://www.1ppt.com/', '文档');
INSERT INTO `websites` VALUES (19, 'alltoall(各种文件转换)', 'http://www.alltoall.net', '文档');
INSERT INTO `websites` VALUES (20, 'ilovepdf(PDF转其他格式)', 'https://www.ilovepdf.com', '文档');
INSERT INTO `websites` VALUES (21, '在线文本对比', 'https://text-compare.com/zh-hans/', '文档');
INSERT INTO `websites` VALUES (22, 'lightPDF(在线PDF编辑转换)', 'https://lightpdf.com/zh', '文档');
INSERT INTO `websites` VALUES (23, '逗比（表情包搜索）', 'https://www.dbbqb.com/', '图片');
INSERT INTO `websites` VALUES (24, 'gif在线制作', 'http://gif.55.la/', '图片');
INSERT INTO `websites` VALUES (25, 'bigjpg(智能放大图片)', 'https://bigjpg.com', '图片');
INSERT INTO `websites` VALUES (26, 'removebg(去除图片背景)', 'https://www.remove.bg', '图片');
INSERT INTO `websites` VALUES (27, '在线ps', 'https://www.uupoop.com', '图片');
INSERT INTO `websites` VALUES (28, '草料二维码', 'https://cli.im', '图片');
INSERT INTO `websites` VALUES (29, 'pixabay(图片资源)', 'https://pixabay.com', '图片');
INSERT INTO `websites` VALUES (30, ' CC Search(无版权图片资源)', 'https://ccsearch.creativecommons.org', '图片');
INSERT INTO `websites` VALUES (31, 'visualhunt(无版权图片资源)', 'https://visualhunt.com', '图片');
INSERT INTO `websites` VALUES (32, '多边形背景生成器', 'https://trianglify.io', '图片');
INSERT INTO `websites` VALUES (33, 'tinypng(在线图片压缩)', 'https://tinify.cn/', '图片');
INSERT INTO `websites` VALUES (34, 'Squoosh!(在线图片压缩)', 'http://squoosh.app', '图片');
INSERT INTO `websites` VALUES (35, '故宫博物馆藏品', 'https://zm-digicol.dpm.org.cn/', '图片');
INSERT INTO `websites` VALUES (36, 'processon在线流程图', 'https://www.processon.com/', '图片');
INSERT INTO `websites` VALUES (37, '123apps在线工具站', 'https://123apps.com/', '图片');
INSERT INTO `websites` VALUES (38, '易飞文字识别catocr OCR', 'https://catocr.com/#/', '图片');
INSERT INTO `websites` VALUES (39, '超高无损音乐', 'https://www.sq688.com', '音乐');
INSERT INTO `websites` VALUES (40, 'musictools全网无损音乐免费下载客户端', 'http://tool.yijingying.com/musictools/', '音乐');
INSERT INTO `websites` VALUES (41, '团子AI提取伴奏人声（牛逼）', 'https://dango.ai/', '音乐');
INSERT INTO `websites` VALUES (42, 'conserve the sound（保存旧物的声音）', 'https://www.conservethesound.de/', '音乐');
INSERT INTO `websites` VALUES (43, 'spotify', 'https://open.spotify.com/', '音乐');
INSERT INTO `websites` VALUES (44, 'mora.jp', 'https://mora.jp', '音乐');
INSERT INTO `websites` VALUES (45, '维基百科', 'https://zh.wikipedia.org/', '常用国外网站');
INSERT INTO `websites` VALUES (46, 'Google新闻', 'https://news.google.com/topstories?hl=zh-HK&gl=HK&ceid=HK:zh-Hant', '谷歌服务');
INSERT INTO `websites` VALUES (47, 'Google相册', 'https://photos.google.com/?pageId=none', '谷歌服务');
INSERT INTO `websites` VALUES (48, 'Google Play应用商店', 'https://play.google.com/store/apps?hl=zh-CN', '谷歌服务');
INSERT INTO `websites` VALUES (49, 'Gmail', 'https://www.google.com/intl/zh-CN/gmail/about/#', '谷歌服务');
INSERT INTO `websites` VALUES (50, 'GoogleSearchConsole网站管理员工具', 'https://search.google.com/', '谷歌服务');
INSERT INTO `websites` VALUES (51, '谷歌翻译', 'https://translate.google.com/', '谷歌服务');
INSERT INTO `websites` VALUES (52, '谷歌地球（好玩！旅游一样）', 'https://www.google.com/earth/', '谷歌服务');
INSERT INTO `websites` VALUES (53, '谷歌搜图', 'https://www.google.com/imghp', '谷歌服务');
INSERT INTO `websites` VALUES (54, '谷歌搜索', 'https://www.google.com.tw/', '谷歌服务');
INSERT INTO `websites` VALUES (55, 'chrome网上应用店(插件)', 'https://chrome.google.com/webstore/category/extensions?hl=zh-CN', '谷歌服务');
INSERT INTO `websites` VALUES (56, 'Google 常用服务及网址', 'http://www.vixual.net/blog/archives/164?variant=zh-cn', '谷歌服务');
INSERT INTO `websites` VALUES (57, 'pp直连', 'https://www.ppzhilian.com/', '文件传输');
INSERT INTO `websites` VALUES (58, 'QQ', 'https://im.qq.com/index', '文件传输');
INSERT INTO `websites` VALUES (59, '飞扬转运', 'http://www.rbzygs.com/member/default/index.html', '转运公司');
INSERT INTO `websites` VALUES (60, '日文名字翻译', 'https://www.ltool.net/chinese_simplified_and_traditional_characters_pinyin_to_katakana_converter_in_simplified_chinese.php', '常用国外网站');
INSERT INTO `websites` VALUES (61, 'kindle电子书', 'https://www.amazon.cn/Kindle%E7%94%B5%E5%AD%90%E4%B9%A6/b?ie=UTF8&node=116169071&ref_=nav_topnav_giftcert', '常用国外网站');
INSERT INTO `websites` VALUES (62, 'amazon（日）', 'https://www.amazon.co.jp/', '常用国外网站');
INSERT INTO `websites` VALUES (63, 'amazon（中）', 'https://www.amazon.cn/', '常用国外网站');
INSERT INTO `websites` VALUES (64, 'amazon（美）', 'https://www.amazon.com/', '常用国外网站');
INSERT INTO `websites` VALUES (65, 'Rakuten 乐天', 'https://www.rakuten.co.jp/', '常用国外网站');
INSERT INTO `websites` VALUES (66, '油管', 'https://www.youtube.com', '常用国外网站');
INSERT INTO `websites` VALUES (67, 'instagram', 'https://www.instagram.com', '常用国外网站');
INSERT INTO `websites` VALUES (68, 'twitter', 'https://twitter.com/', '常用国外网站');
INSERT INTO `websites` VALUES (69, 'IData知识检索(期刊论文)', 'https://www.cn-ki.net/', '学习');
INSERT INTO `websites` VALUES (70, '吾爱分享', 'https://52sharing.cn', '学习');
INSERT INTO `websites` VALUES (71, '菜鸟教程(学习)', 'https://www.runoob.com', '学习');
INSERT INTO `websites` VALUES (72, 'Oeasy(学习)', 'http://oeasy.org/', '学习');
INSERT INTO `websites` VALUES (73, 'setupvpn（浏览器）', 'https://chrome.google.com/webstore/detail/setupvpn-lifetime-free-vp/oofgbpoabipfcfjapgnbbjjaenockbdp/related', '翻墙');
INSERT INTO `websites` VALUES (74, 'greenhub（全局或者浏览器）', 'https://greenhubtx.ga/?utm_source=mg&utm_medium=click&utm_campaign=popup', '翻墙');
INSERT INTO `websites` VALUES (75, 'paypal', 'https://www.paypal.com/c2/webapps/mpp/account-selection', '兼职&支付');
INSERT INTO `websites` VALUES (76, 'upwork', 'https://www.upwork.com/', '兼职&支付');
INSERT INTO `websites` VALUES (77, '今日热榜', 'https://tophub.today', '娱乐');
INSERT INTO `websites` VALUES (78, '733动漫网(漫画)', 'https://www.733.so', '娱乐');
INSERT INTO `websites` VALUES (79, '动漫010', 'http://www.dm010.com/', '娱乐');
INSERT INTO `websites` VALUES (80, '樱花动漫', 'http://www.yhdm.tv', '娱乐');
INSERT INTO `websites` VALUES (81, '影视龙', 'https://www.datvb.com/oumeiju/', '娱乐');
INSERT INTO `websites` VALUES (82, 'NO视频', 'http://www.novipnoad.com', '娱乐');
INSERT INTO `websites` VALUES (83, '58网盘分享', 'https://m.58wangpan.com', '娱乐');
INSERT INTO `websites` VALUES (84, 'IMSDb', 'https://imsdb.com/', '娱乐');
INSERT INTO `websites` VALUES (85, '注视', 'https://gaze.run/', '娱乐');
INSERT INTO `websites` VALUES (86, '天天影视', 'https://521dt.com/', '娱乐');
INSERT INTO `websites` VALUES (87, 'hdmoli', 'https://www.hdmoli.com/', '娱乐');
INSERT INTO `websites` VALUES (88, '人人视频', 'http://m.rr.tv/', '娱乐');
INSERT INTO `websites` VALUES (89, '万花筒导航', 'https://wht.im/', '网址导航');
INSERT INTO `websites` VALUES (90, '猎手导航', 'http://www.lsdhss.com/', '网址导航');
INSERT INTO `websites` VALUES (91, '龙喵网', 'http://ailongmiao.com/', '网址导航');
INSERT INTO `websites` VALUES (92, 'RRReol_ 微博', 'https://weibo.com/u/5759697834?topnav=1&wvr=6&topsug=1', 'Reol');
INSERT INTO `websites` VALUES (93, 'RRReol999 微博', 'https://weibo.com/u/7330631722?topnav=1&wvr=6&topsug=1', 'Reol');
INSERT INTO `websites` VALUES (94, 'REOL_INFO 微博', 'https://weibo.com/u/1878655634?topnav=1&wvr=6&topsug=1', 'Reol');
INSERT INTO `websites` VALUES (95, 'Facebook', 'https://www.facebook.com/', 'Reol');
INSERT INTO `websites` VALUES (96, 'hmv', 'https://www.hmv.co.jp/artist_Reol_000000000755118/', 'Reol');
INSERT INTO `websites` VALUES (97, '玩具工厂 REOL官网', 'https://www.toysfactory.co.jp/artist/reol/official/news/', 'Reol');
INSERT INTO `websites` VALUES (98, 'nhk电视台', 'https://www.nhk.jp/search/?q=Reol', 'Reol');
INSERT INTO `websites` VALUES (99, 'rockin\'on', 'https://rockinon.com/artist/7706', 'Reol');
INSERT INTO `websites` VALUES (100, 'REOL lineblog', 'https://lineblog.me/reol/', 'Reol');
INSERT INTO `websites` VALUES (101, '金字塔网页', 'https://www.reol.jp/special/2nd_album/', 'Reol');
INSERT INTO `websites` VALUES (102, '「激情アラート」网页', 'https://reol.jp/feature/tour2022', 'Reol');
INSERT INTO `websites` VALUES (103, '维基百科', 'https://zh.wikipedia.org/wiki/Reol#%E4%BB%A5REOL%E4%B8%BA%E5%90%8D%E4%B9%89%E5%8F%91%E5%B8%83', 'Reol');
INSERT INTO `websites` VALUES (104, 'tiktok', 'https://www.tiktok.com/@rrreol999?lang=zh-Hant-TW&is_copy_url=1&is_from_webapp=v2&item_id=6936119436617288962', 'Reol');
INSERT INTO `websites` VALUES (105, 'niconico', 'https://www.nicovideo.jp/user/16253346/video?ref=pc_userpage_menu', 'Reol');
INSERT INTO `websites` VALUES (106, 'Reol subch油管', 'https://www.youtube.com/channel/UC39sl86DznfaduyK7_GClWw', 'Reol');
INSERT INTO `websites` VALUES (107, 'Reol official油管', 'https://www.youtube.com/user/reolch', 'Reol');
INSERT INTO `websites` VALUES (108, 'Instagram', 'https://www.instagram.com/rrreol999/', 'Reol');
INSERT INTO `websites` VALUES (109, 'twitter', 'https://twitter.com/RRReol', 'Reol');
INSERT INTO `websites` VALUES (110, 'Reol公演购票', 'https://eplus.jp/sf/word/0000070331', 'Reol');
INSERT INTO `websites` VALUES (111, 'jvc', 'https://www.jvcmusic.co.jp/-/Artist/A025153.html', 'Reol');
INSERT INTO `websites` VALUES (112, 'victor-store', 'https://victor-store.jp/artist/12915520', 'Reol');
INSERT INTO `websites` VALUES (113, '旧Reol商店', 'https://ec.reol.jp/', 'Reol');
INSERT INTO `websites` VALUES (114, '旧fanclub 生日祝福', 'https://mb.reol.jp/birthday_mail/index.php', 'Reol');
INSERT INTO `websites` VALUES (115, '旧fanclub', 'https://mb.reol.jp/', 'Reol');
INSERT INTO `websites` VALUES (116, '新fanclub', 'https://reol.jp/feature/entry', 'Reol');
INSERT INTO `websites` VALUES (117, 'Reol官网', 'https://reol.jp/', 'Reol');

SET FOREIGN_KEY_CHECKS = 1;
