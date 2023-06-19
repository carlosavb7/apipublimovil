-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-06-2023 a las 01:34:36
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iprimave_api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_16_081504_create_products_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('carlos_valle7@hotmail.com', '$2y$10$n5i6F8BvK0JzpmPATic4P.6/DpUpcfMjcY6cMyEDXzioWZXnZJwbG', '2023-06-19 13:14:34'),
('charliealfred2012@gmail.com', '$2y$10$OvpI/razJCCj3I/wzINeyemdshNs4mH5OGTbkynZ4RLIrzB9cCZTK', '2023-06-19 13:20:43'),
('johndoe@example.com', '$2y$10$KAru1XEOr7lpS59U2OXd1erpC.9mgh2R3uq3x9o6Ero0fnFBwMr1O', '2023-06-16 18:45:20'),
('kariosa@yopmail.com', '$2y$10$5XgcZLwpb4A4Q8fqQi/V7O/H5OpIme/xNKz9.mKCUp7y9XQ3KpYXe', '2023-06-19 13:18:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '39d5d950908a3f68a0e812226f9ff8758ca7c3a8d270df1e3a92778ba308bd66', '[\"*\"]', NULL, NULL, '2023-06-15 14:45:55', '2023-06-15 14:45:55'),
(2, 'App\\Models\\User', 1, 'authToken', '9c0d4feb5686d2b771472ce1554c8e97377c6f2014300df21bdaf3d2a433b77f', '[\"*\"]', NULL, NULL, '2023-06-16 10:50:55', '2023-06-16 10:50:55'),
(3, 'App\\Models\\User', 1, 'authToken', 'd437012e48d0aa214d4209b718b98641f3ca0056a2e507e5322f5596e3c2144e', '[\"*\"]', NULL, NULL, '2023-06-16 11:42:02', '2023-06-16 11:42:02'),
(4, 'App\\Models\\User', 1, 'authToken', '3e72437d7985e584c6f525c6f372026561b45a9862c2164396464073cab88706', '[\"*\"]', NULL, NULL, '2023-06-16 16:50:41', '2023-06-16 16:50:41'),
(5, 'App\\Models\\User', 2, 'auth_token', 'a23e48358896b8883f9802c1feff670e67a404e240ae5c940782bf78577e2758', '[\"*\"]', NULL, NULL, '2023-06-16 16:54:06', '2023-06-16 16:54:06'),
(6, 'App\\Models\\User', 1, 'authToken', '0fb11cc4547a1b653e7e9cfaa641f85d5b95fa06c48885b800c39ff888b2c550', '[\"*\"]', '2023-06-16 19:12:44', NULL, '2023-06-16 19:11:26', '2023-06-16 19:12:44'),
(7, 'App\\Models\\User', 1, 'authToken', '60c554d818facb26429729023f23a5ba8c8eb1ed04faa181c8c51236a5cf22d6', '[\"*\"]', '2023-06-16 20:01:12', NULL, '2023-06-16 19:22:03', '2023-06-16 20:01:12'),
(8, 'App\\Models\\User', 1, 'authToken', '1852aa2d43ec48ea0e5040c8f8a8c69364a61094026e0cfa46703d9189354074', '[\"*\"]', '2023-06-16 22:15:33', NULL, '2023-06-16 20:57:30', '2023-06-16 22:15:33'),
(9, 'App\\Models\\User', 3, 'auth_token', '209da5c304141825bf5154e489058a0cb92956819afdf511f057632b9be47e73', '[\"*\"]', NULL, NULL, '2023-06-19 11:21:00', '2023-06-19 11:21:00'),
(10, 'App\\Models\\User', 3, 'authToken', 'cdd629054b6780122c09fee9c09ff53b69c79d5d32fd1c28a5033ef3458cc68b', '[\"*\"]', '2023-06-19 11:26:48', NULL, '2023-06-19 11:22:44', '2023-06-19 11:26:48'),
(11, 'App\\Models\\User', 3, 'authToken', '3d17ceeeacbccd0208b50df659cfc9e1cca22f4b6cc9cd542a5d4f03c5ba85a6', '[\"*\"]', NULL, NULL, '2023-06-19 12:25:52', '2023-06-19 12:25:52'),
(12, 'App\\Models\\User', 3, 'authToken', '4d438ae7b86fa5db5ce1e1f1d960e75b91dcc01c5b00729b969a63f75518f0fe', '[\"*\"]', NULL, NULL, '2023-06-19 12:26:08', '2023-06-19 12:26:08'),
(13, 'App\\Models\\User', 3, 'authToken', '1d037b6c635c1cfb060151119a5a93ab4401595f8465a71c691e1c27fa3b7c21', '[\"*\"]', NULL, NULL, '2023-06-19 12:26:20', '2023-06-19 12:26:20'),
(14, 'App\\Models\\User', 3, 'authToken', '85bd710f387aed784e2eaa5159140225003f801d6e423f252e65a7d49d2c3c90', '[\"*\"]', '2023-06-19 12:55:09', NULL, '2023-06-19 12:31:02', '2023-06-19 12:55:09'),
(15, 'App\\Models\\User', 4, 'auth_token', '2d9487b29007744a97b2d9608ebfda29991f8854dba609db05513c1da8590624', '[\"*\"]', NULL, NULL, '2023-06-19 12:47:07', '2023-06-19 12:47:07'),
(16, 'App\\Models\\User', 4, 'authToken', '06e2d529d8c637511c123a198e916989374e02eef8a3056e7a887653135e5241', '[\"*\"]', '2023-06-19 13:11:08', NULL, '2023-06-19 12:57:27', '2023-06-19 13:11:08'),
(17, 'App\\Models\\User', 4, 'authToken', '0298de815a2471821ca88d5ef6c609848625188452c1b5d28e6de81c3a3dd603', '[\"*\"]', '2023-06-19 13:19:21', NULL, '2023-06-19 13:14:29', '2023-06-19 13:19:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `sku` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `sku`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Uvas', 1, '1414', '10.00', 'Lorem ipmsu', 'products_images/Vnl12BxL1QKFFjXlkarSgcDUeACoQkPoPexuLnLN.jpg', '2023-06-16 21:38:19', '2023-06-19 13:09:50'),
(3, 'manzana', 1, '1212', '5.00', 'Lorem ipmsu', 'products_images/8KzcV7HMyyJHUit0axTmsJsyTnrndznyo5oaUjIy.jpg', '2023-06-16 22:01:27', '2023-06-16 22:01:27'),
(4, 'consequatur', 12, '69', '45.01', 'In et sunt reiciendis aut aliquid ipsam aut.', 'https://via.placeholder.com/200x200.png/009955?text=recusandae', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(6, 'animi', 42, '28', '33.08', 'Eum autem iure a.', 'https://via.placeholder.com/200x200.png/00ffdd?text=velit', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(7, 'inventore', 48, '91', '27.02', 'Eveniet dolorum aliquid perferendis.', 'https://via.placeholder.com/200x200.png/005599?text=tempore', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(8, 'nemo', 98, '53', '7.32', 'Debitis saepe aut magnam iste voluptatem dolor fugit.', 'https://via.placeholder.com/200x200.png/004455?text=et', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(9, 'explicabo', 72, '2', '81.15', 'Molestiae maiores autem iusto qui et accusamus expedita.', 'https://via.placeholder.com/200x200.png/006699?text=tempore', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(10, 'inventore', 53, '36', '54.04', 'Omnis exercitationem nostrum labore animi.', 'https://via.placeholder.com/200x200.png/003377?text=sunt', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(11, 'dicta', 81, '54', '16.34', 'Velit consequatur nulla minima blanditiis aspernatur adipisci porro.', 'https://via.placeholder.com/200x200.png/00ee11?text=voluptas', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(12, 'tempora', 54, '83', '1.69', 'Reprehenderit dolores incidunt veritatis repellat laboriosam architecto.', 'https://via.placeholder.com/200x200.png/008833?text=ut', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(13, 'nesciunt', 5, '87', '16.24', 'Laboriosam id facere et sit.', 'https://via.placeholder.com/200x200.png/00ee22?text=expedita', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(14, 'blanditiis', 75, '97', '48.59', 'Laudantium non eius culpa sequi architecto voluptas.', 'https://via.placeholder.com/200x200.png/000033?text=adipisci', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(15, 'ut', 99, '91', '7.19', 'Modi consequatur eos qui et.', 'https://via.placeholder.com/200x200.png/0044cc?text=sint', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(16, 'exercitationem', 67, '26', '8.00', 'Possimus suscipit voluptatem est.', 'https://via.placeholder.com/200x200.png/00aa00?text=ea', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(17, 'explicabo', 86, '50', '40.96', 'Assumenda numquam numquam porro velit nulla harum fuga.', 'https://via.placeholder.com/200x200.png/00cc00?text=laudantium', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(18, 'excepturi', 25, '80', '56.74', 'Et excepturi laudantium sequi id animi voluptas voluptas.', 'https://via.placeholder.com/200x200.png/0000dd?text=iste', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(19, 'rerum', 19, '31', '65.79', 'Voluptates laboriosam aliquam nemo sed aut sed.', 'https://via.placeholder.com/200x200.png/00ee44?text=nemo', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(20, 'aut', 37, '91', '77.59', 'Eum laborum dolor cum dolorem praesentium qui.', 'https://via.placeholder.com/200x200.png/0044cc?text=quam', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(21, 'ab', 2, '25', '59.37', 'Ut veniam molestiae perferendis omnis ab.', 'https://via.placeholder.com/200x200.png/005533?text=corrupti', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(22, 'illo', 2, '40', '12.19', 'A illo aut quidem iusto non qui ipsum.', 'https://via.placeholder.com/200x200.png/0011ee?text=quidem', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(23, 'et', 92, '0', '39.64', 'Rerum aliquam aut velit temporibus voluptas hic.', 'https://via.placeholder.com/200x200.png/006622?text=expedita', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(24, 'eum', 16, '17', '20.23', 'Officia velit dolores laborum.', 'https://via.placeholder.com/200x200.png/001155?text=impedit', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(25, 'inventore', 49, '23', '54.27', 'Dolorum dolorem est vitae quis accusantium id.', 'https://via.placeholder.com/200x200.png/003333?text=aut', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(26, 'ea', 13, '78', '56.99', 'Ea quas aut cupiditate quo quasi sed dolor.', 'https://via.placeholder.com/200x200.png/00ffaa?text=pariatur', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(27, 'qui', 3, '3', '97.53', 'Voluptates sit eum sunt repellendus qui voluptate.', 'https://via.placeholder.com/200x200.png/005588?text=sed', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(28, 'ut', 85, '72', '68.24', 'Ipsam eos architecto dolores laborum quam quis.', 'https://via.placeholder.com/200x200.png/005599?text=eius', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(29, 'voluptatum', 88, '53', '51.85', 'Minus dolor temporibus magni voluptatem nemo minima.', 'https://via.placeholder.com/200x200.png/005544?text=libero', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(30, 'dolorum', 86, '74', '31.84', 'Quam occaecati quia asperiores perspiciatis sed voluptate.', 'https://via.placeholder.com/200x200.png/0099dd?text=eum', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(31, 'corporis', 9, '31', '15.33', 'Officiis nesciunt iste voluptatum nulla autem quidem.', 'https://via.placeholder.com/200x200.png/008866?text=dolores', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(32, 'veniam', 91, '72', '90.61', 'Voluptatibus molestias non ducimus sed.', 'https://via.placeholder.com/200x200.png/0099ee?text=perspiciatis', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(33, 'occaecati', 31, '60', '41.36', 'Omnis dolorem et quos sed.', 'https://via.placeholder.com/200x200.png/000011?text=iusto', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(34, 'odit', 98, '59', '50.32', 'Repudiandae velit delectus at non cumque perferendis vel itaque.', 'https://via.placeholder.com/200x200.png/00bbff?text=atque', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(35, 'est', 41, '71', '90.88', 'Iure earum voluptatum et pariatur harum velit.', 'https://via.placeholder.com/200x200.png/000066?text=et', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(36, 'similique', 69, '29', '10.21', 'Et sit et repellendus excepturi laboriosam.', 'https://via.placeholder.com/200x200.png/0066ee?text=distinctio', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(37, 'fugiat', 63, '6', '19.22', 'Alias adipisci impedit repellendus molestiae hic sint tenetur aut.', 'https://via.placeholder.com/200x200.png/009944?text=ipsum', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(38, 'aut', 15, '63', '88.87', 'Magni architecto explicabo nobis ut error alias.', 'https://via.placeholder.com/200x200.png/0066dd?text=voluptas', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(39, 'ipsum', 31, '95', '43.75', 'Harum et molestias ad necessitatibus consequatur sint.', 'https://via.placeholder.com/200x200.png/0066dd?text=rerum', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(40, 'beatae', 65, '98', '99.43', 'Temporibus in recusandae quia sed et sed aut.', 'https://via.placeholder.com/200x200.png/00aa11?text=corporis', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(41, 'accusamus', 64, '61', '95.82', 'Beatae ut qui autem quibusdam harum temporibus rem ut.', 'https://via.placeholder.com/200x200.png/003366?text=ut', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(42, 'ipsum', 88, '99', '13.25', 'Veniam non et in magni.', 'https://via.placeholder.com/200x200.png/00ddaa?text=consectetur', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(43, 'cumque', 79, '78', '95.52', 'Vero odit voluptas et aliquid exercitationem delectus iusto sit.', 'https://via.placeholder.com/200x200.png/0055cc?text=harum', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(44, 'rerum', 70, '23', '97.95', 'Voluptate possimus adipisci quae exercitationem consectetur.', 'https://via.placeholder.com/200x200.png/003322?text=quas', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(45, 'qui', 42, '59', '69.10', 'Accusantium sunt nisi aspernatur accusamus.', 'https://via.placeholder.com/200x200.png/00bb22?text=sit', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(46, 'minima', 27, '64', '57.55', 'Quia et delectus explicabo sed eius.', 'https://via.placeholder.com/200x200.png/007777?text=voluptates', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(47, 'fuga', 12, '28', '30.22', 'Et ratione voluptatum in sed.', 'https://via.placeholder.com/200x200.png/00ffaa?text=ab', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(48, 'velit', 1, '27', '2.20', 'Dolorum ducimus dolorem commodi architecto esse quidem.', 'https://via.placeholder.com/200x200.png/006600?text=vitae', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(49, 'necessitatibus', 23, '25', '2.87', 'Labore molestiae ducimus cumque quis excepturi.', 'https://via.placeholder.com/200x200.png/002244?text=non', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(50, 'aut', 7, '42', '59.78', 'Earum laborum omnis commodi nam id ipsum.', 'https://via.placeholder.com/200x200.png/00bbff?text=in', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(51, 'quia', 57, '9', '60.64', 'Temporibus facere ea quis corrupti natus.', 'https://via.placeholder.com/200x200.png/006611?text=pariatur', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(52, 'et', 62, '84', '2.89', 'Sequi qui qui natus molestias laborum omnis accusantium molestias.', 'https://via.placeholder.com/200x200.png/00bbee?text=velit', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(53, 'omnis', 85, '90', '57.67', 'Culpa sequi tempora perferendis odit.', 'https://via.placeholder.com/200x200.png/0055ee?text=facere', '2023-06-16 22:25:29', '2023-06-16 22:25:29'),
(54, 'Pera', 100, '2450', '2.95', 'Lorem ipmsu dolor sit amet.', NULL, '2023-06-19 12:59:50', '2023-06-19 12:59:50'),
(55, 'Pera', 100, '2450', '2.95', 'Lorem ipmsu dolor sit amet.', NULL, '2023-06-19 13:02:32', '2023-06-19 13:02:32'),
(56, 'Pera', 100, '2450', '2.95', 'Lorem ipmsu dolor sit amet.', NULL, '2023-06-19 13:07:27', '2023-06-19 13:07:27'),
(57, 'Pera', 100, '2450', '2.95', 'Lorem ipmsu dolor sit amet.', NULL, '2023-06-19 13:07:48', '2023-06-19 13:07:48'),
(58, 'Pera', 100, '2450', '2.95', 'Lorem ipmsu dolor sit amet.', 'products_images/gUZzMy6UEvNlfmXYBigbBv1sMk5X41ItXRPMMC45.jpg', '2023-06-19 13:08:12', '2023-06-19 13:08:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(16) NOT NULL,
  `username` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `username`, `birthdate`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Carlos Valle', 'charliealfred2012@gmail.com', 1234567890, 'carlosavb7', '1994-07-07', NULL, '$2y$10$EZcMMSFnq2g5zM1GEW2oA.NWu.reMbu9uhjCgQf1OTO1//Y.nzpuy', NULL, '2023-06-19 12:47:07', '2023-06-19 13:19:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
