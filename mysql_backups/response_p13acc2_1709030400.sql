-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2017 at 10:59 AM
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2017_09_03_084958_add_org_id_to_members', 4);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
