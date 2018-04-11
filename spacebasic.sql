-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2018 at 03:50 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spacebasic`
--

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(10) UNSIGNED NOT NULL,
  `college_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `college_name`, `created_at`, `updated_at`) VALUES
(1, 'quia college', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(2, 'sit college', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(3, 'eum college', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(4, 'explicabo college', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(5, 'consequatur college', '2018-04-10 10:45:50', '2018-04-10 10:45:50');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_10_145834_create_colleges_table', 1),
(4, '2018_04_10_151047_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `college_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `college_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Non est rem culpa nihil ea iste est.', 'Et ipsam eos est vel esse voluptatibus quia. Voluptas ipsum omnis delectus quasi. Quisquam libero ex explicabo eligendi.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(2, 19, 3, 'Et accusamus aut dolores quidem.', 'Repellendus dolore quaerat incidunt dolore eos error quam. Adipisci nemo expedita accusamus molestiae ut. Dicta rerum et ratione error minima eum sit. Non pariatur qui molestiae maxime facilis.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(5, 9, 4, 'Provident quod aliquid perspiciatis ullam.', 'In dolores qui voluptate aut sunt. Aspernatur quia praesentium ab. Similique ut eum ut dolor. Ipsam ipsam ducimus repellendus.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(6, 12, 5, 'Amet maxime vel consequatur vel.', 'Ut voluptates dolor odio ut. Cum autem minima praesentium quo.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(8, 19, 5, 'Unde minus incidunt culpa fugiat veniam illum.', 'Molestiae architecto voluptatem delectus quis. Quidem dignissimos voluptatem odit in alias ut.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(9, 15, 2, 'Blanditiis minus rerum officia ut culpa architecto.', 'Ut aut autem fugiat amet quos soluta quam exercitationem. Magnam sunt consequatur quasi ratione id nostrum. Aut eaque qui itaque deleniti excepturi minus.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(10, 19, 1, 'Non reprehenderit autem ut atque earum qui.', 'Et quibusdam distinctio consequuntur in sed. Aut voluptatem rerum et voluptatem quis autem.', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(11, 1, 5, 'Qui facere dolorum odit accusamus consectetur iure eligendi.', 'Cum est omnis quibusdam recusandae fugit omnis. Optio sit recusandae est ad. Voluptate officia culpa qui maxime mollitia placeat ipsam mollitia. Ullam non accusantium aut soluta quod asperiores.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(12, 14, 3, 'Soluta minima et ducimus et.', 'Qui quasi voluptatem expedita dolorum eligendi autem adipisci nostrum. Esse sit odio ut sed odio. Animi quisquam autem similique est dolorem mollitia quod. Quia pariatur perspiciatis dolor est.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(13, 3, 4, 'Pariatur ipsam consectetur blanditiis.', 'Voluptatum aliquam corrupti facilis atque aut. Est earum inventore unde est. Blanditiis nisi similique sit et ut sunt.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(14, 15, 3, 'Aut debitis deleniti quae.', 'Aut voluptate amet rerum. Praesentium similique quae illum sit quae. Facilis omnis eius molestiae vel ut quos et.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(15, 4, 2, 'Unde et mollitia necessitatibus ut ut cumque sed.', 'Ullam facilis et placeat sit quaerat. Nesciunt libero ea quibusdam expedita aliquam. Esse nihil mollitia perferendis debitis in.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(16, 10, 5, 'Non est ea eum et voluptatem tempore.', 'Animi harum inventore reiciendis ut quia. Architecto placeat alias saepe fugiat. Id quia animi atque et pariatur nobis ex est.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(17, 16, 2, 'Id omnis officiis reiciendis illo illo earum.', 'Sunt nisi neque eveniet consequatur libero temporibus. Quas et velit id vero qui. Quasi dolores et quam. Voluptates mollitia unde eveniet labore ab cum. Nobis veritatis enim ab molestias.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(18, 4, 2, 'Laborum dolorem qui ex facere qui enim.', 'Facilis quos sint non recusandae consequuntur. Quisquam qui et enim cumque praesentium. Et deleniti delectus et aut. Soluta delectus nam est a iure nihil id aut.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(19, 14, 2, 'Esse atque ullam ipsa perspiciatis.', 'Rerum quas id deserunt ut. Adipisci aut est provident possimus maxime. Molestias iure dolores repellendus.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(20, 8, 4, 'Quo quod modi voluptate omnis ipsam voluptatum.', 'Sit neque sed voluptas modi asperiores. Ut eligendi molestiae optio libero rem doloribus id ipsum. Sint accusantium dolore quia sit mollitia quidem ullam. Consectetur eligendi placeat accusamus.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(21, 14, 3, 'Vel consequatur ea optio quo recusandae ipsum porro.', 'Eveniet magnam debitis molestias rem nisi saepe modi. Commodi sint dolor quo aliquam. Sint sed odio at vel in eaque ut aliquid. Maiores voluptates qui sunt. Ut excepturi doloribus id dolores fugit.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(22, 4, 3, 'Iste maiores cupiditate recusandae assumenda reprehenderit.', 'Vero alias deserunt ea sed omnis. Quam sed dolorum voluptates modi. Distinctio est unde ipsam optio. Iure autem distinctio et autem voluptatem ut.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(23, 14, 3, 'Doloribus placeat consectetur illum est animi.', 'Voluptas aperiam error laborum vel nihil quas ullam. Optio blanditiis expedita quam dolorum cum et. Ut sed ullam nam ipsam a.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(25, 2, 3, 'Quasi molestias recusandae magnam id dignissimos.', 'Explicabo ad commodi sit et vero. Ut rerum cupiditate molestias ipsa. Libero vel eligendi assumenda cupiditate velit maiores.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(26, 10, 5, 'Omnis voluptatum aliquam recusandae non.', 'Quisquam ex qui voluptatum inventore quia. Nihil veniam enim ut sint modi reprehenderit debitis laudantium. Ducimus quo quod blanditiis numquam dolorum.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(27, 3, 1, 'Beatae impedit enim cumque sit recusandae nihil.', 'Nulla ut ad assumenda sint. Rerum repellat corrupti quam quae. Sapiente sed exercitationem accusantium alias officiis. Autem iste unde ullam distinctio quia reprehenderit.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(28, 13, 5, 'Ut sequi sit soluta nihil itaque quo voluptatem mollitia.', 'Et aut nihil deleniti. Voluptas quos id et voluptates temporibus. Minima omnis occaecati qui laboriosam aut. Molestiae voluptatem sapiente sunt et voluptatem.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(29, 18, 2, 'Esse minima recusandae molestias ut dolore.', 'Quo odit blanditiis quidem praesentium quibusdam aliquid omnis fugiat. Sint eos consequatur provident accusamus aut dignissimos voluptatem sunt. Ut quas aut magnam sit nostrum voluptas labore.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(30, 14, 3, 'Laborum cum aliquid aut.', 'Quaerat nulla laboriosam numquam animi omnis amet accusamus. Delectus fugit autem enim. Quisquam voluptates facilis ut non dolores velit.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(31, 8, 5, 'Officia sit ut consequatur quod.', 'Molestiae omnis reiciendis distinctio beatae delectus. Illo sed debitis consequatur ab atque cupiditate. Saepe aspernatur rerum ea.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(32, 5, 5, 'Incidunt dolore possimus temporibus illo optio aspernatur.', 'Culpa nesciunt provident perferendis. Porro suscipit sunt eligendi quia voluptas. Voluptas tenetur fugit omnis et optio voluptatem. Voluptatem fugiat non repellat aut ullam.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(33, 2, 1, 'Rem quia dolorem cupiditate error pariatur voluptatem minima.', 'Rerum dolores accusantium adipisci adipisci id at. Natus voluptas qui consequatur unde numquam dolor. Est quo minus qui fugit amet.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(34, 6, 2, 'Expedita modi quia a fuga quos perferendis.', 'Suscipit velit error itaque eveniet. Aut praesentium quia praesentium non. Ab est ratione aperiam officiis velit quo harum.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(35, 2, 4, 'Qui sit suscipit error esse.', 'Facere dolores quas aut vitae dolor. Sed aut fugit dolore nemo fugiat fugiat iste ipsum. Nulla provident sint et. Et aut tempore aut molestias nesciunt.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(36, 4, 1, 'Ipsam consequatur numquam occaecati non.', 'In consequuntur eligendi nam ex delectus. Perspiciatis repellendus similique repellat distinctio. Id impedit delectus illum repellat iste illum eos.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(37, 15, 4, 'Aliquid dolor dolor occaecati fugiat sed.', 'Quasi et et beatae quaerat. Aut doloremque molestiae et temporibus commodi dolores eos. Et et vitae possimus enim ex.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(38, 6, 4, 'Ipsam architecto alias aliquid nam non illum tempore.', 'Ipsam et nulla aut quae optio neque. Fugiat et et ea amet iste mollitia reprehenderit cupiditate. Et expedita et consequatur molestias.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(39, 19, 3, 'Exercitationem quae suscipit vel exercitationem.', 'Optio eius accusamus odit eveniet veritatis consequatur ea sapiente. Dolorum voluptas alias quisquam eum assumenda est accusamus.', '2018-04-10 10:45:51', '2018-04-10 10:45:51'),
(40, 19, 2, 'Magni commodi totam omnis culpa ut eum.', 'Et ut cumque officiis sit. Neque et repudiandae officia quia unde velit inventore. Cupiditate officiis nostrum est sint sunt. Quo voluptas occaecati nihil recusandae.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(41, 18, 5, 'Est rerum aliquam perferendis nesciunt dolor dolorum.', 'Itaque quia aut rem minus qui. Dolorem eum vel itaque perferendis. Ullam cumque est dicta illo facilis. Blanditiis adipisci optio quis autem dolor dignissimos.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(42, 5, 3, 'Dolores ex provident mollitia tenetur corporis esse.', 'Modi ea voluptatem vel hic quibusdam amet. Aut minima ab atque ipsum. Molestias molestiae doloribus adipisci aut dolore a. Et ad similique consectetur in optio aut.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(43, 15, 2, 'Veniam molestiae et ullam quia eum sequi laboriosam.', 'Excepturi delectus eveniet nemo omnis facilis placeat ex. Nesciunt cupiditate ipsum consectetur enim dicta architecto. Voluptas commodi maiores labore at fuga.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(44, 18, 1, 'Non ea sit nesciunt perspiciatis sit eveniet ab.', 'Architecto possimus rem est non beatae non et. Aspernatur molestias labore eaque quae ipsum. Et vitae sit ea doloribus tempore nulla molestiae error.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(45, 20, 5, 'Quia odit hic aut fugit reiciendis dolor odio.', 'Omnis veritatis voluptas quasi blanditiis laudantium. Ut iusto ipsum repudiandae sapiente. Ut similique perferendis labore et assumenda ut. Consequuntur nobis et ut est consequatur.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(46, 13, 5, 'Quae aut esse dolore quis ea repudiandae.', 'Dignissimos vel quis aut fugiat. Quisquam impedit repellendus laudantium consequatur. Dolor dolorum quas quae quam impedit.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(47, 11, 1, 'Vel qui maiores unde et iste inventore.', 'Et aspernatur tempore inventore laudantium delectus. Iste eum et aliquam laborum possimus et suscipit. Fuga ut dolores sit alias modi repudiandae eaque.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(48, 5, 1, 'Quasi quos quod sapiente.', 'Accusamus sed eveniet molestiae voluptate voluptate repellendus vel. Eum aut sunt ullam aut nisi harum fugit.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(49, 4, 2, 'Totam repellat suscipit aperiam praesentium recusandae quisquam.', 'Et repellat dolor officia id ex debitis aperiam. Temporibus consequatur occaecati quos pariatur est dolor. Veniam ab esse eum error voluptates nisi. Maiores quia dolore fugiat aut.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(50, 5, 5, 'Sit qui vel consequatur magnam velit explicabo suscipit earum.', 'Ipsum hic nam ipsam quaerat unde numquam labore. Atque officia corrupti consequatur dolore et. Qui et quasi ipsam quis illum. Necessitatibus nostrum ea qui dolorem.', '2018-04-10 10:45:52', '2018-04-10 10:45:52'),
(51, 3, 1, 'testin', 'aSDFGVDF ASKUCG GCKJSGCJGSCGASJKGCH ASDGCKASGCUGAS DCGSDJCG JADSG SADGF SDAHGHOUSIYISUYFBIUEW FIUOEWYFIUOEWYIUDYQWIE  UYEEUIDYVUWIXYWaw iuaydiuobyaui', NULL, NULL),
(52, 3, 1, 'testin', 'aSDFGVDF ASKUCG GCKJSGCJGSCGASJKGCH ASDGCKASGCUGAS DCGSDJCG JADSG SADGF SDAHGHOUSIYISUYFBIUEW FIUOEWYFIUOEWYIUDYQWIE  UYEEUIDYVUWIXYWaw iuaydiuobyaui', NULL, NULL),
(53, 13, 2, 'trd fu', 'ygui', '2018-04-11 06:22:13', '2018-04-11 06:22:13'),
(58, 21, 3, 'zxdcfghj', 'trctybun', '2018-04-11 07:57:13', '2018-04-11 07:57:13'),
(60, 22, 2, 'dscsd', 'Where does it come from?  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2018-04-11 08:10:36', '2018-04-11 08:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Keanu Legros', 'reilly.ramon@example.org', '$2y$10$2MS2QW0pJBLJBrbGyBDt2ublkjqLuzZFupb21NJUxeDhV6J0PpQoy', 'xIzLjU9VE4TdnjT5jpovLzCR9MTSlMuWKj8jPpkW58WZ1aWvFKmAw4zruuvu', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(2, 'Mr. Eduardo Gibson V', 'morar.elias@example.net', '$2y$10$hWlfbXoIKuku0tN2OvyM3e39e/DgjWiDN.407wiUbXeFcdUOUlvqS', 'QsUnZw3izF', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(3, 'Dr. Franz Mills DDS', 'christa.stamm@example.com', '$2y$10$WpOJTNtNaDrt1vwcblCyAOzl5dh2heNZFWM7oVuNceukGZP.UK4eW', 'kPtNSpKiFlIPrfN1ErHGikVg8FHrq2jKsHLO0A64xprhC2NsQKk1KxX8alrl', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(4, 'Dr. Cassie Cartwright', 'cassin.myrtie@example.net', '$2y$10$8IRyEmB.kNnG6VhUfHVP7u4AYeGQu9C0qJZaVg5S8QagLQmXHu9Lu', '12qY0xdbPKSrTCJAG2VUBRlwl61uhoUNyOjvM4WOn03lcLzySgHsr92s644j', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(5, 'Dr. Seamus Harris', 'haley.piper@example.org', '$2y$10$tEbBjojFkN5tdonzgEjPde9vHBgq3uZGV/S1Q4m08UItEXCAkTsyu', 'bIlDnYTQeW', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(6, 'Mrs. Crystal Leuschke', 'wilkinson.jettie@example.org', '$2y$10$JSdbTH1m/uUJ8Oyw89tVF.ZAUYgMJRmOk/.KMB.x922PysISuw65u', 'RDX5ccx8Ik', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(7, 'Miss Gregoria Welch MD', 'landen.rutherford@example.org', '$2y$10$u/Vlm09x6mbHFNZn/iKAhuEKP7U4s7HxyFpLI5wWw0wADA7ogPPlW', 'QRpzisL1QR', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(8, 'Maria Gislason MD', 'mallory05@example.org', '$2y$10$dstH2uAzE8tEbHGUb.MyLeZa9RmblRfkaS.5dMGtQedBzKLm4sefu', 'i17QaBuv1y', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(9, 'Gilda Langosh', 'whitney.roob@example.org', '$2y$10$.peuG2ag9mcfJ0YMuXnsKOwbQvkQfpOsoHWlnYqNrI.v1VIaKJDfm', '2NlCPS0DGD', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(10, 'Christelle Bradtke', 'taurean.feeney@example.org', '$2y$10$zMUDfQsbgRhR5Zu/TdvjC.BANypwNOqOBBtfN32EXf/46Zg22MILC', 'e0c0p2rnoi', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(11, 'Ricardo Weimann', 'wisozk.kristin@example.net', '$2y$10$M0ifLGe2ui4raQIMLWY4jORVE2yUgA6yK7BHdhU3Xfa2Gy1wdFZAS', 'F8yUG40GAoIIqPhdwPw2boFb1crZCizIAfRgOl8HemJErQ2dfqqkJ20hdudP', '2018-04-10 10:45:49', '2018-04-10 10:45:49'),
(12, 'Jed Mueller DVM', 'brakus.kiel@example.org', '$2y$10$qYJHDpNdh.hZy6HOD7aeGuG1RGRTXpkcJWYAYuB0WIb2hh9pWrqFW', 'e8nN8CC4IM', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(13, 'Dr. Jaycee Schneider', 'shilpert@example.org', '$2y$10$ZTWXvZxPnfaTqlxTC0tqmuPrddpqFuQF9fEoukoMJ.G.85BqMORSS', '9rzKNlloZLv5sp8Mj7cFlzT2tskeOS5sXEFzEUshLZMBO3MzraLatZ2RzNpN', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(14, 'Johnny Rempel', 'qmiller@example.com', '$2y$10$TcdwxcOdSi2UHHOQQPs0/OHyry9pSHLATEVB6em5kP4yMeMsZXQAe', '5Aj2DDGYPb', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(15, 'Natalia Jenkins', 'ryan.dedrick@example.org', '$2y$10$8IjDHwOXFpcLVTJRDFtc2usqlqeCEytNqGslZTm9hU1quojTeZzpa', 'CaxyL0bV4T', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(16, 'Marian Tromp', 'lhoppe@example.net', '$2y$10$XU8y5sdFkuXeCKk3HS9G4uOt3PmlKrs1RTNKEa55gHig4bJXKaPJW', 'RZoasmYbt2', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(17, 'Tierra Durgan', 'dare.fernando@example.org', '$2y$10$MNedU6kopY5/gRVE5Wt3HO4dJPcvvZRp9LLTV5PcJvww1KmpY7Xyu', 'hfYcMmRMGz', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(18, 'Sadye Rutherford', 'russ14@example.org', '$2y$10$93SyfGleDDUKGR8KwwU6P..MyspywQHucsvAvUfsMmYXFm3x9oEVu', 'nhj0c8FXiD', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(19, 'Christop Hintz', 'coty.schiller@example.net', '$2y$10$9THeC4pzfohKmtKtaPv9L.8eSVic8FgumG.ORiURKB1GANcmIqWju', 'uiY4cv9xck', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(20, 'Sam Romaguera', 'mekhi19@example.net', '$2y$10$u/UXgQ7wXxgC8prrHrxcOusJM9aX0L4wD2oqzAxKJLqHFPyJx9XcC', 'PgKzMSnwQZ', '2018-04-10 10:45:50', '2018-04-10 10:45:50'),
(21, 'ameer', 'ameer@gloify.com', '$2y$10$AWPHUvtqpldwfoEwvy0pC.j5Pl7KFF5MlLCBxxAOr0lw2sblYw6aG', '2zt4MH3At4XVcDGLKTXAYFuupWzGCdyNxkDBl0N5r10HbbGhzjzFz4Smww4b', '2018-04-11 06:23:47', '2018-04-11 06:23:47'),
(22, 'ameer', 'amnag090@gmail.com', '$2y$10$uxdlIV4LdwFTqRMNLUr8xej.QMbxHZdACS9fe2gr/AM684ASWJtjK', NULL, '2018-04-11 08:07:34', '2018-04-11 08:07:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_college_id_index` (`college_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_college_id_foreign` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
