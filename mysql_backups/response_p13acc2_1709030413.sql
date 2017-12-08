-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2017 at 11:12 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `response_p13acc2`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `organization_id`, `first_name`, `last_name`, `phone`) VALUES
(14, 'ogutkowski', 'hilpert.candice@gusikowski.com', 'SHxn7(];~:', NULL, '2017-09-03 14:10:05', '2017-09-03 14:10:05', 1, 'Nathanael', 'Carroll', '(695) 918-6219 x2148'),
(15, 'lebsack.iliana', 'schamberger.allie@bednar.com', ';L5Gv<', NULL, '2017-09-03 14:10:05', '2017-09-03 14:10:05', 2, 'Chaz', 'Haley', '1-931-917-3977'),
(16, 'goldner.amiya', 'jordi53@rau.info', 'pE9VrR1.7d', NULL, '2017-09-03 14:10:05', '2017-09-03 14:10:05', 3, 'Malcolm', 'Gulgowski', '1-872-521-5621 x810'),
(17, 'rhoda87', 'kub.hassan@windler.com', 'Kl*5=;NVS/)I=N,X..', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 4, 'Barry', 'Koepp', '591-614-4559'),
(18, 'ashton16', 'lowe.jayce@yahoo.com', 'wdgR5|b3xDti)rh,$F!A', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 5, 'Don', 'Ziemann', '324-875-8514'),
(19, 'dortha06', 'sanford.cornelius@dietrich.org', 'j@RUdTf,d_#E>?', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 6, 'Jeromy', 'Abbott', '+1-435-521-8906'),
(20, 'ricardo.okon', 'clay.oreilly@yahoo.com', 'c5GT4m3.w\"RLNX.=', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 7, 'Buster', 'Miller', '(503) 531-5184'),
(21, 'wilderman.asa', 'arvel35@hotmail.com', ']^qprP', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 8, 'Darrin', 'Gutkowski', '629-413-7754 x7888'),
(22, 'howell.chelsea', 'okuneva.bertha@beatty.net', 'HzTZ-\']Z', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 9, 'Sanford', 'Haag', '1-653-835-2106'),
(23, 'kitty.mante', 'gorczany.fausto@yahoo.com', 'yT5Z8\'D%QLJ', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 10, 'Jameson', 'Adams', '+19487710974'),
(24, 'schulist.chaim', 'kozey.alexys@yahoo.com', 'w6C\\TIz](u,ujS', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 1, 'Angel', 'Morissette', '724.456.8639 x050'),
(25, 'cruz47', 'ullrich.cyril@flatley.com', 'd^/wJjtlD/', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 2, 'Rigoberto', 'Lehner', '+15254903736'),
(26, 'boehm.dortha', 'magnolia46@romaguera.com', ';aoj_J{kl*', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 3, 'Jarred', 'Larson', '+1.985.686.0424'),
(27, 'jenkins.breanne', 'german76@gmail.com', '\"U_FK`F3:qiH', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 4, 'Harley', 'Kuhic', '(349) 204-2393 x293'),
(28, 'yhessel', 'gutmann.deven@gmail.com', '[i\"hc2.mGw\\\'-.', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 5, 'Henri', 'Predovic', '285-415-1594'),
(29, 'udibbert', 'fullrich@wisoky.com', 'mHFW1?~NDgBx-V', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 6, 'Mose', 'Stoltenberg', '350-687-1506'),
(30, 'roob.cristal', 'reid23@satterfield.com', 'P,k#e|;?rz', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 7, 'Rupert', 'Wyman', '656.562.9994'),
(31, 'elinor.hyatt', 'pbradtke@yahoo.com', 'r@%+c`q4:W', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 8, 'Narciso', 'Ankunding', '1-646-492-7510'),
(32, 'brown.angela', 'alyce68@yahoo.com', '#Zz+>p*', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 9, 'Bertrand', 'Schamberger', '(657) 501-4281 x71268'),
(33, 'celine.kris', 'rbeahan@hotmail.com', 'B?_kkL}uCa]KIpeFL@', NULL, '2017-09-03 14:10:06', '2017-09-03 14:10:06', 10, 'Rick', 'Marks', '1-927-865-5101'),
(34, 'kendra.gutkowski', 'runolfsson.rubie@hotmail.com', 'c>[+,*10n,J[9z^|RL^', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 1, 'Rene', 'Bauch', '392.527.1241'),
(35, 'carolanne75', 'jonas99@hotmail.com', 'Z-St-X4E3C', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 2, 'Montana', 'Monahan', '+14706379303'),
(36, 'pthompson', 'cbeahan@hotmail.com', '@Dd\"W-#h', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 3, 'Gayle', 'Kutch', '416.707.3794 x884'),
(37, 'ktowne', 'mortimer88@hotmail.com', 'm_3MYV6`d=', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 4, 'Branson', 'Eichmann', '1-935-285-6162'),
(38, 'lubowitz.rhea', 'tcummings@boyle.com', 'OlseY52kJ7#Hx<OZp$Cb', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 5, 'Timmy', 'Becker', '+1-247-994-6228'),
(39, 'russel.shanon', 'mschmidt@murray.info', '7j/e+}mk?rZgE9:l.r', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 6, 'Deshaun', 'Lemke', '(997) 919-6602 x1468'),
(40, 'swelch', 'charris@yahoo.com', 'qB?SP-G/]iGCCn}A', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 7, 'Lula', 'Harvey', '265-217-1817 x580'),
(41, 'eulah.kub', 'nellie.auer@gmail.com', '9Jt-}iIPHT&}LS+ALl', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 8, 'Adolf', 'Lindgren', '+1.647.265.6408'),
(42, 'bettie92', 'jay43@glover.com', '{}B59\"Z9yGhNA', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 9, 'Loyal', 'Quitzon', '607-716-0086 x1398'),
(43, 'tsipes', 'lmonahan@hotmail.com', 'VL9XrBJQRB~|>', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 10, 'Werner', 'Krajcik', '(207) 838-2749 x5200'),
(44, 'balistreri.dalton', 'caterina.hoppe@stehr.org', '3{EAwM.+I`A', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 1, 'Jed', 'Robel', '+1.817.458.0206'),
(45, 'vito.bernier', 'mbrown@gmail.com', '?.`_+Lo?', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 2, 'Barney', 'Sipes', '+1-710-549-9018'),
(46, 'zkihn', 'xavier.damore@crooks.biz', ')X4Y/y?\'XBl2ATf;,', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 3, 'Aidan', 'Altenwerth', '+1.671.922.5579'),
(47, 'serena.corwin', 'cecilia.fay@yahoo.com', 'a/(rm,w,|h*t!{<z', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 4, 'Deron', 'Streich', '217-417-4697 x5469'),
(48, 'ebins', 'bechtelar.providenci@gmail.com', '*6g?Bn{D/', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 5, 'Royal', 'Schmidt', '(594) 643-7584 x3407'),
(49, 'ziemann.demetrius', 'cade.veum@gmail.com', 'I#Q6HDf%', NULL, '2017-09-03 14:10:07', '2017-09-03 14:10:07', 6, 'Sedrick', 'Harber', '664-871-5221 x2400'),
(50, 'bradtke.derrick', 'lavada.purdy@yahoo.com', 'A+gpq-`@.S', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 7, 'Zackery', 'Leffler', '(342) 862-4050 x304'),
(51, 'kcronin', 'egutmann@wisoky.com', 't\"\\/w9', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 8, 'Dion', 'Kuphal', '878-751-2564 x51097'),
(52, 'jacobson.pete', 'ceasar.haley@yahoo.com', 'W81\\Ip', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 9, 'Niko', 'Hagenes', '+1 (626) 834-6863'),
(53, 'lowe.clarissa', 'eliezer30@hotmail.com', 'NEg3/`KdBg{4', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 10, 'Laron', 'Jacobs', '(837) 918-2618 x596'),
(54, 'ankunding.jaiden', 'walsh.emory@jones.org', '#=l/t)jjp@|l|N-', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 1, 'Travis', 'Bayer', '(463) 468-2715 x55236'),
(55, 'kaycee.jacobi', 'doris12@gmail.com', '06W$QW9', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 2, 'Neil', 'Boehm', '(804) 270-2414 x661'),
(56, 'bquitzon', 'altenwerth.judy@cormier.biz', '5-P>d*^rV5Z`@~b', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 3, 'Sydney', 'Stark', '976.716.0465 x158'),
(57, 'rtreutel', 'moore.kara@hotmail.com', '&!h*&/%cFs', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 4, 'Modesto', 'Windler', '837-202-6640'),
(58, 'mcdermott.nathanial', 'adan.luettgen@yahoo.com', '>,%RG%b)r7M~;:(sc,', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 5, 'Ignatius', 'Leuschke', '362.344.0470'),
(59, 'rebeca59', 'dannie.price@ward.info', '`[;a?Z\"v(Os', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 6, 'Thomas', 'Parker', '1-307-419-6651 x80007'),
(60, 'gaylord.reed', 'wilma.kling@yahoo.com', 'IsN.YSayA/`', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 7, 'Hershel', 'Hills', '524-464-9491 x47154'),
(61, 'koepp.brain', 'jwolf@hotmail.com', ')/Lu~[ne', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 8, 'Nathen', 'Barrows', '1-434-885-9451 x47130'),
(62, 'macey.swaniawski', 'karine57@treutel.biz', 'D\"y!E;i/yQP7`?PL-', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 9, 'Grayson', 'Rippin', '1-698-424-6305'),
(63, 'cruz.mosciski', 'trey72@gmail.com', 'lco+%SC', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 10, 'Herman', 'Wyman', '318.347.4409'),
(64, 'laney.keeling', 'weston00@kertzmann.com', 'Dae>jv+;jKwqNE8', NULL, '2017-09-03 14:10:08', '2017-09-03 14:10:08', 1, 'Tad', 'Bogisich', '+1-983-813-4840'),
(65, 'adela48', 'ldamore@yahoo.com', '<b,G{B0', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 2, 'Rylan', 'Gottlieb', '+17962335805'),
(66, 'blebsack', 'madison62@steuber.com', 'yk7qy[%02\\.tSxR+3eS', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 3, 'Paxton', 'Hirthe', '985-674-3546 x69803'),
(67, 'madge72', 'omaggio@kihn.com', 'cbQ=\\4b)7', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 4, 'Sidney', 'Collins', '1-382-266-9140 x24919'),
(68, 'ibrekke', 'clementine98@gmail.com', 'Rcd`^KK[_]CO\'hMxumX', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 5, 'Delaney', 'Ullrich', '1-679-230-1712 x5971'),
(69, 'leann31', 'steuber.gussie@hotmail.com', 'c5;QpNK&6^oKHB8', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 6, 'Geo', 'Schamberger', '514.416.1759 x78186'),
(70, 'garrett.kunde', 'charlie84@beer.com', '~3;eGJ5y-x%>l', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 7, 'Lourdes', 'Batz', '(858) 609-5128 x7149'),
(71, 'vwisozk', 'leuschke.leonor@kirlin.org', '<)nwgYrKr{h{&[G,58', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 8, 'Alexandre', 'McCullough', '640.942.5631 x455'),
(72, 'guido.flatley', 'oma.wisoky@yahoo.com', 't6N#ADRF', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 9, 'Tillman', 'Boehm', '404.436.0082'),
(73, 'vwilkinson', 'alford.monahan@ernser.com', 'R=}{!s(Nl8E', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 10, 'Lukas', 'Rice', '440-298-3410 x9896'),
(74, 'gerry.stark', 'wohara@gottlieb.biz', '?^h[gKX%9Uhc(D', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 1, 'Javonte', 'Ernser', '+1-313-881-1904'),
(75, 'berniece77', 'reinhold.rogahn@rolfson.com', 'B)8|)_3NU4hxFmboD', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 2, 'Holden', 'Nolan', '+14985727470'),
(76, 'ted.mosciski', 'mattie13@yahoo.com', 'iE;ES~$[yz', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 3, 'Braden', 'Glover', '214-771-9981'),
(77, 'ebode', 'lorenz.lowe@gmail.com', '.9vQU{0A/O*0;YbZPV', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 4, 'Jocelyn', 'Donnelly', '504.693.5239'),
(78, 'gene65', 'loraine96@crist.com', '$XX<j;<fISM]<', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 5, 'Drake', 'Hermann', '(659) 210-5310'),
(79, 'bryce.zboncak', 'aron19@hotmail.com', ';#(?>SxeKxS&|\'I#^%h|', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 6, 'Leif', 'Gleichner', '427.622.9521 x9871'),
(80, 'andre15', 'balistreri.karson@hotmail.com', 'B\"[ofgWu', NULL, '2017-09-03 14:10:09', '2017-09-03 14:10:09', 7, 'Tre', 'Wilkinson', '334.569.9031 x09121'),
(81, 'morgan59', 'obeier@gmail.com', 'J^L`V<9[ogc@(p>', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 8, 'Adriel', 'Kshlerin', '(391) 770-5541 x785'),
(82, 'eichmann.brandi', 'rupert35@yahoo.com', 'qZ<8^uUr', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 9, 'Carmelo', 'Nolan', '1-927-954-0968'),
(83, 'bernice.kulas', 'bogan.gaetano@gmail.com', 'l>usmt!P-b._#M{', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 10, 'Damon', 'Shields', '+1 (260) 514-8101'),
(84, 'elvera.halvorson', 'kihn.kieran@crooks.net', '<RT|Tz1', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 1, 'Theodore', 'Dach', '1-945-592-2252 x875'),
(85, 'ooconner', 'adela63@damore.biz', 'u/CCx~/{c9iVusXA', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 2, 'Kameron', 'Marks', '321.365.0216'),
(86, 'dan73', 'bergnaum.gregorio@yahoo.com', 'Vf?H|Cbd:n43$%,', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 3, 'Bobbie', 'Kuhlman', '763-535-5513 x807'),
(87, 'roslyn36', 'mpfannerstill@schiller.info', 'kpUnFCNpAkV/', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 4, 'Giovanny', 'Gislason', '208.351.5362'),
(88, 'porter98', 'bette43@hansen.com', 'S8$gTd}/zREw|', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 5, 'Julius', 'Stehr', '+1-942-628-5809'),
(89, 'mario11', 'osinski.ayana@harvey.com', ',]{LBbr.dY}47hKwPa\\', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 6, 'Demarcus', 'Hudson', '736.779.2287'),
(90, 'loren02', 'funk.marlee@hettinger.com', 'KWn^7-O58*n<6u-@', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 7, 'Lewis', 'Corkery', '598.444.3185 x9136'),
(91, 'mohr.patrick', 'will.dillon@stracke.com', '0Zjl3;EU(r.`\'2~', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 8, 'Nels', 'Zulauf', '+1.746.972.2345'),
(92, 'bruce.dooley', 'weber.misty@yahoo.com', '0Fwo4KW', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 9, 'Brendan', 'Haley', '(294) 752-1717 x93108'),
(93, 'neha.berge', 'julien47@altenwerth.com', '\"x&mFf*{Jk|B4Ckm3\'', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 10, 'Norwood', 'Walker', '1-383-396-1460'),
(94, 'stone.schoen', 'ftorp@green.com', 'Z-CF1/azRD*VEe_9c', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 1, 'Laron', 'Larson', '(981) 517-4389 x644'),
(95, 'rbalistreri', 'cabernathy@corwin.info', '}0k:u8l7', NULL, '2017-09-03 14:10:10', '2017-09-03 14:10:10', 2, 'Darrin', 'Turner', '384-509-4696 x17905'),
(96, 'earnest88', 'philpert@hotmail.com', '96wEx+uru/N7', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 3, 'Aaron', 'Kuvalis', '1-365-280-7905 x84594'),
(97, 'wyman.grayce', 'stanford72@gmail.com', '#]XbQwi;G*^', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 4, 'Alfredo', 'Jaskolski', '610.562.7294'),
(98, 'lorna84', 'margaretta17@larson.com', 'z}o|{yMQQBQwqN', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 5, 'Jeremie', 'Christiansen', '+1-302-433-8554'),
(99, 'turner.jeramie', 'jheaney@mckenzie.com', 'JHd}m)5]', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 6, 'Florencio', 'Labadie', '415.934.4163'),
(100, 'rene.weissnat', 'csawayn@gmail.com', 'x!;?MM-J1', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 7, 'Wilton', 'Spencer', '(690) 886-3956 x255'),
(101, 'kbeier', 'gislason.sharon@gmail.com', 'g7jOoHYmTC', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 8, 'Russel', 'Turcotte', '+16873365419'),
(102, 'aleffler', 'ckonopelski@stroman.info', '0I{@+MiAO', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 9, 'Clovis', 'Sipes', '1-316-215-9969 x2820'),
(103, 'thiel.javier', 'selena98@mann.info', '0h=oYK^>+oB:_', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 10, 'Garland', 'Zemlak', '949.473.0449 x6578'),
(104, 'beatty.louisa', 'torn@yahoo.com', 'eq6g`4K4rBOOQp', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 1, 'Eladio', 'Marquardt', '429-333-9451 x15599'),
(105, 'vbruen', 'cassin.john@yahoo.com', 'TK}41m7q~', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 2, 'Martin', 'Wunsch', '(839) 879-8792'),
(106, 'cedrick.oconnell', 'austin37@yahoo.com', 'Q4a`h:ahciE/Q`:', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 3, 'Kamron', 'Franecki', '1-969-488-0677'),
(107, 'nader.torrey', 'glover.ozella@ebert.com', '\"<Ky57Y', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 4, 'Eladio', 'Deckow', '+14058797609'),
(108, 'heaven22', 'katharina17@gmail.com', '<nM.2~Ww@riFhf#L4C,k', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 5, 'Ludwig', 'Luettgen', '557.889.0545'),
(109, 'mcclure.jovanny', 'jeanette64@gmail.com', '.;WtchHQ2$q,mW06+n+', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 6, 'Grayce', 'Schinner', '1-971-929-2710 x78461'),
(110, 'grayce.sanford', 'myrtie.kunze@lind.com', '(Ma&3kM{{ZP(lk', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 7, 'Aron', 'Botsford', '(759) 662-3647 x1707'),
(111, 'daryl84', 'rippin.kali@gmail.com', 'jDpu3Pr,<nO\"e.A`@W8', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 8, 'Jamel', 'Oberbrunner', '+1-419-568-2880'),
(112, 'hahn.tabitha', 'dwyman@halvorson.net', 'a*jQ)jE4\\', NULL, '2017-09-03 14:10:11', '2017-09-03 14:10:11', 9, 'Daron', 'Ledner', '278.626.0164 x92849'),
(113, 'cassie38', 'beaulah46@beer.com', '^kcpi\'-^X<D6Q', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 10, 'Green', 'Parker', '782.370.6127'),
(114, 'claud.reynolds', 'katlynn47@jakubowski.org', 'M_Ny&Ik@<mn)', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 1, 'Vinnie', 'Brekke', '1-991-730-1101 x9683'),
(115, 'dlangworth', 'wilhelmine.jones@pouros.com', 'GAHn~mur<a*8c-D%0|L', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 2, 'Abner', 'Lebsack', '936-486-1947 x059'),
(116, 'ernestine02', 'taryn75@lakin.com', 'N\"b&^8F\':', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 3, 'Griffin', 'Schoen', '774.739.2130'),
(117, 'yklein', 'irving11@wuckert.com', 'U@1OZOM=.1}u&8f+Zk{R', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 4, 'Deonte', 'Fisher', '1-671-445-2678 x7003'),
(118, 'rklein', 'sabrina04@hotmail.com', 'ho\'8=1uN~/d<.\'Z\"U`&', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 5, 'Moises', 'Schuppe', '962.953.7040'),
(119, 'halvorson.lilla', 'sadye.smith@funk.com', ')_(ZD6Ce/qg##64EM', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 6, 'Deonte', 'Reilly', '+1-808-639-4681'),
(120, 'ocie72', 'price.blanche@gmail.com', 's,,<3}I}xNAdbb(IU', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 7, 'Luigi', 'Klocko', '373.756.1485'),
(121, 'lawson90', 'kwolf@gmail.com', 'U_h8[S8:', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 8, 'Sheridan', 'Crona', '1-886-916-4145 x909'),
(122, 'stamm.michale', 'kilback.alfredo@gmail.com', 'syeq>~So}s.iEmRj;X|', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 9, 'Vincenzo', 'Dicki', '536.658.4080 x413'),
(123, 'christine.mraz', 'simonis.buster@block.com', 'JB9lrVUM_JQTu|N', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 10, 'Enoch', 'Glover', '634-352-7565 x276'),
(124, 'kellen40', 'tpouros@gmail.com', '0+T\'B,%', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 1, 'Clifton', 'Smitham', '1-754-908-9039'),
(125, 'hayes.alexys', 'helena.ferry@cassin.info', 'jHXY*x7mkW>~cY#.%:f', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 2, 'Branson', 'Price', '217-745-2788 x80700'),
(126, 'tkemmer', 'esipes@schmitt.biz', '_(_zScg\\', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 3, 'Gregory', 'Kertzmann', '(684) 513-0570'),
(127, 'kiera79', 'nfahey@hayes.com', 'SbFCZK}Ch91', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 4, 'Lew', 'Eichmann', '(235) 967-2108 x6561'),
(128, 'kira.dickens', 'andy.kozey@dickinson.com', 'wj`CI$om`lO\\v3Z04', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 5, 'Sheridan', 'Schulist', '+1 (903) 689-4248'),
(129, 'lucie.beier', 'alexandria.armstrong@gmail.com', 'KU!XO3;)gcK_Y', NULL, '2017-09-03 14:10:12', '2017-09-03 14:10:12', 6, 'Jaylen', 'Rolfson', '(771) 373-9534 x48312'),
(130, 'emard.bradly', 'rreynolds@gmail.com', ']V{[w^U<c2/B32H\"<n', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 7, 'Vito', 'Cartwright', '390.305.0495'),
(131, 'morris25', 'stark.liana@hickle.com', 'x)IoJAg', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 8, 'Murphy', 'Cole', '+1-496-699-3044'),
(132, 'tyra79', 'welch.alycia@schulist.biz', 'F3R;*e-*@=GP6(E<', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 9, 'Napoleon', 'Gaylord', '(738) 370-4617'),
(133, 'bernadette08', 'eusebio.fadel@yahoo.com', '^sJF(LDl', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 10, 'Harold', 'Waters', '(695) 222-3144'),
(134, 'mante.wilber', 'lesley30@hotmail.com', '#i9J.bHvc]%;7Z\'F~', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 1, 'Garry', 'Rohan', '331.825.0919'),
(135, 'cnienow', 'zmitchell@nikolaus.com', '~7x5[qLtGgR^6g\'', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 2, 'Randy', 'Kling', '1-628-917-6758 x27553'),
(136, 'lherman', 'pbecker@barton.com', '~,?phWcQ#8g+:l~F', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 3, 'Woodrow', 'Windler', '925.470.4650'),
(137, 'rosemarie.howe', 'micaela.kshlerin@boehm.org', 'L9hgAX24h9mUkvDk', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 4, 'Arvid', 'Wunsch', '983.929.5679 x974'),
(138, 'anderson.burdette', 'ojohnson@yahoo.com', '=(X^HCpG#FheTI);', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 5, 'Karson', 'Crona', '1-583-254-1583'),
(139, 'chuel', 'towne.sarina@hilll.biz', 'X:dSoE_lc|', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 6, 'Kayley', 'Herzog', '998.682.5921'),
(140, 'grady.jackson', 'pfeil@gmail.com', 'at*%q:SY', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 7, 'Reyes', 'Upton', '304-303-3083'),
(141, 'fjerde', 'russell.bahringer@predovic.info', 'Q<j5gp\'KZ', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 8, 'Xzavier', 'Blanda', '+1-913-809-4016'),
(142, 'xchristiansen', 'joany.ebert@yahoo.com', 'Cx$y&qIAZA<V|\'Jt^E', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 9, 'Quinton', 'Johnston', '1-683-736-3427 x6168'),
(143, 'qokon', 'qswift@hotmail.com', 'z!2{$`Ym*$Hq;v!weKO]', NULL, '2017-09-03 14:10:13', '2017-09-03 14:10:13', 10, 'Sedrick', 'Douglas', '1-234-463-7593'),
(144, 'jayme56', 'alexandre30@wilderman.info', '_A7RnU>dEWHtGqj', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 1, 'Santino', 'Herman', '(207) 312-8847'),
(145, 'ymraz', 'ullrich.lucile@rippin.biz', 'B$UFo:^', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 2, 'Randal', 'Bruen', '1-626-936-7997 x44206'),
(146, 'casper.osinski', 'katelyn.tromp@hotmail.com', '4FpW\'*V]Y#T\"MJ9&r', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 3, 'Troy', 'Block', '931-727-8389 x30374'),
(147, 'scrona', 'donnelly.kali@franecki.com', ',^YSI3I%', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 4, 'Tyrese', 'Hudson', '(609) 624-5312 x261'),
(148, 'carter.lexie', 'zleffler@hotmail.com', 'D\\F&`K\'Laj@#?j[y5', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 5, 'Dashawn', 'Lindgren', '727.691.5383 x79708'),
(149, 'anderson.austin', 'dickinson.elmira@hotmail.com', 'Xa>\"nn\">sUj', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 6, 'Edward', 'Torphy', '+1.889.518.2705'),
(150, 'delpha.flatley', 'cschultz@hackett.biz', '4MkY!UO', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 7, 'Deven', 'Cremin', '+1.421.339.2278'),
(151, 'wskiles', 'hoeger.elinor@goyette.biz', '`]>,meSmuXnllL?<!', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 8, 'Henderson', 'Grant', '(375) 992-9469'),
(152, 'christiansen.stephanie', 'clinton53@bode.com', 'MLZ~+<oR.rQ1', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 9, 'Sherman', 'Deckow', '512-600-6564'),
(153, 'kheller', 'adelbert74@hotmail.com', 'VU=kC=)$,f]', NULL, '2017-09-03 14:10:14', '2017-09-03 14:10:14', 10, 'Stephen', 'Wiegand', '1-367-346-8344');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_members_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_25_050656_create_organizations_table', 2),
(6, '2017_09_02_004705_modify_organizations_columns', 3),
(8, '2017_09_03_084958_add_org_id_to_members', 4),
(9, '2017_09_03_085607_add_fields_to_members', 4),
(10, '2017_09_03_090731_lengthen_phone_column', 5);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `address1`, `address2`, `city`, `state`, `zipcode`, `main_phone`, `alt_phone`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Hoppe, Kirlin and Emmerich', '451 Schaefer Fall Suite 606', NULL, 'North Antonettaside', 'TX', '89107-4593', '946.501.2849 x46621', NULL, NULL, '2017-09-03 13:12:23', '2017-09-03 13:12:23'),
(2, 'Greenfelder PLC', '8399 Wilhelmine Meadows', NULL, 'Bridgettefort', 'TX', '28155-0811', '934.915.0377', NULL, NULL, '2017-09-03 13:12:23', '2017-09-03 13:12:23'),
(3, 'Marks-Grady', '50802 Fermin Islands Apt. 346', NULL, 'Kiarraberg', 'TX', '74480-6669', '(559) 302-9317', NULL, NULL, '2017-09-03 13:12:23', '2017-09-03 13:12:23'),
(4, 'Gislason Ltd', '11287 Shanahan Cliff Apt. 600', NULL, 'West Heidiland', 'TX', '62785-7152', '(996) 457-3632 x4111', NULL, NULL, '2017-09-03 13:12:23', '2017-09-03 13:12:23'),
(5, 'Reinger, Collier and Bauch', '68340 Roosevelt Loaf Suite 709', NULL, 'Christianfort', 'TX', '01545', '272.766.3911', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24'),
(6, 'Fay-McClure', '1049 Maureen Well', NULL, 'West Lucyborough', 'TX', '81753-5786', '(826) 315-8243', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24'),
(7, 'Pollich-Russel', '76741 Wanda Center', NULL, 'East Elinoreburgh', 'TX', '15515-5549', '(909) 309-0810 x39980', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24'),
(8, 'Stracke LLC', '1069 Herminia Roads', NULL, 'Belleborough', 'TX', '89213-2177', '1-437-441-6228 x14853', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24'),
(9, 'Gaylord-Padberg', '45054 Stehr Haven', NULL, 'New Kaneberg', 'TX', '26895-3114', '734-247-7562 x02489', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24'),
(10, 'Larkin, McClure and Douglas', '6842 Zita Pines Apt. 945', NULL, 'East Reese', 'TX', '52022', '(957) 359-8302', NULL, NULL, '2017-09-03 13:12:24', '2017-09-03 13:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `occupied` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `fips_states` varchar(255) DEFAULT NULL,
  `assoc_press` varchar(255) DEFAULT NULL,
  `standard_federal_region` varchar(255) DEFAULT NULL,
  `census_region` varchar(255) DEFAULT NULL,
  `census_region_name` varchar(255) DEFAULT NULL,
  `census_division` varchar(255) DEFAULT NULL,
  `census_division_name` varchar(255) DEFAULT NULL,
  `circuit_court` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `abbreviation`, `country`, `type`, `sort`, `status`, `occupied`, `notes`, `fips_states`, `assoc_press`, `standard_federal_region`, `census_region`, `census_region_name`, `census_division`, `census_division_name`, `circuit_court`) VALUES
(1, 'Alabama', 'AL', 'USA', 'states', 10, 'current', 'occupied', '', '1', 'Ala.', 'IV', '3', 'South', '6', 'East South Central', '11'),
(2, 'Alaska', 'AK', 'USA', 'states', 10, 'current', 'occupied', '', '2', 'Alaska', 'X', '4', 'West', '9', 'Pacific', '9'),
(3, 'Arizona', 'AZ', 'USA', 'states', 10, 'current', 'occupied', '', '4', 'Ariz.', 'IX', '4', 'West', '8', 'Mountain', '9'),
(4, 'Arkansas', 'AR', 'USA', 'states', 10, 'current', 'occupied', '', '5', 'Ark.', 'VI', '3', 'South', '7', 'West South Central', '8'),
(5, 'California', 'CA', 'USA', 'states', 10, 'current', 'occupied', '', '6', 'Calif.', 'IX', '4', 'West', '9', 'Pacific', '9'),
(6, 'Colorado', 'CO', 'USA', 'states', 10, 'current', 'occupied', '', '8', 'Colo.', 'VIII', '4', 'West', '8', 'Mountain', '10'),
(7, 'Connecticut', 'CT', 'USA', 'states', 10, 'current', 'occupied', '', '9', 'Conn.', 'I', '1', 'Northeast', '1', 'New England', '2'),
(8, 'Delaware', 'DE', 'USA', 'states', 10, 'current', 'occupied', '', '10', 'Del.', 'III', '3', 'South', '5', 'South Atlantic', '3'),
(9, 'Florida', 'FL', 'USA', 'states', 10, 'current', 'occupied', '', '12', 'Fla.', 'IV', '3', 'South', '5', 'South Atlantic', '11'),
(10, 'Georgia', 'GA', 'USA', 'states', 10, 'current', 'occupied', '', '13', 'Ga.', 'IV', '3', 'South', '5', 'South Atlantic', '11'),
(11, 'Hawaii', 'HI', 'USA', 'states', 10, 'current', 'occupied', '', '15', 'Hawaii', 'IX', '4', 'West', '9', 'Pacific', '9'),
(12, 'Idaho', 'ID', 'USA', 'states', 10, 'current', 'occupied', '', '16', 'Idaho', 'X', '4', 'West', '8', 'Mountain', '9'),
(13, 'Illinois', 'IL', 'USA', 'states', 10, 'current', 'occupied', '', '17', 'Ill.', 'V', '2', 'Midwest', '3', 'East North Central', '7'),
(14, 'Indiana', 'IN', 'USA', 'states', 10, 'current', 'occupied', '', '18', 'Ind.', 'V', '2', 'Midwest', '3', 'East North Central', '7'),
(15, 'Iowa', 'IA', 'USA', 'states', 10, 'current', 'occupied', '', '19', 'Iowa', 'VII', '2', 'Midwest', '4', 'West North Central', '8'),
(16, 'Kansas', 'KS', 'USA', 'states', 10, 'current', 'occupied', '', '20', 'Kan.', 'VII', '2', 'Midwest', '4', 'West North Central', '10'),
(17, 'Kentucky', 'KY', 'USA', 'states', 10, 'current', 'occupied', '', '21', 'Ky.', 'IV', '3', 'South', '6', 'East South Central', '6'),
(18, 'Louisiana', 'LA', 'USA', 'states', 10, 'current', 'occupied', '', '22', 'La.', 'VI', '3', 'South', '7', 'West South Central', '5'),
(19, 'Maine', 'ME', 'USA', 'states', 10, 'current', 'occupied', '', '23', 'Maine', 'I', '1', 'Northeast', '1', 'New England', '1'),
(20, 'Maryland', 'MD', 'USA', 'states', 10, 'current', 'occupied', '', '24', 'Md.', 'III', '3', 'South', '5', 'South Atlantic', '4'),
(21, 'Massachusetts', 'MA', 'USA', 'states', 10, 'current', 'occupied', '', '25', 'Mass.', 'I', '1', 'Northeast', '1', 'New England', '1'),
(22, 'Michigan', 'MI', 'USA', 'states', 10, 'current', 'occupied', '', '26', 'Mich.', 'V', '2', 'Midwest', '3', 'East North Central', '6'),
(23, 'Minnesota', 'MN', 'USA', 'states', 10, 'current', 'occupied', '', '27', 'Minn.', 'V', '2', 'Midwest', '4', 'West North Central', '8'),
(24, 'Mississippi', 'MS', 'USA', 'states', 10, 'current', 'occupied', '', '28', 'Miss.', 'IV', '3', 'South', '6', 'East South Central', '5'),
(25, 'Missouri', 'MO', 'USA', 'states', 10, 'current', 'occupied', '', '29', 'Mo.', 'VII', '2', 'Midwest', '4', 'West North Central', '8'),
(26, 'Montana', 'MT', 'USA', 'states', 10, 'current', 'occupied', '', '30', 'Mont.', 'VIII', '4', 'West', '8', 'Mountain', '9'),
(27, 'Nebraska', 'NE', 'USA', 'states', 10, 'current', 'occupied', '', '31', 'Neb.', 'VII', '2', 'Midwest', '4', 'West North Central', '8'),
(28, 'Nevada', 'NV', 'USA', 'states', 10, 'current', 'occupied', '', '32', 'Nev.', 'IX', '4', 'West', '8', 'Mountain', '9'),
(29, 'New Hampshire', 'NH', 'USA', 'states', 10, 'current', 'occupied', '', '33', 'N.H.', 'I', '1', 'Northeast', '1', 'New England', '1'),
(30, 'New Jersey', 'NJ', 'USA', 'states', 10, 'current', 'occupied', '', '34', 'N.J.', 'II', '1', 'Northeast', '2', 'Mid-Atlantic', '3'),
(31, 'New Mexico', 'NM', 'USA', 'states', 10, 'current', 'occupied', '', '35', 'N.M.', 'VI', '4', 'West', '8', 'Mountain', '10'),
(32, 'New York', 'NY', 'USA', 'states', 10, 'current', 'occupied', '', '36', 'N.Y.', 'II', '1', 'Northeast', '2', 'Mid-Atlantic', '2'),
(33, 'North Carolina', 'NC', 'USA', 'states', 10, 'current', 'occupied', '', '37', 'N.C.', 'IV', '3', 'South', '5', 'South Atlantic', '4'),
(34, 'North Dakota', 'ND', 'USA', 'states', 10, 'current', 'occupied', '', '38', 'N.D.', 'VIII', '2', 'Midwest', '4', 'West North Central', '8'),
(35, 'Ohio', 'OH', 'USA', 'states', 10, 'current', 'occupied', '', '39', 'Ohio', 'V', '2', 'Midwest', '3', 'East North Central', '6'),
(36, 'Oklahoma', 'OK', 'USA', 'states', 10, 'current', 'occupied', '', '40', 'Okla.', 'VI', '3', 'South', '7', 'West South Central', '10'),
(37, 'Oregon', 'OR', 'USA', 'states', 10, 'current', 'occupied', '', '41', 'Ore.', 'X', '4', 'West', '9', 'Pacific', '9'),
(38, 'Pennsylvania', 'PA', 'USA', 'states', 10, 'current', 'occupied', '', '42', 'Pa.', 'III', '1', 'Northeast', '2', 'Mid-Atlantic', '3'),
(39, 'Rhode Island', 'RI', 'USA', 'states', 10, 'current', 'occupied', '', '44', 'R.I.', 'I', '1', 'Northeast', '1', 'New England', '1'),
(40, 'South Carolina', 'SC', 'USA', 'states', 10, 'current', 'occupied', '', '45', 'S.C.', 'IV', '3', 'South', '5', 'South Atlantic', '4'),
(41, 'South Dakota', 'SD', 'USA', 'states', 10, 'current', 'occupied', '', '46', 'S.D.', 'VIII', '2', 'Midwest', '4', 'West North Central', '8'),
(42, 'Tennessee', 'TN', 'USA', 'states', 10, 'current', 'occupied', '', '47', 'Tenn.', 'IV', '3', 'South', '6', 'East South Central', '6'),
(43, 'Texas', 'TX', 'USA', 'states', 10, 'current', 'occupied', '', '48', 'Texas', 'VI', '3', 'South', '7', 'West South Central', '5'),
(44, 'Utah', 'UT', 'USA', 'states', 10, 'current', 'occupied', '', '49', 'Utah', 'VIII', '4', 'West', '8', 'Mountain', '10'),
(45, 'Vermont', 'VT', 'USA', 'states', 10, 'current', 'occupied', '', '50', 'Vt.', 'I', '1', 'Northeast', '1', 'New England', '2'),
(46, 'Virginia', 'VA', 'USA', 'states', 10, 'current', 'occupied', '', '51', 'Va.', 'III', '3', 'South', '5', 'South Atlantic', '4'),
(47, 'Washington', 'WA', 'USA', 'states', 10, 'current', 'occupied', '', '53', 'Wash.', 'X', '4', 'West', '9', 'Pacific', '9'),
(48, 'West Virginia', 'WV', 'USA', 'states', 10, 'current', 'occupied', '', '54', 'W.Va.', 'III', '3', 'South', '5', 'South Atlantic', '4'),
(49, 'Wisconsin', 'WI', 'USA', 'states', 10, 'current', 'occupied', '', '55', 'Wis.', 'V', '2', 'Midwest', '3', 'East North Central', '7'),
(50, 'Wyoming', 'WY', 'USA', 'states', 10, 'current', 'occupied', '', '56', 'Wyo.', 'VIII', '4', 'West', '8', 'Mountain', '10'),
(51, 'Washington DC', 'DC', 'USA', 'capitol', 10, 'current', 'occupied', '', '11', '', 'III', '3', 'South', '5', 'South Atlantic', 'D.C.'),
(84, 'Armed Forces Americas', 'AA', 'USA', 'military', 15, 'current', 'occupied', 'Serves all of the Americas except for Canada.', '', '', '', '', '', '', '', ''),
(85, 'Armed Forces Europe', 'AE', 'USA', 'military', 15, 'current', 'occupied', 'Serves Europe, Canada, Africa and the Middle East', '', '', '', '', '', '', '', ''),
(86, 'Armed Forces Pacific', 'AP', 'USA', 'military', 15, 'current', 'occupied', 'Serves Asia and the Pacific', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`),
  ADD KEY `members_organization_id_foreign` (`organization_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
