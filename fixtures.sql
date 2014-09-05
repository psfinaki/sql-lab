-- CREATE DATABASE `sql-lab` CHARACTER SET utf8 COLLATE utf8_general_ci;

-- CREATE USER 'sql-lab'@'localhost' IDENTIFIED BY 'sql-lab';
-- GRANT ALL PRIVILEGES ON `sql-lab`.* TO 'sql-lab'@'localhost';

-- USE `sql-lab`;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    `id` INTEGER PRIMARY KEY,
    `login` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL
) ENGINE=innodb;

INSERT INTO `users` VALUES
	(1, 'admin', '57b2ad99044d337197c0c39fd3823568ff81e48a');


DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
    `id` BIGINT PRIMARY KEY,
    `sender` BIGINT,
    `recipient` BIGINT,
    `amount` REAL,
    `time` TIMESTAMP
) ENGINE=innodb;

INSERT INTO `transactions` VALUES
	(1358707109206516, 1234567890123456, 4005978048616385, 85.49, '2013-08-27 02:12:22'),
	(7547237352112836, 1234567890123456, 8682395058649226, 82.84, '2013-04-11 13:40:09'),
	(9710014609099857, 1234567890123456, 4636207192538758, 5.44, '2013-05-03 16:06:08'),
	(5613364565387356, 1234567890123456, 8331466049968516, 0.71, '2013-07-04 22:10:27'),
	(2953023085271850, 1234567890123456, 4405874992613112, 28.95, '2013-03-11 00:36:27'),
	(3614870133791186, 1234567890123456, 5525808528639069, 63.69, '2013-02-07 15:45:44'),
	(7820111595500904, 1234567890123456, 1463109580690115, 30.81, '2013-06-12 23:53:30'),
	(6369555475172307, 1234567890123456, 6229626972907835, 37.91, '2013-01-08 20:06:20'),
	(1822716131684364, 1234567890123456, 1534913406844728, 70.58, '2013-05-21 00:08:43'),
	(6654472162379675, 1234567890123456, 6720247895313387, 41.43, '2013-01-10 00:13:18'),
	(9717091516095800, 1234567890123456, 6688771598983856, 4.25, '2013-08-05 17:54:01'),
	(2349386645553773, 1234567890123456, 2507663712368859, 5.85, '2013-03-08 08:47:35'),
	(2077985736867188, 1234567890123456, 4761399633746424, 23.67, '2013-04-13 20:26:12'),
	(3356984206428767, 1234567890123456, 4707910733830646, 7.75, '2013-05-17 21:42:48'),
	(3860848154625628, 1234567890123456, 5835429283498433, 18.46, '2013-06-25 11:59:01'),
	(8443714507520816, 1234567890123456, 7310003412811451, 11.83, '2013-06-25 11:32:39'),
	(1927745980891607, 1234567890123456, 9367854064468657, 74.64, '2013-01-28 22:07:02'),
	(4917649850595270, 1234567890123456, 5707516888829889, 91.36, '2013-03-05 21:00:32'),
	(9808170335490015, 1234567890123456, 4987498438000586, 74.78, '2013-06-26 03:35:33'),
	(9962759362637097, 1234567890123456, 4696262706310211, 47.43, '2013-02-15 03:51:21'),
	(8051522940498481, 1234567890123456, 7217938183739694, 7.82, '2013-01-29 01:34:09'),
	(1627622197537021, 1234567890123456, 9845828709048505, 68.84, '2013-07-16 04:06:25'),
	(8536898442214179, 1234567890123456, 4355098609431745, 34.15, '2013-01-29 22:12:57'),
	(4094721697297570, 1234567890123456, 8129534630317787, 17.81, '2013-03-01 21:25:50'),
	(2328205241263687, 1234567890123456, 3386248846678485, 88.64, '2013-06-17 01:14:28'),
	(2187924719187085, 1234567890123456, 1661004386770985, 93.10, '2013-08-07 07:24:45'),
	(4547081985883691, 1234567890123456, 7013666678242747, 85.43, '2013-07-05 03:23:10'),
	(5241882809977203, 1234567890123456, 2779749018714498, 89.19, '2013-04-19 13:49:06'),
	(9641990507870516, 1234567890123456, 1314618930164122, 26.19, '2013-03-03 09:42:15'),
	(6155879031888200, 1234567890123456, 2715635932267993, 49.16, '2013-07-24 18:21:54'),
	(9324313005356217, 1234567890123456, 9381094451131112, 16.53, '2013-02-12 01:40:58'),
	(2369778772069659, 1234567890123456, 6946016587939926, 46.60, '2013-07-06 19:12:28'),
	(5426163800092073, 1234567890123456, 2979695445088434, 62.92, '2013-07-22 04:15:49'),
	(8406484803253865, 1234567890123456, 5010893523733321, 5.30, '2013-08-10 06:30:09'),
	(2101670071401651, 1234567890123456, 6637528002437858, 1.11, '2013-08-21 09:43:17'),
	(7247964693754247, 1234567890123456, 1114080209070592, 67.80, '2013-02-05 05:10:49'),
	(4707235526203487, 1234567890123456, 8023167572137262, 3.45, '2013-02-23 15:49:16'),
	(5051383409061811, 1234567890123456, 7054642223204169, 5.93, '2013-04-17 07:54:20'),
	(5008550597564876, 1234567890123456, 6100551114551990, 7.79, '2013-01-10 15:37:11'),
	(5289079412084813, 1234567890123456, 9777819748812087, 22.12, '2013-06-17 18:33:29'),
	(5048579409753083, 1234567890123456, 7085011375245011, 85.22, '2013-07-05 09:52:34'),
	(4233697177630464, 1234567890123456, 3769280985820366, 7.81, '2013-03-29 18:22:17'),
	(4021376354880504, 1234567890123456, 3464442146840314, 15.03, '2013-04-12 21:03:19'),
	(4054386192487365, 1234567890123456, 4415526244178596, 40.67, '2013-04-30 03:35:43'),
	(1129344081703168, 1234567890123456, 4251753962657375, 51.35, '2013-05-22 18:23:15'),
	(6026552616340850, 1234567890123456, 2713830598688411, 47.30, '2013-09-03 08:21:13'),
	(2778953771662751, 1234567890123456, 1995074646680075, 15.92, '2013-09-05 15:43:22'),
	(3716345731784392, 1234567890123456, 8972083249262530, 87.05, '2013-09-06 11:15:55'),
	(4922837951043179, 1234567890123456, 8047168519809900, 9.92, '2013-09-03 17:58:26'),
	(1709224220028567, 1234567890123456, 9449520982643755, 25.73, '2013-09-02 22:18:44'),
	(6533148890115646, 9876543210987654, 1442943187437063, 92.56, '2013-01-14 23:19:57'),
	(4544856631217353, 9876543210987654, 5913998313030245, 82.86, '2013-08-19 00:04:34'),
	(5720641964041685, 9876543210987654, 8718499675264429, 71.63, '2013-08-23 21:52:34'),
	(3741567659116281, 9876543210987654, 4672580250693907, 99.26, '2013-05-02 14:39:35'),
	(9096360750592698, 9876543210987654, 5860213749623918, 36.26, '2013-06-15 10:22:50'),
	(6835640595664807, 9876543210987654, 7396831742848800, 98.75, '2013-07-31 09:24:56'),
	(3865920086108279, 9876543210987654, 4678653743157535, 59.29, '2013-08-23 17:23:06'),
	(4464713599216839, 9876543210987654, 6485581093501192, 56.48, '2013-06-16 03:55:57'),
	(3325019495086823, 9876543210987654, 1216212191587372, 54.21, '2013-03-28 19:12:03'),
	(1216013586413495, 9876543210987654, 4371322389727020, 66.91, '2013-06-21 03:48:52'),
	(1976838021790668, 9876543210987654, 3158414026968929, 9.45, '2013-05-31 22:05:13'),
	(3036663447986768, 9876543210987654, 2445800405488290, 76.08, '2013-02-21 11:35:37'),
	(2325391900538243, 9876543210987654, 3056864122346439, 65.27, '2013-05-17 11:30:33'),
	(3091666712739006, 9876543210987654, 8485078349951618, 2.08, '2013-05-12 21:47:31'),
	(5419799146793224, 9876543210987654, 8094848139717166, 11.19, '2013-02-21 18:32:14'),
	(2665135721010308, 9876543210987654, 9512634262433469, 27.51, '2013-06-10 04:52:03'),
	(8886056113654372, 9876543210987654, 8602805069543390, 17.52, '2013-05-17 04:20:53'),
	(5413604581775655, 9876543210987654, 5302454298080406, 69.76, '2013-07-16 21:17:39'),
	(6899562668323967, 9876543210987654, 8589307954727138, 9.94, '2013-01-20 11:39:47'),
	(8496910184496520, 9876543210987654, 6020774312146937, 24.31, '2013-06-11 08:08:45'),
	(4301991376756426, 9876543210987654, 3553093978085209, 90.47, '2013-06-13 06:37:21'),
	(1868633959067196, 9876543210987654, 9033628816125646, 83.96, '2013-03-06 06:15:46'),
	(4441792200667659, 9876543210987654, 2801525651949678, 95.32, '2013-05-18 00:26:20'),
	(6561054552013654, 9876543210987654, 6347942047671295, 89.51, '2013-04-06 16:01:51'),
	(1719773840809107, 9876543210987654, 1925052165905123, 5.67, '2013-08-30 14:20:13'),
	(1378726907682629, 9876543210987654, 8382677607960547, 87.71, '2013-03-18 00:55:14'),
	(8704366175992905, 9876543210987654, 9419997909375766, 67.48, '2013-05-12 08:56:02'),
	(4966973189238478, 9876543210987654, 8302996275048991, 24.50, '2013-03-19 00:58:29'),
	(8736732349614150, 9876543210987654, 8824419997635606, 46.33, '2013-09-04 11:38:57'),
	(1098350078084940, 9876543210987654, 3971048759772611, 34.89, '2013-08-06 01:55:02'),
	(5169313059252168, 9876543210987654, 8271604433827033, 77.32, '2013-06-12 19:32:02'),
	(3346302937916106, 9876543210987654, 5819450650266745, 76.03, '2013-06-06 01:49:24'),
	(4505412735391182, 9876543210987654, 5550924579816548, 96.35, '2013-05-15 19:13:23'),
	(3311261708640510, 9876543210987654, 4182814439457073, 29.66, '2013-02-21 00:08:46'),
	(8981928524812422, 9876543210987654, 8497843613658536, 33.69, '2013-08-23 16:27:53'),
	(2939955148314017, 9876543210987654, 5570502498066855, 60.92, '2013-09-01 21:35:40'),
	(4049675038419650, 9876543210987654, 6301800566849543, 18.71, '2013-05-13 03:26:24'),
	(6369417262149974, 9876543210987654, 6665542164619206, 7.08, '2013-03-22 14:40:23'),
	(5820750028248111, 9876543210987654, 8987158792145892, 43.50, '2013-03-15 01:16:28'),
	(1033478407392183, 9876543210987654, 1193022056064370, 71.92, '2013-03-12 08:50:25'),
	(6376537352317666, 9876543210987654, 7682873339422521, 6.45, '2013-03-20 06:55:54'),
	(7958077241861433, 9876543210987654, 6791938816896462, 51.04, '2013-08-13 22:42:10'),
	(9678694832688343, 9876543210987654, 7455119994827574, 98.35, '2013-01-01 09:32:18'),
	(3162181127035036, 9876543210987654, 2094846097888883, 75.67, '2013-06-05 13:49:36'),
	(7720693165550053, 9876543210987654, 4791958647264381, 68.33, '2013-03-09 09:57:29'),
	(7214651953560256, 9876543210987654, 6467743063664905, 87.15, '2013-05-01 19:47:38'),
	(9618232816183256, 9876543210987654, 1012630637680205, 30.99, '2013-08-19 16:31:08'),
	(7727323905615317, 9876543210987654, 6834658686590518, 3.12, '2013-08-12 07:15:42'),
	(6725553282877485, 9876543210987654, 9338768854758339, 77.09, '2013-06-27 15:48:31'),
	(7360173774074679, 9876543210987654, 9611433884126519, 32.59, '2013-01-28 10:42:41');


DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
    `id` INTEGER PRIMARY KEY,
    `rating` REAL,
    `title` VARCHAR(255),
    `year` INTEGER,
    `director` VARCHAR(255),
    `review` TEXT,
    `votes` INTEGER
) ENGINE=innodb;

INSERT INTO `reviews` VALUES
	(1, 9.3, 'The Shawshank Redemption', 1994, 'Frank Darabont', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 1031924),
	(2, 9.2, 'The Godfather', 1972, 'Francis Ford Coppola', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 726096),
	(3, 9.0, 'The Godfather: Part II', 1974, 'Francis Ford Coppola', 'The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.', 470330),
	(4, 8.9, 'Pulp Fiction', 1994, 'Quentin Tarantino', 'The lives of two mob hit men, a boxer, a gangster''s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 798792),
	(5, 8.9, 'Il buono, il brutto, il cattivo.', 1966, 'Sergio Leone', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 310172);