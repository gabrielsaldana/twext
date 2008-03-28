-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- ჰოსტი: localhost
-- შექმნის დრო: Mar 08, 2008 at 01:00 PM
-- სერვერის ვერსია: 4.1.16
-- PHP ვერსია: 5.2.1
-- 
-- მონაცემთა ბაზა: `twexter`
-- 

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `atoms`
-- 

CREATE TABLE `atoms` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `pos_id` bigint(20) unsigned NOT NULL default '0',
  `lang_id` bigint(20) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `atoms`
-- 

INSERT INTO `atoms` VALUES (0, 0, 0, 'twext');
INSERT INTO `atoms` VALUES (1, 1, 0, 'languages');
INSERT INTO `atoms` VALUES (2, 2, 0, 'literacy');
INSERT INTO `atoms` VALUES (3, 3, 0, '');
INSERT INTO `atoms` VALUES (4, 4, 0, 'language');
INSERT INTO `atoms` VALUES (5, 5, 0, 'translator');
INSERT INTO `atoms` VALUES (6, 6, 0, 'translate');
INSERT INTO `atoms` VALUES (7, 7, 0, '?');
INSERT INTO `atoms` VALUES (8, 8, 0, 'ok, i get it');
INSERT INTO `atoms` VALUES (9, 9, 0, 'OK');
INSERT INTO `atoms` VALUES (10, 10, 0, 'twexter');
INSERT INTO `atoms` VALUES (11, 11, 0, 'version');
INSERT INTO `atoms` VALUES (12, 12, 0, 'welcome');
INSERT INTO `atoms` VALUES (13, 13, 0, 'bye');
INSERT INTO `atoms` VALUES (14, 14, 0, 'login');
INSERT INTO `atoms` VALUES (15, 15, 0, 'logout');
INSERT INTO `atoms` VALUES (16, 16, 0, 'yes');
INSERT INTO `atoms` VALUES (17, 17, 0, 'no');
INSERT INTO `atoms` VALUES (18, 18, 0, 'maybe');
INSERT INTO `atoms` VALUES (19, 19, 0, 'please');
INSERT INTO `atoms` VALUES (20, 20, 0, 'thanks');
INSERT INTO `atoms` VALUES (21, 21, 0, 'error');
INSERT INTO `atoms` VALUES (22, 22, 0, 'sorry');
INSERT INTO `atoms` VALUES (23, 23, 0, 'oops!');
INSERT INTO `atoms` VALUES (24, 24, 0, '+add');
INSERT INTO `atoms` VALUES (25, 25, 0, 'TEXT');
INSERT INTO `atoms` VALUES (26, 26, 0, 'ok');
INSERT INTO `atoms` VALUES (27, 27, 0, '');
INSERT INTO `atoms` VALUES (28, 28, 0, 'not ok');
INSERT INTO `atoms` VALUES (29, 29, 0, '');
INSERT INTO `atoms` VALUES (30, 30, 0, 'user');
INSERT INTO `atoms` VALUES (31, 31, 0, 'name');
INSERT INTO `atoms` VALUES (32, 32, 0, 'username');
INSERT INTO `atoms` VALUES (33, 33, 0, '');
INSERT INTO `atoms` VALUES (34, 34, 0, '');
INSERT INTO `atoms` VALUES (35, 35, 0, 'preferences');
INSERT INTO `atoms` VALUES (36, 36, 0, 'password');
INSERT INTO `atoms` VALUES (37, 37, 0, 'confirm');
INSERT INTO `atoms` VALUES (38, 38, 0, 'GO BACK');
INSERT INTO `atoms` VALUES (39, 39, 0, '');
INSERT INTO `atoms` VALUES (40, 40, 0, 'try');
INSERT INTO `atoms` VALUES (41, 41, 0, 'post');
INSERT INTO `atoms` VALUES (42, 42, 0, 'ok');
INSERT INTO `atoms` VALUES (43, 43, 0, 'title');
INSERT INTO `atoms` VALUES (44, 44, 0, 'text');
INSERT INTO `atoms` VALUES (45, 45, 0, 'OR');
INSERT INTO `atoms` VALUES (46, 46, 0, 'or');
INSERT INTO `atoms` VALUES (47, 47, 0, '');
INSERT INTO `atoms` VALUES (48, 48, 0, 'spine');
INSERT INTO `atoms` VALUES (49, 49, 0, 'menu');
INSERT INTO `atoms` VALUES (50, 50, 0, 'template');
INSERT INTO `atoms` VALUES (51, 51, 0, 'member');
INSERT INTO `atoms` VALUES (52, 52, 0, 'my twexter');
INSERT INTO `atoms` VALUES (53, 53, 0, 'add text');
INSERT INTO `atoms` VALUES (54, 54, 0, 'translate');
INSERT INTO `atoms` VALUES (55, 55, 0, 'chunk');
INSERT INTO `atoms` VALUES (56, 56, 0, 'edit');
INSERT INTO `atoms` VALUES (57, 57, 0, 'search');
INSERT INTO `atoms` VALUES (58, 58, 0, 'faq');
INSERT INTO `atoms` VALUES (59, 59, 0, 'frequently asked questions');
INSERT INTO `atoms` VALUES (60, 60, 0, 'help');
INSERT INTO `atoms` VALUES (61, 61, 0, 'code');
INSERT INTO `atoms` VALUES (62, 62, 0, 'news');
INSERT INTO `atoms` VALUES (63, 63, 0, '');
INSERT INTO `atoms` VALUES (64, 64, 0, '');
INSERT INTO `atoms` VALUES (65, 65, 0, '');
INSERT INTO `atoms` VALUES (66, 66, 0, '');
INSERT INTO `atoms` VALUES (67, 67, 0, '');
INSERT INTO `atoms` VALUES (68, 68, 0, '');
INSERT INTO `atoms` VALUES (69, 69, 0, '');
INSERT INTO `atoms` VALUES (70, 70, 0, 'agree');
INSERT INTO `atoms` VALUES (71, 71, 0, 'agreement');
INSERT INTO `atoms` VALUES (72, 72, 0, 'we agree to these terms to beta test twext');
INSERT INTO `atoms` VALUES (73, 73, 0, 'we agree?');
INSERT INTO `atoms` VALUES (74, 74, 0, 'terms');
INSERT INTO `atoms` VALUES (75, 75, 0, '');
INSERT INTO `atoms` VALUES (76, 76, 0, '');
INSERT INTO `atoms` VALUES (77, 77, 0, '');
INSERT INTO `atoms` VALUES (78, 78, 0, '');
INSERT INTO `atoms` VALUES (79, 79, 0, '');
INSERT INTO `atoms` VALUES (80, 80, 0, 'add user');
INSERT INTO `atoms` VALUES (81, 81, 0, 'create a twext account');
INSERT INTO `atoms` VALUES (82, 82, 0, 'ok, here''s what we need:');
INSERT INTO `atoms` VALUES (83, 83, 0, 'create a name for your account.');
INSERT INTO `atoms` VALUES (84, 84, 0, '(8 character limit for now)');
INSERT INTO `atoms` VALUES (85, 85, 0, 'username');
INSERT INTO `atoms` VALUES (86, 86, 0, 'email');
INSERT INTO `atoms` VALUES (87, 87, 0, 'to what email address should twexter send your password?');
INSERT INTO `atoms` VALUES (88, 88, 0, 'select the language you read best');
INSERT INTO `atoms` VALUES (89, 89, 0, 'or');
INSERT INTO `atoms` VALUES (90, 90, 0, 'not ok');
INSERT INTO `atoms` VALUES (91, 91, 0, 'beta test');
INSERT INTO `atoms` VALUES (92, 92, 0, 'this is a TEMPORARY ACCOUNT to help us test twexter');
INSERT INTO `atoms` VALUES (93, 93, 0, 'chances are that you can keep your username, but no guarantees!');
INSERT INTO `atoms` VALUES (94, 94, 0, 'ok, i get it');
INSERT INTO `atoms` VALUES (95, 95, 0, '');
INSERT INTO `atoms` VALUES (96, 96, 0, '');
INSERT INTO `atoms` VALUES (97, 97, 0, '');
INSERT INTO `atoms` VALUES (98, 98, 0, '');
INSERT INTO `atoms` VALUES (99, 99, 0, '');
INSERT INTO `atoms` VALUES (100, 100, 0, 'add user');
INSERT INTO `atoms` VALUES (101, 101, 0, 'name taken');
INSERT INTO `atoms` VALUES (102, 102, 0, 'is being used, sorry');
INSERT INTO `atoms` VALUES (103, 103, 0, 'and try another');
INSERT INTO `atoms` VALUES (104, 104, 0, '');
INSERT INTO `atoms` VALUES (105, 105, 0, '');
INSERT INTO `atoms` VALUES (106, 106, 0, '');
INSERT INTO `atoms` VALUES (107, 107, 0, '');
INSERT INTO `atoms` VALUES (108, 108, 0, '');
INSERT INTO `atoms` VALUES (109, 109, 0, '');
INSERT INTO `atoms` VALUES (110, 110, 0, 'welcome to twext');
INSERT INTO `atoms` VALUES (111, 111, 0, 'twexter created an account for you named:');
INSERT INTO `atoms` VALUES (112, 112, 0, 'and has sent a password to you at:');
INSERT INTO `atoms` VALUES (113, 113, 0, 'get your email, then log into twext');
INSERT INTO `atoms` VALUES (114, 114, 0, 'have fun');
INSERT INTO `atoms` VALUES (115, 115, 0, '');
INSERT INTO `atoms` VALUES (116, 116, 0, '');
INSERT INTO `atoms` VALUES (117, 117, 0, 'please login as soon as possible,');
INSERT INTO `atoms` VALUES (118, 118, 0, 'or twexter might remove this user name');
INSERT INTO `atoms` VALUES (119, 119, 0, '');
INSERT INTO `atoms` VALUES (120, 120, 0, 'twext language');
INSERT INTO `atoms` VALUES (121, 121, 0, 'choose a language you can read and write:');
INSERT INTO `atoms` VALUES (122, 122, 0, 'this is your "twext" language');
INSERT INTO `atoms` VALUES (123, 123, 0, 'students:');
INSERT INTO `atoms` VALUES (124, 124, 0, 'use it to learn to read another language');
INSERT INTO `atoms` VALUES (125, 125, 0, 'translators:');
INSERT INTO `atoms` VALUES (126, 126, 0, 'translate to this language to help us learn');
INSERT INTO `atoms` VALUES (127, 127, 0, '');
INSERT INTO `atoms` VALUES (128, 128, 0, '+ add a language to twext');
INSERT INTO `atoms` VALUES (129, 129, 0, 'preferences');
INSERT INTO `atoms` VALUES (130, 130, 0, 'MY TwEXTER preferences');
INSERT INTO `atoms` VALUES (131, 131, 0, 'PAIRS');
INSERT INTO `atoms` VALUES (132, 132, 0, 'CHUNKSTER');
INSERT INTO `atoms` VALUES (133, 133, 0, 'TRANSLATOR');
INSERT INTO `atoms` VALUES (134, 134, 0, 'SHOWS');
INSERT INTO `atoms` VALUES (135, 135, 0, 'select a version of twexter you wish to use');
INSERT INTO `atoms` VALUES (136, 136, 0, 'check all languages you can read or learn');
INSERT INTO `atoms` VALUES (137, 137, 0, '+add language');
INSERT INTO `atoms` VALUES (138, 138, 0, 'please keep twexter updated with your most reliable email address..');
INSERT INTO `atoms` VALUES (139, 139, 0, 'if twexter can''t find you by email, then you may have to create a new account.');
INSERT INTO `atoms` VALUES (140, 140, 0, '');
INSERT INTO `atoms` VALUES (141, 141, 0, 'password');
INSERT INTO `atoms` VALUES (142, 142, 0, 'confirm');
INSERT INTO `atoms` VALUES (143, 143, 0, '');
INSERT INTO `atoms` VALUES (144, 144, 0, 'twexter is a software that helps us to chunk and translate twext texts.');
INSERT INTO `atoms` VALUES (145, 145, 0, 'twexter is learning to let you customize it to your preference.');
INSERT INTO `atoms` VALUES (146, 146, 0, 'for example, you can now change your password to one that is more easy to remember');
INSERT INTO `atoms` VALUES (147, 147, 0, '');
INSERT INTO `atoms` VALUES (148, 148, 0, '');
INSERT INTO `atoms` VALUES (149, 149, 0, '');
INSERT INTO `atoms` VALUES (150, 150, 0, 'TEXT:');
INSERT INTO `atoms` VALUES (151, 151, 0, 'add a text');
INSERT INTO `atoms` VALUES (152, 152, 0, 'TITLE:');
INSERT INTO `atoms` VALUES (153, 153, 0, 'text');
INSERT INTO `atoms` VALUES (154, 154, 0, 'LANG:');
INSERT INTO `atoms` VALUES (155, 155, 0, 'get a text ready for twext.');
INSERT INTO `atoms` VALUES (156, 156, 0, 'TITLE: write the title');
INSERT INTO `atoms` VALUES (157, 157, 0, 'TEXT: write the text');
INSERT INTO `atoms` VALUES (158, 158, 0, 'LANG: identify the language of this text');
INSERT INTO `atoms` VALUES (159, 159, 0, 'TRY: preview this text');
INSERT INTO `atoms` VALUES (160, 160, 0, 'POST: publish it');
INSERT INTO `atoms` VALUES (161, 161, 0, '');
INSERT INTO `atoms` VALUES (162, 162, 0, '');
INSERT INTO `atoms` VALUES (163, 163, 0, '');
INSERT INTO `atoms` VALUES (164, 164, 0, '');
INSERT INTO `atoms` VALUES (165, 165, 0, '');
INSERT INTO `atoms` VALUES (166, 166, 0, '');
INSERT INTO `atoms` VALUES (167, 167, 0, '');
INSERT INTO `atoms` VALUES (168, 168, 0, '');
INSERT INTO `atoms` VALUES (169, 169, 0, 'REVIEW');
INSERT INTO `atoms` VALUES (170, 170, 0, 'EDIT');
INSERT INTO `atoms` VALUES (171, 171, 0, '');
INSERT INTO `atoms` VALUES (172, 172, 0, 'TRY');
INSERT INTO `atoms` VALUES (173, 173, 0, 'POST');
INSERT INTO `atoms` VALUES (174, 174, 0, '');
INSERT INTO `atoms` VALUES (175, 175, 0, 'click "REVIEW" to go up and look for errors, and click "EDIT" to go down to fix them');
INSERT INTO `atoms` VALUES (176, 176, 0, 'please make sure you have the text language correctly identified.');
INSERT INTO `atoms` VALUES (177, 177, 0, 'click "TRY" to preview this page, "POST" to publish it');
INSERT INTO `atoms` VALUES (178, 178, 0, 'A.');
INSERT INTO `atoms` VALUES (179, 179, 0, 'you can not edit the source text from this page..');
INSERT INTO `atoms` VALUES (180, 180, 0, '(to edit the source text, GO BACK to previous page and then click "edit" option)');
INSERT INTO `atoms` VALUES (181, 181, 0, '');
INSERT INTO `atoms` VALUES (182, 182, 0, 'translate the title');
INSERT INTO `atoms` VALUES (183, 183, 0, 'select language for your translation');
INSERT INTO `atoms` VALUES (184, 184, 0, 'translate the text to the language you selected');
INSERT INTO `atoms` VALUES (185, 185, 0, 'click "TRY" to preview your translation');
INSERT INTO `atoms` VALUES (186, 186, 0, 'click "POST" to publish your translation');
INSERT INTO `atoms` VALUES (187, 187, 0, '');
INSERT INTO `atoms` VALUES (188, 188, 0, '');
INSERT INTO `atoms` VALUES (189, 189, 0, '');
INSERT INTO `atoms` VALUES (190, 190, 0, 'edit translation');
INSERT INTO `atoms` VALUES (191, 191, 0, '');
INSERT INTO `atoms` VALUES (192, 192, 0, 'click "REVIEW" to go up to look for errors, then click "EDIT" to return to fix them.');
INSERT INTO `atoms` VALUES (193, 193, 0, 'remember, any changes you make to the original language text can not be saved..');
INSERT INTO `atoms` VALUES (194, 194, 0, 'and make sure you have the translation language correctly identified..');
INSERT INTO `atoms` VALUES (195, 195, 0, 'click "TRY" to preview this page again, "POST" to publish it');
INSERT INTO `atoms` VALUES (196, 196, 0, '');
INSERT INTO `atoms` VALUES (197, 197, 0, '');
INSERT INTO `atoms` VALUES (198, 198, 0, '');
INSERT INTO `atoms` VALUES (199, 199, 0, '');
INSERT INTO `atoms` VALUES (200, 200, 0, 'chunk');
INSERT INTO `atoms` VALUES (201, 201, 0, 'the source TEXT, on the left.');
INSERT INTO `atoms` VALUES (202, 202, 0, 'choose a language for twext translation');
INSERT INTO `atoms` VALUES (203, 203, 0, 'translate each chunk for twext translation');
INSERT INTO `atoms` VALUES (204, 204, 0, 'click "TRY" to preview,');
INSERT INTO `atoms` VALUES (205, 205, 0, 'click"POST" to publish this text twext.');
INSERT INTO `atoms` VALUES (206, 206, 0, '');
INSERT INTO `atoms` VALUES (207, 207, 0, '');
INSERT INTO `atoms` VALUES (208, 208, 0, '');
INSERT INTO `atoms` VALUES (209, 209, 0, '');
INSERT INTO `atoms` VALUES (210, 210, 0, 'chunk edit');
INSERT INTO `atoms` VALUES (211, 211, 0, 'click "REVIEW" to go up to look for errors, then click "EDIT" to return to fix them.');
INSERT INTO `atoms` VALUES (212, 212, 0, 'make sure you have the translation language correctly identified..');
INSERT INTO `atoms` VALUES (213, 213, 0, 'click "TRY" to preview this page, "POST" to publish it');
INSERT INTO `atoms` VALUES (214, 214, 0, '');
INSERT INTO `atoms` VALUES (215, 215, 0, '');
INSERT INTO `atoms` VALUES (216, 216, 0, '');
INSERT INTO `atoms` VALUES (217, 217, 0, '');
INSERT INTO `atoms` VALUES (218, 218, 0, '');
INSERT INTO `atoms` VALUES (219, 219, 0, '');
INSERT INTO `atoms` VALUES (220, 220, 0, 'edit error');
INSERT INTO `atoms` VALUES (221, 221, 0, 'sorry, you can''t edit this text yet');
INSERT INTO `atoms` VALUES (222, 222, 0, 'another user created this text..');
INSERT INTO `atoms` VALUES (223, 223, 0, 'if you want to be able to edit another user''s text,');
INSERT INTO `atoms` VALUES (224, 224, 0, 'tell twexter');
INSERT INTO `atoms` VALUES (225, 225, 0, 'tell');
INSERT INTO `atoms` VALUES (226, 226, 0, '');
INSERT INTO `atoms` VALUES (227, 227, 0, '');
INSERT INTO `atoms` VALUES (228, 228, 0, '');
INSERT INTO `atoms` VALUES (229, 229, 0, '');
INSERT INTO `atoms` VALUES (230, 230, 0, 'search');
INSERT INTO `atoms` VALUES (231, 231, 0, 'select the language you wish to search:');
INSERT INTO `atoms` VALUES (232, 232, 0, 'search "TEXT" to look for regular texts and translations..');
INSERT INTO `atoms` VALUES (233, 233, 0, 'search "twext" for twext translations');
INSERT INTO `atoms` VALUES (234, 234, 0, 'to change your twext language, click on it.');
INSERT INTO `atoms` VALUES (235, 235, 0, '');
INSERT INTO `atoms` VALUES (236, 236, 0, '');
INSERT INTO `atoms` VALUES (237, 237, 0, '');
INSERT INTO `atoms` VALUES (238, 238, 0, '');
INSERT INTO `atoms` VALUES (239, 239, 0, '');
INSERT INTO `atoms` VALUES (240, 240, 0, 'twext faq');
INSERT INTO `atoms` VALUES (241, 241, 0, 'frequently asked questions');
INSERT INTO `atoms` VALUES (242, 242, 0, 'please send questions to');
INSERT INTO `atoms` VALUES (243, 243, 0, 'faq@twext.cc');
INSERT INTO `atoms` VALUES (244, 244, 0, '');
INSERT INTO `atoms` VALUES (245, 245, 0, '');
INSERT INTO `atoms` VALUES (246, 246, 0, '');
INSERT INTO `atoms` VALUES (247, 247, 0, '');
INSERT INTO `atoms` VALUES (248, 248, 0, '');
INSERT INTO `atoms` VALUES (249, 249, 0, 'help');
INSERT INTO `atoms` VALUES (250, 250, 0, 'help learning twexter');
INSERT INTO `atoms` VALUES (251, 251, 0, 'twexter help is under construction..');
INSERT INTO `atoms` VALUES (252, 252, 0, 'you can help us build it..');
INSERT INTO `atoms` VALUES (253, 253, 0, 'send questions to');
INSERT INTO `atoms` VALUES (254, 254, 0, 'help@twext.cc');
INSERT INTO `atoms` VALUES (255, 255, 0, '');
INSERT INTO `atoms` VALUES (256, 256, 0, '');
INSERT INTO `atoms` VALUES (257, 257, 0, '');
INSERT INTO `atoms` VALUES (258, 258, 0, '');
INSERT INTO `atoms` VALUES (259, 259, 0, 'code');
INSERT INTO `atoms` VALUES (260, 260, 0, 'code twexter');
INSERT INTO `atoms` VALUES (261, 261, 0, 'here we share code to twexter softwares');
INSERT INTO `atoms` VALUES (262, 262, 0, 'left menu');
INSERT INTO `atoms` VALUES (263, 263, 0, '');
INSERT INTO `atoms` VALUES (264, 264, 0, '');
INSERT INTO `atoms` VALUES (265, 265, 0, '');
INSERT INTO `atoms` VALUES (266, 266, 0, '');
INSERT INTO `atoms` VALUES (267, 267, 0, '');
INSERT INTO `atoms` VALUES (268, 268, 0, '');
INSERT INTO `atoms` VALUES (269, 269, 0, '');
INSERT INTO `atoms` VALUES (270, 270, 0, '');
INSERT INTO `atoms` VALUES (271, 271, 0, '');
INSERT INTO `atoms` VALUES (272, 272, 0, '');
INSERT INTO `atoms` VALUES (273, 273, 0, '');
INSERT INTO `atoms` VALUES (274, 274, 0, '');
INSERT INTO `atoms` VALUES (275, 275, 0, '');
INSERT INTO `atoms` VALUES (276, 276, 0, '');
INSERT INTO `atoms` VALUES (277, 277, 0, '');
INSERT INTO `atoms` VALUES (278, 278, 0, '');
INSERT INTO `atoms` VALUES (279, 279, 0, '');
INSERT INTO `atoms` VALUES (280, 280, 0, '');
INSERT INTO `atoms` VALUES (281, 281, 0, '');
INSERT INTO `atoms` VALUES (282, 282, 0, '');
INSERT INTO `atoms` VALUES (283, 283, 0, '');
INSERT INTO `atoms` VALUES (284, 284, 0, '');
INSERT INTO `atoms` VALUES (285, 285, 0, '');
INSERT INTO `atoms` VALUES (286, 286, 0, '');
INSERT INTO `atoms` VALUES (287, 287, 0, '');
INSERT INTO `atoms` VALUES (288, 288, 0, '');
INSERT INTO `atoms` VALUES (289, 289, 0, '');
INSERT INTO `atoms` VALUES (290, 290, 0, '');
INSERT INTO `atoms` VALUES (291, 291, 0, '');
INSERT INTO `atoms` VALUES (292, 292, 0, '');
INSERT INTO `atoms` VALUES (293, 293, 0, '');
INSERT INTO `atoms` VALUES (294, 294, 0, '');
INSERT INTO `atoms` VALUES (295, 295, 0, '');
INSERT INTO `atoms` VALUES (296, 296, 0, '');
INSERT INTO `atoms` VALUES (297, 297, 0, '');
INSERT INTO `atoms` VALUES (298, 298, 0, '');
INSERT INTO `atoms` VALUES (299, 299, 0, '');
INSERT INTO `atoms` VALUES (300, 300, 0, 'are you sure you get it?');
INSERT INTO `atoms` VALUES (301, 301, 0, 'When you click "ok, i get it",');
INSERT INTO `atoms` VALUES (302, 302, 0, 'twexter removes the yellow help message from the previous page.');
INSERT INTO `atoms` VALUES (303, 303, 0, 'To keep it, GO BACK and uncheck the box.');
INSERT INTO `atoms` VALUES (304, 304, 0, 'Otherwize, click any link to learn with twexter.');
INSERT INTO `atoms` VALUES (305, 305, 0, 'please don''t show me this message again');
INSERT INTO `atoms` VALUES (306, 306, 0, '');
INSERT INTO `atoms` VALUES (307, 307, 0, '');
INSERT INTO `atoms` VALUES (308, 308, 0, '');
INSERT INTO `atoms` VALUES (309, 309, 0, 'index');
INSERT INTO `atoms` VALUES (310, 310, 0, 'twext languages, we learn to read.');
INSERT INTO `atoms` VALUES (311, 311, 0, 'If you can read one language, you can use TwEXT to learn to read another.');
INSERT INTO `atoms` VALUES (312, 312, 0, 'First, choose a language that you can read:');
INSERT INTO `atoms` VALUES (313, 313, 0, '');
INSERT INTO `atoms` VALUES (314, 314, 0, 'join us');
INSERT INTO `atoms` VALUES (315, 315, 0, 'sponsor twext');
INSERT INTO `atoms` VALUES (316, 316, 0, '');
INSERT INTO `atoms` VALUES (317, 317, 0, '');
INSERT INTO `atoms` VALUES (318, 318, 0, 'NOTE: in following sentences, please replace "English" with your language');
INSERT INTO `atoms` VALUES (319, 319, 0, '');
INSERT INTO `atoms` VALUES (320, 320, 0, 'i can read English');
INSERT INTO `atoms` VALUES (321, 321, 0, 'Can you read English?');
INSERT INTO `atoms` VALUES (322, 322, 0, 'Use it to learn to read another.');
INSERT INTO `atoms` VALUES (323, 323, 0, 'translators: add a language to English');
INSERT INTO `atoms` VALUES (324, 324, 0, '');
INSERT INTO `atoms` VALUES (325, 325, 0, '');
INSERT INTO `atoms` VALUES (326, 326, 0, '');
INSERT INTO `atoms` VALUES (327, 327, 0, '');
INSERT INTO `atoms` VALUES (328, 328, 0, '');
INSERT INTO `atoms` VALUES (329, 329, 0, '');
INSERT INTO `atoms` VALUES (330, 330, 0, 'we learn to read ENGLISH');
INSERT INTO `atoms` VALUES (331, 331, 0, 'English, like any language, has a wide variety of phrases and figures of speech that aren''t always easy to translate to other languages.');
INSERT INTO `atoms` VALUES (332, 332, 0, 'It can be confusing to hear such phrases in a conversation.');
INSERT INTO `atoms` VALUES (333, 333, 0, 'Reading in English can help to introduce us to many of these unusual phrases,');
INSERT INTO `atoms` VALUES (334, 334, 0, 'and also give us a meaningful context to understand how and when they''re used.');
INSERT INTO `atoms` VALUES (335, 335, 0, 'This can help us to understand and communicate in English.');
INSERT INTO `atoms` VALUES (336, 336, 0, '');
INSERT INTO `atoms` VALUES (337, 337, 0, 'So as TwEXT helps us learn to read in English,');
INSERT INTO `atoms` VALUES (338, 338, 0, 'it also helps us to get to know the language better,');
INSERT INTO `atoms` VALUES (339, 339, 0, 'so we can have more fun with our conversations in English.');
INSERT INTO `atoms` VALUES (340, 340, 0, 'And that my be the best way to learn a language of all.');
INSERT INTO `atoms` VALUES (341, 341, 0, 'Have fun =).');
INSERT INTO `atoms` VALUES (342, 342, 0, '');
INSERT INTO `atoms` VALUES (343, 343, 0, '');
INSERT INTO `atoms` VALUES (344, 344, 0, '');
INSERT INTO `atoms` VALUES (345, 345, 0, '');
INSERT INTO `atoms` VALUES (346, 346, 0, '');
INSERT INTO `atoms` VALUES (347, 347, 0, '');
INSERT INTO `atoms` VALUES (348, 348, 0, '');
INSERT INTO `atoms` VALUES (349, 349, 0, 'add language');
INSERT INTO `atoms` VALUES (350, 350, 0, 'before adding your language..');
INSERT INTO `atoms` VALUES (351, 351, 0, 'This is twexter version 0.1a.');
INSERT INTO `atoms` VALUES (352, 352, 0, 'We''re testing it to learn how we can easily add langauges to twext.');
INSERT INTO `atoms` VALUES (353, 353, 0, 'You can try adding your language right now if you:');
INSERT INTO `atoms` VALUES (354, 354, 0, 'are a fluent speaker of your language');
INSERT INTO `atoms` VALUES (355, 355, 0, 'can easily translate it to and from English');
INSERT INTO `atoms` VALUES (356, 356, 0, 'are familiar with the twexter interface');
INSERT INTO `atoms` VALUES (357, 357, 0, 'have 30 minutes to spare');
INSERT INTO `atoms` VALUES (358, 358, 0, '');
INSERT INTO `atoms` VALUES (359, 359, 0, 'OK?');
INSERT INTO `atoms` VALUES (360, 360, 0, 'then get it twext!');
INSERT INTO `atoms` VALUES (361, 361, 0, '');
INSERT INTO `atoms` VALUES (362, 362, 0, 'remember, this is a prototype version of twexter..');
INSERT INTO `atoms` VALUES (363, 363, 0, 'we''ve never tried it before, so we can''t guarantee it will work for all languages right now..');
INSERT INTO `atoms` VALUES (364, 364, 0, 'it takes about 15 minutes to try your language..');
INSERT INTO `atoms` VALUES (365, 365, 0, '');
INSERT INTO `atoms` VALUES (366, 366, 0, '');
INSERT INTO `atoms` VALUES (367, 367, 0, '');
INSERT INTO `atoms` VALUES (368, 368, 0, '');
INSERT INTO `atoms` VALUES (369, 369, 0, 'get your language twext');
INSERT INTO `atoms` VALUES (370, 370, 0, 'First, write the name of your language:');
INSERT INTO `atoms` VALUES (371, 371, 0, 'rembember to replace "English" with the name of the language you add:');
INSERT INTO `atoms` VALUES (372, 372, 0, 'Next, translate your language name to English:');
INSERT INTO `atoms` VALUES (373, 373, 0, 'select the 3 letter ISO code for your langauge:');
INSERT INTO `atoms` VALUES (374, 374, 0, 'ISO code');
INSERT INTO `atoms` VALUES (375, 375, 0, '(or choose the closest match to your dialect)');
INSERT INTO `atoms` VALUES (376, 376, 0, '');
INSERT INTO `atoms` VALUES (377, 377, 0, '');
INSERT INTO `atoms` VALUES (378, 378, 0, '');
INSERT INTO `atoms` VALUES (379, 379, 0, '');
INSERT INTO `atoms` VALUES (380, 380, 0, 'translate twexter v0.1a:');
INSERT INTO `atoms` VALUES (381, 381, 0, 'You are about to add <langname> to twext. Ok? ok!');
INSERT INTO `atoms` VALUES (382, 382, 0, '');
INSERT INTO `atoms` VALUES (383, 383, 0, '');
INSERT INTO `atoms` VALUES (384, 384, 0, '');
INSERT INTO `atoms` VALUES (385, 385, 0, '');
INSERT INTO `atoms` VALUES (386, 386, 0, '');
INSERT INTO `atoms` VALUES (387, 387, 0, '');
INSERT INTO `atoms` VALUES (388, 388, 0, '');
INSERT INTO `atoms` VALUES (389, 389, 0, '');
INSERT INTO `atoms` VALUES (390, 390, 0, 'error: empty fields');
INSERT INTO `atoms` VALUES (391, 391, 0, 'oops! please fill in all the fields');
INSERT INTO `atoms` VALUES (392, 392, 0, 'twexter gets confused by empty fields..');
INSERT INTO `atoms` VALUES (393, 393, 0, 'please go back and fill in all the fields..');
INSERT INTO `atoms` VALUES (394, 394, 0, 'thanks.');
INSERT INTO `atoms` VALUES (395, 395, 0, 'if you have any questions, please ask us at addlang@twext.cc');
INSERT INTO `atoms` VALUES (396, 396, 0, '');
INSERT INTO `atoms` VALUES (397, 397, 0, '');
INSERT INTO `atoms` VALUES (398, 398, 0, '');
INSERT INTO `atoms` VALUES (399, 399, 0, '');
INSERT INTO `atoms` VALUES (400, 400, 0, 'congratulations!');
INSERT INTO `atoms` VALUES (401, 401, 0, 'You have added a language to twext!');
INSERT INTO `atoms` VALUES (402, 402, 0, 'Check out http://beta.twext.cc to verify that your language is here.');
INSERT INTO `atoms` VALUES (403, 403, 0, 'If you have any problems, questions or comments, please let us know at addlang@twext.cc.');
INSERT INTO `atoms` VALUES (404, 404, 0, 'note: this is an experimental test version of twexter..');
INSERT INTO `atoms` VALUES (405, 405, 0, 'if anyone claims that your language is obscene or some kind of joke,');
INSERT INTO `atoms` VALUES (406, 406, 0, 'then we''ll probably remove it from twext until the issue is resolved.');
INSERT INTO `atoms` VALUES (407, 407, 0, '');
INSERT INTO `atoms` VALUES (408, 408, 0, '');
INSERT INTO `atoms` VALUES (409, 409, 0, '');
INSERT INTO `atoms` VALUES (410, 410, 0, '');
INSERT INTO `atoms` VALUES (411, 411, 0, '');
INSERT INTO `atoms` VALUES (412, 412, 0, '');
INSERT INTO `atoms` VALUES (413, 413, 0, '');
INSERT INTO `atoms` VALUES (414, 414, 0, '');
INSERT INTO `atoms` VALUES (415, 415, 0, '');
INSERT INTO `atoms` VALUES (416, 416, 0, '');
INSERT INTO `atoms` VALUES (417, 417, 0, '');
INSERT INTO `atoms` VALUES (418, 418, 0, '');
INSERT INTO `atoms` VALUES (419, 419, 0, '');
INSERT INTO `atoms` VALUES (420, 420, 0, 'sorry, twexter is busy and can''t create your account at this moment');
INSERT INTO `atoms` VALUES (421, 421, 0, 'please try again in a minute');
INSERT INTO `atoms` VALUES (422, 422, 0, '');
INSERT INTO `atoms` VALUES (423, 423, 0, '');
INSERT INTO `atoms` VALUES (424, 424, 0, '');
INSERT INTO `atoms` VALUES (425, 425, 0, '');
INSERT INTO `atoms` VALUES (426, 426, 0, '');
INSERT INTO `atoms` VALUES (427, 427, 0, '');
INSERT INTO `atoms` VALUES (428, 428, 0, '');
INSERT INTO `atoms` VALUES (429, 429, 0, '');
INSERT INTO `atoms` VALUES (430, 430, 0, 'error: empty field');
INSERT INTO `atoms` VALUES (431, 431, 0, 'enter TITLE and TEXT, and try again');
INSERT INTO `atoms` VALUES (432, 432, 0, '');
INSERT INTO `atoms` VALUES (433, 433, 0, '');
INSERT INTO `atoms` VALUES (434, 434, 0, '');
INSERT INTO `atoms` VALUES (435, 435, 0, '');
INSERT INTO `atoms` VALUES (436, 436, 0, '');
INSERT INTO `atoms` VALUES (437, 437, 0, '');
INSERT INTO `atoms` VALUES (438, 438, 0, '');
INSERT INTO `atoms` VALUES (439, 439, 0, '');
INSERT INTO `atoms` VALUES (440, 440, 0, '');
INSERT INTO `atoms` VALUES (441, 441, 0, '');
INSERT INTO `atoms` VALUES (442, 442, 0, '');
INSERT INTO `atoms` VALUES (443, 443, 0, '');
INSERT INTO `atoms` VALUES (444, 444, 0, '');
INSERT INTO `atoms` VALUES (445, 445, 0, '');
INSERT INTO `atoms` VALUES (446, 446, 0, '');
INSERT INTO `atoms` VALUES (447, 447, 0, '');
INSERT INTO `atoms` VALUES (448, 448, 0, '');
INSERT INTO `atoms` VALUES (449, 449, 0, '');
INSERT INTO `atoms` VALUES (450, 450, 0, 'Simple Preferences Editor');
INSERT INTO `atoms` VALUES (451, 451, 0, 'Welcome Plugin');
INSERT INTO `atoms` VALUES (452, 452, 0, 'Mother Language');
INSERT INTO `atoms` VALUES (453, 453, 0, 'Learning Language');
INSERT INTO `atoms` VALUES (454, 454, 0, 'Password change');
INSERT INTO `atoms` VALUES (455, 455, 0, 'New Password');
INSERT INTO `atoms` VALUES (456, 456, 0, 'Confirm Password');
INSERT INTO `atoms` VALUES (457, 457, 0, 'Update');
INSERT INTO `atoms` VALUES (458, 458, 0, 'Erase');
INSERT INTO `atoms` VALUES (459, 459, 0, '');
INSERT INTO `atoms` VALUES (460, 460, 0, '');
INSERT INTO `atoms` VALUES (461, 461, 0, '');
INSERT INTO `atoms` VALUES (462, 462, 0, '');
INSERT INTO `atoms` VALUES (463, 463, 0, '');
INSERT INTO `atoms` VALUES (464, 464, 0, '');
INSERT INTO `atoms` VALUES (465, 465, 0, '');
INSERT INTO `atoms` VALUES (466, 466, 0, '');
INSERT INTO `atoms` VALUES (467, 467, 0, '');
INSERT INTO `atoms` VALUES (468, 468, 0, '');
INSERT INTO `atoms` VALUES (469, 469, 0, '');
INSERT INTO `atoms` VALUES (470, 470, 0, 'Language Addition Plugin');
INSERT INTO `atoms` VALUES (471, 471, 0, 'Language header information (fill in blanks)');
INSERT INTO `atoms` VALUES (472, 472, 0, 'Short name');
INSERT INTO `atoms` VALUES (473, 473, 0, 'Full name');
INSERT INTO `atoms` VALUES (474, 474, 0, 'Description');
INSERT INTO `atoms` VALUES (475, 475, 0, 'Language atomic data (please translate)');
INSERT INTO `atoms` VALUES (476, 476, 0, '');
INSERT INTO `atoms` VALUES (477, 477, 0, '');
INSERT INTO `atoms` VALUES (478, 478, 0, '');
INSERT INTO `atoms` VALUES (479, 479, 0, '');
INSERT INTO `atoms` VALUES (480, 480, 0, '');
INSERT INTO `atoms` VALUES (481, 481, 0, '');
INSERT INTO `atoms` VALUES (482, 482, 0, '');
INSERT INTO `atoms` VALUES (483, 483, 0, '');
INSERT INTO `atoms` VALUES (484, 484, 0, '');
INSERT INTO `atoms` VALUES (485, 485, 0, '');
INSERT INTO `atoms` VALUES (486, 486, 0, '');
INSERT INTO `atoms` VALUES (487, 487, 0, '');
INSERT INTO `atoms` VALUES (488, 488, 0, '');
INSERT INTO `atoms` VALUES (489, 489, 0, '');
INSERT INTO `atoms` VALUES (490, 490, 0, '');
INSERT INTO `atoms` VALUES (491, 491, 0, '');
INSERT INTO `atoms` VALUES (492, 492, 0, '');
INSERT INTO `atoms` VALUES (493, 493, 0, '');
INSERT INTO `atoms` VALUES (494, 494, 0, '');
INSERT INTO `atoms` VALUES (495, 495, 0, '');
INSERT INTO `atoms` VALUES (496, 496, 0, '');
INSERT INTO `atoms` VALUES (497, 497, 0, '');
INSERT INTO `atoms` VALUES (498, 498, 0, '');
INSERT INTO `atoms` VALUES (499, 499, 0, '');
INSERT INTO `atoms` VALUES (500, 0, 1, 'twext');
INSERT INTO `atoms` VALUES (730, 230, 1, 'buscar');
INSERT INTO `atoms` VALUES (729, 229, 1, '');
INSERT INTO `atoms` VALUES (728, 228, 1, '');
INSERT INTO `atoms` VALUES (727, 227, 1, '');
INSERT INTO `atoms` VALUES (726, 226, 1, '');
INSERT INTO `atoms` VALUES (725, 225, 1, 'avisar');
INSERT INTO `atoms` VALUES (724, 224, 1, 'avisar a twexter');
INSERT INTO `atoms` VALUES (723, 223, 1, 'para editar el texto de otro usuario');
INSERT INTO `atoms` VALUES (722, 222, 1, 'otro usuario ha creado este texto.');
INSERT INTO `atoms` VALUES (721, 221, 1, 'no es posible editar este texto a');
INSERT INTO `atoms` VALUES (720, 220, 1, 'editar error');
INSERT INTO `atoms` VALUES (719, 219, 1, '');
INSERT INTO `atoms` VALUES (718, 218, 1, '');
INSERT INTO `atoms` VALUES (717, 217, 1, '');
INSERT INTO `atoms` VALUES (716, 216, 1, '');
INSERT INTO `atoms` VALUES (715, 215, 1, '');
INSERT INTO `atoms` VALUES (714, 214, 1, '');
INSERT INTO `atoms` VALUES (713, 213, 1, 'seleccionar "INTENTAR" para la vista preeliminar, "POSTEAR" para publicar');
INSERT INTO `atoms` VALUES (712, 212, 1, 'asegurarse que el lenguaje de traducci');
INSERT INTO `atoms` VALUES (711, 211, 1, 'seleccionar "REVISAR" para buscar errores, seleccionar "EDITAR" para corregirlos');
INSERT INTO `atoms` VALUES (710, 210, 1, 'editar trozo');
INSERT INTO `atoms` VALUES (709, 209, 1, '');
INSERT INTO `atoms` VALUES (708, 208, 1, '');
INSERT INTO `atoms` VALUES (707, 207, 1, '');
INSERT INTO `atoms` VALUES (706, 206, 1, '');
INSERT INTO `atoms` VALUES (705, 205, 1, 'seleccionar "POST" para publicar este texto twext.');
INSERT INTO `atoms` VALUES (704, 204, 1, 'seleccionar "INTENTAR" para la vista preeliminar');
INSERT INTO `atoms` VALUES (703, 203, 1, 'traducir cada trozo para la traducci');
INSERT INTO `atoms` VALUES (702, 202, 1, 'escoger el lenguaje para la traducci');
INSERT INTO `atoms` VALUES (701, 201, 1, 'el TEXTO fuente, est');
INSERT INTO `atoms` VALUES (700, 200, 1, 'trozo');
INSERT INTO `atoms` VALUES (699, 199, 1, '');
INSERT INTO `atoms` VALUES (698, 198, 1, '');
INSERT INTO `atoms` VALUES (697, 197, 1, '');
INSERT INTO `atoms` VALUES (696, 196, 1, '');
INSERT INTO `atoms` VALUES (695, 195, 1, 'seleccionar "INTENTAR" para la vista preeliminar, "POSTEAR" para publicar');
INSERT INTO `atoms` VALUES (694, 194, 1, 'asegurarse que el lenguaje de traducci');
INSERT INTO `atoms` VALUES (693, 193, 1, 'recuerda, cualquier cambio que se realizen al texto original no ser');
INSERT INTO `atoms` VALUES (692, 192, 1, 'selecciona "REVISAR" para buscar errores, selecciona "EDITAR" para arreglarlos.');
INSERT INTO `atoms` VALUES (691, 191, 1, '');
INSERT INTO `atoms` VALUES (690, 190, 1, 'editar la traducci');
INSERT INTO `atoms` VALUES (689, 189, 1, '');
INSERT INTO `atoms` VALUES (688, 188, 1, '');
INSERT INTO `atoms` VALUES (687, 187, 1, '');
INSERT INTO `atoms` VALUES (686, 186, 1, 'seleccionar "POSTEAR" para publicar la traducci');
INSERT INTO `atoms` VALUES (685, 185, 1, 'seleccionar "INTENTAR" para una vista preeliminar de tu traducci');
INSERT INTO `atoms` VALUES (684, 184, 1, 'traducir el texto al lenguaje seleccionado');
INSERT INTO `atoms` VALUES (683, 183, 1, 'seleccionar el lenguaje para tu traducci');
INSERT INTO `atoms` VALUES (682, 182, 1, 'traducir el t');
INSERT INTO `atoms` VALUES (681, 181, 1, '');
INSERT INTO `atoms` VALUES (680, 180, 1, '(para editar el texto fuente, ir a la p');
INSERT INTO `atoms` VALUES (679, 179, 1, 'no puedes editar el texto fuente desde esta p');
INSERT INTO `atoms` VALUES (678, 178, 1, 'A.');
INSERT INTO `atoms` VALUES (677, 177, 1, 'selecciona "INTENTAR" para hacer una vista preeliminar a esta p');
INSERT INTO `atoms` VALUES (676, 176, 1, 'asegurarse que el lenguaje de texto sea correctamente identificado.');
INSERT INTO `atoms` VALUES (675, 175, 1, 'selecciona "REVISAR" para buscar errores, selecciona "EDITAR" para arreglarlos');
INSERT INTO `atoms` VALUES (674, 174, 1, '');
INSERT INTO `atoms` VALUES (673, 173, 1, 'POSTEAR');
INSERT INTO `atoms` VALUES (672, 172, 1, 'INTENTAR');
INSERT INTO `atoms` VALUES (671, 171, 1, '');
INSERT INTO `atoms` VALUES (670, 170, 1, 'EDITAR');
INSERT INTO `atoms` VALUES (669, 169, 1, 'REVISAR');
INSERT INTO `atoms` VALUES (668, 168, 1, '');
INSERT INTO `atoms` VALUES (667, 167, 1, '');
INSERT INTO `atoms` VALUES (666, 166, 1, '');
INSERT INTO `atoms` VALUES (665, 165, 1, '');
INSERT INTO `atoms` VALUES (664, 164, 1, '');
INSERT INTO `atoms` VALUES (663, 163, 1, '');
INSERT INTO `atoms` VALUES (662, 162, 1, '');
INSERT INTO `atoms` VALUES (661, 161, 1, '');
INSERT INTO `atoms` VALUES (660, 160, 1, 'POSTEAR: publicarlo');
INSERT INTO `atoms` VALUES (659, 159, 1, 'INTENTAR: vista preeliminar');
INSERT INTO `atoms` VALUES (658, 158, 1, 'LENGUAGE: identifica el lenguaje de este texto');
INSERT INTO `atoms` VALUES (657, 157, 1, 'TEXTO: escribe el texto');
INSERT INTO `atoms` VALUES (656, 156, 1, 'TITULO: escribe el t');
INSERT INTO `atoms` VALUES (655, 155, 1, 'prepara un texto para twext');
INSERT INTO `atoms` VALUES (654, 154, 1, 'LENGUAGE:');
INSERT INTO `atoms` VALUES (653, 153, 1, 'texto');
INSERT INTO `atoms` VALUES (652, 152, 1, 'TITULO:');
INSERT INTO `atoms` VALUES (651, 151, 1, 'agregar un texto');
INSERT INTO `atoms` VALUES (650, 150, 1, 'TEXTO:');
INSERT INTO `atoms` VALUES (649, 149, 1, '');
INSERT INTO `atoms` VALUES (648, 148, 1, '');
INSERT INTO `atoms` VALUES (647, 147, 1, '');
INSERT INTO `atoms` VALUES (646, 146, 1, 'por ejemplo, puedes cambiar tu clave por una mas sencilla de recordar');
INSERT INTO `atoms` VALUES (645, 145, 1, 'twexter aprende a que puedas personalizar por medio de preferencias');
INSERT INTO `atoms` VALUES (644, 144, 1, 'twexter es un sistema que nos ayuda a trozar y traducir textos twext');
INSERT INTO `atoms` VALUES (643, 143, 1, '');
INSERT INTO `atoms` VALUES (642, 142, 1, 'confirmar');
INSERT INTO `atoms` VALUES (641, 141, 1, 'clave');
INSERT INTO `atoms` VALUES (640, 140, 1, '');
INSERT INTO `atoms` VALUES (639, 139, 1, 'si twexter no te puede encontrar por correo, tendr');
INSERT INTO `atoms` VALUES (638, 138, 1, 'porfavor mant');
INSERT INTO `atoms` VALUES (637, 137, 1, '+ agrega lenguaje');
INSERT INTO `atoms` VALUES (636, 136, 1, 'revisa todos los lenguajes que puedas leer o desees aprender');
INSERT INTO `atoms` VALUES (635, 135, 1, 'selecciona una version de twexter que desees usar');
INSERT INTO `atoms` VALUES (634, 134, 1, 'MUESTRAS');
INSERT INTO `atoms` VALUES (633, 133, 1, 'TRADUCTOR');
INSERT INTO `atoms` VALUES (632, 132, 1, 'TROZADOR');
INSERT INTO `atoms` VALUES (631, 131, 1, 'PARES');
INSERT INTO `atoms` VALUES (630, 130, 1, 'MIS preferencias TwEXTER');
INSERT INTO `atoms` VALUES (629, 129, 1, 'preferencias');
INSERT INTO `atoms` VALUES (628, 128, 1, '+ agregar un lenguaje a twext');
INSERT INTO `atoms` VALUES (627, 127, 1, '');
INSERT INTO `atoms` VALUES (626, 126, 1, 'traducir a este lenguaje para ayudarnos a aprender');
INSERT INTO `atoms` VALUES (625, 125, 1, 'traductores:');
INSERT INTO `atoms` VALUES (624, 124, 1, 'lo pueden usar para leer otro lenguaje');
INSERT INTO `atoms` VALUES (623, 123, 1, 'estudiantes:');
INSERT INTO `atoms` VALUES (622, 122, 1, '');
INSERT INTO `atoms` VALUES (621, 121, 1, 'selecciona un lenguaje que puedas leer y escribir');
INSERT INTO `atoms` VALUES (620, 120, 1, 'lenguaje twext');
INSERT INTO `atoms` VALUES (619, 119, 1, '');
INSERT INTO `atoms` VALUES (618, 118, 1, 'o twexter eliminar');
INSERT INTO `atoms` VALUES (617, 117, 1, 'porfavor entra lo mas pronto posible,');
INSERT INTO `atoms` VALUES (616, 116, 1, '');
INSERT INTO `atoms` VALUES (615, 115, 1, '');
INSERT INTO `atoms` VALUES (614, 114, 1, '');
INSERT INTO `atoms` VALUES (613, 113, 1, 'lee tu correo y luego entra a twext');
INSERT INTO `atoms` VALUES (612, 112, 1, 'y ha enviado tu clave a:');
INSERT INTO `atoms` VALUES (611, 111, 1, 'twexter a creado una cuenta para t');
INSERT INTO `atoms` VALUES (610, 110, 1, 'bienvenido a twext');
INSERT INTO `atoms` VALUES (609, 109, 1, '');
INSERT INTO `atoms` VALUES (608, 108, 1, '');
INSERT INTO `atoms` VALUES (607, 107, 1, '');
INSERT INTO `atoms` VALUES (606, 106, 1, '');
INSERT INTO `atoms` VALUES (605, 105, 1, '');
INSERT INTO `atoms` VALUES (604, 104, 1, '');
INSERT INTO `atoms` VALUES (603, 103, 1, 'prueba otro');
INSERT INTO `atoms` VALUES (602, 102, 1, 'ya est');
INSERT INTO `atoms` VALUES (601, 101, 1, 'nombre ya tomado');
INSERT INTO `atoms` VALUES (600, 100, 1, 'agregar usuario');
INSERT INTO `atoms` VALUES (599, 99, 1, '');
INSERT INTO `atoms` VALUES (598, 98, 1, '');
INSERT INTO `atoms` VALUES (597, 97, 1, '');
INSERT INTO `atoms` VALUES (596, 96, 1, '');
INSERT INTO `atoms` VALUES (595, 95, 1, '');
INSERT INTO `atoms` VALUES (594, 94, 1, 'bien, ya entiendo');
INSERT INTO `atoms` VALUES (593, 93, 1, 'es posible que te quedes con tu nombre de usuario, pero no se garantiza!');
INSERT INTO `atoms` VALUES (592, 92, 1, 'esta es una CUENTA TEMPORAL para ayudarnos a probar twexter');
INSERT INTO `atoms` VALUES (591, 91, 1, 'prueba beta');
INSERT INTO `atoms` VALUES (590, 90, 1, 'no est');
INSERT INTO `atoms` VALUES (589, 89, 1, 'o');
INSERT INTO `atoms` VALUES (588, 88, 1, 'selecciona el lenguaje que leas mejor');
INSERT INTO `atoms` VALUES (587, 87, 1, '');
INSERT INTO `atoms` VALUES (586, 86, 1, 'correo');
INSERT INTO `atoms` VALUES (585, 85, 1, 'nombre de usuario');
INSERT INTO `atoms` VALUES (584, 84, 1, '(l');
INSERT INTO `atoms` VALUES (583, 83, 1, 'crea un nombre para tu cuenta.');
INSERT INTO `atoms` VALUES (582, 82, 1, 'bien, esto es lo que necesitamos:');
INSERT INTO `atoms` VALUES (581, 81, 1, 'crear cuenta de twext');
INSERT INTO `atoms` VALUES (580, 80, 1, 'agregar usuario');
INSERT INTO `atoms` VALUES (579, 79, 1, '');
INSERT INTO `atoms` VALUES (578, 78, 1, '');
INSERT INTO `atoms` VALUES (577, 77, 1, '');
INSERT INTO `atoms` VALUES (576, 76, 1, '');
INSERT INTO `atoms` VALUES (575, 75, 1, '');
INSERT INTO `atoms` VALUES (574, 74, 1, 't');
INSERT INTO `atoms` VALUES (573, 73, 1, '');
INSERT INTO `atoms` VALUES (572, 72, 1, 'estamos de acuerdo a los dichos t');
INSERT INTO `atoms` VALUES (571, 71, 1, 'acuerdo');
INSERT INTO `atoms` VALUES (570, 70, 1, 'de acuerdo');
INSERT INTO `atoms` VALUES (569, 69, 1, '');
INSERT INTO `atoms` VALUES (568, 68, 1, '');
INSERT INTO `atoms` VALUES (567, 67, 1, '');
INSERT INTO `atoms` VALUES (566, 66, 1, '');
INSERT INTO `atoms` VALUES (565, 65, 1, '');
INSERT INTO `atoms` VALUES (564, 64, 1, '');
INSERT INTO `atoms` VALUES (563, 63, 1, '');
INSERT INTO `atoms` VALUES (562, 62, 1, 'noticias');
INSERT INTO `atoms` VALUES (561, 61, 1, 'c');
INSERT INTO `atoms` VALUES (560, 60, 1, 'ayuda');
INSERT INTO `atoms` VALUES (559, 59, 1, 'preguntas hechas frecuentemente');
INSERT INTO `atoms` VALUES (558, 58, 1, 'phf');
INSERT INTO `atoms` VALUES (557, 57, 1, 'buscar');
INSERT INTO `atoms` VALUES (556, 56, 1, 'editar');
INSERT INTO `atoms` VALUES (555, 55, 1, 'trozo');
INSERT INTO `atoms` VALUES (554, 54, 1, 'traducir');
INSERT INTO `atoms` VALUES (553, 53, 1, 'agregar texto');
INSERT INTO `atoms` VALUES (552, 52, 1, 'mi twexter');
INSERT INTO `atoms` VALUES (551, 51, 1, 'miembro');
INSERT INTO `atoms` VALUES (550, 50, 1, 'esqueleto');
INSERT INTO `atoms` VALUES (549, 49, 1, 'men');
INSERT INTO `atoms` VALUES (548, 48, 1, 'espina');
INSERT INTO `atoms` VALUES (547, 47, 1, '');
INSERT INTO `atoms` VALUES (546, 46, 1, 'o');
INSERT INTO `atoms` VALUES (545, 45, 1, 'O');
INSERT INTO `atoms` VALUES (544, 44, 1, 'texto');
INSERT INTO `atoms` VALUES (543, 43, 1, 't');
INSERT INTO `atoms` VALUES (542, 42, 1, 'bien');
INSERT INTO `atoms` VALUES (541, 41, 1, 'postear');
INSERT INTO `atoms` VALUES (540, 40, 1, 'intentar');
INSERT INTO `atoms` VALUES (539, 39, 1, '');
INSERT INTO `atoms` VALUES (538, 38, 1, 'IR A PREVIO');
INSERT INTO `atoms` VALUES (537, 37, 1, 'confirmar');
INSERT INTO `atoms` VALUES (536, 36, 1, 'clave');
INSERT INTO `atoms` VALUES (535, 35, 1, 'preferencias');
INSERT INTO `atoms` VALUES (534, 34, 1, '');
INSERT INTO `atoms` VALUES (533, 33, 1, '');
INSERT INTO `atoms` VALUES (532, 32, 1, 'nombre de usuario');
INSERT INTO `atoms` VALUES (531, 31, 1, 'nombre');
INSERT INTO `atoms` VALUES (530, 30, 1, 'usuario');
INSERT INTO `atoms` VALUES (529, 29, 1, '');
INSERT INTO `atoms` VALUES (528, 28, 1, 'no est');
INSERT INTO `atoms` VALUES (527, 27, 1, '');
INSERT INTO `atoms` VALUES (526, 26, 1, 'bien');
INSERT INTO `atoms` VALUES (525, 25, 1, 'TEXTO');
INSERT INTO `atoms` VALUES (524, 24, 1, '+agregar');
INSERT INTO `atoms` VALUES (523, 23, 1, 'cielos!');
INSERT INTO `atoms` VALUES (522, 22, 1, 'lo siento');
INSERT INTO `atoms` VALUES (521, 21, 1, 'error');
INSERT INTO `atoms` VALUES (520, 20, 1, 'gracias');
INSERT INTO `atoms` VALUES (519, 19, 1, 'por favor');
INSERT INTO `atoms` VALUES (518, 18, 1, 'tal vez');
INSERT INTO `atoms` VALUES (517, 17, 1, 'no');
INSERT INTO `atoms` VALUES (516, 16, 1, 'si');
INSERT INTO `atoms` VALUES (515, 15, 1, 'salir');
INSERT INTO `atoms` VALUES (514, 14, 1, 'entrar');
INSERT INTO `atoms` VALUES (513, 13, 1, 'adi');
INSERT INTO `atoms` VALUES (512, 12, 1, 'bienvenido');
INSERT INTO `atoms` VALUES (511, 11, 1, 'versi');
INSERT INTO `atoms` VALUES (510, 10, 1, 'twexter');
INSERT INTO `atoms` VALUES (509, 9, 1, 'BIEN');
INSERT INTO `atoms` VALUES (508, 8, 1, 'si, comprendo');
INSERT INTO `atoms` VALUES (507, 7, 1, '?');
INSERT INTO `atoms` VALUES (506, 6, 1, 'traducir');
INSERT INTO `atoms` VALUES (505, 5, 1, 'traductor');
INSERT INTO `atoms` VALUES (504, 4, 1, 'lenguaje');
INSERT INTO `atoms` VALUES (503, 3, 1, '');
INSERT INTO `atoms` VALUES (502, 2, 1, 'alfabetismo');
INSERT INTO `atoms` VALUES (501, 1, 1, 'lenguajes');
INSERT INTO `atoms` VALUES (731, 231, 1, 'seleccionar el lenguaje a buscar:');
INSERT INTO `atoms` VALUES (732, 232, 1, 'seleccionar "TEXT" para buscar textos regulares y traducciones.');
INSERT INTO `atoms` VALUES (733, 233, 1, 'seleccionar "twext" para traducciones twext');
INSERT INTO `atoms` VALUES (734, 234, 1, 'para cambiar el lenguaje, hacer click sobre');
INSERT INTO `atoms` VALUES (735, 235, 1, '');
INSERT INTO `atoms` VALUES (736, 236, 1, '');
INSERT INTO `atoms` VALUES (737, 237, 1, '');
INSERT INTO `atoms` VALUES (738, 238, 1, '');
INSERT INTO `atoms` VALUES (739, 239, 1, '');
INSERT INTO `atoms` VALUES (740, 240, 1, 'phf de twext');
INSERT INTO `atoms` VALUES (741, 241, 1, 'preguntas hechas frecuentemente');
INSERT INTO `atoms` VALUES (742, 242, 1, 'por favor mandar preguntas a');
INSERT INTO `atoms` VALUES (743, 243, 1, 'faq@twext.cc');
INSERT INTO `atoms` VALUES (744, 244, 1, '');
INSERT INTO `atoms` VALUES (745, 245, 1, '');
INSERT INTO `atoms` VALUES (746, 246, 1, '');
INSERT INTO `atoms` VALUES (747, 247, 1, '');
INSERT INTO `atoms` VALUES (748, 248, 1, '');
INSERT INTO `atoms` VALUES (749, 249, 1, 'ayuda');
INSERT INTO `atoms` VALUES (750, 250, 1, 'ayuda aprender twexter');
INSERT INTO `atoms` VALUES (751, 251, 1, 'la ayuda de twexter est');
INSERT INTO `atoms` VALUES (752, 252, 1, 'nos puedes ayudar a construirle.');
INSERT INTO `atoms` VALUES (753, 253, 1, 'mandar preguntas a');
INSERT INTO `atoms` VALUES (754, 254, 1, 'ayuda@twext.cc');
INSERT INTO `atoms` VALUES (755, 255, 1, '');
INSERT INTO `atoms` VALUES (756, 256, 1, '');
INSERT INTO `atoms` VALUES (757, 257, 1, '');
INSERT INTO `atoms` VALUES (758, 258, 1, '');
INSERT INTO `atoms` VALUES (759, 259, 1, 'c');
INSERT INTO `atoms` VALUES (760, 260, 1, 'c');
INSERT INTO `atoms` VALUES (761, 261, 1, 'aqu');
INSERT INTO `atoms` VALUES (762, 262, 1, 'men');
INSERT INTO `atoms` VALUES (763, 263, 1, '');
INSERT INTO `atoms` VALUES (764, 264, 1, '');
INSERT INTO `atoms` VALUES (765, 265, 1, '');
INSERT INTO `atoms` VALUES (766, 266, 1, '');
INSERT INTO `atoms` VALUES (767, 267, 1, '');
INSERT INTO `atoms` VALUES (768, 268, 1, '');
INSERT INTO `atoms` VALUES (769, 269, 1, '');
INSERT INTO `atoms` VALUES (770, 270, 1, '');
INSERT INTO `atoms` VALUES (771, 271, 1, '');
INSERT INTO `atoms` VALUES (772, 272, 1, '');
INSERT INTO `atoms` VALUES (773, 273, 1, '');
INSERT INTO `atoms` VALUES (774, 274, 1, '');
INSERT INTO `atoms` VALUES (775, 275, 1, '');
INSERT INTO `atoms` VALUES (776, 276, 1, '');
INSERT INTO `atoms` VALUES (777, 277, 1, '');
INSERT INTO `atoms` VALUES (778, 278, 1, '');
INSERT INTO `atoms` VALUES (779, 279, 1, '');
INSERT INTO `atoms` VALUES (780, 280, 1, '');
INSERT INTO `atoms` VALUES (781, 281, 1, '');
INSERT INTO `atoms` VALUES (782, 282, 1, '');
INSERT INTO `atoms` VALUES (783, 283, 1, '');
INSERT INTO `atoms` VALUES (784, 284, 1, '');
INSERT INTO `atoms` VALUES (785, 285, 1, '');
INSERT INTO `atoms` VALUES (786, 286, 1, '');
INSERT INTO `atoms` VALUES (787, 287, 1, '');
INSERT INTO `atoms` VALUES (788, 288, 1, '');
INSERT INTO `atoms` VALUES (789, 289, 1, '');
INSERT INTO `atoms` VALUES (790, 290, 1, '');
INSERT INTO `atoms` VALUES (791, 291, 1, '');
INSERT INTO `atoms` VALUES (792, 292, 1, '');
INSERT INTO `atoms` VALUES (793, 293, 1, '');
INSERT INTO `atoms` VALUES (794, 294, 1, '');
INSERT INTO `atoms` VALUES (795, 295, 1, '');
INSERT INTO `atoms` VALUES (796, 296, 1, '');
INSERT INTO `atoms` VALUES (797, 297, 1, '');
INSERT INTO `atoms` VALUES (798, 298, 1, '');
INSERT INTO `atoms` VALUES (799, 299, 1, '');
INSERT INTO `atoms` VALUES (800, 300, 1, 'le entiendes?');
INSERT INTO `atoms` VALUES (801, 301, 1, 'cuando seleccionas "bien, lo entiendo",');
INSERT INTO `atoms` VALUES (802, 302, 1, 'twexter elimina el mensaje amarillo de ayuda de la p');
INSERT INTO `atoms` VALUES (803, 303, 1, 'para mantenerlo, ir para atr');
INSERT INTO `atoms` VALUES (804, 304, 1, 'de alguna otra forma, seleccionar cualquier liga para continuar aprendiendo con twexter.');
INSERT INTO `atoms` VALUES (805, 305, 1, 'favor de no mostrar este mensaje');
INSERT INTO `atoms` VALUES (806, 306, 1, '');
INSERT INTO `atoms` VALUES (807, 307, 1, '');
INSERT INTO `atoms` VALUES (808, 308, 1, '');
INSERT INTO `atoms` VALUES (809, 309, 1, '');
INSERT INTO `atoms` VALUES (810, 310, 1, 'aprender a leer, mientras usamos twexter');
INSERT INTO `atoms` VALUES (811, 311, 1, 'al saber leer un lenguaje, se puede usar TwEXT para aprender a leer otro.');
INSERT INTO `atoms` VALUES (812, 312, 1, 'primero, seleccionar un lenguaje que sepa leer:');
INSERT INTO `atoms` VALUES (813, 313, 1, '');
INSERT INTO `atoms` VALUES (814, 314, 1, 'unetenos');
INSERT INTO `atoms` VALUES (815, 315, 1, 'patrocina twext');
INSERT INTO `atoms` VALUES (816, 316, 1, '');
INSERT INTO `atoms` VALUES (817, 317, 1, '');
INSERT INTO `atoms` VALUES (818, 318, 1, 'NOTA: en los siguientes enunciados, remplazar "Espa');
INSERT INTO `atoms` VALUES (819, 319, 1, '');
INSERT INTO `atoms` VALUES (820, 320, 1, 'yo puedo leer Espa');
INSERT INTO `atoms` VALUES (821, 321, 1, '');
INSERT INTO `atoms` VALUES (822, 322, 1, 'usalo para aprender a leer otro lenguaje.');
INSERT INTO `atoms` VALUES (823, 323, 1, 'traductores: agregar un lenguaje a Espa');
INSERT INTO `atoms` VALUES (824, 324, 1, '');
INSERT INTO `atoms` VALUES (825, 325, 1, '');
INSERT INTO `atoms` VALUES (826, 326, 1, '');
INSERT INTO `atoms` VALUES (827, 327, 1, '');
INSERT INTO `atoms` VALUES (828, 328, 1, '');
INSERT INTO `atoms` VALUES (829, 329, 1, '');
INSERT INTO `atoms` VALUES (830, 330, 1, 'aprendemos a leer ESPA');
INSERT INTO `atoms` VALUES (831, 331, 1, 'Espa');
INSERT INTO `atoms` VALUES (832, 332, 1, 'puede ser confuso el oir tales frases en una conversaci');
INSERT INTO `atoms` VALUES (833, 333, 1, 'Leer en Espa');
INSERT INTO `atoms` VALUES (834, 334, 1, 'y puede darnos un contexto amplio para aprender como y cuando son usadas.');
INSERT INTO `atoms` VALUES (835, 335, 1, 'esto nos puede ayudar a entender y comunicarnos en Espa');
INSERT INTO `atoms` VALUES (836, 336, 1, '');
INSERT INTO `atoms` VALUES (837, 337, 1, 'De tal forma que TwEXT nos ayuda a leer en Espa');
INSERT INTO `atoms` VALUES (838, 338, 1, 'tambi');
INSERT INTO `atoms` VALUES (839, 339, 1, 'para tener conversaciones mas divertidas en Espa');
INSERT INTO `atoms` VALUES (840, 340, 1, 'y tal vez sea la mejor forma de aprender un lenguaje.');
INSERT INTO `atoms` VALUES (841, 341, 1, 'A divertirse!');
INSERT INTO `atoms` VALUES (842, 342, 1, '');
INSERT INTO `atoms` VALUES (843, 343, 1, '');
INSERT INTO `atoms` VALUES (844, 344, 1, '');
INSERT INTO `atoms` VALUES (845, 345, 1, '');
INSERT INTO `atoms` VALUES (846, 346, 1, '');
INSERT INTO `atoms` VALUES (847, 347, 1, '');
INSERT INTO `atoms` VALUES (848, 348, 1, '');
INSERT INTO `atoms` VALUES (849, 349, 1, 'agregar un lenguaje');
INSERT INTO `atoms` VALUES (850, 350, 1, 'antes de agregar un lenguaje...');
INSERT INTO `atoms` VALUES (851, 351, 1, 'Este es twexter version 0.1a');
INSERT INTO `atoms` VALUES (852, 352, 1, 'Estamos probandole para ver que cuan f');
INSERT INTO `atoms` VALUES (853, 353, 1, 'Puedes probar agregando un lenguaje ahorita mismo si:');
INSERT INTO `atoms` VALUES (854, 354, 1, 'parlas un lenguaje de forma fluida');
INSERT INTO `atoms` VALUES (855, 355, 1, 'puedes traducir de a Espa');
INSERT INTO `atoms` VALUES (856, 356, 1, 'te es familiar el interface de twexter');
INSERT INTO `atoms` VALUES (857, 357, 1, 'tienes 30 minutos libres');
INSERT INTO `atoms` VALUES (858, 358, 1, '');
INSERT INTO `atoms` VALUES (859, 359, 1, 'BIEN?');
INSERT INTO `atoms` VALUES (860, 360, 1, 'entonces hazle twext!');
INSERT INTO `atoms` VALUES (861, 361, 1, '');
INSERT INTO `atoms` VALUES (862, 362, 1, 'recuerda, esta es una version prototipo de twext...');
INSERT INTO `atoms` VALUES (863, 363, 1, 'no lo hemos puesto en producci');
INSERT INTO `atoms` VALUES (864, 364, 1, 'toma cerca de 15 minutos probar tu lenguaje...');
INSERT INTO `atoms` VALUES (865, 365, 1, '');
INSERT INTO `atoms` VALUES (866, 366, 1, '');
INSERT INTO `atoms` VALUES (867, 367, 1, '');
INSERT INTO `atoms` VALUES (868, 368, 1, '');
INSERT INTO `atoms` VALUES (869, 369, 1, 'haz tu lenguaje a twext');
INSERT INTO `atoms` VALUES (870, 370, 1, 'primero, escribe el nombre de tu lenguaje:');
INSERT INTO `atoms` VALUES (871, 371, 1, 'recuerda reemplazar "Espa');
INSERT INTO `atoms` VALUES (872, 372, 1, 'siguiente, traduce el nombre de tu lenguaje a Ingl');
INSERT INTO `atoms` VALUES (873, 373, 1, 'selecciona las siglas ISO de c');
INSERT INTO `atoms` VALUES (874, 374, 1, 'c');
INSERT INTO `atoms` VALUES (875, 375, 1, '(escoger el que mas hacerque a tu lenguaje o dialecto)');
INSERT INTO `atoms` VALUES (876, 376, 1, '');
INSERT INTO `atoms` VALUES (877, 377, 1, '');
INSERT INTO `atoms` VALUES (878, 378, 1, '');
INSERT INTO `atoms` VALUES (879, 379, 1, '');
INSERT INTO `atoms` VALUES (880, 380, 1, 'traducir twexter v0.1a:');
INSERT INTO `atoms` VALUES (881, 381, 1, 'Estas a punto de agregar a twext. Bien? Bien!');
INSERT INTO `atoms` VALUES (882, 382, 1, '');
INSERT INTO `atoms` VALUES (883, 383, 1, '');
INSERT INTO `atoms` VALUES (884, 384, 1, '');
INSERT INTO `atoms` VALUES (885, 385, 1, '');
INSERT INTO `atoms` VALUES (886, 386, 1, '');
INSERT INTO `atoms` VALUES (887, 387, 1, '');
INSERT INTO `atoms` VALUES (888, 388, 1, '');
INSERT INTO `atoms` VALUES (889, 389, 1, '');
INSERT INTO `atoms` VALUES (890, 390, 1, 'error: campos vac');
INSERT INTO `atoms` VALUES (891, 391, 1, 'cielos! favor de llenar todos los campos');
INSERT INTO `atoms` VALUES (892, 392, 1, 'twexter se confunde con los campos vac');
INSERT INTO `atoms` VALUES (893, 393, 1, 'favor de llenar todos los campos vac');
INSERT INTO `atoms` VALUES (894, 394, 1, 'gracias.');
INSERT INTO `atoms` VALUES (895, 395, 1, 'cualquier pregunta, favor de enviarla a addlang@twext.cc');
INSERT INTO `atoms` VALUES (896, 396, 1, '');
INSERT INTO `atoms` VALUES (897, 397, 1, '');
INSERT INTO `atoms` VALUES (898, 398, 1, '');
INSERT INTO `atoms` VALUES (899, 399, 1, '');
INSERT INTO `atoms` VALUES (900, 400, 1, 'felicidades!');
INSERT INTO `atoms` VALUES (901, 401, 1, 'haz agregado un lenguaje a twext!');
INSERT INTO `atoms` VALUES (902, 402, 1, 'Revias el sitio web para verificar que el lenguaje est');
INSERT INTO `atoms` VALUES (903, 403, 1, 'cualquier problema, dudas o comentarios, mandarlos a addlang@twext.cc');
INSERT INTO `atoms` VALUES (904, 404, 1, 'nota: esta es una versi');
INSERT INTO `atoms` VALUES (905, 405, 1, 'si alguien proclama que tu lenguaje es obseno o una broma,');
INSERT INTO `atoms` VALUES (906, 406, 1, 'entonces se hara una verificaci');
INSERT INTO `atoms` VALUES (907, 407, 1, '');
INSERT INTO `atoms` VALUES (908, 408, 1, '');
INSERT INTO `atoms` VALUES (909, 409, 1, '');
INSERT INTO `atoms` VALUES (910, 410, 1, '');
INSERT INTO `atoms` VALUES (911, 411, 1, '');
INSERT INTO `atoms` VALUES (912, 412, 1, '');
INSERT INTO `atoms` VALUES (913, 413, 1, '');
INSERT INTO `atoms` VALUES (914, 414, 1, '');
INSERT INTO `atoms` VALUES (915, 415, 1, '');
INSERT INTO `atoms` VALUES (916, 416, 1, '');
INSERT INTO `atoms` VALUES (917, 417, 1, '');
INSERT INTO `atoms` VALUES (918, 418, 1, '');
INSERT INTO `atoms` VALUES (919, 419, 1, '');
INSERT INTO `atoms` VALUES (920, 420, 1, 'disculpas, twexter est');
INSERT INTO `atoms` VALUES (921, 421, 1, 'favor de reintentar en un minuto');
INSERT INTO `atoms` VALUES (922, 422, 1, '');
INSERT INTO `atoms` VALUES (923, 423, 1, '');
INSERT INTO `atoms` VALUES (924, 424, 1, '');
INSERT INTO `atoms` VALUES (925, 425, 1, '');
INSERT INTO `atoms` VALUES (926, 426, 1, '');
INSERT INTO `atoms` VALUES (927, 427, 1, '');
INSERT INTO `atoms` VALUES (928, 428, 1, '');
INSERT INTO `atoms` VALUES (929, 429, 1, '');
INSERT INTO `atoms` VALUES (930, 430, 1, 'error: campo vacio');
INSERT INTO `atoms` VALUES (931, 431, 1, 'teclea TITULO y TEXTO, volver a intentar');
INSERT INTO `atoms` VALUES (932, 432, 1, '');
INSERT INTO `atoms` VALUES (933, 433, 1, '');
INSERT INTO `atoms` VALUES (934, 434, 1, '');
INSERT INTO `atoms` VALUES (935, 435, 1, '');
INSERT INTO `atoms` VALUES (936, 436, 1, '');
INSERT INTO `atoms` VALUES (937, 437, 1, '');
INSERT INTO `atoms` VALUES (938, 438, 1, '');
INSERT INTO `atoms` VALUES (939, 439, 1, '');
INSERT INTO `atoms` VALUES (940, 440, 1, '');
INSERT INTO `atoms` VALUES (941, 441, 1, '');
INSERT INTO `atoms` VALUES (942, 442, 1, '');
INSERT INTO `atoms` VALUES (943, 443, 1, '');
INSERT INTO `atoms` VALUES (944, 444, 1, '');
INSERT INTO `atoms` VALUES (945, 445, 1, '');
INSERT INTO `atoms` VALUES (946, 446, 1, '');
INSERT INTO `atoms` VALUES (947, 447, 1, '');
INSERT INTO `atoms` VALUES (948, 448, 1, '');
INSERT INTO `atoms` VALUES (949, 449, 1, '');
INSERT INTO `atoms` VALUES (950, 450, 1, 'Editor de Preferencias Sencillo');
INSERT INTO `atoms` VALUES (951, 451, 1, 'Plugin de Bienvenida');
INSERT INTO `atoms` VALUES (952, 452, 1, 'Lengua Materna');
INSERT INTO `atoms` VALUES (953, 453, 1, 'Lengua de Aprendizaje');
INSERT INTO `atoms` VALUES (954, 454, 1, 'Cambio de Clave');
INSERT INTO `atoms` VALUES (955, 455, 1, 'Clave Nueva');
INSERT INTO `atoms` VALUES (956, 456, 1, 'Confirmaci&oacute;n de Clave');
INSERT INTO `atoms` VALUES (957, 457, 1, 'Actualizar');
INSERT INTO `atoms` VALUES (958, 458, 1, 'Borrar Todo');
INSERT INTO `atoms` VALUES (959, 459, 1, '');
INSERT INTO `atoms` VALUES (960, 460, 1, '');
INSERT INTO `atoms` VALUES (961, 461, 1, '');
INSERT INTO `atoms` VALUES (962, 462, 1, '');
INSERT INTO `atoms` VALUES (963, 463, 1, '');
INSERT INTO `atoms` VALUES (964, 464, 1, '');
INSERT INTO `atoms` VALUES (965, 465, 1, '');
INSERT INTO `atoms` VALUES (966, 466, 1, '');
INSERT INTO `atoms` VALUES (967, 467, 1, '');
INSERT INTO `atoms` VALUES (968, 468, 1, '');
INSERT INTO `atoms` VALUES (969, 469, 1, '');
INSERT INTO `atoms` VALUES (970, 470, 1, 'Plugin para Agregar un Lenguaje');
INSERT INTO `atoms` VALUES (971, 471, 1, 'Informaci&oacute;n de encabezado de lenguaje (llenar los espacios)');
INSERT INTO `atoms` VALUES (972, 472, 1, 'Nombre corto');
INSERT INTO `atoms` VALUES (973, 473, 1, 'Nombre completo');
INSERT INTO `atoms` VALUES (974, 474, 1, 'Descripci&oacute;n');
INSERT INTO `atoms` VALUES (975, 475, 1, 'Datos at&oacute;micos del lenguaje (favor de traducir)');
INSERT INTO `atoms` VALUES (976, 476, 1, '');
INSERT INTO `atoms` VALUES (977, 477, 1, '');
INSERT INTO `atoms` VALUES (978, 478, 1, '');
INSERT INTO `atoms` VALUES (979, 479, 1, '');
INSERT INTO `atoms` VALUES (980, 480, 1, '');
INSERT INTO `atoms` VALUES (981, 481, 1, '');
INSERT INTO `atoms` VALUES (982, 482, 1, '');
INSERT INTO `atoms` VALUES (983, 483, 1, '');
INSERT INTO `atoms` VALUES (984, 484, 1, '');
INSERT INTO `atoms` VALUES (985, 485, 1, '');
INSERT INTO `atoms` VALUES (986, 486, 1, '');
INSERT INTO `atoms` VALUES (987, 487, 1, '');
INSERT INTO `atoms` VALUES (988, 488, 1, '');
INSERT INTO `atoms` VALUES (989, 489, 1, '');
INSERT INTO `atoms` VALUES (990, 490, 1, '');
INSERT INTO `atoms` VALUES (991, 491, 1, '');
INSERT INTO `atoms` VALUES (992, 492, 1, '');
INSERT INTO `atoms` VALUES (993, 493, 1, '');
INSERT INTO `atoms` VALUES (994, 494, 1, '');
INSERT INTO `atoms` VALUES (995, 495, 1, '');
INSERT INTO `atoms` VALUES (996, 496, 1, '');
INSERT INTO `atoms` VALUES (997, 497, 1, '');
INSERT INTO `atoms` VALUES (998, 498, 1, '');
INSERT INTO `atoms` VALUES (999, 499, 1, '');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `chunks`
-- 

