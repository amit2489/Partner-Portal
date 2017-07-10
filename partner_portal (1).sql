-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 08:49 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `partner_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_users`
--

CREATE TABLE `ci_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cc_company_details_id` bigint(20) UNSIGNED DEFAULT '0' COMMENT '//cc user id',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_activation_key` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0= activate // 1=deactivate',
  `user_type` int(11) NOT NULL DEFAULT '5' COMMENT '5 = all user',
  `registration_source` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=web, 1=fb, 2=google, 3= insta',
  `title` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_img` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `landline` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` int(2) NOT NULL DEFAULT '0',
  `date_of_birth` date DEFAULT NULL,
  `allergy_food` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergy_drug` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergy_other` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0=male,1=female,2=other',
  `occupation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state_id` int(11) DEFAULT '0',
  `city_id` int(10) NOT NULL DEFAULT '0',
  `pincode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = unmarried,1=married',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `new_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email_activation_key` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email_status` smallint(6) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_users`
--

INSERT INTO `ci_users` (`id`, `cc_company_details_id`, `user_pass`, `user_email`, `created_on`, `user_activation_key`, `user_status`, `user_type`, `registration_source`, `title`, `first_name`, `last_name`, `profile_img`, `mobile`, `landline`, `blood_group`, `date_of_birth`, `allergy_food`, `allergy_drug`, `allergy_other`, `gender`, `occupation`, `address`, `state_id`, `city_id`, `pincode`, `marital_status`, `last_login`, `oauth_uid`, `new_email`, `new_email_activation_key`, `new_email_status`, `modified_on`, `modified_by`, `city`) VALUES
(5, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'admin@gmail.com', '2016-10-20 18:31:35', '', 0, 1, 0, 'Mr', 'Shrinivas', 'mahindrakar', '', '9029492327', '', 1, '2030-11-01', 'Wheat', 'Sulfa', 'Food allergy', 'male', 'developer', 'sri ram market, aland', 17, 0, '585302', '0', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-03-27 16:02:55', 5, ''),
(7, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'sham@gmail.com', '2016-10-20 20:27:46', 'a7d95cb9b0e5a472a9b4830721b385783cc96ae4170656232e7be497652054466646db52df1a90452506e471a0f2a625c9da36509e4b43011749bd10cfa3c6e3Ca7muT+feU27T3MeotLLuO9B4EWhoRTwe4mESgrwrf4=', 0, 5, 0, 'Mr', 'sham', 'mahamuni', '', '1234567892', '', 0, '0000-00-00', 'Shellfish', 'Antiseizure drugs', 'Allergic asthma', 'male', '', 'test r ert rt|test|18|400701', 0, 0, NULL, '', '2016-12-01 10:19:01', '0', NULL, NULL, NULL, '2017-03-27 16:00:24', 1, ''),
(10, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'nilesh.chachle1993@gmail.com', '2016-10-22 16:03:45', '', 0, 5, 1, '0', 'Nilesh', 'Chachle', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfl1/v/t1.0-1/p50x50/13533122_1079317995492471_9167515500888053928_n.jpg?oh=a99a00a69f861806cdda6308eab78dce&oe=5896C593&__gda__=1482692104_15fdf6579bf3318129ef99d0b5ddf7fa', '', '', 0, '0000-00-00', NULL, NULL, '', NULL, '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '1179028652188071', NULL, NULL, NULL, '2017-01-09 09:55:40', 1, ''),
(13, 0, '', 'abhimanyu20.vns@gmail.com', '2016-11-08 18:49:05', '', 0, 5, 1, 'Mr', 'Abhimanyu', 'Singh', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13445299_1048496518572199_2967005504089090227_n.jpg?oh=9d026c55272740a44f6bd47c211cd34e&oe=58CA08FC', '6666666666', '', 0, '0000-00-00', 'Eggs', 'Antiseizure drugs', 'Food allergy', 'male', '', '||0|', 0, 0, NULL, '', '2016-11-30 15:21:12', '1150926674995849', NULL, NULL, NULL, '2017-02-07 18:17:23', 1, ''),
(21, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'sagar@gmail.com', '2016-11-15 17:06:04', '', 0, 1, 0, 'Mr', 'sagar', 'mahamuni', '', '98804660687', '05645645646', 0, '0000-00-00', 'Shellfish', 'Antibiotics', 'Anaphylaxis', 'Select Gen', '', 'sri ram market, aland|aland|17|585302', 0, 0, NULL, '', '2016-12-07 13:01:50', '5', NULL, NULL, NULL, '2017-04-21 13:20:32', 1, ''),
(50, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'test@gmail.com', '2016-12-13 18:32:47', '0', 0, 5, 0, 'Mr', 'test', 'test', '', '98745632100', '', 0, '0000-00-00', 'Tree nuts', 'Aspirin', 'Allergic rhinitis', 'Select Gen', '', 'test r ert rt||0|', 0, 0, NULL, '', '0000-00-00 00:00:00', '5', NULL, NULL, NULL, '2017-02-01 17:49:58', 1, ''),
(56, 0, '$2y$12$VumE6z8RbQGu5Y56kKOsWe2JVReT5SMhpN5I/zBqIvYWje8ruEiYK', 'admin1@gmail.com', '2016-12-14 09:57:05', '0', 0, 3, 0, 'Mrs', 'Shrinivas', 'Mahindrakar', '', '90251434305', '08477203060', 2, '0000-00-00', '', 'Sulfa drugs', 'Allergic urticaria', 'male', '', 'testff|mumbai|19|400701', 0, 0, NULL, '', '2016-12-14 13:06:35', '5', NULL, NULL, NULL, '2017-01-24 10:55:25', 1, ''),
(60, 0, '$2y$12$R8WrRj6MwqLEpXGCb9XwVOXtewj5xnQZCp2aGu/RXGoexr/dHNpc6', 'avinashware66666666666666666666666@fruitbowldigital.com', '2017-02-10 09:01:09', 'b714ee9b31718527', 0, 5, 0, 'Mr', 'h', '', '', '', '', 0, '0000-00-00', '', '', '', 'Select Gen', '', 'sri ram market, gulbarha|aland|17|585302', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-02-14 12:44:23', 1, ''),
(70, 0, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'shrinivasmahindrakar@fruitbowldigital.com', '2017-02-13 18:15:26', '0', 0, 5, 2, 'Mr', 'Shri', 'Mahindra', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/15095089_160114707790888_4441098327190191054_n.jpg?oh=45a4b8435f81bec51e59f85e55743a44&oe=592DE9FE', '9874566666', NULL, 2, '1994-06-12', 'code', NULL, NULL, 'male', '', 'aland', 17, 0, '585302', '0', '2017-02-17 08:43:49', '130243800777979', NULL, NULL, NULL, '2017-05-05 15:14:08', 70, ''),
(78, 0, '$2y$12$/Z/aFCHLXfFFhI3degRzf.xNlxRv3cV4xMqhmKjzfzxvPNmwdd3QS', 'avinashware@fruitbowldigital.com', '2017-02-15 18:10:05', '89a7e7022aab5057', 0, 5, 0, 'Mr', 'Avinadh', 'W', 'http://localhost/mcxtra/uploads/user_policies/78/profpic_clodefare_nameserver6.png', '9757298730', '', 1, '2017-03-02', '', '', '', 'male', 'Self Employed', 'fghfhfg', 1, 1, '400601', '0', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-21 13:30:54', 78, ''),
(81, 0, '$2y$12$9ELlA3COk4dHgP8DDVvWr.vKYbjfbPAxDvUmXMu6doZvrPXycTO2e', 'urshitafbd@gmail.com', '2017-02-22 16:44:40', 'b714ee9b31718527', 0, 5, 0, 'Mr', 'urshita', 'urshita', '', '5645645646', '05645645646', 0, '2017-03-30', '76', '768', '78', 'Select Gen', '', 'sri ram market, aland|aland|17|585302', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-03-23 12:42:05', 1, ''),
(82, 1, '$2y$12$8T111o7k1ppiWLiH1rcFBequTqcNOaG.XJfPFvk.YGcmhNKmOBQda', 'asdaaf@gmail.com', '2017-03-06 12:36:10', 'd3ed41ce960aa27aaec79d590925e47ce611ed5a7648e4613a8bbac990aaadd3619303a39aba81f94c24317b59c9e3ce97683218f12599bbc184aad88b4c8d89WyLasfJyEO1xNhQc87qCn3l5ym+zozY2ge/lJKslHTs=', 0, 55, 0, 'Mr', 'asdf', 'asdf', '', '5645645646', '05645645646', 2, '2017-02-08', 'asdf', 'as', 'as', 'male', '', 'sri ram market, aland', 17, 0, '585302', '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-03-25 18:03:01', 1, ''),
(83, 1, '$2y$12$xbaO/XUXNUmUdg9DTfKPUuairrMPZiTfpNH2rfFMMwbB/yHuzZgK.', 'avinashware33@fruitbowldigital.com', '2017-03-06 12:37:33', 'b714ee9b31718527', 0, 55, 0, 'Mr', 'avinash', 'ware', '', '9757298700', NULL, 4, '1901-12-06', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-20 17:38:51', 83, ''),
(84, 0, '$2y$12$jVgZlZUy2dIqv6cXWhagiu8VOiQfGhc.fxH7jYQL6IrmyRDOz5JrK', 'navinshingotef@gmail.com', '2017-03-06 12:46:33', 'ff3537073f1fedb6', 0, 55, 0, 'Mr', 'navin', 'gote', '', '5645645646', '05645645646', 3, '2030-10-31', 'asdfghjkl', 'qwertyuiop', 'zxcvbnm', 'other', '', 'sri ram market', 7, 567, '567657', '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-20 12:43:23', 1, ''),
(88, 12, '$2y$12$/Z/aFCHLXfFFhI3degRzf.xNlxRv3cV4xMqhmKjzfzxvPNmwdd3QS', 'gauravkatefbd@gmail.com', '2017-03-08 05:32:34', 'e318a1a60403d31192967ee41ef608a35becd6ad4ac9fde96ac522849551bd32dc35e459c518db0014720ac80d2ad00914508ed25d8c0b37d34db7beba2df8ed0+P6P1BWfUJT7lIggVV6dibaydi31fFWrPKm10yKYnc=', 0, 55, 0, 'Mr', 'gauravkatefbd', 'kate', '', '9880466067', NULL, 2, '2017-04-26', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-30 13:19:10', 88, ''),
(89, 0, '$2y$12$fjZyFuK7VIhdOjZMRmxige2nQXfe65o3yF42gTyc8r1WA9DY4TfTW', 'navin@gmail.com', '2017-04-10 13:38:12', '0', 0, 5, 0, 'Mr', 'navin', 'shingote', '', '9146258593', NULL, 3, '1994-07-30', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', 'jhavnya@gmail.com', 'e3c300073fe973a0', 1, '2017-04-21 12:12:56', 89, ''),
(90, 0, '$2y$12$lzF00fZzHm0GsFxkyDoQf.7mwwjxVub45BWbvE/BA2c0kIP3lxSea', 'shrinivasmahindrakarnew@fruitbowldigital.com', '2017-04-21 18:52:07', '0', 0, 5, 0, 'Mr', 'Shrinivas', 'Mahindrkar', '', '9880466066', NULL, 2, '1994-04-05', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', 'shrinivasmahindrakarnew@fruitbowldigital.com', 'c9b447f8c04c7cbb', 1, '2017-04-30 07:48:11', 90, ''),
(91, 0, '$2y$12$LSLAuwc7aeE2hwFokE7inODXZhMBnc8FmsOlBptaExCXjao0nieli', 'kshitij.khandelwal@outlook.com', '2017-04-21 21:19:32', '0', 0, 5, 0, 'Mr', 'K', 'K', '', '9619333523', '', 4, '1975-07-02', '', '', '', 'male', 'Salaried', 'Andheri', 21, 3987, '400052', '1', '0000-00-00 00:00:00', '0', 'kshitij.khandelwal@outlook.com', 'b714ee9b31718527', 1, '2017-05-04 11:24:56', 91, ''),
(92, 2, '', 'kshitij.khandelwal@reachajcon.com', '2017-04-24 06:50:11', 'ff3537073f1fedb6', 1, 55, 0, '0', 'KK_Test_first name', 'KK_Test_2_Last name', '', '7303581380', NULL, 0, '2000-03-06', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-27 07:41:06', NULL, ''),
(93, 0, '$2y$12$cl6Kt8OwHpZAZIhfLQs4v.djbmMsD5J4/WYLbj0D9ErYF8VuqwFgG', 'supriya.thale_de@reachajcon.com', '2017-04-24 13:57:32', 'b714ee9b31718527', 0, 5, 0, 'Mrs', 'SUPRIYA', 'KAMBLE', '', '9821584791', NULL, 3, '1991-06-22', NULL, NULL, NULL, 'female', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-24 13:59:09', 93, ''),
(94, 0, '$2y$12$gno2TXKyq0m6JO2Ecpl0NusJBGqkISebN.mDy1sdg2iEQFH41zIq.', 'sonali.sawant_de@reachajcon.com', '2017-04-24 14:08:40', 'b714ee9b31718527', 0, 5, 0, 'Mrs', 'sonali', 'sawant', '', '9820194946', NULL, 5, '1980-07-03', NULL, NULL, NULL, 'female', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-24 14:11:52', 94, ''),
(95, 3, '', 'khandelwal32@gmail.com', '2017-04-27 07:46:52', 'e5b58718e7e2e6b6c3b63c6c7da634532afff0023755c8b662489d1db6cc5ca00b5617fc527cc570ef011d42dc1b773645ea8ae185b568afa45924e482b2a80c0v6paiV2iCKhYlRxd8NltfsDZiPAtjsvWNnHYgGGZOE=', 0, 55, 0, 'Mr', 'Test_KK_3_fname', 'Test_KK_3_Lname', '', '3216549870', NULL, 3, '2017-04-05', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-27 13:55:21', 95, ''),
(96, 0, '$2y$12$tDNBUedA5qPNddAuacK4WuJSVxT5acvdu646EefehZEHcZ3NR/876', 'as.narayanan@rediffmail.com', '2017-04-29 12:25:38', '0', 0, 5, 0, 'Mr', 'AS', 'Narayanan', '', '9820038496', NULL, 5, '1972-12-30', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-04-29 12:42:45', 96, ''),
(97, 0, '$2y$12$d2FbjzeJzyJbRLacqwr4OOsVQ4eJ.KPvAtn.NdVCOVJ6IEdgi2Vwe', 'vaibhva.waghmare786@gmail.com', '2017-05-02 11:13:18', '19664076883e8cfe', 1, 5, 0, '0', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-02 05:43:18', NULL, ''),
(98, 0, '$2y$12$d4BRttlCPq97NlbSZvOYde.i2DsbMfqI7O6ggFZ9QTh..qWM.qKRS', 'vaibhav.waghmare786@gmail.com', '2017-05-02 11:17:03', 'b714ee9b31718527', 1, 5, 0, '0', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-02 06:09:50', NULL, ''),
(99, 0, '$2y$12$PBvpqZcCtZaUEcpzMzcgpukEWVTyF32uUzV5TPbB9Xqt6/7sRbrIa', 'poonam.sharma@reachajcon.com', '2017-05-02 14:13:38', 'b714ee9b31718527', 0, 5, 0, 'Ms', 'poonam', 'sharma', '', '9930257444', NULL, 5, '1992-09-11', NULL, NULL, NULL, 'female', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-02 14:18:53', 99, ''),
(100, 0, '$2y$12$2c8FDUk9lWOXoF0fLhMDq.Z1REGwhciriOgdBJh4ijp7c.ImP6amO', 'himali.kulkarni@reachajcon.com', '2017-05-02 14:13:49', '7ec8e47be6312f8e', 0, 5, 0, 'Ms', 'himali', 'kulkarni', '', '9029026677', NULL, 7, '1992-09-23', NULL, NULL, NULL, 'female', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-02 14:17:58', 100, ''),
(101, 0, '$2y$12$FfUp3xPrcLWo.4D0FZhJZOirkpOL3Yj5/3NopC2ZNgzwts2.QdfG2', 'aarti.mate@reachajcon.com', '2017-05-02 15:16:50', '0', 0, 5, 0, 'Mrs', 'Aarti', 'Mate', '', '9769777594', NULL, 2, '1992-03-26', NULL, NULL, NULL, 'female', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', 'aarti.mate@reachajcon.com', 'cd762fdd642ffdf5', 1, '2017-05-02 15:17:39', 101, ''),
(102, 0, '$2y$12$cE4QJ/nTRDZB5g2wArqBxeCgrQ6KH8E.QA24O/Ntcw2dgIQqC7VGS', 'amritagowda@reachajcon.com', '2017-05-03 11:24:44', 'b714ee9b31718527', 1, 5, 0, '0', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-03 05:54:44', NULL, ''),
(103, 0, '$2y$12$DbtbRgnInr7vWS5JJ4wfheQWm26qdhwoffQ/0N9w91uq/M9vgXHo2', 'amrita.gowda@reachajcon.com', '2017-05-03 11:27:51', 'b714ee9b31718527', 0, 5, 0, 'Ms', 'Amrita', 'Gowda', '', '9769738747', '', 5, '1985-12-10', '', '', 'dust ', 'female', 'Salaried', '2 sheldon villa marve rd malad west ', 21, 3987, '400095', '0', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-03 11:38:25', 103, ''),
(104, 0, '$2y$12$mJ8oLdsCeNnhbWIJROWuSeYGuBbC/YQYhCBjf77uXnnSn7mRtmCa6', 'vaibhav.a.waghmare92@gmail.com', '2017-05-05 12:10:07', 'f3348f8f5f0f67ac', 0, 5, 0, 'Mr', 'vaibhav', 'waghmare', 'http://mcxtra.com/demo/uploads/104/profpic_Buddha-Quote_forgiveness.jpg', '7303992549', '24703139', 3, '1999-02-02', '', '', '', 'male', 'Salaried', 'gsest2331234567890', 13, 2060, '400006', '0', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '2017-05-09 16:35:52', 104, ''),
(105, 0, '$2y$12$zLbt.phZQtP7dG.TnxDxXOZxfq.RmFuQLAJzLonNj6c9M4R./RM42', 'divyaraj@gmail.com', '2017-05-09 16:30:38', '0', 0, 5, 0, 'Mr', 'Divya', 'Raj', '', '9619090497', NULL, 3, '1976-07-09', NULL, NULL, NULL, 'male', '', '', 0, 0, NULL, '', '0000-00-00 00:00:00', '0', 'divyaraj@gmail.com', 'c5969bd60a3a1cda', 1, '2017-05-09 16:31:34', 105, '');

-- --------------------------------------------------------

--
-- Table structure for table `d_agent`
--

CREATE TABLE `d_agent` (
  `agent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `mobile` varchar(1000) NOT NULL,
  `email_id` varchar(500) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `person_name` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `pin` varchar(500) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_agent`
--

INSERT INTO `d_agent` (`agent_id`, `name`, `address`, `mobile`, `email_id`, `company_name`, `person_name`, `state`, `city`, `pin`, `date`) VALUES
(9, 'Amit', 'santacruz east', '7303581380', 'amit.tiwari@reachajcon.com', '', '', '', '', '', '2017-06-15 17:02:48'),
(10, 'Royal Sundaram', 'address1', '7303581380', 'amit.tiwari@reachajcon.com', 'reach', 'person1', 'maharashtra', 'mumbai', '400055', '2017-06-28 11:21:23'),
(11, 'subpartner1', 'andheri west', '7303581380', 'amit.tiwari@reachajcon.com', 'Reach', 'Amit', 'maharashtra', 'mumbai', '400053', '2017-06-30 12:57:06'),
(12, 'agent2', 'address1', '7303581380', 'abc@gmail.com', 'reach', 'ABCD', 'maharashtra', 'mumbai', '400053', '2017-06-30 14:59:08'),
(13, 'Poonam', 'andheri west', '7303581380', 'amit.tiwari@reachajcon.com', 'Reach', 'Himali', 'maharashtra', 'mumbai', '400055', '2017-06-30 15:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `d_commission`
--

CREATE TABLE `d_commission` (
  `commisssion_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `base_rate` varchar(500) NOT NULL,
  `delta_rate` varchar(500) NOT NULL,
  `final_rate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_insurer`
--

CREATE TABLE `d_insurer` (
  `name` varchar(500) NOT NULL,
  `insurer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_insurer`
--

INSERT INTO `d_insurer` (`name`, `insurer_id`) VALUES
('Bajaj', 2),
('Reliance', 3),
('Test_KK_', 4),
('Royal Sundaram', 5);

-- --------------------------------------------------------

--
-- Table structure for table `d_login`
--

CREATE TABLE `d_login` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_login`
--

INSERT INTO `d_login` (`id`, `username`, `password`, `email`, `status`, `log_time`) VALUES
(1, 'Admin', '202cb962ac59075b964b07152d234b70', 'abc@gmail.com', 1, '2017-05-05 08:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `d_policy`
--

CREATE TABLE `d_policy` (
  `policy_id` int(11) NOT NULL,
  `type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_policy`
--

INSERT INTO `d_policy` (`policy_id`, `type`) VALUES
(2, 'Health'),
(3, 'Motor'),
(4, 'Travel'),
(5, 'Life'),
(7, 'Home'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `d_product`
--

CREATE TABLE `d_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(10000) NOT NULL,
  `insurer_id` int(11) NOT NULL,
  `policy_id` int(11) NOT NULL,
  `base_rate` varchar(1000) NOT NULL,
  `delta_rate` varchar(10000) NOT NULL,
  `final_rate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_product`
--

INSERT INTO `d_product` (`product_id`, `product_name`, `insurer_id`, `policy_id`, `base_rate`, `delta_rate`, `final_rate`) VALUES
(1, 'Protect', 3, 2, '10', '0', '10');

-- --------------------------------------------------------

--
-- Table structure for table `d_slider_images`
--

CREATE TABLE `d_slider_images` (
  `img_id` int(11) NOT NULL,
  `name` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_uploaded_policy`
--

CREATE TABLE `d_uploaded_policy` (
  `up_id` int(11) NOT NULL,
  `policy_id` int(11) NOT NULL,
  `policy` varchar(10000) NOT NULL,
  `insurer_id` int(11) NOT NULL,
  `policy_holder_name` varchar(1000) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email_id` varchar(500) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_uploaded_policy`
--

INSERT INTO `d_uploaded_policy` (`up_id`, `policy_id`, `policy`, `insurer_id`, `policy_holder_name`, `mobile`, `email_id`, `file_id`) VALUES
(41, 3, '2405262339000114.pdf', 3, 'Amit', '7303581380', 'amit.tiwari2403@gmail.com', 50),
(42, 2, '1103272828000916.pdf', 3, 'MR. VAIBHAV VASANT PATIL', '9923333555', 'govindula.balakrishna@gmail.com', 51),
(43, 3, '1103272828000916.pdf', 5, 'Amit Tiwari', '7303581380', 'amit.tiwari@reachajcon.com', 51),
(44, 4, '1103272828000916.pdf', 4, 'amit.t', '7303581380', 'abc@gmail.com', 51),
(45, 3, '2201252312008183.pdf', 3, 'Mr.Prakashan V K', ' 9747397870', 'NA@123895647.com', 55),
(46, 3, '1108262311023268.pdf', 5, 'Mrs. MARIA TELMA PEREIRA', '', '', 64),
(47, 3, '1108262311023002.pdf', 5, 'Mrs. MARIA TELMA PEREIRA', '', '', 65),
(48, 3, '1108262311023002.pdf', 5, 'Mrs. MARIA TELMA PEREIRA', '', '', 65),
(49, 2, '1108262311023002.pdf', 5, 'holder1', '7303581380', 'abc@gmail.com', 65),
(50, 3, '1108262312024736.pdf', 3, 'MR.MUSTAQ GULAM ABBAS SARKAR', '9819840981', 'abc@gmail.com', 67),
(51, 3, '1108262311025374.pdf', 3, 'Amit Tiwari', '9923333555', 'abc@gmail.com', 68),
(52, 3, '1108262311025374.pdf', 3, 'Amit Tiwari', '9923333555', 'abc@gmail.com', 68);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `uploaded`) VALUES
(56, '1806262312001342 (2).pdf', '2017-06-14 17:38:36'),
(55, '2201252312008183.pdf', '2017-06-13 18:32:28'),
(54, '2401552311002046.pdf', '2017-06-13 18:19:07'),
(53, '2405252334005339-ANKIT KEDIA OR-04 G 9636.pdf', '2017-06-13 17:55:09'),
(52, '2405252334005345- ankit kedia  BR 25 A 7089.pdf', '2017-06-13 17:52:05'),
(51, '1103272828000916.pdf', '2017-06-08 06:43:54'),
(50, '2405262339000114.pdf', '2017-06-05 10:39:42'),
(49, '1405262312007845.pdf', '2017-06-05 09:37:12'),
(45, '1805662111002355.pdf', '2017-05-31 05:51:44'),
(48, '70110014-Pankit Sheth.pdf', '2017-06-05 09:23:18'),
(47, '1501652111050799.pdf', '2017-06-05 09:19:56'),
(46, '2002252311006988.pdf', '2017-06-01 04:35:57'),
(44, '1805662111002355.pdf', '2017-05-31 05:45:39'),
(43, '1108252311010358.pdf', '2017-05-31 05:43:48'),
(42, 'DSCI_PP_Framework.pdf', '2017-05-31 05:27:12'),
(41, 'Instruction-and-eIA-Form-Fillable-PDF.pdf', '2017-05-25 12:25:52'),
(40, 'accidental-death.png', '2017-05-25 12:23:11'),
(39, 'DSCI_PP_Framework.pdf', '2017-05-25 12:16:20'),
(57, '1103252311011284.pdf', '2017-06-14 17:57:29'),
(58, '1108262311005404.pdf', '2017-06-14 18:04:22'),
(59, '1108262311023795.pdf', '2017-06-15 12:55:34'),
(60, '1103272828000916.pdf', '2017-06-19 14:10:30'),
(61, '1108272348005118.pdf', '2017-06-21 10:54:12'),
(62, '1505252825005032.pdf', '2017-06-21 11:05:37'),
(63, '1108252312000656.pdf', '2017-06-21 11:08:26'),
(64, '1108262311023268.pdf', '2017-06-28 10:56:15'),
(65, '1108262311023002.pdf', '2017-06-28 10:58:47'),
(66, '1108262312024080.pdf', '2017-06-28 12:09:27'),
(67, '1108262312024736.pdf', '2017-06-28 12:12:11'),
(68, '1108262311025374.pdf', '2017-06-28 12:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `h_policy_insurer`
--

CREATE TABLE `h_policy_insurer` (
  `pi_id` int(11) NOT NULL,
  `policy_id` int(11) NOT NULL,
  `insurer_id` int(11) NOT NULL,
  `up_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_partner`
--

CREATE TABLE `sub_partner` (
  `sub_partner_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `mobile` varchar(1000) NOT NULL,
  `email_id` varchar(1000) NOT NULL,
  `company_name` varchar(1000) NOT NULL,
  `person_name` varchar(1000) NOT NULL,
  `state` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `pin` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_partner`
--

INSERT INTO `sub_partner` (`sub_partner_id`, `agent_id`, `name`, `address`, `mobile`, `email_id`, `company_name`, `person_name`, `state`, `city`, `pin`, `date`) VALUES
(1, 10, 'sub1', 'addr1', '7303581380', 'amit.tiwari@reachajcon.com', 'reach', 'Amit', 'Maharashtra', 'mumbai', '400055', '2017-06-14 00:00:00'),
(2, 10, 'Poonam', 'andheri west', '7303581380', 'abc@gmail.com', 'TATA', 'Himali', 'maharashtra', 'mumbai', '400055', '2017-06-30 15:03:18'),
(3, 9, 'subpartner_test', 'address_test', '7303581380', 'abc@gmail.com', 'company_test', 'person_test', 'maharashtra', 'mumbai', '400055', '2017-07-03 12:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_partner`
--

CREATE TABLE `sub_sub_partner` (
  `sub_sub_partner_id` int(11) NOT NULL,
  `sub_partner_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `mobile` varchar(1000) NOT NULL,
  `email_id` varchar(1000) NOT NULL,
  `company_name` varchar(1000) NOT NULL,
  `person_name` varchar(1000) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `pin` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_sub_partner`
--

INSERT INTO `sub_sub_partner` (`sub_sub_partner_id`, `sub_partner_id`, `name`, `address`, `mobile`, `email_id`, `company_name`, `person_name`, `state`, `city`, `pin`, `date`) VALUES
(1, 2, 'himali', 'address1', '7303581380', 'amit.tiwari@reachajcon.com', 'Reach', 'Poonam', 'maharashtra', 'mumbai', '400055', '2017-06-30 15:14:11'),
(2, 3, 'SubSub-Partner1', 'address_test', '7303581380', 'abc@gmail.com', 'company_test', 'person_test', 'maharashtra', 'mumbai', '400053', '2017-07-03 12:33:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_users`
--
ALTER TABLE `ci_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_agent`
--
ALTER TABLE `d_agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `d_commission`
--
ALTER TABLE `d_commission`
  ADD PRIMARY KEY (`commisssion_id`);

--
-- Indexes for table `d_insurer`
--
ALTER TABLE `d_insurer`
  ADD PRIMARY KEY (`insurer_id`);

--
-- Indexes for table `d_login`
--
ALTER TABLE `d_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_policy`
--
ALTER TABLE `d_policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `d_product`
--
ALTER TABLE `d_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `d_slider_images`
--
ALTER TABLE `d_slider_images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `d_uploaded_policy`
--
ALTER TABLE `d_uploaded_policy`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h_policy_insurer`
--
ALTER TABLE `h_policy_insurer`
  ADD PRIMARY KEY (`pi_id`);

--
-- Indexes for table `sub_partner`
--
ALTER TABLE `sub_partner`
  ADD PRIMARY KEY (`sub_partner_id`);

--
-- Indexes for table `sub_sub_partner`
--
ALTER TABLE `sub_sub_partner`
  ADD PRIMARY KEY (`sub_sub_partner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_users`
--
ALTER TABLE `ci_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `d_agent`
--
ALTER TABLE `d_agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `d_commission`
--
ALTER TABLE `d_commission`
  MODIFY `commisssion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `d_insurer`
--
ALTER TABLE `d_insurer`
  MODIFY `insurer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `d_login`
--
ALTER TABLE `d_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `d_policy`
--
ALTER TABLE `d_policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `d_product`
--
ALTER TABLE `d_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `d_slider_images`
--
ALTER TABLE `d_slider_images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `d_uploaded_policy`
--
ALTER TABLE `d_uploaded_policy`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `h_policy_insurer`
--
ALTER TABLE `h_policy_insurer`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_partner`
--
ALTER TABLE `sub_partner`
  MODIFY `sub_partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub_sub_partner`
--
ALTER TABLE `sub_sub_partner`
  MODIFY `sub_sub_partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
