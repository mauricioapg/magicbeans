-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jul-2018 às 19:02
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_magicbeans`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_commentmeta`
--

CREATE TABLE `mb_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_commentmeta`
--

INSERT INTO `mb_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 4, 'akismet_error', '1521903469'),
(4, 4, 'akismet_history', 'a:4:{s:4:\"time\";d:1521903469.416486;s:5:\"event\";s:11:\"check-error\";s:4:\"user\";s:4:\"lord\";s:4:\"meta\";a:1:{s:8:\"response\";s:7:\"invalid\";}}'),
(6, 4, 'rating', '4'),
(7, 4, 'verified', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_comments`
--

CREATE TABLE `mb_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_comments`
--

INSERT INTO `mb_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-21 20:54:24', '2018-03-21 23:54:24', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 38, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '::1', '2018-03-22 20:20:52', '2018-03-22 23:20:52', 'Um produto de muita qualidade!', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', 0, 1),
(3, 119, 'WooCommerce', '', '', '', '2018-03-24 11:16:18', '2018-03-24 14:16:18', 'Aguardando pagamento em conta Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(4, 39, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '::1', '2018-03-24 11:57:48', '2018-03-24 14:57:48', 'Recomendo a todos este produto. Ótimo atendimento', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', 0, 1),
(5, 251, 'WooCommerce', '', '', '', '2018-04-07 13:43:48', '2018-04-07 16:43:48', 'O pagamento será efetuado no momento da entrega. Status do pedido alterado de Pagamento pendente para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(6, 252, 'WooCommerce', '', '', '', '2018-04-07 13:57:33', '2018-04-07 16:57:33', 'Aguardando pagamento em conta Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(7, 253, 'WooCommerce', '', '', '', '2018-04-07 15:14:47', '2018-04-07 18:14:47', 'O pagamento será efetuado no momento da entrega. Status do pedido alterado de Pagamento pendente para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(8, 255, 'WooCommerce', '', '', '', '2018-04-07 15:23:30', '2018-04-07 18:23:30', 'O pagamento será efetuado no momento da entrega. Status do pedido alterado de Pagamento pendente para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(9, 256, 'WooCommerce', '', '', '', '2018-04-07 15:34:21', '2018-04-07 18:34:21', 'Pedido cancelado pelo cliente. Status do pedido alterado de Pagamento pendente para Cancelado.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(10, 257, 'WooCommerce', '', '', '', '2018-04-07 15:36:34', '2018-04-07 18:36:34', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(11, 259, 'WooCommerce', '', '', '', '2018-04-07 16:21:47', '2018-04-07 19:21:47', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(12, 259, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:44:28', '2018-04-07 19:44:28', 'Status do pedido alterado de Aguardando para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(13, 258, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:46:10', '2018-04-07 19:46:10', 'Status do pedido alterado de Pagamento pendente para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(14, 258, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:47:17', '2018-04-07 19:47:17', 'Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(15, 260, 'WooCommerce', '', '', '', '2018-04-07 16:52:52', '2018-04-07 19:52:52', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(16, 260, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:56:40', '2018-04-07 19:56:40', 'Status do pedido alterado de Aguardando para Processando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(17, 260, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:57:20', '2018-04-07 19:57:20', 'Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(18, 260, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 16:59:09', '2018-04-07 19:59:09', 'Detalhes do pedido enviados manualmente para o cliente.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(19, 259, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:00:32', '2018-04-07 20:00:32', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(20, 257, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:00:38', '2018-04-07 20:00:38', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Aguardando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(21, 256, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:00:43', '2018-04-07 20:00:43', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Cancelado para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(22, 255, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:00:48', '2018-04-07 20:00:48', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(23, 253, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:00:54', '2018-04-07 20:00:54', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(24, 251, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:01:10', '2018-04-07 20:01:10', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Processando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(25, 250, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:01:18', '2018-04-07 20:01:18', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Pagamento pendente para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(26, 249, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:01:27', '2018-04-07 20:01:27', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Pagamento pendente para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(27, 119, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:01:44', '2018-04-07 20:01:44', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Aguardando para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(28, 116, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:01:53', '2018-04-07 20:01:53', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Pagamento pendente para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(29, 115, 'lord', 'mauricioaparecidogabriel@gmail.com', '', '', '2018-04-07 17:02:02', '2018-04-07 20:02:02', 'Status do pedido alterado por edição em massa: Status do pedido alterado de Pagamento pendente para Concluído.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(30, 312, 'WooCommerce', '', '', '', '2018-05-01 23:07:38', '2018-05-02 02:07:38', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(31, 348, 'WooCommerce', '', '', '', '2018-05-16 00:04:57', '2018-05-16 03:04:57', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(32, 354, 'WooCommerce', '', '', '', '2018-05-18 10:15:56', '2018-05-18 13:15:56', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(33, 364, 'WooCommerce', '', '', '', '2018-05-18 12:30:35', '2018-05-18 15:30:35', 'PagSeguro: O comprador iniciou a transação, mas até o momento o PagSeguro não recebeu nenhuma informação sobre o pagamento. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_links`
--

CREATE TABLE `mb_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_options`
--

CREATE TABLE `mb_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_options`
--

INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/magicbeans', 'yes'),
(2, 'home', 'http://localhost:8080/magicbeans', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'mauricioaparecidogabriel@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:177:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"loja/?$\";s:27:\"index.php?post_type=product\";s:37:\"loja/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"loja/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"loja/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"wds-slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"wds-slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"wds-slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"wds-slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"wds-slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"wds-slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"wds-slider/([^/]+)/embed/?$\";s:43:\"index.php?wds-slider=$matches[1]&embed=true\";s:31:\"wds-slider/([^/]+)/trackback/?$\";s:37:\"index.php?wds-slider=$matches[1]&tb=1\";s:39:\"wds-slider/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?wds-slider=$matches[1]&paged=$matches[2]\";s:46:\"wds-slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?wds-slider=$matches[1]&cpage=$matches[2]\";s:36:\"wds-slider/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?wds-slider=$matches[1]&wc-api=$matches[3]\";s:42:\"wds-slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:53:\"wds-slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:35:\"wds-slider/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?wds-slider=$matches[1]&page=$matches[2]\";s:27:\"wds-slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"wds-slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"wds-slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"wds-slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"wds-slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"wds-slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=74&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:22:{i:1;s:39:\"bling-woocommerce/bling-woocommerce.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:37:\"custom-site-logo/custom-site-logo.php\";i:4;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:5;s:26:\"easycontract/santander.php\";i:6;s:41:\"google-maps-widget/google-maps-widget.php\";i:7;s:37:\"homepage-control/homepage-control.php\";i:8;s:23:\"ml-slider/ml-slider.php\";i:9;s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";i:10;s:23:\"slider-wd/slider-wd.php\";i:11;s:47:\"storefront-footer-bar/storefront-footer-bar.php\";i:12;s:53:\"storefront-header-picker/storefront-header-picker.php\";i:14;s:45:\"storefront-site-logo/storefront-site-logo.php\";i:15;s:63:\"storefront-sticky-add-to-cart/storefront-sticky-add-to-cart.php\";i:16;s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";i:17;s:45:\"woocommerce-correios/woocommerce-correios.php\";i:18;s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";i:19;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:20;s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";i:21;s:45:\"woocommerce-services/woocommerce-services.php\";i:22;s:67:\"woocommerce-simple-registration/woocommerce-simple-registration.php\";i:23;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:65:\"C:\\xampp\\htdocs\\magicbeans/wp-content/plugins/akismet/akismet.php\";i:1;s:65:\"C:\\xampp\\htdocs\\magicbeans/wp-content/themes/storefront/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}s:41:\"google-maps-widget/google-maps-widget.php\";a:2:{i:0;s:3:\"GMW\";i:1;s:9:\"uninstall\";}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:22:\"swpsmtp_send_uninstall\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '74', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '272', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'mb_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:7:\"Cliente\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:15:\"Gerente de loja\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:4;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";}s:9:\"sidebar-1\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:8:\"header-1\";a:1:{i:0;s:19:\"metaslider_widget-2\";}s:8:\"footer-1\";a:1:{i:0;s:18:\"googlemapswidget-2\";}s:8:\"footer-2\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:18:\"sfsi-plus-widget-3\";}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:12:\"footer-bar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:200;s:3:\"url\";s:82:\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/pagseguro-1024x171.png\";s:5:\"title\";s:19:\"Formas de pagamento\";s:4:\"size\";s:5:\"large\";s:5:\"width\";i:980;s:6:\"height\";i:164;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:6:{s:5:\"title\";s:0:\"\";s:3:\"ids\";a:5:{i:0;i:73;i:1;i:72;i:2;i:36;i:3;i:35;i:4;i:24;}s:7:\"columns\";i:3;s:4:\"size\";s:4:\"full\";s:9:\"link_type\";s:4:\"none\";s:14:\"orderby_random\";b:0;}}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:2:{i:3;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1531590229;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1531590965;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1531594508;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531605308;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531612466;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531612550;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531614208;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531623600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531670108;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531670119;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533600000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521676658;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Storefront', 'yes'),
(141, 'theme_mods_di-blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521677015;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar_page\";a:0:{}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'widget_di_blog_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'recently_activated', 'a:2:{s:57:\"storefront-product-sharing/storefront-product-sharing.php\";i:1531583892;s:19:\"akismet/akismet.php\";i:1531583459;}', 'yes'),
(147, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'woocommerce_store_address', 'Rua Padre Viegas de Menezes, 272', 'yes'),
(157, 'woocommerce_store_address_2', '', 'yes'),
(158, 'woocommerce_store_city', 'São Paulo', 'yes'),
(159, 'woocommerce_default_country', 'BR:SP', 'yes'),
(160, 'woocommerce_store_postcode', '08220-510', 'yes'),
(161, 'woocommerce_allowed_countries', 'all', 'yes'),
(162, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(163, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_ship_to_countries', '', 'yes'),
(165, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(166, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(167, 'woocommerce_calc_taxes', 'yes', 'yes'),
(168, 'woocommerce_currency', 'BRL', 'yes'),
(169, 'woocommerce_currency_pos', 'left', 'yes'),
(170, 'woocommerce_price_thousand_sep', '.', 'yes'),
(171, 'woocommerce_price_decimal_sep', ',', 'yes'),
(172, 'woocommerce_price_num_decimals', '2', 'yes'),
(173, 'woocommerce_shop_page_id', '5', 'yes'),
(174, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(175, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(176, 'woocommerce_weight_unit', 'kg', 'yes'),
(177, 'woocommerce_dimension_unit', 'cm', 'yes'),
(178, 'woocommerce_enable_reviews', 'yes', 'yes'),
(179, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(180, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(181, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(182, 'woocommerce_review_rating_required', 'yes', 'no'),
(183, 'woocommerce_manage_stock', 'yes', 'yes'),
(184, 'woocommerce_hold_stock_minutes', '60', 'no'),
(185, 'woocommerce_notify_low_stock', 'yes', 'no'),
(186, 'woocommerce_notify_no_stock', 'yes', 'no'),
(187, 'woocommerce_stock_email_recipient', 'mauricioaparecidogabriel@gmail.com', 'no'),
(188, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(189, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(190, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(191, 'woocommerce_stock_format', '', 'yes'),
(192, 'woocommerce_file_download_method', 'force', 'no'),
(193, 'woocommerce_downloads_require_login', 'no', 'no'),
(194, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(195, 'woocommerce_prices_include_tax', 'no', 'yes'),
(196, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(197, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(198, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(199, 'woocommerce_tax_classes', 'Taxa reduzida\r\nTaxa zero', 'yes'),
(200, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(201, 'woocommerce_tax_display_cart', 'excl', 'no'),
(202, 'woocommerce_price_display_suffix', '', 'yes'),
(203, 'woocommerce_tax_total_display', 'itemized', 'no'),
(204, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(205, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(206, 'woocommerce_ship_to_destination', 'billing', 'no'),
(207, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(208, 'woocommerce_enable_coupons', 'yes', 'yes'),
(209, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(210, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(211, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(212, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(213, 'woocommerce_cart_page_id', '6', 'yes'),
(214, 'woocommerce_checkout_page_id', '7', 'yes'),
(215, 'woocommerce_terms_page_id', '', 'no'),
(216, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(217, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(218, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(219, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(220, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(221, 'woocommerce_myaccount_page_id', '8', 'yes'),
(222, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(223, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(224, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(225, 'woocommerce_registration_generate_username', 'no', 'no'),
(226, 'woocommerce_registration_generate_password', 'no', 'no'),
(227, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(228, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(229, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(230, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(231, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(232, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(233, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(234, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(235, 'woocommerce_email_from_name', 'Magic Beans Store', 'no'),
(236, 'woocommerce_email_from_address', 'mauricioaparecidogabriel@gmail.com', 'no'),
(237, 'woocommerce_email_header_image', '', 'no'),
(238, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(239, 'woocommerce_email_base_color', '#808a79', 'no'),
(240, 'woocommerce_email_background_color', '#d2cfcf', 'no'),
(241, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(242, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(243, 'woocommerce_api_enabled', 'yes', 'yes'),
(245, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(249, 'widget_di-blog-widget-recent-posts-thumb', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(253, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:\"title\";s:8:\"Carrinho\";s:13:\"hide_if_empty\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(256, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:21:\"Categorias de produto\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:1;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_tag_cloud', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(260, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:\"title\";s:28:\"Produtos vistos recentemente\";s:6:\"number\";i:10;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_recent_reviews', 'a:2:{i:3;a:2:{s:5:\"title\";s:21:\"Avaliações recentes\";s:6:\"number\";i:10;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:11:\"produto-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(266, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(267, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(268, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(270, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(282, 'theme_mods_estore', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:16;s:6:\"header\";i:0;s:9:\"secondary\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"ffffff\";s:20:\"estore_header_ac_btn\";s:0:\"\";s:12:\"header_image\";s:13:\"remove-header\";s:29:\"estore_header_media_placement\";s:28:\"header_media_below_main_menu\";s:11:\"custom_logo\";i:68;s:21:\"estore_logo_placement\";s:16:\"header_logo_only\";s:21:\"estore_bar_activation\";s:0:\"\";s:20:\"estore_primary_color\";s:7:\"#74ff0c\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521904262;s:4:\"data\";a:12:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";}s:20:\"estore_sidebar_right\";a:4:{i:0;s:28:\"woocommerce_product_search-2\";i:1;s:25:\"woocommerce_widget_cart-2\";i:2;s:32:\"woocommerce_product_categories-2\";i:3;s:6:\"meta-6\";}s:19:\"estore_sidebar_left\";a:0:{}s:21:\"estore_sidebar_header\";a:0:{}s:21:\"estore_sidebar_slider\";a:0:{}s:28:\"estore_sidebar_slider_beside\";a:0:{}s:20:\"estore_sidebar_front\";a:0:{}s:22:\"estore_footer_sidebar1\";a:1:{i:0;s:18:\"googlemapswidget-2\";}s:22:\"estore_footer_sidebar2\";a:0:{}s:22:\"estore_footer_sidebar3\";a:0:{}s:22:\"estore_footer_sidebar4\";a:0:{}s:26:\"estore_woocommerce_sidebar\";a:0:{}}}}', 'yes'),
(283, 'widget_estore_728x90_ad', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_estore_about', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_estore_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_estore_logo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_estore_featured_posts_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_estore_featured_posts_carousel_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_estore_posts_grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_estore_vertical_promo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_estore_full_width_promo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_estore_woocommerce_full_width_promo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_estore_woocommerce_product_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_estore_woocommerce_product_grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(295, 'widget_estore_woocommerce_product_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_estore_woocommerce_vertical_promo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(300, 'estore_admin_notice_welcome', '1', 'yes'),
(301, '_transient_shipping-transient-version', '1523064348', 'yes'),
(309, 'default_product_cat', '15', 'yes'),
(317, 'woocommerce_product_type', 'both', 'yes'),
(318, 'woocommerce_allow_tracking', 'yes', 'yes'),
(319, 'woocommerce_tracker_last_send', '1531435317', 'yes'),
(325, 'woocommerce_ppec_paypal_settings', 'a:33:{s:7:\"enabled\";s:2:\"no\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:5:\"title\";s:23:\"PayPal Express Checkout\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:11:\"environment\";s:4:\"live\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:23:\"sandbox_api_certificate\";s:0:\"\";s:19:\"sandbox_api_subject\";s:0:\"\";s:10:\"brand_name\";s:17:\"Magic Beans Store\";s:11:\"button_size\";s:5:\"large\";s:21:\"cart_checkout_enabled\";s:3:\"yes\";s:12:\"mark_enabled\";s:2:\"no\";s:14:\"logo_image_url\";s:0:\"\";s:16:\"header_image_url\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:12:\"landing_page\";s:5:\"Login\";s:14:\"credit_enabled\";s:2:\"no\";s:34:\"checkout_on_single_product_enabled\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:15:\"require_billing\";s:2:\"no\";s:20:\"require_phone_number\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:16:\"instant_payments\";s:2:\"no\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";}', 'yes'),
(326, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(327, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:31:\"Transferência bancária direta\";s:11:\"description\";s:251:\"Faça seu pagamento diretamente em nossa conta bancária. Se possível informe o ID do seu pedido como identificação do seu depósito ou transferência. Para pagamentos via DOC, seu pedido não será enviado enquanto o pagamento não for compensado.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(328, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Pagamento na entrega\";s:11:\"description\";s:29:\"Pagar em dinheiro na entrega.\";s:12:\"instructions\";s:29:\"Pagar em dinheiro na entrega.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(340, 'wc_ppec_version', '1.6.1', 'yes'),
(344, 'do_activate', '0', 'yes'),
(352, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(360, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(366, '_transient_product_query-transient-version', '1531587141', 'yes'),
(371, '_transient_product-transient-version', '1531587141', 'yes'),
(386, 'woocommerce_shop_page_display', '', 'yes'),
(387, 'woocommerce_category_archive_display', '', 'yes'),
(404, 'wds_global_options', '{\"default_layer_fweight\":\"normal\",\"default_layer_start\":1000,\"default_layer_effect_in\":\"none\",\"default_layer_duration_eff_in\":1000,\"default_layer_infinite_in\":1,\"default_layer_end\":3000,\"default_layer_effect_out\":\"none\",\"default_layer_duration_eff_out\":1000,\"default_layer_infinite_out\":1,\"default_layer_add_class\":\"\",\"default_layer_ffamily\":\"arial\",\"default_layer_google_fonts\":0,\"loading_gif\":0,\"register_scripts\":0,\"spider_uploader\":0,\"possib_add_ffamily\":\"\",\"possib_add_ffamily_google\":\"\"}', 'yes'),
(405, 'wds_version', '1.2.13', 'no'),
(406, 'wds_version_1.0.46', '1', 'no'),
(407, 'wds_theme_version', '1.0.0', 'no'),
(408, 'widget_wdslider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(409, 'wds_admin_notice', 'a:1:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:9:\"5/29/2018\";s:3:\"int\";i:14;s:9:\"dismissed\";i:1;}}', 'yes'),
(410, 'wds_subscribe_done', '1', 'yes'),
(411, 'wds_io_notice_status', '1', 'no'),
(416, 'woocommerce_pagseguro_settings', 'a:20:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:9:\"PagSeguro\";s:11:\"description\";s:45:\"Pagamento com cartões de crédito e débito.\";s:11:\"integration\";s:0:\"\";s:6:\"method\";s:11:\"transparent\";s:7:\"sandbox\";s:2:\"no\";s:5:\"email\";s:23:\"maparecido92@bol.com.br\";s:5:\"token\";s:32:\"EEA45DD2C7C94E6E9911D5D1E7850ED7\";s:13:\"sandbox_email\";s:23:\"maparecido92@bol.com.br\";s:13:\"sandbox_token\";s:32:\"0DCDBEC274974C26BB8EDFFD777997E4\";s:20:\"transparent_checkout\";s:0:\"\";s:9:\"tc_credit\";s:3:\"yes\";s:11:\"tc_transfer\";s:3:\"yes\";s:9:\"tc_ticket\";s:3:\"yes\";s:17:\"tc_ticket_message\";s:3:\"yes\";s:8:\"behavior\";s:0:\"\";s:15:\"send_only_total\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(441, 'woocommerce_tracker_ua', 'a:4:{i:0;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36\";i:1;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.139 safari/537.36\";i:2;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36\";i:3;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";}', 'yes'),
(467, 'theme_mods_storefront', 'a:34:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:16;s:9:\"secondary\";i:20;s:8:\"handheld\";i:0;}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #74ff0c;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #757575;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #74ff0c;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #74ff0c;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #74ff0c;\n				border-color: #74ff0c;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #5be600;\n				border-color: #5be600;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #828282;\n				color: #ffffff;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #0c0c0c;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #8e8e8e;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #757575;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #65f000;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #6af502;\n				}\n\n				.site-header {\n					border-bottom-color: #65f000;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #74ff0c;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #5be600;\n				border-color: #5be600;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #74ff0c;\n			}\n\n			.button.loading:hover {\n				background-color: #74ff0c;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #757575;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"ffffff\";s:34:\"storefront_button_background_color\";s:7:\"#74ff0c\";s:28:\"storefront_button_text_color\";s:7:\"#333333\";s:38:\"storefront_button_alt_background_color\";s:7:\"#333333\";s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:7:\"default\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:15:\"background_size\";s:4:\"auto\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:6:\"scroll\";s:34:\"storefront_header_background_color\";s:7:\"#74ff0c\";s:28:\"storefront_header_text_color\";s:7:\"#757575\";s:28:\"storefront_header_link_color\";s:7:\"#333333\";s:12:\"header_image\";s:13:\"remove-header\";s:20:\"sfb_background_color\";s:7:\"#2c2d33\";s:14:\"sfb_text_color\";s:7:\"#9aa0a7\";s:34:\"storefront_footer_background_color\";s:7:\"#828282\";s:31:\"storefront_footer_heading_color\";s:7:\"#0c0c0c\";s:28:\"storefront_footer_text_color\";s:7:\"#ffffff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1526650796;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";}s:9:\"sidebar-1\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:8:\"header-1\";a:1:{i:0;s:19:\"metaslider_widget-2\";}s:8:\"footer-1\";a:2:{i:0;s:6:\"text-3\";i:1;s:18:\"googlemapswidget-2\";}s:8:\"footer-2\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:18:\"sfsi-plus-widget-3\";}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:12:\"footer-bar-1\";a:0:{}}}s:21:\"woa_shp_header_picker\";s:7:\"compact\";s:31:\"woa_shp_hide_product_search_bar\";b:0;s:26:\"woa_shp_hide_cart_dropdown\";b:0;s:18:\"woa_sf_enable_logo\";s:8:\"logo_img\";s:11:\"woa_sf_logo\";s:100:\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/logo_magic_beans_cabecalho_original2.png\";s:16:\"homepage_control\";s:212:\"storefront_homepage_content,[disabled]storefront_product_categories,storefront_recent_products,storefront_featured_products,storefront_popular_products,storefront_on_sale_products,storefront_best_selling_products\";s:11:\"custom_logo\";i:373;}', 'yes'),
(468, 'storefront_nux_fresh_site', '0', 'yes'),
(469, 'woocommerce_catalog_rows', '4', 'yes'),
(470, 'woocommerce_catalog_columns', '3', 'yes'),
(486, 'storefront_nux_dismissed', '1', 'yes'),
(489, 'storefront_nux_guided_tour', '1', 'yes'),
(592, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:-1821685917;s:17:\"WP_POST_REVISIONS\";i:-33796979;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:-1967523854;s:14:\"WP_CONTENT_DIR\";i:-1580081977;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:1407263838;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:-300109018;s:11:\"PHP_VERSION\";i:1527508228;s:15:\"WP_MEMORY_LIMIT\";i:-1229557325;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1474498405;s:14:\"WC_PLUGIN_FILE\";i:1883103314;s:10:\"WC_ABSPATH\";i:-1600229793;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:-2024366821;s:19:\"WOOCOMMERCE_VERSION\";i:-2024366821;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:-2082672713;s:12:\"WC_DELIMITER\";i:-1839055742;s:10:\"WC_LOG_DIR\";i:49188997;s:22:\"WC_SESSION_CACHE_GROUP\";i:-15988308;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(595, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:\"http\";}', 'yes'),
(596, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(597, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(629, 'jetpack_callables_sync_checksum', 'a:29:{s:18:\"wp_max_upload_size\";i:677931734;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:300565182;s:8:\"site_url\";i:300565182;s:8:\"home_url\";i:300565182;s:16:\"single_user_site\";i:-33796979;s:7:\"updates\";i:-869524094;s:28:\"has_file_system_write_access\";i:-33796979;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:19643048;s:10:\"post_types\";i:-2066523156;s:18:\"post_type_features\";i:985675184;s:10:\"shortcodes\";i:-1682543788;s:27:\"rest_api_allowed_post_types\";i:-13528774;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:-33796979;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:-168931897;s:11:\"get_plugins\";i:1535409446;s:24:\"get_plugins_action_links\";i:223132457;s:14:\"active_modules\";i:223132457;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:2141422701;s:13:\"site_icon_url\";i:935749396;s:5:\"roles\";i:498140688;}', 'no'),
(630, 'jpsq_sync_checkout', '0:0', 'no'),
(658, 'storefront-product-sharing-version', '1.0.5', 'yes'),
(663, 'storefront-sticky-add-to-cart-version', '1.1.8', 'yes'),
(666, 'storefront-footer-bar-version', '1.0.3', 'yes'),
(680, '_transient_orders-transient-version', '1531584590', 'yes'),
(702, 'santander_installation_date', '2018-03-22 23:35', 'yes'),
(730, 'inlocation_googleapi', 'AIzaSyAlR50NgOIA3bGc6kgddMGoU_gOXfCkSUQ', 'yes'),
(757, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1521756838;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(784, 'new_admin_email', 'mauricioaparecidogabriel@gmail.com', 'yes'),
(798, 'woocommerce_simple_registration_register_page', '8', 'yes'),
(799, 'woocommerce_simple_registration_name_fields', 'yes', 'yes'),
(800, 'woocommerce_simple_registration_name_fields_required', 'no', 'yes'),
(861, 'wp_email_smtp_option_name', 'a:9:{s:10:\"from_email\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:9:\"from_name\";s:8:\"Mauricio\";s:6:\"mailer\";s:4:\"smtp\";s:9:\"smtp_host\";s:14:\"smtp.gmail.com\";s:9:\"smtp_port\";s:3:\"465\";s:15:\"smtp_encryption\";s:3:\"ssl\";s:19:\"smtp_authentication\";s:4:\"true\";s:13:\"smtp_username\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:13:\"smtp_password\";s:15:\"mauricioapg0592\";}', 'yes'),
(907, 'wcbcf_settings', 'a:7:{s:11:\"person_type\";i:1;s:10:\"cell_phone\";i:1;s:9:\"mailcheck\";i:1;s:11:\"maskedinput\";i:1;s:15:\"addresscomplete\";i:1;s:12:\"validate_cpf\";i:1;s:13:\"validate_cnpj\";i:1;}', 'yes'),
(908, 'wcbcf_version', '3.6.1', 'yes'),
(911, 'wc_gateway_ppce_prompt_to_connect', 'PayPal Checkout is almost ready. To get started, <a href=\"http://localhost:8080/magicbeans/wp-admin/admin.php?page=wc-settings&#038;tab=checkout&#038;section=ppec_paypal\">connect your PayPal account</a>.', 'yes'),
(912, 'wc_gateway_ppec_prompt_to_connect_message_dismissed', 'yes', 'yes'),
(913, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:16:\"Mauricio Gabriel\";s:14:\"account_number\";s:7:\"03314-7\";s:9:\"bank_name\";s:5:\"Itaú\";s:9:\"sort_code\";s:4:\"5590\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(965, 'gmw_options', 'a:20:{s:6:\"sc_map\";s:3:\"gmw\";s:7:\"api_key\";s:0:\"\";s:8:\"track_ga\";s:1:\"0\";s:14:\"include_jquery\";s:1:\"1\";s:17:\"include_gmaps_api\";s:1:\"1\";s:19:\"include_lightbox_js\";s:1:\"1\";s:20:\"include_lightbox_css\";s:1:\"1\";s:16:\"disable_tooltips\";s:1:\"0\";s:15:\"disable_sidebar\";s:1:\"0\";s:15:\"activation_code\";s:0:\"\";s:14:\"license_active\";s:0:\"\";s:15:\"license_expires\";s:0:\"\";s:12:\"license_type\";s:0:\"\";s:13:\"first_version\";s:4:\"3.83\";s:13:\"first_install\";d:1521892889;s:13:\"last_tracking\";b:0;s:17:\"first_install_gmt\";i:1521903689;s:23:\"dismiss_notice_upgrade2\";b:1;s:19:\"dismiss_notice_rate\";b:1;s:22:\"dismiss_notice_olduser\";b:1;}', 'yes'),
(968, 'widget_googlemapswidget', 'a:2:{i:2;a:31:{s:5:\"title\";s:13:\"Localização\";s:7:\"address\";s:31:\"Rua São Félix do Piauí, 1185\";s:14:\"thumb_pin_type\";s:10:\"predefined\";s:15:\"thumb_pin_color\";s:7:\"#ff0000\";s:14:\"thumb_pin_size\";s:7:\"default\";s:15:\"thumb_pin_label\";s:1:\"A\";s:13:\"thumb_pin_img\";s:0:\"\";s:11:\"thumb_width\";i:350;s:12:\"thumb_height\";i:350;s:10:\"thumb_zoom\";s:2:\"13\";s:10:\"thumb_type\";s:7:\"roadmap\";s:15:\"thumb_link_type\";s:8:\"lightbox\";s:10:\"thumb_link\";s:0:\"\";s:12:\"thumb_header\";s:0:\"\";s:12:\"thumb_footer\";s:0:\"\";s:18:\"thumb_color_scheme\";s:3:\"new\";s:12:\"thumb_format\";s:3:\"png\";s:10:\"thumb_lang\";s:2:\"en\";s:16:\"thumb_powered_by\";s:1:\"0\";s:19:\"lightbox_fullscreen\";i:0;s:14:\"lightbox_width\";i:550;s:15:\"lightbox_height\";i:550;s:13:\"lightbox_mode\";s:5:\"place\";s:17:\"lightbox_map_type\";s:7:\"roadmap\";s:13:\"lightbox_zoom\";s:2:\"14\";s:16:\"lightbox_feature\";a:1:{i:0;s:13:\"overlay_close\";}s:15:\"lightbox_header\";s:0:\"\";s:15:\"lightbox_footer\";s:0:\"\";s:13:\"lightbox_skin\";s:5:\"light\";s:13:\"lightbox_lang\";s:2:\"en\";s:8:\"core_ver\";s:4:\"3.85\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1115, 'widget_sp_widget_post_slider', 'a:2:{i:2;a:3:{s:5:\"title\";s:18:\"Widget Post Slider\";s:8:\"cat_name\";s:3:\"all\";s:5:\"count\";s:1:\"5\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1158, 'widget_metaslider_widget', 'a:2:{i:2;a:2:{s:9:\"slider_id\";s:0:\"\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1161, 'ms_hide_all_ads_until', '1530620696', 'yes'),
(1162, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(1166, 'metaslider_tour_cancelled_on', 'step_add_slide', 'yes'),
(1175, 'theme_mods_storemax', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522029070;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:13:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:19:\"metaslider_widget-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:28:\"woocommerce_product_search-2\";i:1;s:25:\"woocommerce_widget_cart-2\";i:2;s:32:\"woocommerce_product_categories-2\";i:3;s:6:\"meta-6\";}s:18:\"footer_widget_area\";a:1:{i:0;s:18:\"googlemapswidget-2\";}}}}', 'yes'),
(1272, 'theme_mods_thestore', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522801081;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:13:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:19:\"metaslider_widget-2\";}s:22:\"maxstore-right-sidebar\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:21:\"maxstore-left-sidebar\";a:0:{}s:20:\"maxstore-footer-area\";a:1:{i:0;s:18:\"googlemapswidget-2\";}}}}', 'yes'),
(1275, 'theme_mods_istore', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522801023;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:13:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:19:\"metaslider_widget-2\";}s:22:\"maxstore-right-sidebar\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:21:\"maxstore-left-sidebar\";a:0:{}s:20:\"maxstore-footer-area\";a:1:{i:0;s:18:\"googlemapswidget-2\";}}}}', 'yes'),
(1356, 'far_plugin_settings', 'a:2:{s:7:\"farfind\";a:1:{i:1;s:209:\"&copy;  2018						<br />\n						<a href=\"https://woocommerce.com\" target=\"_blank\" title=\"WooCommerce - A melhor plataforma de e-commerce para WordPress\" rel=\"author\">Construído com Storefront e WooCommerce</a>\";}s:10:\"farreplace\";a:1:{i:1;s:74:\"Copyright © 2018 - <strong>Desenvolvido por Mauricio Ap. Gabriel</strong>\";}}', 'yes'),
(1387, 'homepage-control_version', '2.0.3', 'yes'),
(1429, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531435308;}', 'no'),
(1436, 'ms_hide_spring2018_ads_until', '7570194048', 'yes'),
(1482, 'theme_mods_maxstore', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522801051;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:13:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:19:\"metaslider_widget-2\";}s:22:\"maxstore-right-sidebar\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:21:\"maxstore-left-sidebar\";a:0:{}s:20:\"maxstore-footer-area\";a:1:{i:0;s:18:\"googlemapswidget-2\";}}}}', 'yes'),
(1665, 'storefront_header_picker-version', '1.0.0', 'yes'),
(1670, 'storefront-footer-text-version', '1.0.0', 'yes'),
(1677, 'storefront-site-logo-version', '1.2.0', 'yes'),
(1684, 'wc_stripe_version', '4.0.7', 'yes'),
(1697, 'swpsmtp_options', 'a:8:{s:16:\"from_email_field\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:15:\"from_name_field\";s:17:\"Magic Beans Store\";s:23:\"force_from_name_replace\";i:1;s:13:\"smtp_settings\";a:8:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:8:\"password\";s:20:\"bWF1cmljaW9hcGcwNTky\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";i:1;}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";s:14:\"reply_to_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(1698, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:23:\"maparecido92@bol.com.br\";s:15:\"swpsmtp_subject\";s:5:\"teste\";s:15:\"swpsmtp_message\";s:142:\"Esta é uma mensagem de teste para saber se  formulário de solicitação de produtos personalizado já está devidamente pronto e funcionando\";}', 'yes'),
(1843, 'widget_sfsi-widget', 'a:2:{i:2;a:2:{s:5:\"showf\";i:1;s:5:\"title\";s:26:\"Siga-nos nas redes sociais\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1872, 'acx_fsmi_si_current_version', '4.2.9', 'yes'),
(1873, 'acx_fsmi_next_date', '1525653418', 'yes'),
(1874, 'acx_si_td', 'show', 'yes'),
(1875, 'widget_acx-social-icons-widget', 'a:2:{i:2;a:4:{s:5:\"title\";s:18:\"Social Media Icons\";s:9:\"icon_size\";s:2:\"32\";s:10:\"icon_theme\";s:1:\"1\";s:10:\"icon_align\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1876, 'acx_si_installed_date', '1523061525', 'yes'),
(1877, 'social_icon_array_order', 's:102:\"a:8:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"7\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:1:\"5\";i:7;s:1:\"6\";}\";', 'yes'),
(1878, 'acx_si_theme', '1', 'yes'),
(1879, 'acx_si_icon_size', '32', 'yes'),
(1880, 'acx_si_twitter', '', 'yes'),
(1881, 'acx_si_facebook', '', 'yes'),
(1882, 'acx_si_gplus', '', 'yes'),
(1883, 'acx_si_pinterest', '', 'yes'),
(1884, 'acx_si_youtube', '', 'yes'),
(1885, 'acx_si_linkedin', '', 'yes'),
(1886, 'acx_si_feed', '', 'yes'),
(1887, 'acx_si_instagram', '', 'yes'),
(1888, 'acx_si_display', 'both', 'yes'),
(1889, 'acx_si_credit', 'yes', 'yes'),
(1895, 'widget_widget-wpusb', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1896, 'widget_widget-wpusb-follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1904, 'fs_active_plugins', 'O:8:\"stdClass\":2:{s:7:\"plugins\";a:1:{s:35:\"ultimate-social-media-plus/freemius\";O:8:\"stdClass\":3:{s:7:\"version\";s:9:\"1.2.1.6.1\";s:9:\"timestamp\";i:1523062871;s:11:\"plugin_path\";s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";}}s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:8:\"sdk_path\";s:35:\"ultimate-social-media-plus/freemius\";s:7:\"version\";s:9:\"1.2.1.6.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1523062871;}}', 'yes'),
(1905, 'fs_debug_mode', '', 'yes'),
(1906, 'fs_accounts', 'a:4:{s:11:\"plugin_data\";a:1:{s:26:\"ultimate-social-media-plus\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:104:\"C:/xampp/htdocs/magicbeans/wp-content/plugins/ultimate-social-media-plus/ultimate_social_media_icons.php\";}s:17:\"install_timestamp\";i:1523062871;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";s:5:\"2.8.4\";s:14:\"plugin_version\";s:5:\"2.8.9\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8080\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1523062871;s:7:\"version\";s:5:\"2.8.0\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1523062895;s:7:\"version\";s:5:\"2.8.0\";}}}s:13:\"file_slug_map\";a:1:{s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:26:\"ultimate-social-media-plus\";}s:7:\"plugins\";a:1:{s:26:\"ultimate-social-media-plus\";O:9:\"FS_Plugin\":16:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:26:\"Ultimate Social Media PLUS\";s:4:\"slug\";s:26:\"ultimate-social-media-plus\";s:4:\"type\";N;s:4:\"file\";s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:7:\"version\";s:5:\"2.8.9\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_716f722d8ecd3d70a5c60177306c1\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1046\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}s:9:\"unique_id\";s:32:\"c1ef71b3761d55beb28aa06b6aace71a\";}', 'yes'),
(1907, 'fs_api_cache', 'a:0:{}', 'yes'),
(1910, 'sfsi_plus_new_show_notification', 'no', 'yes'),
(1911, 'sfsi_plus_show_premium_cumulative_count_notification', 'yes', 'yes'),
(1912, 'sfsi_plus_section1_options', 's:542:\"a:13:{s:21:\"sfsi_plus_rss_display\";s:2:\"no\";s:23:\"sfsi_plus_email_display\";s:2:\"no\";s:26:\"sfsi_plus_facebook_display\";s:3:\"yes\";s:25:\"sfsi_plus_twitter_display\";s:2:\"no\";s:24:\"sfsi_plus_google_display\";s:2:\"no\";s:23:\"sfsi_plus_share_display\";s:2:\"no\";s:25:\"sfsi_plus_youtube_display\";s:2:\"no\";s:27:\"sfsi_plus_pinterest_display\";s:2:\"no\";s:26:\"sfsi_plus_linkedin_display\";s:2:\"no\";s:27:\"sfsi_plus_instagram_display\";s:3:\"yes\";s:23:\"sfsi_plus_houzz_display\";s:2:\"no\";s:17:\"sfsi_custom_files\";s:0:\"\";s:27:\"sfsi_plus_premium_icons_box\";s:2:\"no\";}\";', 'yes'),
(1913, 'sfsi_plus_section2_options', 's:2249:\"a:43:{s:17:\"sfsi_plus_rss_url\";s:0:\"\";s:17:\"sfsi_rss_blogName\";s:0:\"\";s:18:\"sfsi_rss_blogEmail\";s:0:\"\";s:19:\"sfsi_plus_rss_icons\";s:0:\"\";s:19:\"sfsi_plus_email_url\";s:296:\"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/cUpDWnNkOTM0UTJqTUNhQlJsN1RDUlk5dEQxM3k2ZU1vNWlBUnhQcDFmTE55TWNiYWgvRjJ5TzFYV3RLbWNKS3IyZmQ1VVF4WndQOEJZaFVFeVN2eUlJaW53WXluVFkxSnh1eWlRYVhiYWpNWFF0N2dwckM0K2lidFZuREFtQlV8WU9qYmlzMFBEZWp3MjFTbGNwcU1SdXR5R1kvYUE0MFFkcHBDakk5ZzZYQT0=/OA==\";s:29:\"sfsi_plus_facebookPage_option\";s:3:\"yes\";s:26:\"sfsi_plus_facebookPage_url\";s:41:\"https://www.facebook.com/magicbeansstore/\";s:29:\"sfsi_plus_facebookLike_option\";s:2:\"no\";s:30:\"sfsi_plus_facebookShare_option\";s:2:\"no\";s:26:\"sfsi_plus_twitter_followme\";s:0:\"\";s:32:\"sfsi_plus_twitter_followUserName\";s:0:\"\";s:27:\"sfsi_plus_twitter_aboutPage\";s:0:\"\";s:22:\"sfsi_plus_twitter_page\";s:0:\"\";s:25:\"sfsi_plus_twitter_pageURL\";s:0:\"\";s:31:\"sfsi_plus_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:21:\"sfsi_plus_google_page\";s:0:\"\";s:24:\"sfsi_plus_google_pageURL\";s:0:\"\";s:27:\"sfsi_plus_googleLike_option\";s:0:\"\";s:28:\"sfsi_plus_googleShare_option\";s:0:\"\";s:25:\"sfsi_plus_youtube_pageUrl\";s:0:\"\";s:22:\"sfsi_plus_youtube_page\";s:0:\"\";s:24:\"sfsi_plus_youtube_follow\";s:0:\"\";s:20:\"sfsi_plus_ytube_user\";s:0:\"\";s:29:\"sfsi_plus_youtubeusernameorid\";s:4:\"name\";s:22:\"sfsi_plus_ytube_chnlid\";s:0:\"\";s:24:\"sfsi_plus_pinterest_page\";s:0:\"\";s:27:\"sfsi_plus_pinterest_pageUrl\";s:0:\"\";s:28:\"sfsi_plus_pinterest_pingBlog\";s:0:\"\";s:27:\"sfsi_plus_instagram_pageUrl\";s:39:\"https://www.instagram.com/mbeansdotcom/\";s:23:\"sfsi_plus_houzz_pageUrl\";s:0:\"\";s:23:\"sfsi_plus_linkedin_page\";s:0:\"\";s:26:\"sfsi_plus_linkedin_pageURL\";s:0:\"\";s:25:\"sfsi_plus_linkedin_follow\";s:0:\"\";s:32:\"sfsi_plus_linkedin_followCompany\";i:0;s:28:\"sfsi_plus_linkedin_SharePage\";s:0:\"\";s:35:\"sfsi_plus_linkedin_recommendBusines\";s:2:\"no\";s:35:\"sfsi_plus_linkedin_recommendCompany\";s:0:\"\";s:37:\"sfsi_plus_linkedin_recommendProductId\";i:0;s:26:\"sfsi_plus_CustomIcon_links\";s:0:\"\";s:27:\"sfsi_plus_premium_email_box\";s:2:\"no\";s:30:\"sfsi_plus_premium_facebook_box\";s:2:\"no\";s:29:\"sfsi_plus_premium_twitter_box\";s:2:\"no\";s:28:\"sfsi_plus_premium_google_box\";s:2:\"no\";}\";', 'yes'),
(1914, 'sfsi_plus_section3_options', 's:699:\"a:15:{s:23:\"sfsi_plus_actvite_theme\";s:4:\"flat\";s:19:\"sfsi_plus_mouseOver\";s:2:\"no\";s:26:\"sfsi_plus_mouseOver_effect\";s:7:\"fade_in\";s:23:\"sfsi_plus_shuffle_icons\";s:2:\"no\";s:27:\"sfsi_plus_shuffle_Firstload\";s:2:\"no\";s:26:\"sfsi_plus_shuffle_interval\";s:2:\"no\";s:30:\"sfsi_plus_shuffle_intervalTime\";i:0;s:31:\"sfsi_plus_specialIcon_animation\";s:0:\"\";s:31:\"sfsi_plus_specialIcon_MouseOver\";s:2:\"no\";s:31:\"sfsi_plus_specialIcon_Firstload\";s:2:\"no\";s:37:\"sfsi_plus_specialIcon_Firstload_Icons\";s:3:\"all\";s:30:\"sfsi_plus_specialIcon_interval\";s:2:\"no\";s:34:\"sfsi_plus_specialIcon_intervalTime\";s:0:\"\";s:35:\"sfsi_plus_specialIcon_intervalIcons\";s:3:\"all\";s:34:\"sfsi_plus_premium_icons_design_box\";s:2:\"no\";}\";', 'yes'),
(1915, 'sfsi_plus_section4_options', 's:2014:\"a:46:{s:24:\"sfsi_plus_display_counts\";s:2:\"no\";s:29:\"sfsi_plus_email_countsDisplay\";s:0:\"\";s:26:\"sfsi_plus_email_countsFrom\";s:0:\"\";s:28:\"sfsi_plus_email_manualCounts\";i:20;s:27:\"sfsi_plus_rss_countsDisplay\";s:0:\"\";s:26:\"sfsi_plus_rss_manualCounts\";i:20;s:32:\"sfsi_plus_facebook_countsDisplay\";s:2:\"no\";s:29:\"sfsi_plus_facebook_countsFrom\";s:6:\"manual\";s:31:\"sfsi_plus_facebook_mypageCounts\";s:0:\"\";s:31:\"sfsi_plus_facebook_manualCounts\";i:20;s:31:\"sfsi_plus_twitter_countsDisplay\";s:0:\"\";s:28:\"sfsi_plus_twitter_countsFrom\";s:0:\"\";s:30:\"sfsi_plus_twitter_manualCounts\";i:20;s:24:\"sfsiplus_tw_consumer_key\";s:0:\"\";s:27:\"sfsiplus_tw_consumer_secret\";s:0:\"\";s:30:\"sfsiplus_tw_oauth_access_token\";s:0:\"\";s:37:\"sfsiplus_tw_oauth_access_token_secret\";s:0:\"\";s:30:\"sfsi_plus_google_countsDisplay\";s:0:\"\";s:27:\"sfsi_plus_google_countsFrom\";s:0:\"\";s:29:\"sfsi_plus_google_manualCounts\";i:20;s:24:\"sfsi_plus_google_api_key\";s:0:\"\";s:32:\"sfsi_plus_linkedIn_countsDisplay\";s:0:\"\";s:29:\"sfsi_plus_linkedIn_countsFrom\";s:0:\"\";s:31:\"sfsi_plus_linkedIn_manualCounts\";i:20;s:31:\"sfsi_plus_youtube_countsDisplay\";s:0:\"\";s:28:\"sfsi_plus_youtube_countsFrom\";s:0:\"\";s:30:\"sfsi_plus_youtube_manualCounts\";i:20;s:22:\"sfsi_plus_youtube_user\";s:0:\"\";s:27:\"sfsi_plus_youtube_channelId\";s:0:\"\";s:33:\"sfsi_plus_pinterest_countsDisplay\";s:0:\"\";s:30:\"sfsi_plus_pinterest_countsFrom\";s:0:\"\";s:32:\"sfsi_plus_pinterest_manualCounts\";i:20;s:30:\"sfsi_plus_instagram_countsFrom\";s:6:\"manual\";s:33:\"sfsi_plus_instagram_countsDisplay\";s:2:\"no\";s:32:\"sfsi_plus_instagram_manualCounts\";i:20;s:24:\"sfsi_plus_instagram_User\";s:0:\"\";s:28:\"sfsi_plus_instagram_clientid\";s:0:\"\";s:26:\"sfsi_plus_instagram_appurl\";s:0:\"\";s:25:\"sfsi_plus_instagram_token\";s:0:\"\";s:30:\"sfsi_plus_shares_countsDisplay\";s:0:\"\";s:27:\"sfsi_plus_shares_countsFrom\";s:0:\"\";s:29:\"sfsi_plus_shares_manualCounts\";i:20;s:29:\"sfsi_plus_houzz_countsDisplay\";s:0:\"\";s:26:\"sfsi_plus_houzz_countsFrom\";s:0:\"\";s:28:\"sfsi_plus_houzz_manualCounts\";i:20;s:27:\"sfsi_plus_premium_count_box\";s:2:\"no\";}\";', 'yes'),
(1916, 'sfsi_plus_section5_options', 's:1830:\"a:41:{s:20:\"sfsi_plus_icons_size\";i:40;s:23:\"sfsi_plus_icons_spacing\";i:5;s:25:\"sfsi_plus_icons_Alignment\";s:4:\"left\";s:22:\"sfsi_plus_icons_perRow\";i:5;s:31:\"sfsi_plus_follow_icons_language\";s:12:\"Follow_en_US\";s:33:\"sfsi_plus_facebook_icons_language\";s:14:\"Visit_us_en_US\";s:32:\"sfsi_plus_twitter_icons_language\";s:14:\"Visit_us_en_US\";s:31:\"sfsi_plus_google_icons_language\";s:14:\"Visit_us_en_US\";s:24:\"sfsi_plus_icons_language\";s:5:\"en_US\";s:29:\"sfsi_plus_icons_ClickPageOpen\";s:3:\"yes\";s:21:\"sfsi_plus_icons_float\";s:2:\"no\";s:28:\"sfsi_plus_disable_floaticons\";s:2:\"no\";s:26:\"sfsi_plus_disable_viewport\";s:2:\"no\";s:29:\"sfsi_plus_icons_floatPosition\";s:12:\"center-right\";s:21:\"sfsi_plus_icons_stick\";s:2:\"no\";s:27:\"sfsi_plus_rss_MouseOverText\";s:0:\"\";s:29:\"sfsi_plus_email_MouseOverText\";s:0:\"\";s:31:\"sfsi_plus_twitter_MouseOverText\";s:0:\"\";s:32:\"sfsi_plus_facebook_MouseOverText\";s:8:\"Facebook\";s:30:\"sfsi_plus_google_MouseOverText\";s:0:\"\";s:32:\"sfsi_plus_linkedIn_MouseOverText\";s:0:\"\";s:33:\"sfsi_plus_pinterest_MouseOverText\";s:0:\"\";s:31:\"sfsi_plus_youtube_MouseOverText\";s:0:\"\";s:29:\"sfsi_plus_share_MouseOverText\";s:0:\"\";s:33:\"sfsi_plus_instagram_MouseOverText\";s:9:\"Instagram\";s:29:\"sfsi_plus_houzz_MouseOverText\";s:0:\"\";s:27:\"sfsi_plus_CustomIcons_order\";s:0:\"\";s:23:\"sfsi_plus_rssIcon_order\";i:1;s:25:\"sfsi_plus_emailIcon_order\";i:2;s:28:\"sfsi_plus_facebookIcon_order\";i:3;s:26:\"sfsi_plus_googleIcon_order\";i:4;s:27:\"sfsi_plus_twitterIcon_order\";i:5;s:25:\"sfsi_plus_shareIcon_order\";i:6;s:27:\"sfsi_plus_youtubeIcon_order\";i:7;s:29:\"sfsi_plus_pinterestIcon_order\";i:8;s:29:\"sfsi_plus_instagramIcon_order\";i:10;s:25:\"sfsi_plus_houzzIcon_order\";i:11;s:28:\"sfsi_plus_linkedinIcon_order\";i:9;s:31:\"sfsi_plus_custom_MouseOverTexts\";s:0:\"\";s:28:\"sfsi_plus_custom_social_hide\";s:2:\"no\";s:26:\"sfsi_plus_premium_size_box\";s:2:\"no\";}\";', 'yes'),
(1917, 'sfsi_plus_section6_options', 's:343:\"a:7:{s:22:\"sfsi_plus_show_Onposts\";s:2:\"no\";s:23:\"sfsi_plus_show_Onbottom\";s:2:\"no\";s:27:\"sfsi_plus_icons_postPositon\";s:6:\"source\";s:25:\"sfsi_plus_icons_alignment\";s:12:\"center-right\";s:27:\"sfsi_plus_rss_countsDisplay\";s:2:\"no\";s:25:\"sfsi_plus_textBefor_icons\";s:26:\"Please follow and like us:\";s:29:\"sfsi_plus_icons_DisplayCounts\";s:2:\"no\";}\";', 'yes'),
(1918, 'sfsi_plus_section7_options', 's:679:\"a:14:{s:20:\"sfsi_plus_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:20:\"sfsi_plus_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_plus_popup_fontColor\";s:7:\"#000000\";s:24:\"sfsi_plus_popup_fontSize\";i:30;s:25:\"sfsi_plus_popup_fontStyle\";s:0:\"\";s:32:\"sfsi_plus_popup_background_color\";s:7:\"#eff7f7\";s:28:\"sfsi_plus_popup_border_color\";s:7:\"#f3faf2\";s:32:\"sfsi_plus_popup_border_thickness\";i:1;s:29:\"sfsi_plus_popup_border_shadow\";s:3:\"yes\";s:22:\"sfsi_plus_Show_popupOn\";s:4:\"none\";s:30:\"sfsi_plus_Show_popupOn_PageIDs\";s:0:\"\";s:19:\"sfsi_plus_Shown_pop\";s:8:\"ETscroll\";s:29:\"sfsi_plus_Shown_popupOnceTime\";i:0;s:27:\"sfsi_plus_premium_popup_box\";s:2:\"no\";}\";', 'yes'),
(1919, 'sfsi_plus_section8_options', 's:1246:\"a:28:{s:25:\"sfsi_plus_show_via_widget\";s:3:\"yes\";s:23:\"sfsi_plus_float_on_page\";s:2:\"no\";s:29:\"sfsi_plus_float_page_position\";s:12:\"center-right\";s:31:\"sfsi_plus_icons_floatMargin_top\";i:0;s:34:\"sfsi_plus_icons_floatMargin_bottom\";i:0;s:32:\"sfsi_plus_icons_floatMargin_left\";i:0;s:33:\"sfsi_plus_icons_floatMargin_right\";i:0;s:29:\"sfsi_plus_place_item_manually\";s:2:\"no\";s:27:\"sfsi_plus_show_item_onposts\";s:2:\"no\";s:29:\"sfsi_plus_display_button_type\";s:16:\"standard_buttons\";s:25:\"sfsi_plus_post_icons_size\";i:40;s:28:\"sfsi_plus_post_icons_spacing\";i:5;s:22:\"sfsi_plus_show_Onposts\";s:2:\"no\";s:25:\"sfsi_plus_textBefor_icons\";s:26:\"Please follow and like us:\";s:25:\"sfsi_plus_icons_alignment\";s:4:\"left\";s:29:\"sfsi_plus_icons_DisplayCounts\";s:2:\"no\";s:30:\"sfsi_plus_display_before_posts\";s:2:\"no\";s:29:\"sfsi_plus_display_after_posts\";s:2:\"no\";s:34:\"sfsi_plus_display_before_blogposts\";s:2:\"no\";s:33:\"sfsi_plus_display_after_blogposts\";s:2:\"no\";s:17:\"sfsi_plus_rectsub\";s:3:\"yes\";s:16:\"sfsi_plus_rectfb\";s:3:\"yes\";s:16:\"sfsi_plus_rectgp\";s:3:\"yes\";s:17:\"sfsi_plus_rectshr\";s:2:\"no\";s:18:\"sfsi_plus_recttwtr\";s:3:\"yes\";s:19:\"sfsi_plus_rectpinit\";s:3:\"yes\";s:21:\"sfsi_plus_rectfbshare\";s:3:\"yes\";s:36:\"sfsi_plus_show_premium_placement_box\";s:2:\"no\";}\";', 'yes'),
(1920, 'sfsi_plus_feed_id', 'cUpDWnNkOTM0UTJqTUNhQlJsN1RDUlk5dEQxM3k2ZU1vNWlBUnhQcDFmTE55TWNiYWgvRjJ5TzFYV3RLbWNKS3IyZmQ1VVF4WndQOEJZaFVFeVN2eUlJaW53WXluVFkxSnh1eWlRYVhiYWpNWFF0N2dwckM0K2lidFZuREFtQlV8WU9qYmlzMFBEZWp3MjFTbGNwcU1SdXR5R1kvYUE0MFFkcHBDakk5ZzZYQT0=', 'yes'),
(1921, 'sfsi_plus_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/cUpDWnNkOTM0UTJqTUNhQlJsN1RDUlk5dEQxM3k2ZU1vNWlBUnhQcDFmTE55TWNiYWgvRjJ5TzFYV3RLbWNKS3IyZmQ1VVF4WndQOEJZaFVFeVN2eUlJaW53WXluVFkxSnh1eWlRYVhiYWpNWFF0N2dwckM0K2lidFZuREFtQlV8WU9qYmlzMFBEZWp3MjFTbGNwcU1SdXR5R1kvYUE0MFFkcHBDakk5ZzZYQT0=/OA==', 'yes'),
(1922, 'sfsi_plus_installDate', '2018-04-07 01:01:16', 'yes'),
(1923, 'sfsi_plus_RatingDiv', 'yes', 'yes'),
(1924, 'sfsi_plus_activate', '0', 'yes'),
(1925, 'sfsi_plus_instagram_sf_count', 's:103:\"a:3:{s:4:\"date\";i:1523059200;s:18:\"sfsi_plus_sf_count\";s:0:\"\";s:25:\"sfsi_plus_instagram_count\";s:0:\"\";}\";', 'yes'),
(1926, 'widget_sfsi-plus-widget', 'a:2:{i:3;a:2:{s:5:\"showf\";i:1;s:5:\"title\";s:26:\"Siga-nos nas redes sociais\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1927, 'widget_sfsiplus_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1928, 'sfsi_plus_pluginVersion', '2.89', 'yes'),
(1929, 'sfsi_plus_serverphpVersionnotification', 'yes', 'yes'),
(1930, 'sfsi_plus_show_Setting_mobile_notification', 'yes', 'yes'),
(1931, 'sfsi_plus_show_premium_notification', 'no', 'yes'),
(1932, 'sfsi_plus_show_notification', 'yes', 'yes'),
(1933, 'sfsi_plus_footer_sec', 'no', 'yes'),
(1934, 'sfsi_plus_section9_options', 's:1323:\"a:26:{s:25:\"sfsi_plus_form_adjustment\";s:3:\"yes\";s:21:\"sfsi_plus_form_height\";i:180;s:20:\"sfsi_plus_form_width\";i:230;s:21:\"sfsi_plus_form_border\";s:3:\"yes\";s:31:\"sfsi_plus_form_border_thickness\";i:1;s:27:\"sfsi_plus_form_border_color\";s:7:\"#b5b5b5\";s:25:\"sfsi_plus_form_background\";s:7:\"#ffffff\";s:27:\"sfsi_plus_form_heading_text\";s:29:\"Obter novos posts por e-mail:\";s:27:\"sfsi_plus_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:32:\"sfsi_plus_form_heading_fontstyle\";s:4:\"bold\";s:32:\"sfsi_plus_form_heading_fontcolor\";s:7:\"#000000\";s:31:\"sfsi_plus_form_heading_fontsize\";i:16;s:32:\"sfsi_plus_form_heading_fontalign\";s:6:\"center\";s:25:\"sfsi_plus_form_field_text\";s:16:\"Enter your email\";s:25:\"sfsi_plus_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:30:\"sfsi_plus_form_field_fontstyle\";s:6:\"normal\";s:30:\"sfsi_plus_form_field_fontcolor\";s:0:\"\";s:29:\"sfsi_plus_form_field_fontsize\";i:14;s:30:\"sfsi_plus_form_field_fontalign\";s:6:\"center\";s:26:\"sfsi_plus_form_button_text\";s:9:\"Subscribe\";s:26:\"sfsi_plus_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:31:\"sfsi_plus_form_button_fontstyle\";s:4:\"bold\";s:31:\"sfsi_plus_form_button_fontcolor\";s:7:\"#000000\";s:30:\"sfsi_plus_form_button_fontsize\";i:16;s:31:\"sfsi_plus_form_button_fontalign\";s:6:\"center\";s:32:\"sfsi_plus_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(1935, 'sfsi_plus_verificatiom_code', 'Q9RzCwHpBRAmZ6ASB9fZ', 'yes'),
(1936, 'adding_plustags', 'no', 'yes'),
(1940, 'woocommerce_correios-sedex_3_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:5:\"SEDEX\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:9:\"08220-510\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:3:\"yes\";s:15:\"additional_time\";s:1:\"0\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(1941, 'woocommerce_correios-pac_4_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:3:\"PAC\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:9:\"08220-510\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:3:\"yes\";s:15:\"additional_time\";s:1:\"0\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(1984, 'widget_maxmegamenu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1985, 'megamenu_version', '2.4.1.5', 'yes'),
(1986, 'megamenu_settings', 'a:3:{s:6:\"prefix\";s:8:\"disabled\";s:12:\"descriptions\";s:7:\"enabled\";s:7:\"primary\";a:7:{s:7:\"enabled\";s:1:\"1\";s:5:\"event\";s:5:\"hover\";s:6:\"effect\";s:4:\"fade\";s:12:\"effect_speed\";s:3:\"200\";s:13:\"effect_mobile\";s:8:\"disabled\";s:19:\"effect_speed_mobile\";s:3:\"200\";s:5:\"theme\";s:7:\"default\";}}', 'yes'),
(1988, '_transient_megamenu_css_version', '2.4.1.5', 'yes');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1994, '_transient_megamenu_css', '/** Saturday 7th of April 2018 04:25:59 PM (core) **/\n\n#mega-menu-wrap-primary, #mega-menu-wrap-primary #mega-menu-primary, #mega-menu-wrap-primary #mega-menu-primary ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item, #mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link {\n  -moz-transition: none;\n  -o-transition: none;\n  -webkit-transition: none;\n  transition: none;\n  -webkit-border-radius: 0 0 0 0;\n  -moz-border-radius: 0 0 0 0;\n  -ms-border-radius: 0 0 0 0;\n  -o-border-radius: 0 0 0 0;\n  border-radius: 0 0 0 0;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n  background: none;\n  border: 0;\n  bottom: auto;\n  box-sizing: border-box;\n  clip: auto;\n  color: #666;\n  display: block;\n  float: none;\n  font-family: inherit;\n  font-size: 14px;\n  height: auto;\n  left: auto;\n  line-height: 1.7;\n  list-style-type: none;\n  margin: 0;\n  min-height: 0;\n  opacity: 1;\n  outline: none;\n  overflow: visible;\n  padding: 0;\n  position: relative;\n  right: auto;\n  text-align: left;\n  text-decoration: none;\n  text-transform: none;\n  top: auto;\n  vertical-align: baseline;\n  visibility: inherit;\n  width: auto;\n}\n#mega-menu-wrap-primary:before, #mega-menu-wrap-primary #mega-menu-primary:before, #mega-menu-wrap-primary #mega-menu-primary ul.mega-sub-menu:before, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item:before, #mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link:before, #mega-menu-wrap-primary:after, #mega-menu-wrap-primary #mega-menu-primary:after, #mega-menu-wrap-primary #mega-menu-primary ul.mega-sub-menu:after, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item:after, #mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-primary {\n  background: #222;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n}\n#mega-menu-wrap-primary.mega-keyboard-navigation .mega-menu-toggle:focus, #mega-menu-wrap-primary.mega-keyboard-navigation #mega-menu-primary a:focus, #mega-menu-wrap-primary.mega-keyboard-navigation #mega-menu-primary input:focus {\n  -webkit-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -moz-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -ms-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -o-box-shadow: inset 0px 0px 3px 1px #0ff;\n  box-shadow: inset 0px 0px 3px 1px #0ff;\n}\n#mega-menu-wrap-primary #mega-menu-primary {\n  visibility: visible;\n  text-align: left;\n  padding: 0px 0px 0px 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary {\n    padding: 0;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link {\n  cursor: pointer;\n  display: inline;\n}\n#mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link .mega-description-group {\n  vertical-align: middle;\n  display: inline-block;\n}\n#mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link .mega-description-group .mega-menu-title, #mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link .mega-description-group .mega-menu-description {\n  line-height: 1.5;\n  display: block;\n}\n#mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link .mega-description-group .mega-menu-description {\n  font-style: italic;\n  font-size: 0.8em;\n  text-transform: none;\n  font-weight: normal;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n  display: table-cell;\n  vertical-align: middle;\n  line-height: initial;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n  display: block;\n  margin: 0 0 6px 0;\n  text-align: center;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-icon-top > a.mega-menu-link > span.mega-title-below {\n  display: inline-block;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n    display: block;\n    line-height: 40px;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n    display: inline-block;\n    margin: 0 6px 0 0;\n    text-align: left;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-icon-right > a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-animating > ul.mega-sub-menu {\n  pointer-events: none;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-disable-link > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu li.mega-disable-link > a.mega-menu-link {\n  cursor: default;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children.mega-disable-link > a.mega-menu-link {\n  cursor: pointer;\n}\n#mega-menu-wrap-primary #mega-menu-primary p {\n  margin-bottom: 10px;\n}\n#mega-menu-wrap-primary #mega-menu-primary input, #mega-menu-wrap-primary #mega-menu-primary img {\n  max-width: 100%;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item > ul.mega-sub-menu {\n  display: block;\n  visibility: hidden;\n  opacity: 1;\n  pointer-events: auto;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade\"] li.mega-menu-item > ul.mega-sub-menu {\n    opacity: 0;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: opacity, visibility;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    opacity: 0;\n    margin-top: 10px;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: opacity, margin-top, visibility;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n    margin-top: 0;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    margin-top: 10px;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: margin-top, visibility;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    margin-top: 0;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary.mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary.mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu {\n  visibility: visible;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-menu-megamenu ul.mega-sub-menu ul.mega-sub-menu {\n  visibility: inherit;\n  opacity: 1;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item a[class^=\'dashicons\']:before {\n  font-family: dashicons;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item a.mega-menu-link:before {\n  display: inline-block;\n  font: inherit;\n  font-family: dashicons;\n  position: static;\n  margin: 0 6px 0 0px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  color: inherit;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-hide-text a.mega-menu-link:before {\n  margin: 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item.mega-hide-text li.mega-menu-item a.mega-menu-link:before {\n  margin: 0 6px 0 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-align-bottom-left.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-align-bottom-right > ul.mega-sub-menu {\n  right: 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-align-bottom-right.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu.mega-menu-item {\n  position: static;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item {\n  margin: 0 0px 0 0;\n  display: inline-block;\n  height: auto;\n  vertical-align: middle;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-item-align-right {\n  float: right;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-item-align-right {\n    margin: 0 0 0 0px;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-item-align-float-left {\n    float: left;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-toggle-on > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link:focus {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #fff;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-menu-item > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-menu-ancestor > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-page-ancestor > a.mega-menu-link {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #fff;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link {\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  outline: none;\n  text-decoration: none;\n  padding: 0px 10px 0px 10px;\n  line-height: 40px;\n  font-weight: normal;\n  height: 40px;\n  vertical-align: baseline;\n  text-align: left;\n  width: auto;\n  display: block;\n  color: #fff;\n  text-transform: none;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  font-family: inherit;\n  font-size: 14px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link {\n    text-align: left;\n    color: #fff;\n    font-size: 14px;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-multi-line > a.mega-menu-link {\n    line-height: inherit;\n    display: table-cell;\n    vertical-align: middle;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-multi-line > a.mega-menu-link br {\n    display: none;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item {\n    display: list-item;\n    margin: 0;\n    clear: both;\n    border: 0;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-item-align-right {\n    float: none;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link {\n    -webkit-border-radius: 0 0 0 0 0 0 0;\n    -moz-border-radius: 0 0 0 0 0 0 0;\n    -ms-border-radius: 0 0 0 0 0 0 0;\n    -o-border-radius: 0 0 0 0 0 0 0;\n    border-radius: 0 0 0 0 0 0 0;\n    border: 0;\n    margin: 0;\n    line-height: 40px;\n    height: 40px;\n    padding: 0 10px;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row {\n  width: 100%;\n  float: left;\n  background: transparent;\n  border: 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column {\n  float: left;\n  min-height: 1px;\n  background: transparent;\n  border: 0;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-10 {\n    width: 10%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-10 {\n    width: 20%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-10 {\n    width: 30%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-10 {\n    width: 40%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-10 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-10 {\n    width: 60%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-10 {\n    width: 70%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-10 {\n    width: 80%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-10 {\n    width: 90%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-10 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-11 {\n    width: 9.09091%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-11 {\n    width: 18.18182%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-11 {\n    width: 27.27273%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-11 {\n    width: 36.36364%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-11 {\n    width: 45.45455%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-11 {\n    width: 54.54545%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-11 {\n    width: 63.63636%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-11 {\n    width: 72.72727%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-11 {\n    width: 81.81818%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-11 {\n    width: 90.90909%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-11 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-12 {\n    width: 8.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-12 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-12 {\n    width: 25%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-12 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-12 {\n    width: 41.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-12 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-12 {\n    width: 58.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-12 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-12 {\n    width: 75%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-12 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-12 {\n    width: 91.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-12-of-12 {\n    width: 100%;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-column {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-column.mega-menu-clear {\n    clear: left;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  padding: 15px 15px 15px 15px;\n  width: 100%;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu {\n  z-index: 999;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  padding: 0px 0px 0px 0px;\n  position: absolute;\n  width: 100%;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  max-width: none;\n  left: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu .mega-description-group .mega-menu-description {\n  margin: 5px 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-item-has-children a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu {\n  clear: both;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  margin-left: 10px;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  margin-left: 20px;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  display: block;\n  float: left;\n  clear: none;\n  padding: 15px 15px 15px 15px;\n  vertical-align: top;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear {\n  clear: left;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title {\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  text-decoration: none;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 5px 0px;\n  vertical-align: top;\n  display: block;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  text-decoration: none;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  color: #555;\n  font-weight: bold;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus {\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu {\n    border: 0;\n    padding: 10px;\n    -webkit-border-radius: 0 0 0 0;\n    -moz-border-radius: 0 0 0 0;\n    -ms-border-radius: 0 0 0 0;\n    -o-border-radius: 0 0 0 0;\n    border-radius: 0 0 0 0;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item {\n    width: 50%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li:nth-child(odd) {\n    clear: left;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  border: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu {\n  z-index: 999;\n  position: absolute;\n  width: 150px;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  padding: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  max-width: none;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n    padding: 0;\n    border: 0;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item {\n    clear: both;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link {\n  display: block;\n  background: #f1f1f1;\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  font-weight: normal;\n  padding: 0px 10px 0px 10px;\n  line-height: 35px;\n  text-decoration: none;\n  text-transform: none;\n  vertical-align: baseline;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n  border-top-left-radius: 0px;\n  border-top-right-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n    border-top-left-radius: 0;\n    border-top-right-radius: 0;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n  border-bottom-right-radius: 0px;\n  border-bottom-left-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n    border-bottom-right-radius: 0;\n    border-bottom-left-radius: 0;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:hover, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:focus {\n  background: #ddd;\n  font-weight: normal;\n  text-decoration: none;\n  color: #666;\n}\n#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  position: absolute;\n  left: 100%;\n  top: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n    position: static;\n    left: 0;\n    width: 100%;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu a.mega-menu-link {\n    padding-left: 20px;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: \'\\f140\';\n  display: inline-block;\n  font-family: dashicons;\n  margin: 0 0 0 6px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  transform: rotate(0);\n  color: inherit;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children a.mega-menu-link:after {\n    float: right;\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children.mega-toggle-on > a.mega-menu-link:after {\n    content: \'\\f142\';\n  }\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children.mega-hide-sub-menu-on-mobile > a.mega-menu-link:after {\n    display: none;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu li.mega-menu-item-has-children > a.mega-menu-link:after, #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children.mega-hide-arrow > a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: \'\\f139\';\n  float: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: \'\\f140\';\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n  text-align: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n    text-align: left;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n    float: left;\n    margin: 0 6px 0 0;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: \'\\f141\';\n  float: left;\n  margin: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: \'\\f140\';\n    float: right;\n  }\n}\n#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-flyout.mega-align-bottom-right ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  left: -100%;\n  top: 0;\n}\n#mega-menu-wrap-primary #mega-menu-primary li[class^=\'mega-lang-item\'] > a.mega-menu-link > img {\n  display: inline;\n}\n#mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link > img.wpml-ls-flag, #mega-menu-wrap-primary #mega-menu-primary a.mega-menu-link > img.iclflag {\n  display: inline;\n  margin-right: 8px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-hide-on-mobile, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-mobile {\n    display: none;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-primary #mega-menu-primary li.mega-hide-on-desktop, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-desktop {\n    display: none;\n  }\n}\n#mega-menu-wrap-primary .mega-menu-toggle {\n  display: none;\n  z-index: 1;\n  cursor: pointer;\n  background: #222;\n  -webkit-border-radius: 2px 2px 2px 2px;\n  -moz-border-radius: 2px 2px 2px 2px;\n  -ms-border-radius: 2px 2px 2px 2px;\n  -o-border-radius: 2px 2px 2px 2px;\n  border-radius: 2px 2px 2px 2px;\n  line-height: 40px;\n  height: 40px;\n  text-align: left;\n  -webkit-touch-callout: none;\n  -webkit-user-select: none;\n  -khtml-user-select: none;\n  -moz-user-select: none;\n  -ms-user-select: none;\n  outline: none;\n  white-space: nowrap;\n}\n#mega-menu-wrap-primary .mega-menu-toggle img {\n  max-width: 100%;\n  padding: 0;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-search-wrap {\n  align-self: center;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary .mega-menu-toggle {\n    display: flex;\n  }\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-left, #mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-center, #mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-right {\n  display: flex;\n  flex-basis: 33.33%;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-left {\n  flex: 1;\n  justify-content: flex-start;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-left .mega-toggle-block {\n  margin-left: 6px;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-center {\n  justify-content: center;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-center .mega-toggle-block {\n  margin-left: 3px;\n  margin-right: 3px;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-right {\n  flex: 1;\n  justify-content: flex-end;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-blocks-right .mega-toggle-block {\n  margin-right: 6px;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-block {\n  display: flex;\n  height: 100%;\n  flex-shrink: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary .mega-menu-toggle + #mega-menu-primary {\n    display: none;\n  }\n  #mega-menu-wrap-primary .mega-menu-toggle + #mega-menu-primary li.mega-menu-item > ul.mega-sub-menu {\n    display: none;\n    visibility: visible;\n    opacity: 1;\n  }\n  #mega-menu-wrap-primary .mega-menu-toggle + #mega-menu-primary li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-primary .mega-menu-toggle + #mega-menu-primary li.mega-menu-megamenu.mega-menu-item.mega-toggle-on ul.mega-sub-menu {\n    display: block;\n  }\n  #mega-menu-wrap-primary .mega-menu-toggle.mega-menu-open + #mega-menu-primary {\n    display: block;\n  }\n}\n#mega-menu-wrap-primary .mega-menu-toggle {\n  /** Push menu onto new line **/\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-block-1:after {\n  content: \'\\f333\';\n  font-family: \'dashicons\';\n  font-size: 24px;\n  color: #fff;\n  margin: 0 0 0 5px;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label {\n  color: #fff;\n  font-size: 14px;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-open {\n  display: none;\n}\n#mega-menu-wrap-primary .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-closed {\n  display: inline;\n}\n#mega-menu-wrap-primary .mega-menu-toggle.mega-menu-open .mega-toggle-block-1:after {\n  content: \'\\f153\';\n}\n#mega-menu-wrap-primary .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-open {\n  display: inline;\n}\n#mega-menu-wrap-primary .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-closed {\n  display: none;\n}\n#mega-menu-wrap-primary {\n  clear: both;\n}\n', 'yes');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2013, 'woocommerce_free_shipping_1_settings', 'a:3:{s:5:\"title\";s:13:\"Frete grátis\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:3:\"100\";}', 'yes'),
(2025, 'woocommerce_gateway_order', 'a:7:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:14:\"santander_loan\";i:4;s:11:\"ppec_paypal\";i:5;s:9:\"pagseguro\";i:6;}', 'yes'),
(2078, 'woocommerce_customer_completed_order_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(2091, 'ms_ads_first_seen_on', '1523363058', 'yes'),
(2113, 'ms_hide_thankyou_ads_until', '1555417496', 'yes'),
(2126, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2127, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2149, 'elv_easylogo_options', 'a:6:{s:10:\"image_path\";s:102:\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/logo_magic_beans_cabecalho_original3-1.png\";s:5:\"hover\";s:14:\"hvr-bubble-top\";s:10:\"responsive\";s:4:\"true\";s:14:\"retina_version\";s:0:\"\";s:14:\"use_custom_url\";s:14:\"use_custom_url\";s:3:\"url\";s:32:\"http://localhost:8080/magicbeans\";}', 'yes'),
(2167, 'csl_CustomSiteLogo_option_name', 'a:6:{s:30:\"csl_CustomSiteLogo_image_field\";s:102:\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/logo_magic_beans_cabecalho_original3-1.png\";s:37:\"csl_CustomSiteLogo_hover_effect_field\";s:16:\"hvr-skew-forward\";s:30:\"csl_CustomSiteLogo_width_field\";s:0:\"\";s:31:\"csl_CustomSiteLogo_height_field\";s:0:\"\";s:41:\"csl_CustomSiteLogo_image_responsive_field\";s:1:\"1\";s:35:\"csl_CustomSiteLogo_custom_url_field\";s:32:\"http://localhost:8080/magicbeans\";}', 'yes'),
(2305, 'ml-slider_children', 'a:0:{}', 'yes'),
(2426, 'product_cat_children', 'a:0:{}', 'yes'),
(2581, 'woocommerce_new_order_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(2655, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1526651888;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:10:\"calendar-3\";i:1;s:15:\"media_gallery-3\";i:2;s:6:\"meta-4\";i:3;s:13:\"custom_html-3\";i:4;s:31:\"woocommerce_product_tag_cloud-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:19:\"metaslider_widget-2\";i:13;s:13:\"media_image-2\";i:14;s:18:\"sfsi-plus-widget-3\";}s:9:\"sidebar-1\";a:4:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:38:\"woocommerce_recently_viewed_products-2\";i:3;s:28:\"woocommerce_recent_reviews-3\";}s:9:\"sidebar-2\";a:2:{i:0;s:6:\"text-3\";i:1;s:18:\"googlemapswidget-2\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(2996, '_transient_timeout_gmw_pointers', '1531836469', 'no'),
(2997, '_transient_gmw_pointers', 'a:0:{}', 'no'),
(3012, '_transient_timeout_external_ip_address_::1', '1532040067', 'no'),
(3013, '_transient_external_ip_address_::1', '2804:14c:171:8008:a053:1419:2164:a165', 'no'),
(3021, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1532040099', 'no'),
(3022, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(3034, '_transient_timeout_wc_shipping_method_count_1_1523064348', '1534027312', 'no'),
(3036, '_transient_wc_shipping_method_count_1_1523064348', '5', 'no'),
(3053, '_transient_timeout_wc_product_loop42d91525229104', '1534027441', 'no'),
(3054, '_transient_wc_product_loop42d91525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:335;i:2;i:333;i:3;i:331;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3055, '_transient_timeout_wc_product_loop78d71525229104', '1534027442', 'no'),
(3056, '_transient_wc_product_loop78d71525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3057, '_transient_timeout_wc_product_loopf8571525229104', '1534027442', 'no'),
(3058, '_transient_wc_product_loopf8571525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:38;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3061, '_transient_timeout_wc_product_loopcde41525229104', '1534027442', 'no'),
(3062, '_transient_wc_product_loopcde41525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:317;i:2;i:321;i:3;i:39;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3063, '_transient_timeout_wc_product_loopa47f1525229104', '1534027442', 'no'),
(3064, '_transient_wc_product_loopa47f1525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:20;i:1;i:30;i:2;i:27;i:3;i:38;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3075, '_site_transient_timeout_theme_roots', '1531584785', 'no'),
(3076, '_site_transient_theme_roots', 'a:2:{s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(3084, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1531626257', 'no'),
(3085, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(3086, '_transient_timeout_feed_b85365aa61afaf3d4189819a6f57c4c4', '1531626258', 'no');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3087, '_transient_feed_b85365aa61afaf3d4189819a6f57c4c4', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Blog | Brasil\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://br.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Wed, 11 Jul 2018 15:05:42 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pt-BR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43441\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n		\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 4.9.7 – Atualização de segurança e manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2018/07/05/wordpress-4-9-7-atualizacao-de-seguranca-e-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://br.wordpress.org/2018/07/05/wordpress-4-9-7-atualizacao-de-seguranca-e-manutencao/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 23:08:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1278\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:370:\"O WordPress 4.9.7 já está disponível. Essa é uma atualização de segurança e manutenção para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente. As versões 4.9.6 e anteriores do WordPress são afetadas por um problema nas mídias que podem permitir que um usuário com certas capacidades tente excluir [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4179:\"<p>O WordPress 4.9.7 já está disponível. Essa é uma <strong>atualização de segurança e manutenção</strong> para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente.</p>\n\n<p>As versões 4.9.6 e anteriores do WordPress são afetadas por um problema nas mídias que podem permitir que um usuário com certas capacidades tente excluir arquivos fora do diretório de uploads.</p>\n\n<p>Agradecemos a <a href=\"https://hackerone.com/slavco\">Slavco</a> por informar o problema original e a <a href=\"https://www.wordfence.com/\">Matt Barry</a> por relatar problemas relacionados.</p>\n\n<p>Outros dezessete erros foram resolvidos no WordPress 4.9.7. Os mais importantes foram:</p>\n\n<ul>\n	<li>Taxonomia: Melhora na manipulação do cache para consultas por termos.</li>\n	<li>Posts e tipos de posts: Limpa o cookie de senha de post ao sair.</li>\n	<li>Widgets: Permite tags HTML básicas nas descrições das barras laterais na tela de administração do WordPress.</li>\n	<li>Eventos da comunidade no Painel: Sempre mostra o WordCamp mais próximo se há algum previsto, mesmo que existam vários meetups planejados antes dele.</li>\n	<li>Privacidade: Verifica se o conteúdo padrão da política de privacidade não causa um erro fatal ao limpar as regras de reescrita fora do contexto de administração.</li>\n</ul>\n\n<p><a href=\"https://br.wordpress.org/txt-download/\">Baixe o WordPress 4.9.7</a> ou visite o Painel → Atualizações e simplesmente clique em “Atualizar agora”. Sites com suporte a atualizações automáticas em segundo plano já começaram a se atualizar.</p>\n\n<p>Os planos previstos para a versão 4.9.7 agora se aplicam à versão 4.9.8, que seguirá o <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">cronograma de lançamento publicado ontem</a>.</p>\n\n<p>Agradecemos a todos que contribuíram para o WordPress 4.9.7:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> e <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://br.wordpress.org/2018/07/05/wordpress-4-9-7-atualizacao-de-seguranca-e-manutencao/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WordPress 4.9.6 – Atualização de privacidade e manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://br.wordpress.org/2018/05/19/wordpress-4-9-6-atualizacao-de-privacidade-e-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 19 May 2018 15:22:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"GDPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1263\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"O WordPress 4.9.6 já está disponível. Essa é uma atualização sobre privacidade e manutenção. Encorajamos que você atualize seus sites para obter as vantagens dos novos recursos de privacidade. Privacidade O GDPR (Regulamento geral de proteção de dados, do inglês General Data Protection Regulation) da União Europeia entra em vigor em 25 de maio. Ele exige que empresas [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11885:\"<p>O WordPress 4.9.6 já está disponível. Essa é uma <strong>atualização sobre privacidade e manutenção</strong>. Encorajamos que você atualize seus sites para obter as vantagens dos novos recursos de privacidade.</p>\n<p><img class=\"aligncenter size-full wp-image-1264\" src=\"https://br.wordpress.org/files/2018/05/GDPR-Banner.png\" alt=\"\" width=\"768\" height=\"384\" srcset=\"https://br.wordpress.org/files/2018/05/GDPR-Banner.png 768w, https://br.wordpress.org/files/2018/05/GDPR-Banner-300x150.png 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n<h2>Privacidade</h2>\n<p>O GDPR (Regulamento geral de proteção de dados, do inglês <em>General Data Protection Regulation</em>) da União Europeia entra em vigor em 25 de maio. Ele exige que empresas e proprietários de sites sejam transparentes sobre como coletam, usam e compartilham os dados pessoais dos seus visitantes. O regulamento também oferece às pessoas maior acesso e escolha quando se trata de como seus dados pessoais são coletados, usados e compartilhados.</p>\n<p>É importante entender que, embora o GDPR seja um regulamento europeu, seus requisitos se aplicam a todos os sites e empresas que coletam, armazenam e processam dados pessoais de residentes na União Européia, independente de onde a empresa esteja localizada.</p>\n<p>Você pode aprender mais sobre o GDPR na página sobre <a href=\"http://ec.europa.eu/justice/smedataprotect/index_pt.htm\" target=\"_blank\" rel=\"noopener noreferrer\">proteção de dados</a> da Comissão Europeia.</p>\n<p>Estamos empenhados em apoiar os proprietários de sites de todo o mundo no trabalho de cumprir essa importante lei. Como parte desse esforço, adicionamos alguns novos recursos de privacidade nesta versão.</p>\n<h2>Comentários</h2>\n<p><img class=\"aligncenter size-full wp-image-1265\" src=\"https://br.wordpress.org/files/2018/05/comments-border.png\" alt=\"\" width=\"768\" height=\"744\" srcset=\"https://br.wordpress.org/files/2018/05/comments-border.png 768w, https://br.wordpress.org/files/2018/05/comments-border-300x291.png 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n<p>Visitantes não conectados a uma conta terão a opção de gravar seu nome, endereço de e-mail e site em um cookie no navegador.</p>\n<h2>Página de política de privacidade</h2>\n<p><img class=\"aligncenter size-full wp-image-1266\" src=\"https://br.wordpress.org/files/2018/05/privacy-policy-collapsed.png\" alt=\"\" width=\"768\" height=\"453\" srcset=\"https://br.wordpress.org/files/2018/05/privacy-policy-collapsed.png 768w, https://br.wordpress.org/files/2018/05/privacy-policy-collapsed-300x177.png 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n<p>Os proprietários de sites agora podem definir uma página como sua política de privacidade. Esta página será mostrada em suas páginas de acesso e registro. Para que ela seja exibida nas demais páginas, será necessário que você acrescente um link manualmente. Se o seu site tem um menu no rodapé, esse é um ótimo lugar para incluir um link para sua política de privacidade.</p>\n<p>Além disso, criamos uma guia que inclui recomendações do WordPress e plugins participantes sobre como eles manipulam dados pessoais. Essas informações podem ser copiadas e coladas na política de privacidade do seu site para servir como um começo.</p>\n<p>Se você possuir um plugin que coleta dados, recomendamos adicionar essas informações ao guia de política de privacidade do WordPress. <a href=\"https://developer.wordpress.org/plugins/privacy/\" target=\"_blank\" rel=\"noopener noreferrer\">Saiba mais na nossa seção de privacidade do manual de plugins.</a></p>\n<h2>Manipulação de dados</h2>\n<p><img class=\"aligncenter size-full wp-image-1267\" src=\"https://br.wordpress.org/files/2018/05/export-data.png\" alt=\"\" width=\"768\" height=\"565\" srcset=\"https://br.wordpress.org/files/2018/05/export-data.png 768w, https://br.wordpress.org/files/2018/05/export-data-300x221.png 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n<h3>Exportação de dados</h3>\n<p>Os proprietários de sites podem exportar um arquivo no formato ZIP contendo os dados pessoais de um usuário, usando dados coletados pelo WordPress e plugins participantes.</p>\n<h3>Remoção de dados</h3>\n<p>Os proprietários de sites podem apagar os dados pessoais de um usuário, incluindo dados coletados pelos plugins participantes.</p>\n<blockquote><p>Olá,</p>\n<p>Foi feita uma solicitação para executar a seguinte ação em sua conta:</p>\n<p><strong>Exportar dados pessoais</strong></p>\n<p>Para confirmar, clique no link a seguir:<br />\n<a href=\"#\">http://.wordpress.org/wp-login.php?action=confirmaction…</a></p>\n<p>Você pode ignorar ou excluir este e-mail caso não queria que esta ação seja executada.</p>\n<p>Este e-mail foi enviado para <a href=\"#\">voca@dominio.com.br</a>.</p>\n<p>Atenciosamente,<br />\n<em>Equipe WordPress</em><br />\n<a href=\"http://wordpress.org\"><em>http://wordpress.org</em></a></p></blockquote>\n<p>Os proprietários de sites têm um novo método baseado no e-mail do usuário para confirmar solicitações de dados pessoais. Essa ferramenta de confirmação funciona para solicitações de exportação e remoção, tanto para usuários registrados quanto para visitantes que fizeram algum comentário.</p>\n<hr />\n<h2>Manutenção</h2>\n<p>Foram feitas 95 atualizações no WordPress 4.9.6. Além do já exposto acima, destacamos os seguintes pontos:</p>\n<ul>\n<li>&#8220;Minhas&#8221; foi adicionado como um filtro na biblioteca de mídia;</li>\n<li>Ao visualizar um plugin no Painel, ele informará a versão mínima do PHP necessária para seu funcionamento;</li>\n<li>Adicionamos novos polyfills PHP para compatibilidade com versões futuras e validação adequada de variáveis e</li>\n<li>O TinyMCE foi atualizado para a versão mais recente (4.7.11).</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\" target=\"_blank\" rel=\"noopener noreferrer\">Este post contém mais informações sobre todos os problemas corrigidos na versão 4.9.6, caso você queira mais informações.</a></p>\n<p><a href=\"https://br.wordpress.org/txt-download/\">Baixe o WordPress 4.9.6</a> ou visite o Painel → Atualizações e simplesmente clique em “Atualizar agora”. Sites com suporte a atualizações automáticas em segundo plano já começaram a se atualizar.</p>\n<p><strong>Atenção:</strong> Se você está atualmente no WordPress 4.9.3, você deve atualizar manualmente o seu site de imediato.</p>\n<hr />\n<p>Agradecemos a todos que contribuíram para o WordPress 4.9.6:</p>\n<p><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a> e <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.</p>\n<hr />\n<p>A versão inicial desta tradução foi feita pelo <a href=\"https://profiles.wordpress.org/henriquewint\">@henriquewint</a>. Valeu, Henrique!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Celebre o 15º aniversário do WordPress no dia 27 de maio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://br.wordpress.org/2018/04/20/celebre-o-15o-aniversario-do-wordpress-no-dia-27-de-maio/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://br.wordpress.org/2018/04/20/celebre-o-15o-aniversario-do-wordpress-no-dia-27-de-maio/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 22:30:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:329:\"Dia 27 de maio é o 15º aniversário do lançamento da primeira versão do WordPress e nós estamos ansiosos para celebrar! É hora da festa! Junte-se aos fãs do WordPress por todo o mundo na comemoração dos quinze anos do WordPress criando a sua própria festa! Aqui está como você pode participar: Acesse o site [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3488:\"<p>Dia 27 de maio é o <strong>15º aniversário</strong> do lançamento da <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">primeira versão do WordPress</a> e nós estamos ansiosos para celebrar!</p>\n<p><img class=\"aligncenter wp-image-1253 size-medium\" src=\"https://br.wordpress.org/files/2018/04/wp15_mark-1-300x236.png\" alt=\"\" width=\"300\" height=\"236\" srcset=\"https://br.wordpress.org/files/2018/04/wp15_mark-1-300x236.png 300w, https://br.wordpress.org/files/2018/04/wp15_mark-1.png 768w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></p>\n<figure class=\"wp-block-image aligncenter\"></figure>\n<h2>É hora da festa!</h2>\n<p>Junte-se aos fãs do WordPress por todo o mundo na comemoração dos quinze anos do WordPress criando a sua própria festa! Aqui está como você pode participar:</p>\n<ol>\n<li>Acesse o <a href=\"https://wp15.wordpress.net/about/\">site do 15º aniversário do WordPress</a> para ver se já existe uma festa sendo planejada na sua cidade. Se já existe, confirme sua presença e convide seus amigos!</li>\n<li>Se ainda não existe, escolha um lugar onde as pessoas possam se encontrar, como um parque, um restaurante ou um jardim. Qualquer ambiente familiar serve!</li>\n<li>Divulgue sua festa através <a href=\"https://www.meetup.com/pro/wordpress/\">do seu grupo local de meetups WordPress</a> (Ainda não existe um grupo perto de você? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Crie um!</a>) e então espalhe a notícia para outros meetups locais, grupos de tecnologia, imprensa, etc. e incentive os participantes a ajudar na divulgação.</li>\n<li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Solicite</a> alguns brindes especiais do 15º aniversário do WordPress (só até o dia 27 de abril, por favor, para que haja tempo para o envio).</li>\n<li>Peça que as pessoas publiquem fotos e vídeos com a hashtag #WP15 e <a href=\"https://wp15.wordpress.net/live/\">confira como estamos nas redes sociais</a> para ver como o resto do mundo está compartilhando e celebrando.</li>\n</ol>\n<p>Não perca esta chance de participar de uma celebração global do WordPress!</p>\n<h2>Produtos especiais</h2>\n<p>Para celebrar, adicionamos alguns <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">itens especiais para o aniversário de 15 anos</a> na loja. Até o final de 2018, você pode usar o código promocional <strong>CELEBRATEWP15</strong> para ter 15% de desconto em todos os produtos da loja!</p>\n<p>Vamos acrescentar mais produtos nas próximas semanas, então fique de olho!</p>\n<h2>Compartilhe a diversão</h2>\n<p>Seja qual for o seu jeito de celebrar os 15 anos do WordPress — com <a href=\"https://wp15.wordpress.net/about/\">uma festa</a>, com <a href=\"https://wp15.wordpress.net/swag/\">produtos comemorativos</a> ou <a href=\"https://wp15.wordpress.net/live/\">contando para o mundo</a> o que o WordPress significa para você — lembre-se de usar a hashtag #WP15 para compartilhá-lo! E não se esqueça de <a href=\"https://wp15.wordpress.net/live/\">conferir o que as pessoas estão comentando sobre o 15º aniversário do WordPress</a>.</p>\n<p>Quando <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% da internet</a> tem um motivo para comemorar, você sabe que isso vai ser ótimo!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://br.wordpress.org/2018/04/20/celebre-o-15o-aniversario-do-wordpress-no-dia-27-de-maio/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Ferramentas para conformidade com o GDPR no WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2018/04/17/ferramentas-para-conformidade-com-o-gdpr-no-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://br.wordpress.org/2018/04/17/ferramentas-para-conformidade-com-o-gdpr-no-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 23:03:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Geral\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"GDPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1247\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:351:\"Conformidade com o GDPR é uma coisa importante para todos os sites WordPress. A Equipe de conformidade com o GDPR está procurando ajuda para testar as ferramentas de privacidade que estão sendo desenvolvidas. O que é o GDPR? O GDPR (Regulamento geral de proteção de dados, do inglês General Data Protection Regulation) foi criado para [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4721:\"<p>Conformidade com o GDPR é uma coisa importante para todos os sites WordPress. A Equipe de conformidade com o GDPR está procurando ajuda para testar as ferramentas de privacidade que estão sendo desenvolvidas.</p>\n<h2>O que é o GDPR?</h2>\n<p>O GDPR (Regulamento geral de proteção de dados, do inglês <em><a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a></em>) foi criado para fortalecer e unificar a proteção dos dados de todos os indivíduos na União Europeia. Seu objetivo principal é devolver para os residentes na UE o controle sobre seus dados pessoais.</p>\n<p>Por que a urgência? Apesar do GDPR ter sido criado há dois anos, sua aplicação se tornará obrigatória a partir de 25 de maio de 2018.</p>\n<h2>A Equipe WordPress de conformidade com o GDPR</h2>\n<p>A Equipe de conformidade com o GPDR entende que ajudar os sites criados com o WordPress a se tornarem compatíveis com o regulamento é uma tarefa enorme e que ainda está em andamento. A equipe está se concentrando na criação de uma política abrangente para os arquivos do próprio WordPress, diretrizes para os plugins, ferramentas de privacidade e documentação. Tudo isso requer a sua ajuda.</p>\n<p>O foco da equipe está dividido em quatro áreas principais:</p>\n<ul>\n<li>Adicionar funcionalidades que ajudem os proprietários de sites na criação de políticas de privacidade abrangentes para seus próprios sites.</li>\n<li>Criar diretrizes para que os plugins se tornem compatíveis com o GDPR.</li>\n<li>Incluir ferramentas de administração que facilitem a conformidade e encorajem a privacidade dos usuários em geral.</li>\n<li>Gerar documentação que explique sobre privacidade para os proprietários de sites, quais são os principais requisitos de conformidade com o GDPR e como usar as novas ferramentas de privacidade.</li>\n</ul>\n<h2>Nós já não temos uma política de privacidade?</h2>\n<p>Sim e não. O que acontece é que o GDPR requer diretrizes mais firmes e mais restrições. Apesar de possuirmos muitos plugins que criam páginas de privacidade, nós precisamos de formas para gerar uma política de privacidade unificada e abrangente. Os usuários precisarão de ferramentas para alcançar a conformidade com mais facilidade.</p>\n<p>Proprietários de sites poderão criar uma política de privacidade compatível com o GDPR em três etapas:</p>\n<ol>\n<li>Adicionando uma página exclusiva para a política.</li>\n<li>Adicionando informações dos plugins sobre privacidade.</li>\n<li>Revisando e publicando a política.</li>\n</ol>\n<p>Ao editar a política, uma nova área será incluída na tela da página de edição. Lá, todos os plugins que coletam ou armazenam dados dos usuários poderão adicionar informações sobre privacidade. Além disso, haverá um alerta para os proprietários de sites quando qualquer informação sobre privacidade for alterada depois que um plugin for ativado, desativado ou atualizado.</p>\n<p>Há uma nova funcionalidade para confirmar solicitações de usuários através do endereço de e-mail. Com ela, os proprietários de sites poderão verificar solicitações dos usuários sobre exibição e download de seus dados pessoais ou para torná-los anônimos.</p>\n<p>Uma nova página &#8220;Privacidade&#8221; foi adicionada no menu &#8220;Ferramentas&#8221;. Ela exibirá tanto as novas solicitações dos usuários quanto as confirmadas e as já realizadas. Ela também terá ferramentas para exportar e para tornar anônimos dados pessoais e também para solicitar confirmação por e-mail de forma a evitar tentativas de abuso.</p>\n<p>Uma nova seção sobre privacidade será incluída no <a href=\"https://developer.wordpress.org/plugins/\">manual dos plugins</a>. Ela conterá informações gerais sobre privacidade dos usuários, o que um plugin deve fazer para se tornar compatível e também terá dicas e exemplos sobre como usar as novas funcionalidades do WordPress relacionadas à privacidade.</p>\n<p>O lançamento das novas políticas de privacidade está agendado para o final de abril ou começo de maio de 2018.</p>\n<h2>Como posso participar?</h2>\n<p>Adoraríamos contar com a sua ajuda. O primeiro passo é conscientizar e educar. Para mais informações sobre as novas ferramentas de privacidade, consulte <a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">o plano de ação</a>.</p>\n<p>Se você quer participar do desenvolvimento necessário para os arquivos básicos do WordPress e no teste das novas ferramentas de privacidade, entre para o canal #gdpr-compliance no <a href=\"https://make.wordpress.org/chat/\">slack internacional do WordPress</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://br.wordpress.org/2018/04/17/ferramentas-para-conformidade-com-o-gdpr-no-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 4.9.5 – Atualização de segurança e manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2018/04/04/wordpress-4-9-5-atualizacao-de-seguranca-e-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Apr 2018 12:24:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1241\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:377:\"O WordPress 4.9.5 já está disponível. Essa é uma atualização de segurança e manutenção para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente. As versões 4.9.4 e anteriores foram afetadas por três problemas de segurança: Como parte do compromisso da equipe dos arquivos básicos de aumentar a segurança, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6517:\"<p>O WordPress 4.9.5 já está disponível. Essa é uma <strong>atualização de segurança e manutenção</strong> para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente.</p>\n<p>As versões 4.9.4 e anteriores foram afetadas por três problemas de segurança: Como parte do compromisso da equipe dos arquivos básicos de aumentar a segurança, os seguintes ajustes foram implementados na versão 4.9.5:</p>\n<ol>\n<li><code>Localhost</code> não é mais considerado como servidor por padrão.</li>\n<li>Uso de redirecionamento seguro para a página de acesso se SSL for obrigatório.</li>\n<li>Verificação e escape da string que contém a versão do WordPress, usada nas tags <em>generator</em>.</li>\n</ol>\n<p>Agradecemos a todos os que identificaram e relataram esses problemas pelo <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">modo responsável</a> como isso foi feito: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> e <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> da Equipe de segurança do WordPress e <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>.</p>\n<p>Outros vinte e cinco erros foram resolvidos no WordPress 4.9.5. Os mais importantes foram:</p>\n<ul>\n<li>Os estilos anteriores das legendas dos shortcodes foram restaurados.</li>\n<li>Agora é possível recortar imagens em dispositivos com telas sensíveis ao toque.</li>\n<li>Vários textos, como mensagens de erro, foram atualizados e agora são mais fáceis de entender.</li>\n<li>O posicionamento do espaço reservado para anexos durante o upload foi ajustado.</li>\n<li>A funcionalidade de código de verificação (nonce) personalizado na API REST de JavaScript agora está consistente por todo o código.</li>\n<li>Aumento da compatibilidade com o PHP 7.2.</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">Para saber mais, acesse este post com mais informações sobre todos os problemas ajustados na versão 4.9.5</a>.</p>\n<p><a href=\"https://br.wordpress.org/txt-download/\">Baixe o WordPress 4.9.5</a> ou visite o Painel → Atualizações e simplesmente clique em “Atualizar agora”. Sites com suporte a atualizações automáticas em segundo plano já começaram a se atualizar.</p>\n<p>Agradecemos a todos que contribuíram para o WordPress 4.9.5:</p>\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a> e <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.4 – Atualização de manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://br.wordpress.org/2018/02/06/wordpress-4-9-4-atualizacao-de-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:10:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1162\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:353:\"O WordPress 4.9.4 já está disponível. Essa atualização de manutenção corrige um erro grave da versão 4.9.3, que causará uma falha nos sites com suporte a atualizações automáticas em segundo plano e exigirá uma ação sua (ou de sua hospedagem) para que ele seja atualizado para a versão 4.9.4. Quatro anos atrás, com o WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2846:\"<p><span style=\"font-weight: 400\">O WordPress 4.9.4 já está disponível.</span></p>\n<p><span style=\"font-weight: 400\">Essa atualização de manutenção corrige um erro grave da versão 4.9.3, que causará uma falha nos sites com suporte a atualizações automáticas em segundo plano e exigirá uma ação sua (ou de sua hospedagem) para que ele seja atualizado para a versão 4.9.4.</span></p>\n<p><span style=\"font-weight: 400\">Quatro anos atrás, com o </span><a href=\"https://br.wordpress.org/2013/10/25/lancado-wordpress-3-7-basie/\"><span style=\"font-weight: 400\">WordPress 3.7 &#8220;Basie&#8221;</span></a><span style=\"font-weight: 400\">, nós adicionamos a funcionalidade do WordPress atualizar-se automaticamente, mantendo seu site seguro e livre de erros, mesmo quando você não podia cuidar disso. Por quatro anos isso ajudou a manter milhões de instalações atualizadas com muito poucos problemas durante este tempo. Infelizmente, a <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">atualização 4.9.3 lançada ontem</a> continha um erro grave que só foi descoberto após o lançamento. O erro fará com que o WordPress falhe quando ele tentar atualizar-se automaticamente para a versão 4.9.4, e exigirá que isso seja feito através do painel de controle do WordPress ou através das ferramentas de atualizações das hospedagens.</span></p>\n<p><span style=\"font-weight: 400\">Empresas que gerenciam hospedagens WordPress que instalam atualizações automaticamente para seus clientes podem fazer isso normalmente, e estaremos trabalhando com as demais hospedagens para garantir que seus clientes possam ser atualizados automaticamente para a versão 4.9.4 do WordPress.</span></p>\n<p><span style=\"font-weight: 400\">Para mais detalhes técnicos desse problema, nós publicamos em </span><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\"><span style=\"font-weight: 400\">nosso blog de desenvolvimento dos arquivos básicos (em inglês)</span></a><span style=\"font-weight: 400\">. Para a lista completa de mudanças, consulte nossa </span><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\"><span style=\"font-weight: 400\">lista de tickets</span></a><span style=\"font-weight: 400\">.</span></p>\n<p><a href=\"https://br.wordpress.org/txt-download/\"><span style=\"font-weight: 400\">Baixe o WordPress 4.9.4</span></a><span style=\"font-weight: 400\"> ou vá até Painel de Controle → Atualizações e clique &#8220;Atualizar agora&#8221;.</span></p>\n<hr />\n<p>Agradecimentos ao <a href=\"https://profiles.wordpress.org/fellipesoares\">@fellipesoares</a> pela tradução <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 4.9.2 – Atualização de segurança e manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2018/01/18/wordpress-4-9-2-atualizacao-de-seguranca-e-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 18 Jan 2018 17:35:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1156\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"O WordPress 4.9.2 já está disponível. Essa é uma atualização de segurança e manutenção para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente. Uma vulnerabilidade na execução de scripts de outros sites (XSS, do inglês Cross-Site Scripting) foi descoberta nos arquivos Flash usados para retrocompatibilidade pelo MediaElement, uma [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4118:\"<p>O WordPress 4.9.2 já está disponível. Essa é uma <strong>atualização de segurança e manutenção</strong> para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente.</p>\n<p>Uma vulnerabilidade na execução de scripts de outros sites (XSS, do inglês Cross-Site Scripting) foi descoberta nos arquivos Flash usados para retrocompatibilidade pelo MediaElement, uma biblioteca que é usada pelos arquivos básicos do WordPress. Como os arquivos Flash já não são mais necessários na maioria dos casos, eles foram removidos do WordPress.</p>\n<p>Foi lançada uma nova versão da biblioteca MediaElement que corrige o erro e <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">um plugin WordPress contendo os arquivos corrigidos</a> está disponível no repositório.</p>\n<p>Nossos agradecimentos para quem informou esses problemas pelo <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">modo responsável como isso foi feito</a>: <a href=\"https://opnsec.com\">Enguerran Gillier</a> e <a href=\"https://widiz.com/\">Widiz</a>.</p>\n<p>Outros 21 erros foram resolvidos no WordPress 4.9.2. Os mais importantes foram:</p>\n<ul>\n<li>Correção de erros JavaScript que impediam a atualização de posts no Firefox.</li>\n<li>O comportamento original de <code>get_category_link()</code> e <code>category_description()</code>, que não faziam distinção de taxonomia, foi restaurado.</li>\n<li>O recurso Alternar entre temas tentará agora restaurar a atribuição anterior dos widgets, mesmo quando não houver áreas de widgets a serem mapeadas.</li>\n</ul>\n<p>O Codex tem <a href=\"https://codex.wordpress.org/Version_4.9.2\">mais informações sobre todos os problemas corrigidos na versão 4.9.2</a>, se desejar saber mais.</p>\n<p><a href=\"https://br.wordpress.org/txt-download/\">Baixe o WordPress 4.9.2</a> ou visite o Painel → Atualizações e simplesmente clique em “Atualizar agora”. Sites com suporte a atualizações automáticas em segundo plano já começaram a se atualizar.</p>\n<p>Agradecemos a todos que contribuíram para o WordPress 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> e <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 4.9.1 – Atualização de segurança e manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2017/11/30/wordpress-4-9-1-atualizacao-de-seguranca-e-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Nov 2017 17:16:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Segurança\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1149\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:370:\"O WordPress 4.9.1 já está disponível. Essa é uma atualização de segurança e manutenção para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente. As versões 4.9 e anteriores do WordPress foram afetadas por quatro problemas de segurança que podem ser explorados como parte de um ataque multivetor. Como [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4450:\"<p>O WordPress 4.9.1 já está disponível. Essa é uma <strong>atualização de segurança e manutenção</strong> para todas as versões a partir do WordPress 3.7. Encorajamos que você atualize seus sites imediatamente.</p>\n<p>As versões 4.9 e anteriores do WordPress foram afetadas por quatro problemas de segurança que podem ser explorados como parte de um ataque multivetor. Como parte do compromisso da equipe dos arquivos básicos de aumentar a segurança, os seguintes ajustes foram implementados na versão 4.9.1:</p>\n<ol>\n<li>Uso de um hash gerado apropriadamente para a chave <code>newbloguser</code> ao invés de uma determinada substring.</li>\n<li>Tratamento dos atributos de idiomas nos elementos <code>html</code>.</li>\n<li>Verificação do escape dos fechamentos dos atributos em feeds RSS e Atom.</li>\n<li>Remoção da habilidade de subir arquivos JavaScript para usuários que não tenham a capacidade <code>unfiltered_html</code>.</li>\n</ol>\n<p>Agradecemos a todos os que identificaram e relataram esses problemas pelo <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">modo responsável</a> como isso foi feito: Rahul Pratap Singh e John Blackbourn.</p>\n<p>Outros onze erros foram resolvidos no WordPress 4.9.1. Os mais importantes foram:</p>\n<ul>\n<li>Problemas relacionados ao cache de arquivos de templates nos temas.</li>\n<li>Um erro de JavaScript no MediaElement que não permitia que os usuários de determinados idiomas subissem arquivos de mídia.</li>\n<li>A impossibilidade de editar arquivos de temas e plugins em servidores Windows.</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/\">Para saber mais, acesse este post com mais informações sobre todos os problemas ajustados na versão 4.9.1</a>.</p>\n<p><a href=\"https://br.wordpress.org/txt-download/\">Baixe o WordPress 4.9.1</a> ou visite o Painel → Atualizações e simplesmente clique em “Atualizar agora”. Sites com suporte a atualizações automáticas em segundo plano já começaram a se atualizar.</p>\n<p>Agradecemos a todos que contribuíram para o WordPress 4.9.1:</p>\n<p><a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/edo888/\">edo888</a>, <a href=\"https://profiles.wordpress.org/erich_k4wp/\">Erich Munz</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/ibenic/\">Igor Benic</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyescott/\">jeremyescott</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/lenasterg/\">lenasterg</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mariovalney/\">Mário Valney <img class=\"\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/natacado/\">natacado</a>, <a href=\"https://profiles.wordpress.org/odysseygate/\">odyssey</a>, <a href=\"https://profiles.wordpress.org/precies/\">precies</a>, <a href=\"https://profiles.wordpress.org/stodorovic/\">Saša</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WordPress 4.9 “Tipton”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://br.wordpress.org/2017/11/16/wordpress-4-9-tipton/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Nov 2017 13:56:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1116\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"Grandes melhorias no Personalizar, verificação de erros de código e mais! 🎉 A versão 4.9 do WordPress, nomeada como “Tipton” em honra ao músico de jazz e líder de banda Billy Tipton, está disponível para download ou atualização no seu painel do WordPress. Os novos recursos da versão 4.9 melhorarão o fluxo de trabalho do seu design e [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:42869:\"<h2 style=\"text-align: center\">Grandes melhorias no Personalizar, verificação de erros de código e mais! <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></h2>\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2017/11/banner.png?fit=2400%2C1200&amp;ssl=1\" alt=\"\" /></figure>\n<p>A versão 4.9 do WordPress, nomeada como “Tipton” em honra ao músico de jazz e líder de banda Billy Tipton, está disponível para download ou atualização no seu painel do WordPress. Os novos recursos da versão 4.9 melhorarão o fluxo de trabalho do seu design e manterão você mais seguro contra erros de código.</p>\n<p>Agora contando com rascunhos, agendamento, travamento contra alterações concorrentes de design, além de links para visualização, o fluxo de trabalho do Personalizar melhora a colaboração entre criadores de conteúdo. Além disso, o destaque na sintaxe de código e a verificação de erros tornarão a experiência de construção de sites mais clara e tranquila. Finalmente, como se tudo isso já não fosse sensacional, temos um novo widget de galeria e melhorias na navegação e troca de temas.</p>\n<hr class=\"wp-block-separator\" />\n<h2>Fluxo de trabalho do Personalizar melhorado</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2017/11/customizer-workflow-improved-small.png?w=632&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></figure>\n<h3>Rascunhos e agendamento de personalizações de design do site</h3>\n<p>É isso aí, você leu certo. Do mesmo modo que você pode guardar rascunhos, revisar e agendar posts para que eles sejam publicados na data e hora que você escolher, agora é possível alterar o design do seu site como você quiser e agendar a publicação dessas mudanças para a hora que achar melhor.</p>\n<h3>Colaboração com links para visualização de design</h3>\n<p>Precisa que outras pessoas avaliem as mudanças de design que você está propondo? O WordPress 4.9 fornece um link de visualização que você pode enviar para a sua equipe e clientes de modo que seja possível coletar e aplicar as modificações propostas antes que você agende a publicação das alterações. Será que podemos dizer que incrementamos a colaboração?</p>\n<h3>Travamento do design para proteger suas mudanças</h3>\n<p>Já se imaginou em um cenário onde dois designers estão no mesmo projeto e o designer A sobrescreve as lindas mudanças do designer B? O recurso de travamento de design do WordPress 4.9 (parecido com o travamento de posts) protege o rascunho do seu design para que ninguém possa alterar ou apagar o seu árduo trabalho.</p>\n<h3>Uma pergunta para proteger o seu trabalho</h3>\n<p>Teve que sair da sua mesa antes de salvar o rascunho das suas alterações de design? Não tema, quando você voltar o WordPress 4.9 gentilmente perguntará se você gostaria ou não de salvar suas mudanças.</p>\n<hr class=\"wp-block-separator\" />\n<h2>Melhorias na edição de código</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2017/11/coding-enhancements-small.png?w=632&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></figure>\n<h3>Destaque de sintaxe e verificação de erros? Sim, por favor!</h3>\n<p>Você acabou com um problema de exibição, mas não faz ideia do que exatamente está errado no CSS que você escreveu com tanto carinho. Com o destaque de sintaxe e verificação de erros na edição de CSS e no widget de HTML personalizado apresentado já no WordPress 4.8.1, você identificará os erros bem rapidinho. Com certeza isso vai ajudar a examinar o código com mais facilidade e a corrigir erros mais rapidamente.</p>\n<h3>Área de testes para segurança</h3>\n<p>A temida tela branca. Você poderá evitá-la quando estiver trabalhando no código de temas e plugins, porque o WordPress 4.9 avisará que você está prestes a salvar um erro. Você dormirá com mais tranquilidade à noite.</p>\n<h3>Alerta: perigo à frente!</h3>\n<p>Ao editar temas e plugins diretamente, o WordPress 4.9 vai avisá-lo educadamente de que isto é uma prática perigosa. Ele recomendará que você faça um backup dos seus arquivos antes de salvar, evitando perdê-los caso eles sejam sobrescritos na próxima atualização. Tome o caminho seguro: no futuro você vai agradecer. Sua equipe e clientes também.</p>\n<hr class=\"wp-block-separator\" />\n<h2>Mais atualizações nos widgets</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2017/11/even-more-widget-updates-small.png?w=632&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></figure>\n<h3>Novo widget de galeria</h3>\n<p>Continuando as mudanças nas mídias iniciadas no WordPress 4.8, agora você pode adicionar uma galeria através de um widget. Isso aí!</p>\n<h3>Adicione mídia só apertando um botão</h3>\n<p>Quer adicionar mídia ao seu widget de texto? Incorpore imagens, vídeo e áudio diretamente no widget junto ao seu texto com o nosso não tão bonito, mas extremamente útil, botão de Adicionar mídia. Oba!</p>\n<hr class=\"wp-block-separator\" />\n<h2>Melhorias na construção do seu site</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2017/11/site-building-improvements-small.png?w=632&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></figure>\n<h3>Troca de tema mais confiável</h3>\n<p>Ao trocar de tema, os widgets algumas vezes pensam que podem sair por aí, trocando de localização. Melhorias no WordPress 4.9 oferecem um posicionamento de menus e widgets mais persistente quando você decidir que é hora de usar um novo tema. Além disso, você pode visualizar temas instalados ou baixar, instalar e visualizar novos temas do jeito certo. Nada é tão útil quanto poder visualizar as mudanças antes de implementá-las.</p>\n<h3>Encontre e visualize o tema perfeito</h3>\n<p>Procurando por um novo tema para o seu site? Agora, sem sair do Personalizar, você pode procurar, navegar e visualizar mais de 2.600 temas antes de publicar as mudanças no seu site. Além disso, você pode buscar mais rápido através de filtros por assunto, recursos e layout.</p>\n<h3>Melhores instruções no menu geram menos confusão</h3>\n<p>Você ficava confuso com o processo de criação de um novo menu? Isso vai mudar! Melhoramos a experiência do usuário para tornar este processo mais tranquilo. Com a nossa versão novinha em folha, você fará isso com mais graça e elegância.</p>\n<hr class=\"wp-block-separator\" />\n<h2>Dê uma mãozinha com o Gutenberg <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f91d.png\" alt=\"🤝\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></h2>\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2017/11/gutenberg-1.png?w=632&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></figure>\n<p>O WordPress está trabalhando em uma nova forma de criar e controlar seu conteúdo e nós adoraríamos contar com a sua ajuda. Tem interesse em <a href=\"https://br.wordpress.org/plugins/gutenberg/\">testar antes</a> ou se envolver com o projeto Gutenberg? <a href=\"https://github.com/WordPress/gutenberg\">Contribua no GitHub</a>.</p>\n<p>(P.S.: o post original foi escrito com o Gutenberg!)</p>\n<hr class=\"wp-block-separator\" />\n<h2>Alegria para os desenvolvedores <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f60a.png\" alt=\"😊\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></h2>\n<h3><a href=\"https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/\">Melhorias na API JS do Personalizar</a></h3>\n<p>Fizemos várias melhorias na API JS do Personalizar no WordPress 4.9, eliminando vários problemas e dificuldades e tornando-a tão fácil de trabalhar quanto a API PHP. Também há novos modelos básicos de controles, um controle de data e hora e novas notificações de seção, de painel ou globais, só pra mencionar algumas. <a href=\"https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/\">Veja a lista completa.</a></p>\n<h3><a href=\"https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/\">CodeMirror disponível para usar nos seus temas e plugins</a></h3>\n<p>Introduzimos uma nova biblioteca de edição de código, o CodeMirror, a ser usada pelos arquivos básicos. Ela melhorará as experiências de criação e edição de código dos seus plugins, em campos que incluam CSS ou JavaScript, por exemplo.</p>\n<h3><a href=\"https://make.wordpress.org/core/2017/10/30/mediaelement-upgrades-in-wordpress-4-9/\">MediaElement.js atualizado para 4.2.6</a></h3>\n<p>O WordPress 4.9 inclui uma versão atualizada do MediaElement.js, que remove dependências do jQuery, melhora a acessibilidade, torna a interface gráfica mais moderna e corrige vários erros.</p>\n<h3><a href=\"https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/\">Melhorias nas funções e capacidades</a></h3>\n<p>Novas capacidades foram introduzidas para permitir maior granularidade no gerenciamento de plugins e arquivos de tradução. Além disso, o processo para tornar o site um multisite recebeu um ajuste fino para atualizar as funções e capacidades disponíveis de um modo mais confiável e coerente.</p>\n<hr class=\"wp-block-separator\" />\n<h2>O esquadrão</h2>\n<p>Esta versão foi liderada por <a href=\"https://choycedesign.com/\">Mel Choyce</a> e <a href=\"https://weston.ruter.net/\">Weston Ruter</a>,com a ajuda dos fabulosos colegas a seguir. São 443 contribuidores responsáveis por este lançamento, sendo esta a primeira vez para 185 deles. Coloque um Billy Tipton para tocar no serviço de música que você mais gosta e dê uma olhada em alguns de seus perfis, tem alguns brasileiros nela:</p>\n<p><a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/aaronrutley\">Aaron Rutley</a>, <a href=\"https://profiles.wordpress.org/ibachal\">Achal Jain</a>, <a href=\"https://profiles.wordpress.org/kawauso\">Adam Harley (Kawauso)</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamwills\">AdamWills</a>, <a href=\"https://profiles.wordpress.org/adhun\">Adhun Anand</a>, <a href=\"https://profiles.wordpress.org/aegis123\">aegis123</a>, <a href=\"https://profiles.wordpress.org/afzalmultani\">Afzal Multani</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajoah\">ajoah</a>, <a href=\"https://profiles.wordpress.org/soniakash\">Akash Soni</a>, <a href=\"https://profiles.wordpress.org/akbarhusen\">akbarhusen</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/xavortm\">Alex Dimitrov</a>, <a href=\"https://profiles.wordpress.org/alpipego\">Alex Goller</a>, <a href=\"https://profiles.wordpress.org/alexvorn2\">Alexandru Vornicescu</a>, <a href=\"https://profiles.wordpress.org/alibasheer\">alibasheer</a>, <a href=\"https://profiles.wordpress.org/alxndr\">alxndr</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreagobetti\">andreagobetti</a>, <a href=\"https://profiles.wordpress.org/aduth\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/norcross\">Andrew Norcross</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/afragen\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/kelderic\">Andy Mercer</a>, <a href=\"https://profiles.wordpress.org/la-geek\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/anhskohbo\">anhskohbo</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/ahortin\">Anthony Hortin</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/antonrinas\">antonrinas</a>, <a href=\"https://profiles.wordpress.org/appchecker\">appchecker</a>, <a href=\"https://profiles.wordpress.org/arena94\">arena94</a>, <a href=\"https://profiles.wordpress.org/bsop\">Arnaud Coolsaet</a>, <a href=\"https://profiles.wordpress.org/arnaudban\">ArnaudBan</a>, <a href=\"https://profiles.wordpress.org/aryamaaru\">Arun</a>, <a href=\"https://profiles.wordpress.org/mrasharirfan\">Ashar Irfan</a>, <a href=\"https://profiles.wordpress.org/atachibana\">atachibana</a>, <a href=\"https://profiles.wordpress.org/atanasangelovdev\">Atanas Angelov</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">audrasjb</a>, <a href=\"https://profiles.wordpress.org/avinapatel\">Avina Patel</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/barryceelen\">Barry Ceelen</a>, <a href=\"https://profiles.wordpress.org/bduclos\">bduclos</a>, <a href=\"https://profiles.wordpress.org/pixolin\">Bego Mario Garde</a>, <a href=\"https://profiles.wordpress.org/behzod\">Behzod Saidov</a>, <a href=\"https://profiles.wordpress.org/bcole808\">Ben Cole</a>, <a href=\"https://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/benoitchantre\">benoitchantre</a>, <a href=\"https://profiles.wordpress.org/bnap00\">Bharat Parsiya</a>, <a href=\"https://profiles.wordpress.org/bhaveshkhadodara\">bhavesh khadodara</a>, <a href=\"https://profiles.wordpress.org/bplv\">Biplav</a>, <a href=\"https://profiles.wordpress.org/biranit\">Biranit</a>, <a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/biskobe\">biskobe</a>, <a href=\"https://profiles.wordpress.org/bjornw\">BjornW</a>, <a href=\"https://profiles.wordpress.org/blackbam\">Blackbam</a>, <a href=\"https://profiles.wordpress.org/blobfolio\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/bobbingwide\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/gitlost\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone B. Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/bradparbs\">Brad Parbs</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/bpayton\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/brentjettgmailcom\">Brent Jett</a>, <a href=\"https://profiles.wordpress.org/brianlayman\">Brian Layman</a>, <a href=\"https://profiles.wordpress.org/monopine\">Brian Meyer</a>, <a href=\"https://profiles.wordpress.org/borgesbruno\">Bruno Borges <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/bseddon\">bseddon</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90\">Bunty</a>, <a href=\"https://profiles.wordpress.org/carldanley\">Carl Danley</a>, <a href=\"https://profiles.wordpress.org/poena\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sixhours\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/carolinegeven\">carolinegeven</a>, <a href=\"https://profiles.wordpress.org/caercam\">Charlie Merland</a>, <a href=\"https://profiles.wordpress.org/chetanchauhan\">Chetan Chauhan</a>, <a href=\"https://profiles.wordpress.org/ketuchetan\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/choongsavvii\">choong</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrishardie\">Chris Hardie</a>, <a href=\"https://profiles.wordpress.org/crunnells\">Chris Runnells</a>, <a href=\"https://profiles.wordpress.org/christian1012\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/presskopp\">Christian Herrmann</a>, <a href=\"https://profiles.wordpress.org/christophherr\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/chsxf\">chsxf</a>, <a href=\"https://profiles.wordpress.org/chrisvendiadvertisingcom\">cjhaas</a>, <a href=\"https://profiles.wordpress.org/cliffseal\">Cliff Seal</a>, <a href=\"https://profiles.wordpress.org/code-monkey\">code-monkey</a>, <a href=\"https://profiles.wordpress.org/collizo4sky\">Collins Agbonghama</a>, <a href=\"https://profiles.wordpress.org/corvidism\">corvidism</a>, <a href=\"https://profiles.wordpress.org/csloisel\">csloisel</a>, <a href=\"https://profiles.wordpress.org/daedalon\">Daedalon</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/mte90\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/dany2217\">dany2217</a>, <a href=\"https://profiles.wordpress.org/davepullig\">Dave Pullig</a>, <a href=\"https://profiles.wordpress.org/davefx\">DaveFX</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davilera\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/turtlepod\">David Chandra Purnama</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dshanske\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/straussd\">David Strauss</a>, <a href=\"https://profiles.wordpress.org/jdtrower\">David Trower</a>, <a href=\"https://profiles.wordpress.org/folletto\">Davide &#8216;Folletto&#8217; Casali</a>, <a href=\"https://profiles.wordpress.org/daymobrew\">daymobrew</a>, <a href=\"https://profiles.wordpress.org/valendesigns\">Derek Herman</a>, <a href=\"https://profiles.wordpress.org/designsimply\">designsimply</a>, <a href=\"https://profiles.wordpress.org/diedeexterkate\">DiedeExterkate</a>, <a href=\"https://profiles.wordpress.org/dingo_bastard\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dipeshkakadiya\">dipeshkakadiya</a>, <a href=\"https://profiles.wordpress.org/div33\">Divyesh Ladani</a>, <a href=\"https://profiles.wordpress.org/dency\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/dixitadusara\">dixitadusara</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dominikschwind-1\">Dominik Schwind</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dsawardekar\">dsawardekar</a>, <a href=\"https://profiles.wordpress.org/kucrut\">Dzikri Aziz</a>, <a href=\"https://profiles.wordpress.org/eatonz\">Eaton</a>, <a href=\"https://profiles.wordpress.org/eclev91\">eclev91</a>, <a href=\"https://profiles.wordpress.org/eddhurst\">Edd Hurst</a>, <a href=\"https://profiles.wordpress.org/egregor\">EGregor</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Ella Iseulde Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/elvishp2006\">elvishp2006</a>, <a href=\"https://profiles.wordpress.org/enricosorcinelli\">enrico.sorcinelli</a>, <a href=\"https://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/euthelup\">euthelup</a>, <a href=\"https://profiles.wordpress.org/circlecube\">Evan Mullins</a>, <a href=\"https://profiles.wordpress.org/eventualo\">eventualo</a>, <a href=\"https://profiles.wordpress.org/fab1en\">Fabien Quatravaux</a>, <a href=\"https://profiles.wordpress.org/psiico\">FancyThought</a>, <a href=\"https://profiles.wordpress.org/felipeelia\">Felipe Elia <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fergbrain\">fergbrain</a>, <a href=\"https://profiles.wordpress.org/mista-flo\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/gmariani405\">Gabriel Mariani</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/girishpanchal\">Girish Lohar</a>, <a href=\"https://profiles.wordpress.org/gkloveweb\">Govind Kumar</a>, <a href=\"https://profiles.wordpress.org/grahamarmfield\">Graham Armfield</a>, <a href=\"https://profiles.wordpress.org/gregross\">Greg Ross</a>, <a href=\"https://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"https://profiles.wordpress.org/grosbouff\">grosbouff</a>, <a href=\"https://profiles.wordpress.org/wido\">Guido Scialfa</a>, <a href=\"https://profiles.wordpress.org/ghosttoast\">Gustave F. Gerhardt</a>, <a href=\"https://profiles.wordpress.org/guzzilar\">guzzilar</a>, <a href=\"https://profiles.wordpress.org/hardeepasrani\">Hardeep Asrani</a>, <a href=\"https://profiles.wordpress.org/hazemnoor\">Hazem Noor</a>, <a href=\"https://profiles.wordpress.org/hazimayesh\">hazimayesh</a>, <a href=\"https://profiles.wordpress.org/helen\">Helen Hou-Sandí</a>, <a href=\"https://profiles.wordpress.org/henrywright-1\">Henry</a>, <a href=\"https://profiles.wordpress.org/henrywright\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herregroen\">herregroen</a>, <a href=\"https://profiles.wordpress.org/hnle\">Hinaloe</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/hugobaeta\">Hugo Baeta</a>, <a href=\"https://profiles.wordpress.org/jcc9873\">Iacopo C</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/ippei-sumida\">Ippei Sumida</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/ireneyoast\">Irene Strikkers</a>, <a href=\"https://profiles.wordpress.org/ivankristianto\">Ivan Kristianto</a>, <a href=\"https://profiles.wordpress.org/ixmati\">ixmati</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jhoffmann\">j.hoffmann</a>, <a href=\"https://profiles.wordpress.org/jnylen0\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/octalmage\">Jason Stallings</a>, <a href=\"https://profiles.wordpress.org/jbpaul17\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jmdodd\">Jennifer M. Dodd</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/jipmoors\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jjcomack\">jjcomack</a>, <a href=\"https://profiles.wordpress.org/jkhongusc\">jkhongusc</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johneckman\">John Eckman</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnregan3\">John Regan</a>, <a href=\"https://profiles.wordpress.org/johnpgreen\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/johnroper100\">johnroper100</a>, <a href=\"https://profiles.wordpress.org/jonathanbardo\">Jonathan Bardo</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/chanthaboune\">Josepha</a>, <a href=\"https://profiles.wordpress.org/shelob9\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/joshuawold\">Joshua Wold</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf\">jrf</a>, <a href=\"https://profiles.wordpress.org/jsepia\">jsepia</a>, <a href=\"https://profiles.wordpress.org/jsonfry\">jsonfry</a>, <a href=\"https://profiles.wordpress.org/juhise\">Juhi Saxena</a>, <a href=\"https://profiles.wordpress.org/jlambe\">Julien</a>, <a href=\"https://profiles.wordpress.org/kopepasah\">Justin Kopepasah</a>, <a href=\"https://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/thekt12\">Karthik Thayyil</a>, <a href=\"https://profiles.wordpress.org/zoonini\">Kathryn Presner</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/wraithkenny\">Ken Newman</a>, <a href=\"https://profiles.wordpress.org/captainn\">Kevin Newman</a>, <a href=\"https://profiles.wordpress.org/kpdesign\">Kim Parsell</a>, <a href=\"https://profiles.wordpress.org/kiranpotphode\">Kiran Potphode</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/kmgalanakis\">Konstantinos Galanakis</a>, <a href=\"https://profiles.wordpress.org/koopersmith\">koopersmith</a>, <a href=\"https://profiles.wordpress.org/kristastevens\">Krista Stevens</a>, <a href=\"https://profiles.wordpress.org/kekkakokkers\">Kristin Kokkersvold</a>, <a href=\"https://profiles.wordpress.org/lalitpendhare\">lalitpendhare</a>, <a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/lemacarl\">lemacarl</a>, <a href=\"https://profiles.wordpress.org/lessbloat\">lessbloat</a>, <a href=\"https://profiles.wordpress.org/llemurya\">llemurya</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/mariovalney\">Mário Valney <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/m1tk00\">m1tk00</a>, <a href=\"https://profiles.wordpress.org/maedahbatool\">Maedah Batool</a>, <a href=\"https://profiles.wordpress.org/mp518\">Mahesh Prajapati</a>, <a href=\"https://profiles.wordpress.org/mahvash-fatima\">Mahvash Fatima</a>, <a href=\"https://profiles.wordpress.org/travel_girl\">Maja Benke</a>, <a href=\"https://profiles.wordpress.org/mako09\">Mako</a>, <a href=\"https://profiles.wordpress.org/manolis09\">manolis09</a>, <a href=\"https://profiles.wordpress.org/manuelaugustin\">manuelaugustin</a>, <a href=\"https://profiles.wordpress.org/mbootsman\">Marcel Bootsman</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mariusvetrici\">Marius Vetrici</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mrwweb\">Mark Root-Wiley</a>, <a href=\"https://profiles.wordpress.org/markcallen\">markcallen</a>, <a href=\"https://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez\">MatheusGimenez <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/matveb\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/mgibbs189\">Matt Gibbs</a>, <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/matthiasthiel\">matthias.thiel</a>, <a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maximeculea\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/mdifelice\">mdifelice</a>, <a href=\"https://profiles.wordpress.org/megane9988\">megane9988</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/menakas\">Menaka S.</a>, <a href=\"https://profiles.wordpress.org/michaelarestad\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/mizejewski\">Michele Mizejewski</a>, <a href=\"https://profiles.wordpress.org/michelleweber\">Michelle Weber</a>, <a href=\"https://profiles.wordpress.org/stubgo\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/mihai2u\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel\">Mike Schinkel</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/milindmore22\">Milind More</a>, <a href=\"https://profiles.wordpress.org/mirucon\">Mirucon</a>, <a href=\"https://profiles.wordpress.org/studionashvegas\">Mitch Canter</a>, <a href=\"https://profiles.wordpress.org/mitraval192\">Mithun Raval</a>, <a href=\"https://profiles.wordpress.org/mkomar\">mkomar</a>, <a href=\"https://profiles.wordpress.org/monikarao\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/mt8biz\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/msebel\">msebel</a>, <a href=\"https://profiles.wordpress.org/munyagu\">munyagu</a>, <a href=\"https://profiles.wordpress.org/mythemeshop\">MyThemeShop</a>, <a href=\"https://profiles.wordpress.org/ndoublehwp\">N&#8217;DoubleH</a>, <a href=\"https://profiles.wordpress.org/nathanatmoz\">Nathan Johnson</a>, <a href=\"https://profiles.wordpress.org/nenad\">nenad</a>, <a href=\"https://profiles.wordpress.org/nicbertino\">nic.bertino</a>, <a href=\"https://profiles.wordpress.org/ndiego\">Nick Diego</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nikeo\">Nicolas GUILLAUME</a>, <a href=\"https://profiles.wordpress.org/nicollle\">nicollle</a>, <a href=\"https://profiles.wordpress.org/jainnidhi\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/nikschavan\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/rabmalin\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/nileshdudakiya94\">Nileshdudakiya94</a>, <a href=\"https://profiles.wordpress.org/nishitlangaliya\">Nishit Langaliya</a>, <a href=\"https://profiles.wordpress.org/justnorris\">Norris</a>, <a href=\"https://profiles.wordpress.org/obradovic\">obradovic</a>, <a href=\"https://profiles.wordpress.org/ov3rfly\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paaljoachim\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/palmiak\">palmiak</a>, <a href=\"https://profiles.wordpress.org/parthsanghvi\">Parth Sanghvi</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/obrienlabs\">Pat O&#8217;Brien</a>, <a href=\"https://profiles.wordpress.org/patel\">patel</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pauldechov\">Paul Dechov</a>, <a href=\"https://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"https://profiles.wordpress.org/pcarvalho\">pcarvalho</a>, <a href=\"https://profiles.wordpress.org/pedromendonca\">Pedro Mendonça</a>, <a href=\"https://profiles.wordpress.org/gungeekatx\">Pete Nelson</a>, <a href=\"https://profiles.wordpress.org/pessoft\">Peter &#8220;Pessoft&#8221; Kolínek</a>, <a href=\"https://profiles.wordpress.org/donutz\">Peter J. Herrel</a>, <a href=\"https://profiles.wordpress.org/petertoi\">Peter Toi</a>, <a href=\"https://profiles.wordpress.org/westi\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philipjohn\">Philip John</a>, <a href=\"https://profiles.wordpress.org/delawski\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/mordauk\">Pippin Williamson</a>, <a href=\"https://profiles.wordpress.org/plastikschnitzer\">Plastikschnitzer</a>, <a href=\"https://profiles.wordpress.org/powerzilly\">powerzilly</a>, <a href=\"https://profiles.wordpress.org/pratikgandhi\">Pratik Gandhi</a>, <a href=\"https://profiles.wordpress.org/presslabs\">Presslabs</a>, <a href=\"https://profiles.wordpress.org/punit5658\">Punit Patel</a>, <a href=\"https://profiles.wordpress.org/purnendu\">Purnendu Dash</a>, <a href=\"https://profiles.wordpress.org/r-a-y\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rafa8626\">Rafael Miranda</a>, <a href=\"https://profiles.wordpress.org/rahmohn\">Rahmohn <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramon-fincken\">ramon fincken</a>, <a href=\"https://profiles.wordpress.org/jontyravi\">Ravi Vaghela</a>, <a href=\"https://profiles.wordpress.org/rclations\">RC Lations</a>, <a href=\"https://profiles.wordpress.org/redrambles\">redrambles</a>, <a href=\"https://profiles.wordpress.org/arena\">RENAUT</a>, <a href=\"https://profiles.wordpress.org/greuben\">Reuben Gunday</a>, <a href=\"https://profiles.wordpress.org/rfair404\">rfair404</a>, <a href=\"https://profiles.wordpress.org/youknowriad\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/riddhiehta02\">Riddhi Mehta</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/rcutmore\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/rodrigosprimo\">Rodrigo Primo <img class=\"size-full wp-image-1117\" src=\"https://br.wordpress.org/files/2017/11/pt_BR_flag.png\" alt=\"\" width=\"16\" height=\"16\" /></a>, <a href=\"https://profiles.wordpress.org/ronakganatra\">Ronak Ganatra</a>, <a href=\"https://profiles.wordpress.org/rugved\">rugved</a>, <a href=\"https://profiles.wordpress.org/rushabh4486\">Rushabh Shah</a>, <a href=\"https://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/ryanduff\">Ryan Duff</a>, <a href=\"https://profiles.wordpress.org/stunnedbeast\">Ryan Holmes</a>, <a href=\"https://profiles.wordpress.org/rmarks\">Ryan Marks</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/ohryan\">Ryan Neudorf</a>, <a href=\"https://profiles.wordpress.org/ryanplas\">Ryan Plas</a>, <a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/ryanrolds\">ryanrolds</a>, <a href=\"https://profiles.wordpress.org/ryotsun\">ryotsun</a>, <a href=\"https://profiles.wordpress.org/manchumahara\">Sabuj Kundu</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/sagarladani\">sagarladani</a>, <a href=\"https://profiles.wordpress.org/sa3idho\">Said El Bakkali</a>, <a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>, <a href=\"https://profiles.wordpress.org/viralsampat\">Sampat Viral</a>, <a href=\"https://profiles.wordpress.org/samuelsidler\">Samuel Sidler</a>, <a href=\"https://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/sathyapulse\">sathyapulse</a>, <a href=\"https://profiles.wordpress.org/sayedwp\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/sboisvert\">sboisvert</a>, <a href=\"https://profiles.wordpress.org/scottdeluzio\">Scott DeLuzio</a>, <a href=\"https://profiles.wordpress.org/sc0ttkclark\">Scott Kingsley Clark</a>, <a href=\"https://profiles.wordpress.org/scottlee\">Scott Lee</a>, <a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scribu\">scribu</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sebsz\">SeBsZ</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sgr33n\">Sergio De Falco</a>, <a href=\"https://profiles.wordpress.org/shamim51\">Shamim Hasan</a>, <a href=\"https://profiles.wordpress.org/shooper\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/shital-patel\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shramee\">shramee</a>, <a href=\"https://profiles.wordpress.org/nomnom99\">Siddharth Thevaril</a>, <a href=\"https://profiles.wordpress.org/pross\">Simon Prosser</a>, <a href=\"https://profiles.wordpress.org/skostadinov\">skostadinov</a>, <a href=\"https://profiles.wordpress.org/slaffik\">Slava Abakumov</a>, <a href=\"https://profiles.wordpress.org/someecards\">someecards</a>, <a href=\"https://profiles.wordpress.org/soean\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spencerfinnell\">spencerfinnell</a>, <a href=\"https://profiles.wordpress.org/spocke\">spocke</a>, <a href=\"https://profiles.wordpress.org/metodiew\">Stanko Metodiev</a>, <a href=\"https://profiles.wordpress.org/stephdau\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stephenharris\">Stephen Harris</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/stevepuddick\">Steve Puddick</a>, <a href=\"https://profiles.wordpress.org/stevenlinx\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/dualcube_subrata\">Subrata Mal</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sudar\">Sudar Muthu</a>, <a href=\"https://profiles.wordpress.org/musus\">Susumu Seino</a>, <a href=\"https://profiles.wordpress.org/svrooij\">svrooij</a>, <a href=\"https://profiles.wordpress.org/takahashi_fumiki\">Takahashi Fumiki</a>, <a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/buley\">Taylor</a>, <a href=\"https://profiles.wordpress.org/tejas5989\">tejas5989</a>, <a href=\"https://profiles.wordpress.org/terwdan\">terwdan</a>, <a href=\"https://profiles.wordpress.org/tharsheblows\">tharsheblows</a>, <a href=\"https://profiles.wordpress.org/thingsym\">thingsym</a>, <a href=\"https://profiles.wordpress.org/tfirdaus\">Thoriq Firdaus</a>, <a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thulshof\">thulshof</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tmatsuur\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobi823\">tobi823</a>, <a href=\"https://profiles.wordpress.org/toddnestor\">Todd Nestor</a>, <a href=\"https://profiles.wordpress.org/tobifjellner\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/zodiac1978\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/toru\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/toscho\">toscho</a>, <a href=\"https://profiles.wordpress.org/transl8or\">transl8or</a>, <a href=\"https://profiles.wordpress.org/truongwp\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tuanmh\">tuanmh</a>, <a href=\"https://profiles.wordpress.org/tv-productions\">TV productions</a>, <a href=\"https://profiles.wordpress.org/uicestone\">uicestone</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/umangvaghela123\">Umang Vaghela</a>, <a href=\"https://profiles.wordpress.org/umeshnevase\">Umesh Nevase</a>, <a href=\"https://profiles.wordpress.org/upadalavipul\">upadalavipul</a>, <a href=\"https://profiles.wordpress.org/utkarshpatel\">Utkarsh</a>, <a href=\"https://profiles.wordpress.org/vhauri\">vhauri</a>, <a href=\"https://profiles.wordpress.org/williampatton\">williampatton</a>, <a href=\"https://profiles.wordpress.org/withinboredom\">withinboredom</a>, <a href=\"https://profiles.wordpress.org/wojtekszkutnik\">Wojtek Szkutnik</a>, <a href=\"https://profiles.wordpress.org/xkon\">Xenos (xkon) Konstantinos</a>, <a href=\"https://profiles.wordpress.org/yahil\">Yahil Madakiya</a>, <a href=\"https://profiles.wordpress.org/yonivh\">yonivh</a>, <a href=\"https://profiles.wordpress.org/yrpwayne\">yrpwayne</a>, <a href=\"https://profiles.wordpress.org/zachwtx\">zachwtx</a>, and <a href=\"https://profiles.wordpress.org/zanematthew\">Zane Matthew</a>.</p>\n<p>Finalmente, agradecemos a toda a comunidade de tradutores que trabalharam no WordPress 4.9. Seus esforços trazem o WordPress 4.9 completamente traduzido em seu lançamento para 43 idiomas, inclusive para o Português do Brasil.</p>\n<p>Quer falar sobre o WordPress 4.9? <a href=\"https://s.w.org/images/core/4.9/wp-4-9_press-kit.zip\">Compilamos um kit para imprensa com informações sobre os recursos desta versão e alguns arquivos de mídia que podem ajudar</a>.</p>\n<p>Se você quer nos acompanhar ou ajudar, dê uma olhada no <a href=\"https://make.wordpress.org/\">Make WordPress</a> e no nosso <a href=\"https://make.wordpress.org/core/\">blog de desenvolvimento dos arquivos básicos</a>.</p>\n<p>Agradecemos por escolher o WordPress!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordCamp São Paulo 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://br.wordpress.org/2017/11/08/wordcamp-sao-paulo-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://br.wordpress.org/2017/11/08/wordcamp-sao-paulo-2017/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Nov 2017 22:51:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WordCamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=1105\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"Não marque nada para o próximo dia 2 de dezembro. O evento de WordPress mais tradicional do Brasil, o WordCamp São Paulo, vai acontecer na Faculdade Impacta, na Barra Funda, das 9h às 18h e você não pode perder. O que é um WordCamp? WordCamps são as conferências internacionais de WordPress organizadas pela comunidade de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Felipe Elia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3874:\"<p><a href=\"https://2017.saopaulo.wordcamp.org/\"><img class=\"aligncenter size-full\" src=\"https://2017.saopaulo.wordcamp.org/files/2017/10/Inscric%CC%A7o%CC%83es-Abertas-WCSP2017.png\" alt=\"WordCamp SP - Inscrições abertas\" width=\"1770\" height=\"1088\" /></a></p>\n<p><span style=\"font-weight: 400\">Não marque nada para o próximo dia 2 de dezembro. O evento de WordPress mais tradicional do Brasil, o <a href=\"https://2017.saopaulo.wordcamp.org/\">WordCamp São Paulo</a>, vai acontecer na Faculdade Impacta, na Barra Funda, das 9h às 18h e você não pode perder.</span></p>\n<h2><span style=\"font-weight: 400\">O que é um WordCamp?</span></h2>\n<p><span style=\"font-weight: 400\">WordCamps são as conferências internacionais de WordPress organizadas pela comunidade de desenvolvedores, designers e usuários de WordPress ao redor do mundo.</span></p>\n<p><span style=\"font-weight: 400\">Os eventos são compostos por palestras, oficinas, troca de ideias e experiências em um ambiente informal. </span><span style=\"font-weight: 400\">Não possui nenhum fim lucrativo e é organizado por voluntários para a comunidade local. Aceita qualquer tipo de participante, de qualquer área e nível e preza pelo aprendizado, integração e respeito.</span></p>\n<p><span style=\"font-weight: 400\">O primeiro WordCamp aconteceu em julho de 2006 nos Estados Unidos e o <a href=\"https://central.wordcamp.org/schedule/past-wordcamps/\">primeiro aqui no nosso país</a> aconteceu no dia 21 de junho de 2009, em São Paulo.</span></p>\n<h2><span style=\"font-weight: 400\">WordCamp São Paulo</span></h2>\n<p><span style=\"font-weight: 400\">Todo ano, desde 2012, São Paulo tem seu próprio WordCamp e recebe pessoas de todo país. Chegando a 450 participantes no ano passado, com 24 palestras e 3 workshops, o evento é o lugar perfeito para saber mais sobre o WordPress e conhecer pessoas interessadas na ferramenta.</span></p>\n<h2><span style=\"font-weight: 400\">Como participar</span></h2>\n<p>Temos várias formas de participar, veja abaixo em qual delas você se encaixa melhor:</p>\n<h3><span style=\"font-weight: 400\">Submissão de palestras (até o dia 10/11)</span></h3>\n<p><span style=\"font-weight: 400\">Se você quiser se candidatar para compartilhar o seu conhecimento no evento é preciso correr. Só até a próxima sexta-feira estaremos recebendo </span><a href=\"https://2017.saopaulo.wordcamp.org/seja-um-palestrante/\"><span style=\"font-weight: 400\">propostas de palestras e workshops</span></a><span style=\"font-weight: 400\">. E não precisa ser sobre desenvolvimento não, temos também as categorias comunidade, design, negócios e marketing e conteúdo. Não é preciso ser um expert no assunto, e se o seu medo for vencer a timidez é só falar com os organizadores do evento no slack. Proporcionamos um ambiente confortável não só para quem vai assistir às palestras como também para os palestrantes.</span></p>\n<h3><span style=\"font-weight: 400\">Ingressos</span></h3>\n<p><span style=\"font-weight: 400\">O ingresso tem um valor simbólico de 15 dólares, revertido em brindes e alimentação. O evento é bastante concorrido, então é melhor <a href=\"https://2017.saopaulo.wordcamp.org/ingressos/\">garantir logo o seu</a>.</span></p>\n<p>A inscrição é feita através do PayPal e pode ser realizada com cartão de crédito. Fazendo a sua inscrição é garantido acesso ao evento, almoço (ou lanche) no local e uma camiseta oficial.</p>\n<h3><span style=\"font-weight: 400\">Patrocínio</span></h3>\n<p><span style=\"font-weight: 400\">Quer associar a sua marca a um evento tradicional, com visibilidade mundial e com vários patrocinadores internacionais? Veja nosso mídia kit, nossas cotas de patrocínio e preencha nosso <a href=\"https://2017.saopaulo.wordcamp.org/patrocinadores/\">formulário</a>.</span></p>\n<p><span style=\"font-weight: 400\">A gente se vê lá!</span></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://br.wordpress.org/2017/11/08/wordcamp-sao-paulo-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://br.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 14 Jul 2018 15:44:16 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 06 Sep 2017 19:17:40 GMT\";s:4:\"link\";s:61:\"<https://br.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911070210\";}', 'no');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3088, '_transient_timeout_feed_mod_b85365aa61afaf3d4189819a6f57c4c4', '1531626258', 'no'),
(3089, '_transient_feed_mod_b85365aa61afaf3d4189819a6f57c4c4', '1531583058', 'no'),
(3090, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1531626259', 'no');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3091, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordCamp Europe 2018 Draws 2,085 Attendees, Organizers Look Ahead to 2019 in Berlin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82313\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://wptavern.com/wordcamp-europe-2018-draws-2085-attendees-organizers-look-ahead-to-2019-in-berlin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6531:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/WCEU-2018.jpg?ssl=1\"><img /></a>photo credit: WCEU Photography Team\n<p>WordCamp Europe closed out a successful event in Belgrade with 2,085 attendees from 76 countries. More than 800 others joined via livestream for a total audience of nearly 3,000 participants. A <a href=\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\" rel=\"noopener noreferrer\" target=\"_blank\">record-setting Contributor Day</a> kicked off the event, followed by two days of conference sessions and workshops from 65 speakers.</p>\n<p>A team of 54 organizers and 170 volunteers made WCEU possible, with 10 different organizing teams. Last year WordCamp Europe added a PR team and this year the event introduced an Attendee Services team to fill gaps in the organization. The operation ran smoothly, despite the conference being spread out across many rooms in the sprawling <a href=\"http://www.savacentar.net/\" rel=\"noopener noreferrer\" target=\"_blank\">Sava Centar</a> venue.</p>\n<p><a href=\"https://app.wp-europe.org/\" rel=\"noopener noreferrer\" target=\"_blank\">WordCamp Europe&#8217;s PWA</a> (progressive web app) was the highlight of the new features and services introduced this year. It was a central hub for keeping attendees informed on what was happening at any given moment. Organizers also added new amenities, including a site health check station, Community Room, and info booth to handle attendee questions.</p>\n<p>Gutenberg and Progressive web apps were the hot topics of this year&#8217;s WordCamp Europe. In addition to Matt Mullenweg <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\" rel=\"noopener noreferrer\" target=\"_blank\">unveiling a roadmap for Gutenberg&#8217;s inclusion in core</a>, a strong contingent of designers and engineers from the team were present to educate attendees on Gutenberg&#8217;s architecture and the vision behind the project.</p>\n<p>Many attendees were visiting Serbia for the first time and Belgrade delivered with its renowned hospitality and captivating nightlife. Attendees found no shortage of delicious options for food and drink.</p>\n<h3>Berlin to Host WordCamp Europe 2019</h3>\n<p>At the conclusion of the event, organizers announced Berlin as the next host city for <a href=\"https://2019.europe.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">WordCamp Europe, June 20-22, 2019</a>. The conference, Contributor Day, and the after party will all be held at the <a href=\"https://www.estrel.com/en/home.html\" rel=\"noopener noreferrer\" target=\"_blank\">Estrel Hotel and Congress Center</a>, a venue with a capacity for 12,000 attendees.</p>\n<p>Organizers said that Berlin&#8217;s accessibility, reasonable prices, and strong community were the final deciding factors for its selection as the next host city.</p>\n<p></p>\n<h3>Behind the Scenes at WordCamp Europe 2018 with Lead Organizers Jenny Beaumont and Milan Ivanović</h3>\n<p>Hosting a volunteer-led event at this scale requires an enormous amount of effort from the organizers, especially those taking the lead for multiple years in a row. There is nearly no down time as the team is already planning for the next edition of the camp.</p>\n<p>I sat down with lead organizers Jenny Beaumont, the global lead, and Milan Ivanović, the local lead, to get a look behind the scenes at what is involved in bringing WordCamp Europe to thousands of WordPress enthusiasts in one weekend. We <a href=\"https://wptavern.com/wordcamp-europe-2018-to-be-held-in-belgrade-serbia-june-14-16\" rel=\"noopener noreferrer\" target=\"_blank\">interviewed</a> them at the conclusion of WCEU 2017 in Paris. Over the past two years these leaders have developed a strong working relationship built on encouraging each other and keeping a positive outlook for their teams.</p>\n<p>Beaumont said she was hesitant going into a third year for this role, as Paris was the project that captured her heart and motivation. After going through this event as the global lead, she said she discovered what she could bring to the role and how she could serve the team.</p>\n<p>&#8220;The event has been their project,&#8221; Beaumont said. &#8220;My project this year has been the team, how I can really concentrate on this team, on its growth, on its health, on its sustainability. That&#8217;s what I learned in Paris &#8211; the importance of making sure that was part of the project.&#8221;</p>\n<p>Beaumont and Ivanović explained the difference between the global and local lead roles, a structure that works well for flagship WordCamps.</p>\n<p>&#8220;The local team is really about making it a good experience in this new place that everybody is going to be discovering for the first time,&#8221; Beaumont said. &#8220;It&#8217;s the hard work, it&#8217;s the logistics, it&#8217;s all of the small details, everything that&#8217;s behind the scenes that make it so you walk in as an attendee and it just feels like you&#8217;re at home. They do all of that hard work. The global role, as it has evolved, is really about being that sort of team care-giver, making sure that there is good communication happening, making sure the team is healthy and happy and motivated. Because you&#8217;ve got to get up and do this every day while you&#8217;re also doing your day job, and that takes a lot.&#8221;</p>\n<p>WordCamp Europe had a strong impact on the local community with more than 400 Serbian attendees and 20 Serbian organizers. They worked to build awareness of WordPress in the local community ahead of the event.</p>\n<p>&#8220;We used this event to grow our community and used our community to promote the event,&#8221; Ivanović said. &#8220;When we announced last year in Paris that Belgrade is going to be next, at that time we had five or six cities for WordPress meetups. Currently, we are in 14 cities and starting the 15th in July. WordCamp Europe and the conference itself was such a win for the whole community.&#8221;</p>\n<p>Ivanović will return next year as the global lead for WCEU in Berlin. Beaumont is taking some time off after three years organizing WordCamp Paris and WordCamp Europe, but she hopes to return in some capacity in the future. They are working together with their team to publish a WordCamp Europe handbook that covers some of the important specifics of the event for upcoming teams. Check out the full interview in the video below.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 14 Jul 2018 00:24:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Array Launches Free Gutenberg-Ready Atomic Blocks Theme on WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82258\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/array-launches-free-gutenberg-ready-atomic-blocks-theme-on-wordpress-org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6391:\"<p>Mike McAlister and the team at <a href=\"https://arraythemes.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Array Themes</a> have fully embraced Gutenberg and are one of the first shops on the scene with a free WordPress theme designed specifically to work with the new editor. The <a href=\"https://wordpress.org/themes/atomic-blocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Atomic Blocks</a> theme is now available on WordPress.org with minimal styling and seamless support for all core content and media blocks.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/atomic-blocks-screenshot.png?ssl=1\"><img /></a></p>\n<p>The theme allows users to control the width of the content area to create full-screen posts and pages. It supports full-screen images, videos, and galleries, showcasing the new editor&#8217;s wide alignment styles for content. Atomic Blocks includes Customizer options for uploading a logo, customizing the font style, setting body and title font sizes, and selecting an accent color.</p>\n<p>Check out the theme&#8217;s demo to see the blocks in action: <a href=\"https://preview.arraythemes.com/atomicblocks\" rel=\"noopener noreferrer\" target=\"_blank\">https://preview.arraythemes.com/atomicblocks</a>.</p>\n<p>The theme also seamlessly supports McAlister&#8217;s new Atomic Blocks project, a collection of page-building blocks included in the accompanying <a href=\"https://atomicblocks.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Atomic Blocks plugin</a>. It currently includes blocks for creating a post grid, call-to-action, testimonials, inline notices, sharing icons, author profiles, accordions, customizable buttons, drop caps, and spacer/dividers, with many more blocks planned.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/testimonials-block.jpg?ssl=1\"><img /></a></p>\n<p>&#8220;I knew Gutenberg was going to be a game changer from the second I saw it and started hashing out product ideas in October 2017,&#8221; McAlister said. &#8220;To me, it felt like a very natural evolution and transition for WordPress into a more forward-thinking content creator. All of the tools outside of WordPress are evolving and becoming better and easier to use and WordPress is starting to feel quite dated in comparison.&#8221;</p>\n<p>McAlister said his team is building Atomic Blocks into a full-fledged content block solution that will include a commercial version in the future.</p>\n<p>&#8220;We have a long list of blocks that we’ll be releasing into the plugin in the coming months — everything from eCommerce to email marketing to full-page layouts,&#8221; he said. &#8220;There will definitely be a commercial version of the plugin for those extra awesome blocks that will take your site to the next level.&#8221;</p>\n<p>McAlister is keeping Atomic Blocks separate from Array Themes but plans to cross promote between the two. He also plans to update the Array themes collection to support the blocks found in the plugin.</p>\n<p>&#8220;Atomic Blocks aims to solve a different problem in a different way than the traditional WordPress themes you’ll find on Array,&#8221; McAlister said. &#8220;By launching it separately from Array Themes, it gave me the opportunity to diversify my projects a bit and create a dedicated marketing stream for a Gutenberg solution.&#8221;</p>\n<p>Many products in the Array Themes catalog are already working with the new editor, but McAlister and his team intend to provide more in-depth support for specific Gutenberg features in themes where appropriate.</p>\n<p>&#8220;We’ve stayed fiercely committed to beautiful design, simplicity, and core coding standards and practices to ensure wide-spread support and compatibility with our themes,&#8221; McAlister said. &#8220;While this has served us well, we are all ready for a core-supported solution to providing a better experience for our customers. Gutenberg will solve this problem by providing a cohesive, unified way of extending content creation with a core user interface. Gutenberg is quite extensible as is, and will only grow more capable with time.&#8221;</p>\n<p>McAlister said one of the most challenging aspects of launching Atomic Blocks has been keeping pace with Gutenberg&#8217;s rapid development, requiring the team to follow multiple conversations across various WordPress core development discussion channels.</p>\n<p>&#8220;I followed Gutenberg development closely during the second half of last year and then started developing Atomic Blocks for Gutenberg early this year,&#8221; McAlister said. &#8220;You have to follow the Github repo, Make blog posts, and Slack conversations closely to keep up with the changes, deprecations, and feature additions. Luckily, now that features are being frozen, the code is churning less and things are starting to stabilize.&#8221;</p>\n<p>In order to keep up with all the news and changes, McAlister started the <a href=\"http://gutenberg.news/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg News</a> site to collect helpful resources, tutorials, and code snippets he found. The site contains more than 200 links to resources for both beginners and developers.</p>\n<p>McAlister predicts that Gutenberg will bring a greater separation between the roles of themes and plugins in the site-building experience.</p>\n<p>&#8220;The demand for themes will certainly begin to change more drastically in the long term,&#8221; he said. &#8220;Traditional WordPress themes will still be desirable for a number of years, simply due to the number of sites out there and the solutions needed to build them. Eventually, much of what can be provided by a theme will be provided by blocks via a plugin instead. Themes will still be responsible for providing a degree of styling and functionality that will remain critical to the site-building experience, but they will take a secondary role to content blocks.&#8221;</p>\n<p>Gutenberg will inevitably change the landscape of the theme industry, but McAlister sees it as a chance to reach customers in a new way.</p>\n<p>&#8220;Theme designers and developers should be excited about this opportunity and not feel threatened by Gutenberg,&#8221; McAlister said. &#8220;This is a fantastic opportunity to learn a new set of skills, attract a new segment of customers, and start pivoting to a block-based product model.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Jul 2018 22:33:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WPTavern: WPWeekly Episode 323 – Recap of WordCamp Grand Rapids and A Gutenberg Road Map\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82285&preview=true&preview_id=82285\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wpweekly-episode-323-recap-of-wordcamp-grand-rapids-and-a-gutenberg-road-map\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2142:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> recaps his trip to WordCamp Grand Rapids and shares his experience. WordCamp Grand Rapids had a strong focus on tools, plugins, and themes and by all accounts, was a successful event.</p>\n<p>We discussed Matt Mullenweg&#8217;s Summertime update, the roadmap for merging Gutenberg into core, and what comes after Gutenberg. We shared our thoughts on Automattic&#8217;s new board member, General Ann Dunwoody and speculated on Automattic&#8217;s vision.</p>\n<p>We wrap up the show by talking about generational divides in WordPress.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">WordPress 4.9.7 Security and Maintenance Release</a><br />\n<a href=\"https://wordpress.org/news/2018/07/update-on-gutenberg/\">Update on Gutenberg</a><br />\n<a href=\"https://make.wordpress.org/core/2018/07/06/whats-new-in-gutenberg-6th-july/\">What’s New in Gutenberg? (6th July)</a><br />\n<a href=\"https://ma.tt/2018/06/automattics-first-new-board-member-general-ann-dunwoody/\">Automattic’s First New Board Member: General Ann Dunwoody</a><br />\n<a href=\"https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\">Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg</a><br />\n<a href=\"https://twitter.com/NaomiCBush/status/1014991902691790848\">Generational divides in WordPress</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #323:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Jul 2018 00:42:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: Video: A Quick Introduction to Gutenberg and the New WordPress Block Editor from LinkedIn Learning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82276\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://wptavern.com/video-a-quick-introduction-to-gutenberg-and-the-new-wordpress-block-editor-from-linkedin-learning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1005:\"<p>Although WordPress developers and professionals have been inundated with Gutenberg news for more than a year, there&#8217;s a whole wide world of users who will learn about the project for the first time when 4.9.8 includes a &#8220;Try Gutenberg&#8221; prompt in the admin. If you haven&#8217;t been following the news closely and are wondering what all of this <a href=\"https://wordpress.org/plugins/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg</a> talk is about, Morten Rand-Hendriksen provides a succinct introduction to the new editor that is coming in WordPress 5.0.</p>\n<p>The video was created as part of LinkedIn&#8217;s <a href=\"https://www.linkedin.com/learning/wordpress-essential-training/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress Essentials Training</a> course. The first part explains the basic concept of a block and includes a mini tour of the new interface, followed by a short overview of where the Gutenberg project is going in the future.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 23:04:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: WordCamp Ticket Sales Move from PayPal to Stripe for Default Payment Gateway\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82267\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wordcamp-ticket-sales-move-from-paypal-to-stripe-for-default-payment-gateway\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1857:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/stripe.jpg?ssl=1\"><img /></a></p>\n<p>The WordPress Community Team <a href=\"https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> an update to the CampTix, the plugin used for selling WordCamp tickets, that makes Stripe the default payment method. The gateway was previously available as a beta plugin and could be enabled on a per-site basis but is now available to all WordCamps.</p>\n<p>When <a href=\"https://make.wordpress.org/community/2018/04/03/moving-wordcamp-ticket-sales-from-paypal-to-stripe/\" rel=\"noopener noreferrer\" target=\"_blank\">proposing Stripe as the default payment gateway</a> in April, Hugh Lashbrooke cited the fact that PayPal is entirely blocked and inaccessible in some countries. He also identified Stripe&#8217;s simpler UI and larger number of supported currencies as its chief advantages.</p>\n<p>PayPal has been the default for years on WordCamp websites but it currently supports only 26 currencies. Stripe supports 136 currencies, allowing WordCamp organizers to offer ticket purchases in more places than before. Previously, some communities were forced to build a local gateway integration to sell WordCamp tickets via PayPal, requiring those sales to be inconveniently funneled through a local bank account. The Stripe gateway option is a welcome update to support WordPress&#8217; growing international community, which held camps in 73 countries in 2017.</p>\n<p>It&#8217;s important to note that Stripe isn&#8217;t fully replacing PayPal. The Camptix plugin allows organizers to activate multiple payment gateways for cases where one or both make more sense, retaining the flexibility to support ticket sales at camps with different payment requirements.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 18:02:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: Translating For Love\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2587\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://heropress.com/translating-for-love/#utm_source=rss&utm_medium=rss&utm_campaign=translating-for-love\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3006:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/09/092816-vladimir_petkov-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I started translating WordPress so that my seven-year-old daughter can share her personal stories.\" /><p>We all have our reasons for the things we do. Money, love, orders, etc. Vladimir Petkov started using WordPress because it solved a problem. As the years went by it continued to solve problems, and he continued to use it. His time to give back didn&#8217;t arrive until much later though.</p>\n<p>His 7 year old daughter wanted a blog, and WordPress wasn&#8217;t completely translated into her language. So Vladimir learned how to translate WordPress, so his little girl (and every other Bulgarian speaker) can use their voice to speak to the world.</p>\n<p>Why do you give back to WordPress? If you&#8217;d like more info about how you can (no coding required!) drop a note in the comments.</p>\n<p>Also, check out Vladimir&#8217;s essay.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/rebirth/\">Rebirth</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Translating For Love\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Translating%20For%20Love&via=heropress&url=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Translating For Love\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F&title=Translating+For+Love\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Translating For Love\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/translating-for-love/&media=https://heropress.com/wp-content/uploads/2016/09/092816-vladimir_petkov-150x150.jpg&description=Translating For Love\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Translating For Love\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/translating-for-love/\" title=\"Translating For Love\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/translating-for-love/\">Translating For Love</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 12:13:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Video: Matt Mullenweg’s Summertime Update At WCEU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82254\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/video-matt-mullenwegs-summertime-update-at-wceu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:861:\"<p>Sessions from <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">WordCamp Europe 2018</a> are making their way <a href=\"https://wordpress.tv/event/wordcamp-europe-2018/\">onto WordPress.tv</a>, including <a href=\"https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/\">Matt Mullenweg&#8217;s Summertime Update</a>. </p>\n\n<p>In the video, Mullenweg shares the progress that&#8217;s been made on Gutenberg, WordPress core development, a Gutenberg road map for including it into core, and what to expect after WordPress 5.0 is released. <br /></p>\n\n<p>Be sure to watch the video to the end to catch the memorable, <a href=\"https://twitter.com/dimensionmedia/status/1007605535993221120\">GDPR cookie joke</a>.</p>\n\n\n	<div class=\"embed-wrap\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 23:56:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPCampus Will Be Streamed Live For Free July 13-14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82252\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpcampus-will-be-streamed-live-for-free-july-13-14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:779:\"<p><a href=\"https://wpcampus.org/\">WPCampus</a>, a conference focused on WordPress in higher-education takes place this week between July 12-14 at Washington University in St. Louis, Missouri. </p>\n\n<p>If you&#8217;re unable to attend in-person or would like to watch the event from home, visit the <a href=\"https://2018.wpcampus.org/watch/\">WPCampus Stream page</a>. Beginning July 13th at 9AM CDT, all general sessions will be streamed live for free. Sessions will be recorded and be available after the event as well. </p>\n\n<p>To see a list of sessions taking place, check out the <a href=\"https://2018.wpcampus.org/schedule/\">event&#8217;s schedule</a> and for more information about WPCampus, visit the <a href=\"https://wpcampus.org/about/\">site&#8217;s about page</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 23:36:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: New Classic Editor Addon Plugin Disables the “Try Gutenberg” Prompt Coming in WordPress 4.9.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82232\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/new-classic-editor-addon-plugin-disables-the-try-gutenberg-prompt-coming-in-wordpress-4-9-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3251:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/stop.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/V4WAM6G46H\">Hermes Rivera</a>\n<p>Gutenberg development continues along the roadmap Matt Mullenweg announced at WordCamp Europe with WordPress 4.9.8 set to introduce a <a href=\"https://core.trac.wordpress.org/ticket/41316\" rel=\"noopener noreferrer\" target=\"_blank\">“Try Gutenberg” prompt</a> to increase usage and testing. Core design contributors are currently working on a few new iterations of the callout. They are also considering including a section inside the prompt with an option to install the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin in preparation for Gutenberg.</p>\n<p>Developers and agencies have time to install the Classic Editor on client sites that are not ready for Gutenberg, but this will not prevent users from seeing the &#8220;Try Gutenberg&#8221; prompt. <a href=\"https://gschoppe.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Greg Schoppe</a>, one of Gutenberg&#8217;s most outspoken critics, partnered with <a href=\"https://so-wp.com/plugin/classic-editor-addon\" rel=\"noopener noreferrer\" target=\"_blank\">Pieter Bos</a> to develop a plugin called <a href=\"https://wordpress.org/plugins/classic-editor-addon/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor Addon</a> that changes how the Classic Editor plugin works.</p>\n<p>&#8220;For agencies supporting many sites, whose users have no way of knowing whether Gutenberg will break their site or not, this nag screen is a danger,&#8221; Schoppe commented on our most recent Gutenberg update. &#8220;Pre-emptively installing Classic Editor unfortunately won’t suppress the nag notice either, but since Classic Editor is being used as a bellwether of the success of Gutenberg, it’s important that you install it, if you expect issues.&#8221;</p>\n<p>Schoppe co-wrote the Classic Editor Addon to solve this problem. It suppresses the &#8220;Try Gutenberg&#8221; prompt and when the new editing experience ships in 5.0, it will automatically suppress Gutenberg as well.</p>\n<p>Since the Classic Editor plugin doesn&#8217;t remove Gutenberg by default, the addon plugin sets the option to fully replace Gutenberg. It also removes the Classic Editor&#8217;s options from the Settings > Writing screen. Schoppe said he believes this is what the Classic Editor plugin should have done out of the box, instead of requiring the user to find the settings screen to replace Gutenberg.</p>\n<p>Installing both the Classic Editor and Classic Editor Addon on tens or hundreds of client sites could be time consuming, so Schoppe suggests using a site management dashboard, such as MainWP, ManageWP, or Jetpack, to bulk install both plugins for clients.</p>\n<p>According to stats on WordPress.org, Gutenberg is active on more than 10,000 sites and the Classic Editor is active on 4,000+ sites. The &#8220;Try Gutenberg&#8221; prompt is expected to go out in WordPress 4.9.8, which is targeted for the end of July. The goal for the prompt is to make users aware of the plugin and get more testers involved before Gutenberg lands in WordPress 5.0.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 22:35:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Post Status: Working on your own website — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46462\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://poststatus.com/working-on-your-own-website-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1619:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians discuss the challenges of working on your own business website, when your company offers services or makes products for websites. Agencies often disregard their own websites, as do product companies. We discuss our own histories of attempting in-house redesign projects, strategies to get them done, and how we approach things today owning our own tiny businesses.</p>\n<p></p>\n<h3>Episode Links</h3>\n<ul>\n<li><a href=\"https://www.codeinwp.com/blog/redesign-your-business-website-transparency-report-40/\"><span>CodeInWP Transparency Report: Redesigning Your Business Website</span></a></li>\n</ul>\n<h3>Sponsor: Pagely</h3>\n<p><a href=\"https://pagely.com\"><span>Pagely</span></a><span> offers best in class managed WordPress hosting, powered by the Amazon Cloud, the Internet’s most reliable infrastructure. Post Status is proudly hosted by Pagely. Thank you to </span><a href=\"https://pagely.com\"><span>Pagely</span></a><span> for being a Post Status partner</span></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Jul 2018 18:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: How WordPress is Powering a New Community on the Remote Island of Ogijima\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82204\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/how-wordpress-is-powering-a-new-community-on-the-remote-island-of-ogijima\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10699:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/junkonukaga.jpg?ssl=1\"><img /></a><a href=\"https://profiles.wordpress.org/nukaga\" rel=\"noopener noreferrer\" target=\"_blank\">Junko Nukaga</a> began her journey into the world of WordPress in 2011, just after her hometown in Fukushima prefecture was hit by the 9.0 magnitude Tōhoku earthquake and tsunami. The catastrophic event, referred to in Japan as the Great East Japan Earthquake, devastated the region&#8217;s infrastructure and took more than 15,000 lives. It also caused a level 7 meltdown at three reactors in the Fukushima Daiichi Nuclear Power Plant complex.</p>\n<p>Until this point Nukaga had only used WordPress as a blogging tool, but her hometown prefecture needed a fast way to get a website up for publishing accurate measurements of the radiation levels. Although she was living in Osaka at the time, Nukaga joined the volunteer team and built the site using WordPress. In addition to local radiation levels, it also had FAQ&#8217;s about radiation from scientists to combat the misinformation that was rampant at the time. People found the site through social networks and word of mouth.</p>\n<p>After making a difference for her hometown with WordPress, Nukaga wanted to find out more about the community behind the software. She joined an offline <a href=\"https://www.meetup.com/ja-JP/WordBench/?_cookie-check=ng_FrFUqDlEMFkbN\">WordBench</a> meetup and got connected to the WordPress community. The next year she co-organized WordCamp Osaka 2012, and in 2014 she became the lead organizer of WordCamp Kansai, an area that includes seven prefectures: Mie, Shiga, Kyoto, Osaka, Hyogo, Nara, Wakayama.</p>\n<p>As Nukaga became more deeply involved in the WordPress community as a speaker, organizer, and contributor, she developed a new understanding of the power of open source collaboration. After moving to the remote island of Ogijima in 2014, she was inspired to create a library and cultural center, using WordPress to organize a team of more than 200 volunteers.</p>\n<p>“When my family and I moved to this island, the school here was closed, because there were no kids on Ogijima,” Nukaga said. “We have a daughter, so we urged the government to reopen the school.</p>\n<p>&#8220;Although the school restarted, I thought that it would be meaningless for the school to stop or close again when our daughter graduated. The island is an aging society and no new children will be born here. I figured that if there was a library, I could call migrants to the island. A library which is free and an open space would help solve many things, such as children’s learning environment, communication support for the islanders, and migration consultation, for example.”</p>\n<p>Nukaga set up a WordPress website before constructing the library so her team of volunteers could disclose the progress of the building and recruit followers. They promoted the website through social networks and were able to crowdfund efforts to construct and maintain the building.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/ogijima-library.jpg?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://ogijima-library.or.jp/\" rel=\"noopener noreferrer\" target=\"_blank\">Ogijima Library</a> opened in February 2014 as a non-profit organization that is rooted in the community, providing a place where people can connect through books and share knowledge with one another. Residents on the island now have access to titles and periodicals that would previously have required a boat trip to acquire. More than 50 migrants have moved to the island within the last four years since the library opened, including families with babies born last year.</p>\n<p>&#8220;Without WordPress, none of this would have been possible,&#8221; Nukaga said.  “WordPress opened my way. It taught me the philosophy of open source. I have used this philosophy to involve many unspecified people from the beginning of the process of making the library. We built the building ourselves with the help of 200 volunteers, and we continue to get support through book donations. Also, thanks to the flexibility of WordPress, the things I wanted to do, such as updating, providing a search system for books, and linking to social networks, were all possible.”</p>\n<h3>WordCamp Ogijima: “Empowering the Smalls to Go Big”</h3>\n<p>The WordPress community on the island is also thriving, thanks to community organizers who call Ogijima home. Nukaga organizes the meetups, which average 5 to 20 attendees at each event. <a href=\"https://ogi.osampo-radio.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Shinichi Nishikawa</a>, who organized WordCamp Tokyo in 2012 and helped build a new WordPress community in Bangkok, made his home on the island in March 2016. He is joining forces with Nukaga and a team of 35 leaders and volunteers to organize the first <a href=\"https://2018.ogijima.wordcamp.org\" rel=\"noopener noreferrer\" target=\"_blank\">WordCamp Ogijima</a> on July 15, 2018.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/wc-ogijima.jpg?ssl=1\"><img /></a></p>\n<p>This will be the first Japanese WordCamp not held in the cities. Organizers have chartered two ferries to transport more than 250 attendees to the island. Camping is the primary lodging option in tents beside the island’s lighthouse and organizers have planned a BBQ after party. Although the event is currently sold out, 10 additional <a href=\"https://2018.ogijima.wordcamp.org/2018/05/20/registration-information-en/\" rel=\"noopener noreferrer\" target=\"_blank\">tickets</a> will go on sale on July 10 due to cancellations and an estimation of no-shows.</p>\n<p>“The uniqueness of the community in this area is that there are many with different backgrounds,” Shinichi Nishikawa said. “WordCamps in the city are mainly attended by engineers, designers and bloggers, but here there are people who are restaurant managers, farmers, a barber, an illustrator, a ranger (nature protection officer), baker, and others who are interested in WordPress.”</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/wcogijima-organizers.jpg?ssl=1\"><img /></a></p>\n<p>The organizing team, which includes many new contributors from all walks of life, along with meetup organizers in the Setouchi inland sea area, has adopted the theme “Empowering the smalls to go big.”</p>\n<p>Ogijima’s local community includes members like Kaisho Damonte, who is using WordPress and WooCommerce to power <a href=\"https://wptavern.com/feed\">a website for the bakery and cafe business he started</a> after renovating a 100-year-old barn on the island. Kentaro Yamaguchi, another island resident, uses WordPress for his <a href=\"https://wptavern.com/feed\">barber shop’s website</a>.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/screely-1531150922541.png?ssl=1\"><img /></a></p>\n<p>Nishikawa said he sees WordCamp Ogijima as “a WordCamp in a new place, for new audiences, by new organizers.&#8221; He appreciates the openness of the islanders who are willing to embrace new things.</p>\n<p>“The WordPress community on the island represents this atmosphere,” Nishikawa said. “Everyone has their own views, plans for their lives, and their own ways of thinking. WordPress, with its ‘Democratization of Publishing’ mission is a great match to us, who are trying to make our lives in different ways. We have built a library, cafe, a barbershop, and offices DIY ourselves.  When it comes to websites, WordPress helps us a lot.”</p>\n<h3>The WordPress Community in Ogijima is Defined by a Focus on Cooperative Learning</h3>\n<p>One of the most inspirational aspects of the community in Ogijima, along with the greater Japanese WordPress community, is the strong emphasis on helping each other learn and succeed. New members are often woven into the community through meetups that focus on connecting around specific interests outside of WordPress technical skill. The community warmly welcomes users who are new to WordPress who want to get help with their websites. Nishikawa said this is the particular audience that the Ogijima meetup is trying to reach.</p>\n<p>“We want to connect with individuals who want to achieve something; small business owners, designers, photographers, writers, editors, and anyone who is struggling doing something on the web,” Nishikawa said. “By coming together, you notice that there are many friends who are struggling as well. Experienced developers attend as usual but their role this time is to share their knowledge to the new people. We help each other build and improve our websites. It&#8217;s a very relaxed and helping atmosphere in the meetups. We do have some presentations sometimes but that&#8217;s not the main thing.”</p>\n<p>WordPress Core Committer <a href=\"https://profiles.wordpress.org/mikeschroder/\" rel=\"noopener noreferrer\" target=\"_blank\">Mike Schroder</a> will be speaking at WordCamp Ogijima about how everyone has something unique to bring to the community to help it grow.</p>\n<p>“I initially visited Japan for WordCamp Tokyo a few years ago — largely because it was the biggest WordCamp in the world at the time,” Schroder said. “The community in Japan is extremely active and welcoming, and I quickly made many friends. One unique part of the community is that it has a big focus on education. The <a href=\"http://wordbench.org\" rel=\"noopener noreferrer\" target=\"_blank\">WordBench</a> events are excellent!”</p>\n<p>“As the theme of the event is ‘Empower the smalls to go big,’ I’m looking forward to sharing some bits of my background, and how others have helped me grow, in an effort to show folks that they have a lot to offer,” Schroder said. (He’s also doing a bit of research and is interested to hear stories from others about unique aspects of their lives that have helped them succeed in the WordPress ecosystem. You can ping him @mike on WP Slack if you want to contribute.)</p>\n<p>The community in Ogijima is a beautiful example of how WordPress is powering a new wave of makers and doers on the island. The software has enabled them to establish new businesses, commerce, and cultural centers in a remote area where they are building their lives. WordCamp Ogijima is a classic example of what a WordCamp should be &#8211; an event that highlights the successes of local WordPress users.</p>\n<p>“While I don&#8217;t think our numbers will grow, our lives will always need WordPress and its community,” Nishikawa said regarding the local meetups. “And we welcome ambitious attendees who need help.”</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Jul 2018 16:09:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Dev Blog: Update on Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6118\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/news/2018/07/update-on-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2260:\"<p>Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. As the work on phase one moves into its final stretch, here is what you can expect.<br /></p>\n\n<h4>In Progress</h4>\n\n<ul>\n	<li>Freeze new features in Gutenberg (the feature list can be found <a href=\"https://github.com/WordPress/gutenberg/issues/4894\">here</a>).</li>\n	<li>Hosts, agencies, teachers invited to opt-in sites they have influence over.</li>\n	<li>WordPress.com has opt-in for wp-admin users. The number of sites and posts will be tracked.</li>\n	<li>Mobile app support for Gutenberg will be across iOS and Android.</li>\n</ul>\n\n<h4>July</h4>\n\n<ul>\n	<li>4.9.x release with an invitation to install either Gutenberg or Classic Editor plugin.</li>\n	<li>WordPress.com will move to opt-out. There will be tracking to see who opts out and why.</li>\n	<li>Triage increases and bug gardening escalates to get blockers in Gutenberg down to zero.</li>\n	<li>Gutenberg phase two, Customization exploration begins by moving beyond the post.</li>\n</ul>\n\n<h4>August and beyond</h4>\n\n<ul>\n	<li>All critical issues within Gutenberg are resolved.</li>\n	<li>There is full integration with Calypso and there is opt-in for users there.</li>\n	<li>A goal will be 100k+ sites having made 250k+ posts using Gutenberg.</li>\n	<li>Core merge of Gutenberg begins the 5.0 release cycle.</li>\n	<li>5.0 moves into beta releases and translations are completed.</li>\n	<li>There will be a mobile version of Gutenberg by the end of the year.</li>\n</ul>\n\n<p>WordPress 5.0 could be as soon as August with hundreds of thousands of sites using Gutenberg before release. Learn more about Gutenberg <a href=\"https://wordpress.org/gutenberg/\">here</a>, take it for a <a href=\"https://testgutenberg.com/\">test drive</a>, <a href=\"https://wordpress.org/plugins/gutenberg/\">install</a> on your site, follow along on <a href=\"https://github.com/WordPress/gutenberg\">GitHub</a> and give your <a href=\"https://wordpressdotorg.polldaddy.com/s/gutenberg-support\">feedback</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 19:23:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Tammie Lister\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WordPress 4.9.8 to Introduce “Try Gutenberg” Callout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82174\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wordpress-4-9-8-to-introduce-try-gutenberg-callout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2027:\"<p>Paul Biron and Joshua Wold are leading the upcoming WordPress 4.9.8 release, which was originally announced as 4.9.7. WordPress core contributors met yesterday to decide the general focus and set the release schedule. In the meantime, the <a href=\"https://make.wordpress.org/core/2018/07/05/wordpress-4-9-7/\" rel=\"noopener noreferrer\" target=\"_blank\">4.9.7 security and maintenance release</a> was rolled out to fix an authenticated arbitrary file deletion vulnerability, along with a few other minor updates.</p>\n<p>WordPress 4.9.8 is targeted for July 31, 2018, with a beta as early as July 17. The release will focus on introducing the &#8220;<a href=\"https://core.trac.wordpress.org/ticket/41316\" rel=\"noopener noreferrer\" target=\"_blank\">Try Gutenberg</a>&#8221; callout and adding privacy fixes and enhancements. The ticket proposing the callout was opened a year ago and was planned to be included in WordPress 4.9.5 but was eventually <a href=\"https://wptavern.com/try-gutenberg-prompt-pushed-back-to-a-later-release\" rel=\"noopener noreferrer\" target=\"_blank\">pulled</a> before the release in favor of allowing Gutenberg contributors to iron out a few important issues.</p>\n<p>WordPress Core Committer Mel Choyce added the most recent round of designs to the ticket four weeks ago and contributors are still iterating on the design and text for the callout. Another iteration is expected to be added to the ticket early next week.</p>\n<p>WordPress 4.9.8 is another step in Matt Mullenweg&#8217;s <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\" rel=\"noopener noreferrer\" target=\"_blank\">roadmap for getting Gutenberg into 5.0</a>. The goal is to make more users aware of Gutenberg and to gather more testing and feedback before the new editor lands in core. The prompt will include a prominent button that users can click to install the Gutenberg plugin, along with links for where to learn more and how to report issues.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 21:39:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Just Write: A Client-Side React App for Writing and Editing WordPress Posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82147\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/just-write-a-client-side-react-app-for-writing-and-editing-wordpress-posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5227:\"<p>WordPress developer <a href=\"https://www.jasonbobich.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Jason Bobich</a> has created an open source client-side React app called <a href=\"https://github.com/themeblvd/justwrite\">Just Write</a> that provides a decoupled editing experience for WordPress. Bobich said he built the app in 10 days to explore the possibilities of React and the WP REST API.</p>\n<p>Although it&#8217;s still a work in progress, the app has a <a href=\"http://justwrite.app\" rel=\"noopener noreferrer\" target=\"_blank\">demo</a> where curious testers can manage posts from any WordPress website that&#8217;s secured with HTTPS and has the JWT Authentication plugin installed. Alternatively, testers can click on the &#8220;play in the sandbox&#8221; to bypass authentication.</p>\n<p>Once logged in, the user sees a dashboard with the most recent posts, a deliberate design decision that Bobich made to &#8220;motivate the user to do one thing &#8211; to just write.&#8221;</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/just-write-dashboard.jpeg?ssl=1\"><img /></a></p>\n<p>The editor includes support for Markdown and a simple preview with a sticky toolbar at the top. Just Write also allows the user to edit their profile and personal information in a dropdown at the top of the screen.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-03-at-4.17.02-PM.png?ssl=1\"><img /></a></p>\n<p>Bobich said he created to the app to improve his JavaScript skills and doesn&#8217;t have a plan to use it for business.</p>\n<p>&#8220;Ever since we were all told a couple of years ago, &#8216;Learn JavaScript deeply,&#8217; I’ve seen just how many holes I had in my own JavaScript knowledge,&#8221; Bobich said. &#8220;I’ve been working hard the last couple of years to become more than just a jQuery monkey. And so this project is just another step towards my personal growth surrounding the technologies involved here. It’s so exciting to think about the potential things that we can build in the community with React and the WordPress API.&#8221;</p>\n<h3>WP REST API Currently Poses Complicated Hurdles for App Developers</h3>\n<p>After the REST API was merged into core, the time seemed ripe for developers to build a proliferation of different writing experiences for users. However, working with the API still has many hurdles for application developers, limitations that Bobich said he became acquainted with while developing Just Write.</p>\n<p>&#8220;For anyone wanting to build a practical application like this, the first glaring issue is around authentication,&#8221; Bobich said. &#8220;WordPress has no way to securely authenticate from outside of the WordPress admin. So expecting any average user to set up oAuth or JWT with a third-party plugin is a bit of a reach.&#8221;</p>\n<p>Bobich also encountered issues working with media and saving content the WordPress way (which allows shortcodes to get parsed before <code>wpautop()</code>). The application is not yet ready for real, practical use but would require even more API calls to do things like get ahold of categories and tags or add the ability to create new ones.</p>\n<p>&#8220;Think about all the work WordPress has put into the way we embed media in different ways,&#8221; Bobich said. &#8220;Just having basic things we take for granted — pasting a YouTube link, a tweet, uploading an image and having it cropped 100 ways ’til Sunday — for all  work properly would all take custom JavaScript coding.&#8221;</p>\n<p>Bobich said he thinks these limitations are the reason why there aren&#8217;t yet more applications built with decoupled editing experiences. Yet, in the new era of Gutenberg, Just Write&#8217;s alternative writing interface offers a simplicity that some users may prefer.</p>\n<p>&#8220;As the WordPress admin continues to grow and become more complex, some people get excited and others moan and grown,&#8221; Bobich said. &#8220;But building something like Just Write shows us that there’s more to WordPress than just what we see. There’s more than a menu full of plugins and a new editor built in React that we may or may not like. WordPress can be what we want. It can fit our own needs or any client’s. And this all comes from the potential ability to decouple the editing experience.&#8221;</p>\n<p>As WordPress has evolved to accommodate different user types from blogging, websites, and niche applications, Bobich said he thinks the next logical step is for developers to begin creating admin interfaces catered specifically to users&#8217; individual needs.</p>\n<p>&#8220;Gutenberg marks an important turn in the evolution,&#8221; Bobich said. &#8220;For those that were clinging to the simplicity of WordPress and blocking out some of the other noise, this might not be something they end up liking&#8230; or maybe it will?</p>\n<p>&#8220;But the bigger point is that what we see there in the admin doesn’t have to be it. I hope people will be braver than me and really set out to build these different alternatives. If I can polish my React skills and build that myself in 10 days, I can only imagine what others can do.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 18:09:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Dev Blog: WordPress 4.9.7 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3983:\"<p>WordPress 4.9.7 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads directory.</p>\n\n<p>Thank you to <a href=\"https://hackerone.com/slavco\">Slavco</a> for reporting the original issue and <a href=\"https://www.wordfence.com/\">Matt Barry</a> for reporting related issues.</p>\n\n<p>Seventeen other bugs were fixed in WordPress 4.9.7. Particularly of note were:</p>\n\n<ul>\n	<li>Taxonomy: Improve cache handling for term queries.</li>\n	<li>Posts, Post Types: Clear post password cookie when logging out.</li>\n	<li>Widgets: Allow basic HTML tags in sidebar descriptions on Widgets admin screen.</li>\n	<li>Community Events Dashboard: Always show the nearest WordCamp if one is coming up, even if there are multiple Meetups happening first.</li>\n	<li>Privacy: Make sure default privacy policy content does not cause a fatal error when flushing rewrite rules outside of the admin context.</li>\n</ul>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.7</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>The previously scheduled 4.9.7 is now referred to as 4.9.8, and will follow the <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">release schedule posted yesterday</a>.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.7:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 17:00:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"HeroPress: Coding under trees and in 24 hour coffee shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2582\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:166:\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/#utm_source=rss&utm_medium=rss&utm_campaign=coding-under-trees-and-in-24-hour-coffee-shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9173:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/07/070418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Taking risks and being able to look like a fool have enabled me to become a WordPress core committer.\" /><p>People were paying me to write code two years before I had wifi in my house. Home wifi would have cost $45 a month. The cable company wanted a $100 deposit to create my account. It wasn&#8217;t going to happen, I could get wifi with a cup of coffee for $3 (including the tip) at a coffee shop a few blocks away from my place that meant I got some semblance of being social. I couldn&#8217;t imagine giving up 15 days a month at coffee shops just so it was easier to work from home, not when I could get away with sitting on my porch poaching wifi from my neighbors when I got stuck and had to google regular expressions for the 400th time. Or, my favorite, sit in a park down the street where there were three unprotected wifi networks and a strong tree to lean against.</p>\n<p>My path to becoming a web developer started when I packed up my beat up Chevy Prizm and drove to Portland, Oregon. I had graduated college with degrees in Economics and Political Science. While there, I become a Linux user when I discovered that it used less space meaning I had more space for music. I had never written code, but when my friends and I decided we wanted to create our version of The Onion, I started searching. After a little bit of trial ( blogger ) and error ( blogger ), I found WordPress and it&#8217;s &#8220;Famous Five Minute Install&#8221;. I purchased a domain and hosting from a place that advertised heavily and set about creating our site.</p>\n<p>The public library was my initial source of information. After all, having fun isn&#8217;t hard when you&#8217;ve got a library card. I picked up books on CSS, PHP, Java, Database design, and anything I could get my hands on. I was working evenings as an usher for the Portland Trailblazers and would head over to a 24 hour coffee shop to cowboy code under fluorescent lights until I was ready to crash.</p>\n<hr class=\"ttfmake-hr\" />\n<p>I can think of three big breaks that really helped move me along. Each of these ended up being &#8220;Flash Forward&#8221; moments where I was able to grow.</p>\n<h3>My First Client</h3>\n<p>I was scouring craigslist looking for anything I could get my hands on when I found someone offering $25 to move their WordPress site from one domain to another. Having just done that, I sent an email and crossed my fingers. Somehow, my eagerness (and likely willingness to work for peanuts) got my their trust. I had my first client. It took me way longer than I would have hoped as I learned about things like DNS Propagation, but I completed the task. And did such a good job that I was asked if I could build a website for one of their friends who was a standup comic. I was honest that I had never built a real site from scratch, but they liked how I had communicated, so I got the gig.</p>\n<h3>My First Core Experience</h3>\n<p>Before the first time I contributed to WordPress, I went to the Portland WordPress User Group to ask if something I was seeing was possibly an issue that warranted emailing the wp-hackers mailing list. I was so scared of being wrong that I felt like I needed to ask permission. I assumed that I was going to make a fool of myself and be laughed at. I ended up <a href=\"http://lists.automattic.com/pipermail/wp-hackers/2009-June/026386.html\">emailing the list</a> and it turned out, I had found a <a href=\"https://core.trac.wordpress.org/ticket/10022\">spot where WordPress could be better</a>! In the grand scheme of WordPress, passing a parameter to three `do_action` calls didn&#8217;t help WordPress gain 1% of market share, but it did help me with the plugin I was working on. And I was exposed to the process. I learned about trac, and the weekly devchat, and patches and svn. While I didn&#8217;t get props, I still consider this my first contribution to WordPress Core.</p>\n<h3>My first WordCamp</h3>\n<p>WordCamps are cheap compared to most tech conferences, but when you are playing the game of &#8220;How do I eat on $10 a week&#8221; for months on end, $40 for a conference whose value is unknown is a hard sell. Luckily, the Portland WordPress User Group did a raffle for a ticket and I won. All I had to pay for was the $2 in bus fare each way and I had the chance to learn. The 2009 WordCamp Portland ended up being where Matt Mullenweg announced that WPMU was going to be merged into core in WordPress 3.0 and it&#8217;s where I saw a talk entitled &#8220;<a href=\"https://wordpress.tv/2009/09/20/will-norris-building-plugins-portland09/\">How Not to Build a WordPress Plugin</a>&#8221; by Will Norris. Will&#8217;s talk exposed me to WordPress development in a way that I would never have imagined on my own. It helped me level up from someone who mostly was copy and pasting PHP to someone who was writing code.</p>\n<p>Additionally, I was able to network for the first time. It no longer was the same 15 people who went to the meetup, it was now about 200 WordPress fanatics, many who wanted to hire someone like me to work on their website!</p>\n<p>Looking back, these flash forward moments contributed almost as much to luck to my success. In many ways, a lot of my success can be attributed to the luck of being born as someone who is essentially a white cis-male into a family where I was exposed to computers and had a chance to gain a solid liberal arts education.</p>\n<p>But it&#8217;s not just that luck that helped me. I had to provide good customer service to turn a $25 task into a contract to build my first website. I had to be willing to embarrass myself by asking what I thought was a dumb question. I had to show up and become a part of my local community to get a ticket for a conference where I learned and networked.</p>\n<p>Soon after WordCamp Portland 2009, I had enough client work coming in that it made sense to have wifi. Home wifi meant I could start being connected to the WordPress community more than once a month in person or a few hours here and there at coffee shops. It meant I could read dev chat every week and eventually it meant I could earn props. Networking at meetups, WordCamps and conferences led to full time jobs. Taking risks and being willing to look like a fool in front of the WordPress community have enabled me to become a WordPress Core committer (and sometimes continue to look like a fool). In addition to volunteering on WordPress Core, I&#8217;m now the Director of Editorial Technology for Penske Media Corporation where I help brands like Rolling Stone and Variety run on WordPress, but I&#8217;ll never forget when if I needed to code, I was going to sit under trees in parks or the fluorescent lights of a 24 hour coffee shop.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Coding%20under%20trees%20and%20in%2024%20hour%20coffee%20shops&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F&title=Coding+under+trees+and+in+24+hour+coffee+shops\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Coding under trees and in 24 hour coffee shops\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/&media=https://heropress.com/wp-content/uploads/2018/07/070418-150x150.jpg&description=Coding under trees and in 24 hour coffee shops\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Coding under trees and in 24 hour coffee shops\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\" title=\"Coding under trees and in 24 hour coffee shops\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\">Coding under trees and in 24 hour coffee shops</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 18:30:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Aaron Jorbin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: WordCamp Incubator Program 2018 to Host Events in Montevideo, Uruguay and Kota Kinabalu, Malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wptavern.com/wordcamp-incubator-program-2018-to-host-events-in-montevideo-uruguay-and-kota-kinabalu-malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2465:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/montevideo.jpg?ssl=1\"><img /></a>The Pocitos neighborhood of Montevideo, Uruguay. Skyline from the shore -photo credit: <a href=\"https://en.wikipedia.org/wiki/File:Pocitos,_2017.jpg\">Rimbaldine</a>\n<p>The WordCamp Incubator Program has selected <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\" rel=\"noopener noreferrer\" target=\"_blank\">Montevideo, Uruguay and Kota Kinabalu, Malaysia to host WordCamps in 2018</a>. The program provides a jump start for new WordPress communities where meetups have not yet been well-established. Montevideo and Kota Kinabalu were selected from a <a href=\"https://make.wordpress.org/community/2018/05/15/wordcamp-incubator-program-2018-update/\" rel=\"noopener noreferrer\" target=\"_blank\">short list of 14 communities</a> that had been whittled down from 104 applications for the program.</p>\n<p>WordPress Community Deputies will co-lead the events and mentor a local team that will organize a one-track WordCamp with approximately 50-75 attendees. The goal is to empower the new organizers and the fledgling communities to host more local events, ideally regular meetups and an annual WordCamp. Mentors will assist in finding speakers and sponsors. A global sponsorship grant will cover 100% of the events&#8217; costs, relieving the organizers of the burden of local fundraising.</p>\n<p>WordPress Community Team member Rocío Valdivia announced the program&#8217;s new cities for 2018 and said she anticipates the events will happen in the last quarter of this year. Local co-leads have been charged with starting a monthly meetup group before setting a date for the new WordCamps.</p>\n<p>Round 2 of the WordCamp Incubator Program follows up a successful run in 2016 that brought WordCamps to Denpasar, Harare, and Medellín. <a href=\"https://wptavern.com/harare-and-nairobi-host-2nd-round-of-successful-wordcamps\" rel=\"noopener noreferrer\" target=\"_blank\">Harare hosted its second WordCamp in 2017</a> and a <a href=\"https://2018.harare.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">2018 camp</a> is in the early planning stages. This particular African community, along with the neighboring Nairobi community (on the short list in 2016), are strong examples of how the incubator program can provide a boost in areas of the world where the WordPress community is not yet deeply rooted.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Jul 2018 03:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81919\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4606:\"<p><a href=\"https://themebeans.com/\" rel=\"noopener noreferrer\" target=\"_blank\">ThemeBeans</a> founder Rich Tabor has released a new plugin called <a href=\"https://wordpress.org/plugins/block-unit-test/\" rel=\"noopener noreferrer\" target=\"_blank\">Block Unit Test for Gutenberg</a> that helps theme authors test their themes for Gutenberg-readiness. It is similar to the <a href=\"https://codex.wordpress.org/Theme_Unit_Test\" rel=\"noopener noreferrer\" target=\"_blank\">Theme Unit Test</a> but is limited to testing Gutenberg blocks.</p>\n<p>After installing and activating both Gutenberg and sBlock Unit Test, the plugin creates a new page as a draft with an example of every core Gutenblock. This makes it easy to see how the blocks will appear on the frontend of any theme. Block Unit Test also includes variations on the core blocks with different alignment and column settings applied.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530556922797.png?ssl=1\"><img /></a></p>\n<p>Tabor said he knew it would be advantageous to start using/writing in Gutenberg daily to better understand what he needed to do to make his products at ThemeBeans compatible.</p>\n<p>&#8220;I added initial support for Gutenberg in my Tabor WordPress theme, as I use it on my own personal blog with Gutenberg,&#8221; he said. &#8220;I needed a way to easily test each of the core Gutenberg blocks (and eventually third-party blocks) without having to manually add them every time I wanted to test something. As Gutenberg blocks get more dynamic and complicated, it’s a bit trickier to test for &#8211; as many blocks have different variations/styles/columns/grids/etc.&#8221;</p>\n<p>Tabor took inspiration from the Theme Unit Test and created Block Unit Test with Gutenblock variations included. He is using the plugin while preparing the 20+ themes in his ThemeBeans catalog to support Gutenberg. He wrote the plugin to be extensible and made it open source on <a href=\"https://github.com/thatplugincompany/block-unit-test\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub</a> for other developers and theme shops to use.</p>\n<p>Theme developers can install Block Unit Test as a first step towards making sure the front-end styles match the editor styles. This will be essential to making the transition process easier for new Gutenberg users once WordPress 5.0 ships. Tabor also published a tutorial for <a href=\"https://richtabor.com/add-wordpress-theme-styles-to-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">adding WordPress Theme Styles to Gutenberg</a> to help others get started.</p>\n<p>In getting his first theme compatible, Tabor said he relied heavily on the <a href=\"https://wordpress.org/gutenberg/handbook/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg Handbook</a>, as well as following discussions on the <a href=\"https://github.com/WordPress/gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg GitHub repository</a>.</p>\n<p>&#8220;It’s not terribly difficult to add support for Gutenberg, although applying proper theme styles within the Gutenberg editor is a bit of task — there’s so much that can be accidentally overlooked,&#8221; Tabor said. &#8220;For the theme side of things, there wasn&#8217;t much technical leveling-up — though developing blocks is a different story. I did need to raise the bar and dive deeply into the world of Javascript, though looking at the block examples on the GitHub repository really helped me along.&#8221;</p>\n<p>Tabor said he started &#8220;living and breathing all things Gutenberg&#8221; after WordCamp US 2017, and began writing development articles while learning the ropes. He created several projects focused on the new editor, including <a href=\"https://writy.io/\" rel=\"noopener noreferrer\" target=\"_blank\">Writy</a>, a Gutenberg-centric writing experience for publishers, and <a href=\"https://richtabor.com/coblocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Co-Blocks</a>, a beta suite of Gutenberg blocks for content marketers.</p>\n<p>&#8220;As a founder of a theme shop it was apparent that I needed to hone in on Gutenberg and level-up my knowledge, technical skills, and consequently my products, in order to compete in a post-Gutenberg era of WordPress,&#8221; Tabor said.</p>\n<p>&#8220;I believe the foundation of the future of WordPress lies in the success of Gutenberg. I use the new editor just about daily now. I know it’s a great move in the right direction and I’m doing my part to make sure folks using my themes can experience everything that Gutenberg has to offer.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 21:43:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Dev Blog: The Month in WordPress: June 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4626:\"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Another Successful WordCamp Europe</h2>\n\n<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>\n\n<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href=\"https://www.flickr.com/photos/wceu/albums\">photos from the event</a>.</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">fill in the application form</a>.</p>\n\n<h2>Updated Roadmap for the New WordPress Content Editor</h2>\n\n<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">an updated roadmap</a> for <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>\n\n<p>While the editor is in rapid development, <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>\n\n<p>If you would like to contribute to Gutenberg, read <a href=\"https://wordpress.org/gutenberg/handbook/\">the handbook</a>, follow the <a href=\"https://make.wordpress.org/core/\">Core team blog</a>, and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>WordCamp Incubator Cities Announced</h2>\n\n<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>\n\n<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>\n\n<p>To find out more about the Incubator program follow the <a href=\"https://make.wordpress.org/community/\">Community team blog</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>The WordPress community of Spain recently <a href=\"https://twitter.com/wp_es/status/1004681694660603904\">received an award</a> for being the best open-source community in the country.</li>\n	<li>This month, WordPress reached <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">the milestone of powering 31% of websites</a>.</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>\n	<li>Near the end of the month, Zac Gordon hosted <a href=\"https://javascriptforwp.com/conference/\">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 09:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Work and Play\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48231\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://ma.tt/2018/06/work-and-play/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:527:\"<blockquote class=\"wp-block-quote\">\n	<p>A master in the art of living draws no sharp distinction between his work and his play; his labor and his leisure; his mind and his body; his education and his recreation. He hardly knows which is which. He simply pursues his vision of excellence through whatever he is doing, and leaves others to determine whether he is working or playing. To himself, he always appears to be doing both.</p>\n</blockquote>\n\n<p>Lawrence Pearsall Jacks in <em>Education through Recreation</em>, 1932</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 01 Jul 2018 01:13:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Post Status: An Abundance of Acquisitions — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46292\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://poststatus.com/an-abundance-of-acquisitions-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2301:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians have a chat about a number of different acquisitions that have occurred in the WordPress space over these past few weeks. Listen in as they unpack some of the news surrounding StudioPress, WPEngine, Automattic, WPNinjas, Prospress, and AutomateWoo. Check out our episode links for further stories about each of those businesses as well as the virtual JavaScript for WordPress conference taking place live on July 29.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">WPEngine acquired StudioPress</a></li>\n<li><a href=\"https://poststatus.com/notes/automattic-acquries-atavist/\">Automattic acquired Atavist</a></li>\n<li><a href=\"http://ninjashop.site/open-letter-exchangewp/\">WPNinjas acquired ExchangeWP (formerly iThemes Exchange)</a></li>\n<li><a href=\"https://prospress.com/automatewoo-joins-prospress/\">Prospress acquires AutomateWoo</a></li>\n<li><a href=\"https://subscribe.me/\">Prospress announced Subscribe.me</a></li>\n<li><a href=\"https://javascriptforwp.com/conference/\">JSforWP Conf on Friday</a></li>\n<li><a href=\"https://2018.grandrapids.wordcamp.org\">WCGR on Saturday</a></li>\n<li><a href=\"https://florianziegler.com/wordcamp-europe-2018/\">WCEU Photos</a></li>\n</ul>\n<h3>Sponsor: Jilt</h3>\n<p><a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Jilt</a> offers powerful email marketing built for eCommerce. Join thousands of stores that have already earned over $28,000,000 in extra sales using Jilt. <a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Try Jilt for free</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:11:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WCEU Panel Discusses Progressive WordPress Themes, AMP, and Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82078\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/wceu-panel-discusses-progressive-wordpress-themes-amp-and-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4940:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/progressive-themes-panel.png?ssl=1\"><img /></a></p>\n<p>Progressive themes was a hot topic at WordCamp Europe 2018. During the event I had the opportunity to set up a panel with four experts who are working to integrate progressive web development practices more deeply in WordPress core, plugins, and themes. These practices make it possible for a website (or app) to work offline, load quickly, deliver content on unreliable networks, and use device-specific features to provide a better experience for the user. The <a href=\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\" rel=\"noopener noreferrer\" target=\"_blank\">PWA (progressive web app) created for WordCamp Europe</a> is a good example of this in action.</p>\n<p><a href=\"https://twitter.com/TweetyThierry\" rel=\"noopener noreferrer\" target=\"_blank\">Thierry Muller</a>, <a href=\"https://twitter.com/iAlbMedina\" rel=\"noopener noreferrer\" target=\"_blank\">Alberto Medina</a>, <a href=\"https://twitter.com/westonruter\" rel=\"noopener noreferrer\" target=\"_blank\">Weston Ruter</a>, and <a href=\"https://twitter.com/mor10\" rel=\"noopener noreferrer\" target=\"_blank\">Morten Rand-Hendriksen</a> joined me for an interview, exploring the future of WordPress themes in the era of progressive web development. (see video below)</p>\n<p>&#8220;At the most abstract level, it&#8217;s all about user experience,&#8221; Medina said. &#8220;How do we maximize the pleasure that our users get when they use our websites? And delightfulness in this context means things like performance, speed, having content that isn&#8217;t blocked. If you think about themes built according to those principles, then we are basically seeking an awesome user experience in WordPress.&#8221;</p>\n<p>It&#8217;s not yet clear what this will look like for the WordPress theme landscape, as current solutions are somewhat fragmented. WordPress contributors are working to standardize progressive technologies in core so the ecosystem can collaborate better together.</p>\n<p>&#8220;There are many progressive themes being built these days,&#8221; Medina said. &#8220;One of the problems that is happening is that there is a lot of fragmentation. There&#8217;s a lot of plugins that are using service workers but in their own ways. What we want is to say, &#8216;This is the best way to do things,&#8217; this is a uniform API to do it, and then enable progressive theme developers to take advantage of the core functionality.&#8221;</p>\n<p>Currently, the prospect of setting up a WordPress site that uses progressive web technologies would be a daunting task for regular users, even if they are implementing existing solutions.</p>\n<p>&#8220;There&#8217;s also a user aspect of it, because the people for whom we design WordPress, plugins, and themes, are the people who actually publish their own content onto the web,&#8221; Rand-Hendriksen said. &#8220;There&#8217;s a really valid question in how much should they need to know about how the web works to be able to publish some content. When they spin up a WordPress site, should we impose on them to know that they need to add all these optimization plugins and do all this other stuff just to make the site work properly? How much of that can be offloaded onto the theme itself, or plugins, or even WordPress core?&#8221;</p>\n<p>The members of the panel are working together to on various projects and core contributions that will standardize the use of progressive enhancement technologies in WordPress.</p>\n<p>&#8220;The goal is to have a common API for service workers so that plugins and themes can each install their own logic, just like they can enqueue their own scripts today,&#8221; Ruter said. &#8220;Also to be able to enqueue their own service workers and then core can manage the combination of them, as well as having a common app manifest that plugins and themes can collaborate on and have a single output into the page.&#8221;</p>\n<p>This is how Rand-Hendriksen&#8217;s <a href=\"https://wprig.io/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Rig starter theme</a> project came about &#8211; to help developers take advantage of these best practices in the meantime, without having to figure out how to put all the pieces together.</p>\n<p>&#8220;WP Rig gives you the platform to build a progressive theme that uses all the latest performance and WordPress best practices, in a convenient package, and over time it will evolve with these new progressive technologies,&#8221; Rand-Hendriksen said.</p>\n<p>We also discussed AMP and Gutenberg compatibility, <a href=\"https://core.trac.wordpress.org/ticket/43328\" rel=\"noopener noreferrer\" target=\"_blank\">core support for web app manifests</a>, and how the commercial theme industry will react to these new technologies. Check out the full interview in the video below.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:03:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WPWeekly Episode 322 – WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82088&preview=true&preview_id=82088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wpweekly-episode-322-wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2238:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I spend the first half of the show discussing WP Engine&#8217;s acquisition of StudioPress. We share reactions from social media, debate on whether it&#8217;s a good or bad thing for the WordPress ecosystem, and webhosts being at the top of the food chain.</p>\n<p>We also talk about a recent security vulnerability that was publicly disclosed, ProsPress acquires AutomateWoo, and the release of Tide beta 1. Also of note, we identified an issue that causes John&#8217;s audio to turn into static. His audio should be fixed in the next episode.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wpengine.com/blog/why-wp-engine-is-acquiring-studiopress/\">Why WP Engine is Acquiring StudioPress</a><br />\n<a href=\"https://studiopress.blog/announcement/\">An Important Announcement About the Future of StudioPress</a><br />\n<a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">WP Engine, a managed WordPress platform, raises $250M from Silver Lake</a><br />\n<a href=\"https://twitter.com/bgardner/status/1012011823279824901\">https://twitter.com/bgardner/status/1012011823279824901</a><br />\n<a href=\"https://automatewoo.com/blog/automatewoo-joins-prospress/\">AutomateWoo joins Prospress</a><br />\n<a href=\"https://prospress.com/automatewoo-joins-prospress/\">AutomateWoo joins Prospress to Further eCommerce Automation on WooCommerce</a><br />\n<a href=\"https://make.wordpress.org/tide/2018/06/26/announcing-tide-1-0-0-beta/\">Tide Beta 1 Released</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 4th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #322:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 01:21:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Drop It Plugin Brings Gifs and Unsplash Photos to Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/drop-it-plugin-brings-gifs-and-unsplash-photos-to-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2642:\"<p>If you&#8217;re writing all your posts in the new Gutenberg editor but don&#8217;t want to give up convenient access to your fancy gifs and stock images, the new <a href=\"https://wordpress.org/plugins/dropit/\" rel=\"noopener noreferrer\" target=\"_blank\">Drop It</a> plugin has you covered. <a href=\"https://twitter.com/riadbenguella\" rel=\"noopener noreferrer\" target=\"_blank\">Riad Benguella</a>, one of the engineers who is working on Gutenberg, created the plugin to offer one-click image insertion/upload from <a href=\"https://unsplash.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Unsplash.com</a>.</p>\n<p>Drop It adds a droplet icon to the Gutenberg sidebar that launches a search form for Unsplash.com or Giphy.com (a feature contributed by <a href=\"https://twitter.com/jmau111\" rel=\"noopener noreferrer\" target=\"_blank\">Julien Maury</a>). Users can click the &#8220;+&#8221; sign on the image or simply drag and drop it into the content area.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-28-at-1.14.10-PM.png?ssl=1\"><img /></a></p>\n<p>Drop It seamlessly connects Gutenberg to the Unsplash and Giphy libraries, putting hundreds of thousands of stock photos and gifs at your fingertips while composing in WordPress. In the earlier days of Unsplash, many of the same images were used all over the web, but over the past few years its library has grown to include more than 550,000 high-resolution photos.</p>\n<p>Check out this demo to see how how fast it is to search and insert images:</p>\n<p><a href=\"https://cloudup.com/cUCoAEcq9lG\"><img src=\"https://i2.wp.com/cldup.com/2HRQQ2GAg3.gif?resize=627%2C437&ssl=1\" alt=\"Drop it\" width=\"627\" height=\"437\" /></a></p>\n<p>Benguella originally created the plugin for a talk he gave at WPtech Lyon where he demonstrated <a href=\"https://riad.blog/2018/04/29/explorons-gutenberg-sous-le-capot-au-wptech-lyon/\" rel=\"noopener noreferrer\" target=\"_blank\">how plugin developers can make use of Gutenberg&#8217;s reusable modules</a>. His presentation and slides explore Gutenberg&#8217;s architecture and show how he created the Drop It plugin.</p>\n<p>Benguella said the Drop It plugin&#8217;s code is a good example of how developers can extend Gutenberg&#8217;s UI using “pinnable” sidebar plugins. It also shows how to use the Data module to access and update Gutenberg’s state (data).</p>\n<p>In the future, Benguella plans to add more sources for inserting media. He currently has a proof of concept for adding content from Google Docs and will add more depending on contributions from others and his availability to work on the plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 22:52:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Matt: Automattic’s First New Board Member: General Ann Dunwoody\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48215\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://ma.tt/2018/06/automattics-first-new-board-member-general-ann-dunwoody/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8216:\"<img />\n\n<p>As Automattic keeps growing we’ve been bringing in a lot of talented people behind the scenes to help expand on our vision as we go from hundreds to thousands of colleagues, and hundreds of millions to billions in revenue. Recently, former New York Times digital executive Kinsey Wilson joined our team as <a href=\"https://www.poynter.org/news/one-time-npr-and-nyt-digital-chief-new-adventure-wordpress\">president of WordPress.com</a>, the Chief Design Officer of Axios <a href=\"http://www.alexislloyd.com/\">Alexis Lloyd</a> has joined <a href=\"https://twitter.com/alexislloyd/status/1006882661040877568?lang=en\">as head of Design Innovation</a>, the former CEO of Bluehost James Grierson is leading <a href=\"https://jetpack.com/\">Jetpack</a> partnerships, and today I&#8217;m excited to announce a change to my bosses, the board of directors.<br /></p>\n\n<p>Gen. Ann Dunwoody served for 37 years in the U.S. Army, and she is the first woman in U.S. Military history to achieve a four-star officer rank. She’s also the author of <a href=\"https://www.amazon.com/dp/0738217794\"><em>A Higher Standard: Leadership Strategies from America&#8217;s First Female Four-Star General</em></a>, a book I really loved and highly recommend. Automattic&#8217;s board has had no new members since its founding in 2005, so this is our first addition in 13 years. I became familiar with General Dunwoody&#8217;s work while researching distributed organizations outside of technology, which led me to the military, which led me to geek out on logistics, which led me to her book and eventually flying out to Florida to meet in person.<br /></p>\n\n<p>Below is a brief interview with Gen. Dunwoody &#8212; we chatted with her about global leadership, finding your passion, and building a business. <br /></p>\n\n<p><strong>We&#8217;re excited to have you onboard, General Dunwoody. It&#8217;s interesting &#8212; at Automattic we like to point out that we&#8217;re all over the globe (over 740 employees in more than 60 countries) but you oversaw 69,000 military and civilians across 140 countries! Were there any big leadership lessons from managing operations across such a wide range of distances, timezones, and cultures? </strong><br /><br /></p>\n\n<p>That’s a great question. When I started out as a young officer in the Army, the leadership philosophy that was espoused back then was “Leadership by walking around.” When you&#8217;re in charge of a platoon, a company or even a battalion or Brigade that is not globally dispersed this philosophy is very sound. When you’re running a global organization with 69,000 folks in 140 countries, you have to leverage technology to keep real-time communications flowing and keep leaders updated. I would host (with the leadership) a global video teleconference every Wednesday connecting every organization from Afghanistan, Kuwait, Iraq, Europe, etc. and sites &#8212; hundreds across the United States. Our headquarters  would provide an operational update and then we go around the globe to get update from from everyone &#8212; what&#8217;s going well, where they need help or additional resources. In the old days I think people believed information was power and often withheld information to use for personal advantage, but I believe shared information is power. By leveraging the power of the entire industrial base we could solve problems in real time. I still travelled around a lot to see our people, but it is not possible to keep everyone informed and in the loop with current operations without leveraging technology. <br /></p>\n\n<p><strong>I love your answer about &#8220;shared information is power.&#8221; Did you ever find it difficult to break down the silos and embrace that concept? </strong></p>\n\n<p>Oh my, yes. They weren’t just silos, they were silos with concertina wire around them!   Parochialism was rampant and everyone wanted their own system and own their own information. We had over 200 stand alone systems that didn’t talk to each other. So to field and design an enterprise IT system that leveraged systems with the needed information to support “foxhole to factory” was challenging and exciting. <br /></p>\n\n<p><strong>And how did you decide what technological means to communicate an idea or a directive, versus, say, meeting in-person? </strong></p>\n\n<p>I would say it depended on the idea. If it was personal, probably a phone call (one on one); if trying to generate support for an idea or transformational concept, meet in-person with my initiatives group to socialize the idea and get their input modifications and buy-in. Then Commanders conference to socialize idea with them, as they will have to implement it. Once socialized with leadership, we worldwide videoconference with the entire organization to define and describe the purpose, intent, how, and why &#8212; so everyone knew what we were trying to do and what their role was in execution. I found you cannot over-communicate when trying to make changes.<br /></p>\n\n<p><strong>It&#8217;s an incredible accomplishment to become the first woman in U.S. Military history to achieve the four-star officer rank. Can you tell me about how things changed (or maybe still need to change further) in terms of your experience during your 37 years of service, and how you addressed diversity and inclusion in the military? </strong><br /><br /></p>\n\n<p>First, I certainly didn’t accomplish this by myself &#8212; I had a lot of help along the way! I joined the Army as part of the Women’s Army Corps (WAC) back in 1975. A few years later they disestablished the WAC and began the integration of women into the regular Army. This was the first time women had the opportunity to have the same career opportunities as their male counterparts in the branches now open to women. The challenge for the women who came into the Army back then was to force the integration &#8212; fight being put into traditional jobs like being a secretary, admin, clerk, or cook &#8212; and fight to be platoon leaders, etc., to support and move the integration of women into the regular Army.</p>\n\n<p>What I witnessed during my time in the Army was that the doors continued to open. Yes, there were roadblocks &#8212; but there were also many leaders along the way who were willing to help. I never worked for a woman. I worked for men who either believed in me or didn’t. My experience in my almost four decades was that the doors continued to open for women. I thought jumping out of airplanes was really neat &#8212; now my niece in the USAF is an A-10 fighter pilot, and we have women graduating from Ranger school!  <br /></p>\n\n<p>On diversity, I realized that being the only female in many forums, my voice was hard to be heard. And I also realized that most folks promoted and surrounded themselves with people in their own image. What my philosophy was &#8212; and I still think it is an issue today &#8212; is that diversity is not about numbers, it’s about getting the best and brightest from all walks of life, to help leaders solve the very complex issues that face us today. Don’t surround yourself with only people that think or act or look like you. <br /></p>\n\n<p><strong>Who are the leaders that inspire you today? </strong></p>\n\n<p>I think we are products of our past &#8212; Mom and Dad, even though not here on earth, gave me the values that still guide me. Many of my military mentors, Gen. Hugh Shelton, Gen. Pete Schoomaker, Gen. Gordon Sullivan, Gen. Dick Cody, are still coaches and mentors to me today.  </p>\n\n<p>Folks I admire: Warren Buffett, only met him once but I like his concern for the betterment of our country; Oprah Winfrey, although I have never met her I admire her for what she does for our country how she presents herself and how she handles herself &#8212; awesome; Gen. Mattis &#8212; wow, I admire him for taking on this extremely tough assignment for the good of our country and our defense. Secretary Gates served two administrations, Republican and Democrat. <br /></p>\n\n<p>People that inspire me are people I believe are true leaders &#8212; valuing honesty and having the best interests of the country at heart. No hubris!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 19:54:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81948\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4332:\"<p><a href=\"https://www.studiopress.com/\">StudioPress</a>, founded by Brian Gardner in 2007, has been acquired <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">by managed WordPress hosting company WP Engine</a>, for an undisclosed amount. </p>\n\n<p>In 2007, Gardner created the Revolution theme which took the WordPress world by storm. According to some people, it ignited the WordPress Premium theme market. <br /></p>\n\n<img />\n	Revolution Church Theme \n\n\n<p>In the midst of a GPL debate regarding themes in 2008, Gardner <a href=\"https://www.briangardner.com/blog/revolution-going-open-source.htm\">decided to license</a> the Revolution theme <a href=\"https://web.archive.org/web/20081011070936/https://www.briangardner.com/blog/revolution-going-open-source.htm\">as 100% GPL</a>. In 2009, Gardner <a href=\"https://www.studiopress.com/revolution-rebrands-as-studiopress/\">rebranded Revolution</a> to StudioPress due to legal reasons. </p>\n\n<p>Early in 2010, <a href=\"https://www.studiopress.com/introducing-genesis-framework/\">StudioPress released the Genesis Framework</a>. This framework would go on to power thousands of themes and be the cornerstone of StudioPress&#8217; theme business. In 2010, StudioPress <a href=\"https://www.studiopress.com/studiopress-merges-into-copyblogger-media-llc/\">was merged into Copyblogger Media LLC</a>, which eventually went on to create the Rainmaker platform. </p>\n\n<p>Fast forward to 2018 and StudioPress has been acquired by <a href=\"https://wpengine.com/\">WP Engine</a>, a managed WordPress hosting company founded in 2010 that earlier this year, <a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">received $250M in venture capital funding</a> from Silver Lake.  </p>\n\n<p>According to Jason Cohen, founder of WP Engine, this is the largest acquisition in the company&#8217;s history.</p>\n\n<p>&#8220;In all, our contributions to the WordPress community in time, money, writing, coding and thought leadership totaled more than $1.7 million in 2017 and we’re already doing even more this year,&#8221; he said.<br /></p>\n\n<p>&#8220;As WP Engine continues to grow and scale, the way we give back to the WordPress community must grow and scale also, which was one of the deciding factors behind our acquisition of <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">StudioPress</a>—our largest acquisition in WP Engine’s history.&#8221;</p>\n\n<p>The company plans to heavily invest in the Genesis Framework community and ecosystem by hiring people to work on different aspects of the framework. Support will receive a boost as well as the ecosystem surrounding StudioPress&#8217; products. </p>\n\n<p>With Gutenberg on the horizon, Cohen says the Genesis Framework will be a shining example of what&#8217;s possible with WordPress&#8217; new editor. </p>\n\n<p>&#8220;There’s been plenty of concern about how Gutenberg will affect existing plugins and themes, so Genesis can serve as an example for how Gutenberg can work brilliantly,&#8221; Cohen said. </p>\n\n<p>&#8220;This directly advances the goals of WordPress Core. This precedent doesn’t stop with Gutenberg, either. Gutenberg is the transformation of today—there will be more tomorrow. While the topic of the day will change, the idea of supporting Core through themes and theme frameworks that support those efforts is an asset for the wider WordPress community.&#8221;</p>\n\n<p>Gardner will stay on board and be part of StudioPress&#8217; leadership team at WP Engine with an emphasis on product development and community. Nathan Rice along with the support team will transition to WP Engine with Rice continuing to serve as the lead developer of Genesis. </p>\n\n<p>Gardner admits that the acquisition is bittersweet, but that it&#8217;s a founding moment in the company&#8217;s history.</p>\n\n<p>&#8220;As my new colleague, Jason Cohen, the founder of WP Engine often says, &#8216;There are many founding moments in the history of a company.&#8217; This is one of those moments and I know it’s time for StudioPress to take the next step—and WP Engine is the right partner to take it with.&#8221;</p>\n\n<p>StudioPress customers can expect better support, more themes to choose from, and little to no disruption of service.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 08:11:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Free “JavaScript for WordPress Conference” to Stream Live Friday, June 29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81931\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/free-javascript-for-wordpress-conference-to-stream-live-friday-june-29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3834:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/jsconf-2018.png?ssl=1\"><img /></a>JavaScript for WordPress conference\n<p>Zac Gordon is hosting a &#8220;<a href=\"https://javascriptforwp.com/conference/\" rel=\"noopener noreferrer\" target=\"_blank\">JavaScript for WordPress Conference</a>&#8221; with two tracks on Friday, June 29, from 9:30 AM &#8211; 5:30 PM EDT. The free conference, sponsored by <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a> and <a href=\"https://wpbuffs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Buffs</a>, includes a full day of online talks from JavaScript professionals who work in the WordPress ecosystem.</p>\n<p>Gordon will be streaming the talks live via Crowdcast. Approximately 1,300 seats have been reserved so far, a number that rivals most WordCamps. Unlike WordCamps, however, the entire schedule is focused around developer education, featuring more technical talks that are often missing from traditional WordPress events.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530150620973.png?ssl=1\"><img /></a></p>\n<p>&#8220;I figured there was an interest in more JS-specific WordPress content and, given my courses and getting to know some people working a lot with JavaScript, I figured I would give it a shot,&#8221; Gordon said.</p>\n<p>Gordon has been working for the past several years as a freelance educator after his former employer, Treehouse, <a href=\"https://wptavern.com/treehouse-drops-support-for-wordpress-education\" rel=\"noopener noreferrer\" target=\"_blank\">dropped support for WordPress education</a>. He said his first project, the JavaScript for WordPress Master Course, was a huge undertaking. He is not offering that course anymore but is instead focusing on smaller, more targeted courses on his site <a href=\"https://javascriptforwp.com/\" rel=\"noopener noreferrer\" target=\"_blank\">javascriptforwp.com</a>.</p>\n<p>&#8220;Most of my courses this year will be Gutenberg related (have one now and a theme course launching next week, followed by an Advanced one after that),&#8221; Gordon said. He has also done courses at Udemy, Frontend Master, WP Sessions, WP101, and some consulting with Udacity.</p>\n<p>&#8220;I&#8217;m still learning the right price points and packaging and size,&#8221; Gordon said. &#8220;A few companies have gotten group accounts for their teams which is really positive and encouraging for me.&#8221;</p>\n<p>Gordon took a deep dive into JavaScript education after Matt Mullenweg issued a challenge to &#8220;Learn JavaScript Deeply&#8221; during his <a href=\"https://wptavern.com/state-of-the-word-2015-javascript-and-api-driven-interfaces-are-the-future-of-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">2015 State of the Word</a> address. He said so far the courses he offers have been going well and the community seems to have embraced the challenge.</p>\n<p>&#8220;The funny thing about Learning JavaScript Deeply is that people will still be able to build things in Gutenberg and beyond without really knowing it deeply,&#8221; Gordon said. &#8220;However most in the community have already picked up React or delved deeper into Vanilla JavaScript, and those who haven&#8217;t I believe certainly will be in the coming months and years.</p>\n<p>&#8220;Now with React in Core and the rebuilding of many parts of the admin with JS, we will have more real practical reasons to heed Matt&#8217;s call than we did before.&#8221;</p>\n<p>If the &#8220;JavaScript for WordPress Conference&#8221; goes well, Gordon said he hopes to make it an annual event. He is also considering doing a free day of workshops. All the talks given during the conference on Friday will be recorded and Gordon plans to drip them out over the coming months on his YouTube channel.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 02:49:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Gutenberg 3.1 Introduces Tips Interface to Guide New Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/gutenberg-3-1-introduces-tips-interface-to-guide-new-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3663:\"<p><a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.1</a> added a tips interface that supports and guides new users who are learning to navigate the editor&#8217;s blocks and settings. The tips appear when a new user opens Gutenberg, highlighting useful items on the page.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530113565627.png?ssl=1\"><img /></a></p>\n<p>Although the tips may seem cluttered and intrusive to users who already know what they are doing, they are a necessary evil for introducing the UI to new users. Gutenberg is not yet intuitive enough to be able to stand on its own without explanation inside the interface.</p>\n<p><a href=\"https://10up.com/blog/2018/user-testing-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">10up recently conducted Gutenberg usability tests</a> that unearthed some startling realities about how new users interact with the new editor. The tests were done on previous versions of the plugin (2.9.2) with users who frequently create content using the classic WordPress editor. 10up asked testers, who have had no training on Gutenberg, to write a news-style blog post.</p>\n<p>One of the most surprising results was that participants struggled with the simple task of adding an image to a post.</p>\n<p>&#8220;Although the interface is clean, a lack of focused attention or hierarchy on the page became apparent,&#8221; 10up Experience Designer Sarah James said. &#8220;Participants struggled to complete tasks like adding an image that did not have a clearly exposed and labeled element like the title and paragraph fields. Heatmap tracking of the backend captured 734 unique clicks in the new post interface and only 40 of these clicks were on actual clickable elements. This suggests a struggle to find basic interactive elements, such as image blocks.&#8221;</p>\n<p>Participants also had a difficult time finding and inserting additional block types &#8211; several testers overlooked the “+” symbol that triggers interface for adding a new block.</p>\n<p>Gutenberg 3.0 and 3.1 have already improved on these pain points with changes that highlight common tasks. The 3.0 release <a href=\"https://github.com/WordPress/gutenberg/pull/6636\" rel=\"noopener noreferrer\" target=\"_blank\">redesigned the inserter, ditching tabs for collapsible panels</a>. This makes it more friendly for hunting among blocks. Version 3.1 includes a new design of the sibling inserter (the &#8220;+&#8221; symbol that appears to allow user to insert blocks between other blocks).</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530126900744.png?ssl=1\"><img /></a></p>\n<p>In addition to improving usability issues with the inserter, Gutenberg 3.1 fixes some of the mechanics of previewing and saving posts. Users can now <a href=\"https://github.com/WordPress/gutenberg/pull/7189\" rel=\"noopener noreferrer\" target=\"_blank\">preview changes to a published post without updating the post</a>. The editor was also updated to trigger autosave as a standard save for a draft by the user currently authoring the post.</p>\n<p>HTML blocks that have been converted into shared blocks now show in preview mode, which makes it easier for users to see what they do and insert them visually. The code will only show if the user wants to edit the block.</p>\n<p>For a full list of the changes in 3.1, check out the <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">release post on make.wordpress.org</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 19:44:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: The Power Of WordCamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://heropress.com/the-power-of-wordcamps/#utm_source=rss&utm_medium=rss&utm_campaign=the-power-of-wordcamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3085:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2017/06/062117-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I was helping hundreds of people that were using WordPress for their business. That\'s powerful.\" /><p>WordCamps have a unique power to impact lives and careers. Without people and community, WordPress is simply software. But when you add in a large group of passionate people, people who are and are interested, everything changes. There&#8217;s excitement, encouragement, and education. Entrepreneurship can be a long and lonely road. Having a solid support community can make all the difference, and WordCamps can be a huge shot in the arm.</p>\n<p>This week&#8217;s HeroPress replay is by Juan Hernando from <a href=\"https://www.google.com/maps/place/Pontevedra%2C+Spain/@42.6208401,-8.572101599999996,5z/\">Pontevedra, Spain</a>. His essay details his journey from an unknown member of his local WordPress community to being a leader in that same community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/becoming-known-wordpress-community/\">Becoming Known in the WordPress Community</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Power Of WordCamps\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Power%20Of%20WordCamps&via=heropress&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Power Of WordCamps\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F&title=The+Power+Of+WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Power Of WordCamps\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/the-power-of-wordcamps/&media=https://heropress.com/wp-content/uploads/2017/06/062117-150x150.jpg&description=The Power Of WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Power Of WordCamps\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/the-power-of-wordcamps/\" title=\"The Power Of WordCamps\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/the-power-of-wordcamps/\">The Power Of WordCamps</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 13:04:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: TaxJar to Host Free Webinar June 27: Tax Experts Answer Questions on State Tax Compliance for Online Stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81886\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://wptavern.com/taxjar-to-host-free-webinar-june-27-tax-experts-answer-questions-on-state-tax-compliance-for-online-stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3544:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-26-at-4.10.19-PM.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://www.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar</a>, a company that offers automated sales tax software, is hosting a <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">free webinar June 27</a> at 11:30 AM CDT to answer questions regarding the U.S. Supreme Court&#8217;s decision on <a href=\"http://www.scotusblog.com/2018/06/opinion-analysis-court-expands-states-ability-to-require-internet-retailers-to-collect-sales-tax/\" rel=\"noopener noreferrer\" target=\"_blank\">South Dakota v. Wayfair</a>. The court ruled in favor of South Dakota on June 21st, 2018, allowing any state to require online sellers to collect taxes for sales made from customers in that state.</p>\n<p>The provisions identified in the South Dakota vs. Wayfair ruling identifies retailers making $100K+ or 200+ transactions in the state as having an &#8220;economic presence&#8221; that would require out-of-state retailers to render sales tax. However, it&#8217;s not yet clear how other states will measure sales tax liability.</p>\n<p>TaxJar has gathered a panel of tax experts to discuss the requirements of the new sales tax compliance burden for online businesses. Nearly 2,000 people are currently signed up to tune in and attendees can also <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">submit questions</a> in advance. A few popular questions submitted so far include:</p>\n<p><em>&#8220;How will we know which states we are required to pay taxes in, and do we have to create accounts in every state and pay for returns in all 50?&#8221;</em></p>\n<p><em>&#8220;I read that South Dakota, Colorado and Louisiana have a threshold of 100K in sales in their state to start collecting taxes. Is this really the case, and where can we find the threshold for other states?&#8221;</em></p>\n<p><em>&#8220;Does each state that wants to participate have to pass a law like South Dakota or is this now automatic for all states with a sales tax?&#8221;</em></p>\n<p>WooCommerce has created <a href=\"https://woocommerce.com/2018/06/woocommerce-sales-tax-for-the-us-how-to-enable-automated-calculations-and-filing/\" rel=\"noopener noreferrer\" target=\"_blank\">a guide to help users set up and collect taxes</a> as required by the tax jurisdiction where their stores are located. Online store owners in the US and Canada can set enable automated tax calculations using either the WooCommerce Tax or TaxJar add-ons (both free), depending on whether the merchant operates within a single tax nexus or multiple nexus locations.</p>\n<p>Automatic sales tax calculations are also available for merchants using Easy Digital Downloads. Pippin Williamson built <a href=\"https://wordpress.org/plugins/edd-taxjar/\" rel=\"noopener noreferrer\" target=\"_blank\">a free integration for EDD and TaxJar</a> that passes all tax rate determinations to TaxJar to calculate automatically, eliminating the need for manual tax rate entry.</p>\n<p>The Supreme Court&#8217;s ruling is very new and many state-specific details are yet to be worked out, but state legislatures are likely to be highly motivated and eager to rake in this new source of revenue. The <a href=\"https://blog.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar blog</a> will be a good source for updates as more compliance information becomes available.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jun 2018 21:26:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Interview with Matías Ventura on Building the Vision for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81807\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/interview-with-matias-ventura-on-building-the-vision-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2952:\"<p>At WordCamp Europe I had the opportunity to sit down with <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matías Ventura</a>, the technical lead for Gutenberg. Ventura, who has been responsible for building the vision for Gutenberg (in addition to building the actual product), shared a few things the team might have done differently in the earlier days to improve its reception in the community.</p>\n<p>&#8220;I think we should have put a little bit more effort into clarifying what we meant by the &#8216;editor,\'&#8221; Ventura said. &#8220;When Matt announced that we&#8217;re going to be focusing on the editor, the WordPress community generally took it that we were going to focus on TinyMCE. But the idea from the start was to focus on the editing experience as a whole, how a user perceives that, which is the whole page. I think it took some time to rectify that that was always what was meant &#8211; to look at the whole editing interface at once.</p>\n<p>&#8220;With some of these projects people are going to be in different places at different times and things will coalesce and make sense at different paces. I think we&#8217;ve gotten to a point now where we have built enough of the Gutenberg vision that we can see where it can lead us.&#8221;</p>\n<p>Several representatives from the Gutenberg team were available at WordCamp Europe for informal chats with the community. They also conducted workshops and gave presentations to prepare designers and developers for what&#8217;s coming in the next few months. Momentum for the new editor is building and Ventura shared what he hopes the world will see when version 1 is included in core.</p>\n<p>&#8220;The thing that has been the most fulfilling, at least to me, has been seeing the regular users when they can use Gutenberg and build things that would have been very hard for them to do before,&#8221; Ventura said. &#8220;When they share those impressions &#8211; that they can build something that they are proud of and express themselves &#8211; to me that is the most fulfilling because that&#8217;s really one of the major points behind this. At the same time, I&#8217;m really looking forward to seeing what the design and developer community can build with it and where their imaginations can take us from there. Core is going to supply the infrastructure and the main building blocks but it&#8217;s everything that can be built around it that&#8217;s going to be exciting, as always with WordPress.&#8221;</p>\n<p>Ventura also described some of the interesting possibilities of templates, nested blocks, and child blocks, and how they can be combined to create more sophisticated solutions. He recommends the <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.org/Gutenberg</a> page for resources on getting started with the new editor. Check out the video below for the full interview.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 22:59:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Three Minute Movie Showcases The WordCamp EU 2018 Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/three-minute-movie-showcases-the-wordcamp-eu-2018-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:741:\"<p>If you happened to <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">miss out on WordCamp EU</a> this year, check out the following short film produced by <a href=\"https://www.facebook.com/Production-Pool-402255476588176/\">Production Pool</a>. Production Pool is a video production company based in Belgrade, Serbia that was hired to record all of the videos and wrap up the live stream for WordCamp Europe.</p>\n\n<p>The video is just shy of three minutes in length, highlights the size and scope of the event, and is well produced. You can almost feel what it was like to be an attendee.</p>\n\n<p>How many people can you name in the video?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 21:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Mass Unsubscribe Mailchimp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://ma.tt/2018/06/mass-unsubscribe-mailchimp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1082:\"<p>I&#8217;m a huge fan of <a href=\"https://mailchimp.com/\">Mailchimp</a>, but <em>dang</em> does the service get abused by folks aggressively opting you into mailing lists. I have a very early, very generic Gmail address that people put as a filler address into every possible service and it gets tens of thousands of list and spam mails. A good trick to find and unsubscribe from all the Mailchimp lists you&#8217;re on is to search for <code>mcsv.net</code> and then select all, report as spam, and unsubscribe. Gmail doesn&#8217;t deal well when the unsubscribe list is taller than your screen, so you may need to hit <code>command + -</code> a few times to make it all fit. Also <a href=\"https://www.facebook.com/mailchimp/posts/10152104546810777\">according to this post</a>, &#8220;you can also get in touch with our compliance team directly at <a href=\"mailto:compliance@mailchimp.com\">compliance@mailchimp.com</a> with the email address you would like to remove from all lists and they will be happy to further assist you there as well.&#8221; I will try that as well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 15:19:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Atavist &amp; Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/06/atavist-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:884:\"<img />\n\n<p>As <a href=\"https://www.wsj.com/articles/wordpress-com-owner-buys-atavist-maker-of-subscription-offering-publishing-software-1529597700?mod=searchresults&page=1&pos=1\">reported by the Wall Street Journal</a>, and <a href=\"https://en.blog.wordpress.com/2018/06/21/atavist-joins-wordpress-dot-com/\">an interview about on the WP.com blog</a>, Automattic has acquired the <a href=\"https://atavist.com/\">Atavist platform</a>, <a href=\"https://magazine.atavist.com/\">magazine</a>, and team. Looking forward to working alongside the team: we&#8217;re keeping the magazine going and it&#8217;ll complement <a href=\"https://longreads.com/\">Longreads</a>, and integrating the best of the platform&#8217;s CMS and publisher features into WordPress.com and Jetpack and after that&#8217;s done providing an upgrade path so all of its publishers can move to being WordPress-powered.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 19:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"WPTavern: Matt Mullenweg Unveils Gutenberg Roadmap at WCEU, WordPress Agencies and Product Developers Sprint to Prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11163:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/matt-keynote-wceu-2018.jpg?ssl=1\"><img /></a>photo credit: WordCamp Europe Photography Team\n<p>At his WCEU keynote address in Belgrade, Matt Mullenweg laid out a detailed roadmap for Gutenberg to land in WordPress 5.0 within the next few months, garnering mixed reactions from attendees. Gutenberg&#8217;s timeline is one of the most pressing questions for those who work in the WordPress ecosystem.</p>\n<p>The Gutenberg team has sustained a rapid pace of development over the past year with 30 releases since development began. There are currently 14,000 sites actively using the plugin and Mullenweg plans to roll it out to WordPress.com users in the near future. He announced that the WordPress 5.0 release could be ready as soon as August. In the meantime, the Gutenberg team will continue to refine its current features according to the roadmap Mullenweg outlined in his keynote:</p>\n<p><strong>June 2018</strong></p>\n<ul>\n<li>Freeze new features into Gutenberg</li>\n<li>Hosts, agencies and teachers invited to opt-in sites they have influence over</li>\n<li>Opt-in for wp-admin users on WP.com</li>\n<li>Mobile App support in the Aztec editor across iOs and Android</li>\n</ul>\n<p><strong>July 2018</strong></p>\n<ul>\n<li>4.9.x release with a strong invitation to install either Gutenberg or Classic Editor plugin</li>\n<li>Opt-out for wp-admin users on WP.com</li>\n<li>Heavy triage and bug gardening, getting blockers to zero</li>\n<li>Explore expanding Gutenberg beyond the post into site customization</li>\n</ul>\n<p><strong>August 2018 and beyond</strong></p>\n<ul>\n<li>All critical issues resolved</li>\n<li>Integration with Calypso, offering opt-in users</li>\n<li>100k+ sites having makde 250k+ post using Gutenberg</li>\n<li>Core merge, beginning the 5.0 release cycle</li>\n<li>5.0 beta releases and translations completed</li>\n<li>Mobile version of Gutenberg by the end of the year</li>\n</ul>\n<p>Mullenweg said he hopes to increase Gutenberg usage to 100,000 sites with 250,000 posts made over the next few months. WordPress.com will be instrumental in that goal with a call to action for opt-in that will appear on several hundred thousand sites. In July, WordPress.com will switch the Gutenberg editor to opt-out. Mullenweg said he hopes to gather data from how users respond, especially those who have third-party plugins active on their sites.</p>\n<p>Switching between editing posts in the mobile apps currently breaks but Mullenweg anticipates this will be resolved by August, with full mobile versions of Gutenberg available by the end of the year.</p>\n<p>Mullenweg opened his keynote by drawing attendees&#8217; attention to a new &#8220;<a href=\"https://publiccode.eu/\" rel=\"noopener noreferrer\" target=\"_blank\">Public Code</a>&#8221; link in the footer of WordPress.org. This campaign, organized by <a href=\"https://fsfe.org/index.en.html\" rel=\"noopener noreferrer\" target=\"_blank\">Free Software Foundation Europe</a>, aims to require any publicly financed software developed for the public sector be made available under a Free and Open Source Software license.</p>\n<p>Mullenweg also announced St. Louis, MO, as the next location for WordCamp US in 2019-2020. The local WordPress community in the city spans two states with members from both Missouri and Illinois who have hosted seven WordCamps since 2011.</p>\n<h3>Developers and Agencies Double Down on Gutenberg Preparation, &#8220;Playing for Keeps&#8221;</h3>\n<p>The process of getting products and client websites ready for Gutenberg is a leap for nearly every company and freelancer invested in the WordPress ecosystem. Mullenweg said he cannot guarantee a specific date for release but thinks that &#8220;5.0 is going be ready within a relatively short time frame.&#8221;</p>\n<p>Although many WCEU attendees expressed skepticism about the accelerated timeline for Gutenberg&#8217;s inclusion in core, most recognize the importance of working towards making their clients and products compatible with the new editor.</p>\n<p>Gutenberg technical lead <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matias Ventura</a> said it&#8217;s too early to tell whether the WordPress community will be ready by the time Gutenberg is included in core. &#8220;I think people have already been trying to get ready and we&#8217;re already seeing many major sites being launched using Gutenberg,&#8221; Ventura said. &#8220;From what we&#8217;ve seen with plugin authors building compatibility for Gutenberg, it seems there&#8217;s already enough momentum going on that it could be achievable.&#8221;</p>\n<p>Brad Williams, CEO of WebDevStudios, said his company&#8217;s team of engineers has been <a href=\"https://webdevstudios.com/2018/03/20/webdevstudios-gutenberg-planning-wordpress/\">actively preparing for Gutenberg</a> since late last year and is &#8220;very excited about what it means for the future of WordPress publishing.&#8221; Williams assigned two Gutenberg Leads internally to head up everything related to the new editor and conducted internal training with staff. WebDevStudios also built and released its own Gutenberg add-on framework called <a href=\"https://github.com/WebDevStudios/WDS-Blocks/releases\">WDS Blocks</a>, a framework that includes new custom blocks that many WDS clients use.</p>\n<p>&#8220;Having a potential release date, even if it’s only a target month, is incredibly helpful,&#8221; Williams said. &#8220;This gives us a goal to work towards with each of our clients to verify we are ready for the release. I expect the majority of our clients will not enable Gutenberg on release, but we still need to make sure we have an upgrade plan ready for WordPress 5.0. We are working closely with each of our clients so they understand what is coming, the benefits Gutenberg can provide them, and what a potential roll-out plan will look like. We are also making sure any new leads coming in the door are aware of Gutenberg and the impact it will have on their new WordPress project.&#8221;</p>\n<p>Gary Jones, plugin developer and WordPress engineer at <a href=\"https://gamajo.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Gamajo</a>, expressed apprehension about the timeline. He also plans to make use of the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin to opt sites out of using Gutenberg.</p>\n<p>&#8220;With 737 open issues, I think the August timeline may still be a little short,&#8221; Jones said. &#8220;That&#8217;s only for the &#8216;critical issues&#8217; to be resolved but introducing such a massive change to the basics of managing content like this needs more than just the critical issues resolved; it needs all of the workflow to be very smooth as well.&#8221;</p>\n<p>Jones said he doesn&#8217;t think the typical rhetoric of getting a &#8216;1.0&#8217; release out the door applies in the case of Gutenberg. &#8220;There&#8217;s too much riding on it for it not to make a great first impression for the user base who haven&#8217;t been following its progress,&#8221; Jones said. &#8220;A plugin can have a much quicker release turnaround time for non-critical improvements and fixes than what WP core would have.&#8221;</p>\n<p>Jones said he plans to wait until the merge proposal before tackling plugin compatibility and will wait until 5.0 is out to start improving the experience for his clients. He said this may require creating custom blocks or installing plugins that add custom blocks clients might need. &#8220;By then we&#8217;d also know how ACF, Pods. and other plugins we use, and the Genesis theme, are supporting Gutenberg editor (or not),&#8221; Jones said.</p>\n<p>Jake Goldman, President and founder of <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a>, said his company already has an internal mandate that all new public plugins and major plugin updates must have at least &#8220;beta&#8221; support for Gutenberg. 10up&#8217;s <a href=\"https://distributorplugin.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Distributor</a> product is already Gutenberg-ready and the company has several Gutenberg-ready plugins and updates expected to ship in the next 1-2 months.</p>\n<p>&#8220;Clients are trickier,&#8221; Goldman said. &#8220;We have two big client projects started in the last couple of months that are using Gutenberg, and some pretty complicated custom blocks and extensions. We have a couple of other customers who are curious or in the exploratory phase. Two big client projects have us a bit gun shy about adopting [Gutenberg] as the &#8216;standard&#8217; on newer projects until it matures a bit more and begins to focus a bit more on the &#8216;enterprise use case / user stories&#8217; &#8211; there are some real challenges with those user stories.&#8221;</p>\n<p>Goldman also said he was encouraged to hear that Calypso will adopt Gutenberg in the next couple of months, because he hopes it will address some of the confusion and fragmentation issues.</p>\n<p>He doesn&#8217;t anticipate Gutenberg actually landing in August, however. &#8220;I don’t see August, frankly, because I don’t think the core team has a clear vision for &#8216;how&#8217; an upgrade with Gutenberg will work,&#8221; Goldman said. &#8220;That said, I suspect Matt is knowingly putting timeline pressure on the team &#8211; a bit of &#8216;if I say August, we can probably hit November&#8217; type mentality.&#8221;</p>\n<p>Mason James, founder of <a href=\"https://www.valet.io/\">Valet</a>, said he is confident his clients and products will be ready after testing Gutenberg on hundreds of sites. His team is watching a few products that have compatibility issues but he is hopeful these will be resolved soon.</p>\n<p>&#8220;The timeline of August seems a bit optimistic,&#8221; James said. &#8220;I’d be surprised if that is met, but our clients will be in good shape if that happens. We’ve also been sending information to our clients via email, a whitepaper, to try to mitigate any surprises ahead of time.</p>\n<p>&#8220;We decided last year that Gutenberg was a tremendous opportunity for us to reinforce our value proposition to our clients,&#8221; James said. &#8220;It’s an ongoing important initiative for us this year; We&#8217;re playing for keeps.&#8221;</p>\n<p><a href=\"https://thefearlessfreelancer.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Carrie Dils</a>, a WordPress developer, consultant, and educator, has also jumped head first into getting her products compatible with Gutenberg ahead of the new timeline.</p>\n<p>&#8220;I’m feverishly working to get an updated version of the <a href=\"https://store.carriedils.com/downloads/utility-pro/\" rel=\"noopener noreferrer\" target=\"_blank\">Utility Pro theme</a> (my primary product) out the door,&#8221; Dils said. &#8220;The Gutenberg updates are just one part of a larger overhaul (including a minimum requirement of PHP7 and WP 5.0+). I’ve also made the decision not to incorporate Classic Editor theme styles. All looking forward, no looking back.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 16:37:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: WordPress in Uber\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48160\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/06/wordpress-in-uber/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:923:\"<p>I really love this thread and the replies sharing stories about Val Vesa&#8217;s experience talking about WordPress in an Uber / Lyft ride:</p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">My <a href=\"https://twitter.com/Uber?ref_src=twsrc%5Etfw\">@Uber</a> driver last night, going home from airport asked me where was I coming from.<br />Told here about <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a><br />&#8211; what is that, she asked.<br />&#8211; the European Conference for <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a>, I said.<br />Her eyes sparkling, she grabbed the wheel firm, looked in the rear view mirror at me and said,</p>&mdash; Val Vesa | Social Media &amp; Travel Photography (@adspedia) <a href=\"https://twitter.com/adspedia/status/1008782561638801413?ref_src=twsrc%5Etfw\">June 18, 2018</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 05:20:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 321 – Recap of WordCamp EU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81758&preview=true&preview_id=81758\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-321-recap-of-wordcamp-eu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1901:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://lanche86.com/\">Milan Ivanović</a> who helped organize WordCamp EU in Belgrade, Serbia this past weekend. Ivanović describes what it was like to organize such a large event, challenges the team overcame, and a few details related to WordCamp EU 2019 that will be held in Berlin, Germany. John and I finished the show discussing Matt Mullenweg&#8217;s keynote presentation and Gutenberg&#8217;s proposed timeline.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\">Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU</a><br />\n<a href=\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\">WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage</a><br />\n<a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">Mullenweg announced Gutenberg Roadmap</a><br />\n<a href=\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\">WP Rig – A WordPress Starter Theme and Build Process in One</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 27th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #321:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 01:31:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: Proving Geography Doesn’t Matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/proving-geography-doesnt-matter/#utm_source=rss&utm_medium=rss&utm_campaign=proving-geography-doesnt-matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3698:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/08/082416-Uriahs-Victor-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Time passed, and I fell more and more in love with WordPress.\" /><p><img class=\"alignright size-full wp-image-2574\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/06/Screen-Shot-2018-06-20-at-10.16.54-AM.png\" alt=\"Map of Kansas with St. Lucia overlaid.\" width=\"403\" height=\"273\" />Almost exactly two years ago I was looking at Google Analytics Realtime and someone from St. Lucia popped up.  St. Lucia isn&#8217;t a very big place. In the map on the right you can see a little pink dot in the center.  That&#8217;s the size of St. Lucia compared to Kansas. The entire country has fewer people than my city. I wondered who that was, so I tweeted out to the world, asking if anyone knew who that might be. A friend from Themeisle said &#8220;Our man Uriahs lives there, maybe it&#8217;s him!&#8221;</p>\n<p>I looked up Uriahs, and sure enough, it was him! I was fascinated to learn what a WordPress community would look like on an island that size. As it turns out, he&#8217;s fairly alone in WordPress geographically. When I met him, he had never been off his tiny island in the Caribbean.</p>\n<p>Uriahs&#8217; essay is about learning and finding a career in a global workspace, having a GOOD job, all while living someplace where that job didn&#8217;t even exist.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/minority-amongst-minorities/\">A Minority Amongst Minorities</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Proving%20Geography%20Doesn%27t%20Matter&via=heropress&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F&title=Proving+Geography+Doesn%26%238217%3Bt+Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Proving Geography Doesn&#8217;t Matter\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/proving-geography-doesnt-matter/&media=https://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-150x150.jpg&description=Proving Geography Doesn\'t Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Proving Geography Doesn&#8217;t Matter\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/proving-geography-doesnt-matter/\" title=\"Proving Geography Doesn&#8217;t Matter\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/proving-geography-doesnt-matter/\">Proving Geography Doesn&#8217;t Matter</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jun 2018 14:06:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Matt: Link Roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://ma.tt/2018/06/link-roundup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3688:\"<ul>\n	<li><a href=\"https://www.theatlantic.com/family/archive/2018/06/imagining-a-better-boyhood/562232/\">The Atlantic on today&#8217;s masculinity being stifling and imagining a better boyhood</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\">When Deportation is a Death Sentence</a> is one of the most devastating articles I&#8217;ve read in a long time. <br /><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\">A review of the Cy Twombly show</a>, he has an amazing museum in Houston and I enjoy learning more about him.<br /><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\"></a></li>\n	<li><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\">The Great Anthropologists: Margaret Mead</a>, so fascinating.<br /><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\"></a></li>\n	<li><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\">Dating columnist reveals how ‘Sex and the City’ ruined her life</a>, has a happy ending.<br /><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\"></a></li>\n	<li><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\">Barbearians at the Gate</a> &#8220;A journey through a quixotic New Hampshire town teeming with libertarians, fake news, guns, and—possibly—furry invaders.&#8221; Amazing.<br /><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\"></a></li>\n	<li><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\">Lena Dunham Explores Alone Time After a Break-Up</a><br /><br /><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\">My Adventures with the Trip Doctors</a>, aka &#8220;Michael Pollan takes psychedelics.&#8221; See also: <a href=\"https://longreads.com/2018/05/30/michael-pollan-on-why-its-a-good-idea-to-lose-your-self/\">Interview with Longreads</a>.<br />.<br /><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\"></a></li>\n	<li><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\">Kanye West and Why the Myth of “Genius” Must Die</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\">Why Facts Don&#8217;t Change Our Minds</a>, also well-covered in a great book I just finished, <a href=\"https://www.amazon.com/dp/B00SI0B8XC/\">Black Box Thinking</a>.<br />.<br /><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\"></a></li>\n	<li><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\">Admiral Shovel and the Toilet Roll</a> — wow.<br /><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\"></a></li>\n	<li><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\">The Work Required to Have an Opinion</a>, wisdom from Charlie Munger.</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 22:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.8 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/19/version-4-0-8-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:784:\"<p>Version 4.0.8 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.8 contains the following changes:</p>\n<ul>\n<li>Improved the grammar and consistency of the in-admin privacy related notes (notice and config).</li>\n<li>Revised in-admin explanation of the comment form privacy notice to make its usage clearer.</li>\n<li>Added <code>rel=”nofollow noopener”</code> to the comment form privacy notice to improve SEO and security.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 18:35:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Mark Jaquith: Making ScoutDocs: Build Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5665\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://markjaquith.wordpress.com/2018/06/19/making-scoutdocs-build-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2928:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>Build Tools</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>Coding in React involves JSX, a bizarre-but-wonderful XML syntax that you dump directly into the middle of your JavaScript code. It feels exquisitely wrong. Browsers agree, so your JSX-containing JS code will have to be transpiled to regular JavaScript. This can involve using a complex maze of tools. Babel, NPM, Webpack, Browserify, Gulp, Grunt, Uglify, Uglifyify (yes, you read that right), and more. You have decisions to make, and you will find fierce advocates for various solutions.</p>\n<p>For ScoutDocs, I decided to go with <a href=\"https://gruntjs.com/\">Grunt</a> for task running, because I was already comfortable with it, and I needed it for <a href=\"https://www.npmjs.com/package/grunt-wp-deployhttps://www.npmjs.com/package/grunt-wp-deploy\">grunt-wp-deploy</a>. <b>Use a task runner you are already comfortable with.</b> Even if it is just NPM scripts. You’re learning a lot of new things already. It’s okay to keep your task runner setup.</p>\n<p>Next, I had to choose a JS bundler which would let me write and use modular code that gets pulled together into a browser-executable bundle. After deliberating between <a href=\"https://webpack.js.org\">Webpack</a> and <a href=\"http://browserify.org/\">Browserify</a>, I chose Browserify. <b>Webpack is really complicated.</b> It is also very powerful. I recommend you avoid it until you need it. I haven’t needed it yet, and found Browserify to be easier to configure and use, even though it’s a bit on the slow side.</p>\n<p>As I was building ScoutDocs and tweaking my dev tools, tweaking my Grunt file, and writing code to search/replace strings etc, I began to feel like the time I was spending too much time on tooling. Was I becoming one of those people who spend all their time listening to productivity podcasts instead of… being productive? I can see how someone could get sucked into that trap, but putting a reasonable amount of time into configuring your development tools can pay dividends for you beyond simply the time saved. It can also prevent mistakes, keep you in coding mode more often, and increasing your confidence in your code builds. <b>Spend the time up front to make your tools work for you.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 17:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WP Rig – A WordPress Starter Theme and Build Process in One\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81618\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3750:\"<p><a href=\"http://mor10.com/\">Morten Rand-Hendricksen</a>, Senior Staff Instructor at <a href=\"https://www.linkedin.com/learning/\">LinkedIn Learning</a>, has released <a href=\"https://wprig.io/\">WP Rig</a>. WP Rig is a WordPress starter theme and build process combined into one. The starter theme provides a minimal set of templates with the ability to drag-and-drop files from the <a href=\"https://developer.wordpress.org/themes/basics/template-hierarchy/\">WordPress template hierarchy</a>.</p>\n\n<p>It contains a heavily optimized code and file structure, support for lazy-loading images, and documented helper functions. The build process requires no configuration and provides a modern foundation to develop on top of. </p>\n\n<p>Although WP Rig ships with a starter theme, the build process works with any theme you choose to use. WP Rig uses <a href=\"https://gulpjs.com/\">Gulp</a> to manage and optimize files, <a href=\"https://browsersync.io/\">BrowserSync</a> to immediately preview from inside the browser, and ES2015 to parse JavaScript. <a href=\"https://babeljs.io/\">Babel</a>, <a href=\"https://github.com/postcss/postcss\">PostCSS</a>, and <a href=\"http://cssnext.io/\">CSSNext</a> is used to parse CSS. The <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">WordPress Coding Standards</a> and <a href=\"https://eslint.org/\">ESLint</a> are used to check code quality. </p>\n\n<p><a href=\"https://code.visualstudio.com/\">VS Code</a> is tightly integrated with WP Rig but developers can use any code editor they choose. </p>\n\n<p>Rand-Hendriksen says the goal of the project is to provide a starting point where developers can write accessible and performant code from the start using best practices. <br /></p>\n\n<p>&#8220;WordPress and the web it lives on has evolved,&#8221; he said. &#8220;So have the tools we use to build experiences and interactions on and with the web. WordPress theme development is no longer &#8216;just&#8217; about writing PHP and CSS and JavaScript. </p>\n\n<p>&#8220;It’s also about accessibility and build processes and coding standards and performance best practices and and modern coding languages and browser support and a myriad of other topics.</p>\n\n<p>&#8220;WP Rig bridges this gap by building accessibility, performance, coding standards, and modern coding best practices in by default.&#8221;</p>\n\n<p>LinkedIn Learning donated Rand-Hendriksen&#8217;s time to WP Rig. In collaboration with <a href=\"https://xwp.co/\">XWP</a>, <a href=\"https://medinathoughts.com/2018/05/17/progressive-wordpress/\">Google</a>, and other members of the WordPress community, it was released as an open source project that is maintained by him and <a href=\"https://github.com/bamadesigner\">Rachel Cherry</a>. <br /></p>\n\n<p>&#8220;It is not owned or branded by any company, nor beholden to a company goal or ideology,&#8221; he said. &#8220;The purpose and goal of WP Rig is to provide the WordPress community with a theme development rig that puts accessibility, performance, and modern best practices in the front seat to the benefit of the end-user and the web as a whole.&#8221;</p>\n\n<p>You can download WP Rig for free <a href=\"https://wprig.io\">from the project&#8217;s site</a> or <a href=\"https://github.com/wprig/wprig/\">on GitHub</a>. To learn how to use it, LinkedIn Learning is offering a free course entitled &#8220;<a href=\"https://wprig.io/learn/\">Build WordPress Themes with WP Rig</a>.&#8221; The course covers a myriad of topics including, configuring the VS Code workpace settings, Templates, and AMP integration. </p>\n\n<p>For more information about WP Rig check out the <a href=\"https://wprig.io/introducing-wprig-wordpress/\">project&#8217;s official announcement</a>. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 01:19:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7440:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/wceu-2018-contributor-day.jpg?ssl=1\"><img /></a></p>\n<p>WordCamp Europe hosted a successful contributor day in Belgrade despite a wi-fi outage during the first half of the day. The event posted record numbers with 529 attendees registered to contribute across 24 teams.</p>\n<p>Contributors had the opportunity to make connections and conversations with team members and representatives from other teams while the wi-fi was down.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had the chance to meet <a href=\"https://twitter.com/aaroncampbell?ref_src=twsrc%5Etfw\">@aaroncampbell</a> and discuss WordPress core security with him and a couple of attendees on <a href=\"https://twitter.com/hashtag/wceu?src=hash&ref_src=twsrc%5Etfw\">#wceu</a> contributor day. Thanks for the amazing chat folks!</p>\n<p>It is my first WordCamp Europe and it definitely won\'t be the last!</p>\n<p>&mdash; Bojidar Valchovski (@bdvalchovski) <a href=\"https://twitter.com/bdvalchovski/status/1007306648862494720?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had an awesome <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day today. Had some great conversations and made good progress on a few patches to improve the development experience despite the WiFi issues. Was also very proud to see SIX <a href=\"https://twitter.com/yoast?ref_src=twsrc%5Etfw\">@Yoast</a>\'ers lead different contributor teams! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/family?src=hash&ref_src=twsrc%5Etfw\">#family</a></p>\n<p>&mdash; Omar Reiss (@OmarReiss) <a href=\"https://twitter.com/OmarReiss/status/1007291207171616768?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Contributors submitted patches and made more progress online later in the day when the wi-fi resumed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">So proud of the WordPress Coding Standards team at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day. Look at all the patches which are flooding in!!!!<a href=\"https://twitter.com/FlipKeijzer?ref_src=twsrc%5Etfw\">@flipkeijzer</a> <a href=\"https://twitter.com/GaryJ?ref_src=twsrc%5Etfw\">@GaryJ</a> <a href=\"https://twitter.com/fimdalinha?ref_src=twsrc%5Etfw\">@fimdalinha</a> <a href=\"https://twitter.com/Wonderm00n?ref_src=twsrc%5Etfw\">@Wonderm00n</a> <a href=\"https://twitter.com/Niq1982?ref_src=twsrc%5Etfw\">@niq1982</a> <a href=\"https://twitter.com/moorscode?ref_src=twsrc%5Etfw\">@moorscode</a> <a href=\"https://twitter.com/vladilie94?ref_src=twsrc%5Etfw\">@vladilie94</a> <a href=\"https://twitter.com/MCiufudean?ref_src=twsrc%5Etfw\">@MCiufudean</a> <a href=\"https://t.co/lchrR4ZmHX\">pic.twitter.com/lchrR4ZmHX</a></p>\n<p>&mdash; Juliette (@jrf_nl) <a href=\"https://twitter.com/jrf_nl/status/1007263406838173697?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Look at all these lovely people contributing to <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> Contributor Day <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /></p>\n<p>Thank you, you rock! <a href=\"https://t.co/LtRlyolYPL\">pic.twitter.com/LtRlyolYPL</a></p>\n<p>&mdash; Milana Cap (@DjevaLoperka) <a href=\"https://twitter.com/DjevaLoperka/status/1007164509197357056?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Attendees worked on a variety of different projects from improving the project&#8217;s coding standards to documenting best practices for hosts working with WordPress.</p>\n<p><a href=\"https://twitter.com/EvangeliaPappas\" rel=\"noopener noreferrer\" target=\"_blank\">Evangelia Pappa</a> traveled from Greece to attend her first WordCamp Europe, joining the community team to get answers about helping her local deaf community.</p>\n<p>&#8220;In my country you have a lot of deaf people who want to attend WordCamp and also the meetups that we do for the Greek WP community,&#8221; Pappa said. &#8220;We have found a way to assist them while they are at WordCamps with sign language, but are still struggling with meetups, so I am trying to find answers here in order to help other members of the community.&#8221;</p>\n<p><a href=\"http://twitter.com/rociovaldi\" rel=\"noopener noreferrer\" target=\"_blank\">Rocío Valdivia</a> traveled from Spain to attend her 6th WordCamp Europe and also joined the Community Team for contributor day, creating documentation and mentoring WordCamp organizers.</p>\n<p>&#8220;I&#8217;ve been having a meeting with the WordCamp Nordic organizing team,&#8221; Valdivia said. &#8220;We are talking about the next WordCamp Nordic, a large regional WordCamp, that will be held next year in Helsinki in March.&#8221;</p>\n<p>The Hosting team was also able to work, despite the wi-fi outage, bringing together representatives from different countries and hosting companies.</p>\n<p>&#8220;We&#8217;ve been going through and writing some best practices and documentation,&#8221; <a href=\"http://twitter.com/GetSource\" rel=\"noopener noreferrer\" target=\"_blank\">Michael Schroder</a> said. &#8220;We&#8217;ve been making some good progress on the performance area of the docs, so I feel pretty good about getting some of that committed today.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">The Contribution Area is being put to good use at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> . First time we’re using a dedicated room to allow for a continuance of Contributor Day. <a href=\"https://t.co/lTgR8OdLBf\">pic.twitter.com/lTgR8OdLBf</a></p>\n<p>&mdash; Remkus de Vries (@DeFries) <a href=\"https://twitter.com/DeFries/status/1007628138522861568?ref_src=twsrc%5Etfw\">June 15, 2018</a></p></blockquote>\n<p></p>\n<p>For the first time, WordCamp Europe also set aside a spacious, designated room for attendees who wanted to continue collaborating on contributions during the main conference.</p>\n<p>Wifi outages are a common occurrence at WordCamp Contributor days. While many attendees I spoke with said they were frustrated and inconvenienced by the inability to be productive, others expressed happy sentiments about the opportunity to be together in one place.</p>\n<p>&#8220;The most important thing about contributor day is talking to people, getting to know each other, face timing in real life,&#8221; Polyglots team lead <a href=\"http://twitter.com/petyeah\" rel=\"noopener noreferrer\" target=\"_blank\">Petya Raykovska</a> said. &#8220;These are always very useful connections to have, learning everybody&#8217;s name, asking questions about their experience contributing, and them asking you questions about general experience with the team. It&#8217;s actually been great. I feel like it&#8217;s given people a chance to talk to each other. No time is lost in contributor day, really.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Jun 2018 11:23:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Post Status: Productizing your service business, with Brian Casel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46103\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/productizing-your-service-business-with-brian-casel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2663:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/casjam\">Brian Casel</a>. Brian runs <a href=\"https://audienceops.com/\">Audience Ops</a>, a productized service that offers all aspects of content creation for companies. Brian has been in the WordPress community for a long time, and for years has worked on creating processes around his business to enable him to get beyond a freelancer work life and into treating services like products.</p>\n<p>Before Audience Ops, he ran Restuarant Engine &#8212; a niche WordPress site provider, where he really honed many of the processes his company still uses today &#8212; which he sold for six figures.</p>\n<p>We dig in to why he decided to make a transformation with his businesses to be so process oriented, and how he turned that into the 30-person organization it is today, as well as the various courses and communities around Productize and Scale.</p>\n<p>By the way, if you like this interview, Brian has an active job posting on Post Status for a <a href=\"https://poststatus.com/job/audience-ops-united-states-1899-writer-for-blog-content-covering-wordpress-web-dev-business-topics/\">blog content writer for Audience Ops</a>.</p>\n<p>&nbsp;</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://audienceops.com/\">Audience Ops</a></li>\n<li><a href=\"https://productizeandscale.com/\">Productize and Scale</a> newsletter</li>\n<li><a href=\"http://productizepodcast.com/\">Productize Podcast</a></li>\n<li><a href=\"https://productizecourse.com/\">Productize Course</a></li>\n<li><a href=\"https://restaurantengine.com/\">Restaurant Engine</a></li>\n<li><a href=\"http://opscalendar.com/\">Ops Calendar</a></li>\n<li><a href=\"http://www.tropicalmba.com/dc/\">Tropical MBA DC</a></li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p>Yoast SEO Premium gives you 24/7 support from a great support team and extra features such as a redirect manager, recommended internal links, tutorial videos and integration with Google Webmaster Tools! Check out <a href=\"https://yoast.com/\">Yoast SEO Premium</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 18:11:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81546\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5847:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/gutenberg-workshop.jpg?ssl=1\"><img /></a></p>\n<p>The Gutenberg team took questions from a full room users and developers this morning before diving into the specifics of the editor&#8217;s design, block creation, and how to further extend the new interface. The first question they addressed is the one everyone is asking: When will Gutenberg land in core?</p>\n<p>The team said the editor is pretty close to feature complete and should achieve that in the next few months when version 3.3 is released. At that point the focus will be on refining the current experience. They estimate this to happen in June or the first week of July but also hinted at more information coming in Matt Mullenweg&#8217;s keynote address this afternoon.</p>\n<p>Developers also asked about the criteria that will be used to decide that Gutenberg is ready for a WordPress release. The project has a <a href=\"https://github.com/WordPress/gutenberg/issues/4894\" rel=\"noopener noreferrer\" target=\"_blank\">scope and features MVP issue on GitHub</a> that provides an overview for the major functionality that will be introduced in the first version of the new editor. It shows which features have already been shipped and which ones are remaining.</p>\n<p>The team explained that many of the final features have come from developer and user feedback. Some features were not necessarily planned for V1, but it became more apparent that these were needed because they improved either the developer or user experience. For example, within the past four or five months the team found that the child blocks would be necessary to allow developers to be more expressive in extending the editor. A few of the remaining issues include inline images and post locking for concurrent users, but the team doesn&#8217;t anticipate any major new features on the horizon before V1 is released.</p>\n<p>Gutenberg engineers also assured workshop attendees that the project is being built with backwards compatibility in mind. One person asked what will happen when the 5.0 release lands. The team explained that the Gutenberg update will not change all the content on WordPress sites. When users open a post in the editor they will have the option to convert that content to block format so it will work with the new editor. If it doesn&#8217;t quite work, users be able to fall back to the classic editor.</p>\n<p>The team said they took great lengths not to alter how WordPress deals with data. Gutenberg does not change the content structure. One of the cornerstones for the project is providing an update that will not fragment the content structure. There will be a lot of resources available ahead of the release for helping everyone move forward together.</p>\n<p>Gutenberg engineers said they are working to be conscious not to delay the project, because the longer the delay, the more potential users WordPress is losing because the software is not easy enough for them to build and customize content and websites.</p>\n<h3>How Will Theme Building Change with Gutenberg?</h3>\n<p>Gutenberg designers and engineers also tackled questions about how the new editor will change the theme building experience. Design lead Tammie Lister emphasized the importance of theme developers first getting better at creating themes that do not try to do everything. The basic purpose of a theme is to style the frontend and provide an editor style. One potential way forward for theme developers is to provide additional features by releasing a suite of blocks via a plugin. Lister said she hopes that themes will become a lot lighter in the Gutenberg era and encouraged developers to utilize style guides.</p>\n<p>The team also said that existing themes will continue to function and redesigning a theming API, without the hassle of editing a bunch of PHP files, may be possible in the future. However, it&#8217;s too early to know what that will look like. For now, the rendering engine is not changing. Theme developers interested in Gutenberg compatibility should start looking towards deconstructing their themes into individual elements and learn how to express a theme as a list of blocks.</p>\n<h3>How Will Gutenberg Handle Customization?</h3>\n<p>Attendees asked several questions regarding the specific plan to implement customization, or live previewing, after Gutenberg is in core. The current phase 1 handles content editing and puts the infrastructure in place to support customization. There are some issues on GitHub for transforming widgets into blocks, which will be a step towards the site building experience. The team has already implemented direct manipulation on the WYSIWYG road but phase 2 will cover more aspects of customization.</p>\n<p>Gutenberg is not ready to replace the Customizer anytime soon, but the next phase will explore what a block-based experience of customization will look like. When asked if Gutenberg will &#8220;kill off some of the page builders,&#8221; the team said the goal is for page building type applications to be able to use Gutenberg as a springboard for different implementations that extend the editor in ways that benefit different types of users.</p>\n<p>An attendee asked how the team plans to enhance adoption once Gutenberg lands in core. The team said they are working on an experimental feature called &#8216;tips&#8217; that offers a story walkthrough of the publishing workflow. It includes helpful nudges to assist users in getting better at navigating the interface. The wider ecosystem has already responded with courses and tutorials to help developers get on board. The WordPress training team is also working on some training materials to use at WordCamps with tutorials for developers to learn how to convert existing plugins and themes to be Gutenberg-ready.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 11:18:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WPWeekly Episode 320 – Building a Sustainable Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81508&preview=true&preview_id=81508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wpweekly-episode-320-building-a-sustainable-web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1741:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by Jack Lenox, Software Engineer at Automattic, to discuss his new project, <a href=\"https://sustywp.com/\">SustyWP</a>. Lenox explains how he built the site so that it only has 7KB of data transfer, what sustainability on the web means to him, and the relationship between sustainability and optimization to create a better user experience. We end the show discussing the latest WordPress headlines and share information on how you can watch WordCamp EU for free.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://www.wordfence.com/blog/2018/06/babayaga-wordpress-malware/\">BabaYaga: The WordPress Malware That Eats Other Malware</a><br />\n<a href=\"https://blog.threatpress.com/vulnerable-wordpress-plugins-multidots/\">Ten WordPress Plugins By Multidots For WooCommerce Identified As Vulnerable And Dangerous</a><br />\n<a href=\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\">Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #320:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 02:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Watch WordCamp EU for Free via Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81466\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/watch-wordcamp-eu-for-free-via-livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:889:\"<p><a href=\"https://2018.europe.wordcamp.org/\">WordCamp EU 2018</a> is scheduled to take place this weekend in Belgrade, Serbia. Although the event is sold out, you can watch the event for free via livestream. Simply visit the WCEU <a href=\"https://2018.europe.wordcamp.org/tickets/\">tickets page</a> and register a livestream ticket.</p>\n\n<p>Sessions begin on Friday, June 15th. To see a list of sessions and speakers, check out the <a href=\"https://2018.europe.wordcamp.org/schedule/\">event&#8217;s schedule</a>. Note that there is a six hour time difference between Eastern Daylight Time and Belgrade, Serbia. </p>\n\n<p>As we near the halfway point of 2018 and no imminent release of WordPress 5.0 on the horizon, it will be interesting to see what information is shared during <a href=\"https://2018.europe.wordcamp.org/session/matt-on-wordpress/\">Matt Mullenweg&#8217;s keynote.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 00:35:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"HeroPress: By Helping Others, I Save Myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2568\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/by-helping-others-i-save-myself/#utm_source=rss&utm_medium=rss&utm_campaign=by-helping-others-i-save-myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3397:\"<img width=\"960\" height=\"547\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/osmi-1024x583.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner for OSMI, Open Sourcing Mental Illness\" /><p>I think I met Ed Finkler at WordCamp Milwaukee in 2016. It was at the speaker dinner, and he sat across from me for a while. He seemed like a pretty normal WordPress developer and several weeks later I asked him to do a HeroPress essay. His answer surprised me. &#8220;Well sure, that sounds pretty cool, aside from the fact that I don&#8217;t really do WordPress anymore&#8221;.</p>\n<p>As it turns out, he had mostly retired from active WordPress development. His every day world was now filled with working in different frameworks and languages, amongst people who help WordPress in disdain. But Ed&#8217;s view fascinated me. For all that he was working with more modern frameworks, WordPress is what made him a great developer. The empathy and compassion for the user that WordPress holds so dearly carried over into the rest of his life.</p>\n<p>So what was he doing at WordCamp? Spreading the word about his cool new organization, which I will leave for you to read about.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-taught-better-developer/\">How WordPress Taught Me To Be a Better Developer</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: By Helping Others, I Save Myself\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=By%20Helping%20Others%2C%20I%20Save%20Myself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: By Helping Others, I Save Myself\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F&title=By+Helping+Others%2C+I+Save+Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Share: By Helping Others, I Save Myself\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/by-helping-others-i-save-myself/&media=https://heropress.com/wp-content/uploads/2016/05/osmi-150x150.png&description=By Helping Others, I Save Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: By Helping Others, I Save Myself\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/by-helping-others-i-save-myself/\" title=\"By Helping Others, I Save Myself\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/by-helping-others-i-save-myself/\">By Helping Others, I Save Myself</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 13:14:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81315\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3482:\"<p><a href=\"https://2018.oc.wordcamp.org/\">WordCamp Orange County</a>, CA, took place this past weekend and the winners of the <a href=\"https://wptavern.com/wordcamp-orange-county-plugin-a-palooza-first-place-prize-is-3000\">Plugin-a-Palooza</a> have been crowned. <a href=\"https://profiles.wordpress.org/croixhaug\">Nathan Tyler</a> and <a href=\"https://profiles.wordpress.org/nataliemac\">Natalie MacLees</a> took the first place prize of $3,000 with their submission, <a href=\"https://wordpress.org/plugins/plugin-detective/\">Plugin Detective</a>.</p>\n\n<img />\n	Creating a new case in Plugin Detective\n\n\n<p>When it comes to troubleshooting WordPress, disabling and re-enabling plugins is one of the first steps in the process. This is time consuming and involves browsing to the plugin management page multiple times to turn a plugin on or off.</p>\n\n<p>Plugin Detective simplifies the process by quickly identifying the culprit. Once installed, a Troubleshooting quick link is added to the WordPress Toolbar. From here, users can open or continue a case. When a case is opened, a bot named Detective Otto asks users to navigate to the page where the problem is occurring.</p>\n\n<p>After the location is identified, users inform Detective Otto which plugins are required for the site to function properly. Interrogations is the act of of disabling and enabling plugins. Multiple interrogation attempts are made until the culprit is identified through the process of elimination. The following video does a great job of explaining and showing how it works. <br /></p>\n\n\n	<div class=\"embed-vimeo\"></div>\n\n\n<p>It can also be used to <a href=\"https://wordpress.org/plugins/plugin-detective/#i%20just%20see%20errors%20or%20a%20white%20screen.%20can%20i%20still%20use%20plugin%20detective%20to%20troubleshoot%20what%E2%80%99s%20gone%20wrong%3F\">identify and fix</a> White Screen of Death errors caused by plugins.<br /></p>\n\n<p>Plugin Detective is partly inspired by a software program from the 90s called <a href=\"https://en.wikipedia.org/wiki/Conflict_Catcher\">Conflict Catcher</a>.</p>\n\n<p>&#8220;I used &#8216;Conflict Catcher&#8217; to troubleshoot conflicts between system extensions on my Mac,&#8221; Tyler said. &#8220;I thought the concept was cool and would often run it for fun to try to figure out how it worked. Eventually, I learned that the computer science concept is a &#8216;binary search.&#8217;</p>\n\n<p>&#8220;Applying the concept to WordPress plugins seemed like a good approach to the plugin conflict problem we all experience.&#8221;</p>\n\n<p>Tyler developed the functionality and MacLees is credited with the plugin&#8217;s design, user experience, JavaScript, API calls, etc. The duo plan to establish relationships with plugin authors to help get them better bug reports. <br />><br /><br /><br /><br /><br />&#8220;Basically, if an author opts-in, we can help the end-user file a support ticket right there in Plugin Detective after we&#8217;ve identified the problem,&#8221; he said. &#8220;The support team gets a helpful bug report with notes from the customer, along with system information, other installed plugins, active theme, etc.&#8221;</p>\n\n<p>If you troubleshoot sites often or want an easier way to figure out which plugin is causing a conflict, consider adding Plugin Detective to your toolkit. Plugin Detective is free and <a href=\"https://wordpress.org/plugins/plugin-detective/\">available for download</a> from the WordPress plugin directory. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Jun 2018 02:12:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Other Cultures\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48139\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2018/06/other-cultures/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:311:\"<blockquote class=\"wp-block-quote\">\n	<p>As the traveller who has once been from home is wiser than he who has never left his own doorstep, so a knowledge of one other culture should sharpen our ability to scrutinize more steadily, to appreciate more lovingly, our own.</p><cite>Margaret Mead</cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 23:35:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 14 Jul 2018 15:44:18 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sat, 14 Jul 2018 15:30:26 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911070210\";}', 'no');
INSERT INTO `mb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3092, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1531626260', 'no'),
(3093, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1531583060', 'no'),
(3094, '_transient_timeout_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '1531626260', 'no'),
(3095, '_transient_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://br.wordpress.org/2018/07/05/wordpress-4-9-7-atualizacao-de-seguranca-e-manutencao/\'>WordPress 4.9.7 – Atualização de segurança e manutenção</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-europe-2018-draws-2085-attendees-organizers-look-ahead-to-2019-in-berlin\'>WPTavern: WordCamp Europe 2018 Draws 2,085 Attendees, Organizers Look Ahead to 2019 in Berlin</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/array-launches-free-gutenberg-ready-atomic-blocks-theme-on-wordpress-org\'>WPTavern: Array Launches Free Gutenberg-Ready Atomic Blocks Theme on WordPress.org</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-323-recap-of-wordcamp-grand-rapids-and-a-gutenberg-road-map\'>WPTavern: WPWeekly Episode 323 – Recap of WordCamp Grand Rapids and A Gutenberg Road Map</a></li></ul></div>', 'no'),
(3096, '_transient_timeout_wc_related_296', '1531669737', 'no'),
(3097, '_transient_wc_related_296', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=296\";a:3:{i:0;s:3:\"290\";i:1;s:3:\"292\";i:2;s:3:\"294\";}}', 'no'),
(3100, '_transient_timeout_wc_product_loop9e161525229104', '1534175342', 'no'),
(3101, '_transient_wc_product_loop9e161525229104', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:337;i:1;i:317;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(3102, '_transient_timeout_wc_related_329', '1531669767', 'no'),
(3103, '_transient_wc_related_329', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=329\";a:6:{i:0;s:3:\"321\";i:1;s:3:\"323\";i:2;s:3:\"325\";i:3;s:3:\"327\";i:4;s:3:\"331\";i:5;s:3:\"337\";}}', 'no'),
(3104, '_transient_timeout_plugin_slugs', '1531670335', 'no'),
(3105, '_transient_plugin_slugs', 'a:22:{i:0;s:39:\"bling-woocommerce/bling-woocommerce.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:37:\"custom-site-logo/custom-site-logo.php\";i:3;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:4;s:41:\"google-maps-widget/google-maps-widget.php\";i:5;s:37:\"homepage-control/homepage-control.php\";i:6;s:23:\"ml-slider/ml-slider.php\";i:7;s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";i:8;s:26:\"easycontract/santander.php\";i:9;s:67:\"woocommerce-simple-registration/woocommerce-simple-registration.php\";i:10;s:23:\"slider-wd/slider-wd.php\";i:11;s:47:\"storefront-footer-bar/storefront-footer-bar.php\";i:12;s:53:\"storefront-header-picker/storefront-header-picker.php\";i:13;s:45:\"storefront-site-logo/storefront-site-logo.php\";i:14;s:63:\"storefront-sticky-add-to-cart/storefront-sticky-add-to-cart.php\";i:15;s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";i:16;s:27:\"woocommerce/woocommerce.php\";i:17;s:45:\"woocommerce-correios/woocommerce-correios.php\";i:18;s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";i:19;s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";i:20;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:21;s:45:\"woocommerce-services/woocommerce-services.php\";}', 'no'),
(3106, '_transient_timeout_wc_upgrade_notice_3.4.3', '1531669851', 'no'),
(3107, '_transient_wc_upgrade_notice_3.4.3', '', 'no'),
(3110, '_transient_timeout__woocommerce_helper_updates', '1531626668', 'no'),
(3111, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1531583468;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(3127, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(3128, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(3129, 'wp_page_for_privacy_policy', '', 'yes'),
(3130, 'woocommerce_registration_privacy_policy_text', 'Seus dados pessoais serão usados para aprimorar a sua experiência em todo este site, para gerenciar o acesso a sua conta e para outros propósitos, como descritos em nossa [privacy_policy]', 'yes'),
(3131, 'woocommerce_checkout_privacy_policy_text', 'Os seus dados pessoais serão utilizados para processar a sua compra, apoiar a sua experiência em todo este site e para outros fins descritos na nossa [privacy_policy]', 'yes'),
(3132, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(3133, 'woocommerce_trash_pending_orders', '', 'no'),
(3134, 'woocommerce_trash_failed_orders', '', 'no'),
(3135, 'woocommerce_trash_cancelled_orders', '', 'no'),
(3136, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(3137, 'woocommerce_single_image_width', '600', 'yes'),
(3138, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(3139, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(3140, 'woocommerce_demo_store', 'no', 'no'),
(3141, 'woocommerce_version', '3.4.3', 'yes'),
(3152, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1531583764;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(3154, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1531583821;s:7:\"checked\";a:2:{s:10:\"storefront\";s:5:\"2.3.1\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.3.2.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(3157, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1531583890;s:7:\"checked\";a:23:{s:39:\"bling-woocommerce/bling-woocommerce.php\";s:5:\"1.0.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:37:\"custom-site-logo/custom-site-logo.php\";s:5:\"1.0.2\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.3.6\";s:41:\"google-maps-widget/google-maps-widget.php\";s:4:\"3.95\";s:37:\"homepage-control/homepage-control.php\";s:5:\"2.0.3\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.8.1\";s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";s:3:\"3.9\";s:26:\"easycontract/santander.php\";s:7:\"1.0.6wo\";s:67:\"woocommerce-simple-registration/woocommerce-simple-registration.php\";s:5:\"1.5.2\";s:23:\"slider-wd/slider-wd.php\";s:6:\"1.2.13\";s:47:\"storefront-footer-bar/storefront-footer-bar.php\";s:5:\"1.0.3\";s:53:\"storefront-header-picker/storefront-header-picker.php\";s:5:\"1.0.2\";s:57:\"storefront-product-sharing/storefront-product-sharing.php\";s:5:\"1.0.6\";s:45:\"storefront-site-logo/storefront-site-logo.php\";s:5:\"1.2.3\";s:63:\"storefront-sticky-add-to-cart/storefront-sticky-add-to-cart.php\";s:5:\"1.1.9\";s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:5:\"2.8.9\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:5:\"3.7.1\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:5:\"3.6.1\";s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";s:6:\"2.12.7\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.1\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.15.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:22:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"custom-site-logo/custom-site-logo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/custom-site-logo\";s:4:\"slug\";s:16:\"custom-site-logo\";s:6:\"plugin\";s:37:\"custom-site-logo/custom-site-logo.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/custom-site-logo/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/custom-site-logo.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/custom-site-logo/assets/icon-128x128.png?rev=1682946\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/custom-site-logo/assets/banner-772x250.jpg?rev=1682946\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.3.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"google-maps-widget/google-maps-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/google-maps-widget\";s:4:\"slug\";s:18:\"google-maps-widget\";s:6:\"plugin\";s:41:\"google-maps-widget/google-maps-widget.php\";s:11:\"new_version\";s:4:\"3.95\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/google-maps-widget/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/google-maps-widget.3.95.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/google-maps-widget/assets/icon-256x256.png?rev=1625687\";s:2:\"1x\";s:71:\"https://ps.w.org/google-maps-widget/assets/icon-128x128.png?rev=1566956\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/google-maps-widget/assets/banner-1544x500.png?rev=1653423\";s:2:\"1x\";s:73:\"https://ps.w.org/google-maps-widget/assets/banner-772x250.png?rev=1653423\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"homepage-control/homepage-control.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/homepage-control\";s:4:\"slug\";s:16:\"homepage-control\";s:6:\"plugin\";s:37:\"homepage-control/homepage-control.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/homepage-control/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/homepage-control.2.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:67:\"https://s.w.org/plugins/geopattern-icon/homepage-control_f8f8f8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/homepage-control/assets/banner-1544x500.png?rev=877105\";s:2:\"1x\";s:70:\"https://ps.w.org/homepage-control/assets/banner-772x250.png?rev=877105\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/real-time-find-and-replace\";s:4:\"slug\";s:26:\"real-time-find-and-replace\";s:6:\"plugin\";s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";s:11:\"new_version\";s:3:\"3.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/real-time-find-and-replace/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/real-time-find-and-replace.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/real-time-find-and-replace/assets/icon-256x256.png?rev=1347950\";s:2:\"1x\";s:79:\"https://ps.w.org/real-time-find-and-replace/assets/icon-128x128.png?rev=1347950\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/real-time-find-and-replace/assets/banner-1544x500.png?rev=1347950\";s:2:\"1x\";s:81:\"https://ps.w.org/real-time-find-and-replace/assets/banner-772x250.png?rev=1347950\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/real-time-find-and-replace/assets/banner-1544x500-rtl.png?rev=1347950\";s:2:\"1x\";s:85:\"https://ps.w.org/real-time-find-and-replace/assets/banner-772x250-rtl.png?rev=1347950\";}}s:26:\"easycontract/santander.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/easycontract\";s:4:\"slug\";s:12:\"easycontract\";s:6:\"plugin\";s:26:\"easycontract/santander.php\";s:11:\"new_version\";s:7:\"1.0.6wo\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easycontract/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/easycontract.1.0.6wo.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/easycontract_fd3333.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easycontract/assets/banner-772x250.jpg?rev=1279505\";}s:11:\"banners_rtl\";a:0:{}}s:67:\"woocommerce-simple-registration/woocommerce-simple-registration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/woocommerce-simple-registration\";s:4:\"slug\";s:31:\"woocommerce-simple-registration\";s:6:\"plugin\";s:67:\"woocommerce-simple-registration/woocommerce-simple-registration.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/woocommerce-simple-registration/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/woocommerce-simple-registration.1.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/woocommerce-simple-registration/assets/icon-256x256.png?rev=1488276\";s:2:\"1x\";s:84:\"https://ps.w.org/woocommerce-simple-registration/assets/icon-256x256.png?rev=1488276\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/woocommerce-simple-registration/assets/banner-1544x500.png?rev=1488276\";s:2:\"1x\";s:86:\"https://ps.w.org/woocommerce-simple-registration/assets/banner-772x250.png?rev=1488276\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"slider-wd/slider-wd.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/slider-wd\";s:4:\"slug\";s:9:\"slider-wd\";s:6:\"plugin\";s:23:\"slider-wd/slider-wd.php\";s:11:\"new_version\";s:6:\"1.2.13\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/slider-wd/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/slider-wd.1.2.13.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/slider-wd/assets/icon-128x128.png?rev=1508787\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/slider-wd/assets/banner-772x250.png?rev=1512780\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"storefront-footer-bar/storefront-footer-bar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/storefront-footer-bar\";s:4:\"slug\";s:21:\"storefront-footer-bar\";s:6:\"plugin\";s:47:\"storefront-footer-bar/storefront-footer-bar.php\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/storefront-footer-bar/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/storefront-footer-bar.1.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/storefront-footer-bar/assets/icon-256x256.png?rev=1143034\";s:2:\"1x\";s:74:\"https://ps.w.org/storefront-footer-bar/assets/icon-128x128.png?rev=1143034\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/storefront-footer-bar/assets/banner-1544x500.png?rev=1343937\";s:2:\"1x\";s:76:\"https://ps.w.org/storefront-footer-bar/assets/banner-772x250.png?rev=1343937\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"storefront-header-picker/storefront-header-picker.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/storefront-header-picker\";s:4:\"slug\";s:24:\"storefront-header-picker\";s:6:\"plugin\";s:53:\"storefront-header-picker/storefront-header-picker.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/storefront-header-picker/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/storefront-header-picker.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/storefront-header-picker.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:57:\"storefront-product-sharing/storefront-product-sharing.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/storefront-product-sharing\";s:4:\"slug\";s:26:\"storefront-product-sharing\";s:6:\"plugin\";s:57:\"storefront-product-sharing/storefront-product-sharing.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/storefront-product-sharing/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/storefront-product-sharing.1.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/storefront-product-sharing/assets/icon-256x256.png?rev=1143035\";s:2:\"1x\";s:79:\"https://ps.w.org/storefront-product-sharing/assets/icon-128x128.png?rev=1143035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/storefront-product-sharing/assets/banner-1544x500.png?rev=1343942\";s:2:\"1x\";s:81:\"https://ps.w.org/storefront-product-sharing/assets/banner-772x250.png?rev=1343942\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"storefront-site-logo/storefront-site-logo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/storefront-site-logo\";s:4:\"slug\";s:20:\"storefront-site-logo\";s:6:\"plugin\";s:45:\"storefront-site-logo/storefront-site-logo.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/storefront-site-logo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/storefront-site-logo.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://s.w.org/plugins/geopattern-icon/storefront-site-logo.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:63:\"storefront-sticky-add-to-cart/storefront-sticky-add-to-cart.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/storefront-sticky-add-to-cart\";s:4:\"slug\";s:29:\"storefront-sticky-add-to-cart\";s:6:\"plugin\";s:63:\"storefront-sticky-add-to-cart/storefront-sticky-add-to-cart.php\";s:11:\"new_version\";s:5:\"1.1.9\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/storefront-sticky-add-to-cart/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/storefront-sticky-add-to-cart.1.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/storefront-sticky-add-to-cart/assets/icon-256x256.png?rev=1277745\";s:2:\"1x\";s:82:\"https://ps.w.org/storefront-sticky-add-to-cart/assets/icon-128x128.png?rev=1277745\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/storefront-sticky-add-to-cart/assets/banner-1544x500.jpg?rev=1343943\";s:2:\"1x\";s:84:\"https://ps.w.org/storefront-sticky-add-to-cart/assets/banner-772x250.jpg?rev=1343943\";}s:11:\"banners_rtl\";a:0:{}}s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/ultimate-social-media-plus\";s:4:\"slug\";s:26:\"ultimate-social-media-plus\";s:6:\"plugin\";s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.8.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/ultimate-social-media-plus/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/ultimate-social-media-plus.2.8.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/ultimate-social-media-plus/assets/icon-128x128.png?rev=1689082\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/ultimate-social-media-plus/assets/banner-772x250.png?rev=1131094\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-correios/woocommerce-correios.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-correios\";s:4:\"slug\";s:20:\"woocommerce-correios\";s:6:\"plugin\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-correios/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-correios.3.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-256x256.png?rev=1356952\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-128x128.png?rev=1356952\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-correios/assets/banner-1544x500.png?rev=1356952\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-correios/assets/banner-772x250.png?rev=1356952\";}s:11:\"banners_rtl\";a:0:{}}s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:58:\"w.org/plugins/woocommerce-extra-checkout-fields-for-brazil\";s:4:\"slug\";s:44:\"woocommerce-extra-checkout-fields-for-brazil\";s:6:\"plugin\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:75:\"https://wordpress.org/plugins/woocommerce-extra-checkout-fields-for-brazil/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-extra-checkout-fields-for-brazil.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-256x256.png?rev=1356956\";s:2:\"1x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-128x128.png?rev=1356956\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:100:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-1544x500.png?rev=1356956\";s:2:\"1x\";s:99:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-772x250.png?rev=1356956\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/woocommerce-pagseguro\";s:4:\"slug\";s:21:\"woocommerce-pagseguro\";s:6:\"plugin\";s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";s:11:\"new_version\";s:6:\"2.12.7\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/woocommerce-pagseguro/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/woocommerce-pagseguro.2.12.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/woocommerce-pagseguro/assets/icon-256x256.png?rev=1356960\";s:2:\"1x\";s:74:\"https://ps.w.org/woocommerce-pagseguro/assets/icon-128x128.png?rev=1356960\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-pagseguro/assets/banner-1544x500.png?rev=1356960\";s:2:\"1x\";s:76:\"https://ps.w.org/woocommerce-pagseguro/assets/banner-772x250.png?rev=1356960\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.15.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.15.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1586175\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1586175\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1901082\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1901082\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(3158, '_transient_timeout_wc_related_331', '1531670242', 'no'),
(3159, '_transient_wc_related_331', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=331\";a:6:{i:0;s:3:\"321\";i:1;s:3:\"323\";i:2;s:3:\"325\";i:3;s:3:\"327\";i:4;s:3:\"329\";i:5;s:3:\"337\";}}', 'no'),
(3166, 'woocommerce_db_version', '3.4.3', 'yes'),
(3178, '_transient_timeout_wc_product_loop42d91531584769', '1534177050', 'no'),
(3179, '_transient_wc_product_loop42d91531584769', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:335;i:2;i:333;i:3;i:331;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3180, '_transient_timeout_wc_product_loop78d71531584769', '1534177050', 'no'),
(3181, '_transient_wc_product_loop78d71531584769', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3182, '_transient_timeout_wc_product_loopf8571531584769', '1534177050', 'no'),
(3183, '_transient_wc_product_loopf8571531584769', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:38;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3184, '_transient_timeout_wc_product_loopcde41531584769', '1534177051', 'no'),
(3185, '_transient_wc_product_loopcde41531584769', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:321;i:2;i:39;i:3;i:296;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3186, '_transient_timeout_wc_product_loopa47f1531584769', '1534177051', 'no'),
(3187, '_transient_wc_product_loopa47f1531584769', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:20;i:1;i:30;i:2;i:27;i:3;i:38;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3188, '_transient_timeout_wc_related_319', '1531671510', 'no'),
(3189, '_transient_wc_related_319', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=319\";a:8:{i:0;s:2:\"18\";i:1;s:2:\"39\";i:2;s:3:\"333\";i:3;s:3:\"335\";i:4;s:2:\"29\";i:5;s:2:\"30\";i:6;s:2:\"38\";i:7;s:3:\"313\";}}', 'no'),
(3198, '_transient_timeout_wc_product_loop42d91531585668', '1534177857', 'no'),
(3199, '_transient_wc_product_loop42d91531585668', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:333;i:2;i:321;i:3;i:313;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3200, '_transient_timeout_wc_product_loop78d71531585668', '1534177857', 'no'),
(3201, '_transient_wc_product_loop78d71531585668', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3202, '_transient_timeout_wc_product_loopf8571531585668', '1534177858', 'no'),
(3203, '_transient_wc_product_loopf8571531585668', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:38;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3204, '_transient_timeout_wc_product_loopcde41531585668', '1534177858', 'no'),
(3205, '_transient_wc_product_loopcde41531585668', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:337;i:1;i:321;i:2;i:39;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3206, '_transient_timeout_wc_product_loopa47f1531585668', '1534177858', 'no'),
(3207, '_transient_wc_product_loopa47f1531585668', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:20;i:1;i:27;i:2;i:38;i:3;i:39;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3213, '_transient_timeout_wc_product_loop42d91531586307', '1534178445', 'no'),
(3214, '_transient_wc_product_loop42d91531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:337;i:1;i:313;i:2;i:294;i:3;i:292;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3215, '_transient_timeout_wc_product_loop78d71531586307', '1534178445', 'no'),
(3216, '_transient_wc_product_loop78d71531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3217, '_transient_timeout_wc_product_loopf8571531586307', '1534178446', 'no'),
(3218, '_transient_wc_product_loopf8571531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3219, '_transient_timeout_wc_product_loopcde41531586307', '1534178446', 'no'),
(3220, '_transient_wc_product_loopcde41531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:337;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3221, '_transient_timeout_wc_product_loopa47f1531586307', '1534178446', 'no'),
(3222, '_transient_wc_product_loopa47f1531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:27;i:1;i:28;i:2;i:292;i:3;i:313;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3223, '_transient_timeout_wc_product_loop9e161531586307', '1534178538', 'no'),
(3224, '_transient_wc_product_loop9e161531586307', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:337;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(3236, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:12:\"post-trashed\";s:1:\"2\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(3238, '_transient_timeout_wc_term_counts', '1534179149', 'no'),
(3239, '_transient_wc_term_counts', 'a:6:{i:22;s:1:\"2\";i:23;s:1:\"2\";i:26;s:1:\"1\";i:24;s:1:\"1\";i:21;s:1:\"5\";i:15;s:1:\"0\";}', 'no'),
(3242, '_transient_timeout_wc_product_loop42d91531587141', '1534179176', 'no'),
(3243, '_transient_wc_product_loop42d91531587141', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:369;i:1;i:366;i:2;i:337;i:3;i:313;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3244, '_transient_timeout_wc_product_loop78d71531587141', '1534179176', 'no'),
(3245, '_transient_wc_product_loop78d71531587141', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3246, '_transient_timeout_wc_product_loopf8571531587141', '1534179176', 'no'),
(3247, '_transient_wc_product_loopf8571531587141', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3248, '_transient_timeout_wc_products_onsale', '1534179176', 'no'),
(3249, '_transient_wc_products_onsale', 'a:1:{i:0;i:337;}', 'no'),
(3250, '_transient_timeout_wc_product_loopde3b1531587141', '1534179176', 'no'),
(3251, '_transient_wc_product_loopde3b1531587141', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:337;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3252, '_transient_timeout_wc_product_loopa47f1531587141', '1534179176', 'no'),
(3253, '_transient_wc_product_loopa47f1531587141', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:27;i:1;i:28;i:2;i:292;i:3;i:313;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(3256, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_postmeta`
--

CREATE TABLE `mb_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_postmeta`
--

INSERT INTO `mb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(48, 18, '_wc_review_count', '0'),
(49, 18, '_wc_rating_count', 'a:0:{}'),
(50, 18, '_wc_average_rating', '0'),
(51, 18, '_edit_last', '1'),
(52, 18, '_edit_lock', '1523924691:1'),
(53, 19, '_wp_attached_file', '2018/03/camiseta_bazinga.png'),
(54, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:620;s:4:\"file\";s:28:\"2018/03/camiseta_bazinga.png\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"camiseta_bazinga-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-380x250.png\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:26:\"camiseta_bazinga-75x75.png\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-444x444.png\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-620x521.png\";s:5:\"width\";i:620;s:6:\"height\";i:521;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-250x180.png\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"camiseta_bazinga-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"camiseta_bazinga-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 18, '_sku', ''),
(56, 18, '_regular_price', '25'),
(57, 18, '_sale_price', ''),
(58, 18, '_sale_price_dates_from', ''),
(59, 18, '_sale_price_dates_to', ''),
(60, 18, 'total_sales', '1'),
(61, 18, '_tax_status', 'taxable'),
(62, 18, '_tax_class', ''),
(63, 18, '_manage_stock', 'no'),
(64, 18, '_backorders', 'no'),
(65, 18, '_sold_individually', 'no'),
(66, 18, '_weight', ''),
(67, 18, '_length', ''),
(68, 18, '_width', ''),
(69, 18, '_height', ''),
(70, 18, '_upsell_ids', 'a:0:{}'),
(71, 18, '_crosssell_ids', 'a:0:{}'),
(72, 18, '_purchase_note', ''),
(73, 18, '_default_attributes', 'a:0:{}'),
(74, 18, '_virtual', 'no'),
(75, 18, '_downloadable', 'no'),
(76, 18, '_product_image_gallery', ''),
(77, 18, '_download_limit', '-1'),
(78, 18, '_download_expiry', '-1'),
(79, 18, '_stock', NULL),
(80, 18, '_stock_status', 'instock'),
(81, 18, '_product_version', '3.3.5'),
(82, 18, '_price', '25'),
(83, 18, '_thumbnail_id', '19'),
(84, 20, '_wc_review_count', '0'),
(85, 20, '_wc_rating_count', 'a:0:{}'),
(86, 20, '_wc_average_rating', '0'),
(87, 20, '_edit_last', '1'),
(88, 20, '_edit_lock', '1523924552:1'),
(91, 22, '_wp_attached_file', '2018/03/camiseta_capitao_america.png'),
(92, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:621;s:4:\"file\";s:36:\"2018/03/camiseta_capitao_america.png\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"camiseta_capitao_america-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-400x401.png\";s:5:\"width\";i:400;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-380x250.png\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:34:\"camiseta_capitao_america-75x75.png\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-444x444.png\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-620x521.png\";s:5:\"width\";i:620;s:6:\"height\";i:521;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-250x180.png\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"camiseta_capitao_america-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-400x401.png\";s:5:\"width\";i:400;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:36:\"camiseta_capitao_america-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 23, '_wp_attached_file', '2018/03/camiseta_homem_ferro.png'),
(94, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:620;s:4:\"file\";s:32:\"2018/03/camiseta_homem_ferro.png\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"camiseta_homem_ferro-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-380x250.png\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:30:\"camiseta_homem_ferro-75x75.png\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-444x444.png\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-620x521.png\";s:5:\"width\";i:620;s:6:\"height\";i:521;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-250x180.png\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"camiseta_homem_ferro-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"camiseta_homem_ferro-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 20, '_sku', ''),
(101, 20, '_regular_price', '25'),
(102, 20, '_sale_price', ''),
(103, 20, '_sale_price_dates_from', ''),
(104, 20, '_sale_price_dates_to', ''),
(105, 20, 'total_sales', '5'),
(106, 20, '_tax_status', 'taxable'),
(107, 20, '_tax_class', ''),
(108, 20, '_manage_stock', 'no'),
(109, 20, '_backorders', 'no'),
(110, 20, '_sold_individually', 'no'),
(111, 20, '_weight', ''),
(112, 20, '_length', ''),
(113, 20, '_width', ''),
(114, 20, '_height', ''),
(115, 20, '_upsell_ids', 'a:0:{}'),
(116, 20, '_crosssell_ids', 'a:0:{}'),
(117, 20, '_purchase_note', ''),
(118, 20, '_default_attributes', 'a:0:{}'),
(119, 20, '_virtual', 'no'),
(120, 20, '_downloadable', 'no'),
(121, 20, '_product_image_gallery', ''),
(122, 20, '_download_limit', '-1'),
(123, 20, '_download_expiry', '-1'),
(124, 20, '_stock', NULL),
(125, 20, '_stock_status', 'instock'),
(126, 20, '_product_version', '3.3.5'),
(127, 20, '_price', '25'),
(128, 26, '_wc_review_count', '0'),
(129, 26, '_wc_rating_count', 'a:0:{}'),
(130, 26, '_wc_average_rating', '0'),
(131, 26, '_edit_last', '1'),
(132, 26, '_edit_lock', '1523924538:1'),
(134, 26, '_sku', ''),
(135, 26, '_regular_price', '32'),
(136, 26, '_sale_price', ''),
(137, 26, '_sale_price_dates_from', ''),
(138, 26, '_sale_price_dates_to', ''),
(139, 26, 'total_sales', '0'),
(140, 26, '_tax_status', 'taxable'),
(141, 26, '_tax_class', ''),
(142, 26, '_manage_stock', 'no'),
(143, 26, '_backorders', 'no'),
(144, 26, '_sold_individually', 'no'),
(145, 26, '_weight', ''),
(146, 26, '_length', ''),
(147, 26, '_width', ''),
(148, 26, '_height', ''),
(149, 26, '_upsell_ids', 'a:0:{}'),
(150, 26, '_crosssell_ids', 'a:0:{}'),
(151, 26, '_purchase_note', ''),
(152, 26, '_default_attributes', 'a:0:{}'),
(153, 26, '_virtual', 'no'),
(154, 26, '_downloadable', 'no'),
(155, 26, '_product_image_gallery', ''),
(156, 26, '_download_limit', '-1'),
(157, 26, '_download_expiry', '-1'),
(158, 26, '_stock', NULL),
(159, 26, '_stock_status', 'instock'),
(160, 26, '_product_version', '3.3.5'),
(161, 26, '_price', '32'),
(162, 27, '_wc_review_count', '0'),
(163, 27, '_wc_rating_count', 'a:0:{}'),
(164, 27, '_wc_average_rating', '0'),
(165, 27, '_edit_last', '1'),
(166, 27, '_edit_lock', '1523924520:1'),
(167, 27, '_thumbnail_id', '22'),
(168, 27, '_sku', ''),
(169, 27, '_regular_price', '30'),
(170, 27, '_sale_price', ''),
(171, 27, '_sale_price_dates_from', ''),
(172, 27, '_sale_price_dates_to', ''),
(173, 27, 'total_sales', '3'),
(174, 27, '_tax_status', 'taxable'),
(175, 27, '_tax_class', ''),
(176, 27, '_manage_stock', 'no'),
(177, 27, '_backorders', 'no'),
(178, 27, '_sold_individually', 'no'),
(179, 27, '_weight', ''),
(180, 27, '_length', ''),
(181, 27, '_width', ''),
(182, 27, '_height', ''),
(183, 27, '_upsell_ids', 'a:0:{}'),
(184, 27, '_crosssell_ids', 'a:0:{}'),
(185, 27, '_purchase_note', ''),
(186, 27, '_default_attributes', 'a:0:{}'),
(187, 27, '_virtual', 'no'),
(188, 27, '_downloadable', 'no'),
(189, 27, '_product_image_gallery', ''),
(190, 27, '_download_limit', '-1'),
(191, 27, '_download_expiry', '-1'),
(192, 27, '_stock', NULL),
(193, 27, '_stock_status', 'instock'),
(194, 27, '_product_version', '3.3.5'),
(195, 27, '_price', '30'),
(196, 28, '_wc_review_count', '0'),
(197, 28, '_wc_rating_count', 'a:0:{}'),
(198, 28, '_wc_average_rating', '0'),
(199, 28, '_edit_last', '1'),
(200, 28, '_edit_lock', '1523924461:1'),
(201, 28, '_thumbnail_id', '23'),
(202, 28, '_sku', ''),
(203, 28, '_regular_price', '30'),
(204, 28, '_sale_price', ''),
(205, 28, '_sale_price_dates_from', ''),
(206, 28, '_sale_price_dates_to', ''),
(207, 28, 'total_sales', '1'),
(208, 28, '_tax_status', 'taxable'),
(209, 28, '_tax_class', ''),
(210, 28, '_manage_stock', 'no'),
(211, 28, '_backorders', 'no'),
(212, 28, '_sold_individually', 'no'),
(213, 28, '_weight', ''),
(214, 28, '_length', ''),
(215, 28, '_width', ''),
(216, 28, '_height', ''),
(217, 28, '_upsell_ids', 'a:0:{}'),
(218, 28, '_crosssell_ids', 'a:0:{}'),
(219, 28, '_purchase_note', ''),
(220, 28, '_default_attributes', 'a:0:{}'),
(221, 28, '_virtual', 'no'),
(222, 28, '_downloadable', 'no'),
(223, 28, '_product_image_gallery', ''),
(224, 28, '_download_limit', '-1'),
(225, 28, '_download_expiry', '-1'),
(226, 28, '_stock', NULL),
(227, 28, '_stock_status', 'instock'),
(228, 28, '_product_version', '3.3.5'),
(229, 28, '_price', '30'),
(230, 29, '_wc_review_count', '0'),
(231, 29, '_wc_rating_count', 'a:0:{}'),
(232, 29, '_wc_average_rating', '0'),
(233, 29, '_edit_last', '1'),
(234, 29, '_edit_lock', '1523924429:1'),
(236, 29, '_sku', ''),
(237, 29, '_regular_price', '32'),
(238, 29, '_sale_price', ''),
(239, 29, '_sale_price_dates_from', ''),
(240, 29, '_sale_price_dates_to', ''),
(241, 29, 'total_sales', '1'),
(242, 29, '_tax_status', 'taxable'),
(243, 29, '_tax_class', ''),
(244, 29, '_manage_stock', 'no'),
(245, 29, '_backorders', 'no'),
(246, 29, '_sold_individually', 'no'),
(247, 29, '_weight', ''),
(248, 29, '_length', ''),
(249, 29, '_width', ''),
(250, 29, '_height', ''),
(251, 29, '_upsell_ids', 'a:0:{}'),
(252, 29, '_crosssell_ids', 'a:0:{}'),
(253, 29, '_purchase_note', ''),
(254, 29, '_default_attributes', 'a:0:{}'),
(255, 29, '_virtual', 'no'),
(256, 29, '_downloadable', 'no'),
(257, 29, '_product_image_gallery', ''),
(258, 29, '_download_limit', '-1'),
(259, 29, '_download_expiry', '-1'),
(260, 29, '_stock', NULL),
(261, 29, '_stock_status', 'instock'),
(262, 29, '_product_version', '3.3.5'),
(263, 29, '_price', '32'),
(264, 30, '_wc_review_count', '0'),
(265, 30, '_wc_rating_count', 'a:0:{}'),
(266, 30, '_wc_average_rating', '0'),
(267, 30, '_edit_last', '1'),
(268, 30, '_edit_lock', '1523924410:1'),
(282, 30, '_sku', ''),
(283, 30, '_regular_price', '35'),
(284, 30, '_sale_price', ''),
(285, 30, '_sale_price_dates_from', ''),
(286, 30, '_sale_price_dates_to', ''),
(287, 30, 'total_sales', '4'),
(288, 30, '_tax_status', 'taxable'),
(289, 30, '_tax_class', ''),
(290, 30, '_manage_stock', 'no'),
(291, 30, '_backorders', 'no'),
(292, 30, '_sold_individually', 'no'),
(293, 30, '_weight', ''),
(294, 30, '_length', ''),
(295, 30, '_width', ''),
(296, 30, '_height', ''),
(297, 30, '_upsell_ids', 'a:0:{}'),
(298, 30, '_crosssell_ids', 'a:0:{}'),
(299, 30, '_purchase_note', ''),
(300, 30, '_default_attributes', 'a:0:{}'),
(301, 30, '_virtual', 'no'),
(302, 30, '_downloadable', 'no'),
(303, 30, '_product_image_gallery', ''),
(304, 30, '_download_limit', '-1'),
(305, 30, '_download_expiry', '-1'),
(306, 30, '_stock', NULL),
(307, 30, '_stock_status', 'instock'),
(308, 30, '_product_version', '3.3.5'),
(309, 30, '_price', '35'),
(344, 38, '_wc_review_count', '1'),
(345, 38, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(346, 38, '_wc_average_rating', '5.00'),
(347, 38, '_edit_last', '1'),
(348, 38, '_edit_lock', '1523924396:1'),
(350, 38, '_sku', ''),
(351, 38, '_regular_price', '40'),
(352, 38, '_sale_price', ''),
(353, 38, '_sale_price_dates_from', ''),
(354, 38, '_sale_price_dates_to', ''),
(355, 38, 'total_sales', '3'),
(356, 38, '_tax_status', 'taxable'),
(357, 38, '_tax_class', ''),
(358, 38, '_manage_stock', 'no'),
(359, 38, '_backorders', 'no'),
(360, 38, '_sold_individually', 'no'),
(361, 38, '_weight', ''),
(362, 38, '_length', ''),
(363, 38, '_width', ''),
(364, 38, '_height', ''),
(365, 38, '_upsell_ids', 'a:0:{}'),
(366, 38, '_crosssell_ids', 'a:0:{}'),
(367, 38, '_purchase_note', ''),
(368, 38, '_default_attributes', 'a:0:{}'),
(369, 38, '_virtual', 'no'),
(370, 38, '_downloadable', 'no'),
(371, 38, '_product_image_gallery', ''),
(372, 38, '_download_limit', '-1'),
(373, 38, '_download_expiry', '-1'),
(374, 38, '_stock', NULL),
(375, 38, '_stock_status', 'instock'),
(376, 38, '_product_version', '3.3.5'),
(377, 38, '_price', '40'),
(378, 39, '_wc_review_count', '1'),
(379, 39, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(380, 39, '_wc_average_rating', '4.00'),
(381, 39, '_edit_last', '1'),
(382, 39, '_edit_lock', '1523929708:1'),
(384, 39, '_sku', ''),
(385, 39, '_regular_price', '28'),
(386, 39, '_sale_price', '26.50'),
(387, 39, '_sale_price_dates_from', ''),
(388, 39, '_sale_price_dates_to', ''),
(389, 39, 'total_sales', '3'),
(390, 39, '_tax_status', 'taxable'),
(391, 39, '_tax_class', ''),
(392, 39, '_manage_stock', 'no'),
(393, 39, '_backorders', 'no'),
(394, 39, '_sold_individually', 'no'),
(395, 39, '_weight', ''),
(396, 39, '_length', ''),
(397, 39, '_width', ''),
(398, 39, '_height', ''),
(399, 39, '_upsell_ids', 'a:0:{}'),
(400, 39, '_crosssell_ids', 'a:0:{}'),
(401, 39, '_purchase_note', ''),
(402, 39, '_default_attributes', 'a:0:{}'),
(403, 39, '_virtual', 'no'),
(404, 39, '_downloadable', 'no'),
(405, 39, '_product_image_gallery', ''),
(406, 39, '_download_limit', '-1'),
(407, 39, '_download_expiry', '-1'),
(408, 39, '_stock', NULL),
(409, 39, '_stock_status', 'instock'),
(410, 39, '_product_version', '3.3.5'),
(411, 39, '_price', '26.50'),
(595, 74, '_customize_changeset_uuid', '1a5b150f-2170-443d-baec-4dd2e94cbaeb'),
(598, 74, '_edit_lock', '1526434654:1'),
(599, 74, '_edit_last', '1'),
(600, 74, '_wp_page_template', 'template-homepage.php'),
(601, 74, 'estore_page_specific_layout', 'no_sidebar_content_centered'),
(621, 88, '_edit_last', '1'),
(622, 88, '_wp_page_template', 'default'),
(623, 88, '_edit_lock', '1531585961:1'),
(685, 109, '_form', '<label> Nome\n    [text* your-name] </label>\n\n<label> E-mail\n    [email* your-email] </label>\n\n<label> Assunto\n    [text your-subject] </label>\n\n<label> Sua mensagem\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(686, 109, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"Magic Beans Store \"[your-subject]\"\";s:6:\"sender\";s:12:\"[your-email]\";s:9:\"recipient\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:4:\"body\";s:149:\"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Magic Beans Store\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(687, 109, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Magic Beans Store \"[your-subject]\"\";s:6:\"sender\";s:54:\"Magic Beans Store <mauricioaparecidogabriel@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:147:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Magic Beans Store (http://localhost:8080/magicbeans)\";s:18:\"additional_headers\";s:44:\"Reply-To: mauricioaparecidogabriel@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(688, 109, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:85:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.(remetente)\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:81:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde. (spam)\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:17:\"captcha_not_match\";s:35:\"O código digitado está incorreto.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(689, 109, '_additional_settings', ''),
(690, 109, '_locale', 'pt_BR'),
(711, 114, '_order_key', 'wc_order_5ab5b1e395c27'),
(712, 114, '_customer_user', '0'),
(713, 114, '_payment_method', 'pagseguro'),
(714, 114, '_payment_method_title', 'PagSeguro'),
(715, 114, '_transaction_id', ''),
(716, 114, '_customer_ip_address', '::1'),
(717, 114, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(718, 114, '_created_via', 'checkout'),
(719, 114, '_date_completed', '1523131322'),
(720, 114, '_completed_date', '2018-04-07 17:02:02'),
(721, 114, '_date_paid', ''),
(722, 114, '_paid_date', ''),
(723, 114, '_cart_hash', '0d9722902283f2686a33d1f220cb046c'),
(724, 114, '_billing_first_name', 'Mauricio'),
(725, 114, '_billing_last_name', 'Aparecido Gabriel'),
(726, 114, '_billing_company', ''),
(727, 114, '_billing_address_1', 'Travessa Ponte Alta do Norte, 05'),
(728, 114, '_billing_address_2', ''),
(729, 114, '_billing_city', 'São Paulo'),
(730, 114, '_billing_state', 'SP'),
(731, 114, '_billing_postcode', '08230-660'),
(732, 114, '_billing_country', 'BR'),
(733, 114, '_billing_email', 'maparecido92@bol.com.br'),
(734, 114, '_billing_phone', '11985181910'),
(735, 114, '_shipping_first_name', 'Mauricio'),
(736, 114, '_shipping_last_name', 'Aparecido Gabriel'),
(737, 114, '_shipping_company', ''),
(738, 114, '_shipping_address_1', 'Travessa Ponte Alta do Norte, 05'),
(739, 114, '_shipping_address_2', ''),
(740, 114, '_shipping_city', 'São Paulo'),
(741, 114, '_shipping_state', 'SP'),
(742, 114, '_shipping_postcode', '08230-660'),
(743, 114, '_shipping_country', 'BR'),
(744, 114, '_order_currency', 'BRL'),
(745, 114, '_cart_discount', '0'),
(746, 114, '_cart_discount_tax', '0'),
(747, 114, '_order_shipping', '17.50'),
(748, 114, '_order_shipping_tax', '0'),
(749, 114, '_order_tax', '0'),
(750, 114, '_order_total', '42.50'),
(751, 114, '_order_version', '3.3.4'),
(752, 114, '_prices_include_tax', 'no'),
(753, 114, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR maparecido92@bol.com.br 11985181910'),
(754, 114, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR'),
(755, 115, '_order_key', 'wc_order_5ab5b3a4a122c'),
(756, 115, '_customer_user', '0'),
(757, 115, '_payment_method', 'pagseguro'),
(758, 115, '_payment_method_title', 'PagSeguro'),
(759, 115, '_transaction_id', ''),
(760, 115, '_customer_ip_address', '::1'),
(761, 115, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(762, 115, '_created_via', 'checkout'),
(763, 115, '_date_completed', '1523131313'),
(764, 115, '_completed_date', '2018-04-07 17:01:53'),
(765, 115, '_date_paid', ''),
(766, 115, '_paid_date', ''),
(767, 115, '_cart_hash', '07a2091d2ccea6079163520ee2dc7af2'),
(768, 115, '_billing_first_name', 'Mauricio'),
(769, 115, '_billing_last_name', 'Aparecido Gabriel'),
(770, 115, '_billing_company', ''),
(771, 115, '_billing_address_1', 'Travessa Ponte Alta do Norte, 05'),
(772, 115, '_billing_address_2', ''),
(773, 115, '_billing_city', 'São Paulo'),
(774, 115, '_billing_state', 'SP'),
(775, 115, '_billing_postcode', '08230-660'),
(776, 115, '_billing_country', 'BR'),
(777, 115, '_billing_email', 'maparecido92@bol.com.br'),
(778, 115, '_billing_phone', '11985181910'),
(779, 115, '_shipping_first_name', 'Mauricio'),
(780, 115, '_shipping_last_name', 'Aparecido Gabriel'),
(781, 115, '_shipping_company', ''),
(782, 115, '_shipping_address_1', 'Travessa Ponte Alta do Norte, 05'),
(783, 115, '_shipping_address_2', ''),
(784, 115, '_shipping_city', 'São Paulo'),
(785, 115, '_shipping_state', 'SP'),
(786, 115, '_shipping_postcode', '08230-660'),
(787, 115, '_shipping_country', 'BR'),
(788, 115, '_order_currency', 'BRL'),
(789, 115, '_cart_discount', '0'),
(790, 115, '_cart_discount_tax', '0'),
(791, 115, '_order_shipping', '0.00'),
(792, 115, '_order_shipping_tax', '0'),
(793, 115, '_order_tax', '0'),
(794, 115, '_order_total', '75.00'),
(795, 115, '_order_version', '3.3.4'),
(796, 115, '_prices_include_tax', 'no'),
(797, 115, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR maparecido92@bol.com.br 11985181910'),
(798, 115, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR'),
(799, 116, '_order_key', 'wc_order_5ab5b4e6622f9'),
(800, 116, '_customer_user', '0'),
(801, 116, '_payment_method', 'pagseguro'),
(802, 116, '_payment_method_title', 'PagSeguro'),
(803, 116, '_transaction_id', ''),
(804, 116, '_customer_ip_address', '::1'),
(805, 116, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(806, 116, '_created_via', 'checkout'),
(807, 116, '_date_completed', '1523131304'),
(808, 116, '_completed_date', '2018-04-07 17:01:44'),
(809, 116, '_date_paid', ''),
(810, 116, '_paid_date', ''),
(811, 116, '_cart_hash', '1a4b653667f50d402786961b755d2416'),
(812, 116, '_billing_first_name', 'João'),
(813, 116, '_billing_last_name', 'Carlos da Silva'),
(814, 116, '_billing_company', ''),
(815, 116, '_billing_address_1', 'Rua dois mil e um, 67'),
(816, 116, '_billing_address_2', 'casa 1'),
(817, 116, '_billing_city', 'São Paulo'),
(818, 116, '_billing_state', 'SP'),
(819, 116, '_billing_postcode', '07890-664'),
(820, 116, '_billing_country', 'BR'),
(821, 116, '_billing_email', 'mauricio.gabriel@ceb.g12.br'),
(822, 116, '_billing_phone', '11985181910'),
(823, 116, '_shipping_first_name', 'João'),
(824, 116, '_shipping_last_name', 'Carlos da Silva'),
(825, 116, '_shipping_company', ''),
(826, 116, '_shipping_address_1', 'Rua dois mil e um, 67'),
(827, 116, '_shipping_address_2', 'casa 1'),
(828, 116, '_shipping_city', 'São Paulo'),
(829, 116, '_shipping_state', 'SP'),
(830, 116, '_shipping_postcode', '07890-664'),
(831, 116, '_shipping_country', 'BR'),
(832, 116, '_order_currency', 'BRL'),
(833, 116, '_cart_discount', '0'),
(834, 116, '_cart_discount_tax', '0'),
(835, 116, '_order_shipping', '18.62'),
(836, 116, '_order_shipping_tax', '0'),
(837, 116, '_order_tax', '0'),
(838, 116, '_order_total', '118.62'),
(839, 116, '_order_version', '3.3.4'),
(840, 116, '_prices_include_tax', 'no'),
(841, 116, '_billing_address_index', 'João Carlos da Silva  Rua dois mil e um, 67 casa 1 São Paulo SP 07890-664 BR mauricio.gabriel@ceb.g12.br 11985181910'),
(842, 116, '_shipping_address_index', 'João Carlos da Silva  Rua dois mil e um, 67 casa 1 São Paulo SP 07890-664 BR'),
(852, 119, '_order_key', 'wc_order_5ab65daa95d68'),
(853, 119, '_customer_user', '0'),
(854, 119, '_payment_method', 'bacs'),
(855, 119, '_payment_method_title', 'Transferência bancária direta'),
(856, 119, '_transaction_id', ''),
(857, 119, '_customer_ip_address', '::1'),
(858, 119, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(859, 119, '_created_via', 'checkout'),
(860, 119, '_date_completed', '1523131299'),
(861, 119, '_completed_date', '2018-04-07 17:01:39'),
(862, 119, '_date_paid', ''),
(863, 119, '_paid_date', ''),
(864, 119, '_cart_hash', '2c33b1e4f00a5a82c54b8fe4cd86d504'),
(865, 119, '_billing_first_name', 'Mauricio'),
(866, 119, '_billing_last_name', 'Aparecido Gabriel'),
(867, 119, '_billing_company', ''),
(868, 119, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(869, 119, '_billing_address_2', ''),
(870, 119, '_billing_city', 'São Paulo'),
(871, 119, '_billing_state', 'SP'),
(872, 119, '_billing_postcode', '08230-660'),
(873, 119, '_billing_country', 'BR'),
(874, 119, '_billing_email', 'maparecido92@bol.com.br'),
(875, 119, '_billing_phone', '(11) 98518-1910'),
(876, 119, '_shipping_first_name', 'Mauricio'),
(877, 119, '_shipping_last_name', 'Aparecido Gabriel'),
(878, 119, '_shipping_company', ''),
(879, 119, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(880, 119, '_shipping_address_2', ''),
(881, 119, '_shipping_city', 'São Paulo'),
(882, 119, '_shipping_state', 'SP'),
(883, 119, '_shipping_postcode', '08230-660'),
(884, 119, '_shipping_country', 'BR'),
(885, 119, '_order_currency', 'BRL'),
(886, 119, '_cart_discount', '0'),
(887, 119, '_cart_discount_tax', '0'),
(888, 119, '_order_shipping', '0.00'),
(889, 119, '_order_shipping_tax', '0'),
(890, 119, '_order_tax', '0'),
(891, 119, '_order_total', '26.50'),
(892, 119, '_order_version', '3.3.4'),
(893, 119, '_prices_include_tax', 'no'),
(894, 119, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR maparecido92@bol.com.br (11) 98518-1910 05 '),
(895, 119, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 '),
(896, 119, '_billing_persontype', '1'),
(897, 119, '_billing_cpf', '401.877.858-99'),
(898, 119, '_billing_cnpj', ''),
(899, 119, '_billing_number', '05'),
(900, 119, '_billing_neighborhood', ''),
(901, 119, '_billing_cellphone', ''),
(902, 119, '_shipping_number', '05'),
(903, 119, '_shipping_neighborhood', ''),
(904, 119, '_recorded_sales', 'yes'),
(905, 119, '_recorded_coupon_usage_counts', 'yes'),
(906, 119, '_order_stock_reduced', 'yes'),
(947, 133, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"400\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(949, 134, 'ml-slider_type', 'image'),
(950, 134, 'ml-slider_inherit_image_caption', '1'),
(951, 134, 'ml-slider_inherit_image_title', '1'),
(952, 134, 'ml-slider_inherit_image_alt', '1'),
(955, 135, 'ml-slider_type', 'image'),
(956, 135, 'ml-slider_inherit_image_caption', '1'),
(957, 135, 'ml-slider_inherit_image_title', '1'),
(958, 135, 'ml-slider_inherit_image_alt', '1'),
(961, 136, 'ml-slider_type', 'image'),
(962, 136, 'ml-slider_inherit_image_caption', '1'),
(963, 136, 'ml-slider_inherit_image_title', '1'),
(964, 136, 'ml-slider_inherit_image_alt', '1'),
(967, 137, 'ml-slider_type', 'image'),
(968, 137, 'ml-slider_inherit_image_caption', '1'),
(969, 137, 'ml-slider_inherit_image_title', '1'),
(970, 137, 'ml-slider_inherit_image_alt', '1'),
(972, 134, 'ml-slider_crop_position', 'center-center'),
(973, 134, '_wp_attachment_image_alt', ''),
(974, 135, 'ml-slider_crop_position', 'center-center'),
(975, 135, '_wp_attachment_image_alt', ''),
(976, 136, 'ml-slider_crop_position', 'center-center'),
(977, 136, '_wp_attachment_image_alt', ''),
(978, 137, 'ml-slider_crop_position', 'center-center'),
(979, 137, '_wp_attachment_image_alt', ''),
(1116, 186, '_form', '<label> Nome\n    [text* your-name] </label>\n\n<label> E-mail\n    [email* your-email] </label>\n\n<label> Tipo de produto\n    [select your-product include_blank \"Camiseta\" \"Bottom\" \"Bandeira\" \"Caneca\" \"Copo\"] </label>\n\n<label> Arquivo\n    [file arquivo limit:10485760] </label>\n\n<label> Mensagem\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(1117, 186, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:31:\"Pedido de produto personalizado\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:4:\"body\";s:216:\"De: [your-name] <[your-email]>\nAssunto: Pedido de produto personalizado\n\n\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de solicitação de produto personalizado em  (http://localhost:8080/magicbeans)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:9:\"[arquivo]\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1118, 186, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"Recebemos seu pedido!\";s:6:\"sender\";s:36:\"<mauricioaparecidogabriel@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:257:\"Olá [your-name]!\n\nRecebemos seu pedido de personalização de [your-product], e em breve entraremos em contato com você para maiores detalhes.\n\nDesde já, agradecemos a preferência!\n\n-- \nEste é um e-mail de resposta automática. Por favor não responda.\";s:18:\"additional_headers\";s:44:\"Reply-To: mauricioaparecidogabriel@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(1119, 186, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:102:\"Sua solicitação foi enviada com sucesso! Verifique sua caixa de e-mail para acompanhamento do pedido\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:17:\"captcha_not_match\";s:35:\"O código digitado está incorreto.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(1120, 186, '_additional_settings', ''),
(1121, 186, '_locale', 'pt_BR'),
(1128, 188, '_edit_lock', '1526646819:1'),
(1129, 188, '_edit_last', '1'),
(1130, 188, '_thumbnail_id', '353'),
(1131, 188, '_wp_page_template', 'default'),
(1132, 190, '_menu_item_type', 'post_type'),
(1133, 190, '_menu_item_menu_item_parent', '0'),
(1134, 190, '_menu_item_object_id', '188'),
(1135, 190, '_menu_item_object', 'page'),
(1136, 190, '_menu_item_target', ''),
(1137, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1138, 190, '_menu_item_xfn', ''),
(1139, 190, '_menu_item_url', ''),
(1153, 199, '_order_key', 'wc_order_5ac6cba8b7809'),
(1154, 199, '_customer_user', '1'),
(1155, 199, '_payment_method', 'pagseguro'),
(1156, 199, '_payment_method_title', 'PagSeguro'),
(1157, 199, '_transaction_id', ''),
(1158, 199, '_customer_ip_address', '::1'),
(1159, 199, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1160, 199, '_created_via', 'checkout'),
(1161, 199, '_date_completed', '1523131288'),
(1162, 199, '_completed_date', '2018-04-07 17:01:28'),
(1163, 199, '_date_paid', ''),
(1164, 199, '_paid_date', ''),
(1165, 199, '_cart_hash', '75b8001bbdeac949c968938bdc8b2bbb'),
(1166, 199, '_billing_first_name', 'Mauricio'),
(1167, 199, '_billing_last_name', 'Aparecido Gabriel'),
(1168, 199, '_billing_company', ''),
(1169, 199, '_billing_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1170, 199, '_billing_address_2', ''),
(1171, 199, '_billing_city', 'São Paulo'),
(1172, 199, '_billing_state', 'SP'),
(1173, 199, '_billing_postcode', '08230-660'),
(1174, 199, '_billing_country', 'BR'),
(1175, 199, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1176, 199, '_billing_phone', '(11) 98518-1910'),
(1177, 199, '_shipping_first_name', 'Mauricio'),
(1178, 199, '_shipping_last_name', 'Aparecido Gabriel'),
(1179, 199, '_shipping_company', ''),
(1180, 199, '_shipping_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1181, 199, '_shipping_address_2', ''),
(1182, 199, '_shipping_city', 'São Paulo'),
(1183, 199, '_shipping_state', 'SP'),
(1184, 199, '_shipping_postcode', '08230-660'),
(1185, 199, '_shipping_country', 'BR'),
(1186, 199, '_order_currency', 'BRL'),
(1187, 199, '_cart_discount', '0'),
(1188, 199, '_cart_discount_tax', '0'),
(1189, 199, '_order_shipping', '0.00'),
(1190, 199, '_order_shipping_tax', '0'),
(1191, 199, '_order_tax', '0'),
(1192, 199, '_order_total', '131.50'),
(1193, 199, '_order_version', '3.3.4'),
(1194, 199, '_prices_include_tax', 'no'),
(1195, 199, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1196, 199, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1197, 199, '_billing_persontype', '1'),
(1198, 199, '_billing_cpf', '401.877.858-99'),
(1199, 199, '_billing_cnpj', ''),
(1200, 199, '_billing_number', '05'),
(1201, 199, '_billing_neighborhood', 'Vila Verde'),
(1202, 199, '_billing_cellphone', ''),
(1203, 199, '_shipping_number', '05'),
(1204, 199, '_shipping_neighborhood', 'Vila Verde'),
(1213, 204, '_menu_item_type', 'post_type'),
(1214, 204, '_menu_item_menu_item_parent', '0'),
(1215, 204, '_menu_item_object_id', '88'),
(1216, 204, '_menu_item_object', 'page'),
(1217, 204, '_menu_item_target', ''),
(1218, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1219, 204, '_menu_item_xfn', ''),
(1220, 204, '_menu_item_url', ''),
(1222, 205, '_menu_item_type', 'post_type'),
(1223, 205, '_menu_item_menu_item_parent', '0'),
(1224, 205, '_menu_item_object_id', '8'),
(1225, 205, '_menu_item_object', 'page'),
(1226, 205, '_menu_item_target', ''),
(1227, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1228, 205, '_menu_item_xfn', ''),
(1229, 205, '_menu_item_url', ''),
(1237, 209, '_edit_lock', '1526438114:1'),
(1238, 209, '_edit_last', '1'),
(1239, 209, '_wp_page_template', 'default'),
(1261, 235, '_wp_attached_file', '2018/04/contato-whatsapp_arte-4.png'),
(1262, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:65;s:4:\"file\";s:35:\"2018/04/contato-whatsapp_arte-4.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"contato-whatsapp_arte-4-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"contato-whatsapp_arte-4-100x65.png\";s:5:\"width\";i:100;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"contato-whatsapp_arte-4-100x65.png\";s:5:\"width\";i:100;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1279, 249, '_order_key', 'wc_order_5ac81c5f54a27'),
(1280, 249, '_customer_user', '1'),
(1281, 249, '_payment_method', 'pagseguro'),
(1282, 249, '_payment_method_title', 'PagSeguro'),
(1283, 249, '_transaction_id', ''),
(1284, 249, '_customer_ip_address', '::1'),
(1285, 249, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1286, 249, '_created_via', 'checkout'),
(1287, 249, '_date_completed', '1523131279'),
(1288, 249, '_completed_date', '2018-04-07 17:01:19'),
(1289, 249, '_date_paid', ''),
(1290, 249, '_paid_date', ''),
(1291, 249, '_cart_hash', 'c48da87289cc6feb2a5109a8aafa6c5e'),
(1292, 249, '_billing_first_name', 'Mauricio'),
(1293, 249, '_billing_last_name', 'Aparecido Gabriel'),
(1294, 249, '_billing_company', ''),
(1295, 249, '_billing_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1296, 249, '_billing_address_2', ''),
(1297, 249, '_billing_city', 'São Paulo'),
(1298, 249, '_billing_state', 'SP'),
(1299, 249, '_billing_postcode', '08230-660'),
(1300, 249, '_billing_country', 'BR'),
(1301, 249, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1302, 249, '_billing_phone', '(11) 98518-1910'),
(1303, 249, '_shipping_first_name', 'Mauricio'),
(1304, 249, '_shipping_last_name', 'Aparecido Gabriel'),
(1305, 249, '_shipping_company', ''),
(1306, 249, '_shipping_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1307, 249, '_shipping_address_2', ''),
(1308, 249, '_shipping_city', 'São Paulo'),
(1309, 249, '_shipping_state', 'SP'),
(1310, 249, '_shipping_postcode', '08230-660'),
(1311, 249, '_shipping_country', 'BR'),
(1312, 249, '_order_currency', 'BRL'),
(1313, 249, '_cart_discount', '0'),
(1314, 249, '_cart_discount_tax', '0'),
(1315, 249, '_order_shipping', '0.00'),
(1316, 249, '_order_shipping_tax', '0'),
(1317, 249, '_order_tax', '0'),
(1318, 249, '_order_total', '40.00'),
(1319, 249, '_order_version', '3.3.4'),
(1320, 249, '_prices_include_tax', 'no'),
(1321, 249, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1322, 249, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1323, 249, '_billing_persontype', '1'),
(1324, 249, '_billing_cpf', '401.877.858-99'),
(1325, 249, '_billing_cnpj', ''),
(1326, 249, '_billing_number', '05'),
(1327, 249, '_billing_neighborhood', 'Vila Verde'),
(1328, 249, '_billing_cellphone', ''),
(1329, 249, '_shipping_number', '05'),
(1330, 249, '_shipping_neighborhood', 'Vila Verde'),
(1331, 250, '_order_key', 'wc_order_5ac81f303fe4c'),
(1332, 250, '_customer_user', '1'),
(1333, 250, '_payment_method', 'pagseguro'),
(1334, 250, '_payment_method_title', 'PagSeguro'),
(1335, 250, '_transaction_id', ''),
(1336, 250, '_customer_ip_address', '::1'),
(1337, 250, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1338, 250, '_created_via', 'checkout'),
(1339, 250, '_date_completed', '1523131271'),
(1340, 250, '_completed_date', '2018-04-07 17:01:11'),
(1341, 250, '_date_paid', ''),
(1342, 250, '_paid_date', ''),
(1343, 250, '_cart_hash', '2c33b1e4f00a5a82c54b8fe4cd86d504'),
(1344, 250, '_billing_first_name', 'Mauricio'),
(1345, 250, '_billing_last_name', 'Aparecido Gabriel'),
(1346, 250, '_billing_company', ''),
(1347, 250, '_billing_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1348, 250, '_billing_address_2', ''),
(1349, 250, '_billing_city', 'São Paulo'),
(1350, 250, '_billing_state', 'SP'),
(1351, 250, '_billing_postcode', '08230-660'),
(1352, 250, '_billing_country', 'BR'),
(1353, 250, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1354, 250, '_billing_phone', '(11) 98518-1910'),
(1355, 250, '_shipping_first_name', 'Mauricio'),
(1356, 250, '_shipping_last_name', 'Aparecido Gabriel'),
(1357, 250, '_shipping_company', ''),
(1358, 250, '_shipping_address_1', 'Travessa Ponte Alta do Norte, 05'),
(1359, 250, '_shipping_address_2', ''),
(1360, 250, '_shipping_city', 'São Paulo'),
(1361, 250, '_shipping_state', 'SP'),
(1362, 250, '_shipping_postcode', '08230-660'),
(1363, 250, '_shipping_country', 'BR'),
(1364, 250, '_order_currency', 'BRL'),
(1365, 250, '_cart_discount', '0'),
(1366, 250, '_cart_discount_tax', '0'),
(1367, 250, '_order_shipping', '0.00'),
(1368, 250, '_order_shipping_tax', '0'),
(1369, 250, '_order_tax', '0'),
(1370, 250, '_order_total', '26.50'),
(1371, 250, '_order_version', '3.3.4'),
(1372, 250, '_prices_include_tax', 'no'),
(1373, 250, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1374, 250, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte, 05  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1375, 250, '_billing_persontype', '1'),
(1376, 250, '_billing_cpf', '401.877.858-99'),
(1377, 250, '_billing_cnpj', ''),
(1378, 250, '_billing_number', '05'),
(1379, 250, '_billing_neighborhood', 'Vila Verde'),
(1380, 250, '_billing_cellphone', ''),
(1381, 250, '_shipping_number', '05'),
(1382, 250, '_shipping_neighborhood', 'Vila Verde'),
(1384, 251, '_order_key', 'wc_order_5ac8f5357fe2d'),
(1385, 251, '_customer_user', '1'),
(1386, 251, '_payment_method', 'cod'),
(1387, 251, '_payment_method_title', 'Pagamento na entrega'),
(1388, 251, '_transaction_id', ''),
(1389, 251, '_customer_ip_address', '::1'),
(1390, 251, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1391, 251, '_created_via', 'checkout'),
(1392, 251, '_date_completed', '1523131265'),
(1393, 251, '_completed_date', '2018-04-07 17:01:05'),
(1394, 251, '_date_paid', ''),
(1395, 251, '_paid_date', ''),
(1396, 251, '_cart_hash', 'c48da87289cc6feb2a5109a8aafa6c5e'),
(1397, 251, '_billing_first_name', 'Mauricio'),
(1398, 251, '_billing_last_name', 'Aparecido Gabriel'),
(1399, 251, '_billing_company', ''),
(1400, 251, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(1401, 251, '_billing_address_2', ''),
(1402, 251, '_billing_city', 'São Paulo'),
(1403, 251, '_billing_state', 'SP'),
(1404, 251, '_billing_postcode', '08230-660'),
(1405, 251, '_billing_country', 'BR'),
(1406, 251, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1407, 251, '_billing_phone', '(11) 98518-1910'),
(1408, 251, '_shipping_first_name', 'Mauricio'),
(1409, 251, '_shipping_last_name', 'Aparecido Gabriel'),
(1410, 251, '_shipping_company', ''),
(1411, 251, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(1412, 251, '_shipping_address_2', ''),
(1413, 251, '_shipping_city', 'São Paulo'),
(1414, 251, '_shipping_state', 'SP'),
(1415, 251, '_shipping_postcode', '08230-660'),
(1416, 251, '_shipping_country', 'BR'),
(1417, 251, '_order_currency', 'BRL'),
(1418, 251, '_cart_discount', '0'),
(1419, 251, '_cart_discount_tax', '0'),
(1420, 251, '_order_shipping', '0.00'),
(1421, 251, '_order_shipping_tax', '0'),
(1422, 251, '_order_tax', '0'),
(1423, 251, '_order_total', '40.00'),
(1424, 251, '_order_version', '3.3.4'),
(1425, 251, '_prices_include_tax', 'no'),
(1426, 251, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1427, 251, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1428, 251, '_billing_persontype', '1'),
(1429, 251, '_billing_cpf', '401.877.858-99'),
(1430, 251, '_billing_cnpj', ''),
(1431, 251, '_billing_number', '05'),
(1432, 251, '_billing_neighborhood', 'Vila Verde'),
(1433, 251, '_billing_cellphone', ''),
(1434, 251, '_shipping_number', '05'),
(1435, 251, '_shipping_neighborhood', 'Vila Verde'),
(1436, 251, '_download_permissions_granted', 'yes'),
(1437, 251, '_recorded_sales', 'yes'),
(1438, 251, '_recorded_coupon_usage_counts', 'yes'),
(1439, 251, '_order_stock_reduced', 'yes'),
(1440, 8, '_edit_lock', '1523120322:1'),
(1441, 252, '_order_key', 'wc_order_5ac8f86f517d6'),
(1442, 252, '_customer_user', '6'),
(1443, 252, '_payment_method', 'bacs'),
(1444, 252, '_payment_method_title', 'Transferência bancária direta'),
(1445, 252, '_transaction_id', ''),
(1446, 252, '_customer_ip_address', '::1');
INSERT INTO `mb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1447, 252, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1448, 252, '_created_via', 'checkout'),
(1449, 252, '_date_completed', '1523131254'),
(1450, 252, '_completed_date', '2018-04-07 17:00:54'),
(1451, 252, '_date_paid', ''),
(1452, 252, '_paid_date', ''),
(1453, 252, '_cart_hash', 'f178553b1ea8589317060560d9b3aa7f'),
(1454, 252, '_billing_first_name', 'Reginaldo'),
(1455, 252, '_billing_last_name', 'Paiva'),
(1456, 252, '_billing_company', ''),
(1457, 252, '_billing_address_1', 'Alameda os Tuiniquins'),
(1458, 252, '_billing_address_2', 'Itaquera'),
(1459, 252, '_billing_city', 'São Paulo'),
(1460, 252, '_billing_state', 'SP'),
(1461, 252, '_billing_postcode', '04077-002'),
(1462, 252, '_billing_country', 'BR'),
(1463, 252, '_billing_email', 'mauricio.gabriel@ceb.g12.br'),
(1464, 252, '_billing_phone', '(11) 98877-6655'),
(1465, 252, '_shipping_first_name', 'Reginaldo'),
(1466, 252, '_shipping_last_name', 'Paiva'),
(1467, 252, '_shipping_company', ''),
(1468, 252, '_shipping_address_1', 'Alameda os Tuiniquins'),
(1469, 252, '_shipping_address_2', 'Itaquera'),
(1470, 252, '_shipping_city', 'São Paulo'),
(1471, 252, '_shipping_state', 'SP'),
(1472, 252, '_shipping_postcode', '04077-002'),
(1473, 252, '_shipping_country', 'BR'),
(1474, 252, '_order_currency', 'BRL'),
(1475, 252, '_cart_discount', '0'),
(1476, 252, '_cart_discount_tax', '0'),
(1477, 252, '_order_shipping', '17.60'),
(1478, 252, '_order_shipping_tax', '0'),
(1479, 252, '_order_tax', '0'),
(1480, 252, '_order_total', '49.60'),
(1481, 252, '_order_version', '3.3.4'),
(1482, 252, '_prices_include_tax', 'no'),
(1483, 252, '_billing_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR mauricio.gabriel@ceb.g12.br (11) 98877-6655 997 Planalto Paulista'),
(1484, 252, '_shipping_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR 997 Planalto Paulista'),
(1485, 252, '_billing_persontype', '1'),
(1486, 252, '_billing_cpf', '401.877.858-99'),
(1487, 252, '_billing_cnpj', ''),
(1488, 252, '_billing_number', '997'),
(1489, 252, '_billing_neighborhood', 'Planalto Paulista'),
(1490, 252, '_billing_cellphone', ''),
(1491, 252, '_shipping_number', '997'),
(1492, 252, '_shipping_neighborhood', 'Planalto Paulista'),
(1493, 252, '_recorded_sales', 'yes'),
(1494, 252, '_recorded_coupon_usage_counts', 'yes'),
(1495, 252, '_order_stock_reduced', 'yes'),
(1496, 251, '_edit_lock', '1523120524:1'),
(1497, 253, '_order_key', 'wc_order_5ac90a89a7be2'),
(1498, 253, '_customer_user', '1'),
(1499, 253, '_payment_method', 'cod'),
(1500, 253, '_payment_method_title', 'Pagamento na entrega'),
(1501, 253, '_transaction_id', ''),
(1502, 253, '_customer_ip_address', '::1'),
(1503, 253, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1504, 253, '_created_via', 'checkout'),
(1505, 253, '_date_completed', '1523131248'),
(1506, 253, '_completed_date', '2018-04-07 17:00:48'),
(1507, 253, '_date_paid', ''),
(1508, 253, '_paid_date', ''),
(1509, 253, '_cart_hash', '46dfc5ebc3bd256b991ab08d69e1b4bf'),
(1510, 253, '_billing_first_name', 'Mauricio'),
(1511, 253, '_billing_last_name', 'Aparecido Gabriel'),
(1512, 253, '_billing_company', ''),
(1513, 253, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(1514, 253, '_billing_address_2', ''),
(1515, 253, '_billing_city', 'São Paulo'),
(1516, 253, '_billing_state', 'SP'),
(1517, 253, '_billing_postcode', '08230-660'),
(1518, 253, '_billing_country', 'BR'),
(1519, 253, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1520, 253, '_billing_phone', '(11) 98518-1910'),
(1521, 253, '_shipping_first_name', 'Mauricio'),
(1522, 253, '_shipping_last_name', 'Aparecido Gabriel'),
(1523, 253, '_shipping_company', ''),
(1524, 253, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(1525, 253, '_shipping_address_2', ''),
(1526, 253, '_shipping_city', 'São Paulo'),
(1527, 253, '_shipping_state', 'SP'),
(1528, 253, '_shipping_postcode', '08230-660'),
(1529, 253, '_shipping_country', 'BR'),
(1530, 253, '_order_currency', 'BRL'),
(1531, 253, '_cart_discount', '0'),
(1532, 253, '_cart_discount_tax', '0'),
(1533, 253, '_order_shipping', '18.01'),
(1534, 253, '_order_shipping_tax', '0'),
(1535, 253, '_order_tax', '0'),
(1536, 253, '_order_total', '76.51'),
(1537, 253, '_order_version', '3.3.4'),
(1538, 253, '_prices_include_tax', 'no'),
(1539, 253, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1540, 253, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1541, 253, '_billing_persontype', '1'),
(1542, 253, '_billing_cpf', '401.877.858-99'),
(1543, 253, '_billing_cnpj', ''),
(1544, 253, '_billing_number', '05'),
(1545, 253, '_billing_neighborhood', 'Vila Verde'),
(1546, 253, '_billing_cellphone', ''),
(1547, 253, '_shipping_number', '05'),
(1548, 253, '_shipping_neighborhood', 'Vila Verde'),
(1549, 253, '_download_permissions_granted', 'yes'),
(1550, 253, '_recorded_sales', 'yes'),
(1551, 253, '_recorded_coupon_usage_counts', 'yes'),
(1552, 253, '_order_stock_reduced', 'yes'),
(1553, 254, '_edit_lock', '1523125014:1'),
(1554, 254, '_edit_last', '1'),
(1555, 254, 'discount_type', 'fixed_product'),
(1556, 254, 'coupon_amount', '5'),
(1557, 254, 'individual_use', 'yes'),
(1558, 254, 'product_ids', ''),
(1559, 254, 'exclude_product_ids', ''),
(1560, 254, 'usage_limit', '0'),
(1561, 254, 'usage_limit_per_user', '0'),
(1562, 254, 'limit_usage_to_x_items', '0'),
(1563, 254, 'usage_count', '0'),
(1564, 254, 'date_expires', '1523329200'),
(1565, 254, 'expiry_date', '2018-04-10'),
(1566, 254, 'free_shipping', 'no'),
(1567, 254, 'product_categories', 'a:0:{}'),
(1568, 254, 'exclude_product_categories', 'a:0:{}'),
(1569, 254, 'exclude_sale_items', 'yes'),
(1570, 254, 'minimum_amount', '20'),
(1571, 254, 'maximum_amount', ''),
(1572, 254, 'customer_email', 'a:0:{}'),
(1573, 255, '_order_key', 'wc_order_5ac90c94c4ee4'),
(1574, 255, '_customer_user', '6'),
(1575, 255, '_payment_method', 'cod'),
(1576, 255, '_payment_method_title', 'Pagamento na entrega'),
(1577, 255, '_transaction_id', ''),
(1578, 255, '_customer_ip_address', '::1'),
(1579, 255, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1580, 255, '_created_via', 'checkout'),
(1581, 255, '_date_completed', '1523131243'),
(1582, 255, '_completed_date', '2018-04-07 17:00:43'),
(1583, 255, '_date_paid', ''),
(1584, 255, '_paid_date', ''),
(1585, 255, '_cart_hash', '5e62a8f41b3d3955c6d68115b693b1c1'),
(1586, 255, '_billing_first_name', 'Reginaldo'),
(1587, 255, '_billing_last_name', 'Paiva'),
(1588, 255, '_billing_company', ''),
(1589, 255, '_billing_address_1', 'Alameda os Tuiniquins'),
(1590, 255, '_billing_address_2', 'Itaquera'),
(1591, 255, '_billing_city', 'São Paulo'),
(1592, 255, '_billing_state', 'SP'),
(1593, 255, '_billing_postcode', '04077-002'),
(1594, 255, '_billing_country', 'BR'),
(1595, 255, '_billing_email', 'mauricio.gabriel@ceb.g12.br'),
(1596, 255, '_billing_phone', '(11) 98877-6655'),
(1597, 255, '_shipping_first_name', 'Reginaldo'),
(1598, 255, '_shipping_last_name', 'Paiva'),
(1599, 255, '_shipping_company', ''),
(1600, 255, '_shipping_address_1', 'Alameda os Tuiniquins'),
(1601, 255, '_shipping_address_2', 'Itaquera'),
(1602, 255, '_shipping_city', 'São Paulo'),
(1603, 255, '_shipping_state', 'SP'),
(1604, 255, '_shipping_postcode', '04077-002'),
(1605, 255, '_shipping_country', 'BR'),
(1606, 255, '_order_currency', 'BRL'),
(1607, 255, '_cart_discount', '0'),
(1608, 255, '_cart_discount_tax', '0'),
(1609, 255, '_order_shipping', '17.57'),
(1610, 255, '_order_shipping_tax', '0'),
(1611, 255, '_order_tax', '0'),
(1612, 255, '_order_total', '47.57'),
(1613, 255, '_order_version', '3.3.4'),
(1614, 255, '_prices_include_tax', 'no'),
(1615, 255, '_billing_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR mauricio.gabriel@ceb.g12.br (11) 98877-6655 997 Planalto Paulista'),
(1616, 255, '_shipping_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR 997 Planalto Paulista'),
(1617, 255, '_billing_persontype', '1'),
(1618, 255, '_billing_cpf', '401.877.858-99'),
(1619, 255, '_billing_cnpj', ''),
(1620, 255, '_billing_number', '997'),
(1621, 255, '_billing_neighborhood', 'Planalto Paulista'),
(1622, 255, '_billing_cellphone', ''),
(1623, 255, '_shipping_number', '997'),
(1624, 255, '_shipping_neighborhood', 'Planalto Paulista'),
(1625, 255, '_download_permissions_granted', 'yes'),
(1626, 255, '_recorded_sales', 'yes'),
(1627, 255, '_recorded_coupon_usage_counts', 'yes'),
(1628, 255, '_order_stock_reduced', 'yes'),
(1629, 256, '_order_key', 'wc_order_5ac90f15a3b56'),
(1630, 256, '_customer_user', '1'),
(1631, 256, '_payment_method', 'pagseguro'),
(1632, 256, '_payment_method_title', 'PagSeguro'),
(1633, 256, '_transaction_id', ''),
(1634, 256, '_customer_ip_address', '::1'),
(1635, 256, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1636, 256, '_created_via', 'checkout'),
(1637, 256, '_date_completed', '1523131238'),
(1638, 256, '_completed_date', '2018-04-07 17:00:38'),
(1639, 256, '_date_paid', ''),
(1640, 256, '_paid_date', ''),
(1641, 256, '_cart_hash', '60259085d1cf3e085ff93a9198d3b065'),
(1642, 256, '_billing_first_name', 'Mauricio'),
(1643, 256, '_billing_last_name', 'Aparecido Gabriel'),
(1644, 256, '_billing_company', ''),
(1645, 256, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(1646, 256, '_billing_address_2', ''),
(1647, 256, '_billing_city', 'São Paulo'),
(1648, 256, '_billing_state', 'SP'),
(1649, 256, '_billing_postcode', '08230-660'),
(1650, 256, '_billing_country', 'BR'),
(1651, 256, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1652, 256, '_billing_phone', '(11) 98518-1910'),
(1653, 256, '_shipping_first_name', 'Mauricio'),
(1654, 256, '_shipping_last_name', 'Aparecido Gabriel'),
(1655, 256, '_shipping_company', ''),
(1656, 256, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(1657, 256, '_shipping_address_2', ''),
(1658, 256, '_shipping_city', 'São Paulo'),
(1659, 256, '_shipping_state', 'SP'),
(1660, 256, '_shipping_postcode', '08230-660'),
(1661, 256, '_shipping_country', 'BR'),
(1662, 256, '_order_currency', 'BRL'),
(1663, 256, '_cart_discount', '0'),
(1664, 256, '_cart_discount_tax', '0'),
(1665, 256, '_order_shipping', '17.57'),
(1666, 256, '_order_shipping_tax', '0'),
(1667, 256, '_order_tax', '0'),
(1668, 256, '_order_total', '47.57'),
(1669, 256, '_order_version', '3.3.4'),
(1670, 256, '_prices_include_tax', 'no'),
(1671, 256, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1672, 256, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1673, 256, '_billing_persontype', '1'),
(1674, 256, '_billing_cpf', '401.877.858-99'),
(1675, 256, '_billing_cnpj', ''),
(1676, 256, '_billing_number', '05'),
(1677, 256, '_billing_neighborhood', 'Vila Verde'),
(1678, 256, '_billing_cellphone', ''),
(1679, 256, '_shipping_number', '05'),
(1680, 256, '_shipping_neighborhood', 'Vila Verde'),
(1681, 257, '_order_key', 'wc_order_5ac90fa21382b'),
(1682, 257, '_customer_user', '1'),
(1683, 257, '_payment_method', 'pagseguro'),
(1684, 257, '_payment_method_title', 'PagSeguro'),
(1685, 257, '_transaction_id', ''),
(1686, 257, '_customer_ip_address', '::1'),
(1687, 257, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1688, 257, '_created_via', 'checkout'),
(1689, 257, '_date_completed', '1523131233'),
(1690, 257, '_completed_date', '2018-04-07 17:00:33'),
(1691, 257, '_date_paid', ''),
(1692, 257, '_paid_date', ''),
(1693, 257, '_cart_hash', '60259085d1cf3e085ff93a9198d3b065'),
(1694, 257, '_billing_first_name', 'Mauricio'),
(1695, 257, '_billing_last_name', 'Aparecido Gabriel'),
(1696, 257, '_billing_company', ''),
(1697, 257, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(1698, 257, '_billing_address_2', ''),
(1699, 257, '_billing_city', 'São Paulo'),
(1700, 257, '_billing_state', 'SP'),
(1701, 257, '_billing_postcode', '08230-660'),
(1702, 257, '_billing_country', 'BR'),
(1703, 257, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(1704, 257, '_billing_phone', '(11) 98518-1910'),
(1705, 257, '_shipping_first_name', 'Mauricio'),
(1706, 257, '_shipping_last_name', 'Aparecido Gabriel'),
(1707, 257, '_shipping_company', ''),
(1708, 257, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(1709, 257, '_shipping_address_2', ''),
(1710, 257, '_shipping_city', 'São Paulo'),
(1711, 257, '_shipping_state', 'SP'),
(1712, 257, '_shipping_postcode', '08230-660'),
(1713, 257, '_shipping_country', 'BR'),
(1714, 257, '_order_currency', 'BRL'),
(1715, 257, '_cart_discount', '0'),
(1716, 257, '_cart_discount_tax', '0'),
(1717, 257, '_order_shipping', '17.57'),
(1718, 257, '_order_shipping_tax', '0'),
(1719, 257, '_order_tax', '0'),
(1720, 257, '_order_total', '47.57'),
(1721, 257, '_order_version', '3.3.4'),
(1722, 257, '_prices_include_tax', 'no'),
(1723, 257, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(1724, 257, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(1725, 257, '_billing_persontype', '1'),
(1726, 257, '_billing_cpf', '401.877.858-99'),
(1727, 257, '_billing_cnpj', ''),
(1728, 257, '_billing_number', '05'),
(1729, 257, '_billing_neighborhood', 'Vila Verde'),
(1730, 257, '_billing_cellphone', ''),
(1731, 257, '_shipping_number', '05'),
(1732, 257, '_shipping_neighborhood', 'Vila Verde'),
(1733, 257, 'E-mail do comprador', 'mauricioaparecidogabriel@gmail.com'),
(1734, 257, 'Nome do comprador', 'Mauricio Aparecido Gabriel'),
(1735, 257, 'Tipo de pagamento', 'Boleto'),
(1736, 257, 'Método de pagamento', 'Boleto Santander'),
(1737, 257, 'Parcelas', '1'),
(1738, 257, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=813dde3113a2b0752fc9d935146da165979d36d56fa441de74450a4f10e2a6db96a48e090b430e26'),
(1739, 257, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=813dde3113a2b0752fc9d935146da165979d36d56fa441de74450a4f10e2a6db96a48e090b430e26\";}'),
(1740, 257, '_recorded_sales', 'yes'),
(1741, 257, '_recorded_coupon_usage_counts', 'yes'),
(1742, 258, '_order_key', 'wc_order_5ac912c23bab2'),
(1743, 258, '_customer_user', '6'),
(1744, 258, '_payment_method', 'pagseguro'),
(1745, 258, '_payment_method_title', 'PagSeguro'),
(1746, 258, '_transaction_id', ''),
(1747, 258, '_customer_ip_address', '::1'),
(1748, 258, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1749, 258, '_created_via', 'checkout'),
(1750, 258, '_date_completed', '1523130431'),
(1751, 258, '_completed_date', '2018-04-07 16:47:11'),
(1752, 258, '_date_paid', '1523130362'),
(1753, 258, '_paid_date', '2018-04-07 16:46:02'),
(1754, 258, '_cart_hash', 'ce2bf0bac0ee4ea948d8d753afc7a55f'),
(1755, 258, '_billing_first_name', 'Reginaldo'),
(1756, 258, '_billing_last_name', 'Paiva'),
(1757, 258, '_billing_company', ''),
(1758, 258, '_billing_address_1', 'Alameda os Tuiniquins'),
(1759, 258, '_billing_address_2', 'Itaquera'),
(1760, 258, '_billing_city', 'São Paulo'),
(1761, 258, '_billing_state', 'SP'),
(1762, 258, '_billing_postcode', '04077-002'),
(1763, 258, '_billing_country', 'BR'),
(1764, 258, '_billing_email', 'mauricio.gabriel@ceb.g12.br'),
(1765, 258, '_billing_phone', '(11) 98877-6655'),
(1766, 258, '_shipping_first_name', 'Reginaldo'),
(1767, 258, '_shipping_last_name', 'Paiva'),
(1768, 258, '_shipping_company', ''),
(1769, 258, '_shipping_address_1', 'Alameda os Tuiniquins'),
(1770, 258, '_shipping_address_2', 'Itaquera'),
(1771, 258, '_shipping_city', 'São Paulo'),
(1772, 258, '_shipping_state', 'SP'),
(1773, 258, '_shipping_postcode', '04077-002'),
(1774, 258, '_shipping_country', 'BR'),
(1775, 258, '_order_currency', 'BRL'),
(1776, 258, '_cart_discount', '0'),
(1777, 258, '_cart_discount_tax', '0'),
(1778, 258, '_order_shipping', '17.6'),
(1779, 258, '_order_shipping_tax', '0'),
(1780, 258, '_order_tax', '0'),
(1781, 258, '_order_total', '49.60'),
(1782, 258, '_order_version', '3.3.4'),
(1783, 258, '_prices_include_tax', 'no'),
(1784, 258, '_billing_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR mauricio.gabriel@ceb.g12.br (11) 98877-6655 997 Planalto Paulista'),
(1785, 258, '_shipping_address_index', 'Reginaldo Paiva  Alameda os Tuiniquins Itaquera São Paulo SP 04077-002 BR 997 Planalto Paulista'),
(1794, 259, '_order_key', 'wc_order_5ac919fe08417'),
(1795, 259, '_customer_user', '6'),
(1796, 259, '_payment_method', 'pagseguro'),
(1797, 259, '_payment_method_title', 'PagSeguro'),
(1798, 259, '_transaction_id', ''),
(1799, 259, '_customer_ip_address', '::1'),
(1800, 259, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1801, 259, '_created_via', 'checkout'),
(1802, 259, '_date_completed', '1523131227'),
(1803, 259, '_completed_date', '2018-04-07 17:00:27'),
(1804, 259, '_date_paid', '1523130261'),
(1805, 259, '_paid_date', '2018-04-07 16:44:21'),
(1806, 259, '_cart_hash', '7d38ff69fc7f35aa426fa215ae86e865'),
(1807, 259, '_billing_first_name', 'Reginaldo'),
(1808, 259, '_billing_last_name', 'Paiva'),
(1809, 259, '_billing_company', ''),
(1810, 259, '_billing_address_1', 'Alameda dos Tupiniquins'),
(1811, 259, '_billing_address_2', 'Itaquera'),
(1812, 259, '_billing_city', 'São Paulo'),
(1813, 259, '_billing_state', 'SP'),
(1814, 259, '_billing_postcode', '04077-002'),
(1815, 259, '_billing_country', 'BR'),
(1816, 259, '_billing_email', 'c02984903682769878193@sandbox.pagseguro.com.br'),
(1817, 259, '_billing_phone', '(11) 98877-6655'),
(1818, 259, '_shipping_first_name', 'Reginaldo'),
(1819, 259, '_shipping_last_name', 'Paiva'),
(1820, 259, '_shipping_company', ''),
(1821, 259, '_shipping_address_1', 'Alameda dos Tupiniquins'),
(1822, 259, '_shipping_address_2', 'Itaquera'),
(1823, 259, '_shipping_city', 'São Paulo'),
(1824, 259, '_shipping_state', 'SP'),
(1825, 259, '_shipping_postcode', '04077-002'),
(1826, 259, '_shipping_country', 'BR'),
(1827, 259, '_order_currency', 'BRL'),
(1828, 259, '_cart_discount', '0'),
(1829, 259, '_cart_discount_tax', '0'),
(1830, 259, '_order_shipping', '17.65'),
(1831, 259, '_order_shipping_tax', '0'),
(1832, 259, '_order_tax', '0'),
(1833, 259, '_order_total', '52.65'),
(1834, 259, '_order_version', '3.3.4'),
(1835, 259, '_prices_include_tax', 'no'),
(1836, 259, '_billing_address_index', 'Reginaldo Paiva  Alameda dos Tupiniquins Itaquera São Paulo SP 04077-002 BR c02984903682769878193@sandbox.pagseguro.com.br (11) 98877-6655 997 Planalto Paulista'),
(1837, 259, '_shipping_address_index', 'Reginaldo Paiva  Alameda dos Tupiniquins Itaquera São Paulo SP 04077-002 BR 997 Planalto Paulista'),
(1854, 259, 'E-mail do comprador', 'c02984903682769878193@sandbox.pagseguro.com.br'),
(1855, 259, 'Nome do comprador', 'Reginaldo Paiva'),
(1856, 259, 'Tipo de pagamento', 'Cartão de Crédito'),
(1857, 259, 'Método de pagamento', 'Cartão de crédito Visa'),
(1858, 259, 'Parcelas', '2'),
(1859, 259, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:1;s:6:\"method\";s:24:\"Cartão de crédito Visa\";s:12:\"installments\";s:1:\"2\";s:4:\"link\";s:0:\"\";}'),
(1860, 259, '_recorded_sales', 'yes'),
(1861, 259, '_recorded_coupon_usage_counts', 'yes'),
(1862, 259, '_edit_lock', '1523130268:1'),
(1863, 257, '_edit_lock', '1523129268:1'),
(1864, 259, '_edit_last', '1'),
(1865, 259, '_billing_persontype', '1'),
(1866, 259, '_billing_cpf', '401.877.858-99'),
(1867, 259, '_billing_cnpj', ''),
(1868, 259, '_billing_number', '997'),
(1869, 259, '_billing_neighborhood', 'Planalto Paulista'),
(1870, 259, '_billing_cellphone', ''),
(1871, 259, '_shipping_number', '997'),
(1872, 259, '_shipping_neighborhood', 'Planalto Paulista'),
(1873, 259, '_download_permissions_granted', 'yes'),
(1874, 258, '_edit_lock', '1523130336:1'),
(1875, 258, '_edit_last', '1'),
(1884, 258, '_download_permissions_granted', 'yes'),
(1885, 258, '_recorded_sales', 'yes'),
(1886, 258, '_recorded_coupon_usage_counts', 'yes'),
(1887, 258, '_billing_persontype', '1'),
(1888, 258, '_billing_cpf', '401.877.858-99'),
(1889, 258, '_billing_cnpj', ''),
(1890, 258, '_billing_number', '997'),
(1891, 258, '_billing_neighborhood', 'Planalto Paulista'),
(1892, 258, '_billing_cellphone', ''),
(1893, 258, '_shipping_number', '997'),
(1894, 258, '_shipping_neighborhood', 'Planalto Paulista'),
(1895, 260, '_order_key', 'wc_order_5ac921839a34e'),
(1896, 260, '_customer_user', '6'),
(1897, 260, '_payment_method', 'pagseguro'),
(1898, 260, '_payment_method_title', 'PagSeguro'),
(1899, 260, '_transaction_id', ''),
(1900, 260, '_customer_ip_address', '::1'),
(1901, 260, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(1902, 260, '_created_via', 'checkout'),
(1903, 260, '_date_completed', '1523131033'),
(1904, 260, '_completed_date', '2018-04-07 16:57:13'),
(1905, 260, '_date_paid', '1523130994'),
(1906, 260, '_paid_date', '2018-04-07 16:56:34'),
(1907, 260, '_cart_hash', '4514fc160fc0b3fb543d1f270a78847d'),
(1908, 260, '_billing_first_name', 'Reginaldo'),
(1909, 260, '_billing_last_name', 'Paiva'),
(1910, 260, '_billing_company', ''),
(1911, 260, '_billing_address_1', 'Alameda dos Tupiniquins'),
(1912, 260, '_billing_address_2', 'Itaquera'),
(1913, 260, '_billing_city', 'São Paulo'),
(1914, 260, '_billing_state', 'SP'),
(1915, 260, '_billing_postcode', '04077-002'),
(1916, 260, '_billing_country', 'BR'),
(1917, 260, '_billing_email', 'mauricio.gabriel@ceb.g12.br'),
(1918, 260, '_billing_phone', '(11) 98877-6655'),
(1919, 260, '_shipping_first_name', 'Reginaldo'),
(1920, 260, '_shipping_last_name', 'Paiva'),
(1921, 260, '_shipping_company', ''),
(1922, 260, '_shipping_address_1', 'Alameda dos Tupiniquins'),
(1923, 260, '_shipping_address_2', 'Itaquera'),
(1924, 260, '_shipping_city', 'São Paulo'),
(1925, 260, '_shipping_state', 'SP'),
(1926, 260, '_shipping_postcode', '04077-002'),
(1927, 260, '_shipping_country', 'BR'),
(1928, 260, '_order_currency', 'BRL'),
(1929, 260, '_cart_discount', '0'),
(1930, 260, '_cart_discount_tax', '0'),
(1931, 260, '_order_shipping', '0'),
(1932, 260, '_order_shipping_tax', '0'),
(1933, 260, '_order_tax', '0'),
(1934, 260, '_order_total', '25.00'),
(1935, 260, '_order_version', '3.3.4'),
(1936, 260, '_prices_include_tax', 'no'),
(1937, 260, '_billing_address_index', 'Reginaldo Paiva  Alameda dos Tupiniquins Itaquera São Paulo SP 04077-002 BR mauricio.gabriel@ceb.g12.br (11) 98877-6655 997 Planalto Paulista'),
(1938, 260, '_shipping_address_index', 'Reginaldo Paiva  Alameda dos Tupiniquins Itaquera São Paulo SP 04077-002 BR 997 Planalto Paulista'),
(1947, 260, 'E-mail do comprador', 'mauricio.gabriel@ceb.g12.br'),
(1948, 260, 'Nome do comprador', 'Reginaldo Paiva'),
(1949, 260, 'Tipo de pagamento', 'Boleto'),
(1950, 260, 'Método de pagamento', 'Boleto Santander'),
(1951, 260, 'Parcelas', '1'),
(1952, 260, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=04514d174726eef9d5a6c753d08390c207360bd49ac739d9c08e557eb4cab1d6b4cdd584a6198c86'),
(1953, 260, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=04514d174726eef9d5a6c753d08390c207360bd49ac739d9c08e557eb4cab1d6b4cdd584a6198c86\";}'),
(1954, 260, '_recorded_sales', 'yes'),
(1955, 260, '_recorded_coupon_usage_counts', 'yes'),
(1956, 260, '_edit_lock', '1523131052:1'),
(1957, 260, '_edit_last', '1'),
(1966, 260, '_download_permissions_granted', 'yes'),
(1975, 260, '_billing_persontype', '1'),
(1976, 260, '_billing_cpf', '401.877.858-99'),
(1977, 260, '_billing_cnpj', ''),
(1978, 260, '_billing_number', '997'),
(1979, 260, '_billing_neighborhood', 'Planalto Paulista'),
(1980, 260, '_billing_cellphone', ''),
(1981, 260, '_shipping_number', '997'),
(1982, 260, '_shipping_neighborhood', 'Planalto Paulista'),
(1983, 257, '_download_permissions_granted', 'yes'),
(1984, 256, '_download_permissions_granted', 'yes'),
(1985, 256, '_recorded_sales', 'yes'),
(1986, 256, '_recorded_coupon_usage_counts', 'yes'),
(1987, 252, '_download_permissions_granted', 'yes'),
(1988, 250, '_download_permissions_granted', 'yes'),
(1989, 250, '_recorded_sales', 'yes'),
(1990, 250, '_recorded_coupon_usage_counts', 'yes'),
(1991, 249, '_download_permissions_granted', 'yes'),
(1992, 249, '_recorded_sales', 'yes'),
(1993, 249, '_recorded_coupon_usage_counts', 'yes'),
(1994, 199, '_download_permissions_granted', 'yes'),
(1995, 199, '_recorded_sales', 'yes'),
(1996, 199, '_recorded_coupon_usage_counts', 'yes'),
(1997, 119, '_download_permissions_granted', 'yes'),
(1998, 116, '_download_permissions_granted', 'yes'),
(1999, 116, '_recorded_sales', 'yes'),
(2000, 116, '_recorded_coupon_usage_counts', 'yes'),
(2001, 115, '_download_permissions_granted', 'yes'),
(2002, 115, '_recorded_sales', 'yes'),
(2003, 115, '_recorded_coupon_usage_counts', 'yes'),
(2004, 114, '_download_permissions_granted', 'yes'),
(2005, 114, '_recorded_sales', 'yes'),
(2006, 114, '_recorded_coupon_usage_counts', 'yes'),
(2045, 276, '_menu_item_type', 'post_type'),
(2046, 276, '_menu_item_menu_item_parent', '0'),
(2047, 276, '_menu_item_object_id', '209'),
(2048, 276, '_menu_item_object', 'page'),
(2049, 276, '_menu_item_target', ''),
(2050, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2051, 276, '_menu_item_xfn', ''),
(2052, 276, '_menu_item_url', ''),
(2053, 278, '_menu_item_type', 'taxonomy'),
(2054, 278, '_menu_item_menu_item_parent', '0'),
(2055, 278, '_menu_item_object_id', '22'),
(2056, 278, '_menu_item_object', 'product_cat'),
(2057, 278, '_menu_item_target', ''),
(2058, 278, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2059, 278, '_menu_item_xfn', ''),
(2060, 278, '_menu_item_url', ''),
(2062, 279, '_menu_item_type', 'taxonomy'),
(2063, 279, '_menu_item_menu_item_parent', '0'),
(2064, 279, '_menu_item_object_id', '23'),
(2065, 279, '_menu_item_object', 'product_cat'),
(2066, 279, '_menu_item_target', ''),
(2067, 279, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2068, 279, '_menu_item_xfn', ''),
(2069, 279, '_menu_item_url', ''),
(2071, 280, '_menu_item_type', 'taxonomy'),
(2072, 280, '_menu_item_menu_item_parent', '0'),
(2073, 280, '_menu_item_object_id', '24'),
(2074, 280, '_menu_item_object', 'product_cat'),
(2075, 280, '_menu_item_target', ''),
(2076, 280, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2077, 280, '_menu_item_xfn', ''),
(2078, 280, '_menu_item_url', ''),
(2080, 281, '_menu_item_type', 'taxonomy'),
(2081, 281, '_menu_item_menu_item_parent', '0'),
(2082, 281, '_menu_item_object_id', '21'),
(2083, 281, '_menu_item_object', 'product_cat'),
(2084, 281, '_menu_item_target', ''),
(2085, 281, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2086, 281, '_menu_item_xfn', ''),
(2087, 281, '_menu_item_url', ''),
(2089, 282, '_menu_item_type', 'post_type'),
(2090, 282, '_menu_item_menu_item_parent', '0'),
(2091, 282, '_menu_item_object_id', '74'),
(2092, 282, '_menu_item_object', 'page'),
(2093, 282, '_menu_item_target', ''),
(2094, 282, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2095, 282, '_menu_item_xfn', ''),
(2096, 282, '_menu_item_url', ''),
(2097, 282, '_menu_item_orphaned', '1523924220'),
(2098, 283, '_menu_item_type', 'custom'),
(2099, 283, '_menu_item_menu_item_parent', '0'),
(2100, 283, '_menu_item_object_id', '283'),
(2101, 283, '_menu_item_object', 'custom'),
(2102, 283, '_menu_item_target', ''),
(2103, 283, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2104, 283, '_menu_item_xfn', ''),
(2105, 283, '_menu_item_url', 'http://localhost:8080/magicbeans'),
(2116, 284, '_wc_review_count', '0'),
(2117, 284, '_wc_rating_count', 'a:0:{}'),
(2118, 284, '_wc_average_rating', '0'),
(2119, 284, '_edit_lock', '1523925210:1'),
(2120, 284, '_edit_last', '1'),
(2124, 284, '_sku', ''),
(2125, 284, '_regular_price', '45'),
(2126, 284, '_sale_price', ''),
(2127, 284, '_sale_price_dates_from', ''),
(2128, 284, '_sale_price_dates_to', ''),
(2129, 284, 'total_sales', '0'),
(2130, 284, '_tax_status', 'taxable'),
(2131, 284, '_tax_class', ''),
(2132, 284, '_manage_stock', 'no'),
(2133, 284, '_backorders', 'no'),
(2134, 284, '_sold_individually', 'no'),
(2135, 284, '_weight', ''),
(2136, 284, '_length', ''),
(2137, 284, '_width', ''),
(2138, 284, '_height', ''),
(2139, 284, '_upsell_ids', 'a:0:{}'),
(2140, 284, '_crosssell_ids', 'a:0:{}'),
(2141, 284, '_purchase_note', ''),
(2142, 284, '_default_attributes', 'a:0:{}'),
(2143, 284, '_virtual', 'no'),
(2144, 284, '_downloadable', 'no'),
(2145, 284, '_product_image_gallery', ''),
(2146, 284, '_download_limit', '-1'),
(2147, 284, '_download_expiry', '-1'),
(2148, 284, '_stock', NULL),
(2149, 284, '_stock_status', 'instock'),
(2150, 284, '_product_version', '3.3.5'),
(2151, 284, '_price', '45'),
(2152, 286, '_wc_review_count', '0'),
(2153, 286, '_wc_rating_count', 'a:0:{}'),
(2154, 286, '_wc_average_rating', '0'),
(2155, 286, '_edit_lock', '1523925328:1'),
(2156, 286, '_edit_last', '1'),
(2160, 286, '_sku', ''),
(2161, 286, '_regular_price', '45'),
(2162, 286, '_sale_price', ''),
(2163, 286, '_sale_price_dates_from', ''),
(2164, 286, '_sale_price_dates_to', ''),
(2165, 286, 'total_sales', '0'),
(2166, 286, '_tax_status', 'taxable'),
(2167, 286, '_tax_class', ''),
(2168, 286, '_manage_stock', 'no'),
(2169, 286, '_backorders', 'no'),
(2170, 286, '_sold_individually', 'no'),
(2171, 286, '_weight', ''),
(2172, 286, '_length', ''),
(2173, 286, '_width', ''),
(2174, 286, '_height', ''),
(2175, 286, '_upsell_ids', 'a:0:{}'),
(2176, 286, '_crosssell_ids', 'a:0:{}'),
(2177, 286, '_purchase_note', ''),
(2178, 286, '_default_attributes', 'a:0:{}'),
(2179, 286, '_virtual', 'no'),
(2180, 286, '_downloadable', 'no'),
(2181, 286, '_product_image_gallery', ''),
(2182, 286, '_download_limit', '-1'),
(2183, 286, '_download_expiry', '-1'),
(2184, 286, '_stock', NULL),
(2185, 286, '_stock_status', 'instock'),
(2186, 286, '_product_version', '3.3.5'),
(2187, 286, '_price', '45'),
(2188, 288, '_wc_review_count', '0'),
(2189, 288, '_wc_rating_count', 'a:0:{}'),
(2190, 288, '_wc_average_rating', '0'),
(2191, 288, '_edit_lock', '1523929653:1'),
(2192, 288, '_edit_last', '1'),
(2196, 288, '_sku', ''),
(2197, 288, '_regular_price', '45'),
(2198, 288, '_sale_price', ''),
(2199, 288, '_sale_price_dates_from', ''),
(2200, 288, '_sale_price_dates_to', ''),
(2201, 288, 'total_sales', '0'),
(2202, 288, '_tax_status', 'taxable'),
(2203, 288, '_tax_class', ''),
(2204, 288, '_manage_stock', 'no'),
(2205, 288, '_backorders', 'no'),
(2206, 288, '_sold_individually', 'no'),
(2207, 288, '_weight', ''),
(2208, 288, '_length', ''),
(2209, 288, '_width', ''),
(2210, 288, '_height', ''),
(2211, 288, '_upsell_ids', 'a:0:{}'),
(2212, 288, '_crosssell_ids', 'a:0:{}'),
(2213, 288, '_purchase_note', ''),
(2214, 288, '_default_attributes', 'a:0:{}'),
(2215, 288, '_virtual', 'no'),
(2216, 288, '_downloadable', 'no'),
(2217, 288, '_product_image_gallery', ''),
(2218, 288, '_download_limit', '-1'),
(2219, 288, '_download_expiry', '-1'),
(2220, 288, '_stock', NULL),
(2221, 288, '_stock_status', 'instock'),
(2222, 288, '_product_version', '3.3.5'),
(2223, 288, '_price', '45'),
(2224, 290, '_wc_review_count', '0'),
(2225, 290, '_wc_rating_count', 'a:0:{}'),
(2226, 290, '_wc_average_rating', '0'),
(2227, 290, '_edit_lock', '1523926934:1'),
(2228, 290, '_edit_last', '1'),
(2232, 290, '_sku', ''),
(2233, 290, '_regular_price', '37'),
(2234, 290, '_sale_price', ''),
(2235, 290, '_sale_price_dates_from', ''),
(2236, 290, '_sale_price_dates_to', ''),
(2237, 290, 'total_sales', '0'),
(2238, 290, '_tax_status', 'taxable'),
(2239, 290, '_tax_class', ''),
(2240, 290, '_manage_stock', 'no'),
(2241, 290, '_backorders', 'no'),
(2242, 290, '_sold_individually', 'no'),
(2243, 290, '_weight', ''),
(2244, 290, '_length', ''),
(2245, 290, '_width', ''),
(2246, 290, '_height', ''),
(2247, 290, '_upsell_ids', 'a:0:{}'),
(2248, 290, '_crosssell_ids', 'a:0:{}'),
(2249, 290, '_purchase_note', ''),
(2250, 290, '_default_attributes', 'a:0:{}'),
(2251, 290, '_virtual', 'no'),
(2252, 290, '_downloadable', 'no'),
(2253, 290, '_product_image_gallery', ''),
(2254, 290, '_download_limit', '-1'),
(2255, 290, '_download_expiry', '-1'),
(2256, 290, '_stock', NULL),
(2257, 290, '_stock_status', 'instock'),
(2258, 290, '_product_version', '3.3.5'),
(2259, 290, '_price', '37'),
(2260, 292, '_wc_review_count', '0'),
(2261, 292, '_wc_rating_count', 'a:0:{}'),
(2262, 292, '_wc_average_rating', '0'),
(2263, 292, '_edit_lock', '1523927007:1'),
(2264, 292, '_edit_last', '1'),
(2265, 293, '_wp_attached_file', '2018/04/camiseta_goku.png'),
(2266, 293, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:985;s:6:\"height\";i:985;s:4:\"file\";s:25:\"2018/04/camiseta_goku.png\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"camiseta_goku-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"camiseta_goku-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x400\";a:4:{s:4:\"file\";s:25:\"camiseta_goku-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2267, 292, '_thumbnail_id', '293'),
(2268, 292, '_sku', ''),
(2269, 292, '_regular_price', '35'),
(2270, 292, '_sale_price', ''),
(2271, 292, '_sale_price_dates_from', ''),
(2272, 292, '_sale_price_dates_to', ''),
(2273, 292, 'total_sales', '1'),
(2274, 292, '_tax_status', 'taxable'),
(2275, 292, '_tax_class', ''),
(2276, 292, '_manage_stock', 'no'),
(2277, 292, '_backorders', 'no'),
(2278, 292, '_sold_individually', 'no'),
(2279, 292, '_weight', ''),
(2280, 292, '_length', ''),
(2281, 292, '_width', ''),
(2282, 292, '_height', ''),
(2283, 292, '_upsell_ids', 'a:0:{}'),
(2284, 292, '_crosssell_ids', 'a:0:{}'),
(2285, 292, '_purchase_note', ''),
(2286, 292, '_default_attributes', 'a:0:{}'),
(2287, 292, '_virtual', 'no'),
(2288, 292, '_downloadable', 'no'),
(2289, 292, '_product_image_gallery', ''),
(2290, 292, '_download_limit', '-1'),
(2291, 292, '_download_expiry', '-1'),
(2292, 292, '_stock', NULL),
(2293, 292, '_stock_status', 'instock'),
(2294, 292, '_product_version', '3.3.5'),
(2295, 292, '_price', '35'),
(2296, 294, '_wc_review_count', '0'),
(2297, 294, '_wc_rating_count', 'a:0:{}'),
(2298, 294, '_wc_average_rating', '0'),
(2299, 294, '_edit_lock', '1523927053:1'),
(2300, 295, '_wp_attached_file', '2018/04/camiseta_cavaleiros.png'),
(2301, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:31:\"2018/04/camiseta_cavaleiros.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"camiseta_cavaleiros-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"camiseta_cavaleiros-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_cavaleiros-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2302, 294, '_edit_last', '1'),
(2303, 294, '_thumbnail_id', '295'),
(2304, 294, '_sku', ''),
(2305, 294, '_regular_price', '35'),
(2306, 294, '_sale_price', ''),
(2307, 294, '_sale_price_dates_from', ''),
(2308, 294, '_sale_price_dates_to', ''),
(2309, 294, 'total_sales', '0'),
(2310, 294, '_tax_status', 'taxable'),
(2311, 294, '_tax_class', ''),
(2312, 294, '_manage_stock', 'no'),
(2313, 294, '_backorders', 'no'),
(2314, 294, '_sold_individually', 'no'),
(2315, 294, '_weight', ''),
(2316, 294, '_length', ''),
(2317, 294, '_width', ''),
(2318, 294, '_height', ''),
(2319, 294, '_upsell_ids', 'a:0:{}'),
(2320, 294, '_crosssell_ids', 'a:0:{}'),
(2321, 294, '_purchase_note', ''),
(2322, 294, '_default_attributes', 'a:0:{}'),
(2323, 294, '_virtual', 'no'),
(2324, 294, '_downloadable', 'no'),
(2325, 294, '_product_image_gallery', ''),
(2326, 294, '_download_limit', '-1'),
(2327, 294, '_download_expiry', '-1'),
(2328, 294, '_stock', NULL),
(2329, 294, '_stock_status', 'instock'),
(2330, 294, '_product_version', '3.3.5'),
(2331, 294, '_price', '35'),
(2332, 296, '_wc_review_count', '0'),
(2333, 296, '_wc_rating_count', 'a:0:{}'),
(2334, 296, '_wc_average_rating', '0'),
(2335, 296, '_edit_lock', '1523927169:1'),
(2336, 296, '_edit_last', '1'),
(2340, 296, '_sku', ''),
(2341, 296, '_regular_price', '15'),
(2342, 296, '_sale_price', '13'),
(2343, 296, '_sale_price_dates_from', ''),
(2344, 296, '_sale_price_dates_to', ''),
(2345, 296, 'total_sales', '0'),
(2346, 296, '_tax_status', 'taxable'),
(2347, 296, '_tax_class', ''),
(2348, 296, '_manage_stock', 'no'),
(2349, 296, '_backorders', 'no'),
(2350, 296, '_sold_individually', 'no'),
(2351, 296, '_weight', ''),
(2352, 296, '_length', ''),
(2353, 296, '_width', ''),
(2354, 296, '_height', ''),
(2355, 296, '_upsell_ids', 'a:0:{}'),
(2356, 296, '_crosssell_ids', 'a:0:{}'),
(2357, 296, '_purchase_note', ''),
(2358, 296, '_default_attributes', 'a:0:{}'),
(2359, 296, '_virtual', 'no'),
(2360, 296, '_downloadable', 'no'),
(2361, 296, '_product_image_gallery', ''),
(2362, 296, '_download_limit', '-1'),
(2363, 296, '_download_expiry', '-1'),
(2364, 296, '_stock', NULL),
(2365, 296, '_stock_status', 'instock'),
(2366, 296, '_product_version', '3.3.5'),
(2367, 296, '_price', '13'),
(2368, 298, '_wc_review_count', '0'),
(2369, 298, '_wc_rating_count', 'a:0:{}'),
(2370, 298, '_wc_average_rating', '0'),
(2372, 298, '_edit_lock', '1523929631:1'),
(2374, 298, '_edit_last', '1'),
(2376, 298, '_sku', ''),
(2377, 298, '_regular_price', '42'),
(2378, 298, '_sale_price', ''),
(2379, 298, '_sale_price_dates_from', ''),
(2380, 298, '_sale_price_dates_to', ''),
(2381, 298, 'total_sales', '0'),
(2382, 298, '_tax_status', 'taxable'),
(2383, 298, '_tax_class', ''),
(2384, 298, '_manage_stock', 'no'),
(2385, 298, '_backorders', 'no'),
(2386, 298, '_sold_individually', 'no'),
(2387, 298, '_weight', ''),
(2388, 298, '_length', ''),
(2389, 298, '_width', ''),
(2390, 298, '_height', ''),
(2391, 298, '_upsell_ids', 'a:0:{}'),
(2392, 298, '_crosssell_ids', 'a:0:{}'),
(2393, 298, '_purchase_note', ''),
(2394, 298, '_default_attributes', 'a:0:{}'),
(2395, 298, '_virtual', 'no'),
(2396, 298, '_downloadable', 'no'),
(2397, 298, '_product_image_gallery', ''),
(2398, 298, '_download_limit', '-1'),
(2399, 298, '_download_expiry', '-1'),
(2400, 298, '_stock', NULL),
(2401, 298, '_stock_status', 'instock'),
(2402, 298, '_product_version', '3.3.5'),
(2403, 298, '_price', '42'),
(2404, 135, '_wp_desired_post_slug', 'slider-133-image-2'),
(2405, 136, '_wp_desired_post_slug', 'slider-133-image-3'),
(2406, 300, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(2407, 300, '_wp_desired_post_slug', 'new-slideshow-2'),
(2408, 301, '_thumbnail_id', '293'),
(2409, 301, 'ml-slider_type', 'image'),
(2410, 301, 'ml-slider_inherit_image_caption', '1'),
(2411, 301, 'ml-slider_inherit_image_title', '1'),
(2412, 301, 'ml-slider_inherit_image_alt', '1'),
(2413, 293, '_wp_attachment_backup_sizes', 'a:2:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsmagicbeans/wp-content/uploads/2018/04/camiseta_goku-700x300.png\";s:4:\"file\";s:25:\"camiseta_goku-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-700x400\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsmagicbeans/wp-content/uploads/2018/04/camiseta_goku-700x400.png\";s:4:\"file\";s:25:\"camiseta_goku-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(2415, 302, 'ml-slider_type', 'image'),
(2416, 302, 'ml-slider_inherit_image_caption', '1'),
(2417, 302, 'ml-slider_inherit_image_title', '1'),
(2418, 302, 'ml-slider_inherit_image_alt', '1'),
(2423, 304, 'ml-slider_type', 'image'),
(2424, 304, 'ml-slider_inherit_image_caption', '1'),
(2425, 304, 'ml-slider_inherit_image_title', '1'),
(2426, 304, 'ml-slider_inherit_image_alt', '1'),
(2430, 301, 'ml-slider_crop_position', 'center-center'),
(2431, 301, '_wp_attachment_image_alt', ''),
(2432, 302, 'ml-slider_crop_position', 'center-center'),
(2433, 302, '_wp_attachment_image_alt', ''),
(2434, 304, 'ml-slider_crop_position', 'center-center'),
(2435, 304, '_wp_attachment_image_alt', ''),
(2449, 311, '_menu_item_type', 'taxonomy'),
(2450, 311, '_menu_item_menu_item_parent', '0'),
(2451, 311, '_menu_item_object_id', '26'),
(2452, 311, '_menu_item_object', 'product_cat'),
(2453, 311, '_menu_item_target', ''),
(2454, 311, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2455, 311, '_menu_item_xfn', ''),
(2456, 311, '_menu_item_url', ''),
(2458, 312, '_order_key', 'wc_order_5ae91d59c9b72'),
(2459, 312, '_customer_user', '1'),
(2460, 312, '_payment_method', 'pagseguro'),
(2461, 312, '_payment_method_title', 'PagSeguro'),
(2462, 312, '_transaction_id', ''),
(2463, 312, '_customer_ip_address', '::1'),
(2464, 312, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(2465, 312, '_created_via', 'checkout'),
(2466, 312, '_date_completed', ''),
(2467, 312, '_completed_date', ''),
(2468, 312, '_date_paid', ''),
(2469, 312, '_paid_date', ''),
(2470, 312, '_cart_hash', 'e4577470d10dc818a828a64250ad9952'),
(2471, 312, '_billing_first_name', 'Mauricio'),
(2472, 312, '_billing_last_name', 'Aparecido Gabriel'),
(2473, 312, '_billing_company', ''),
(2474, 312, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(2475, 312, '_billing_address_2', ''),
(2476, 312, '_billing_city', 'São Paulo'),
(2477, 312, '_billing_state', 'SP'),
(2478, 312, '_billing_postcode', '08230-660'),
(2479, 312, '_billing_country', 'BR'),
(2480, 312, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(2481, 312, '_billing_phone', '(11) 98518-1910'),
(2482, 312, '_shipping_first_name', 'Mauricio'),
(2483, 312, '_shipping_last_name', 'Aparecido Gabriel'),
(2484, 312, '_shipping_company', ''),
(2485, 312, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(2486, 312, '_shipping_address_2', ''),
(2487, 312, '_shipping_city', 'São Paulo'),
(2488, 312, '_shipping_state', 'SP'),
(2489, 312, '_shipping_postcode', '08230-660'),
(2490, 312, '_shipping_country', 'BR'),
(2491, 312, '_order_currency', 'BRL'),
(2492, 312, '_cart_discount', '0'),
(2493, 312, '_cart_discount_tax', '0'),
(2494, 312, '_order_shipping', '0'),
(2495, 312, '_order_shipping_tax', '0'),
(2496, 312, '_order_tax', '0'),
(2497, 312, '_order_total', '35.00'),
(2498, 312, '_order_version', '3.3.5'),
(2499, 312, '_prices_include_tax', 'no'),
(2500, 312, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(2501, 312, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(2502, 312, '_billing_persontype', '1'),
(2503, 312, '_billing_cpf', '401.877.858-99'),
(2504, 312, '_billing_cnpj', ''),
(2505, 312, '_billing_number', '05'),
(2506, 312, '_billing_neighborhood', 'Vila Verde'),
(2507, 312, '_billing_cellphone', ''),
(2508, 312, '_shipping_number', '05'),
(2509, 312, '_shipping_neighborhood', 'Vila Verde'),
(2511, 312, 'E-mail do comprador', 'mauricioaparecidogabriel@gmail.com'),
(2512, 312, 'Nome do comprador', 'Mauricio Aparecido Gabriel'),
(2513, 312, 'Tipo de pagamento', 'Boleto'),
(2514, 312, 'Método de pagamento', 'Boleto Santander'),
(2515, 312, 'Parcelas', '1'),
(2516, 312, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=15215c1ca396639dc9038ddc7443ed565abe33e956582905e9c439c68340a8db1cbf0973b2641f7d'),
(2517, 312, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=15215c1ca396639dc9038ddc7443ed565abe33e956582905e9c439c68340a8db1cbf0973b2641f7d\";}'),
(2518, 312, '_recorded_sales', 'yes'),
(2519, 312, '_recorded_coupon_usage_counts', 'yes'),
(2520, 312, '_edit_lock', '1525227878:1'),
(2521, 313, '_wc_review_count', '0'),
(2522, 313, '_wc_rating_count', 'a:0:{}'),
(2523, 313, '_wc_average_rating', '0'),
(2524, 313, '_edit_lock', '1525228017:1'),
(2525, 313, '_edit_last', '1'),
(2526, 314, '_wp_attached_file', '2018/05/kit_marvel_shot.jpg'),
(2527, 314, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:384;s:6:\"height\";i:354;s:4:\"file\";s:27:\"2018/05/kit_marvel_shot.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"kit_marvel_shot-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"kit_marvel_shot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"kit_marvel_shot-300x277.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"kit_marvel_shot-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"kit_marvel_shot-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"kit_marvel_shot-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:8:\"Mauricio\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1525217001\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2528, 313, '_thumbnail_id', '314'),
(2529, 313, '_sku', ''),
(2530, 313, '_regular_price', '67.80'),
(2531, 313, '_sale_price', ''),
(2532, 313, '_sale_price_dates_from', ''),
(2533, 313, '_sale_price_dates_to', ''),
(2534, 313, 'total_sales', '1'),
(2535, 313, '_tax_status', 'taxable'),
(2536, 313, '_tax_class', ''),
(2537, 313, '_manage_stock', 'no'),
(2538, 313, '_backorders', 'no'),
(2539, 313, '_sold_individually', 'no'),
(2540, 313, '_weight', ''),
(2541, 313, '_length', ''),
(2542, 313, '_width', ''),
(2543, 313, '_height', ''),
(2544, 313, '_upsell_ids', 'a:0:{}'),
(2545, 313, '_crosssell_ids', 'a:0:{}');
INSERT INTO `mb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2546, 313, '_purchase_note', ''),
(2547, 313, '_default_attributes', 'a:0:{}'),
(2548, 313, '_virtual', 'no'),
(2549, 313, '_downloadable', 'no'),
(2550, 313, '_product_image_gallery', ''),
(2551, 313, '_download_limit', '-1'),
(2552, 313, '_download_expiry', '-1'),
(2553, 313, '_stock', NULL),
(2554, 313, '_stock_status', 'instock'),
(2555, 313, '_product_version', '3.3.5'),
(2556, 313, '_price', '67.80'),
(2557, 315, '_wc_review_count', '0'),
(2558, 315, '_wc_rating_count', 'a:0:{}'),
(2559, 315, '_wc_average_rating', '0'),
(2560, 315, '_edit_lock', '1525228075:1'),
(2561, 315, '_edit_last', '1'),
(2565, 315, '_sku', ''),
(2566, 315, '_regular_price', '35'),
(2567, 315, '_sale_price', ''),
(2568, 315, '_sale_price_dates_from', ''),
(2569, 315, '_sale_price_dates_to', ''),
(2570, 315, 'total_sales', '0'),
(2571, 315, '_tax_status', 'taxable'),
(2572, 315, '_tax_class', ''),
(2573, 315, '_manage_stock', 'no'),
(2574, 315, '_backorders', 'no'),
(2575, 315, '_sold_individually', 'no'),
(2576, 315, '_weight', ''),
(2577, 315, '_length', ''),
(2578, 315, '_width', ''),
(2579, 315, '_height', ''),
(2580, 315, '_upsell_ids', 'a:0:{}'),
(2581, 315, '_crosssell_ids', 'a:0:{}'),
(2582, 315, '_purchase_note', ''),
(2583, 315, '_default_attributes', 'a:0:{}'),
(2584, 315, '_virtual', 'no'),
(2585, 315, '_downloadable', 'no'),
(2586, 315, '_product_image_gallery', ''),
(2587, 315, '_download_limit', '-1'),
(2588, 315, '_download_expiry', '-1'),
(2589, 315, '_stock', NULL),
(2590, 315, '_stock_status', 'instock'),
(2591, 315, '_product_version', '3.3.5'),
(2592, 315, '_price', '35'),
(2593, 317, '_wc_review_count', '0'),
(2594, 317, '_wc_rating_count', 'a:0:{}'),
(2595, 317, '_wc_average_rating', '0'),
(2596, 317, '_edit_lock', '1525228172:1'),
(2597, 317, '_edit_last', '1'),
(2601, 317, '_sku', ''),
(2602, 317, '_regular_price', '35'),
(2603, 317, '_sale_price', '33.50'),
(2604, 317, '_sale_price_dates_from', ''),
(2605, 317, '_sale_price_dates_to', ''),
(2606, 317, 'total_sales', '0'),
(2607, 317, '_tax_status', 'taxable'),
(2608, 317, '_tax_class', ''),
(2609, 317, '_manage_stock', 'no'),
(2610, 317, '_backorders', 'no'),
(2611, 317, '_sold_individually', 'no'),
(2612, 317, '_weight', ''),
(2613, 317, '_length', ''),
(2614, 317, '_width', ''),
(2615, 317, '_height', ''),
(2616, 317, '_upsell_ids', 'a:0:{}'),
(2617, 317, '_crosssell_ids', 'a:0:{}'),
(2618, 317, '_purchase_note', ''),
(2619, 317, '_default_attributes', 'a:0:{}'),
(2620, 317, '_virtual', 'no'),
(2621, 317, '_downloadable', 'no'),
(2622, 317, '_product_image_gallery', ''),
(2623, 317, '_download_limit', '-1'),
(2624, 317, '_download_expiry', '-1'),
(2625, 317, '_stock', NULL),
(2626, 317, '_stock_status', 'instock'),
(2627, 317, '_product_version', '3.3.5'),
(2628, 317, '_price', '33.50'),
(2629, 319, '_wc_review_count', '0'),
(2630, 319, '_wc_rating_count', 'a:0:{}'),
(2631, 319, '_wc_average_rating', '0'),
(2632, 319, '_edit_lock', '1525228305:1'),
(2633, 319, '_edit_last', '1'),
(2637, 319, '_sku', ''),
(2638, 319, '_regular_price', '98.70'),
(2639, 319, '_sale_price', ''),
(2640, 319, '_sale_price_dates_from', ''),
(2641, 319, '_sale_price_dates_to', ''),
(2642, 319, 'total_sales', '1'),
(2643, 319, '_tax_status', 'taxable'),
(2644, 319, '_tax_class', ''),
(2645, 319, '_manage_stock', 'no'),
(2646, 319, '_backorders', 'no'),
(2647, 319, '_sold_individually', 'no'),
(2648, 319, '_weight', ''),
(2649, 319, '_length', ''),
(2650, 319, '_width', ''),
(2651, 319, '_height', ''),
(2652, 319, '_upsell_ids', 'a:0:{}'),
(2653, 319, '_crosssell_ids', 'a:0:{}'),
(2654, 319, '_purchase_note', ''),
(2655, 319, '_default_attributes', 'a:0:{}'),
(2656, 319, '_virtual', 'no'),
(2657, 319, '_downloadable', 'no'),
(2658, 319, '_product_image_gallery', ''),
(2659, 319, '_download_limit', '-1'),
(2660, 319, '_download_expiry', '-1'),
(2661, 319, '_stock', NULL),
(2662, 319, '_stock_status', 'instock'),
(2663, 319, '_product_version', '3.3.5'),
(2664, 319, '_price', '98.70'),
(2665, 321, '_wc_review_count', '0'),
(2666, 321, '_wc_rating_count', 'a:0:{}'),
(2667, 321, '_wc_average_rating', '0'),
(2668, 321, '_edit_lock', '1525228394:1'),
(2669, 321, '_edit_last', '1'),
(2673, 321, '_sku', ''),
(2674, 321, '_regular_price', '42'),
(2675, 321, '_sale_price', '39.90'),
(2676, 321, '_sale_price_dates_from', ''),
(2677, 321, '_sale_price_dates_to', ''),
(2678, 321, 'total_sales', '0'),
(2679, 321, '_tax_status', 'taxable'),
(2680, 321, '_tax_class', ''),
(2681, 321, '_manage_stock', 'no'),
(2682, 321, '_backorders', 'no'),
(2683, 321, '_sold_individually', 'no'),
(2684, 321, '_weight', ''),
(2685, 321, '_length', ''),
(2686, 321, '_width', ''),
(2687, 321, '_height', ''),
(2688, 321, '_upsell_ids', 'a:0:{}'),
(2689, 321, '_crosssell_ids', 'a:0:{}'),
(2690, 321, '_purchase_note', ''),
(2691, 321, '_default_attributes', 'a:0:{}'),
(2692, 321, '_virtual', 'no'),
(2693, 321, '_downloadable', 'no'),
(2694, 321, '_product_image_gallery', ''),
(2695, 321, '_download_limit', '-1'),
(2696, 321, '_download_expiry', '-1'),
(2697, 321, '_stock', NULL),
(2698, 321, '_stock_status', 'instock'),
(2699, 321, '_product_version', '3.3.5'),
(2700, 321, '_price', '39.90'),
(2701, 323, '_wc_review_count', '0'),
(2702, 323, '_wc_rating_count', 'a:0:{}'),
(2703, 323, '_wc_average_rating', '0'),
(2704, 323, '_edit_lock', '1525228473:1'),
(2705, 323, '_edit_last', '1'),
(2706, 324, '_wp_attached_file', '2018/05/camiseta.jpg'),
(2707, 324, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1182;s:4:\"file\";s:20:\"2018/05/camiseta.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"camiseta-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"camiseta-416x410.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"camiseta-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"camiseta-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"camiseta-768x756.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:756;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"camiseta-1024x1009.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1009;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"camiseta-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"camiseta-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"camiseta-416x410.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"camiseta-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2708, 323, '_thumbnail_id', '324'),
(2709, 323, '_sku', ''),
(2710, 323, '_regular_price', '30'),
(2711, 323, '_sale_price', ''),
(2712, 323, '_sale_price_dates_from', ''),
(2713, 323, '_sale_price_dates_to', ''),
(2714, 323, 'total_sales', '0'),
(2715, 323, '_tax_status', 'taxable'),
(2716, 323, '_tax_class', ''),
(2717, 323, '_manage_stock', 'no'),
(2718, 323, '_backorders', 'no'),
(2719, 323, '_sold_individually', 'no'),
(2720, 323, '_weight', ''),
(2721, 323, '_length', ''),
(2722, 323, '_width', ''),
(2723, 323, '_height', ''),
(2724, 323, '_upsell_ids', 'a:0:{}'),
(2725, 323, '_crosssell_ids', 'a:0:{}'),
(2726, 323, '_purchase_note', ''),
(2727, 323, '_default_attributes', 'a:0:{}'),
(2728, 323, '_virtual', 'no'),
(2729, 323, '_downloadable', 'no'),
(2730, 323, '_product_image_gallery', ''),
(2731, 323, '_download_limit', '-1'),
(2732, 323, '_download_expiry', '-1'),
(2733, 323, '_stock', NULL),
(2734, 323, '_stock_status', 'instock'),
(2735, 323, '_product_version', '3.3.5'),
(2736, 323, '_price', '30'),
(2737, 325, '_wc_review_count', '0'),
(2738, 325, '_wc_rating_count', 'a:0:{}'),
(2739, 325, '_wc_average_rating', '0'),
(2740, 325, '_edit_lock', '1525228531:1'),
(2741, 325, '_edit_last', '1'),
(2742, 326, '_wp_attached_file', '2018/05/camiseta_iron.jpg'),
(2743, 326, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:555;s:4:\"file\";s:25:\"2018/05/camiseta_iron.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"camiseta_iron-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-416x385.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-300x278.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"camiseta_iron-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-416x385.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"camiseta_iron-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2744, 325, '_thumbnail_id', '326'),
(2745, 325, '_sku', ''),
(2746, 325, '_regular_price', '32'),
(2747, 325, '_sale_price', ''),
(2748, 325, '_sale_price_dates_from', ''),
(2749, 325, '_sale_price_dates_to', ''),
(2750, 325, 'total_sales', '0'),
(2751, 325, '_tax_status', 'taxable'),
(2752, 325, '_tax_class', ''),
(2753, 325, '_manage_stock', 'no'),
(2754, 325, '_backorders', 'no'),
(2755, 325, '_sold_individually', 'no'),
(2756, 325, '_weight', ''),
(2757, 325, '_length', ''),
(2758, 325, '_width', ''),
(2759, 325, '_height', ''),
(2760, 325, '_upsell_ids', 'a:0:{}'),
(2761, 325, '_crosssell_ids', 'a:0:{}'),
(2762, 325, '_purchase_note', ''),
(2763, 325, '_default_attributes', 'a:0:{}'),
(2764, 325, '_virtual', 'no'),
(2765, 325, '_downloadable', 'no'),
(2766, 325, '_product_image_gallery', ''),
(2767, 325, '_download_limit', '-1'),
(2768, 325, '_download_expiry', '-1'),
(2769, 325, '_stock', NULL),
(2770, 325, '_stock_status', 'instock'),
(2771, 325, '_product_version', '3.3.5'),
(2772, 325, '_price', '32'),
(2773, 327, '_wc_review_count', '0'),
(2774, 327, '_wc_rating_count', 'a:0:{}'),
(2775, 327, '_wc_average_rating', '0'),
(2776, 327, '_edit_lock', '1525228601:1'),
(2777, 327, '_edit_last', '1'),
(2781, 327, '_sku', ''),
(2782, 327, '_regular_price', '34'),
(2783, 327, '_sale_price', ''),
(2784, 327, '_sale_price_dates_from', ''),
(2785, 327, '_sale_price_dates_to', ''),
(2786, 327, 'total_sales', '0'),
(2787, 327, '_tax_status', 'taxable'),
(2788, 327, '_tax_class', ''),
(2789, 327, '_manage_stock', 'no'),
(2790, 327, '_backorders', 'no'),
(2791, 327, '_sold_individually', 'no'),
(2792, 327, '_weight', ''),
(2793, 327, '_length', ''),
(2794, 327, '_width', ''),
(2795, 327, '_height', ''),
(2796, 327, '_upsell_ids', 'a:0:{}'),
(2797, 327, '_crosssell_ids', 'a:0:{}'),
(2798, 327, '_purchase_note', ''),
(2799, 327, '_default_attributes', 'a:0:{}'),
(2800, 327, '_virtual', 'no'),
(2801, 327, '_downloadable', 'no'),
(2802, 327, '_product_image_gallery', ''),
(2803, 327, '_download_limit', '-1'),
(2804, 327, '_download_expiry', '-1'),
(2805, 327, '_stock', NULL),
(2806, 327, '_stock_status', 'instock'),
(2807, 327, '_product_version', '3.3.5'),
(2808, 327, '_price', '34'),
(2809, 329, '_wc_review_count', '0'),
(2810, 329, '_wc_rating_count', 'a:0:{}'),
(2811, 329, '_wc_average_rating', '0'),
(2812, 329, '_edit_lock', '1525228662:1'),
(2813, 329, '_edit_last', '1'),
(2817, 329, '_sku', ''),
(2818, 329, '_regular_price', '34'),
(2819, 329, '_sale_price', ''),
(2820, 329, '_sale_price_dates_from', ''),
(2821, 329, '_sale_price_dates_to', ''),
(2822, 329, 'total_sales', '0'),
(2823, 329, '_tax_status', 'taxable'),
(2824, 329, '_tax_class', ''),
(2825, 329, '_manage_stock', 'no'),
(2826, 329, '_backorders', 'no'),
(2827, 329, '_sold_individually', 'no'),
(2828, 329, '_weight', ''),
(2829, 329, '_length', ''),
(2830, 329, '_width', ''),
(2831, 329, '_height', ''),
(2832, 329, '_upsell_ids', 'a:0:{}'),
(2833, 329, '_crosssell_ids', 'a:0:{}'),
(2834, 329, '_purchase_note', ''),
(2835, 329, '_default_attributes', 'a:0:{}'),
(2836, 329, '_virtual', 'no'),
(2837, 329, '_downloadable', 'no'),
(2838, 329, '_product_image_gallery', ''),
(2839, 329, '_download_limit', '-1'),
(2840, 329, '_download_expiry', '-1'),
(2841, 329, '_stock', NULL),
(2842, 329, '_stock_status', 'instock'),
(2843, 329, '_product_version', '3.3.5'),
(2844, 329, '_price', '34'),
(2845, 331, '_wc_review_count', '0'),
(2846, 331, '_wc_rating_count', 'a:0:{}'),
(2847, 331, '_wc_average_rating', '0'),
(2848, 331, '_edit_lock', '1525228720:1'),
(2849, 331, '_edit_last', '1'),
(2853, 331, '_sku', ''),
(2854, 331, '_regular_price', '30'),
(2855, 331, '_sale_price', ''),
(2856, 331, '_sale_price_dates_from', ''),
(2857, 331, '_sale_price_dates_to', ''),
(2858, 331, 'total_sales', '0'),
(2859, 331, '_tax_status', 'taxable'),
(2860, 331, '_tax_class', ''),
(2861, 331, '_manage_stock', 'no'),
(2862, 331, '_backorders', 'no'),
(2863, 331, '_sold_individually', 'no'),
(2864, 331, '_weight', ''),
(2865, 331, '_length', ''),
(2866, 331, '_width', ''),
(2867, 331, '_height', ''),
(2868, 331, '_upsell_ids', 'a:0:{}'),
(2869, 331, '_crosssell_ids', 'a:0:{}'),
(2870, 331, '_purchase_note', ''),
(2871, 331, '_default_attributes', 'a:0:{}'),
(2872, 331, '_virtual', 'no'),
(2873, 331, '_downloadable', 'no'),
(2874, 331, '_product_image_gallery', ''),
(2875, 331, '_download_limit', '-1'),
(2876, 331, '_download_expiry', '-1'),
(2877, 331, '_stock', NULL),
(2878, 331, '_stock_status', 'instock'),
(2879, 331, '_product_version', '3.3.5'),
(2880, 331, '_price', '30'),
(2881, 333, '_wc_review_count', '0'),
(2882, 333, '_wc_rating_count', 'a:0:{}'),
(2883, 333, '_wc_average_rating', '0'),
(2884, 333, '_edit_lock', '1525228843:1'),
(2885, 333, '_edit_last', '1'),
(2889, 333, '_sku', ''),
(2890, 333, '_regular_price', '32'),
(2891, 333, '_sale_price', ''),
(2892, 333, '_sale_price_dates_from', ''),
(2893, 333, '_sale_price_dates_to', ''),
(2894, 333, 'total_sales', '1'),
(2895, 333, '_tax_status', 'taxable'),
(2896, 333, '_tax_class', ''),
(2897, 333, '_manage_stock', 'no'),
(2898, 333, '_backorders', 'no'),
(2899, 333, '_sold_individually', 'no'),
(2900, 333, '_weight', ''),
(2901, 333, '_length', ''),
(2902, 333, '_width', ''),
(2903, 333, '_height', ''),
(2904, 333, '_upsell_ids', 'a:0:{}'),
(2905, 333, '_crosssell_ids', 'a:0:{}'),
(2906, 333, '_purchase_note', ''),
(2907, 333, '_default_attributes', 'a:0:{}'),
(2908, 333, '_virtual', 'no'),
(2909, 333, '_downloadable', 'no'),
(2910, 333, '_product_image_gallery', ''),
(2911, 333, '_download_limit', '-1'),
(2912, 333, '_download_expiry', '-1'),
(2913, 333, '_stock', NULL),
(2914, 333, '_stock_status', 'instock'),
(2915, 333, '_product_version', '3.3.5'),
(2916, 333, '_price', '32'),
(2917, 335, '_wc_review_count', '0'),
(2918, 335, '_wc_rating_count', 'a:0:{}'),
(2919, 335, '_wc_average_rating', '0'),
(2920, 335, '_edit_lock', '1525228915:1'),
(2921, 335, '_edit_last', '1'),
(2925, 335, '_sku', ''),
(2926, 335, '_regular_price', '110'),
(2927, 335, '_sale_price', ''),
(2928, 335, '_sale_price_dates_from', ''),
(2929, 335, '_sale_price_dates_to', ''),
(2930, 335, 'total_sales', '1'),
(2931, 335, '_tax_status', 'taxable'),
(2932, 335, '_tax_class', ''),
(2933, 335, '_manage_stock', 'no'),
(2934, 335, '_backorders', 'no'),
(2935, 335, '_sold_individually', 'no'),
(2936, 335, '_weight', ''),
(2937, 335, '_length', ''),
(2938, 335, '_width', ''),
(2939, 335, '_height', ''),
(2940, 335, '_upsell_ids', 'a:0:{}'),
(2941, 335, '_crosssell_ids', 'a:0:{}'),
(2942, 335, '_purchase_note', ''),
(2943, 335, '_default_attributes', 'a:0:{}'),
(2944, 335, '_virtual', 'no'),
(2945, 335, '_downloadable', 'no'),
(2946, 335, '_product_image_gallery', ''),
(2947, 335, '_download_limit', '-1'),
(2948, 335, '_download_expiry', '-1'),
(2949, 335, '_stock', NULL),
(2950, 335, '_stock_status', 'instock'),
(2951, 335, '_product_version', '3.3.5'),
(2952, 335, '_price', '110'),
(2953, 337, '_wc_review_count', '0'),
(2954, 337, '_wc_rating_count', 'a:0:{}'),
(2955, 337, '_wc_average_rating', '0'),
(2956, 337, '_edit_lock', '1525229607:1'),
(2957, 337, '_edit_last', '1'),
(2958, 338, '_wp_attached_file', '2018/05/ironmaiden.jpg'),
(2959, 338, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:462;s:6:\"height\";i:488;s:4:\"file\";s:22:\"2018/05/ironmaiden.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"ironmaiden-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"ironmaiden-416x439.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ironmaiden-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ironmaiden-284x300.jpg\";s:5:\"width\";i:284;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"ironmaiden-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"ironmaiden-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"ironmaiden-416x439.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"ironmaiden-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2960, 337, '_thumbnail_id', '338'),
(2961, 337, '_sku', ''),
(2962, 337, '_regular_price', '32'),
(2963, 337, '_sale_price', '28.70'),
(2964, 337, '_sale_price_dates_from', ''),
(2965, 337, '_sale_price_dates_to', ''),
(2966, 337, 'total_sales', '0'),
(2967, 337, '_tax_status', 'taxable'),
(2968, 337, '_tax_class', ''),
(2969, 337, '_manage_stock', 'no'),
(2970, 337, '_backorders', 'no'),
(2971, 337, '_sold_individually', 'no'),
(2972, 337, '_weight', ''),
(2973, 337, '_length', ''),
(2974, 337, '_width', ''),
(2975, 337, '_height', ''),
(2976, 337, '_upsell_ids', 'a:0:{}'),
(2977, 337, '_crosssell_ids', 'a:0:{}'),
(2978, 337, '_purchase_note', ''),
(2979, 337, '_default_attributes', 'a:0:{}'),
(2980, 337, '_virtual', 'no'),
(2981, 337, '_downloadable', 'no'),
(2982, 337, '_product_image_gallery', ''),
(2983, 337, '_download_limit', '-1'),
(2984, 337, '_download_expiry', '-1'),
(2985, 337, '_stock', NULL),
(2986, 337, '_stock_status', 'instock'),
(2987, 337, '_product_version', '3.3.5'),
(2988, 337, '_price', '28.70'),
(2997, 344, '_wp_attached_file', '2018/05/arte_personalizacao_magic_beans-1.png'),
(2998, 344, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:45:\"2018/05/arte_personalizacao_magic_beans-1.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-416x277.png\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-416x277.png\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2999, 345, '_wp_attached_file', '2018/05/arte_personalizacao_magic_beans.jpg'),
(3000, 345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:43:\"2018/05/arte_personalizacao_magic_beans.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"arte_personalizacao_magic_beans-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(3007, 348, '_order_key', 'wc_order_5afb9fca78fd1'),
(3008, 348, '_customer_user', '1'),
(3009, 348, '_payment_method', 'pagseguro'),
(3010, 348, '_payment_method_title', 'PagSeguro'),
(3011, 348, '_transaction_id', ''),
(3012, 348, '_customer_ip_address', '::1'),
(3013, 348, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.139 safari/537.36'),
(3014, 348, '_created_via', 'checkout'),
(3015, 348, '_date_completed', ''),
(3016, 348, '_completed_date', ''),
(3017, 348, '_date_paid', ''),
(3018, 348, '_paid_date', ''),
(3019, 348, '_cart_hash', '56c2b90ca2170b3072303c7bbd48fd49'),
(3020, 348, '_billing_first_name', 'Mauricio'),
(3021, 348, '_billing_last_name', 'Aparecido Gabriel'),
(3022, 348, '_billing_company', ''),
(3023, 348, '_billing_address_1', 'Travessa Ponte Alta do Norte'),
(3024, 348, '_billing_address_2', ''),
(3025, 348, '_billing_city', 'São Paulo'),
(3026, 348, '_billing_state', 'SP'),
(3027, 348, '_billing_postcode', '08230-660'),
(3028, 348, '_billing_country', 'BR'),
(3029, 348, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(3030, 348, '_billing_phone', '(11) 98518-1910'),
(3031, 348, '_shipping_first_name', 'Mauricio'),
(3032, 348, '_shipping_last_name', 'Aparecido Gabriel'),
(3033, 348, '_shipping_company', ''),
(3034, 348, '_shipping_address_1', 'Travessa Ponte Alta do Norte'),
(3035, 348, '_shipping_address_2', ''),
(3036, 348, '_shipping_city', 'São Paulo'),
(3037, 348, '_shipping_state', 'SP'),
(3038, 348, '_shipping_postcode', '08230-660'),
(3039, 348, '_shipping_country', 'BR'),
(3040, 348, '_order_currency', 'BRL'),
(3041, 348, '_cart_discount', '0'),
(3042, 348, '_cart_discount_tax', '0'),
(3043, 348, '_order_shipping', '0.00'),
(3044, 348, '_order_shipping_tax', '0'),
(3045, 348, '_order_tax', '0'),
(3046, 348, '_order_total', '32.00'),
(3047, 348, '_order_version', '3.3.5'),
(3048, 348, '_prices_include_tax', 'no'),
(3049, 348, '_billing_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR mauricioaparecidogabriel@gmail.com (11) 98518-1910 05 Vila Verde'),
(3050, 348, '_shipping_address_index', 'Mauricio Aparecido Gabriel  Travessa Ponte Alta do Norte  São Paulo SP 08230-660 BR 05 Vila Verde'),
(3051, 348, '_billing_persontype', '1'),
(3052, 348, '_billing_cpf', '401.877.858-99'),
(3053, 348, '_billing_cnpj', ''),
(3054, 348, '_billing_number', '05'),
(3055, 348, '_billing_neighborhood', 'Vila Verde'),
(3056, 348, '_billing_cellphone', ''),
(3057, 348, '_shipping_number', '05'),
(3058, 348, '_shipping_neighborhood', 'Vila Verde'),
(3059, 348, '_bling_notices', 'a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:16:\"API Key invalida\";}'),
(3060, 348, 'E-mail do comprador', 'mauricioaparecidogabriel@gmail.com'),
(3061, 348, 'Nome do comprador', 'Mauricio Aparecido Gabriel'),
(3062, 348, 'Tipo de pagamento', 'Boleto'),
(3063, 348, 'Método de pagamento', 'Boleto Santander'),
(3064, 348, 'Parcelas', '1'),
(3065, 348, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=580647b45e8db11f58278670e2661f2b2e5b6f205567215a662d9462acb317aa7bee61cdab3133da'),
(3066, 348, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=580647b45e8db11f58278670e2661f2b2e5b6f205567215a662d9462acb317aa7bee61cdab3133da\";}'),
(3067, 348, '_recorded_sales', 'yes'),
(3068, 348, '_recorded_coupon_usage_counts', 'yes'),
(3078, 353, '_wp_attached_file', '2018/05/arte_personalizacao_magic_beans-1.jpg'),
(3079, 353, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:45:\"2018/05/arte_personalizacao_magic_beans-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"arte_personalizacao_magic_beans-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(3080, 354, '_order_key', 'wc_order_5afed1ee55091'),
(3081, 354, '_customer_user', '7'),
(3082, 354, '_payment_method', 'pagseguro'),
(3083, 354, '_payment_method_title', 'PagSeguro'),
(3084, 354, '_transaction_id', ''),
(3085, 354, '_customer_ip_address', '::1'),
(3086, 354, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(3087, 354, '_created_via', 'checkout'),
(3088, 354, '_date_completed', ''),
(3089, 354, '_completed_date', ''),
(3090, 354, '_date_paid', ''),
(3091, 354, '_paid_date', ''),
(3092, 354, '_cart_hash', 'f0c9e7116c1f183d09c906bfb280bb49'),
(3093, 354, '_billing_first_name', 'Maria'),
(3094, 354, '_billing_last_name', 'da Silva'),
(3095, 354, '_billing_company', ''),
(3096, 354, '_billing_address_1', 'Rua Guarapuava'),
(3097, 354, '_billing_address_2', 'Apartamento 614'),
(3098, 354, '_billing_city', 'São Paulo'),
(3099, 354, '_billing_state', 'SP'),
(3100, 354, '_billing_postcode', '03164-140'),
(3101, 354, '_billing_country', 'BR'),
(3102, 354, '_billing_email', 'mauricioaparecidogabriel@gmail.com'),
(3103, 354, '_billing_phone', '(11) 2052-5681'),
(3104, 354, '_shipping_first_name', 'Maria'),
(3105, 354, '_shipping_last_name', 'da Silva'),
(3106, 354, '_shipping_company', ''),
(3107, 354, '_shipping_address_1', 'Rua Guarapuava'),
(3108, 354, '_shipping_address_2', 'Apartamento 614'),
(3109, 354, '_shipping_city', 'São Paulo'),
(3110, 354, '_shipping_state', 'SP'),
(3111, 354, '_shipping_postcode', '03164-140'),
(3112, 354, '_shipping_country', 'BR'),
(3113, 354, '_order_currency', 'BRL'),
(3114, 354, '_cart_discount', '0'),
(3115, 354, '_cart_discount_tax', '0'),
(3116, 354, '_order_shipping', '0.00'),
(3117, 354, '_order_shipping_tax', '0'),
(3118, 354, '_order_tax', '0'),
(3119, 354, '_order_total', '67.80'),
(3120, 354, '_order_version', '3.3.5'),
(3121, 354, '_prices_include_tax', 'no'),
(3122, 354, '_billing_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR mauricioaparecidogabriel@gmail.com (11) 2052-5681 290 Mooca'),
(3123, 354, '_shipping_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR 290 Mooca'),
(3124, 354, '_billing_persontype', '1'),
(3125, 354, '_billing_cpf', '401.877.858-99'),
(3126, 354, '_billing_cnpj', ''),
(3127, 354, '_billing_number', '290'),
(3128, 354, '_billing_neighborhood', 'Mooca'),
(3129, 354, '_billing_cellphone', '(11) 98518-1910'),
(3130, 354, '_shipping_number', '290'),
(3131, 354, '_shipping_neighborhood', 'Mooca'),
(3132, 354, '_bling_notices', 'a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:16:\"API Key invalida\";}'),
(3133, 354, 'E-mail do comprador', 'mauricioaparecidogabriel@gmail.com'),
(3134, 354, 'Nome do comprador', 'Maria da Silva'),
(3135, 354, 'Tipo de pagamento', 'Boleto'),
(3136, 354, 'Método de pagamento', 'Boleto Santander'),
(3137, 354, 'Parcelas', '1'),
(3138, 354, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8e196c52a2671ac5b89164bfb84a70a851154816d208bb0caa55e92a43789410bb6f0fcc4f1d55d3'),
(3139, 354, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8e196c52a2671ac5b89164bfb84a70a851154816d208bb0caa55e92a43789410bb6f0fcc4f1d55d3\";}'),
(3140, 354, '_recorded_sales', 'yes'),
(3141, 354, '_recorded_coupon_usage_counts', 'yes'),
(3156, 362, '_order_key', 'wc_order_5afeefc805eab'),
(3157, 362, '_customer_user', '7'),
(3158, 362, '_payment_method', 'pagseguro'),
(3159, 362, '_payment_method_title', 'PagSeguro'),
(3160, 362, '_transaction_id', ''),
(3161, 362, '_customer_ip_address', '::1'),
(3162, 362, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(3163, 362, '_created_via', 'checkout'),
(3164, 362, '_date_completed', ''),
(3165, 362, '_completed_date', ''),
(3166, 362, '_date_paid', ''),
(3167, 362, '_paid_date', ''),
(3168, 362, '_cart_hash', '33cb25eae520c84157029e9ffc054900'),
(3169, 362, '_billing_first_name', 'Maria'),
(3170, 362, '_billing_last_name', 'da Silva'),
(3171, 362, '_billing_company', ''),
(3172, 362, '_billing_address_1', 'Rua Guarapuava'),
(3173, 362, '_billing_address_2', 'Apartamento 614'),
(3174, 362, '_billing_city', 'São Paulo'),
(3175, 362, '_billing_state', 'SP'),
(3176, 362, '_billing_postcode', '03164-140'),
(3177, 362, '_billing_country', 'BR'),
(3178, 362, '_billing_email', 'maparecido92@bol.com.br'),
(3179, 362, '_billing_phone', '(11) 2052-5681'),
(3180, 362, '_shipping_first_name', 'Maria'),
(3181, 362, '_shipping_last_name', 'da Silva'),
(3182, 362, '_shipping_company', ''),
(3183, 362, '_shipping_address_1', 'Rua Guarapuava'),
(3184, 362, '_shipping_address_2', 'Apartamento 614'),
(3185, 362, '_shipping_city', 'São Paulo'),
(3186, 362, '_shipping_state', 'SP'),
(3187, 362, '_shipping_postcode', '03164-140'),
(3188, 362, '_shipping_country', 'BR'),
(3189, 362, '_order_currency', 'BRL'),
(3190, 362, '_cart_discount', '0'),
(3191, 362, '_cart_discount_tax', '0'),
(3192, 362, '_order_shipping', '0.00'),
(3193, 362, '_order_shipping_tax', '0'),
(3194, 362, '_order_tax', '0'),
(3195, 362, '_order_total', '208.70'),
(3196, 362, '_order_version', '3.3.5'),
(3197, 362, '_prices_include_tax', 'no'),
(3198, 362, '_billing_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR maparecido92@bol.com.br (11) 2052-5681 290 Mooca'),
(3199, 362, '_shipping_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR 290 Mooca'),
(3200, 362, '_billing_persontype', '1'),
(3201, 362, '_billing_cpf', '401.877.858-99'),
(3202, 362, '_billing_cnpj', ''),
(3203, 362, '_billing_number', '290'),
(3204, 362, '_billing_neighborhood', 'Mooca'),
(3205, 362, '_billing_cellphone', '(11) 98518-1910'),
(3206, 362, '_shipping_number', '290'),
(3207, 362, '_shipping_neighborhood', 'Mooca'),
(3208, 362, '_bling_notices', 'a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:16:\"API Key invalida\";}'),
(3209, 363, '_order_key', 'wc_order_5afef090355ec'),
(3210, 363, '_customer_user', '7'),
(3211, 363, '_payment_method', 'pagseguro'),
(3212, 363, '_payment_method_title', 'PagSeguro'),
(3213, 363, '_transaction_id', ''),
(3214, 363, '_customer_ip_address', '::1'),
(3215, 363, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(3216, 363, '_created_via', 'checkout'),
(3217, 363, '_date_completed', ''),
(3218, 363, '_completed_date', ''),
(3219, 363, '_date_paid', ''),
(3220, 363, '_paid_date', ''),
(3221, 363, '_cart_hash', '33cb25eae520c84157029e9ffc054900'),
(3222, 363, '_billing_first_name', 'Maria'),
(3223, 363, '_billing_last_name', 'da Silva'),
(3224, 363, '_billing_company', ''),
(3225, 363, '_billing_address_1', 'Rua Guarapuava'),
(3226, 363, '_billing_address_2', 'Apartamento 614'),
(3227, 363, '_billing_city', 'São Paulo'),
(3228, 363, '_billing_state', 'SP'),
(3229, 363, '_billing_postcode', '03164-140'),
(3230, 363, '_billing_country', 'BR'),
(3231, 363, '_billing_email', 'maparecido92@bol.com.br'),
(3232, 363, '_billing_phone', '(11) 2052-5681'),
(3233, 363, '_shipping_first_name', 'Maria'),
(3234, 363, '_shipping_last_name', 'da Silva'),
(3235, 363, '_shipping_company', ''),
(3236, 363, '_shipping_address_1', 'Rua Guarapuava'),
(3237, 363, '_shipping_address_2', 'Apartamento 614'),
(3238, 363, '_shipping_city', 'São Paulo'),
(3239, 363, '_shipping_state', 'SP'),
(3240, 363, '_shipping_postcode', '03164-140'),
(3241, 363, '_shipping_country', 'BR'),
(3242, 363, '_order_currency', 'BRL'),
(3243, 363, '_cart_discount', '0'),
(3244, 363, '_cart_discount_tax', '0'),
(3245, 363, '_order_shipping', '0.00'),
(3246, 363, '_order_shipping_tax', '0'),
(3247, 363, '_order_tax', '0'),
(3248, 363, '_order_total', '208.70'),
(3249, 363, '_order_version', '3.3.5'),
(3250, 363, '_prices_include_tax', 'no'),
(3251, 363, '_billing_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR maparecido92@bol.com.br (11) 2052-5681 290 Mooca'),
(3252, 363, '_shipping_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR 290 Mooca'),
(3253, 363, '_billing_persontype', '1'),
(3254, 363, '_billing_cpf', '401.877.858-99'),
(3255, 363, '_billing_cnpj', ''),
(3256, 363, '_billing_number', '290'),
(3257, 363, '_billing_neighborhood', 'Mooca'),
(3258, 363, '_billing_cellphone', '(11) 98518-1910'),
(3259, 363, '_shipping_number', '290'),
(3260, 363, '_shipping_neighborhood', 'Mooca'),
(3261, 363, '_bling_notices', 'a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:16:\"API Key invalida\";}'),
(3262, 364, '_order_key', 'wc_order_5afef17dc5b99'),
(3263, 364, '_customer_user', '7'),
(3264, 364, '_payment_method', 'pagseguro'),
(3265, 364, '_payment_method_title', 'PagSeguro'),
(3266, 364, '_transaction_id', ''),
(3267, 364, '_customer_ip_address', '::1'),
(3268, 364, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(3269, 364, '_created_via', 'checkout'),
(3270, 364, '_date_completed', ''),
(3271, 364, '_completed_date', ''),
(3272, 364, '_date_paid', ''),
(3273, 364, '_paid_date', ''),
(3274, 364, '_cart_hash', '33cb25eae520c84157029e9ffc054900'),
(3275, 364, '_billing_first_name', 'Maria'),
(3276, 364, '_billing_last_name', 'da Silva'),
(3277, 364, '_billing_company', ''),
(3278, 364, '_billing_address_1', 'Rua Guarapuava'),
(3279, 364, '_billing_address_2', 'Apartamento 614'),
(3280, 364, '_billing_city', 'São Paulo'),
(3281, 364, '_billing_state', 'SP'),
(3282, 364, '_billing_postcode', '03164-140'),
(3283, 364, '_billing_country', 'BR'),
(3284, 364, '_billing_email', 'mrc92_palestrino@hotmail.com'),
(3285, 364, '_billing_phone', '(11) 2052-5681'),
(3286, 364, '_shipping_first_name', 'Maria'),
(3287, 364, '_shipping_last_name', 'da Silva'),
(3288, 364, '_shipping_company', ''),
(3289, 364, '_shipping_address_1', 'Rua Guarapuava'),
(3290, 364, '_shipping_address_2', 'Apartamento 614'),
(3291, 364, '_shipping_city', 'São Paulo'),
(3292, 364, '_shipping_state', 'SP'),
(3293, 364, '_shipping_postcode', '03164-140'),
(3294, 364, '_shipping_country', 'BR'),
(3295, 364, '_order_currency', 'BRL'),
(3296, 364, '_cart_discount', '0'),
(3297, 364, '_cart_discount_tax', '0'),
(3298, 364, '_order_shipping', '0.00'),
(3299, 364, '_order_shipping_tax', '0'),
(3300, 364, '_order_tax', '0'),
(3301, 364, '_order_total', '208.70'),
(3302, 364, '_order_version', '3.3.5'),
(3303, 364, '_prices_include_tax', 'no'),
(3304, 364, '_billing_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR mrc92_palestrino@hotmail.com (11) 2052-5681 290 Mooca'),
(3305, 364, '_shipping_address_index', 'Maria da Silva  Rua Guarapuava Apartamento 614 São Paulo SP 03164-140 BR 290 Mooca'),
(3306, 364, '_billing_persontype', '1'),
(3307, 364, '_billing_cpf', '401.877.858-99'),
(3308, 364, '_billing_cnpj', ''),
(3309, 364, '_billing_number', '290'),
(3310, 364, '_billing_neighborhood', 'Mooca'),
(3311, 364, '_billing_cellphone', '(11) 98518-1910'),
(3312, 364, '_shipping_number', '290'),
(3313, 364, '_shipping_neighborhood', 'Mooca'),
(3314, 364, '_bling_notices', 'a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:16:\"API Key invalida\";}'),
(3315, 364, 'E-mail do comprador', 'mrc92_palestrino@hotmail.com'),
(3316, 364, 'Nome do comprador', 'Maria da Silva'),
(3317, 364, 'Tipo de pagamento', 'Boleto'),
(3318, 364, 'Método de pagamento', 'Boleto Santander'),
(3319, 364, 'Parcelas', '1'),
(3320, 364, 'URL de pagamento.', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=9094363d2158660c353809ab7bb996f4a8645e6d27828570769bc975fdbbcacc59f45953a9ad467a'),
(3321, 364, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Boleto Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=9094363d2158660c353809ab7bb996f4a8645e6d27828570769bc975fdbbcacc59f45953a9ad467a\";}'),
(3322, 364, '_recorded_sales', 'yes'),
(3323, 364, '_recorded_coupon_usage_counts', 'yes'),
(3324, 364, '_wp_trash_meta_status', 'wc-on-hold'),
(3325, 364, '_wp_trash_meta_time', '1531584529'),
(3326, 364, '_wp_desired_post_slug', 'pedido-22'),
(3327, 364, '_wp_trash_meta_comments_status', 'a:1:{i:33;s:1:\"1\";}'),
(3328, 363, '_wp_trash_meta_status', 'wc-pending'),
(3329, 363, '_wp_trash_meta_time', '1531584529'),
(3330, 363, '_wp_desired_post_slug', 'pedido-21'),
(3331, 362, '_wp_trash_meta_status', 'wc-pending'),
(3332, 362, '_wp_trash_meta_time', '1531584530'),
(3333, 362, '_wp_desired_post_slug', 'pedido-20'),
(3334, 354, '_wp_trash_meta_status', 'wc-on-hold'),
(3335, 354, '_wp_trash_meta_time', '1531584530'),
(3336, 354, '_wp_desired_post_slug', 'pedido-19'),
(3337, 354, '_wp_trash_meta_comments_status', 'a:1:{i:32;s:1:\"1\";}'),
(3338, 348, '_wp_trash_meta_status', 'wc-on-hold'),
(3339, 348, '_wp_trash_meta_time', '1531584531'),
(3340, 348, '_wp_desired_post_slug', 'pedido-18'),
(3341, 348, '_wp_trash_meta_comments_status', 'a:1:{i:31;s:1:\"1\";}'),
(3342, 312, '_wp_trash_meta_status', 'wc-on-hold'),
(3343, 312, '_wp_trash_meta_time', '1531584531'),
(3344, 312, '_wp_desired_post_slug', 'pedido-17'),
(3345, 312, '_wp_trash_meta_comments_status', 'a:1:{i:30;s:1:\"1\";}'),
(3346, 260, '_wp_trash_meta_status', 'wc-completed'),
(3347, 260, '_wp_trash_meta_time', '1531584532'),
(3348, 260, '_wp_desired_post_slug', 'pedido-16'),
(3349, 260, '_wp_trash_meta_comments_status', 'a:4:{i:15;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";}'),
(3350, 259, '_wp_trash_meta_status', 'wc-completed'),
(3351, 259, '_wp_trash_meta_time', '1531584532'),
(3352, 259, '_wp_desired_post_slug', 'pedido-15'),
(3353, 259, '_wp_trash_meta_comments_status', 'a:3:{i:11;s:1:\"1\";i:12;s:1:\"1\";i:19;s:1:\"1\";}'),
(3354, 258, '_wp_trash_meta_status', 'wc-completed'),
(3355, 258, '_wp_trash_meta_time', '1531584533'),
(3356, 258, '_wp_desired_post_slug', 'pedido-14'),
(3357, 258, '_wp_trash_meta_comments_status', 'a:2:{i:13;s:1:\"1\";i:14;s:1:\"1\";}'),
(3358, 257, '_wp_trash_meta_status', 'wc-completed'),
(3359, 257, '_wp_trash_meta_time', '1531584533'),
(3360, 257, '_wp_desired_post_slug', 'pedido-13'),
(3361, 257, '_wp_trash_meta_comments_status', 'a:2:{i:10;s:1:\"1\";i:20;s:1:\"1\";}'),
(3362, 256, '_wp_trash_meta_status', 'wc-completed'),
(3363, 256, '_wp_trash_meta_time', '1531584534'),
(3364, 256, '_wp_desired_post_slug', 'pedido-12'),
(3365, 256, '_wp_trash_meta_comments_status', 'a:2:{i:9;s:1:\"1\";i:21;s:1:\"1\";}'),
(3366, 255, '_wp_trash_meta_status', 'wc-completed'),
(3367, 255, '_wp_trash_meta_time', '1531584535'),
(3368, 255, '_wp_desired_post_slug', 'pedido-11'),
(3369, 255, '_wp_trash_meta_comments_status', 'a:2:{i:8;s:1:\"1\";i:22;s:1:\"1\";}'),
(3370, 253, '_wp_trash_meta_status', 'wc-completed'),
(3371, 253, '_wp_trash_meta_time', '1531584535'),
(3372, 253, '_wp_desired_post_slug', 'pedido-10'),
(3373, 253, '_wp_trash_meta_comments_status', 'a:2:{i:7;s:1:\"1\";i:23;s:1:\"1\";}'),
(3374, 252, '_wp_trash_meta_status', 'wc-completed'),
(3375, 252, '_wp_trash_meta_time', '1531584536'),
(3376, 252, '_wp_desired_post_slug', 'pedido-9'),
(3377, 252, '_wp_trash_meta_comments_status', 'a:1:{i:6;s:1:\"1\";}'),
(3378, 251, '_wp_trash_meta_status', 'wc-completed'),
(3379, 251, '_wp_trash_meta_time', '1531584536'),
(3380, 251, '_wp_desired_post_slug', 'pedido-8'),
(3381, 251, '_wp_trash_meta_comments_status', 'a:2:{i:5;s:1:\"1\";i:24;s:1:\"1\";}'),
(3382, 250, '_wp_trash_meta_status', 'wc-completed'),
(3383, 250, '_wp_trash_meta_time', '1531584537'),
(3384, 250, '_wp_desired_post_slug', 'pedido-7'),
(3385, 250, '_wp_trash_meta_comments_status', 'a:1:{i:25;s:1:\"1\";}'),
(3386, 249, '_wp_trash_meta_status', 'wc-completed'),
(3387, 249, '_wp_trash_meta_time', '1531584537'),
(3388, 249, '_wp_desired_post_slug', 'pedido-6'),
(3389, 249, '_wp_trash_meta_comments_status', 'a:1:{i:26;s:1:\"1\";}'),
(3390, 199, '_wp_trash_meta_status', 'wc-completed'),
(3391, 199, '_wp_trash_meta_time', '1531584538'),
(3392, 199, '_wp_desired_post_slug', 'pedido-5'),
(3393, 119, '_wp_trash_meta_status', 'wc-completed'),
(3394, 119, '_wp_trash_meta_time', '1531584538'),
(3395, 119, '_wp_desired_post_slug', 'pedido-4'),
(3396, 119, '_wp_trash_meta_comments_status', 'a:2:{i:3;s:1:\"1\";i:27;s:1:\"1\";}'),
(3397, 116, '_wp_trash_meta_status', 'wc-completed'),
(3398, 116, '_wp_trash_meta_time', '1531584539'),
(3399, 116, '_wp_desired_post_slug', 'pedido-3'),
(3400, 116, '_wp_trash_meta_comments_status', 'a:1:{i:28;s:1:\"1\";}'),
(3401, 115, '_wp_trash_meta_status', 'wc-completed'),
(3402, 115, '_wp_trash_meta_time', '1531584589'),
(3403, 115, '_wp_desired_post_slug', 'pedido-2'),
(3404, 115, '_wp_trash_meta_comments_status', 'a:1:{i:29;s:1:\"1\";}'),
(3405, 114, '_wp_trash_meta_status', 'wc-completed'),
(3406, 114, '_wp_trash_meta_time', '1531584590'),
(3407, 114, '_wp_desired_post_slug', 'pedido'),
(3408, 317, '_wp_trash_meta_status', 'publish'),
(3409, 317, '_wp_trash_meta_time', '1531584682'),
(3410, 317, '_wp_desired_post_slug', 'caneca-greys-anatomy-youre-my-person'),
(3411, 315, '_wp_trash_meta_status', 'publish'),
(3412, 315, '_wp_trash_meta_time', '1531584694'),
(3413, 315, '_wp_desired_post_slug', 'caneca-greys-anatomy'),
(3414, 298, '_wp_trash_meta_status', 'publish'),
(3415, 298, '_wp_trash_meta_time', '1531584765'),
(3416, 298, '_wp_desired_post_slug', 'bottom-the-big-bang-theory'),
(3417, 288, '_wp_trash_meta_status', 'publish'),
(3418, 288, '_wp_trash_meta_time', '1531584766'),
(3419, 288, '_wp_desired_post_slug', 'bottom-hobbit'),
(3420, 286, '_wp_trash_meta_status', 'publish'),
(3421, 286, '_wp_trash_meta_time', '1531584767'),
(3422, 286, '_wp_desired_post_slug', 'bottom-super-mario'),
(3423, 284, '_wp_trash_meta_status', 'publish'),
(3424, 284, '_wp_trash_meta_time', '1531584768'),
(3425, 284, '_wp_desired_post_slug', 'bottom-friends'),
(3426, 327, '_wp_trash_meta_status', 'publish'),
(3427, 327, '_wp_trash_meta_time', '1531585498'),
(3428, 327, '_wp_desired_post_slug', 'camiseta-mettalica'),
(3429, 329, '_wp_trash_meta_status', 'publish'),
(3430, 329, '_wp_trash_meta_time', '1531585551'),
(3431, 329, '_wp_desired_post_slug', 'camiseta-metallica'),
(3432, 323, '_wp_trash_meta_status', 'publish'),
(3433, 323, '_wp_trash_meta_time', '1531585553'),
(3434, 323, '_wp_desired_post_slug', 'camiseta-iron-maiden-eddie'),
(3435, 319, '_wp_trash_meta_status', 'publish'),
(3436, 319, '_wp_trash_meta_time', '1531585553'),
(3437, 319, '_wp_desired_post_slug', 'varinha-harry-potter'),
(3438, 296, '_wp_trash_meta_status', 'publish'),
(3439, 296, '_wp_trash_meta_time', '1531585554'),
(3440, 296, '_wp_desired_post_slug', 'chinelo-naruto'),
(3441, 30, '_wp_trash_meta_status', 'publish'),
(3442, 30, '_wp_trash_meta_time', '1531585555'),
(3443, 30, '_wp_desired_post_slug', 'caneca-cubo-magico'),
(3444, 335, '_wp_trash_meta_status', 'publish'),
(3445, 335, '_wp_trash_meta_time', '1531585629'),
(3446, 335, '_wp_desired_post_slug', 'capa-harry-potter'),
(3447, 325, '_wp_trash_meta_status', 'publish'),
(3448, 325, '_wp_trash_meta_time', '1531585630'),
(3449, 325, '_wp_desired_post_slug', 'camiseta-iron-maiden'),
(3450, 290, '_wp_trash_meta_status', 'publish'),
(3451, 290, '_wp_trash_meta_time', '1531585631'),
(3452, 290, '_wp_desired_post_slug', 'camiseta-pokemon'),
(3453, 29, '_wp_trash_meta_status', 'publish'),
(3454, 29, '_wp_trash_meta_time', '1531585632'),
(3455, 29, '_wp_desired_post_slug', 'camiseta-nerd'),
(3456, 26, '_wp_trash_meta_status', 'publish'),
(3457, 26, '_wp_trash_meta_time', '1531585633'),
(3458, 26, '_wp_desired_post_slug', 'camiseta-vingadores'),
(3459, 331, '_wp_trash_meta_status', 'publish'),
(3460, 331, '_wp_trash_meta_time', '1531585667'),
(3461, 331, '_wp_desired_post_slug', 'caneca-pearl-jam'),
(3462, 20, '_wp_trash_meta_status', 'publish'),
(3463, 20, '_wp_trash_meta_time', '1531586236'),
(3464, 20, '_wp_desired_post_slug', 'camiseta-batman'),
(3465, 333, '_wp_trash_meta_status', 'publish'),
(3466, 333, '_wp_trash_meta_time', '1531586302'),
(3467, 333, '_wp_desired_post_slug', 'copo-the-big-bang-theory-sheldon-bazinga'),
(3468, 321, '_wp_trash_meta_status', 'publish'),
(3469, 321, '_wp_trash_meta_time', '1531586303');
INSERT INTO `mb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3470, 321, '_wp_desired_post_slug', 'caneca-rock-n-roll-soco-ingles'),
(3471, 39, '_wp_trash_meta_status', 'publish'),
(3472, 39, '_wp_trash_meta_time', '1531586304'),
(3473, 39, '_wp_desired_post_slug', 'caneca-star-wars'),
(3474, 39, '_wp_trash_meta_comments_status', 'a:1:{i:4;s:1:\"1\";}'),
(3475, 38, '_wp_trash_meta_status', 'publish'),
(3476, 38, '_wp_trash_meta_time', '1531586305'),
(3477, 38, '_wp_desired_post_slug', 'caneca-super-mario'),
(3478, 38, '_wp_trash_meta_comments_status', 'a:1:{i:2;s:1:\"1\";}'),
(3479, 18, '_wp_trash_meta_status', 'publish'),
(3480, 18, '_wp_trash_meta_time', '1531586306'),
(3481, 18, '_wp_desired_post_slug', 'camiseta-sheldon'),
(3482, 301, '_wp_desired_post_slug', 'slider-133-image-2'),
(3483, 366, '_wc_review_count', '0'),
(3484, 366, '_wc_rating_count', 'a:0:{}'),
(3485, 366, '_wc_average_rating', '0'),
(3486, 366, '_edit_lock', '1531586955:1'),
(3487, 367, '_wp_attached_file', '2018/07/camiseta_batman.png'),
(3488, 367, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:620;s:4:\"file\";s:27:\"2018/07/camiseta_batman.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"camiseta_batman-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"camiseta_batman-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3489, 368, '_wp_attached_file', '2018/07/camiseta_vingadores.png'),
(3490, 368, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:620;s:4:\"file\";s:31:\"2018/07/camiseta_vingadores.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"camiseta_vingadores-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta_vingadores-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3491, 366, '_edit_last', '1'),
(3492, 366, '_thumbnail_id', '367'),
(3493, 366, '_sku', ''),
(3494, 366, '_regular_price', '30'),
(3495, 366, '_sale_price', ''),
(3496, 366, '_sale_price_dates_from', ''),
(3497, 366, '_sale_price_dates_to', ''),
(3498, 366, 'total_sales', '0'),
(3499, 366, '_tax_status', 'taxable'),
(3500, 366, '_tax_class', ''),
(3501, 366, '_manage_stock', 'no'),
(3502, 366, '_backorders', 'no'),
(3503, 366, '_sold_individually', 'no'),
(3504, 366, '_weight', ''),
(3505, 366, '_length', ''),
(3506, 366, '_width', ''),
(3507, 366, '_height', ''),
(3508, 366, '_upsell_ids', 'a:0:{}'),
(3509, 366, '_crosssell_ids', 'a:0:{}'),
(3510, 366, '_purchase_note', ''),
(3511, 366, '_default_attributes', 'a:0:{}'),
(3512, 366, '_virtual', 'no'),
(3513, 366, '_downloadable', 'no'),
(3514, 366, '_product_image_gallery', ''),
(3515, 366, '_download_limit', '-1'),
(3516, 366, '_download_expiry', '-1'),
(3517, 366, '_stock', NULL),
(3518, 366, '_stock_status', 'instock'),
(3519, 366, '_product_version', '3.4.3'),
(3520, 366, '_price', '30'),
(3521, 369, '_wc_review_count', '0'),
(3522, 369, '_wc_rating_count', 'a:0:{}'),
(3523, 369, '_wc_average_rating', '0'),
(3524, 369, '_edit_lock', '1531587668:1'),
(3525, 369, '_edit_last', '1'),
(3526, 369, '_thumbnail_id', '368'),
(3527, 369, '_sku', ''),
(3528, 369, '_regular_price', '32'),
(3529, 369, '_sale_price', ''),
(3530, 369, '_sale_price_dates_from', ''),
(3531, 369, '_sale_price_dates_to', ''),
(3532, 369, 'total_sales', '0'),
(3533, 369, '_tax_status', 'taxable'),
(3534, 369, '_tax_class', ''),
(3535, 369, '_manage_stock', 'no'),
(3536, 369, '_backorders', 'no'),
(3537, 369, '_sold_individually', 'no'),
(3538, 369, '_weight', ''),
(3539, 369, '_length', ''),
(3540, 369, '_width', ''),
(3541, 369, '_height', ''),
(3542, 369, '_upsell_ids', 'a:0:{}'),
(3543, 369, '_crosssell_ids', 'a:0:{}'),
(3544, 369, '_purchase_note', ''),
(3545, 369, '_default_attributes', 'a:0:{}'),
(3546, 369, '_virtual', 'no'),
(3547, 369, '_downloadable', 'no'),
(3548, 369, '_product_image_gallery', ''),
(3549, 369, '_download_limit', '-1'),
(3550, 369, '_download_expiry', '-1'),
(3551, 369, '_stock', NULL),
(3552, 369, '_stock_status', 'instock'),
(3553, 369, '_product_version', '3.4.3'),
(3554, 369, '_price', '32'),
(3555, 370, '_wp_attached_file', '2018/07/logo_magic_beans_cabecalho_original3.png'),
(3556, 370, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:710;s:6:\"height\";i:279;s:4:\"file\";s:48:\"2018/07/logo_magic_beans_cabecalho_original3.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-300x118.png\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-324x279.png\";s:5:\"width\";i:324;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-416x163.png\";s:5:\"width\";i:416;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-324x279.png\";s:5:\"width\";i:324;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-416x163.png\";s:5:\"width\";i:416;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"logo_magic_beans_cabecalho_original3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3557, 371, '_wp_attached_file', '2018/07/cropped-logo_magic_beans_cabecalho_original3.png'),
(3558, 371, '_wp_attachment_context', 'custom-header'),
(3559, 371, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:710;s:6:\"height\";i:279;s:4:\"file\";s:56:\"2018/07/cropped-logo_magic_beans_cabecalho_original3.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-300x118.png\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-324x279.png\";s:5:\"width\";i:324;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-416x163.png\";s:5:\"width\";i:416;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-324x279.png\";s:5:\"width\";i:324;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-416x163.png\";s:5:\"width\";i:416;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-logo_magic_beans_cabecalho_original3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:370;}'),
(3560, 371, '_wp_attachment_custom_header_last_used_storefront', '1531587238'),
(3561, 371, '_wp_attachment_is_custom_header', 'storefront'),
(3562, 372, '_edit_lock', '1531587353:1'),
(3563, 373, '_wp_attached_file', '2018/07/cropped-logo_magic_beans_cabecalho_original3-1.png'),
(3564, 373, '_wp_attachment_context', 'custom-logo'),
(3565, 373, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:279;s:6:\"height\";i:110;s:4:\"file\";s:58:\"2018/07/cropped-logo_magic_beans_cabecalho_original3-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"cropped-logo_magic_beans_cabecalho_original3-1-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"cropped-logo_magic_beans_cabecalho_original3-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"cropped-logo_magic_beans_cabecalho_original3-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3566, 372, '_wp_trash_meta_status', 'publish'),
(3567, 372, '_wp_trash_meta_time', '1531587353');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_posts`
--

CREATE TABLE `mb_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_posts`
--

INSERT INTO `mb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-21 20:54:24', '2018-03-21 23:54:24', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-03-21 20:54:24', '2018-03-21 23:54:24', '', 0, 'http://localhost:8080/magicbeans/?p=1', 0, 'post', '', 1),
(5, 1, '2018-03-21 21:14:24', '2018-03-22 00:14:24', '', 'Loja', '', 'publish', 'closed', 'closed', '', 'loja', '', '', '2018-03-21 21:14:24', '2018-03-22 00:14:24', '', 0, 'http://localhost:8080/magicbeans/loja/', 0, 'page', '', 0),
(6, 1, '2018-03-21 21:14:24', '2018-03-22 00:14:24', '[woocommerce_cart]', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2018-03-21 21:48:11', '2018-03-22 00:48:11', '', 0, 'http://localhost:8080/magicbeans/carrinho/', 0, 'page', '', 0),
(7, 1, '2018-03-21 21:14:24', '2018-03-22 00:14:24', '[woocommerce_checkout]', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2018-03-21 21:14:24', '2018-03-22 00:14:24', '', 0, 'http://localhost:8080/magicbeans/finalizar-compra/', 0, 'page', '', 0),
(8, 1, '2018-03-21 21:14:25', '2018-03-22 00:14:25', '[woocommerce_my_account]', 'Minha conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2018-03-21 21:14:25', '2018-03-22 00:14:25', '', 0, 'http://localhost:8080/magicbeans/minha-conta/', 0, 'page', '', 0),
(18, 1, '2018-03-21 21:31:20', '2018-03-22 00:31:20', '', 'Camiseta Sheldon', '', 'trash', 'open', 'closed', '', 'camiseta-sheldon__trashed', '', '', '2018-07-14 13:38:26', '2018-07-14 16:38:26', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2018-03-21 21:31:12', '2018-03-22 00:31:12', '', 'camiseta_bazinga', '', 'inherit', 'open', 'closed', '', 'camiseta_bazinga', '', '', '2018-03-21 21:31:12', '2018-03-22 00:31:12', '', 18, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/03/camiseta_bazinga.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-03-21 21:33:52', '2018-03-22 00:33:52', '', 'Camiseta Batman', '', 'trash', 'open', 'closed', '', 'camiseta-batman__trashed', '', '', '2018-07-14 13:37:16', '2018-07-14 16:37:16', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=20', 0, 'product', '', 0),
(22, 1, '2018-03-21 21:33:25', '2018-03-22 00:33:25', '', 'camiseta_capitao_america', '', 'inherit', 'open', 'closed', '', 'camiseta_capitao_america', '', '', '2018-03-21 21:33:25', '2018-03-22 00:33:25', '', 20, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/03/camiseta_capitao_america.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-03-21 21:33:29', '2018-03-22 00:33:29', '', 'camiseta_homem_ferro', '', 'inherit', 'open', 'closed', '', 'camiseta_homem_ferro', '', '', '2018-03-21 21:33:29', '2018-03-22 00:33:29', '', 20, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/03/camiseta_homem_ferro.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2018-03-21 21:34:33', '2018-03-22 00:34:33', '', 'Camiseta Vingadores', '', 'trash', 'open', 'closed', '', 'camiseta-vingadores__trashed', '', '', '2018-07-14 13:27:13', '2018-07-14 16:27:13', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2018-03-21 21:35:21', '2018-03-22 00:35:21', '', 'Camiseta Capitão América', '', 'publish', 'open', 'closed', '', 'camiseta-capitao-america', '', '', '2018-04-16 21:21:59', '2018-04-17 00:21:59', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2018-03-21 21:36:01', '2018-03-22 00:36:01', '', 'Camiseta Homem de Ferro', '', 'publish', 'open', 'closed', '', 'camiseta-homem-de-ferro', '', '', '2018-04-16 21:20:59', '2018-04-17 00:20:59', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2018-03-21 21:37:00', '2018-03-22 00:37:00', '', 'Camiseta Nerd', '', 'trash', 'open', 'closed', '', 'camiseta-nerd__trashed', '', '', '2018-07-14 13:27:12', '2018-07-14 16:27:12', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2018-03-21 21:41:12', '2018-03-22 00:41:12', '', 'Caneca Cubo Mágico', '', 'trash', 'open', 'closed', '', 'caneca-cubo-magico__trashed', '', '', '2018-07-14 13:25:55', '2018-07-14 16:25:55', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=30', 0, 'product', '', 0),
(38, 1, '2018-03-21 21:43:00', '2018-03-22 00:43:00', '', 'Caneca Super Mario', '', 'trash', 'open', 'closed', '', 'caneca-super-mario__trashed', '', '', '2018-07-14 13:38:25', '2018-07-14 16:38:25', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=38', 0, 'product', '', 1),
(39, 1, '2018-03-21 21:43:35', '2018-03-22 00:43:35', '', 'Caneca Star Wars', '', 'trash', 'open', 'closed', '', 'caneca-star-wars__trashed', '', '', '2018-07-14 13:38:24', '2018-07-14 16:38:24', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=39', 0, 'product', '', 1),
(42, 1, '2018-03-21 21:47:52', '2018-03-22 00:47:52', '[woocommerce_cart]', 'Carrinho', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-21 21:47:52', '2018-03-22 00:47:52', '', 6, 'http://localhost:8080/magicbeans/2018/03/21/6-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-03-21 23:36:05', '2018-03-22 02:36:05', '[SliderPreview]', 'Preview', '', 'publish', 'closed', 'closed', '', 'preview', '', '', '2018-03-21 23:36:05', '2018-03-22 02:36:05', '', 0, 'http://localhost:8080/magicbeans/wds-slider/preview/', 0, 'wds-slider', '', 0),
(74, 1, '2018-03-21 23:43:46', '2018-03-22 02:43:46', '[wds id=\"3\"]', '', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-04-16 23:05:26', '2018-04-17 02:05:26', '', 0, 'http://localhost:8080/magicbeans/?page_id=74', 0, 'page', '', 0),
(76, 1, '2018-03-21 23:43:46', '2018-03-22 02:43:46', '', 'Início', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-21 23:43:46', '2018-03-22 02:43:46', '', 74, 'http://localhost:8080/magicbeans/2018/03/21/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-03-21 23:44:22', '2018-03-22 02:44:22', '[wds id=\"2\"]', 'Início', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-21 23:44:22', '2018-03-22 02:44:22', '', 74, 'http://localhost:8080/magicbeans/2018/03/21/74-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-03-21 23:44:46', '2018-03-22 02:44:46', '<p style=\"text-align: center;\">[wds id=\"2\"]</p>', 'Início', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-21 23:44:46', '2018-03-22 02:44:46', '', 74, 'http://localhost:8080/magicbeans/2018/03/21/74-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-03-22 20:10:59', '2018-03-22 23:10:59', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-243 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte_4-300x120.png\" alt=\"\" width=\"300\" height=\"120\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato-2', '', '', '2018-04-06 14:48:56', '2018-04-06 17:48:56', '', 0, 'http://localhost:8080/magicbeans/?page_id=88', 0, 'page', '', 0),
(89, 1, '2018-03-22 20:10:59', '2018-03-22 23:10:59', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-03-22 20:10:59', '2018-03-22 23:10:59', '', 88, 'http://localhost:8080/magicbeans/2018/03/22/88-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-22 20:21:47', '2018-03-22 23:21:47', '', 'Início', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-22 20:21:47', '2018-03-22 23:21:47', '', 74, 'http://localhost:8080/magicbeans/2018/03/22/74-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-03-22 20:22:34', '2018-03-22 23:22:34', '', '', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-22 20:22:34', '2018-03-22 23:22:34', '', 74, 'http://localhost:8080/magicbeans/2018/03/22/74-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-03-22 22:13:57', '2018-03-23 01:13:57', '<label> Nome\r\n    [text* your-name] </label>\r\n\r\n<label> E-mail\r\n    [email* your-email] </label>\r\n\r\n<label> Assunto\r\n    [text your-subject] </label>\r\n\r\n<label> Sua mensagem\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\nMagic Beans Store \"[your-subject]\"\n[your-email]\nmauricioaparecidogabriel@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Magic Beans Store\nReply-To: [your-email]\n\n\n\n\nMagic Beans Store \"[your-subject]\"\nMagic Beans Store <mauricioaparecidogabriel@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Magic Beans Store (http://localhost:8080/magicbeans)\nReply-To: mauricioaparecidogabriel@gmail.com\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.(remetente)\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde. (spam)\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário de contato 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2018-04-13 22:31:23', '2018-04-14 01:31:23', '', 0, 'http://localhost:8080/magicbeans/?post_type=wpcf7_contact_form&#038;p=109', 0, 'wpcf7_contact_form', '', 0),
(114, 1, '2018-03-23 23:03:15', '2018-03-24 02:03:15', '', 'Order &ndash; março 23, 2018 @ 11:03 PM', '', 'trash', 'open', 'closed', 'order_5ab5b1e396122', 'pedido__trashed', '', '', '2018-07-14 13:09:50', '2018-07-14 16:09:50', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=114', 0, 'shop_order', '', 0),
(115, 1, '2018-03-23 23:10:44', '2018-03-24 02:10:44', '', 'Order &ndash; março 23, 2018 @ 11:10 PM', '', 'trash', 'open', 'closed', 'order_5ab5b3a4a143b', 'pedido-2__trashed', '', '', '2018-07-14 13:09:49', '2018-07-14 16:09:49', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=115', 0, 'shop_order', '', 1),
(116, 1, '2018-03-23 23:16:06', '2018-03-24 02:16:06', '', 'Order &ndash; março 23, 2018 @ 11:16 PM', '', 'trash', 'open', 'closed', 'order_5ab5b4e662561', 'pedido-3__trashed', '', '', '2018-07-14 13:08:59', '2018-07-14 16:08:59', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=116', 0, 'shop_order', '', 1),
(118, 1, '2018-03-23 23:48:23', '2018-03-24 02:48:23', '[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-03-23 23:48:23', '2018-03-24 02:48:23', '', 88, 'http://localhost:8080/magicbeans/2018/03/23/88-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-03-24 11:16:10', '2018-03-24 14:16:10', '', 'Order &ndash; março 24, 2018 @ 11:16 AM', '', 'trash', 'open', 'closed', 'order_5ab65daa95fb6', 'pedido-4__trashed', '', '', '2018-07-14 13:08:58', '2018-07-14 16:08:58', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=119', 0, 'shop_order', '', 2),
(133, 1, '2018-03-25 22:34:44', '2018-03-26 01:34:44', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-04-16 22:18:22', '2018-04-17 01:18:22', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slider&#038;p=133', 0, 'ml-slider', '', 0),
(134, 1, '2018-03-25 22:35:39', '2018-03-26 01:35:39', '', 'Slider 133 - image', '', 'publish', 'closed', 'closed', '', 'slider-133-image', '', '', '2018-04-16 22:18:22', '2018-04-17 01:18:22', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=134', 0, 'ml-slide', '', 0),
(135, 1, '2018-03-25 22:35:58', '2018-03-26 01:35:58', '', 'Slider 133 - image', '', 'trash', 'closed', 'closed', '', 'slider-133-image-2__trashed', '', '', '2018-04-16 22:12:26', '2018-04-17 01:12:26', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=135', 1, 'ml-slide', '', 0),
(136, 1, '2018-03-25 22:36:05', '2018-03-26 01:36:05', '', 'Slider 133 - image', '', 'trash', 'closed', 'closed', '', 'slider-133-image-3__trashed', '', '', '2018-04-16 22:12:33', '2018-04-17 01:12:33', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=136', 2, 'ml-slide', '', 0),
(137, 1, '2018-03-25 22:36:15', '2018-03-26 01:36:15', '', 'Slider 133 - image', '', 'publish', 'closed', 'closed', '', 'slider-133-image-4', '', '', '2018-04-16 22:18:23', '2018-04-17 01:18:23', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=137', 1, 'ml-slide', '', 0),
(138, 1, '2018-03-25 22:39:16', '2018-03-26 01:39:16', '[metaslider id=133]', '', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-25 22:39:16', '2018-03-26 01:39:16', '', 74, 'http://localhost:8080/magicbeans/2018/03/25/74-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-04-04 21:14:53', '2018-04-05 00:14:53', '<label> Nome\r\n    [text* your-name] </label>\r\n\r\n<label> E-mail\r\n    [email* your-email] </label>\r\n\r\n<label> Tipo de produto\r\n    [select your-product include_blank \"Camiseta\" \"Bottom\" \"Bandeira\" \"Caneca\" \"Copo\"] </label>\r\n\r\n<label> Arquivo\r\n    [file arquivo limit:10485760] </label>\r\n\r\n<label> Mensagem\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\nPedido de produto personalizado\n[your-name] <[your-email]>\nmauricioaparecidogabriel@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: Pedido de produto personalizado\r\n\r\n\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de solicitação de produto personalizado em  (http://localhost:8080/magicbeans)\nReply-To: [your-email]\n[arquivo]\n\n\n1\nRecebemos seu pedido!\n<mauricioaparecidogabriel@gmail.com>\n[your-email]\nOlá [your-name]!\r\n\r\nRecebemos seu pedido de personalização de [your-product], e em breve entraremos em contato com você para maiores detalhes.\r\n\r\nDesde já, agradecemos a preferência!\r\n\r\n-- \r\nEste é um e-mail de resposta automática. Por favor não responda.\nReply-To: mauricioaparecidogabriel@gmail.com\n\n1\n\nSua solicitação foi enviada com sucesso! Verifique sua caixa de e-mail para acompanhamento do pedido\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Preencha o formulário', '', 'publish', 'closed', 'closed', '', 'envie-sua-arte', '', '', '2018-04-13 22:27:15', '2018-04-14 01:27:15', '', 0, 'http://localhost:8080/magicbeans/?post_type=wpcf7_contact_form&#038;p=186', 0, 'wpcf7_contact_form', '', 0),
(188, 1, '2018-04-04 21:16:20', '2018-04-05 00:16:20', '[contact-form-7 id=\"186\" title=\"Envie sua arte\"]', '', '', 'publish', 'closed', 'closed', '', 'pagina-de-personalizacao', '', '', '2018-05-18 09:33:39', '2018-05-18 12:33:39', '', 0, 'http://localhost:8080/magicbeans/?page_id=188', 0, 'page', '', 0),
(189, 1, '2018-04-04 21:16:20', '2018-04-05 00:16:20', '[contact-form-7 id=\"186\" title=\"Envie sua arte\"]', '', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-04-04 21:16:20', '2018-04-05 00:16:20', '', 188, 'http://localhost:8080/magicbeans/2018/04/04/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-04-04 21:17:09', '2018-04-05 00:17:09', '', 'PERSONALIZE!', '', 'publish', 'closed', 'closed', '', '188-sem-titulo', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=190', 6, 'nav_menu_item', '', 0),
(191, 1, '2018-04-04 21:17:59', '2018-04-05 00:17:59', '[contact-form-7 id=\"186\" title=\"Envie sua arte\"]', 'Envie sua arte', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-04-04 21:17:59', '2018-04-05 00:17:59', '', 188, 'http://localhost:8080/magicbeans/2018/04/04/188-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2018-04-04 21:35:40', '2018-04-05 00:35:40', '[contact-form-7 id=\"186\" title=\"Envie sua arte\"]', '', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-04-04 21:35:40', '2018-04-05 00:35:40', '', 188, 'http://localhost:8080/magicbeans/2018/04/04/188-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2018-04-05 22:21:44', '2018-04-06 01:21:44', '', 'Order &ndash; abril 5, 2018 @ 10:21 PM', '', 'trash', 'open', 'closed', 'order_5ac6cba8b7c6d', 'pedido-5__trashed', '', '', '2018-07-14 13:08:58', '2018-07-14 16:08:58', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=199', 0, 'shop_order', '', 0),
(204, 1, '2018-04-05 22:42:59', '2018-04-06 01:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2018-04-16 21:17:41', '2018-04-17 00:17:41', '', 0, 'http://localhost:8080/magicbeans/?p=204', 4, 'nav_menu_item', '', 0),
(205, 1, '2018-04-05 22:42:59', '2018-04-06 01:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2018-04-16 21:17:41', '2018-04-17 00:17:41', '', 0, 'http://localhost:8080/magicbeans/?p=205', 3, 'nav_menu_item', '', 0),
(209, 1, '2018-04-06 12:07:00', '2018-04-06 15:07:00', '', 'Sobre a empresa', '', 'publish', 'closed', 'closed', '', 'sobre-a-empresa', '', '', '2018-05-15 23:35:14', '2018-05-16 02:35:14', '', 0, 'http://localhost:8080/magicbeans/?page_id=209', 0, 'page', '', 0),
(210, 1, '2018-04-06 12:07:00', '2018-04-06 15:07:00', '', 'Cadastro', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-04-06 12:07:00', '2018-04-06 15:07:00', '', 209, 'http://localhost:8080/magicbeans/2018/04/06/209-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2018-04-06 12:11:47', '2018-04-06 15:11:47', '[woocommerce_simple_registration]', 'Cadastro', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-04-06 12:11:47', '2018-04-06 15:11:47', '', 209, 'http://localhost:8080/magicbeans/2018/04/06/209-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-04-06 14:39:24', '2018-04-06 17:39:24', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\n&nbsp;\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-autosave-v1', '', '', '2018-04-06 14:39:24', '2018-04-06 17:39:24', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-autosave-v1/', 0, 'revision', '', 0),
(215, 1, '2018-04-06 12:20:24', '2018-04-06 15:20:24', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:20:24', '2018-04-06 15:20:24', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2018-04-06 12:21:13', '2018-04-06 15:21:13', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', '', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:21:13', '2018-04-06 15:21:13', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-04-06 12:21:26', '2018-04-06 15:21:26', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:21:26', '2018-04-06 15:21:26', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2018-04-06 12:22:53', '2018-04-06 15:22:53', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n&nbsp;\r\n<h3>(11)98899-9988</h3>\r\n<h3>(11)98899-9988</h3>\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:22:53', '2018-04-06 15:22:53', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2018-04-06 12:23:20', '2018-04-06 15:23:20', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<h3>(11) 98899-9988</h3>\r\n<h3>(11) 98899-9988</h3>\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:23:20', '2018-04-06 15:23:20', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2018-04-06 12:23:55', '2018-04-06 15:23:55', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<h2><strong>(11) 98899-9988</strong></h2>\r\n<h2><strong>(11) 98899-9988</strong></h2>\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:23:55', '2018-04-06 15:23:55', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-04-06 12:24:22', '2018-04-06 15:24:22', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n(11) 98899-9988\r\n\r\n(11) 98899-9988\r\n\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:24:22', '2018-04-06 15:24:22', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2018-04-06 12:24:52', '2018-04-06 15:24:52', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<h2>(11) 98899-9988</h2>\r\n<h2>(11) 98899-9988</h2>\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:24:52', '2018-04-06 15:24:52', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2018-04-06 12:29:38', '2018-04-06 15:29:38', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<h4><img class=\"alignleft wp-image-223\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_pequeno.png\" alt=\"\" width=\"37\" height=\"36\" /></h4>\r\n<h2>(11) 98899-9988</h2>\r\n<img class=\"alignleft wp-image-223\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_pequeno.png\" alt=\"\" width=\"37\" height=\"36\" />\r\n<h2>(11) 98899-9988</h2>\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:29:38', '2018-04-06 15:29:38', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2018-04-06 12:34:26', '2018-04-06 15:34:26', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-medium wp-image-225\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-300x77.png\" alt=\"\" width=\"300\" height=\"77\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:34:26', '2018-04-06 15:34:26', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2018-04-06 12:38:06', '2018-04-06 15:38:06', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-medium wp-image-225\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-300x77.png\" alt=\"\" width=\"300\" height=\"77\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignleft size-medium wp-image-225\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-300x77.png\" alt=\"\" width=\"300\" height=\"77\" />\r\n<p style=\"text-align: left;\"></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:38:06', '2018-04-06 15:38:06', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-04-06 12:40:48', '2018-04-06 15:40:48', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-medium wp-image-228\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-1-300x49.png\" alt=\"\" width=\"300\" height=\"49\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:40:48', '2018-04-06 15:40:48', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2018-04-06 12:41:59', '2018-04-06 15:41:59', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-medium wp-image-230\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-2-300x48.png\" alt=\"\" width=\"300\" height=\"48\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignleft size-medium wp-image-230\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-2-300x48.png\" alt=\"\" width=\"300\" height=\"48\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:41:59', '2018-04-06 15:41:59', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-04-06 12:43:37', '2018-04-06 15:43:37', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-medium wp-image-232\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-3-300x49.png\" alt=\"\" width=\"300\" height=\"49\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignleft size-medium wp-image-232\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-3-300x49.png\" alt=\"\" width=\"300\" height=\"49\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:43:37', '2018-04-06 15:43:37', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2018-04-06 12:44:38', '2018-04-06 15:44:38', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-232 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-3-300x49.png\" alt=\"\" width=\"300\" height=\"49\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignleft size-medium wp-image-232\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-3-300x49.png\" alt=\"\" width=\"300\" height=\"49\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 12:44:38', '2018-04-06 15:44:38', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-04-06 14:39:27', '2018-04-06 17:39:27', '', 'contato-whatsapp_arte', '', 'inherit', 'open', 'closed', '', 'contato-whatsapp_arte-5', '', '', '2018-04-06 14:39:27', '2018-04-06 17:39:27', '', 88, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-4.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2018-04-06 14:39:50', '2018-04-06 17:39:50', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft size-full wp-image-235\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-4.png\" alt=\"\" width=\"200\" height=\"65\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 14:39:50', '2018-04-06 17:39:50', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-04-06 14:42:04', '2018-04-06 17:42:04', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-237 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte-5-300x108.png\" alt=\"\" width=\"300\" height=\"108\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 14:42:04', '2018-04-06 17:42:04', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2018-04-06 14:44:39', '2018-04-06 17:44:39', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-239 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte_2-300x108.png\" alt=\"\" width=\"300\" height=\"108\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 14:44:39', '2018-04-06 17:44:39', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2018-04-06 14:47:07', '2018-04-06 17:47:07', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-241 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte_3-300x109.png\" alt=\"\" width=\"300\" height=\"109\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 14:47:07', '2018-04-06 17:47:07', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2018-04-06 14:48:56', '2018-04-06 17:48:56', '<h4>Entre em contato conosco através dos telefones abaixo ou, se preferir, escreva-nos uma mensagem.</h4>\r\n<img class=\"alignleft wp-image-243 size-medium\" src=\"http://localhost:8080/magicbeans/wp-content/uploads/2018/04/contato-whatsapp_arte_4-300x120.png\" alt=\"\" width=\"300\" height=\"120\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: left;\">[contact-form-7 id=\"109\" title=\"Formulário de contato 1\"]</p>', 'Contato', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-06 14:48:56', '2018-04-06 17:48:56', '', 88, 'http://localhost:8080/magicbeans/2018/04/06/88-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2018-04-06 22:18:23', '2018-04-07 01:18:23', '', 'Order &ndash; abril 6, 2018 @ 10:18 PM', '', 'trash', 'open', 'closed', 'order_5ac81c5f5c488', 'pedido-6__trashed', '', '', '2018-07-14 13:08:57', '2018-07-14 16:08:57', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=249', 0, 'shop_order', '', 1),
(250, 1, '2018-04-06 22:30:24', '2018-04-07 01:30:24', '', 'Order &ndash; abril 6, 2018 @ 10:30 PM', '', 'trash', 'open', 'closed', 'order_5ac81f3040070', 'pedido-7__trashed', '', '', '2018-07-14 13:08:57', '2018-07-14 16:08:57', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=250', 0, 'shop_order', '', 1),
(251, 1, '2018-04-07 13:43:33', '2018-04-07 16:43:33', '', 'Order &ndash; abril 7, 2018 @ 01:43 PM', '', 'trash', 'open', 'closed', 'order_5ac8f535802de', 'pedido-8__trashed', '', '', '2018-07-14 13:08:56', '2018-07-14 16:08:56', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=251', 0, 'shop_order', '', 2),
(252, 1, '2018-04-07 13:57:19', '2018-04-07 16:57:19', '', 'Order &ndash; abril 7, 2018 @ 01:57 PM', '', 'trash', 'open', 'closed', 'order_5ac8f86f51e36', 'pedido-9__trashed', '', '', '2018-07-14 13:08:56', '2018-07-14 16:08:56', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=252', 0, 'shop_order', '', 1),
(253, 1, '2018-04-07 15:14:33', '2018-04-07 18:14:33', '', 'Order &ndash; abril 7, 2018 @ 03:14 PM', '', 'trash', 'open', 'closed', 'order_5ac90a89a7e40', 'pedido-10__trashed', '', '', '2018-07-14 13:08:55', '2018-07-14 16:08:55', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=253', 0, 'shop_order', '', 2),
(254, 1, '2018-04-07 15:19:06', '2018-04-07 18:19:06', '', 'XYZABC01', 'Cupom de desconto de aniversário da loja', 'publish', 'closed', 'closed', '', 'xyzabc01', '', '', '2018-04-07 15:19:06', '2018-04-07 18:19:06', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_coupon&#038;p=254', 0, 'shop_coupon', '', 0),
(255, 1, '2018-04-07 15:23:16', '2018-04-07 18:23:16', '', 'Order &ndash; abril 7, 2018 @ 03:23 PM', '', 'trash', 'open', 'closed', 'order_5ac90c94c5186', 'pedido-11__trashed', '', '', '2018-07-14 13:08:55', '2018-07-14 16:08:55', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=255', 0, 'shop_order', '', 2),
(256, 1, '2018-04-07 15:33:57', '2018-04-07 18:33:57', '', 'Order &ndash; abril 7, 2018 @ 03:33 PM', '', 'trash', 'open', 'closed', 'order_5ac90f15a3d94', 'pedido-12__trashed', '', '', '2018-07-14 13:08:54', '2018-07-14 16:08:54', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=256', 0, 'shop_order', '', 2),
(257, 1, '2018-04-07 15:36:18', '2018-04-07 18:36:18', '', 'Order &ndash; abril 7, 2018 @ 03:36 PM', '', 'trash', 'open', 'closed', 'order_5ac90fa213ade', 'pedido-13__trashed', '', '', '2018-07-14 13:08:53', '2018-07-14 16:08:53', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=257', 0, 'shop_order', '', 2),
(258, 1, '2018-04-07 15:49:38', '2018-04-07 18:49:38', '', 'Order &ndash; abril 7, 2018 @ 03:49 PM', '', 'trash', 'closed', 'closed', 'order_5ac912c23bdba', 'pedido-14__trashed', '', '', '2018-07-14 13:08:53', '2018-07-14 16:08:53', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=258', 0, 'shop_order', '', 2),
(259, 1, '2018-04-07 16:20:30', '2018-04-07 19:20:30', '', 'Order &ndash; abril 7, 2018 @ 04:20 PM', '', 'trash', 'closed', 'closed', 'order_5ac919fe086f8', 'pedido-15__trashed', '', '', '2018-07-14 13:08:52', '2018-07-14 16:08:52', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=259', 0, 'shop_order', '', 3),
(260, 1, '2018-04-07 16:52:35', '2018-04-07 19:52:35', '', 'Order &ndash; abril 7, 2018 @ 04:52 PM', '', 'trash', 'closed', 'closed', 'order_5ac921839a6f6', 'pedido-16__trashed', '', '', '2018-07-14 13:08:52', '2018-07-14 16:08:52', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=260', 0, 'shop_order', '', 4),
(275, 1, '2018-04-13 22:42:02', '2018-04-14 01:42:02', '[woocommerce_simple_registration]', 'Sobre a empresa', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-04-13 22:42:02', '2018-04-14 01:42:02', '', 209, 'http://localhost:8080/magicbeans/2018/04/13/209-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2018-04-13 22:42:51', '2018-04-14 01:42:51', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2018-04-16 21:17:41', '2018-04-17 00:17:41', '', 0, 'http://localhost:8080/magicbeans/?p=276', 2, 'nav_menu_item', '', 0),
(277, 1, '2018-04-13 22:43:43', '2018-04-14 01:43:43', '', 'Sobre a empresa', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-04-13 22:43:43', '2018-04-14 01:43:43', '', 209, 'http://localhost:8080/magicbeans/2018/04/13/209-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2018-04-16 21:15:31', '2018-04-17 00:15:31', ' ', '', '', 'publish', 'closed', 'closed', '', '278', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=278', 1, 'nav_menu_item', '', 0),
(279, 1, '2018-04-16 21:15:31', '2018-04-17 00:15:31', ' ', '', '', 'publish', 'closed', 'closed', '', '279', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=279', 2, 'nav_menu_item', '', 0),
(280, 1, '2018-04-16 21:15:32', '2018-04-17 00:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '280', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=280', 3, 'nav_menu_item', '', 0),
(281, 1, '2018-04-16 21:15:32', '2018-04-17 00:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '281', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=281', 4, 'nav_menu_item', '', 0),
(282, 1, '2018-04-16 21:16:59', '0000-00-00 00:00:00', '', '#74 (sem título)', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 21:16:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/magicbeans/?p=282', 1, 'nav_menu_item', '', 0),
(283, 1, '2018-04-16 21:17:41', '2018-04-17 00:17:41', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-16 21:17:41', '2018-04-17 00:17:41', '', 0, 'http://localhost:8080/magicbeans/?p=283', 1, 'nav_menu_item', '', 0),
(284, 1, '2018-04-16 21:35:11', '2018-04-17 00:35:11', '', 'Bottom Friends', '', 'trash', 'open', 'closed', '', 'bottom-friends__trashed', '', '', '2018-07-14 13:12:48', '2018-07-14 16:12:48', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=284', 0, 'product', '', 0),
(286, 1, '2018-04-16 21:36:37', '2018-04-17 00:36:37', '', 'Bottom Super Mario', '', 'trash', 'open', 'closed', '', 'bottom-super-mario__trashed', '', '', '2018-07-14 13:12:47', '2018-07-14 16:12:47', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=286', 0, 'product', '', 0),
(288, 1, '2018-04-16 21:38:24', '2018-04-17 00:38:24', '', 'Bottom Hobbit', '', 'trash', 'open', 'closed', '', 'bottom-hobbit__trashed', '', '', '2018-07-14 13:12:46', '2018-07-14 16:12:46', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=288', 0, 'product', '', 0),
(290, 1, '2018-04-16 22:04:25', '2018-04-17 01:04:25', '', 'Camiseta Pokemón', '', 'trash', 'open', 'closed', '', 'camiseta-pokemon__trashed', '', '', '2018-07-14 13:27:11', '2018-07-14 16:27:11', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=290', 0, 'product', '', 0),
(292, 1, '2018-04-16 22:05:20', '2018-04-17 01:05:20', '', 'Camiseta Dragon Ball', '', 'publish', 'open', 'closed', '', 'camiseta-dragon-ball', '', '', '2018-04-16 22:05:20', '2018-04-17 01:05:20', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=292', 0, 'product', '', 0),
(293, 1, '2018-04-16 22:05:02', '2018-04-17 01:05:02', '', 'camiseta_goku', '', 'inherit', 'open', 'closed', '', 'camiseta_goku', '', '', '2018-04-16 22:05:02', '2018-04-17 01:05:02', '', 292, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/04/camiseta_goku.png', 0, 'attachment', 'image/png', 0),
(294, 1, '2018-04-16 22:06:23', '2018-04-17 01:06:23', '', 'Camiseta Cavaleiros do Zodíaco', '', 'publish', 'open', 'closed', '', 'camiseta-cavaleiros-do-zodiaco', '', '', '2018-04-16 22:06:23', '2018-04-17 01:06:23', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=294', 0, 'product', '', 0),
(295, 1, '2018-04-16 22:06:09', '2018-04-17 01:06:09', '', 'camiseta_cavaleiros', '', 'inherit', 'open', 'closed', '', 'camiseta_cavaleiros', '', '', '2018-04-16 22:06:09', '2018-04-17 01:06:09', '', 294, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/04/camiseta_cavaleiros.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2018-04-16 22:07:18', '2018-04-17 01:07:18', '', 'Chinelo Naruto', '', 'trash', 'open', 'closed', '', 'chinelo-naruto__trashed', '', '', '2018-07-14 13:25:54', '2018-07-14 16:25:54', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=296', 0, 'product', '', 0),
(298, 1, '2018-04-16 22:09:23', '2018-04-17 01:09:23', '', 'Bottom The Big Bang Theory', '', 'trash', 'open', 'closed', '', 'bottom-the-big-bang-theory__trashed', '', '', '2018-07-14 13:12:45', '2018-07-14 16:12:45', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=298', 0, 'product', '', 0),
(300, 1, '2018-04-16 22:13:01', '2018-04-17 01:13:01', '', 'New Slideshow', '', 'trash', 'closed', 'closed', '', 'new-slideshow-2__trashed', '', '', '2018-04-16 22:13:32', '2018-04-17 01:13:32', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slider&#038;p=300', 0, 'ml-slider', '', 0),
(301, 1, '2018-04-16 22:14:00', '2018-04-17 01:14:00', '', 'Slider 133 - image', '', 'trash', 'closed', 'closed', '', 'slider-133-image-2__trashed-2', '', '', '2018-07-14 13:42:55', '2018-07-14 16:42:55', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=301', 2, 'ml-slide', '', 0),
(302, 1, '2018-04-16 22:14:23', '2018-04-17 01:14:23', '', 'Slider 133 - image', '', 'publish', 'closed', 'closed', '', 'slider-133-image-3', '', '', '2018-04-16 22:18:24', '2018-04-17 01:18:24', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=302', 3, 'ml-slide', '', 0),
(304, 1, '2018-04-16 22:14:54', '2018-04-17 01:14:54', '', 'Slider 133 - image', '', 'publish', 'closed', 'closed', '', 'slider-133-image-5', '', '', '2018-04-16 22:18:24', '2018-04-17 01:18:24', '', 0, 'http://localhost:8080/magicbeans/?post_type=ml-slide&#038;p=304', 4, 'ml-slide', '', 0),
(308, 1, '2018-04-16 23:05:26', '2018-04-17 02:05:26', '[wds id=\"3\"]', '', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-04-16 23:05:26', '2018-04-17 02:05:26', '', 74, 'http://localhost:8080/magicbeans/2018/04/16/74-revision-v1/', 0, 'revision', '', 0),
(311, 1, '2018-05-01 19:14:53', '2018-05-01 22:14:53', ' ', '', '', 'publish', 'closed', 'closed', '', '311', '', '', '2018-05-01 19:14:53', '2018-05-01 22:14:53', '', 0, 'http://localhost:8080/magicbeans/?p=311', 5, 'nav_menu_item', '', 0),
(312, 1, '2018-05-01 23:07:21', '2018-05-02 02:07:21', '', 'Order &ndash; maio 1, 2018 @ 11:07 PM', '', 'trash', 'open', 'closed', 'order_5ae91d59c9dcc', 'pedido-17__trashed', '', '', '2018-07-14 13:08:51', '2018-07-14 16:08:51', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=312', 0, 'shop_order', '', 1),
(313, 1, '2018-05-01 23:28:40', '2018-05-02 02:28:40', '', 'Kit Copos de Shot Marvel - 4 copos', '', 'publish', 'open', 'closed', '', 'kit-copos-de-shot-marvel', '', '', '2018-05-01 23:29:07', '2018-05-02 02:29:07', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=313', 0, 'product', '', 0),
(314, 1, '2018-05-01 23:28:23', '2018-05-02 02:28:23', '', 'kit_marvel_shot', '', 'inherit', 'open', 'closed', '', 'kit_marvel_shot', '', '', '2018-05-01 23:28:23', '2018-05-02 02:28:23', '', 313, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/kit_marvel_shot.jpg', 0, 'attachment', 'image/jpeg', 0),
(315, 1, '2018-05-01 23:30:06', '2018-05-02 02:30:06', '', 'Caneca Grey\'s Anatomy', '', 'trash', 'open', 'closed', '', 'caneca-greys-anatomy__trashed', '', '', '2018-07-14 13:11:34', '2018-07-14 16:11:34', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=315', 0, 'product', '', 0),
(317, 1, '2018-05-01 23:31:40', '2018-05-02 02:31:40', '', 'Caneca Grey\'s Anatomy - You\'re My Person', '', 'trash', 'open', 'closed', '', 'caneca-greys-anatomy-youre-my-person__trashed', '', '', '2018-07-14 13:11:22', '2018-07-14 16:11:22', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=317', 0, 'product', '', 0),
(319, 1, '2018-05-01 23:32:42', '2018-05-02 02:32:42', '', 'Varinha Harry Potter', '', 'trash', 'open', 'closed', '', 'varinha-harry-potter__trashed', '', '', '2018-07-14 13:25:53', '2018-07-14 16:25:53', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=319', 0, 'product', '', 0),
(321, 1, '2018-05-01 23:35:24', '2018-05-02 02:35:24', '', 'Caneca Rock \'N Roll Soco Inglês', '', 'trash', 'open', 'closed', '', 'caneca-rock-n-roll-soco-ingles__trashed', '', '', '2018-07-14 13:38:23', '2018-07-14 16:38:23', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=321', 0, 'product', '', 0),
(323, 1, '2018-05-01 23:36:43', '2018-05-02 02:36:43', '', 'Camiseta Iron Maiden Eddie', '', 'trash', 'open', 'closed', '', 'camiseta-iron-maiden-eddie__trashed', '', '', '2018-07-14 13:25:53', '2018-07-14 16:25:53', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=323', 0, 'product', '', 0),
(324, 1, '2018-05-01 23:36:09', '2018-05-02 02:36:09', '', 'camiseta', '', 'inherit', 'open', 'closed', '', 'camiseta', '', '', '2018-05-01 23:36:09', '2018-05-02 02:36:09', '', 323, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/camiseta.jpg', 0, 'attachment', 'image/jpeg', 0),
(325, 1, '2018-05-01 23:37:36', '2018-05-02 02:37:36', '', 'Camiseta Iron Maiden', '', 'trash', 'open', 'closed', '', 'camiseta-iron-maiden__trashed', '', '', '2018-07-14 13:27:10', '2018-07-14 16:27:10', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=325', 0, 'product', '', 0),
(326, 1, '2018-05-01 23:37:26', '2018-05-02 02:37:26', '', 'camiseta_iron', '', 'inherit', 'open', 'closed', '', 'camiseta_iron', '', '', '2018-05-01 23:37:26', '2018-05-02 02:37:26', '', 325, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/camiseta_iron.jpg', 0, 'attachment', 'image/jpeg', 0),
(327, 1, '2018-05-01 23:38:40', '2018-05-02 02:38:40', '', 'Camiseta Metallica', '', 'trash', 'open', 'closed', '', 'camiseta-mettalica__trashed', '', '', '2018-07-14 13:24:58', '2018-07-14 16:24:58', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=327', 0, 'product', '', 0),
(329, 1, '2018-05-01 23:39:45', '2018-05-02 02:39:45', '', 'Camiseta Metallica', '', 'trash', 'open', 'closed', '', 'camiseta-metallica__trashed', '', '', '2018-07-14 13:25:52', '2018-07-14 16:25:52', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=329', 0, 'product', '', 0),
(331, 1, '2018-05-01 23:40:48', '2018-05-02 02:40:48', '', 'Caneca Pearl Jam', '', 'trash', 'open', 'closed', '', 'caneca-pearl-jam__trashed', '', '', '2018-07-14 13:27:47', '2018-07-14 16:27:47', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=331', 0, 'product', '', 0),
(333, 1, '2018-05-01 23:42:52', '2018-05-02 02:42:52', '', 'Copo The Big Bang Theory - Sheldon Bazinga', '', 'trash', 'open', 'closed', '', 'copo-the-big-bang-theory-sheldon-bazinga__trashed', '', '', '2018-07-14 13:38:22', '2018-07-14 16:38:22', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=333', 0, 'product', '', 0);
INSERT INTO `mb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(335, 1, '2018-05-01 23:43:52', '2018-05-02 02:43:52', '', 'Capa Harry Potter', '', 'trash', 'open', 'closed', '', 'capa-harry-potter__trashed', '', '', '2018-07-14 13:27:09', '2018-07-14 16:27:09', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=335', 0, 'product', '', 0),
(337, 1, '2018-05-01 23:45:01', '2018-05-02 02:45:01', '', 'Camiseta Iron Maiden', '', 'publish', 'open', 'closed', '', 'camiseta-iron-maiden-2', '', '', '2018-05-01 23:45:01', '2018-05-02 02:45:01', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=337', 0, 'product', '', 0),
(338, 1, '2018-05-01 23:44:52', '2018-05-02 02:44:52', '', 'ironmaiden', '', 'inherit', 'open', 'closed', '', 'ironmaiden', '', '', '2018-05-01 23:44:52', '2018-05-02 02:44:52', '', 337, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/ironmaiden.jpg', 0, 'attachment', 'image/jpeg', 0),
(344, 1, '2018-05-15 23:31:47', '2018-05-16 02:31:47', '', 'arte_personalizacao_magic_beans', '', 'inherit', 'open', 'closed', '', 'arte_personalizacao_magic_beans-3', '', '', '2018-05-15 23:31:47', '2018-05-16 02:31:47', '', 188, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/arte_personalizacao_magic_beans-1.png', 0, 'attachment', 'image/png', 0),
(345, 1, '2018-05-15 23:32:37', '2018-05-16 02:32:37', '', 'arte_personalizacao_magic_beans', '', 'inherit', 'open', 'closed', '', 'arte_personalizacao_magic_beans-4', '', '', '2018-05-15 23:32:37', '2018-05-16 02:32:37', '', 188, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/arte_personalizacao_magic_beans.jpg', 0, 'attachment', 'image/jpeg', 0),
(348, 1, '2018-05-16 00:04:42', '2018-05-16 03:04:42', '', 'Order &ndash; maio 16, 2018 @ 12:04 AM', '', 'trash', 'open', 'closed', 'order_5afb9fca7c4ad', 'pedido-18__trashed', '', '', '2018-07-14 13:08:51', '2018-07-14 16:08:51', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=348', 0, 'shop_order', '', 1),
(353, 1, '2018-05-18 09:32:50', '2018-05-18 12:32:50', '', 'arte_personalizacao_magic_beans', '', 'inherit', 'open', 'closed', '', 'arte_personalizacao_magic_beans-5', '', '', '2018-05-18 09:32:50', '2018-05-18 12:32:50', '', 188, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/05/arte_personalizacao_magic_beans-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(354, 1, '2018-05-18 10:15:26', '2018-05-18 13:15:26', '', 'Order &ndash; maio 18, 2018 @ 10:15 AM', '', 'trash', 'open', 'closed', 'order_5afed1ee7220d', 'pedido-19__trashed', '', '', '2018-07-14 13:08:50', '2018-07-14 16:08:50', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=354', 0, 'shop_order', '', 1),
(362, 1, '2018-05-18 12:22:48', '2018-05-18 15:22:48', '', 'Order &ndash; maio 18, 2018 @ 12:22 PM', '', 'trash', 'open', 'closed', 'order_5afeefc8060f6', 'pedido-20__trashed', '', '', '2018-07-14 13:08:50', '2018-07-14 16:08:50', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=362', 0, 'shop_order', '', 0),
(363, 1, '2018-05-18 12:26:08', '2018-05-18 15:26:08', '', 'Order &ndash; maio 18, 2018 @ 12:26 PM', '', 'trash', 'open', 'closed', 'order_5afef09035923', 'pedido-21__trashed', '', '', '2018-07-14 13:08:49', '2018-07-14 16:08:50', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=363', 0, 'shop_order', '', 0),
(364, 1, '2018-05-18 12:30:05', '2018-05-18 15:30:05', '', 'Order &ndash; maio 18, 2018 @ 12:30 PM', '', 'trash', 'open', 'closed', 'order_5afef17dc5e3e', 'pedido-22__trashed', '', '', '2018-07-14 13:08:49', '2018-07-14 16:08:49', '', 0, 'http://localhost:8080/magicbeans/?post_type=shop_order&#038;p=364', 0, 'shop_order', '', 1),
(365, 1, '2018-07-12 20:34:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-12 20:34:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/magicbeans/?p=365', 0, 'post', '', 0),
(366, 1, '2018-07-14 13:51:18', '2018-07-14 16:51:18', '', 'Camiseta Batman', '', 'publish', 'open', 'closed', '', 'camiseta-batman', '', '', '2018-07-14 13:51:24', '2018-07-14 16:51:24', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=366', 0, 'product', '', 0),
(367, 1, '2018-07-14 13:50:54', '2018-07-14 16:50:54', '', 'camiseta_batman', '', 'inherit', 'open', 'closed', '', 'camiseta_batman', '', '', '2018-07-14 13:50:54', '2018-07-14 16:50:54', '', 366, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/camiseta_batman.png', 0, 'attachment', 'image/png', 0),
(368, 1, '2018-07-14 13:50:57', '2018-07-14 16:50:57', '', 'camiseta_vingadores', '', 'inherit', 'open', 'closed', '', 'camiseta_vingadores', '', '', '2018-07-14 13:50:57', '2018-07-14 16:50:57', '', 366, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/camiseta_vingadores.png', 0, 'attachment', 'image/png', 0),
(369, 1, '2018-07-14 13:52:09', '2018-07-14 16:52:09', '', 'Camiseta Vingadores', '', 'publish', 'open', 'closed', '', 'camiseta-vingadores', '', '', '2018-07-14 13:52:20', '2018-07-14 16:52:20', '', 0, 'http://localhost:8080/magicbeans/?post_type=product&#038;p=369', 0, 'product', '', 0),
(370, 1, '2018-07-14 13:53:43', '2018-07-14 16:53:43', '', 'logo_magic_beans_cabecalho_original3', '', 'inherit', 'open', 'closed', '', 'logo_magic_beans_cabecalho_original3', '', '', '2018-07-14 13:53:43', '2018-07-14 16:53:43', '', 0, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/logo_magic_beans_cabecalho_original3.png', 0, 'attachment', 'image/png', 0),
(371, 1, '2018-07-14 13:53:55', '2018-07-14 16:53:55', '', 'cropped-logo_magic_beans_cabecalho_original3.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_magic_beans_cabecalho_original3-png', '', '', '2018-07-14 13:53:55', '2018-07-14 16:53:55', '', 0, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/cropped-logo_magic_beans_cabecalho_original3.png', 0, 'attachment', 'image/png', 0),
(372, 1, '2018-07-14 13:55:52', '2018-07-14 16:55:52', '{\n    \"storefront::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-14 16:54:58\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-14 16:54:58\"\n    },\n    \"storefront::woa_shp_header_picker\": {\n        \"value\": \"compact\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-14 16:54:58\"\n    },\n    \"storefront::custom_logo\": {\n        \"value\": 373,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-14 16:55:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3df1de3-40a9-4b67-b54f-b664a67f55aa', '', '', '2018-07-14 13:55:52', '2018-07-14 16:55:52', '', 0, 'http://localhost:8080/magicbeans/?p=372', 0, 'customize_changeset', '', 0),
(373, 1, '2018-07-14 13:55:43', '2018-07-14 16:55:43', 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/cropped-logo_magic_beans_cabecalho_original3-1.png', 'cropped-logo_magic_beans_cabecalho_original3-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_magic_beans_cabecalho_original3-1-png', '', '', '2018-07-14 13:55:43', '2018-07-14 16:55:43', '', 0, 'http://localhost:8080/magicbeans/wp-content/uploads/2018/07/cropped-logo_magic_beans_cabecalho_original3-1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_photo_slider_instal`
--

CREATE TABLE `mb_rich_web_photo_slider_instal` (
  `id` int(10) UNSIGNED NOT NULL,
  `SL_Img_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_NewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_photo_slider_manager`
--

CREATE TABLE `mb_rich_web_photo_slider_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_IMGS_Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect1`
--

CREATE TABLE `mb_rich_web_slider_effect1` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlSS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_PoH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TUp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHEff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBoxW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArPFT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect1`
--

INSERT INTO `mb_rich_web_slider_effect1` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_web_Sl1_SlS`, `rich_web_Sl1_SlSS`, `rich_web_Sl1_PoH`, `rich_web_Sl1_W`, `rich_web_Sl1_H`, `rich_web_Sl1_BoxS`, `rich_web_Sl1_BoxSC`, `rich_web_Sl1_IBW`, `rich_web_Sl1_IBS`, `rich_web_Sl1_IBC`, `rich_web_Sl1_IBR`, `rich_web_Sl1_TBgC`, `rich_web_Sl1_TC`, `rich_web_Sl1_TTA`, `rich_web_Sl1_TFS`, `rich_web_Sl1_TFF`, `rich_web_Sl1_TUp`, `rich_web_Sl1_ArBgC`, `rich_web_Sl1_ArOp`, `rich_web_Sl1_ArType`, `rich_web_Sl1_ArHBgC`, `rich_web_Sl1_ArHOp`, `rich_web_Sl1_ArHEff`, `rich_web_Sl1_ArBoxW`, `rich_web_Sl1_NavW`, `rich_web_Sl1_NavH`, `rich_web_Sl1_NavPB`, `rich_web_Sl1_NavBW`, `rich_web_Sl1_NavBS`, `rich_web_Sl1_NavBC`, `rich_web_Sl1_NavBR`, `rich_web_Sl1_NavCC`, `rich_web_Sl1_NavHC`, `rich_web_Sl1_ArPFT`, `rich_web_Sl1_NavPos`) VALUES
(1, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(2, '2', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect1_loader`
--

CREATE TABLE `mb_rich_web_slider_effect1_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect1_loader`
--

INSERT INTO `mb_rich_web_slider_effect1_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_NSL_L_Show`, `Rich_Web_NSL_LT_Show`, `Rich_Web_NSL_LT`, `Rich_Web_NSL_L_BgC`, `Rich_Web_NSL_L_T`, `Rich_Web_NSL_LT_T`, `Rich_Web_NSL_LT_FS`, `Rich_Web_NSL_LT_FF`, `Rich_Web_NSL_LT_C`, `Rich_Web_NSL_L_T1_C`, `Rich_Web_NSL_L_T2_C`, `Rich_Web_NSL_L_T3_C`, `Rich_Web_NSL_LT_T2_BC`, `Rich_Web_NSL_L_C`, `Rich_Web_NSL_LT_T2_AnC`, `Rich_Web_NSL_LT_T3_BgC`, `Rich_Web_NSL_L_S`, `Rich_Web_NSL_Loading_Show`) VALUES
(1, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(2, '2', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect2`
--

CREATE TABLE `mb_rich_web_slider_effect2` (
  `id` int(10) UNSIGNED NOT NULL,
  `richideo_EN_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_BIB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_P` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_SD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_Op` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_ArrShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect2`
--

INSERT INTO `mb_rich_web_slider_effect2` (`id`, `richideo_EN_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_CS_BIB`, `rich_CS_P`, `rich_CS_Loop`, `rich_CS_SD`, `rich_CS_AT`, `rich_CS_Cont_BgC`, `rich_CS_Cont_BSC`, `rich_CS_Cont_W`, `rich_CS_Cont_H`, `rich_CS_Cont_Op`, `rich_CS_Cont_BW`, `rich_CS_Cont_BS`, `rich_CS_Cont_BC`, `rich_CS_Cont_BR`, `rich_CS_Video_TShow`, `rich_CS_Video_TC`, `rich_CS_Video_TSC`, `rich_CS_Video_TFS`, `rich_CS_Video_TFF`, `rich_CS_Video_TTA`, `rich_CS_Video_DShow`, `rich_CS_Video_DC`, `rich_CS_Video_DSC`, `rich_CS_Video_DFS`, `rich_CS_Video_DFF`, `rich_CS_Video_DTA`, `rich_CS_Video_Show`, `rich_CS_Video_W`, `rich_CS_Video_H`, `rich_CS_LFS`, `rich_CS_LFF`, `rich_CS_LC`, `rich_CS_LT`, `rich_CS_LBgC`, `rich_CS_LBC`, `rich_CS_LBR`, `rich_CS_LPos`, `rich_CS_LHBgC`, `rich_CS_LHC`, `rich_CS_Video_ArrShow`, `rich_CS_AFS`, `rich_CS_AC`, `rich_CS_Icon`, `rich_CS_Link_BW`, `rich_CS_Link_BS`) VALUES
(1, '3', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(2, '4', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect2_loader`
--

CREATE TABLE `mb_rich_web_slider_effect2_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect2_loader`
--

INSERT INTO `mb_rich_web_slider_effect2_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ContSl_L_Show`, `Rich_Web_ContSl_LT_Show`, `Rich_Web_ContSl_LT`, `Rich_Web_ContSl_L_BgC`, `Rich_Web_ContSl_L_T`, `Rich_Web_ContSl_LT_T`, `Rich_Web_ContSl_LT_FS`, `Rich_Web_ContSl_LT_FF`, `Rich_Web_ContSl_LT_C`, `Rich_Web_ContSl_L_T1_C`, `Rich_Web_ContSl_L_T2_C`, `Rich_Web_ContSl_L_T3_C`, `Rich_Web_ContSl_LT_T2_BC`, `Rich_Web_ContSl_L_C`, `Rich_Web_ContSl_LT_T2_AnC`, `Rich_Web_ContSl_LT_T3_BgC`, `Rich_Web_ContSl_L_S`, `Rich_Web_ContSl_Loading_Show`) VALUES
(1, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '4', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect3`
--

CREATE TABLE `mb_rich_web_slider_effect3` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_animation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow_Speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Anim_Dur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Ic_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_PPL_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Randomize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Box_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Shadow_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Hover_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect3`
--

INSERT INTO `mb_rich_web_slider_effect3` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_fsl_animation`, `rich_fsl_SShow`, `rich_fsl_SShow_Speed`, `rich_fsl_Anim_Dur`, `rich_fsl_Ic_Show`, `rich_fsl_PPL_Show`, `rich_fsl_Randomize`, `rich_fsl_Loop`, `rich_fsl_Width`, `rich_fsl_Height`, `rich_fsl_Border_Width`, `rich_fsl_Border_Style`, `rich_fsl_Border_Color`, `rich_fsl_Box_Shadow`, `rich_fsl_Shadow_Color`, `rich_fsl_Desc_Show`, `rich_fsl_Desc_Size`, `rich_fsl_Desc_Color`, `rich_fsl_Desc_Font_Family`, `rich_fsl_Desc_Text_Align`, `rich_fsl_Desc_Bg_Color`, `rich_fsl_Desc_Transparency`, `rich_fsl_Title_Font_Size`, `rich_fsl_Title_Color`, `rich_fsl_Title_Text_Shadow`, `rich_fsl_Title_Font_Family`, `rich_fsl_Title_Text_Align`, `rich_fsl_Link_Text`, `rich_fsl_Link_Border_Width`, `rich_fsl_Link_Border_Style`, `rich_fsl_Link_Border_Color`, `rich_fsl_Link_Font_Size`, `rich_fsl_Link_Color`, `rich_fsl_Link_Font_Family`, `rich_fsl_Link_Bg_Color`, `rich_fsl_Link_Transparency`, `rich_fsl_Link_Hover_Border_Color`, `rich_fsl_Link_Hover_Bg_Color`, `rich_fsl_Link_Hover_Color`, `rich_fsl_Link_Hover_Transparency`, `rich_fsl_Icon_Size`, `rich_fsl_Icon_Type`, `rich_fsl_Hover_Icon_Type`) VALUES
(1, '5', 'Fashion Slider 1', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '750', '390', '0', 'solid', '#ffffff', '35', '#606060', 'on', '', '', '', '', 'rgba(0,132,170,0.75)', '', '18', '#ffffff', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12'),
(2, '6', 'Fashion Slider 2', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '600', '300', '4', 'solid', '#ffffff', '30', '#0084aa', 'on', '', '', '', '', 'rgba(255,255,255,0.65)', '', '18', '#0084aa', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect3_loader`
--

CREATE TABLE `mb_rich_web_slider_effect3_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect3_loader`
--

INSERT INTO `mb_rich_web_slider_effect3_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FSl_L_Show`, `Rich_Web_FSl_LT_Show`, `Rich_Web_FSl_LT`, `Rich_Web_FSl_L_BgC`, `Rich_Web_FSl_L_T`, `Rich_Web_FSl_LT_T`, `Rich_Web_FSl_LT_FS`, `Rich_Web_FSl_LT_FF`, `Rich_Web_FSl_LT_C`, `Rich_Web_FSl_L_T1_C`, `Rich_Web_FSl_L_T2_C`, `Rich_Web_FSl_L_T3_C`, `Rich_Web_FSl_LT_T2_BC`, `Rich_Web_FSl_L_C`, `Rich_Web_FSl_LT_T2_AnC`, `Rich_Web_FSl_LT_T3_BgC`, `Rich_Web_FSl_L_S`, `Rich_Web_FSl_Loading_Show`) VALUES
(1, '5', 'false', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 1', '18', 'Vijaya', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'large', 'true'),
(2, '6', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Aldhabi', '#000000', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect4`
--

CREATE TABLE `mb_rich_web_slider_effect4` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDABgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDAPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect4`
--

INSERT INTO `mb_rich_web_slider_effect4` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_CT_W`, `Rich_Web_Sl_CT_H`, `Rich_Web_Sl_CT_BW`, `Rich_Web_Sl_CT_BS`, `Rich_Web_Sl_CT_BC`, `Rich_Web_Sl_CT_BxSShow`, `Rich_Web_Sl_CT_BxSType`, `Rich_Web_Sl_CT_BxS`, `Rich_Web_Sl_CT_BxC`, `Rich_Web_Sl_CT_TDABgC`, `Rich_Web_Sl_CT_TDAPos`, `Rich_Web_Sl_CT_LBgC`, `Rich_Web_Sl_CT_TFS`, `Rich_Web_Sl_CT_TFF`, `Rich_Web_Sl_CT_TCC`, `Rich_Web_Sl_CT_TC`, `Rich_Web_Sl_CT_ArBgC`, `Rich_Web_Sl_CT_ArBR`, `Rich_Web_Sl_CT_ArType`, `Rich_Web_Sl_CT_ArHBC`, `Rich_Web_Sl_CT_ArHBR`, `Rich_Web_Sl_CT_ArText`, `Rich_Web_Sl_CT_ArLeft`, `Rich_Web_Sl_CT_ArRight`, `Rich_Web_Sl_CT_ArTextC`, `Rich_Web_Sl_CT_ArTextFS`, `Rich_Web_Sl_CT_ArTextFF`) VALUES
(1, '7', 'Circle Thumbnails', 'Circle Thumbnails', '750', '410', '7', 'solid', '#ffffff', 'true', 'true', '8', '#009491', '#009491', 'bottom', '#009491', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', '#ffffff', '20', 'Vijaya'),
(2, '8', 'Circle Thumbnails 2', 'Circle Thumbnails', '650', '370', '7', 'solid', '#ffffff', 'true', 'false', '20', '#009491', 'rgba(0,148,145,0.6)', 'top', 'rgba(0,148,145,0.6)', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', 'rgba(255,255,255,0.6)', '20', 'Vijaya');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect4_loader`
--

CREATE TABLE `mb_rich_web_slider_effect4_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect4_loader`
--

INSERT INTO `mb_rich_web_slider_effect4_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CircleSl_L_Show`, `Rich_Web_CircleSl_LT_Show`, `Rich_Web_CircleSl_LT`, `Rich_Web_CircleSl_L_BgC`, `Rich_Web_CircleSl_L_T`, `Rich_Web_CircleSl_LT_T`, `Rich_Web_CircleSl_LT_FS`, `Rich_Web_CircleSl_LT_FF`, `Rich_Web_CircleSl_LT_C`, `Rich_Web_CircleSl_L_T1_C`, `Rich_Web_CircleSl_L_T2_C`, `Rich_Web_CircleSl_L_T3_C`, `Rich_Web_CircleSl_LT_T2_BC`, `Rich_Web_CircleSl_L_C`, `Rich_Web_CircleSl_LT_T2_AnC`, `Rich_Web_CircleSl_LT_T3_BgC`, `Rich_Web_CircleSl_L_S`, `Rich_Web_CircleSl_Loading_Show`) VALUES
(1, '7', 'false', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 3', '15', 'Abadi MT Condensed Light', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#009491', 'middle', 'true'),
(2, '8', 'true', 'false', 'Loading', '#ffffff', 'Type 4', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#009491', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect5`
--

CREATE TABLE `mb_rich_web_slider_effect5` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) NOT NULL,
  `rich_web_slider_name` varchar(255) NOT NULL,
  `rich_web_slider_type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IH` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_OC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Next` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Prev` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect5`
--

INSERT INTO `mb_rich_web_slider_effect5` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_SC_BW`, `Rich_Web_Sl_SC_BS`, `Rich_Web_Sl_SC_BC`, `Rich_Web_Sl_SC_BoxShShow`, `Rich_Web_Sl_SC_BoxShType`, `Rich_Web_Sl_SC_BoxSh`, `Rich_Web_Sl_SC_BoxShC`, `Rich_Web_Sl_SC_IW`, `Rich_Web_Sl_SC_IH`, `Rich_Web_Sl_SC_IBW`, `Rich_Web_Sl_SC_IBS`, `Rich_Web_Sl_SC_IBC`, `Rich_Web_Sl_SC_IBR`, `Rich_Web_Sl_SC_ICBW`, `Rich_Web_Sl_SC_ICBS`, `Rich_Web_Sl_SC_ICBC`, `Rich_Web_Sl_SC_TBgC`, `Rich_Web_Sl_SC_TC`, `Rich_Web_Sl_SC_TFS`, `Rich_Web_Sl_SC_TFF`, `Rich_Web_Sl_SC_THBgC`, `Rich_Web_Sl_SC_THC`, `Rich_Web_Sl_SC_Pop_OC`, `Rich_Web_Sl_SC_Pop_BW`, `Rich_Web_Sl_SC_Pop_BC`, `Rich_Web_Sl_SC_Pop_BoxShShow`, `Rich_Web_Sl_SC_Pop_BoxShType`, `Rich_Web_Sl_SC_Pop_BoxSh`, `Rich_Web_Sl_SC_Pop_BoxShC`, `Rich_Web_Sl_SC_L_BgC`, `Rich_Web_Sl_SC_L_C`, `Rich_Web_Sl_SC_L_FS`, `Rich_Web_Sl_SC_L_BW`, `Rich_Web_Sl_SC_L_BS`, `Rich_Web_Sl_SC_L_BC`, `Rich_Web_Sl_SC_L_BR`, `Rich_Web_Sl_SC_L_HBgC`, `Rich_Web_Sl_SC_L_HC`, `Rich_Web_Sl_SC_L_Type`, `Rich_Web_Sl_SC_L_Text`, `Rich_Web_Sl_SC_L_IType`, `Rich_Web_Sl_SC_L_FF`, `Rich_Web_Sl_SC_PI_BgC`, `Rich_Web_Sl_SC_PI_C`, `Rich_Web_Sl_SC_PI_FS`, `Rich_Web_Sl_SC_PI_BW`, `Rich_Web_Sl_SC_PI_BS`, `Rich_Web_Sl_SC_PI_BC`, `Rich_Web_Sl_SC_PI_BR`, `Rich_Web_Sl_SC_PI_HBgC`, `Rich_Web_Sl_SC_PI_HC`, `Rich_Web_Sl_SC_PI_Type`, `Rich_Web_Sl_SC_PI_Text`, `Rich_Web_Sl_SC_PI_IType`, `Rich_Web_Sl_SC_PI_FF`, `Rich_Web_Sl_SC_Arr_BgC`, `Rich_Web_Sl_SC_Arr_C`, `Rich_Web_Sl_SC_Arr_FS`, `Rich_Web_Sl_SC_Arr_BW`, `Rich_Web_Sl_SC_Arr_BS`, `Rich_Web_Sl_SC_Arr_BC`, `Rich_Web_Sl_SC_Arr_BR`, `Rich_Web_Sl_SC_Arr_HBgC`, `Rich_Web_Sl_SC_Arr_HC`, `Rich_Web_Sl_SC_Arr_Type`, `Rich_Web_Sl_SC_Arr_FF`, `Rich_Web_Sl_SC_Arr_IType`, `Rich_Web_Sl_SC_Arr_Next`, `Rich_Web_Sl_SC_Arr_Prev`, `Rich_Web_Sl_SC_PCI_FS`, `Rich_Web_Sl_SC_PCI_C`, `Rich_Web_Sl_SC_PCI_Type`) VALUES
(1, '9', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(2, '10', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect5_loader`
--

CREATE TABLE `mb_rich_web_slider_effect5_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_HT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_H_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect5_loader`
--

INSERT INTO `mb_rich_web_slider_effect5_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CarSl_L_Show`, `Rich_Web_CarSl_LT_Show`, `Rich_Web_CarSl_LT`, `Rich_Web_CarSl_L_BgC`, `Rich_Web_CarSl_L_T`, `Rich_Web_CarSl_LT_T`, `Rich_Web_CarSl_LT_FS`, `Rich_Web_CarSl_LT_FF`, `Rich_Web_CarSl_LT_C`, `Rich_Web_CarSl_L_T1_C`, `Rich_Web_CarSl_L_T2_C`, `Rich_Web_CarSl_L_T3_C`, `Rich_Web_CarSl_LT_T2_BC`, `Rich_Web_CarSl_L_C`, `Rich_Web_CarSl_LT_T2_AnC`, `Rich_Web_CarSl_LT_T3_BgC`, `Rich_Web_CarSl_HT`, `Rich_Web_CarSl_H_OvC`, `Rich_Web_CarSl_L_S`, `Rich_Web_CarSl_Loading_Show`) VALUES
(1, '9', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 4', '18', 'Aharoni', '#1e73be', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true'),
(2, '10', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 3', '17', 'Aharoni', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect6`
--

CREATE TABLE `mb_rich_web_slider_effect6` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_TS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SVis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SLoop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SSc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SlPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_ShNavBut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect6`
--

INSERT INTO `mb_rich_web_slider_effect6` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_FS_BgC`, `Rich_Web_Sl_FS_AP`, `Rich_Web_Sl_FS_TS`, `Rich_Web_Sl_FS_PT`, `Rich_Web_Sl_FS_SS`, `Rich_Web_Sl_FS_SVis`, `Rich_Web_Sl_FS_CS`, `Rich_Web_Sl_FS_SLoop`, `Rich_Web_Sl_FS_SSc`, `Rich_Web_Sl_FS_SlPos`, `Rich_Web_Sl_FS_ShNavBut`, `Rich_Web_Sl_FS_I_W`, `Rich_Web_Sl_FS_I_H`, `Rich_Web_Sl_FS_I_BW`, `Rich_Web_Sl_FS_I_BS`, `Rich_Web_Sl_FS_I_BC`, `Rich_Web_Sl_FS_I_BR`, `Rich_Web_Sl_FS_I_BoxShShow`, `Rich_Web_Sl_FS_I_BoxShType`, `Rich_Web_Sl_FS_I_BoxSh`, `Rich_Web_Sl_FS_I_BoxShC`, `Rich_Web_Sl_FS_T_C`, `Rich_Web_Sl_FS_T_FF`, `Rich_Web_Sl_FS_Nav_Show`, `Rich_Web_Sl_FS_Nav_W`, `Rich_Web_Sl_FS_Nav_H`, `Rich_Web_Sl_FS_Nav_BW`, `Rich_Web_Sl_FS_Nav_BS`, `Rich_Web_Sl_FS_Nav_BC`, `Rich_Web_Sl_FS_Nav_BR`, `Rich_Web_Sl_FS_Nav_PB`, `Rich_Web_Sl_FS_Nav_CC`, `Rich_Web_Sl_FS_Nav_HC`, `Rich_Web_Sl_FS_Nav_C`, `Rich_Web_Sl_FS_Arr_Show`, `Rich_Web_Sl_FS_Arr_Type`, `Rich_Web_Sl_FS_Arr_S`, `Rich_Web_Sl_FS_Arr_C`) VALUES
(1, '11', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(2, '12', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect6_loader`
--

CREATE TABLE `mb_rich_web_slider_effect6_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect6_loader`
--

INSERT INTO `mb_rich_web_slider_effect6_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FlexibleSl_L_Show`, `Rich_Web_FlexibleSl_LT_Show`, `Rich_Web_FlexibleSl_LT`, `Rich_Web_FlexibleSl_L_BgC`, `Rich_Web_FlexibleSl_L_T`, `Rich_Web_FlexibleSl_LT_T`, `Rich_Web_FlexibleSl_LT_FS`, `Rich_Web_FlexibleSl_LT_FF`, `Rich_Web_FlexibleSl_LT_C`, `Rich_Web_FlexibleSl_L_T1_C`, `Rich_Web_FlexibleSl_L_T2_C`, `Rich_Web_FlexibleSl_L_T3_C`, `Rich_Web_FlexibleSl_LT_T2_BC`, `Rich_Web_FlexibleSl_L_C`, `Rich_Web_FlexibleSl_LT_T2_AnC`, `Rich_Web_FlexibleSl_LT_T3_BgC`, `Rich_Web_FlexibleSl_L_S`, `Rich_Web_FlexibleSl_Loading_Show`) VALUES
(1, '11', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd8282', '#c9c9c9', '#000000', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '12', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect7`
--

CREATE TABLE `mb_rich_web_slider_effect7` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_RT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect7`
--

INSERT INTO `mb_rich_web_slider_effect7` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_DS_AP`, `Rich_Web_Sl_DS_PT`, `Rich_Web_Sl_DS_Tr`, `Rich_Web_Sl_DS_H`, `Rich_Web_Sl_DS_BW`, `Rich_Web_Sl_DS_BS`, `Rich_Web_Sl_DS_BC`, `Rich_Web_Sl_DS_TFS`, `Rich_Web_Sl_DS_TFF`, `Rich_Web_Sl_DS_TC`, `Rich_Web_Sl_DS_DFS`, `Rich_Web_Sl_DS_DFF`, `Rich_Web_Sl_DS_DC`, `Rich_Web_Sl_DS_LFS`, `Rich_Web_Sl_DS_LFF`, `Rich_Web_Sl_DS_LC`, `Rich_Web_Sl_DS_LBgC`, `Rich_Web_Sl_DS_LBW`, `Rich_Web_Sl_DS_LBS`, `Rich_Web_Sl_DS_LBC`, `Rich_Web_Sl_DS_LBR`, `Rich_Web_Sl_DS_LHC`, `Rich_Web_Sl_DS_LHBgC`, `Rich_Web_Sl_DS_LT`, `Rich_Web_Sl_DS_Arr_Show`, `Rich_Web_Sl_DS_Arr_LT`, `Rich_Web_Sl_DS_Arr_RT`, `Rich_Web_Sl_DS_Arr_C`, `Rich_Web_Sl_DS_Arr_BgC`, `Rich_Web_Sl_DS_Arr_BW`, `Rich_Web_Sl_DS_Arr_BS`, `Rich_Web_Sl_DS_Arr_BC`, `Rich_Web_Sl_DS_Arr_BR`, `Rich_Web_Sl_DS_Arr_HC`, `Rich_Web_Sl_DS_Arr_HBgC`, `Rich_Web_Sl_DS_Nav_W`, `Rich_Web_Sl_DS_Nav_H`, `Rich_Web_Sl_DS_Nav_PB`, `Rich_Web_Sl_DS_Nav_BW`, `Rich_Web_Sl_DS_Nav_BS`, `Rich_Web_Sl_DS_Nav_BC`, `Rich_Web_Sl_DS_Nav_BR`, `Rich_Web_Sl_DS_Nav_C`, `Rich_Web_Sl_DS_Nav_HC`, `Rich_Web_Sl_DS_Nav_CC`) VALUES
(1, '13', 'Dynamic Slider 1', 'Dynamic Slider', 'true', '5', 'true', '250', '4', 'solid', '#ffffff', '15', 'Aldhabi', '#ffffff', '', '', '', '16', 'Aldhabi', '#ffffff', '#dd3333', '0', 'dotted', '#4a1fc1', '0', '#dd3333', '#ffffff', 'View', 'true', 'Prev', 'Next', '#ffffff', '#0084aa', '0', 'solid', '#16a309', '46', '#ffffff', '#5598aa', '11', '12', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#dd3333', '#ffffff'),
(2, '14', 'Dynamic Slider 2', 'Dynamic Slider', 'true', '5', 'true', '400', '4', 'solid', '#ffffff', '18', 'Aldhabi', '#598fbf', '', '', '', '16', 'Aldhabi', '#ffffff', 'rgba(221,51,51,0)', '1', 'solid', '#ffffff', '0', '#0084aa', 'rgba(255,255,255,0)', 'View More', 'true', 'Prev', 'Next', '#0084aa', 'rgba(255,255,255,0.45)', '0', 'solid', '#000000', '46', '#0084aa', '#ffffff', '10', '10', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#ffffff', '#ffffff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect7_loader`
--

CREATE TABLE `mb_rich_web_slider_effect7_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_ImgT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect7_loader`
--

INSERT INTO `mb_rich_web_slider_effect7_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_DynamicSl_L_Show`, `Rich_Web_DynamicSl_LT_Show`, `Rich_Web_DynamicSl_LT`, `Rich_Web_DynamicSl_L_BgC`, `Rich_Web_DynamicSl_L_T`, `Rich_Web_DynamicSl_LT_T`, `Rich_Web_DynamicSl_LT_FS`, `Rich_Web_DynamicSl_LT_FF`, `Rich_Web_DynamicSl_LT_C`, `Rich_Web_DynamicSl_L_T1_C`, `Rich_Web_DynamicSl_L_T2_C`, `Rich_Web_DynamicSl_L_T3_C`, `Rich_Web_DynamicSl_LT_T2_BC`, `Rich_Web_DynamicSl_L_C`, `Rich_Web_DynamicSl_LT_T2_AnC`, `Rich_Web_DynamicSl_LT_T3_BgC`, `Rich_Web_DynamicSl_ImgT`, `Rich_Web_DynamicSl_L_S`, `Rich_Web_DynamicSl_Loading_Show`) VALUES
(1, '13', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 2', '21', 'Gabriola', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#007596', '#0084aa', '#dd3333', 'Type 2', 'middle', 'true'),
(2, '14', 'true', 'true', 'LOADING', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#0084aa', '#dd3333', 'Type 1', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect8`
--

CREATE TABLE `mb_rich_web_slider_effect8` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_CBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_HBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_StC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_SpC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect8`
--

INSERT INTO `mb_rich_web_slider_effect8` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_TSL_W`, `Rich_Web_Sl_TSL_H`, `Rich_Web_Sl_TSL_BW`, `Rich_Web_Sl_TSL_BS`, `Rich_Web_Sl_TSL_BC`, `Rich_Web_Sl_TSL_BR`, `Rich_Web_Sl_TSL_BoxShShow`, `Rich_Web_Sl_TSL_BoxShType`, `Rich_Web_Sl_TSL_BoxSh`, `Rich_Web_Sl_TSL_BoxShC`, `Rich_Web_Sl_TSL_CM`, `Rich_Web_Sl_TSL_TA`, `Rich_Web_Sl_TSL_AP`, `Rich_Web_Sl_TSL_PH`, `Rich_Web_Sl_TSL_Loop`, `Rich_Web_Sl_TSL_PT`, `Rich_Web_Sl_TSL_CS`, `Rich_Web_Sl_TSL_Nav_Show`, `Rich_Web_Sl_TSL_Nav_W`, `Rich_Web_Sl_TSL_Nav_H`, `Rich_Web_Sl_TSL_Nav_PB`, `Rich_Web_Sl_TSL_Nav_BC`, `Rich_Web_Sl_TSL_Nav_BR`, `Rich_Web_Sl_TSL_Nav_CBC`, `Rich_Web_Sl_TSL_Nav_HBC`, `Rich_Web_Sl_TSL_Nav_Pos`, `Rich_Web_Sl_TSL_SS_Show`, `Rich_Web_Sl_TSL_SS_W`, `Rich_Web_Sl_TSL_SS_H`, `Rich_Web_Sl_TSL_SS_BC`, `Rich_Web_Sl_TSL_SS_BR`, `Rich_Web_Sl_TSL_SS_StC`, `Rich_Web_Sl_TSL_SS_SpC`, `Rich_Web_Sl_TSL_Arr_Show`, `Rich_Web_Sl_TSL_Arr_Type`, `Rich_Web_Sl_TSL_Arr_S`, `Rich_Web_Sl_TSL_Arr_C`, `Rich_Web_Sl_TSL_Pop_OvC`, `Rich_Web_Sl_TSL_Pop_BW`, `Rich_Web_Sl_TSL_Pop_BS`, `Rich_Web_Sl_TSL_Pop_BC`, `Rich_Web_Sl_TSL_Pop_BR`, `Rich_Web_Sl_TSL_Pop_BgC`, `Rich_Web_Sl_TSL_TFS`, `Rich_Web_Sl_TSL_TFF`, `Rich_Web_Sl_TSL_TC`, `Rich_Web_Sl_TSL_Pop_ArrType`, `Rich_Web_Sl_TSL_Pop_ArrS`, `Rich_Web_Sl_TSL_Pop_ArrC`, `Rich_Web_Sl_TSL_CIT`, `Rich_Web_Sl_TSL_CIS`, `Rich_Web_Sl_TSL_CIC`) VALUES
(1, '15', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(2, '15', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(3, '17', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86'),
(4, '17', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect8_loader`
--

CREATE TABLE `mb_rich_web_slider_effect8_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect8_loader`
--

INSERT INTO `mb_rich_web_slider_effect8_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ThSl_L_Show`, `Rich_Web_ThSl_LT_Show`, `Rich_Web_ThSl_LT`, `Rich_Web_ThSl_L_BgC`, `Rich_Web_ThSl_L_T`, `Rich_Web_ThSl_LT_T`, `Rich_Web_ThSl_LT_FS`, `Rich_Web_ThSl_LT_FF`, `Rich_Web_ThSl_LT_C`, `Rich_Web_ThSl_L_T1_C`, `Rich_Web_ThSl_L_T2_C`, `Rich_Web_ThSl_L_T3_C`, `Rich_Web_ThSl_LT_T2_BC`, `Rich_Web_ThSl_L_C`, `Rich_Web_ThSl_LT_T2_AnC`, `Rich_Web_ThSl_LT_T3_BgC`, `Rich_Web_ThSl_L_S`, `Rich_Web_ThSl_Loading_Show`) VALUES
(1, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(3, '17', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true'),
(4, '17', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect9`
--

CREATE TABLE `mb_rich_web_slider_effect9` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect9`
--

INSERT INTO `mb_rich_web_slider_effect9` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AcSL_W`, `Rich_Web_AcSL_H`, `Rich_Web_AcSL_BW`, `Rich_Web_AcSL_BS`, `Rich_Web_AcSL_BC`, `Rich_Web_AcSL_BSh`, `Rich_Web_AcSL_BShC`, `Rich_Web_AcSL_Img_W`, `Rich_Web_AcSL_Img_BSh`, `Rich_Web_AcSL_Img_BShC`, `Rich_Web_AcSL_Title_FS`, `Rich_Web_AcSL_Title_FF`, `Rich_Web_AcSL_Title_C`, `Rich_Web_AcSL_Title_TSh`, `Rich_Web_AcSL_Title_TShC`, `Rich_Web_AcSL_Title_BgC`, `Rich_Web_AcSL_Link_FS`, `Rich_Web_AcSL_Link_FF`, `Rich_Web_AcSL_Link_C`, `Rich_Web_AcSL_Link_TSh`, `Rich_Web_AcSL_Link_TShC`, `Rich_Web_AcSL_Link_BgC`, `Rich_Web_AcSL_Link_Text`) VALUES
(1, '19', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(2, '19', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(3, '21', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .'),
(4, '21', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect9_loader`
--

CREATE TABLE `mb_rich_web_slider_effect9_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect9_loader`
--

INSERT INTO `mb_rich_web_slider_effect9_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AccSl_L_Show`, `Rich_Web_AccSl_LT_Show`, `Rich_Web_AccSl_LT`, `Rich_Web_AccSl_L_BgC`, `Rich_Web_AccSl_L_T`, `Rich_Web_AccSl_LT_T`, `Rich_Web_AccSl_LT_FS`, `Rich_Web_AccSl_LT_FF`, `Rich_Web_AccSl_LT_C`, `Rich_Web_AccSl_L_T1_C`, `Rich_Web_AccSl_L_T2_C`, `Rich_Web_AccSl_L_T3_C`, `Rich_Web_AccSl_LT_T2_BC`, `Rich_Web_AccSl_L_C`, `Rich_Web_AccSl_LT_T2_AnC`, `Rich_Web_AccSl_LT_T3_BgC`, `Rich_Web_AccSl_L_S`, `Rich_Web_AccSl_Loading_Show`) VALUES
(1, '19', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(2, '21', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect10`
--

CREATE TABLE `mb_rich_web_slider_effect10` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SShChT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_M` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L1_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L2_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L3_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect10`
--

INSERT INTO `mb_rich_web_slider_effect10` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AnSL_W`, `Rich_Web_AnSL_H`, `Rich_Web_AnSL_BW`, `Rich_Web_AnSL_BS`, `Rich_Web_AnSL_BC`, `Rich_Web_AnSL_BR`, `Rich_Web_AnSL_BSh`, `Rich_Web_AnSL_ShC`, `Rich_Web_AnSL_ET`, `Rich_Web_AnSL_SSh`, `Rich_Web_AnSL_SShChT`, `Rich_Web_AnSL_T_FS`, `Rich_Web_AnSL_T_FF`, `Rich_Web_AnSL_T_C`, `Rich_Web_AnSL_T_BgC`, `Rich_Web_AnSL_T_TA`, `Rich_Web_AnSL_T_Sh`, `Rich_Web_AnSL_T_ShC`, `Rich_Web_AnSL_N_Sh`, `Rich_Web_AnSL_N_S`, `Rich_Web_AnSL_N_BW`, `Rich_Web_AnSL_N_BC`, `Rich_Web_AnSL_N_BgC`, `Rich_Web_AnSL_N_BS`, `Rich_Web_AnSL_N_HBgC`, `Rich_Web_AnSL_N_CC`, `Rich_Web_AnSL_N_M`, `Rich_Web_AnSL_Ic_Sh`, `Rich_Web_AnSL_Ic_T`, `Rich_Web_AnSL_Ic_S`, `Rich_Web_AnSL_Ic_C`, `Rich_Web_AnSL_L_BgC`, `Rich_Web_AnSL_L_T`, `Rich_Web_AnSL_L_FS`, `Rich_Web_AnSL_L_FF`, `Rich_Web_AnSL_L_C`, `Rich_Web_AnSL_L1_T`, `Rich_Web_AnSL_L2_T`, `Rich_Web_AnSL_L3_T`) VALUES
(1, '23', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '', '', '', '', '', '', '', ''),
(2, '23', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '', '', '', '', '', '', '', ''),
(3, '25', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '', '', '', '', '', '', '', ''),
(4, '25', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effect10_loader`
--

CREATE TABLE `mb_rich_web_slider_effect10_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effect10_loader`
--

INSERT INTO `mb_rich_web_slider_effect10_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AnimSl_L_Show`, `Rich_Web_AnimSl_LT_Show`, `Rich_Web_AnimSl_LT`, `Rich_Web_AnimSl_L_BgC`, `Rich_Web_AnimSl_L_T`, `Rich_Web_AnimSl_LT_T`, `Rich_Web_AnimSl_LT_FS`, `Rich_Web_AnimSl_LT_FF`, `Rich_Web_AnimSl_LT_C`, `Rich_Web_AnimSl_L_T1_C`, `Rich_Web_AnimSl_L_T2_C`, `Rich_Web_AnimSl_L_T3_C`, `Rich_Web_AnimSl_LT_T2_BC`, `Rich_Web_AnimSl_L_C`, `Rich_Web_AnimSl_LT_T2_AnC`, `Rich_Web_AnimSl_LT_T3_BgC`, `Rich_Web_AnimSl_L_S`, `Rich_Web_AnimSl_Loading_Show`) VALUES
(1, '23', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(2, '25', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_effects_data`
--

CREATE TABLE `mb_rich_web_slider_effects_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_effects_data`
--

INSERT INTO `mb_rich_web_slider_effects_data` (`id`, `slider_name`, `slider_type`) VALUES
(1, 'Slider Navigation 1', 'Slider Navigation'),
(2, 'Slider Navigation 2', 'Slider Navigation'),
(3, 'Content Slider', 'Content Slider'),
(4, 'Content-Slider', 'Content Slider'),
(5, 'Fashion Slider 1', 'Fashion Slider'),
(6, 'Fashion Slider 2', 'Fashion Slider'),
(7, 'Circle Thumbnails', 'Circle Thumbnails'),
(8, 'Circle Thumbnails 2', 'Circle Thumbnails'),
(9, 'Slider Carousel 1', 'Slider Carousel'),
(10, 'Slider Carousel 2', 'Slider Carousel'),
(11, 'Flexible Slider 1', 'Flexible Slider'),
(12, 'Flexible Slider 2', 'Flexible Slider'),
(13, 'Dynamic Slider 1', 'Dynamic Slider'),
(14, 'Dynamic Slider 2', 'Dynamic Slider'),
(15, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(16, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(17, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(18, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(19, 'Accordion 1', 'Accordion Slider'),
(20, 'Accordion 1', 'Accordion Slider'),
(21, 'Accordion 2', 'Accordion Slider'),
(22, 'Accordion 2', 'Accordion Slider'),
(23, 'Animation Slider 1', 'Animation Slider'),
(24, 'Animation Slider 1', 'Animation Slider'),
(25, 'Animation Slider 2', 'Animation Slider'),
(26, 'Animation Slider 2', 'Animation Slider');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_font_family`
--

CREATE TABLE `mb_rich_web_slider_font_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `Font_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_rich_web_slider_font_family`
--

INSERT INTO `mb_rich_web_slider_font_family` (`id`, `Font_family`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun'),
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_rich_web_slider_id`
--

CREATE TABLE `mb_rich_web_slider_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_termmeta`
--

CREATE TABLE `mb_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_termmeta`
--

INSERT INTO `mb_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(9, 21, 'order', '0'),
(10, 21, 'display_type', ''),
(11, 21, 'thumbnail_id', '0'),
(12, 22, 'order', '0'),
(13, 22, 'display_type', ''),
(14, 22, 'thumbnail_id', '0'),
(15, 23, 'order', '0'),
(16, 23, 'display_type', ''),
(17, 23, 'thumbnail_id', '0'),
(18, 24, 'order', '0'),
(19, 24, 'display_type', ''),
(20, 24, 'thumbnail_id', '0'),
(21, 24, 'product_count_product_cat', '1'),
(22, 21, 'product_count_product_cat', '5'),
(23, 22, 'product_count_product_cat', '2'),
(24, 23, 'product_count_product_cat', '2'),
(25, 15, 'product_count_product_cat', '0'),
(26, 26, 'order', '0'),
(27, 26, 'display_type', ''),
(28, 26, 'thumbnail_id', '0'),
(29, 26, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_terms`
--

CREATE TABLE `mb_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_terms`
--

INSERT INTO `mb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sem categoria', 'sem-categoria', 0),
(16, 'Menu Principal', 'menu-principal', 0),
(19, '133', '133', 0),
(20, 'Menu Superior', 'menu-superior', 0),
(21, 'Super Heróis', 'super-herois', 0),
(22, 'Filmes e Séries', 'filmes-e-series', 0),
(23, 'Mangás e Animes', 'mangas-e-animes', 0),
(24, 'Mundo Geek', 'mundo-geek', 0),
(25, '300', '300', 0),
(26, 'Moda Rock', 'moda-rock', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_term_relationships`
--

CREATE TABLE `mb_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_term_relationships`
--

INSERT INTO `mb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(18, 22, 0),
(18, 24, 0),
(20, 2, 0),
(20, 21, 0),
(26, 2, 0),
(26, 21, 0),
(27, 2, 0),
(27, 21, 0),
(28, 2, 0),
(28, 21, 0),
(29, 2, 0),
(29, 24, 0),
(30, 2, 0),
(30, 24, 0),
(38, 2, 0),
(38, 14, 0),
(38, 24, 0),
(39, 2, 0),
(39, 13, 0),
(39, 22, 0),
(39, 24, 0),
(134, 19, 0),
(135, 19, 0),
(136, 19, 0),
(137, 19, 0),
(190, 16, 0),
(204, 20, 0),
(205, 20, 0),
(276, 20, 0),
(278, 16, 0),
(279, 16, 0),
(280, 16, 0),
(281, 16, 0),
(283, 20, 0),
(284, 2, 0),
(284, 22, 0),
(286, 2, 0),
(286, 24, 0),
(288, 2, 0),
(288, 22, 0),
(288, 24, 0),
(290, 2, 0),
(290, 23, 0),
(292, 2, 0),
(292, 23, 0),
(294, 2, 0),
(294, 23, 0),
(296, 2, 0),
(296, 23, 0),
(298, 2, 0),
(298, 22, 0),
(298, 24, 0),
(301, 19, 0),
(302, 19, 0),
(304, 19, 0),
(311, 16, 0),
(313, 2, 0),
(313, 21, 0),
(313, 24, 0),
(315, 2, 0),
(315, 22, 0),
(317, 2, 0),
(317, 22, 0),
(319, 2, 0),
(319, 22, 0),
(319, 24, 0),
(321, 2, 0),
(321, 26, 0),
(323, 2, 0),
(323, 26, 0),
(325, 2, 0),
(325, 26, 0),
(327, 2, 0),
(327, 26, 0),
(329, 2, 0),
(329, 26, 0),
(331, 2, 0),
(331, 26, 0),
(333, 2, 0),
(333, 22, 0),
(333, 24, 0),
(335, 2, 0),
(335, 22, 0),
(335, 24, 0),
(337, 2, 0),
(337, 26, 0),
(366, 2, 0),
(366, 21, 0),
(366, 22, 0),
(369, 2, 0),
(369, 21, 0),
(369, 22, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_term_taxonomy`
--

CREATE TABLE `mb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_term_taxonomy`
--

INSERT INTO `mb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 6),
(19, 19, 'ml-slider', '', 0, 4),
(20, 20, 'nav_menu', '', 0, 4),
(21, 21, 'product_cat', '', 0, 5),
(22, 22, 'product_cat', '', 0, 2),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'product_cat', '', 0, 1),
(25, 25, 'ml-slider', '', 0, 0),
(26, 26, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_usermeta`
--

CREATE TABLE `mb_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_usermeta`
--

INSERT INTO `mb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lord'),
(2, 1, 'first_name', 'Mauricio'),
(3, 1, 'last_name', 'Aparecido Gabriel'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'mb_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'mb_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,text_widget_custom_html,addtoany_settings_pointer,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'mb_dashboard_quick_press_last_post_id', '365'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(23, 1, 'jetpack_tracks_anon_id', 'jetpack:cZeMfK8Q4nBZMUOLdbfyUhfl'),
(24, 1, 'nav_menu_recently_edited', '16'),
(25, 1, 'mb_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&align=left&advImgDetails=show&imgsize=full'),
(26, 1, 'mb_user-settings-time', '1526434920'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(133, 1, 'last_update', '1526439881'),
(134, 1, 'billing_first_name', 'Mauricio'),
(135, 1, 'billing_last_name', 'Aparecido Gabriel'),
(136, 1, 'billing_address_1', 'Travessa Ponte Alta do Norte'),
(137, 1, 'billing_city', 'São Paulo'),
(138, 1, 'billing_state', 'SP'),
(139, 1, 'billing_postcode', '08230-660'),
(140, 1, 'billing_country', 'BR'),
(141, 1, 'billing_email', 'mauricioaparecidogabriel@gmail.com'),
(142, 1, 'billing_phone', '(11) 98518-1910'),
(143, 1, 'shipping_first_name', 'Mauricio'),
(144, 1, 'shipping_last_name', 'Aparecido Gabriel'),
(145, 1, 'shipping_address_1', 'Travessa Ponte Alta do Norte'),
(146, 1, 'shipping_city', 'São Paulo'),
(147, 1, 'shipping_state', 'SP'),
(148, 1, 'shipping_postcode', '08230-660'),
(149, 1, 'shipping_country', 'BR'),
(215, 6, 'nickname', 'reginaldo.paiva'),
(216, 6, 'first_name', 'Reginaldo'),
(217, 6, 'last_name', 'Paiva'),
(218, 6, 'description', ''),
(219, 6, 'rich_editing', 'true'),
(220, 6, 'syntax_highlighting', 'true'),
(221, 6, 'comment_shortcuts', 'false'),
(222, 6, 'admin_color', 'fresh'),
(223, 6, 'use_ssl', '0'),
(224, 6, 'show_admin_bar_front', 'true'),
(225, 6, 'locale', ''),
(226, 6, 'mb_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(227, 6, 'mb_user_level', '0'),
(228, 6, 'last_update', '1523131255'),
(231, 6, 'billing_first_name', 'Reginaldo'),
(232, 6, 'billing_last_name', 'Paiva'),
(233, 6, 'billing_address_1', 'Alameda dos Tupiniquins'),
(234, 6, 'billing_address_2', 'Itaquera'),
(235, 6, 'billing_city', 'São Paulo'),
(236, 6, 'billing_state', 'SP'),
(237, 6, 'billing_postcode', '04077-002'),
(238, 6, 'billing_country', 'BR'),
(239, 6, 'billing_email', 'mauricio.gabriel@ceb.g12.br'),
(240, 6, 'billing_phone', '(11) 98877-6655'),
(241, 6, 'shipping_first_name', 'Reginaldo'),
(242, 6, 'shipping_last_name', 'Paiva'),
(243, 6, 'shipping_address_1', 'Alameda dos Tupiniquins'),
(244, 6, 'shipping_address_2', 'Itaquera'),
(245, 6, 'shipping_city', 'São Paulo'),
(246, 6, 'shipping_state', 'SP'),
(247, 6, 'shipping_postcode', '04077-002'),
(248, 6, 'shipping_country', 'BR'),
(260, 6, 'billing_company', ''),
(261, 6, 'shipping_company', ''),
(336, 6, 'paying_customer', '1'),
(338, 6, 'shipping_method', 'a:1:{i:0;s:14:\"local_pickup:5\";}'),
(339, 6, 'billing_persontype', '1'),
(340, 6, 'billing_cpf', '401.877.858-99'),
(341, 6, 'billing_cnpj', ''),
(342, 6, 'billing_number', '997'),
(343, 6, 'billing_neighborhood', 'Planalto Paulista'),
(344, 6, 'billing_cellphone', ''),
(345, 6, 'shipping_number', '997'),
(346, 6, 'shipping_neighborhood', 'Planalto Paulista'),
(348, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(349, 1, 'closedpostboxes_shop_order', 'a:0:{}'),
(350, 1, 'metaboxhidden_shop_order', 'a:0:{}'),
(351, 1, 'paying_customer', '1'),
(352, 1, 'closedpostboxes_product', 'a:0:{}'),
(353, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(367, 1, 'shipping_method', 'a:1:{i:0;s:14:\"local_pickup:5\";}'),
(368, 1, 'billing_persontype', '1'),
(369, 1, 'billing_cpf', '401.877.858-99'),
(370, 1, 'billing_cnpj', ''),
(371, 1, 'billing_number', '05'),
(372, 1, 'billing_neighborhood', 'Vila Verde'),
(373, 1, 'billing_cellphone', ''),
(374, 1, 'shipping_number', '05'),
(375, 1, 'shipping_neighborhood', 'Vila Verde'),
(377, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"357a6fdf7642bf815a88822c447d9dc4\";a:10:{s:3:\"key\";s:32:\"357a6fdf7642bf815a88822c447d9dc4\";s:10:\"product_id\";i:337;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:28.699999999999999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:28.699999999999999;s:8:\"line_tax\";i:0;}}}'),
(379, 7, 'nickname', 'maria.silva'),
(380, 7, 'first_name', 'Maria'),
(381, 7, 'last_name', 'da Silva'),
(382, 7, 'description', ''),
(383, 7, 'rich_editing', 'true'),
(384, 7, 'syntax_highlighting', 'true'),
(385, 7, 'comment_shortcuts', 'false'),
(386, 7, 'admin_color', 'fresh'),
(387, 7, 'use_ssl', '0'),
(388, 7, 'show_admin_bar_front', 'true'),
(389, 7, 'locale', ''),
(390, 7, 'mb_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(391, 7, 'mb_user_level', '0'),
(392, 7, 'last_update', '1526657403'),
(395, 7, 'shipping_first_name', 'Maria'),
(396, 7, 'shipping_last_name', 'da Silva'),
(397, 7, 'shipping_address_1', 'Rua Guarapuava'),
(398, 7, 'shipping_address_2', 'Apartamento 614'),
(399, 7, 'shipping_city', 'São Paulo'),
(400, 7, 'shipping_state', 'SP'),
(401, 7, 'shipping_postcode', '03164-140'),
(402, 7, 'shipping_country', 'BR'),
(405, 7, 'billing_first_name', 'Maria'),
(406, 7, 'billing_last_name', 'da Silva'),
(407, 7, 'billing_address_1', 'Rua Guarapuava'),
(408, 7, 'billing_address_2', 'Apartamento 614'),
(409, 7, 'billing_city', 'São Paulo'),
(410, 7, 'billing_state', 'SP'),
(411, 7, 'billing_postcode', '03164-140'),
(412, 7, 'billing_country', 'BR'),
(413, 7, 'billing_email', 'mrc92_palestrino@hotmail.com'),
(414, 7, 'billing_phone', '(11) 2052-5681'),
(433, 7, 'billing_company', ''),
(434, 7, 'shipping_company', ''),
(435, 7, 'session_tokens', 'a:2:{s:64:\"7c3269bed318bae45e9ae358e1b2adcd412d238555c298f5a32903cced6649f9\";a:4:{s:10:\"expiration\";i:1526823522;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1526650722;}s:64:\"e1f60d2949a2f43ff936b8c5e5093bea9cecb6c287d0c395d4f98332907c691d\";a:4:{s:10:\"expiration\";i:1526830172;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1526657372;}}'),
(437, 1, 'dismissed_regenerating_thumbnails_notice', '1'),
(458, 7, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(459, 7, 'billing_persontype', '1'),
(460, 7, 'billing_cpf', '401.877.858-99'),
(461, 7, 'billing_cnpj', ''),
(462, 7, 'billing_number', '290'),
(463, 7, 'billing_neighborhood', 'Mooca'),
(464, 7, 'billing_cellphone', '(11) 98518-1910'),
(465, 7, 'shipping_number', '290'),
(466, 7, 'shipping_neighborhood', 'Mooca'),
(468, 7, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(469, 1, 'session_tokens', 'a:3:{s:64:\"4580e8a390642f3433bc25914592a0fbdb0874fd0b650492709be572af28f800\";a:4:{s:10:\"expiration\";i:1531608095;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531435295;}s:64:\"bf4d723b9bad53d771eb0b18d7b26e51459f9cbb070c88e394c326a1106650a9\";a:4:{s:10:\"expiration\";i:1531611256;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531438456;}s:64:\"0fbc9d555a80ec3e426e67aa6a909746663e7d6262fe05ca1d32f41c3a9c83d4\";a:4:{s:10:\"expiration\";i:1531755844;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531583044;}}'),
(470, 1, 'wc_last_active', '1531526400'),
(471, 1, 'dismissed_no_secure_connection_notice', '1'),
(472, 7, 'wc_last_active', '1531526400'),
(473, 6, 'wc_last_active', '1531526400'),
(475, 1, 'dismissed_update_notice', '1'),
(476, 1, 'dismissed_store_notice_setting_moved_notice', '1'),
(477, 1, 'mb_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_users`
--

CREATE TABLE `mb_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_users`
--

INSERT INTO `mb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lord', '$P$BU/i1mUKMhoDfyDGth6.wBeQt3cEpy1', 'lord', 'mauricioaparecidogabriel@gmail.com', '', '2018-03-21 23:54:22', '', 0, 'lord'),
(6, 'mauricio.gabriel', '$P$BPurQguFZnwTtAFcKIm2Zp2dd5cm3l.', 'mauricio-gabriel', 'mauricio.gabriel@ceb.g12.br', '', '2018-04-07 16:53:39', '', 0, 'Reginaldo Paiva'),
(7, 'maria.silva', '$P$ByJz712bn0iPfKgiOPYYZ6vLK9tjQH1', 'maria-silva', 'mrc92_palestrino@hotmail.com', '', '2018-05-18 12:39:05', '', 0, 'maria.silva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_wc_download_log`
--

CREATE TABLE `mb_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_wc_webhooks`
--

CREATE TABLE `mb_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_wdslayer`
--

CREATE TABLE `mb_wdslayer` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `slide_id` bigint(20) NOT NULL,
  `type` varchar(8) NOT NULL,
  `depth` bigint(20) NOT NULL,
  `text` mediumtext NOT NULL,
  `link` mediumtext NOT NULL,
  `left` int(4) NOT NULL,
  `top` int(4) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `color` varchar(8) NOT NULL,
  `size` bigint(20) NOT NULL,
  `ffamily` varchar(32) NOT NULL,
  `fweight` varchar(8) NOT NULL,
  `padding` varchar(32) NOT NULL,
  `fbgcolor` varchar(8) NOT NULL,
  `transparent` int(4) NOT NULL,
  `border_width` int(4) NOT NULL,
  `border_style` varchar(16) NOT NULL,
  `border_color` varchar(8) NOT NULL,
  `border_radius` varchar(32) NOT NULL,
  `shadow` varchar(127) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `image_width` int(4) NOT NULL,
  `image_height` int(4) NOT NULL,
  `image_scale` varchar(8) NOT NULL,
  `alt` varchar(127) NOT NULL,
  `imgtransparent` int(4) NOT NULL,
  `social_button` varchar(16) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `layer_effect_in` varchar(32) NOT NULL,
  `duration_eff_in` bigint(20) NOT NULL,
  `layer_effect_out` varchar(32) NOT NULL,
  `duration_eff_out` bigint(20) NOT NULL,
  `target_attr_layer` tinyint(1) NOT NULL,
  `hotp_width` int(4) NOT NULL,
  `hotp_fbgcolor` varchar(8) NOT NULL,
  `hotp_border_width` int(4) NOT NULL,
  `hotp_border_style` varchar(16) NOT NULL,
  `hotp_border_color` varchar(8) NOT NULL,
  `hotp_border_radius` varchar(32) NOT NULL,
  `hotp_text_position` varchar(6) NOT NULL,
  `google_fonts` int(1) NOT NULL,
  `add_class` varchar(127) NOT NULL,
  `layer_video_loop` tinyint(1) NOT NULL,
  `youtube_rel_layer_video` tinyint(1) NOT NULL,
  `hotspot_animation` tinyint(1) NOT NULL,
  `layer_callback_list` varchar(32) NOT NULL,
  `hotspot_text_display` varchar(8) NOT NULL,
  `hover_color_text` varchar(8) NOT NULL,
  `text_alignment` varchar(8) NOT NULL,
  `link_to_slide` int(4) NOT NULL,
  `align_layer` tinyint(1) NOT NULL,
  `static_layer` tinyint(1) NOT NULL,
  `infinite_in` int(4) NOT NULL DEFAULT '1',
  `infinite_out` int(4) NOT NULL DEFAULT '1',
  `min_size` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_wdsslide`
--

CREATE TABLE `mb_wdsslide` (
  `id` int(11) NOT NULL,
  `slider_id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `type` varchar(128) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `target_attr_slide` tinyint(1) NOT NULL,
  `youtube_rel_video` tinyint(1) NOT NULL,
  `video_loop` tinyint(1) NOT NULL,
  `fillmode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mb_wdsslide`
--

INSERT INTO `mb_wdsslide` (`id`, `slider_id`, `title`, `type`, `image_url`, `thumb_url`, `published`, `link`, `order`, `target_attr_slide`, `youtube_rel_video`, `video_loop`, `fillmode`) VALUES
(18, 3, '{\"title\":\"Slide 11\",\"att_width\":\"\",\"att_height\":\"\",\"video_duration\":\"\"}', 'image', '{site_url}/wp-content/uploads/2018/05/banner_animes.png', '{site_url}/wp-content/uploads/2018/05/banner_animes-150x150.png', 1, '', 1, 1, 0, 0, 'fit'),
(19, 3, '{\"title\":\"Slide 12\",\"att_width\":\"\",\"att_height\":\"\",\"video_duration\":\"\"}', 'image', '{site_url}/wp-content/uploads/2018/05/banner_canecas.jpg', '{site_url}/wp-content/uploads/2018/05/banner_canecas-150x150.jpg', 1, '', 3, 1, 0, 0, 'fit'),
(20, 3, '{\"title\":\"Slide 4\",\"att_width\":\"\",\"att_height\":\"\",\"video_duration\":\"\"}', 'image', '{site_url}/wp-content/uploads/2018/05/banner_rock.jpg', '{site_url}/wp-content/uploads/2018/05/banner_rock-150x150.jpg', 1, '', 4, 1, 0, 0, 'fit');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_wdsslider`
--

CREATE TABLE `mb_wdsslider` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `full_width` tinyint(1) NOT NULL,
  `auto_height` tinyint(1) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `align` varchar(8) NOT NULL,
  `effect` varchar(16) NOT NULL,
  `time_intervval` int(4) NOT NULL,
  `autoplay` tinyint(1) NOT NULL,
  `shuffle` tinyint(1) NOT NULL,
  `music` tinyint(1) NOT NULL,
  `music_url` mediumtext NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `background_color` varchar(8) NOT NULL,
  `background_transparent` int(4) NOT NULL,
  `glb_border_width` int(4) NOT NULL,
  `glb_border_style` varchar(16) NOT NULL,
  `glb_border_color` varchar(8) NOT NULL,
  `glb_border_radius` varchar(32) NOT NULL,
  `glb_margin` int(4) NOT NULL,
  `glb_box_shadow` varchar(127) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `layer_out_next` tinyint(1) NOT NULL,
  `prev_next_butt` tinyint(1) NOT NULL,
  `play_paus_butt` tinyint(1) NOT NULL,
  `navigation` varchar(16) NOT NULL,
  `rl_butt_style` varchar(16) NOT NULL,
  `rl_butt_size` int(4) NOT NULL,
  `pp_butt_size` int(4) NOT NULL,
  `butts_color` varchar(8) NOT NULL,
  `butts_transparent` int(4) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `nav_border_width` int(4) NOT NULL,
  `nav_border_style` varchar(16) NOT NULL,
  `nav_border_color` varchar(8) NOT NULL,
  `nav_border_radius` varchar(32) NOT NULL,
  `nav_bg_color` varchar(8) NOT NULL,
  `bull_position` varchar(16) NOT NULL,
  `bull_style` varchar(20) NOT NULL,
  `bull_size` int(4) NOT NULL,
  `bull_color` varchar(8) NOT NULL,
  `bull_act_color` varchar(8) NOT NULL,
  `bull_margin` int(4) NOT NULL,
  `film_pos` varchar(16) NOT NULL,
  `film_thumb_width` int(4) NOT NULL,
  `film_thumb_height` int(4) NOT NULL,
  `film_bg_color` varchar(8) NOT NULL,
  `film_tmb_margin` int(4) NOT NULL,
  `film_act_border_width` int(4) NOT NULL,
  `film_act_border_style` varchar(16) NOT NULL,
  `film_act_border_color` varchar(8) NOT NULL,
  `film_dac_transparent` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `css` mediumtext NOT NULL,
  `timer_bar_type` varchar(16) NOT NULL,
  `timer_bar_size` int(4) NOT NULL,
  `timer_bar_color` varchar(8) NOT NULL,
  `timer_bar_transparent` int(4) NOT NULL,
  `spider_uploader` tinyint(1) NOT NULL,
  `stop_animation` tinyint(1) NOT NULL,
  `right_butt_url` varchar(255) NOT NULL,
  `left_butt_url` varchar(255) NOT NULL,
  `right_butt_hov_url` varchar(255) NOT NULL,
  `left_butt_hov_url` varchar(255) NOT NULL,
  `rl_butt_img_or_not` varchar(8) NOT NULL,
  `bullets_img_main_url` varchar(255) NOT NULL,
  `bullets_img_hov_url` varchar(255) NOT NULL,
  `bull_butt_img_or_not` varchar(8) NOT NULL,
  `play_paus_butt_img_or_not` varchar(8) NOT NULL,
  `play_butt_url` varchar(255) NOT NULL,
  `play_butt_hov_url` varchar(255) NOT NULL,
  `paus_butt_url` varchar(255) NOT NULL,
  `paus_butt_hov_url` varchar(255) NOT NULL,
  `start_slide_num` int(4) NOT NULL,
  `effect_duration` int(6) NOT NULL,
  `carousel` tinyint(1) NOT NULL,
  `carousel_image_counts` int(4) NOT NULL,
  `carousel_image_parameters` varchar(8) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `parallax_effect` tinyint(1) NOT NULL,
  `mouse_swipe_nav` tinyint(1) NOT NULL,
  `bull_hover` int(1) NOT NULL,
  `touch_swipe_nav` tinyint(1) NOT NULL,
  `mouse_wheel_nav` tinyint(1) NOT NULL,
  `keyboard_nav` tinyint(1) NOT NULL,
  `possib_add_ffamily` varchar(255) NOT NULL,
  `show_thumbnail` tinyint(1) NOT NULL,
  `thumb_size` varchar(8) NOT NULL,
  `fixed_bg` tinyint(1) NOT NULL,
  `smart_crop` tinyint(1) NOT NULL,
  `crop_image_position` varchar(16) NOT NULL,
  `javascript` text NOT NULL,
  `carousel_degree` int(4) NOT NULL,
  `carousel_grayscale` int(4) NOT NULL,
  `carousel_transparency` int(4) NOT NULL,
  `bull_back_act_color` varchar(8) NOT NULL,
  `bull_back_color` varchar(8) NOT NULL,
  `bull_radius` varchar(32) NOT NULL,
  `possib_add_google_fonts` tinyint(1) NOT NULL,
  `possib_add_ffamily_google` varchar(255) NOT NULL,
  `slider_loop` tinyint(1) NOT NULL,
  `hide_on_mobile` int(4) NOT NULL,
  `twoway_slideshow` tinyint(1) NOT NULL,
  `full_width_for_mobile` int(4) NOT NULL,
  `order_dir` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mb_wdsslider`
--

INSERT INTO `mb_wdsslider` (`id`, `name`, `published`, `full_width`, `auto_height`, `width`, `height`, `align`, `effect`, `time_intervval`, `autoplay`, `shuffle`, `music`, `music_url`, `preload_images`, `background_color`, `background_transparent`, `glb_border_width`, `glb_border_style`, `glb_border_color`, `glb_border_radius`, `glb_margin`, `glb_box_shadow`, `image_right_click`, `layer_out_next`, `prev_next_butt`, `play_paus_butt`, `navigation`, `rl_butt_style`, `rl_butt_size`, `pp_butt_size`, `butts_color`, `butts_transparent`, `hover_color`, `nav_border_width`, `nav_border_style`, `nav_border_color`, `nav_border_radius`, `nav_bg_color`, `bull_position`, `bull_style`, `bull_size`, `bull_color`, `bull_act_color`, `bull_margin`, `film_pos`, `film_thumb_width`, `film_thumb_height`, `film_bg_color`, `film_tmb_margin`, `film_act_border_width`, `film_act_border_style`, `film_act_border_color`, `film_dac_transparent`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `css`, `timer_bar_type`, `timer_bar_size`, `timer_bar_color`, `timer_bar_transparent`, `spider_uploader`, `stop_animation`, `right_butt_url`, `left_butt_url`, `right_butt_hov_url`, `left_butt_hov_url`, `rl_butt_img_or_not`, `bullets_img_main_url`, `bullets_img_hov_url`, `bull_butt_img_or_not`, `play_paus_butt_img_or_not`, `play_butt_url`, `play_butt_hov_url`, `paus_butt_url`, `paus_butt_hov_url`, `start_slide_num`, `effect_duration`, `carousel`, `carousel_image_counts`, `carousel_image_parameters`, `carousel_fit_containerWidth`, `carousel_width`, `parallax_effect`, `mouse_swipe_nav`, `bull_hover`, `touch_swipe_nav`, `mouse_wheel_nav`, `keyboard_nav`, `possib_add_ffamily`, `show_thumbnail`, `thumb_size`, `fixed_bg`, `smart_crop`, `crop_image_position`, `javascript`, `carousel_degree`, `carousel_grayscale`, `carousel_transparency`, `bull_back_act_color`, `bull_back_color`, `bull_radius`, `possib_add_google_fonts`, `possib_add_ffamily_google`, `slider_loop`, `hide_on_mobile`, `twoway_slideshow`, `full_width_for_mobile`, `order_dir`) VALUES
(3, 'Slide_Tela_Inicial', 1, 1, 0, 1280, 300, 'center', 'sliceH', 6, 1, 0, 0, '', 1, '000000', 100, 0, 'none', '000000', '', 0, '', 0, 0, 1, 0, 'hover', 'fa-angle', 40, 40, '000000', 100, '000000', 0, 'none', 'FFFFFF', '20px', 'FFFFFF', 'bottom', 'fa-square-o', 20, 'FFFFFF', 'FFFFFF', 3, 'none', 100, 50, '000000', 0, 0, 'none', 'FFFFFF', 50, 'none', 'middle-center', 15, '{site_url}/wp-content/plugins/slider-wd/images/watermark.png', 'web-dorado.com', 20, 'arial.ttf', 'FFFFFF', 70, '', 'top', 5, 'BBBBBB', 50, 0, 0, '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/2.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/4.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/3.png', 'style', '{site_url}/wp-content/plugins/slider-wd/images/bullet/bullet1/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/bullet/bullet1/1/2.png', 'style', 'style', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/2.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/3.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/4.png', 1, 800, 0, 7, '0.85', 0, 1000, 0, 0, 1, 1, 0, 0, '', 0, '0.3', 0, 0, 'center center', '{}', 0, 0, 0, '000000', 'CCCCCC', '20px', 0, '', 1, 0, 0, 0, 'asc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_api_keys`
--

CREATE TABLE `mb_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_attribute_taxonomies`
--

CREATE TABLE `mb_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `mb_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_log`
--

CREATE TABLE `mb_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_order_itemmeta`
--

CREATE TABLE `mb_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_order_itemmeta`
--

INSERT INTO `mb_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '18'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '25'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '25'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'correios-sedex3'),
(11, 2, 'cost', '17.50'),
(12, 2, 'total_tax', '0'),
(13, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(14, 3, '_product_id', '37'),
(15, 3, '_variation_id', '0'),
(16, 3, '_qty', '1'),
(17, 3, '_tax_class', ''),
(18, 3, '_line_subtotal', '35'),
(19, 3, '_line_subtotal_tax', '0'),
(20, 3, '_line_total', '35'),
(21, 3, '_line_tax', '0'),
(22, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(23, 4, '_product_id', '38'),
(24, 4, '_variation_id', '0'),
(25, 4, '_qty', '1'),
(26, 4, '_tax_class', ''),
(27, 4, '_line_subtotal', '40'),
(28, 4, '_line_subtotal_tax', '0'),
(29, 4, '_line_total', '40'),
(30, 4, '_line_tax', '0'),
(31, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(32, 5, 'method_id', 'local_pickup:5'),
(33, 5, 'cost', '0.00'),
(34, 5, 'total_tax', '0'),
(35, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(36, 5, 'Itens', 'Caneca Enrolados &times; 1, Caneca Super Mario &times; 1'),
(37, 6, '_product_id', '20'),
(38, 6, '_variation_id', '0'),
(39, 6, '_qty', '4'),
(40, 6, '_tax_class', ''),
(41, 6, '_line_subtotal', '100'),
(42, 6, '_line_subtotal_tax', '0'),
(43, 6, '_line_total', '100'),
(44, 6, '_line_tax', '0'),
(45, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(46, 7, 'method_id', 'correios-pac4'),
(47, 7, 'cost', '18.62'),
(48, 7, 'total_tax', '0'),
(49, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(50, 8, '_product_id', '39'),
(51, 8, '_variation_id', '0'),
(52, 8, '_qty', '1'),
(53, 8, '_tax_class', ''),
(54, 8, '_line_subtotal', '26.5'),
(55, 8, '_line_subtotal_tax', '0'),
(56, 8, '_line_total', '26.5'),
(57, 8, '_line_tax', '0'),
(58, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(59, 9, 'method_id', 'free_shipping:1'),
(60, 9, 'cost', '0.00'),
(61, 9, 'total_tax', '0'),
(62, 9, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(63, 9, 'Itens', 'Caneca Star Wars &times; 1'),
(64, 10, '_product_id', '30'),
(65, 10, '_variation_id', '0'),
(66, 10, '_qty', '3'),
(67, 10, '_tax_class', ''),
(68, 10, '_line_subtotal', '105'),
(69, 10, '_line_subtotal_tax', '0'),
(70, 10, '_line_total', '105'),
(71, 10, '_line_tax', '0'),
(72, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(73, 11, '_product_id', '39'),
(74, 11, '_variation_id', '0'),
(75, 11, '_qty', '1'),
(76, 11, '_tax_class', ''),
(77, 11, '_line_subtotal', '26.5'),
(78, 11, '_line_subtotal_tax', '0'),
(79, 11, '_line_total', '26.5'),
(80, 11, '_line_tax', '0'),
(81, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 12, 'method_id', 'free_shipping:1'),
(83, 12, 'cost', '0.00'),
(84, 12, 'total_tax', '0'),
(85, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(86, 12, 'Itens', 'Caneca Cubo Mágico &times; 3, Caneca Star Wars &times; 1'),
(87, 13, '_product_id', '38'),
(88, 13, '_variation_id', '0'),
(89, 13, '_qty', '1'),
(90, 13, '_tax_class', ''),
(91, 13, '_line_subtotal', '40'),
(92, 13, '_line_subtotal_tax', '0'),
(93, 13, '_line_total', '40'),
(94, 13, '_line_tax', '0'),
(95, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(96, 14, 'method_id', 'local_pickup:5'),
(97, 14, 'cost', '0.00'),
(98, 14, 'total_tax', '0'),
(99, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(100, 14, 'Itens', 'Caneca Super Mario &times; 1'),
(101, 15, '_product_id', '39'),
(102, 15, '_variation_id', '0'),
(103, 15, '_qty', '1'),
(104, 15, '_tax_class', ''),
(105, 15, '_line_subtotal', '26.5'),
(106, 15, '_line_subtotal_tax', '0'),
(107, 15, '_line_total', '26.5'),
(108, 15, '_line_tax', '0'),
(109, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(110, 16, 'method_id', 'local_pickup:5'),
(111, 16, 'cost', '0.00'),
(112, 16, 'total_tax', '0'),
(113, 16, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(114, 16, 'Itens', 'Caneca Star Wars &times; 1'),
(115, 17, '_product_id', '38'),
(116, 17, '_variation_id', '0'),
(117, 17, '_qty', '1'),
(118, 17, '_tax_class', ''),
(119, 17, '_line_subtotal', '40'),
(120, 17, '_line_subtotal_tax', '0'),
(121, 17, '_line_total', '40'),
(122, 17, '_line_tax', '0'),
(123, 17, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(124, 18, 'method_id', 'local_pickup:5'),
(125, 18, 'cost', '0.00'),
(126, 18, 'total_tax', '0'),
(127, 18, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(128, 18, 'Itens', 'Caneca Super Mario &times; 1'),
(129, 19, '_product_id', '29'),
(130, 19, '_variation_id', '0'),
(131, 19, '_qty', '1'),
(132, 19, '_tax_class', ''),
(133, 19, '_line_subtotal', '32'),
(134, 19, '_line_subtotal_tax', '0'),
(135, 19, '_line_total', '32'),
(136, 19, '_line_tax', '0'),
(137, 19, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(138, 20, 'method_id', 'correios-sedex3'),
(139, 20, 'cost', '17.60'),
(140, 20, 'total_tax', '0'),
(141, 20, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(142, 21, '_product_id', '27'),
(143, 21, '_variation_id', '0'),
(144, 21, '_qty', '1'),
(145, 21, '_tax_class', ''),
(146, 21, '_line_subtotal', '30'),
(147, 21, '_line_subtotal_tax', '0'),
(148, 21, '_line_total', '30'),
(149, 21, '_line_tax', '0'),
(150, 21, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(151, 22, '_product_id', '40'),
(152, 22, '_variation_id', '0'),
(153, 22, '_qty', '1'),
(154, 22, '_tax_class', ''),
(155, 22, '_line_subtotal', '28.5'),
(156, 22, '_line_subtotal_tax', '0'),
(157, 22, '_line_total', '28.5'),
(158, 22, '_line_tax', '0'),
(159, 22, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(160, 23, 'method_id', 'correios-sedex3'),
(161, 23, 'cost', '18.01'),
(162, 23, 'total_tax', '0'),
(163, 23, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(164, 24, '_product_id', '28'),
(165, 24, '_variation_id', '0'),
(166, 24, '_qty', '1'),
(167, 24, '_tax_class', ''),
(168, 24, '_line_subtotal', '30'),
(169, 24, '_line_subtotal_tax', '0'),
(170, 24, '_line_total', '30'),
(171, 24, '_line_tax', '0'),
(172, 24, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(173, 25, 'method_id', 'correios-sedex3'),
(174, 25, 'cost', '17.57'),
(175, 25, 'total_tax', '0'),
(176, 25, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(177, 26, '_product_id', '27'),
(178, 26, '_variation_id', '0'),
(179, 26, '_qty', '1'),
(180, 26, '_tax_class', ''),
(181, 26, '_line_subtotal', '30'),
(182, 26, '_line_subtotal_tax', '0'),
(183, 26, '_line_total', '30'),
(184, 26, '_line_tax', '0'),
(185, 26, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(186, 27, 'method_id', 'correios-sedex3'),
(187, 27, 'cost', '17.57'),
(188, 27, 'total_tax', '0'),
(189, 27, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(190, 28, '_product_id', '27'),
(191, 28, '_variation_id', '0'),
(192, 28, '_qty', '1'),
(193, 28, '_tax_class', ''),
(194, 28, '_line_subtotal', '30'),
(195, 28, '_line_subtotal_tax', '0'),
(196, 28, '_line_total', '30'),
(197, 28, '_line_tax', '0'),
(198, 28, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(199, 29, 'method_id', 'correios-sedex3'),
(200, 29, 'cost', '17.57'),
(201, 29, 'total_tax', '0'),
(202, 29, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(203, 30, '_product_id', '41'),
(204, 30, '_variation_id', '0'),
(205, 30, '_qty', '1'),
(206, 30, '_tax_class', ''),
(207, 30, '_line_subtotal', '32'),
(208, 30, '_line_subtotal_tax', '0'),
(209, 30, '_line_total', '32'),
(210, 30, '_line_tax', '0'),
(211, 30, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(212, 31, 'method_id', 'correios-sedex3'),
(213, 31, 'cost', '17.60'),
(214, 31, 'total_tax', '0'),
(215, 31, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(229, 34, '_product_id', '30'),
(230, 34, '_variation_id', '0'),
(231, 34, '_qty', '1'),
(232, 34, '_tax_class', ''),
(233, 34, '_line_subtotal', '35'),
(234, 34, '_line_subtotal_tax', '0'),
(235, 34, '_line_total', '35'),
(236, 34, '_line_tax', '0'),
(237, 34, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(238, 35, 'method_id', 'correios-sedex3'),
(239, 35, 'cost', '17.65'),
(240, 35, 'total_tax', '0'),
(241, 35, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(242, 36, '_product_id', '20'),
(243, 36, '_variation_id', '0'),
(244, 36, '_qty', '1'),
(245, 36, '_tax_class', ''),
(246, 36, '_line_subtotal', '25'),
(247, 36, '_line_subtotal_tax', '0'),
(248, 36, '_line_total', '25'),
(249, 36, '_line_tax', '0'),
(250, 36, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(251, 37, 'method_id', 'local_pickup:5'),
(252, 37, 'cost', '0.00'),
(253, 37, 'total_tax', '0'),
(254, 37, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(255, 37, 'Itens', 'Camiseta Batman &times; 1'),
(256, 38, '_product_id', '292'),
(257, 38, '_variation_id', '0'),
(258, 38, '_qty', '1'),
(259, 38, '_tax_class', ''),
(260, 38, '_line_subtotal', '35'),
(261, 38, '_line_subtotal_tax', '0'),
(262, 38, '_line_total', '35'),
(263, 38, '_line_tax', '0'),
(264, 38, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(265, 39, 'method_id', 'local_pickup:5'),
(266, 39, 'cost', '0.00'),
(267, 39, 'total_tax', '0'),
(268, 39, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(269, 39, 'Itens', 'Camiseta Dragon Ball &times; 1'),
(270, 40, '_product_id', '333'),
(271, 40, '_variation_id', '0'),
(272, 40, '_qty', '1'),
(273, 40, '_tax_class', ''),
(274, 40, '_line_subtotal', '32'),
(275, 40, '_line_subtotal_tax', '0'),
(276, 40, '_line_total', '32'),
(277, 40, '_line_tax', '0'),
(278, 40, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(279, 41, 'method_id', 'local_pickup:5'),
(280, 41, 'cost', '0.00'),
(281, 41, 'total_tax', '0'),
(282, 41, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(283, 41, 'Itens', 'Copo The Big Bang Theory - Sheldon Bazinga &times; 1'),
(284, 42, '_product_id', '313'),
(285, 42, '_variation_id', '0'),
(286, 42, '_qty', '1'),
(287, 42, '_tax_class', ''),
(288, 42, '_line_subtotal', '67.8'),
(289, 42, '_line_subtotal_tax', '0'),
(290, 42, '_line_total', '67.8'),
(291, 42, '_line_tax', '0'),
(292, 42, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(293, 43, 'method_id', 'local_pickup:5'),
(294, 43, 'cost', '0.00'),
(295, 43, 'total_tax', '0'),
(296, 43, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(297, 43, 'Itens', 'Kit Copos de Shot Marvel - 4 copos &times; 1'),
(298, 44, '_product_id', '335'),
(299, 44, '_variation_id', '0'),
(300, 44, '_qty', '1'),
(301, 44, '_tax_class', ''),
(302, 44, '_line_subtotal', '110'),
(303, 44, '_line_subtotal_tax', '0'),
(304, 44, '_line_total', '110'),
(305, 44, '_line_tax', '0'),
(306, 44, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(307, 45, '_product_id', '319'),
(308, 45, '_variation_id', '0'),
(309, 45, '_qty', '1'),
(310, 45, '_tax_class', ''),
(311, 45, '_line_subtotal', '98.7'),
(312, 45, '_line_subtotal_tax', '0'),
(313, 45, '_line_total', '98.7'),
(314, 45, '_line_tax', '0'),
(315, 45, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(316, 46, 'method_id', 'free_shipping:1'),
(317, 46, 'cost', '0.00'),
(318, 46, 'total_tax', '0'),
(319, 46, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(320, 46, 'Itens', 'Capa Harry Potter &times; 1, Varinha Harry Potter &times; 1'),
(321, 47, '_product_id', '335'),
(322, 47, '_variation_id', '0'),
(323, 47, '_qty', '1'),
(324, 47, '_tax_class', ''),
(325, 47, '_line_subtotal', '110'),
(326, 47, '_line_subtotal_tax', '0'),
(327, 47, '_line_total', '110'),
(328, 47, '_line_tax', '0'),
(329, 47, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(330, 48, '_product_id', '319'),
(331, 48, '_variation_id', '0'),
(332, 48, '_qty', '1'),
(333, 48, '_tax_class', ''),
(334, 48, '_line_subtotal', '98.7'),
(335, 48, '_line_subtotal_tax', '0'),
(336, 48, '_line_total', '98.7'),
(337, 48, '_line_tax', '0'),
(338, 48, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(339, 49, 'method_id', 'free_shipping:1'),
(340, 49, 'cost', '0.00'),
(341, 49, 'total_tax', '0'),
(342, 49, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(343, 49, 'Itens', 'Capa Harry Potter &times; 1, Varinha Harry Potter &times; 1'),
(344, 50, '_product_id', '335'),
(345, 50, '_variation_id', '0'),
(346, 50, '_qty', '1'),
(347, 50, '_tax_class', ''),
(348, 50, '_line_subtotal', '110'),
(349, 50, '_line_subtotal_tax', '0'),
(350, 50, '_line_total', '110'),
(351, 50, '_line_tax', '0'),
(352, 50, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(353, 51, '_product_id', '319'),
(354, 51, '_variation_id', '0'),
(355, 51, '_qty', '1'),
(356, 51, '_tax_class', ''),
(357, 51, '_line_subtotal', '98.7'),
(358, 51, '_line_subtotal_tax', '0'),
(359, 51, '_line_total', '98.7'),
(360, 51, '_line_tax', '0'),
(361, 51, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(362, 52, 'method_id', 'free_shipping:1'),
(363, 52, 'cost', '0.00'),
(364, 52, 'total_tax', '0'),
(365, 52, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(366, 52, 'Itens', 'Capa Harry Potter &times; 1, Varinha Harry Potter &times; 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_order_items`
--

CREATE TABLE `mb_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_order_items`
--

INSERT INTO `mb_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Camiseta Sheldon', 'line_item', 114),
(2, 'SEDEX', 'shipping', 114),
(3, 'Caneca Enrolados', 'line_item', 115),
(4, 'Caneca Super Mario', 'line_item', 115),
(5, 'Retirar no local', 'shipping', 115),
(6, 'Camiseta Batman', 'line_item', 116),
(7, 'PAC', 'shipping', 116),
(8, 'Caneca Star Wars', 'line_item', 119),
(9, 'Frete grátis', 'shipping', 119),
(10, 'Caneca Cubo Mágico', 'line_item', 199),
(11, 'Caneca Star Wars', 'line_item', 199),
(12, 'Frete grátis', 'shipping', 199),
(13, 'Caneca Super Mario', 'line_item', 249),
(14, 'Retirar no local', 'shipping', 249),
(15, 'Caneca Star Wars', 'line_item', 250),
(16, 'Retirar no local', 'shipping', 250),
(17, 'Caneca Super Mario', 'line_item', 251),
(18, 'Retirar no local', 'shipping', 251),
(19, 'Camiseta Nerd', 'line_item', 252),
(20, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 252),
(21, 'Camiseta Capitão América', 'line_item', 253),
(22, 'Caneca Palmeiras', 'line_item', 253),
(23, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 253),
(24, 'Camiseta Homem de Ferro', 'line_item', 255),
(25, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 255),
(26, 'Camiseta Capitão América', 'line_item', 256),
(27, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 256),
(28, 'Camiseta Capitão América', 'line_item', 257),
(29, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 257),
(30, 'Caneca Minions', 'line_item', 258),
(31, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 258),
(34, 'Caneca Cubo Mágico', 'line_item', 259),
(35, 'SEDEX (Entrega em 1 dia útil)', 'shipping', 259),
(36, 'Camiseta Batman', 'line_item', 260),
(37, 'Retirar no local', 'shipping', 260),
(38, 'Camiseta Dragon Ball', 'line_item', 312),
(39, 'Retirar no local', 'shipping', 312),
(40, 'Copo The Big Bang Theory - Sheldon Bazinga', 'line_item', 348),
(41, 'Retirar no local', 'shipping', 348),
(42, 'Kit Copos de Shot Marvel - 4 copos', 'line_item', 354),
(43, 'Retirar no local', 'shipping', 354),
(44, 'Capa Harry Potter', 'line_item', 362),
(45, 'Varinha Harry Potter', 'line_item', 362),
(46, 'Frete grátis', 'shipping', 362),
(47, 'Capa Harry Potter', 'line_item', 363),
(48, 'Varinha Harry Potter', 'line_item', 363),
(49, 'Frete grátis', 'shipping', 363),
(50, 'Capa Harry Potter', 'line_item', 364),
(51, 'Varinha Harry Potter', 'line_item', 364),
(52, 'Frete grátis', 'shipping', 364);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_payment_tokenmeta`
--

CREATE TABLE `mb_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_payment_tokens`
--

CREATE TABLE `mb_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_sessions`
--

CREATE TABLE `mb_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_sessions`
--

INSERT INTO `mb_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(73, '1', 'a:11:{s:8:\"customer\";s:976:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-05-16T00:04:41-03:00\";s:8:\"postcode\";s:9:\"08230-660\";s:4:\"city\";s:10:\"São Paulo\";s:9:\"address_1\";s:28:\"Travessa Ponte Alta do Norte\";s:7:\"address\";s:28:\"Travessa Ponte Alta do Norte\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SP\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:9:\"08230-660\";s:13:\"shipping_city\";s:10:\"São Paulo\";s:18:\"shipping_address_1\";s:28:\"Travessa Ponte Alta do Norte\";s:16:\"shipping_address\";s:28:\"Travessa Ponte Alta do Norte\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SP\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:8:\"Mauricio\";s:9:\"last_name\";s:17:\"Aparecido Gabriel\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:15:\"(11) 98518-1910\";s:5:\"email\";s:34:\"mauricioaparecidogabriel@gmail.com\";s:19:\"shipping_first_name\";s:8:\"Mauricio\";s:18:\"shipping_last_name\";s:17:\"Aparecido Gabriel\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:387:\"a:1:{s:32:\"357a6fdf7642bf815a88822c447d9dc4\";a:10:{s:3:\"key\";s:32:\"357a6fdf7642bf815a88822c447d9dc4\";s:10:\"product_id\";i:337;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:28.699999999999999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:28.699999999999999;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:5:\"28.70\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"28.70\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"28.70\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:404:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_cce781e1d081de4addf142687ccbc6ac\";s:5:\"rates\";a:1:{s:14:\"local_pickup:5\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:14:\"local_pickup:5\";s:9:\"method_id\";s:12:\"local_pickup\";s:11:\"instance_id\";i:5;s:5:\"label\";s:16:\"Retirar no local\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Itens\";s:30:\"Camiseta Iron Maiden &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:42:\"a:1:{i:0;a:1:{i:0;s:14:\"local_pickup:5\";}}\";s:23:\"chosen_shipping_methods\";s:32:\"a:1:{i:0;s:14:\"local_pickup:5\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";}', 1531608110);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_shipping_zones`
--

CREATE TABLE `mb_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_shipping_zones`
--

INSERT INTO `mb_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Brasil', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_shipping_zone_locations`
--

CREATE TABLE `mb_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_shipping_zone_locations`
--

INSERT INTO `mb_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'BR', 'country');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_shipping_zone_methods`
--

CREATE TABLE `mb_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mb_woocommerce_shipping_zone_methods`
--

INSERT INTO `mb_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1),
(1, 3, 'correios-sedex', 2, 1),
(1, 4, 'correios-pac', 3, 1),
(1, 5, 'local_pickup', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_tax_rates`
--

CREATE TABLE `mb_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mb_woocommerce_tax_rate_locations`
--

CREATE TABLE `mb_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mb_commentmeta`
--
ALTER TABLE `mb_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mb_comments`
--
ALTER TABLE `mb_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `mb_links`
--
ALTER TABLE `mb_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `mb_options`
--
ALTER TABLE `mb_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `mb_postmeta`
--
ALTER TABLE `mb_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mb_posts`
--
ALTER TABLE `mb_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `mb_rich_web_photo_slider_instal`
--
ALTER TABLE `mb_rich_web_photo_slider_instal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_photo_slider_manager`
--
ALTER TABLE `mb_rich_web_photo_slider_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect1`
--
ALTER TABLE `mb_rich_web_slider_effect1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect1_loader`
--
ALTER TABLE `mb_rich_web_slider_effect1_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect2`
--
ALTER TABLE `mb_rich_web_slider_effect2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect2_loader`
--
ALTER TABLE `mb_rich_web_slider_effect2_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect3`
--
ALTER TABLE `mb_rich_web_slider_effect3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect3_loader`
--
ALTER TABLE `mb_rich_web_slider_effect3_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect4`
--
ALTER TABLE `mb_rich_web_slider_effect4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect4_loader`
--
ALTER TABLE `mb_rich_web_slider_effect4_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect5`
--
ALTER TABLE `mb_rich_web_slider_effect5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect5_loader`
--
ALTER TABLE `mb_rich_web_slider_effect5_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect6`
--
ALTER TABLE `mb_rich_web_slider_effect6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect6_loader`
--
ALTER TABLE `mb_rich_web_slider_effect6_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect7`
--
ALTER TABLE `mb_rich_web_slider_effect7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect7_loader`
--
ALTER TABLE `mb_rich_web_slider_effect7_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect8`
--
ALTER TABLE `mb_rich_web_slider_effect8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect8_loader`
--
ALTER TABLE `mb_rich_web_slider_effect8_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect9`
--
ALTER TABLE `mb_rich_web_slider_effect9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect9_loader`
--
ALTER TABLE `mb_rich_web_slider_effect9_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect10`
--
ALTER TABLE `mb_rich_web_slider_effect10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effect10_loader`
--
ALTER TABLE `mb_rich_web_slider_effect10_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_effects_data`
--
ALTER TABLE `mb_rich_web_slider_effects_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_font_family`
--
ALTER TABLE `mb_rich_web_slider_font_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_rich_web_slider_id`
--
ALTER TABLE `mb_rich_web_slider_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_termmeta`
--
ALTER TABLE `mb_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mb_terms`
--
ALTER TABLE `mb_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `mb_term_relationships`
--
ALTER TABLE `mb_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `mb_term_taxonomy`
--
ALTER TABLE `mb_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `mb_usermeta`
--
ALTER TABLE `mb_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mb_users`
--
ALTER TABLE `mb_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `mb_wc_download_log`
--
ALTER TABLE `mb_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `mb_wc_webhooks`
--
ALTER TABLE `mb_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mb_wdslayer`
--
ALTER TABLE `mb_wdslayer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_wdsslide`
--
ALTER TABLE `mb_wdsslide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_wdsslider`
--
ALTER TABLE `mb_wdsslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_woocommerce_api_keys`
--
ALTER TABLE `mb_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `mb_woocommerce_attribute_taxonomies`
--
ALTER TABLE `mb_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `mb_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `mb_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `mb_woocommerce_log`
--
ALTER TABLE `mb_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `mb_woocommerce_order_itemmeta`
--
ALTER TABLE `mb_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `mb_woocommerce_order_items`
--
ALTER TABLE `mb_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `mb_woocommerce_payment_tokenmeta`
--
ALTER TABLE `mb_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `mb_woocommerce_payment_tokens`
--
ALTER TABLE `mb_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mb_woocommerce_sessions`
--
ALTER TABLE `mb_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `mb_woocommerce_shipping_zones`
--
ALTER TABLE `mb_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `mb_woocommerce_shipping_zone_locations`
--
ALTER TABLE `mb_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `mb_woocommerce_shipping_zone_methods`
--
ALTER TABLE `mb_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `mb_woocommerce_tax_rates`
--
ALTER TABLE `mb_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `mb_woocommerce_tax_rate_locations`
--
ALTER TABLE `mb_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mb_commentmeta`
--
ALTER TABLE `mb_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mb_comments`
--
ALTER TABLE `mb_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `mb_links`
--
ALTER TABLE `mb_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_options`
--
ALTER TABLE `mb_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3257;
--
-- AUTO_INCREMENT for table `mb_postmeta`
--
ALTER TABLE `mb_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3568;
--
-- AUTO_INCREMENT for table `mb_posts`
--
ALTER TABLE `mb_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;
--
-- AUTO_INCREMENT for table `mb_rich_web_photo_slider_instal`
--
ALTER TABLE `mb_rich_web_photo_slider_instal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_rich_web_photo_slider_manager`
--
ALTER TABLE `mb_rich_web_photo_slider_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect1`
--
ALTER TABLE `mb_rich_web_slider_effect1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect1_loader`
--
ALTER TABLE `mb_rich_web_slider_effect1_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect2`
--
ALTER TABLE `mb_rich_web_slider_effect2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect2_loader`
--
ALTER TABLE `mb_rich_web_slider_effect2_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect3`
--
ALTER TABLE `mb_rich_web_slider_effect3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect3_loader`
--
ALTER TABLE `mb_rich_web_slider_effect3_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect4`
--
ALTER TABLE `mb_rich_web_slider_effect4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect4_loader`
--
ALTER TABLE `mb_rich_web_slider_effect4_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect5`
--
ALTER TABLE `mb_rich_web_slider_effect5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect5_loader`
--
ALTER TABLE `mb_rich_web_slider_effect5_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect6`
--
ALTER TABLE `mb_rich_web_slider_effect6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect6_loader`
--
ALTER TABLE `mb_rich_web_slider_effect6_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect7`
--
ALTER TABLE `mb_rich_web_slider_effect7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect7_loader`
--
ALTER TABLE `mb_rich_web_slider_effect7_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect8`
--
ALTER TABLE `mb_rich_web_slider_effect8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect8_loader`
--
ALTER TABLE `mb_rich_web_slider_effect8_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect9`
--
ALTER TABLE `mb_rich_web_slider_effect9`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect9_loader`
--
ALTER TABLE `mb_rich_web_slider_effect9_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect10`
--
ALTER TABLE `mb_rich_web_slider_effect10`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effect10_loader`
--
ALTER TABLE `mb_rich_web_slider_effect10_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_effects_data`
--
ALTER TABLE `mb_rich_web_slider_effects_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_font_family`
--
ALTER TABLE `mb_rich_web_slider_font_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `mb_rich_web_slider_id`
--
ALTER TABLE `mb_rich_web_slider_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_termmeta`
--
ALTER TABLE `mb_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `mb_terms`
--
ALTER TABLE `mb_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `mb_term_taxonomy`
--
ALTER TABLE `mb_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `mb_usermeta`
--
ALTER TABLE `mb_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;
--
-- AUTO_INCREMENT for table `mb_users`
--
ALTER TABLE `mb_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mb_wc_download_log`
--
ALTER TABLE `mb_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_wc_webhooks`
--
ALTER TABLE `mb_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_wdslayer`
--
ALTER TABLE `mb_wdslayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_wdsslide`
--
ALTER TABLE `mb_wdsslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `mb_wdsslider`
--
ALTER TABLE `mb_wdsslider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mb_woocommerce_api_keys`
--
ALTER TABLE `mb_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_attribute_taxonomies`
--
ALTER TABLE `mb_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `mb_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_log`
--
ALTER TABLE `mb_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_order_itemmeta`
--
ALTER TABLE `mb_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT for table `mb_woocommerce_order_items`
--
ALTER TABLE `mb_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `mb_woocommerce_payment_tokenmeta`
--
ALTER TABLE `mb_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_payment_tokens`
--
ALTER TABLE `mb_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_sessions`
--
ALTER TABLE `mb_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `mb_woocommerce_shipping_zones`
--
ALTER TABLE `mb_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mb_woocommerce_shipping_zone_locations`
--
ALTER TABLE `mb_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mb_woocommerce_shipping_zone_methods`
--
ALTER TABLE `mb_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mb_woocommerce_tax_rates`
--
ALTER TABLE `mb_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_woocommerce_tax_rate_locations`
--
ALTER TABLE `mb_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `mb_wc_download_log`
--
ALTER TABLE `mb_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `mb_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