CREATE TABLE `chunks` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `translator_id` bigint(20) unsigned NOT NULL default '0',
  `text_lang_id` bigint(20) unsigned NOT NULL default '0',
  `twext_lang_id` bigint(20) unsigned NOT NULL default '0',
  `text` text,
  `twext` text,
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `chunks`
-- 


-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `documents`
-- 

CREATE TABLE `documents` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `translator_id` bigint(20) unsigned NOT NULL default '0',
  `lang_id` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `author` varchar(150) NOT NULL default '',
  `owner` varchar(150) NOT NULL default '',
  `text` text,
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `translator_id` (`translator_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `documents`
-- 


-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `languages`
-- 

CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `short_name` varchar(16) NOT NULL default '',
  `full_name` varchar(60) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `short_name` (`short_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `languages`
-- 

INSERT INTO `languages` VALUES (0, 'eng', 'english', 'World wide standard language');
INSERT INTO `languages` VALUES (1, 'esp', 'Espa', 'Derived from latin, one of the romance tounges.');
INSERT INTO `languages` VALUES (2, 'ita', 'Italiano', '');
INSERT INTO `languages` VALUES (3, 'oba', 'obawana', '');
INSERT INTO `languages` VALUES (4, 'oba', 'obawana', '');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `plugins`
-- 

CREATE TABLE `plugins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `indexfile` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- მონაცემები ცხრილიდან  `plugins`
-- 

INSERT INTO `plugins` VALUES (1, 'Twexter', 'plugins/twexter.php');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `preferences`
-- 

CREATE TABLE `preferences` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `name` varchar(25) default NULL,
  `description` varchar(150) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `preferences`
-- 

INSERT INTO `preferences` VALUES (0, 'twext_version', 'Version selection (where available');
INSERT INTO `preferences` VALUES (1, 'session_type', 'Kind of session management that the user will be treated with');
INSERT INTO `preferences` VALUES (2, 'mother_lang', 'Known language for the user');
INSERT INTO `preferences` VALUES (3, 'learning_lang', 'New language to be learned');
INSERT INTO `preferences` VALUES (5, 'welcome_plugin', 'First plugin to be run');
INSERT INTO `preferences` VALUES (4, 'menu_plugin', 'Navigation menu plugin');
INSERT INTO `preferences` VALUES (6, 'texter_plugin', 'New text entry plugin');
INSERT INTO `preferences` VALUES (7, 'translator_plugin', 'Text translation plugin');
INSERT INTO `preferences` VALUES (8, 'chunker_plugin', 'Text chunking plugin');
INSERT INTO `preferences` VALUES (9, 'twexter_plugin', 'Plugin for viewing TwEXTs');
INSERT INTO `preferences` VALUES (10, 'prefs_plugin', 'Preferences management plugin');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `prefs_defaults`
-- 

CREATE TABLE `prefs_defaults` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `value` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `prefs_defaults`
-- 

INSERT INTO `prefs_defaults` VALUES (0, '0');
INSERT INTO `prefs_defaults` VALUES (1, '0');
INSERT INTO `prefs_defaults` VALUES (2, '0');
INSERT INTO `prefs_defaults` VALUES (3, '0');
INSERT INTO `prefs_defaults` VALUES (4, '2');
INSERT INTO `prefs_defaults` VALUES (5, 'search.php3');
INSERT INTO `prefs_defaults` VALUES (6, '5');
INSERT INTO `prefs_defaults` VALUES (7, '6');
INSERT INTO `prefs_defaults` VALUES (8, '7');
INSERT INTO `prefs_defaults` VALUES (9, '8');
INSERT INTO `prefs_defaults` VALUES (10, '1');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `remote_plugins`
-- 

CREATE TABLE `remote_plugins` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `remote_plugins`
-- 

INSERT INTO `remote_plugins` VALUES (1, 'Easy Prefs', 'plugins/easy_prefs.php3');
INSERT INTO `remote_plugins` VALUES (4, 'Language Additioner', 'plugins/add_lang.php3');
INSERT INTO `remote_plugins` VALUES (3, 'New User Creator', 'plugins/create_user.php3');
INSERT INTO `remote_plugins` VALUES (0, 'Startup (plugin init)', 'plugins/startup.php3');
INSERT INTO `remote_plugins` VALUES (2, 'Basic Menu Bar', 'plugins/simple_menu.php3');
INSERT INTO `remote_plugins` VALUES (5, 'Basic Texter Form', 'plugins/text_input.php3');
INSERT INTO `remote_plugins` VALUES (6, 'Manual Translation Form', 'plugins/manual_trans.php3');
INSERT INTO `remote_plugins` VALUES (7, 'Manual Chunking Form', 'plugins/manual_chunk.php3');
INSERT INTO `remote_plugins` VALUES (8, 'Simple TwEXT View', 'plugins/simple_view.php3');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `session_type`
-- 

CREATE TABLE `session_type` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `description` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `session_type`
-- 

INSERT INTO `session_type` VALUES (0, 'cookies', 'Simple session management done by cookies. By Urivan Saaib <saaib@ciberlinux.net>');
INSERT INTO `session_type` VALUES (1, 'post', 'Simple session management done by passing all user data with each form');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `user_prefs`
-- 

CREATE TABLE `user_prefs` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `prefs_id` bigint(20) unsigned NOT NULL default '0',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `prefs_id` (`prefs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `user_prefs`
-- 

INSERT INTO `user_prefs` VALUES (0, 0, 0, '0');
INSERT INTO `user_prefs` VALUES (1, 0, 1, '0');
INSERT INTO `user_prefs` VALUES (2, 0, 2, '0');
INSERT INTO `user_prefs` VALUES (3, 0, 3, '0');
INSERT INTO `user_prefs` VALUES (4, 0, 4, '2');
INSERT INTO `user_prefs` VALUES (5, 0, 5, 'search.php3');
INSERT INTO `user_prefs` VALUES (6, 0, 6, '5');
INSERT INTO `user_prefs` VALUES (7, 0, 7, '6');
INSERT INTO `user_prefs` VALUES (8, 0, 8, '7');
INSERT INTO `user_prefs` VALUES (9, 0, 9, '8');
INSERT INTO `user_prefs` VALUES (10, 0, 10, '1');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `users`
-- 

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `nick` varchar(100) NOT NULL default '',
  `pass` varchar(100) default NULL,
  `full_name` varchar(100) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `nick` (`nick`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='NEW' AUTO_INCREMENT=2 ;

-- 
-- მონაცემები ცხრილიდან  `users`
-- 

INSERT INTO `users` VALUES (1, 'zura', 'pass', '', 'wa@wa.ge');

-- --------------------------------------------------------

-- 
-- ცხრილის სტრუქტურა. ცხრილი: `versions`
-- 

CREATE TABLE `versions` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `description` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- მონაცემები ცხრილიდან  `versions`
-- 

INSERT INTO `versions` VALUES (0, 'v0.1', 'Prototype/Initial Development "La Vaca Mula"');
