-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 01:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starlounge_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_appointments`
--

CREATE TABLE `wp_bookly_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `staff_any` tinyint(1) NOT NULL DEFAULT 0,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `custom_service_name` varchar(255) DEFAULT NULL,
  `custom_service_price` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extras_duration` int(11) NOT NULL DEFAULT 0,
  `internal_note` text DEFAULT NULL,
  `google_event_id` varchar(255) DEFAULT NULL,
  `google_event_etag` varchar(255) DEFAULT NULL,
  `outlook_event_id` varchar(255) DEFAULT NULL,
  `outlook_event_change_key` varchar(255) DEFAULT NULL,
  `outlook_event_series_id` varchar(255) DEFAULT NULL,
  `online_meeting_provider` enum('zoom','google_meet','jitsi','bbb') DEFAULT NULL,
  `online_meeting_id` varchar(255) DEFAULT NULL,
  `online_meeting_data` text DEFAULT NULL,
  `created_from` enum('bookly','google','outlook') NOT NULL DEFAULT 'bookly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_appointments`
--

INSERT INTO `wp_bookly_appointments` (`id`, `location_id`, `staff_id`, `staff_any`, `service_id`, `custom_service_name`, `custom_service_price`, `start_date`, `end_date`, `extras_duration`, `internal_note`, `google_event_id`, `google_event_etag`, `outlook_event_id`, `outlook_event_change_key`, `outlook_event_series_id`, `online_meeting_provider`, `online_meeting_id`, `online_meeting_data`, `created_from`, `created_at`, `updated_at`) VALUES
(4, NULL, 2, 0, 8, NULL, NULL, '2023-11-22 15:00:00', '2023-11-22 16:30:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bookly', '2023-11-20 17:36:46', '2023-11-20 17:36:46'),
(5, NULL, 2, 0, 11, NULL, NULL, '2023-11-21 12:30:00', '2023-11-21 14:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bookly', '2023-11-20 18:51:59', '2023-11-20 18:51:59'),
(6, NULL, 2, 0, 8, NULL, NULL, '2023-11-23 08:00:00', '2023-11-23 09:30:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bookly', '2023-11-20 19:20:03', '2023-11-20 19:20:03'),
(7, NULL, 2, 0, 8, NULL, NULL, '2023-11-22 13:00:00', '2023-11-22 14:30:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bookly', '2023-11-21 04:11:59', '2023-11-21 04:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_categories`
--

CREATE TABLE `wp_bookly_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `info` text DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_categories`
--

INSERT INTO `wp_bookly_categories` (`id`, `name`, `attachment_id`, `info`, `position`) VALUES
(8, 'Driving Lesson / Training', NULL, '', 0),
(9, 'Brush-up Lesson', NULL, '', 1),
(10, 'Add On Services', NULL, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_customers`
--

CREATE TABLE `wp_bookly_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `wp_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facebook_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(128) NOT NULL DEFAULT '',
  `first_name` varchar(64) NOT NULL DEFAULT '',
  `last_name` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `street` varchar(64) DEFAULT NULL,
  `street_number` varchar(16) DEFAULT NULL,
  `additional_address` varchar(255) DEFAULT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `notes` text NOT NULL,
  `info_fields` text DEFAULT NULL,
  `stripe_account` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_customers`
--

INSERT INTO `wp_bookly_customers` (`id`, `wp_user_id`, `facebook_id`, `group_id`, `full_name`, `first_name`, `last_name`, `phone`, `email`, `birthday`, `country`, `state`, `postcode`, `city`, `street`, `street_number`, `additional_address`, `full_address`, `notes`, `info_fields`, `stripe_account`, `created_at`) VALUES
(1, NULL, NULL, NULL, 'Jayannita Biswas', 'Jayannita', 'Biswas', '789651230', 'jayannita.biswas@webart.technology', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-16 06:33:14'),
(2, NULL, NULL, NULL, 'Anisha Bhattacharya', 'Anisha', 'Bhattacharya', '+91456123789', 'anisha@webart.technology', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-16 06:56:34'),
(3, NULL, NULL, NULL, 'webberadmin', 'webberadmin', '', '+917896541230', 'info@webbersunited.com', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-17 07:02:12'),
(4, NULL, NULL, NULL, 'Test', 'Test', '', '+14036153152', 'Ppate590@mtroyal.ca', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-20 17:36:46'),
(5, NULL, NULL, NULL, 'Test', 'Test', '', '+11234567890', 'Test@test.com', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-20 18:51:59'),
(6, NULL, NULL, NULL, 'webberadmin', 'webberadmin', '', '+911234567890', 'info@webbersunited.com', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-20 19:20:03'),
(7, NULL, NULL, NULL, 'test', 'test', '', '4031112121', 'ppate590@mtroyal.ca', NULL, '', '', '', '', '', '', '', NULL, '', '[]', NULL, '2023-11-21 04:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_customer_appointments`
--

CREATE TABLE `wp_bookly_customer_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `series_id` int(10) UNSIGNED DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `number_of_persons` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `units` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `extras` text DEFAULT NULL,
  `extras_multiply_nop` tinyint(1) NOT NULL DEFAULT 1,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'approved',
  `status_changed_at` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `time_zone_offset` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `rating_comment` text DEFAULT NULL,
  `locale` varchar(8) DEFAULT NULL,
  `collaborative_service_id` int(10) UNSIGNED DEFAULT NULL,
  `collaborative_token` varchar(255) DEFAULT NULL,
  `compound_service_id` int(10) UNSIGNED DEFAULT NULL,
  `compound_token` varchar(255) DEFAULT NULL,
  `created_from` enum('frontend','backend') NOT NULL DEFAULT 'frontend',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_customer_appointments`
--

INSERT INTO `wp_bookly_customer_appointments` (`id`, `series_id`, `package_id`, `customer_id`, `appointment_id`, `payment_id`, `order_id`, `number_of_persons`, `units`, `notes`, `extras`, `extras_multiply_nop`, `custom_fields`, `status`, `status_changed_at`, `token`, `time_zone`, `time_zone_offset`, `rating`, `rating_comment`, `locale`, `collaborative_service_id`, `collaborative_token`, `compound_service_id`, `compound_token`, `created_from`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 4, 4, 4, 4, 1, 1, 'Test', '[]', 1, '[]', 'approved', NULL, 'eab62842ff5563c74a22bfe47da5e115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frontend', '2023-11-20 17:36:46', '2023-11-20 17:36:46'),
(5, NULL, NULL, 5, 5, 5, 5, 1, 1, '', '[]', 1, '[]', 'approved', NULL, '0bc5092516f868fddec983c2f3c2365d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frontend', '2023-11-20 18:51:59', '2023-11-20 18:51:59'),
(6, NULL, NULL, 6, 6, 6, 6, 1, 1, '', '[]', 1, '[]', 'approved', NULL, '9b2944a5e08d4938384ead31b8c2ddb4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frontend', '2023-11-20 19:20:03', '2023-11-20 19:20:03'),
(7, NULL, NULL, 7, 7, 7, 7, 1, 1, 'test 123', '[]', 1, '[]', 'approved', NULL, 'cb0f093d52e6a8d0a103879da18640c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frontend', '2023-11-21 04:11:59', '2023-11-21 04:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_holidays`
--

CREATE TABLE `wp_bookly_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `repeat_event` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_log`
--

CREATE TABLE `wp_bookly_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` enum('create','update','delete','error') DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `target_id` int(10) UNSIGNED DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_log`
--

INSERT INTO `wp_bookly_log` (`id`, `action`, `target`, `target_id`, `author`, `details`, `ref`, `comment`, `created_at`) VALUES
(1, 'error', '/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/page-about.php:67', NULL, 'webberadmin', 'Uncaught Error: Undefined constant \"php\" in /home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/page-about.php:67\nStack trace:\n#0 /home/webbersunited/public_html/cms/blue-birds/wp-includes/template-loader.php(106): include()\n#1 /home/webbersunited/public_html/cms/blue-birds/wp-blog-header.php(19): require_once(\'/home/webbersun...\')\n#2 /home/webbersunited/public_html/cms/blue-birds/index.php(17): require(\'/home/webbersun...\')\n#3 {main}\n  thrown', NULL, 'Last occurrence: 2023-11-17 06:22:26', '2023-11-17 04:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_mailing_campaigns`
--

CREATE TABLE `wp_bookly_mailing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailing_list_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `state` enum('pending','in-progress','completed','canceled') NOT NULL DEFAULT 'pending',
  `send_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_mailing_lists`
--

CREATE TABLE `wp_bookly_mailing_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_mailing_list_recipients`
--

CREATE TABLE `wp_bookly_mailing_list_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailing_list_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_mailing_queue`
--

CREATE TABLE `wp_bookly_mailing_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `sent` tinyint(1) DEFAULT 0,
  `campaign_id` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_news`
--

CREATE TABLE `wp_bookly_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `media_type` enum('image','youtube') NOT NULL DEFAULT 'image',
  `media_url` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_news`
--

INSERT INTO `wp_bookly_news` (`id`, `news_id`, `title`, `media_type`, `media_url`, `text`, `button_url`, `button_text`, `seen`, `updated_at`, `created_at`) VALUES
(1, 80, 'New version release. See what’s new in Bookly PRO 6.9.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2023/11/Bookly-PRO-6.9-banner-1512.webp', '<p>To enhance your user experience and provide greater flexibility, our dedication to improving Bookly remains unwavering. Our latest update, <strong>Bookly PRO version 6.9</strong>, introduces fantastic new features to elevate your booking system experience. Check our blog for more details.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v6-9/', 'Read more', 0, '2023-11-03 13:14:31', '2023-11-03 13:14:31'),
(2, 79, 'New video: How to publish staff availability form', 'youtube', 'https://www.youtube.com/embed/TzZ3fa2MVtg', '<p>Learn how to add the Bookly front-end calendar to your webpage, which enables clients to view staff availability. This type of calendar only displays occupied time slots with the corresponding service title and does not allow bookings.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://youtu.be/TzZ3fa2MVtg', 'Watch on Youtube', 0, '2023-05-08 13:41:35', '2023-05-08 13:41:35'),
(3, 78, 'New version release. See what’s new in Bookly PRO 6.1.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2023/05/Bookly-PRO-6.1-banner-1512.jpg', '<p>As with every update, the latest version of Bookly offers enhanced features, optimizations, and bug fixes to ensure optimal performance. We\'ve included new options such as the ability to <strong>sell gift cards</strong> directly through the booking form, an <strong>SMTP mail gateway</strong> for improved email functionality, <strong>waiting list limits</strong> for services, and more.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v6-1/', 'Read more', 0, '2023-05-03 09:49:19', '2023-05-03 09:49:19'),
(4, 2, ' Mistakes every Bookly beginner should avoid', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/mistakes-every-bookly-beginner-should-avoid-banner-1512.jpg', '<p><span>Bookly admin panel is very intuitive and user-friendly. Thanks to its clean and simple design, even a WP beginner can</span><span>&nbsp;</span>set up Bookly<span>&nbsp;</span><span>without problems. We know you probably want to get started with online bookings on your website as quickly as possible and with almost no effort, so we’ve gathered the most common mistakes to avoid when you start using Bookly.</span></p>', 'https://www.booking-wp-plugin.com/mistakes-every-bookly-beginner-avoid/', 'Read more', 0, '2023-04-24 06:52:57', '2021-09-20 19:05:05'),
(5, 1, ' How to promote best selling services with Bookly', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/how-promote-best-selling-services-bookly-banner-1512.jpg', '<p><span>While Bookly is an appointment scheduling plugin that allows you to automate your online reservation system, some of its features can be used as a great way to gain customers’ interest in the services you want to promote. From this article, you’ll find out which Bookly items and built-in features you can use to better sell your services.</span></p>', 'https://www.booking-wp-plugin.com/promote-best-selling-services-bookly/', 'Read more', 0, '2023-04-24 06:46:38', '2021-09-20 19:02:23'),
(6, 44, 'How to get started with Bookly SMS mailing campaigns', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/02/how-to-get-started-with-bookly-sms-campaigns-banner-1512.jpg', '<p><span>Undoubtedly, the easiest and quickest way to reach your clients is by SMS. Bookly’s</span><span>&nbsp;</span><span>SMS service</span><span>&nbsp;</span><span>is already used by thousands of businesses for sending booking details confirmations, appointment reminders, and follow-ups. Now you can also take advantage of the</span><span>&nbsp;</span><span>automated SMS marketing campaigns</span><span>&nbsp;</span><span>that are configured and scheduled right in the Bookly admin area.</span></p>', 'https://www.booking-wp-plugin.com/get-started-bookly-sms-mailing-campaigns/', 'Read more', 0, '2023-04-04 16:34:12', '2022-02-01 08:58:09'),
(7, 40, 'How to add online meeting URL to any Bookly appointment', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/01/add-online-meeting-url-to-your-Bookly-appointment-1512.jpg', '<p><span>Nowadays, more and more companies embrace a remote approach in their operations. With Bookly, you get built-in integrations with the most popular software for online meetings: Zoom, Google Meet, and Jitsi. Whichever app you choose, it will automatically generate unique video meeting links for every appointment created via Bookly.</span></p>', 'https://www.booking-wp-plugin.com/add-online-meeting-url-bookly-appointment/', 'Read more', 0, '2023-04-04 16:32:05', '2022-01-18 08:35:40'),
(8, 46, 'How to limit daily bookings', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/02/how-to-limit-daily-bookings-in-bookly-banner-1512.jpg', '<p><span>Regardless of the staff members’ working schedule configured in Bookly, you may want to limit the number of appointments that your customers can schedule via your online booking page. Here we’ll describe which Bookly features you can use to allow only a certain amount of bookings during the staff working day.</span></p>', 'https://www.booking-wp-plugin.com/limit-daily-bookings/', 'Read more', 0, '2023-04-04 16:25:19', '2022-02-08 09:27:33'),
(9, 77, 'How to create time-flexible services in Bookly', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2023/03/how-to-create-time-flexible-services-in-bookly-banner-1512.jpg', '<p><span>Time-flexible services in Bookly mean appointments that may have changeable lengths, and clients can select a duration that fits them. Bookly offers several add-ons designed to meet specific scenarios where varying duration of the meeting is possible. While all of them may suit similar needs, each add-on differs in setup, customization, and management.</span></p>', 'https://www.booking-wp-plugin.com/create-time-flexible-services-bookly/', 'Read more', 0, '2023-04-04 06:15:16', '2023-04-04 06:15:16'),
(10, 76, 'New version release. See what’s new in Bookly PRO 6.0.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2023/03/Bookly-PRO-6.0-banner-1512.jpg', '<p>We regularly make updates to implement highly requested features and enhance the functionality of our products. This update includes several popular feature requests that will upgrade the Bookly booking system on your website. Discover new features and improvements included in<span>&nbsp;</span><strong>Bookly PRO version 6.0</strong>.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v6-0/', 'Read more', 0, '2023-03-16 11:09:42', '2023-03-16 11:09:42'),
(11, 75, 'New version release. See what’s new in Bookly PRO 5.9.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2023/02/Bookly-PRO-5.9-banner-1512.jpg', '<p><span>For a better experience and increased flexibility, we continue to develop and enhance Bookly. With this update, we introduce&nbsp;integration with<strong> WhatsApp</strong>, a new&nbsp;<strong>Bookly Staff</strong>&nbsp;booking&nbsp;<strong>form</strong>,&nbsp;customizable content of the service card&nbsp;in the modern booking forms,&nbsp;available payment methods for services, the ability to set&nbsp;default values in the new forms, and more.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v5-9/', 'Read more', 0, '2023-02-20 11:12:32', '2023-02-20 11:12:16'),
(12, 74, 'New video: How to generate invoices in Bookly', 'youtube', 'https://www.youtube.com/embed/gX_84Cvp3AM', '<p><span>With the Bookly Invoices (add-on), you can create detailed invoices for provided services and have them automatically sent when an appointment is booked, approved, or received. Learn how to set up and customize your templates.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360002713233\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360002713233\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=gX_84Cvp3AM&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-12-28 12:03:22', '2022-12-28 12:03:22'),
(13, 73, 'How to avoid gaps between appointments', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/12/avoid-gaps-between-appointments-banner-1512.jpg', '<p><span>Efficient schedule is very mportant for every business. Unwanted gaps between appointments are not convenient and may affect the whole balance of work.&nbsp;In this article, we’ll provide you with the tips that will help you optimize your Bookly calendar schedule and reduce empty slots as much as possible.</span></p>', 'https://www.booking-wp-plugin.com/avoid-gaps-between-appointments/', 'Read more', 0, '2022-12-06 14:40:35', '2022-12-06 14:40:35'),
(14, 72, 'New version release. See what’s new in Bookly PRO 5.6.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/11/Bookly-PRO-5.6-banner-1512.jpg', '<p><span>Our top priority is improving Bookly and developing new features that will work best for your business.&nbsp;In the current release, we introduce two new products –&nbsp;<strong>Square Payments</strong>&nbsp;and&nbsp;<strong>Voice Notifications</strong>, WooCommerce integration for the Bookly modern booking forms, Bookly Custom Fields (Add-on) &amp; Bookly Files (Add-on) compatibility with the new forms, and more.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v5-6/', 'Read more', 0, '2022-12-01 13:26:21', '2022-12-01 13:26:15'),
(15, 71, 'How to set up new Bookly Services booking form', 'youtube', 'https://www.youtube.com/embed/Qvp35ANbkUQ', '<p><span>One of the main benefits of the Bookly Services form is that you can organise services using categories and display them to your clients in a catalog view. Learn how to create your custom design and modify existing elements.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a> to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=Qvp35ANbkUQ&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i', 'Watch on Youtube', 0, '2022-10-20 06:28:15', '2022-10-20 06:28:15'),
(16, 70, 'New version release. See what’s new in Bookly PRO 5.4.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/10/Bookly-PRO-5.4-banner-756.jpg', '<p>We track requests for new capabilities and keep working on the new functionality so that you can get more with Bookly every day! With this update, we release new features that meet the most popular requirements and help you manage your booking system easier and more effectively.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v5-4/', 'Read more', 0, '2022-10-10 11:31:59', '2022-10-10 11:31:59'),
(17, 69, 'New video: How to upload files in Bookly', 'youtube', 'https://www.youtube.com/embed/-ONIAAzIbmM', '<p><span>This video tutorial is about the file uploading feature in Bookly.&nbsp;</span><span>With the Bookly Files (Add-on), you can let your clients attach files related to the appointment right in the booking form.&nbsp;Uploaded documents will be stored at the appointment details.&nbsp;For more details, visit our&nbsp;<a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000373133\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000373133\"><span class=\"s1\">help center</span></a>&nbsp;and check other&nbsp;<a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\"><span class=\"s1\">video tutorials</span></a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=-ONIAAzIbmM&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-09-06 14:20:10', '2022-09-06 14:20:10'),
(18, 68, 'New version release. See what’s new in Bookly PRO 5.3.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/08/Bookly-PRO-5.3-banner-756.jpg', '<p><span>With this update, we release major&nbsp;</span>changes in the Appearance section<span>, the ability to&nbsp;</span>create several designs of your booking forms<span>,&nbsp;</span>payments in the new Bookly Search form<span>, and more. Also, as usual, new version includes&nbsp;general enhancements and bug fixes.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v5-3/', 'Read more', 0, '2022-08-25 13:00:11', '2022-08-25 13:00:11'),
(19, 67, 'New video: How to book identical appointments in a row', 'youtube', 'https://www.youtube.com/embed/xPsOXHMrly8', '<p>With the Bookly Multiply Appointments (Add-on), your clients can book back-to-back sessions of the same service.&nbsp;This way, customers can change the default appointment duration by selecting the quantity of similar services they’d like to get in a row.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210138469-Multiply-Appointments-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210138469-Multiply-Appointments-Add-on\" target=\"_blank\" rel=\"noopener\">help center</a> and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=xPsOXHMrly8&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-08-05 08:52:41', '2022-08-05 08:52:41'),
(20, 66, 'New version release. See what’s new in Bookly PRO 5.0.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/07/Bookly-PRO-5.0-banner-756.jpg', '<p>We continue to develop new features and make improvements in Bookly for a better experience and more flexibility. Today’s update brings a new appearance of the booking form, the ability to book packages in the Bookly search form, new Diagnostics section in the Bookly menu, and more.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v5-0/', 'Read more', 0, '2022-07-27 12:05:35', '2022-07-27 12:05:35'),
(21, 65, ' What’s the difference between Compound Services (Add-on) & Collaborative Services (Add-on)', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/07/difference-between-compound-addon-and-collaborative-addon-banner-756.jpg', '<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a detailed comparison of the Compound Services (Add-on) and Collaborative Services (Add-on) for Bookly.</span></p>', 'https://www.booking-wp-plugin.com/whats-difference-compound-services-add-collaborative-services-add/', 'Read more', 0, '2022-07-12 10:24:47', '2022-07-12 10:24:47'),
(22, 64, 'New video: How to let clients rate your services', 'youtube', 'https://www.youtube.com/embed/k-iNqs4nBLY', '<p><span>With the Bookly Ratings (Add-on), you can gather customer feedback after each appointment and display staff members’ rating in a booking form. Learn how to quickly set up and use this feature.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360001695713\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360001695713\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=k-iNqs4nBLY&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-06-28 12:56:54', '2022-06-28 12:56:54'),
(23, 63, 'New video: How to create tasks in Bookly', 'youtube', 'https://www.youtube.com/embed/fT-J4Limf2Q', '<p>This video is about creating unscheduled appointments in Bookly. With the Bookly Tasks (Add-on), you can create and manage an unlimited number of tasks or bookings that have no date and time yet. For more details, visit our&nbsp;<a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360013214654-Skip-time-selection-Tasks-Add-on-\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360013214654-Skip-time-selection-Tasks-Add-on-\"><span class=\"s1\">help center</span></a>&nbsp;and check other&nbsp;<a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\"><span class=\"s1\">video tutorials</span></a>&nbsp;to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=fT-J4Limf2Q&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-06-17 14:55:12', '2022-06-17 14:55:12'),
(24, 62, 'New version release. See what’s new in Bookly PRO 4.9.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/06/Bookly-PRO-4.9-banner-756.jpg', '<p>This update brings a new product in Bookly Cloud – <strong>Cloud Cron</strong>, integration with BigBlueButton – virtual classroom software, customization of ICS files, read-only access for calendar in Staff Cabinet, new trigger in Zapier, improvements in the Files (Add-on), and more.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v4-9/', 'Read more', 0, '2022-06-13 11:14:55', '2022-06-13 11:14:55'),
(25, 61, 'New video: How to add online meeting URL to Bookly appointment', 'youtube', 'https://www.youtube.com/embed/KXpgB25Vs60', '<p>With Bookly, you get built-in integrations with the most popular software for online meetings: Zoom, Google Meet, and Jitsi. Whichever app you choose, it will generate unique video meeting links for each appointment created via Bookly.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360013355499\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360013355499\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=KXpgB25Vs60&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i', 'Watch on Youtube', 0, '2022-06-06 17:10:12', '2022-06-06 17:10:12'),
(26, 60, 'New video: How to set up and use Bookly Compound Services (Add-on)', 'youtube', 'https://www.youtube.com/embed/iIJcQ8fT5BI', '<p>Learn how to combine existing services and spare time to make one complex appointment. Your clients can book such services as regular appointments, while Bookly adds reservations to each staff member’s schedule separately. For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360001642033-Compound-Services-Add-on\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360001642033-Compound-Services-Add-on\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=iIJcQ8fT5BI&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-05-24 09:39:45', '2022-05-24 09:39:45'),
(27, 59, 'New video: How to make chain bookings', 'youtube', 'https://www.youtube.com/embed/yGyzwKR9ktg', '<p>With the Chain Appointments (Add-on) for Bookly, your clients will be able to&nbsp;book several services in one booking session. Such appointments will be scheduled sequentially.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210316865-Chain-Appointments-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210316865-Chain-Appointments-Add-on\" target=\"_blank\" rel=\"noopener\">help center</a> and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=yGyzwKR9ktg&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-05-16 12:12:22', '2022-05-16 12:12:22'),
(28, 58, 'New version release. See what’s new in Bookly PRO 4.8.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/05/Bookly-PRO-4.8-banner-756.jpg', '<p>Bookly is making ongoing updates to improve your user experience and implement the most popular feature requests. Today’s update introduces the beta version of a new booking form, creation of WooCommerce orders for backend bookings, customization of the QR codes description, and more.</p>', 'https://www.booking-wp-plugin.com/bookly-pro-v4-8/', 'Read more', 0, '2022-05-12 15:35:28', '2022-05-12 15:35:28'),
(29, 57, 'Upcoming System Maintenance', 'image', 'https://images.booking-wp-plugin.com/main/blog/Upcoming-system-maintenance.jpg', '<p class=\"p1\">We would like to inform you that on Sunday-Monday night of <b>2022 May 09 from 00:00 (midnight) to 04:00 CET</b>, the SMS service will be temporarily unavailable to users in some regions or countries (Australia, Europe, Africa, Asia, South America). This time will be used to implement important upgrades and performance optimization.</p><p class=\"p1\">If you have any scheduled text messages during this time, please take this into consideration. We appreciate your patience and understanding!</p>', 'https://support.booking-wp-plugin.com/hc/en-us/articles/212411289-Set-Up-Text-Messages-SMS-', 'Help Center', 0, '2022-05-05 07:47:35', '2022-05-05 07:47:35'),
(30, 56, 'New video: How to create customer groups', 'youtube', 'https://www.youtube.com/embed/pNOayasDJXI', '<p>Bookly Customer Groups (Add-on) enables you to create and manage groups of clients for different purposes. You can set certain limitations, assign special prices, offer promotions to particular customers, and more.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000201873-Customer-Groups-Add-on\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000201873-Customer-Groups-Add-on\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=pNOayasDJXI&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-05-05 07:40:52', '2022-05-05 07:40:52'),
(31, 55, 'All you need to know about automatic discounts in Bookly', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/04/756x384.jpg', '<p>Coupon codes, automatic or conditional discounts, and special rates can be used during certain seasons, promotions, or at any time you wish in order to increase customers’ loyalty. Let’s see how a wide range of Bookly features can help you meet various requirements and encourage your clients to book more through your appointment booking form.</p>', 'https://www.booking-wp-plugin.com/automatic-discounts-bookly/', 'Read more', 0, '2022-04-28 10:33:53', '2022-04-28 10:33:53'),
(32, 54, 'New video: How to sync Bookly PRO with Google Calendar', 'youtube', 'https://www.youtube.com/embed/3swwpWJ7_-s', '<p>With Google Calendar and Bookly Pro, you can manage your staff workload and bookings with maximum efficiency. Learn how to set up the connection and enable synchronization of all appointments created in Bookly with the employee\'s personal calendar.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/203572552-Google-Calendar-Sync\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/203572552-Google-Calendar-Sync\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=3swwpWJ7_-s&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i', 'Watch on Youtube', 0, '2022-04-25 16:05:42', '2022-04-25 16:05:42'),
(33, 53, 'New video: How to set flexible prices', 'youtube', 'https://www.youtube.com/embed/WfSbsoi06V8', '<p>Learn how to tweak the price for your services&nbsp;<span>on selected days of the week during&nbsp;cold or hot hours of the day. Dynamic pricing is available with the <strong>Special Hours (Add-on)</strong> for Bookly.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213524185-Dynamic-Pricing-Special-Hours-Add-On-\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213524185-Dynamic-Pricing-Special-Hours-Add-On-\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</span></p>', 'https://youtu.be/WfSbsoi06V8&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-04-19 08:42:45', '2022-04-19 08:42:45'),
(34, 52, 'New version release. See what’s new in Bookly PRO 4.7.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/04/Bookly-PRO-4.7-banner-756.jpg', '<p><span>Bookly rolls out a new option available for extending your active support period, the ability to create custom fields for backend entries, automatic update of the appointment status once it’s over, visible service price for appointments created via the Bookly admin panel, and more.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v4-7/', 'Read more', 0, '2022-04-07 11:27:12', '2022-04-07 11:27:12'),
(35, 51, 'New video: How to add service locations in Bookly', 'youtube', 'https://www.youtube.com/embed/KRlVIPE9xOA', '<p>With the Bookly Locations (Add-on),&nbsp;you can associate staff members with different locations, so your clients will be able to choose the place for their appointment before they schedule date and time.&nbsp;For more details, visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210229885\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/210229885\">help center</a> and check other <a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=KRlVIPE9xOA&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-03-31 13:26:43', '2022-03-31 13:26:43'),
(36, 50, 'New video: How to create and manage promo codes in Bookly', 'youtube', 'https://www.youtube.com/embed/luOElg-mnNU', '<p>Bookly Coupons (Add-on) allows you to offer discounts for your services and attract more clients. This video describes how to quickly set up coupons in Bookly.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003939373\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003939373\" target=\"_blank\" rel=\"noopener\">help center</a> and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a> to learn the basics and get the most out of Bookly.</p>', 'https://www.youtube.com/watch?v=luOElg-mnNU&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-03-24 12:27:27', '2022-03-24 12:27:27'),
(37, 49, 'New video: How to create time-flexible services', 'youtube', 'https://www.youtube.com/embed/jYKG0eGvWJ0', '<p><span>Custom Duration (Add-on) for Bookly allows you to create services with flexible duration. On the booking page, your clients can choose the length of the appointment from the predefined options, and the price will be adjusted respectively.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360005082294-Services-with-flexible-duration-Custom-Duration-Add-on-\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360005082294-Services-with-flexible-duration-Custom-Duration-Add-on-\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=jYKG0eGvWJ0&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK?utm_source=bookly_admin&utm_medium=news', 'Watch on Youtube', 0, '2022-02-17 09:41:40', '2022-02-17 09:41:40'),
(38, 48, 'New version release. See what’s new in Bookly PRO 4.6.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/02/Bookly-PRO-4.6-banner-756.jpg', '<p><span>Bookly’s new update introduces QR codes, refunds for payments made via Stripe, separate payments for recurring appointments, alert counter for new appointments, default values in custom fields, ability to attach payment to the package, and more.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v4-6/?utm_source=bookly_admin&utm_medium=news', 'Read more', 0, '2022-02-15 16:13:28', '2022-02-15 16:13:28'),
(39, 47, 'New video: How to accept deposit payments', 'youtube', 'https://www.youtube.com/embed/ewK3byklkK0', '<p><span>Bookly Deposit Payments (Add-on)&nbsp;allows you to set up a minimum amount that customers should pay at the time of booking. A deposit&nbsp;is set individually for each staff member and each service.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212234945-Deposit-Payments-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212234945-Deposit-Payments-Add-on\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=ewK3byklkK0&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-02-10 10:00:07', '2022-02-10 10:00:07'),
(40, 45, 'New video: How to add special days to staff schedule', 'youtube', 'https://www.youtube.com/embed/gi5eULm5-64', '<p><span>This video tutorial is about working schedule of your employees and changing regular timetable&nbsp;on particular days during the year.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212817929-Extra-Long-Short-Days-Special-Days-Add-on-\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212817929-Extra-Long-Short-Days-Special-Days-Add-on-\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://youtu.be/gi5eULm5-64&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-02-03 08:46:00', '2022-02-03 08:46:00'),
(41, 43, 'New video: How to create recurring appointments', 'youtube', 'https://www.youtube.com/embed/tfUmuNrYrn8', '<p><span>Learn how to set up and create recurring appointments in Bookly. This feature allows your clients to make multiple bookings that repeat at regular intervals, so they can schedule the whole series at once.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115001442665-Recurring-Appointments-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115001442665-Recurring-Appointments-Add-on\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=tfUmuNrYrn8&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-01-27 14:08:11', '2022-01-27 14:08:11'),
(42, 42, 'How to accept payments with WooCommerce', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/01/how-to-accept-payments-with-woocommerce-banner-756.jpg', '<p><span>If some payment gateway is not available in Bookly yet, you can have access to other payment options through WooCommerce – the world’s most popular e-commerce plugin for WordPress.&nbsp;Bookly PRO seamlessly integrates with WooCommerce allowing you to sell services as products.&nbsp;This article describes how to quickly set up the connection between two plugins.</span></p>', 'https://www.booking-wp-plugin.com/accept-payments-woocommerce/', 'Read more', 0, '2022-01-25 10:36:59', '2022-01-25 10:36:59'),
(43, 41, 'New video: How to book several appointments at once', 'youtube', 'https://www.youtube.com/embed/miYLCPCEYIg', '<p><span>Encourage your customers to book more on your website! This video explains how to set up the Bookly Cart (Add-on) and let your clients order a number of bookings in one session.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212969945-Cart-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212969945-Cart-Add-on\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=miYLCPCEYIg&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-01-20 09:42:21', '2022-01-20 09:42:21'),
(44, 39, 'New video: How to add extras to your services', 'youtube', 'https://www.youtube.com/embed/z_B7hyjBxqI', '<p><span>Extras are additional items that your customers can book along with the services. These may be </span><span>special tools, products, or resources for performing a service, or extra time if you set their duration.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/207647799-Extra-Products-Treatments-Service-Extras-Add-on-\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/207647799-Extra-Products-Treatments-Service-Extras-Add-on-\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=z_B7hyjBxqI&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-01-13 10:13:57', '2022-01-13 10:13:57'),
(45, 38, 'How to set specific booking days and times for a service', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/01/set-specific-booking-days-and-times-for-service-banner-756.jpg', '<p><span>Some services may be available on a seasonal basis, during specific hours within a day, or on certain days only.&nbsp;</span><span>Bookly allows you to adjust the service availability without affecting the regular timetable of your staff.&nbsp;</span><span>From this article, you will learn how to set up a custom schedule for a service to make it bookable only on special days and times.</span></p>', 'https://www.booking-wp-plugin.com/set-specific-booking-days-times-service/', 'Read more', 0, '2022-01-11 08:22:14', '2022-01-11 08:22:07'),
(46, 37, 'New video: How to set up Staff Cabinet (Add-on) for Bookly', 'youtube', 'https://www.youtube.com/embed/awHddbbNOaw', '<p><span>Personal Staff Cabinet for your employees enables them to view and manage the list of bookings, personal details, and schedules on the front end of your website. This video describes how to install and use it.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003349989\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003349989\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=awHddbbNOaw&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2022-01-06 12:10:24', '2022-01-06 12:08:42'),
(47, 36, 'How to create a separate booking page for each staff member', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2022/01/how-to-create-separate-booking-page-for-staff-member-banner-756.jpg', '<p><span>If you want to invite your customers to an appointment with a certain staff member, you may want to create a custom booking page that includes staff details, featured services, information about special offers, etc. This article explains how to set up a personalized online booking form for your employee and provide your customers with a unique booking link.</span></p>', 'https://www.booking-wp-plugin.com/create-separate-booking-page/', 'Read more', 0, '2022-01-04 09:32:50', '2022-01-04 09:32:50'),
(48, 35, 'New video: How to limit the service availability', 'youtube', 'https://www.youtube.com/embed/8EEf0HbZwi0', '<p><span>Learn how to limit the hours during the day when the service can be booked, and which options you have when both Service Schedule (Add-on) and Special Days (Add-on) are installed and activated.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213850385-Services-Available-at-Limited-Hours-Service-Schedule-Add-on-\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213850385-Services-Available-at-Limited-Hours-Service-Schedule-Add-on-\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=8EEf0HbZwi0&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2021-12-30 15:25:12', '2021-12-30 10:32:17'),
(49, 34, 'New version release. See what’s new in Bookly PRO 4.5.', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/Bookly-PRO-4.5-banner-756.jpg', '<p><span>The end of the year brings new features that we’re very excited to share with you! We want you to have a great experience using Bookly items, so the new release, as usual, includes some of the most requested improvements, general enhancements, and bug fixes.</span></p>', 'https://www.booking-wp-plugin.com/bookly-pro-v4-5/', 'Read more', 0, '2021-12-27 08:50:24', '2021-12-27 08:50:24'),
(50, 33, 'New video: How to accept group bookings', 'youtube', 'https://www.youtube.com/embed/Cmb1sxPFIMY', '<p><span>With the Bookly Group Booking (Add-on) you can use a capacity option, so your customers will be able to specify the number of persons they’d like to book for. Learn how to determine&nbsp;individual settings for each&nbsp;service and employee separately.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000259594-Group-Booking-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000259594-Group-Booking-Add-on\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=Cmb1sxPFIMY&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK', 'Watch on Youtube', 0, '2021-12-23 10:28:27', '2021-12-23 10:28:27'),
(51, 32, 'How to book appointments longer than 1 day', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/how-to-book-appointments-longer-than-one-day-banner-756.jpg', '<p><span>Some companies provide services that last throughout the day or even take several days, such as all-day conferences, weekend educational courses, or multi-day guided tours. Depending on the specific type of business, there are several options for setting up and managing such appointments via Bookly.</span></p>', 'https://www.booking-wp-plugin.com/book-appointments-longer-1-day/', 'Read more', 0, '2021-12-21 08:41:51', '2021-12-21 08:41:51'),
(52, 31, 'New video: How to extend client\'s profile in Bookly', 'youtube', 'https://www.youtube.com/embed/LvV2JDZV0uc', '<p><span>This video explains how to add custom data to the client’s profile with the Bookly Customer Information (Add-on). All customer-related information will always be available for you with a couple of clicks in the Customers section.&nbsp;For more details, visit our&nbsp;<a href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\">help center</a>&nbsp;and&nbsp;check other&nbsp;<a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://youtu.be/LvV2JDZV0uc&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i', 'Watch on Youtube', 0, '2021-12-16 11:23:12', '2021-12-16 11:23:12'),
(53, 30, 'Top 5 automations to use in Bookly', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/Top-five-automations-to-use-in-Bookly-banner-756.jpg', '<p><span>Bookly is known to be the most feature-rich online booking and scheduling plugin in the market.&nbsp;In this post, we’ll provide an overview of the top 5 Bookly automations that will help you to manage your administrative workload with ease and improve your efficiency.</span></p>', 'https://www.booking-wp-plugin.com/top-5-automations-use-bookly/', 'Read more', 0, '2021-12-14 08:03:44', '2021-12-14 08:03:44'),
(54, 29, 'Discontinued support for Internet Explorer 11', 'image', 'https://images.booking-wp-plugin.com/main/blog/Internet_Explorer_discontinued_support.jpg', '<p><span>The Internet Explorer (IE) 11 desktop application </span><strong>will go out of support&nbsp;</strong><span>starting June 15, 2022. Bootstrap framework used for Bookly interface elements in the admin panel, </span><a href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\">stopped supporting IE since version 5.0</a>&nbsp;<span>and </span><a href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\" data-mce-href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\">WordPress no longer supports IE 11 starting from version 5.8</a><span>. If you are currently using IE 11, it is strongly recommended that you switch to a more modern browser.</span></p>', 'https://blogs.windows.com/windowsexperience/2021/05/19/the-future-of-internet-explorer-on-windows-10-is-in-microsoft-edge/', 'Read more', 0, '2021-12-13 07:36:02', '2021-12-13 07:36:02'),
(55, 28, 'New video: How to manage customer base in Bookly', 'youtube', 'https://www.youtube.com/embed/K53xCEIo8NQ', '<p><span>With Bookly you get an unlimited, sortable and searchable customer list. But that’s not all. Learn how&nbsp;</span><span>Bookly allows you to effortlessly manage your customer base. For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" target=\"_blank\" rel=\"noopener\">help center</a><span>&nbsp;and&nbsp;check other </span><a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>', 'https://www.youtube.com/watch?v=K53xCEIo8NQ&list=PLuLhoBV-rlAbu0MMy7yG8KeysVAEdBOcc', 'Watch on Youtube', 0, '2021-12-09 09:28:31', '2021-12-09 09:28:31'),
(56, 27, 'What’s the difference between Multiply Appointments (Add-on) & Custom Duration (Add-on)', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/difference-between-multiply-appointments-addon-and-custom-duration-addon-banner-756.jpg', '<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a detailed comparison of the Multiply Appointments (Add-on) and Custom Duration (Add-on) for Bookly.</span></p>', 'https://www.booking-wp-plugin.com/whats-difference-multiply-appointments-add-custom-duration-add/', 'Read more', 0, '2021-12-07 09:19:54', '2021-12-07 09:19:54'),
(57, 26, 'New video: How to receive and manage online payments', 'youtube', 'https://www.youtube.com/embed/5WaXF4AeG-A', '<p><span>There are&nbsp;more than </span><strong>10 payment gateways&nbsp;</strong><span>which can be integrated with Bookly PRO to help drive more customers from the booking plugin right to your door. Learn how to quickly enable a desired online payment option in Bookly settings. For more details, visit our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" target=\"_blank\" rel=\"noopener\">help center</a><span>.</span></p>', 'https://www.youtube.com/watch?v=5WaXF4AeG-A&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i', 'Watch on Youtube', 0, '2021-12-02 09:08:52', '2021-12-02 09:08:52'),
(58, 25, ' How to never miss an appointment', 'image', 'https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/how-to-never-miss-an-appointment-with-Bookly-756.jpg', '<p><span>The last thing any business owner or service provider would want is to miss an appointment with a client. No matter how long is your booking list, Bookly will help you to efficiently control your company workload. With these recommendations, you will have no chance to forget or miss a scheduled meeting.</span></p>', 'https://www.booking-wp-plugin.com/never-miss-appointment-bookly/', 'Read more', 0, '2021-11-30 08:06:35', '2021-11-30 08:06:35'),
(59, 24, 'New video: How to set up and use custom fields in Bookly', 'youtube', 'https://www.youtube.com/embed/yRqrXj83eoY', '<p><span>This video explains how</span><span>&nbsp;to add your own custom questions to the booking form with the <strong>Bookly Custom Fields (Add-on)</strong>.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>', 'https://youtu.be/yRqrXj83eoY', 'Watch on Youtube', 0, '2021-11-26 08:21:57', '2021-11-26 08:21:57');
INSERT INTO `wp_bookly_news` (`id`, `news_id`, `title`, `media_type`, `media_url`, `text`, `button_url`, `button_text`, `seen`, `updated_at`, `created_at`) VALUES
(60, 23, 'Introducing Bookly Mailchimp (Add-on)', 'image', 'https://images.booking-wp-plugin.com/main/products/Bookly-Mailchimp-integration.jpg', '<p><span>We are happy to announce our new integration with&nbsp;</span><strong>Mailchimp&nbsp;</strong><span>– one of the most popular and flexible email marketing platforms that you can use for scheduling and </span><strong>automating your email campaigns</strong><span>. Once connected, you\'ll be able to&nbsp;automatically export client\'s contact information to your mailing list after an appointment is created via Bookly.</span></p>', 'https://codecanyon.net/item/bookly-mailchimp-addon/34925755?ref=ladela', 'Learn more', 0, '2021-11-24 10:29:57', '2021-11-24 10:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_notifications`
--

CREATE TABLE `wp_bookly_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway` enum('email','sms','voice','whatsapp') NOT NULL DEFAULT 'email',
  `type` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `to_staff` tinyint(1) NOT NULL DEFAULT 0,
  `to_customer` tinyint(1) NOT NULL DEFAULT 0,
  `to_admin` tinyint(1) NOT NULL DEFAULT 0,
  `to_custom` tinyint(1) NOT NULL DEFAULT 0,
  `custom_recipients` varchar(255) DEFAULT NULL,
  `attach_ics` tinyint(1) NOT NULL DEFAULT 0,
  `attach_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `settings` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_notifications`
--

INSERT INTO `wp_bookly_notifications` (`id`, `gateway`, `type`, `active`, `name`, `subject`, `message`, `to_staff`, `to_customer`, `to_admin`, `to_custom`, `custom_recipients`, `attach_ics`, `attach_invoice`, `settings`) VALUES
(1, 'email', 'new_booking', 1, 'Notification to customer about approved appointment', 'Your appointment information', 'Dear {client_name}.\n\nThis is a confirmation that you have booked {service_name}.\n\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(2, 'email', 'new_booking', 1, 'Notification to staff member about approved appointment', 'New booking information', 'Hello.\n\nYou have a new booking.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(3, 'email', 'ca_status_changed', 1, 'Notification to customer about cancelled appointment', 'Booking cancellation', 'Dear {client_name}.\n\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(4, 'email', 'ca_status_changed', 1, 'Notification to staff member about cancelled appointment', 'Booking cancellation', 'Hello.\n\nThe following booking has been cancelled.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(5, 'email', 'ca_status_changed', 1, 'Notification to customer about rejected appointment', 'Booking rejection', 'Dear {client_name}.\n\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\n\nReason: {cancellation_reason}\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(6, 'email', 'ca_status_changed', 1, 'Notification to staff member about rejected appointment', 'Booking rejection', 'Hello.\n\nThe following booking has been rejected.\n\nReason: {cancellation_reason}\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(7, 'sms', 'new_booking', 1, 'Notification to customer about approved appointment', '', 'Dear {client_name}.\nThis is a confirmation that you have booked {service_name}.\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(8, 'sms', 'new_booking', 1, 'Notification to staff member about approved appointment', '', 'Hello.\nYou have a new booking.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(9, 'sms', 'ca_status_changed', 1, 'Notification to customer about cancelled appointment', '', 'Dear {client_name}.\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(10, 'sms', 'ca_status_changed', 1, 'Notification to staff member about cancelled appointment', '', 'Hello.\nThe following booking has been cancelled.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(11, 'sms', 'ca_status_changed', 1, 'Notification to customer about rejected appointment', '', 'Dear {client_name}.\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\nReason: {cancellation_reason}\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(12, 'sms', 'ca_status_changed', 1, 'Notification to staff member about rejected appointment', '', 'Hello.\nThe following booking has been rejected.\nReason: {cancellation_reason}\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(13, 'sms', 'appointment_reminder', 0, 'Evening reminder to customer about next day appointment (requires cron setup)', '', 'Dear {client_name}.\nWe would like to remind you that you have booked {service_name} tomorrow at {appointment_time}. We are waiting for you at {company_address}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(14, 'voice', 'appointment_reminder', 0, 'Evening reminder to customer about next day appointment (requires cron setup)', '', 'Dear {client_name}.\nWe would like to remind you that you have booked {service_name} tomorrow at {appointment_time}. We are waiting for you at {company_address}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(15, 'sms', 'appointment_reminder', 0, 'Follow-up message in the same day after appointment (requires cron setup)', '', 'Dear {client_name}.\nThank you for choosing {company_name}. We hope you were satisfied with your {service_name}.\nThank you and we look forward to seeing you again soon.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":21,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(16, 'sms', 'staff_day_agenda', 0, 'Evening notification with the next day agenda to staff member (requires cron setup)', '', 'Hello.\nYour agenda for tomorrow is:\n{next_day_agenda}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(17, 'email', 'verify_email', 1, 'Notification to customer with verification code', 'Bookly verification code', '{verification_code}', 0, 1, 0, 0, NULL, 0, 0, '[]'),
(18, 'sms', 'verify_phone', 1, 'Notification to customer with verification code', '', '{verification_code}', 0, 1, 0, 0, NULL, 0, 0, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_notifications_queue`
--

CREATE TABLE `wp_bookly_notifications_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL,
  `sent` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_orders`
--

CREATE TABLE `wp_bookly_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_orders`
--

INSERT INTO `wp_bookly_orders` (`id`, `token`) VALUES
(1, '460355f9a1168a4cf24fac9eab1a23d8'),
(2, '4df2bcbe3e9160a4b51af5edbc8940e2'),
(3, 'dfcc5328a3182169bd225a76541e17a1'),
(4, '8c60afefae7877ca136ce1642f907c22'),
(5, '1485f61f677e09911e748aab7dcf53ec'),
(6, '95aa58ddacafeec23aba699bbff8c282'),
(7, '27f9209fc20054f0f917331cdde1a532');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_payments`
--

CREATE TABLE `wp_bookly_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` enum('appointments','packages','gift_cards') NOT NULL DEFAULT 'appointments',
  `coupon_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_card_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('local','free','paypal','authorize_net','stripe','2checkout','payu_biz','payu_latam','payson','mollie','woocommerce','cloud_stripe','cloud_square') NOT NULL DEFAULT 'local',
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_type` enum('in_full','deposit') NOT NULL DEFAULT 'in_full',
  `gateway_price_correction` decimal(10,2) DEFAULT 0.00,
  `status` enum('pending','completed','rejected','refunded') NOT NULL DEFAULT 'completed',
  `token` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_payments`
--

INSERT INTO `wp_bookly_payments` (`id`, `target`, `coupon_id`, `gift_card_id`, `type`, `total`, `tax`, `paid`, `paid_type`, `gateway_price_correction`, `status`, `token`, `details`, `order_id`, `ref_id`, `created_at`, `updated_at`) VALUES
(1, 'appointments', NULL, NULL, 'free', 0.00, 0.00, 0.00, 'in_full', NULL, 'completed', 'a56f2c9b3edffb4f88abff331c6bf81c', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-29 12:00:00\",\"ca_id\":1,\"deposit_format\":0,\"discounts\":null,\"duration\":\"900\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson \\/ Training\",\"service_price\":0,\"service_tax\":0,\"staff_name\":\"Robert Smith\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":0},\"customer\":\"Jayannita Biswas\",\"customer_id\":1,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 1, NULL, '2023-11-16 06:33:14', '2023-11-16 06:33:14'),
(2, 'appointments', NULL, NULL, 'free', 0.00, 0.00, 0.00, 'in_full', NULL, 'completed', 'ffd073cda2d73015c195d95f464a2eca', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-12-27 11:45:00\",\"ca_id\":2,\"deposit_format\":0,\"discounts\":null,\"duration\":\"3600\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson \\/ Training\",\"service_price\":0,\"service_tax\":0,\"staff_name\":\"Robert Smith\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":0},\"customer\":\"Anisha Bhattacharya\",\"customer_id\":2,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 2, NULL, '2023-11-16 06:56:34', '2023-11-16 06:56:34'),
(3, 'appointments', NULL, NULL, 'free', 0.00, 0.00, 0.00, 'in_full', NULL, 'completed', '2ca4b221925124080a8fd78fd3aea8e0', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-23 12:15:00\",\"ca_id\":3,\"deposit_format\":0,\"discounts\":null,\"duration\":\"7200\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson\",\"service_price\":0,\"service_tax\":0,\"staff_name\":\"Robert Smith\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":0},\"customer\":\"webberadmin\",\"customer_id\":3,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 3, NULL, '2023-11-17 07:02:12', '2023-11-17 07:02:12'),
(4, 'appointments', NULL, NULL, 'local', 185.00, 0.00, 185.00, 'deposit', 0.00, 'completed', 'e1afcc5b550a7aa3ff7d997207ab9cfe', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-22 15:00:00\",\"ca_id\":4,\"deposit_format\":0,\"discounts\":null,\"duration\":\"5400\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson + Car Rental\",\"service_price\":185,\"service_tax\":0,\"staff_name\":\"Blue Bird Employee\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":185},\"customer\":\"Test\",\"customer_id\":4,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":\"0.00\",\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 4, NULL, '2023-11-20 17:36:46', '2023-11-20 19:09:24'),
(5, 'appointments', NULL, NULL, 'local', 135.00, 0.00, 0.00, 'deposit', 0.00, 'pending', '8776bc75af10fbc3ea2522f53e188ac4', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-21 12:30:00\",\"ca_id\":5,\"deposit_format\":0,\"discounts\":null,\"duration\":\"5400\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson\",\"service_price\":135,\"service_tax\":0,\"staff_name\":\"Blue Bird Employee\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":135},\"customer\":\"Test\",\"customer_id\":5,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 5, NULL, '2023-11-20 18:51:59', '2023-11-20 18:51:59'),
(6, 'appointments', NULL, NULL, 'local', 185.00, 0.00, 0.00, 'deposit', 0.00, 'pending', '6072deeea45027f1b59d2108bb48fd39', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-23 08:00:00\",\"ca_id\":6,\"deposit_format\":0,\"discounts\":null,\"duration\":\"5400\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson + Car Rental\",\"service_price\":185,\"service_tax\":0,\"staff_name\":\"Blue Bird Employee\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":185},\"customer\":\"webberadmin\",\"customer_id\":6,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 6, NULL, '2023-11-20 19:20:03', '2023-11-20 19:20:03'),
(7, 'appointments', NULL, NULL, 'local', 185.00, 0.00, 0.00, 'deposit', 0.00, 'pending', 'd2fb9fa5428e3b53fa9128f1824d8cf0', '{\"items\":[{\"type\":\"appointment\",\"app_start_info\":null,\"appointment_date\":\"2023-11-22 13:00:00\",\"ca_id\":7,\"deposit_format\":0,\"discounts\":null,\"duration\":\"5400\",\"extras\":[],\"number_of_persons\":1,\"service_name\":\"Driving Lesson + Car Rental\",\"service_price\":185,\"service_tax\":0,\"staff_name\":\"Blue Bird Employee\",\"units\":1,\"wait_listed\":false}],\"coupon\":null,\"coupon_id\":null,\"gift_card\":null,\"gift_card_id\":null,\"subtotal\":{\"deposit\":0,\"price\":185},\"customer\":\"test\",\"customer_id\":7,\"customer_group\":null,\"tax_in_price\":null,\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null,\"adjustments\":[],\"refundable\":null,\"group_discount\":null,\"discounts\":null,\"from_backend\":null}', 7, NULL, '2023-11-21 04:11:59', '2023-11-21 04:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_schedule_item_breaks`
--

CREATE TABLE `wp_bookly_schedule_item_breaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_schedule_item_id` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_sent_notifications`
--

CREATE TABLE `wp_bookly_sent_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_series`
--

CREATE TABLE `wp_bookly_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `repeat` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_services`
--

CREATE TABLE `wp_bookly_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('simple','collaborative','compound','package') NOT NULL DEFAULT 'simple',
  `title` varchar(255) DEFAULT '',
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 900,
  `slot_length` varchar(32) NOT NULL DEFAULT 'default',
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `color` varchar(32) NOT NULL DEFAULT '#FFFFFF',
  `deposit` varchar(16) NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT 1,
  `capacity_max` int(11) NOT NULL DEFAULT 1,
  `waiting_list_capacity` int(10) UNSIGNED DEFAULT NULL,
  `one_booking_per_slot` tinyint(1) NOT NULL DEFAULT 0,
  `padding_left` int(11) NOT NULL DEFAULT 0,
  `padding_right` int(11) NOT NULL DEFAULT 0,
  `info` text DEFAULT NULL,
  `start_time_info` varchar(32) DEFAULT '',
  `end_time_info` varchar(32) DEFAULT '',
  `same_staff_for_subservices` tinyint(1) NOT NULL DEFAULT 0,
  `units_min` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `units_max` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `package_life_time` int(11) DEFAULT NULL,
  `package_size` int(11) DEFAULT NULL,
  `package_unassigned` tinyint(1) NOT NULL DEFAULT 0,
  `appointments_limit` int(11) DEFAULT NULL,
  `limit_period` enum('off','day','week','month','year','upcoming','calendar_day','calendar_week','calendar_month','calendar_year') NOT NULL DEFAULT 'off',
  `staff_preference` enum('order','least_occupied','most_occupied','least_occupied_for_period','most_occupied_for_period','least_expensive','most_expensive') NOT NULL DEFAULT 'most_expensive',
  `staff_preference_settings` text DEFAULT NULL,
  `recurrence_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `recurrence_frequencies` set('daily','weekly','biweekly','monthly') NOT NULL DEFAULT 'daily,weekly,biweekly,monthly',
  `time_requirements` enum('required','optional','off') NOT NULL DEFAULT 'required',
  `collaborative_equal_duration` tinyint(1) NOT NULL DEFAULT 0,
  `online_meetings` enum('off','zoom','google_meet','jitsi','bbb') NOT NULL DEFAULT 'off',
  `final_step_url` varchar(512) NOT NULL DEFAULT '',
  `wc_product_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wc_cart_info_name` varchar(255) DEFAULT NULL,
  `wc_cart_info` text DEFAULT NULL,
  `min_time_prior_booking` int(11) DEFAULT NULL,
  `min_time_prior_cancel` int(11) DEFAULT NULL,
  `gateways` varchar(255) DEFAULT NULL,
  `visibility` enum('public','private','group') NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_services`
--

INSERT INTO `wp_bookly_services` (`id`, `category_id`, `type`, `title`, `attachment_id`, `duration`, `slot_length`, `price`, `color`, `deposit`, `capacity_min`, `capacity_max`, `waiting_list_capacity`, `one_booking_per_slot`, `padding_left`, `padding_right`, `info`, `start_time_info`, `end_time_info`, `same_staff_for_subservices`, `units_min`, `units_max`, `package_life_time`, `package_size`, `package_unassigned`, `appointments_limit`, `limit_period`, `staff_preference`, `staff_preference_settings`, `recurrence_enabled`, `recurrence_frequencies`, `time_requirements`, `collaborative_equal_duration`, `online_meetings`, `final_step_url`, `wc_product_id`, `wc_cart_info_name`, `wc_cart_info`, `min_time_prior_booking`, `min_time_prior_cancel`, `gateways`, `visibility`, `position`) VALUES
(8, 8, 'simple', 'Driving Lesson + Car Rental', NULL, 5400, 'default', 185.00, '#5C3917', '100%', 1, 1, NULL, 0, 0, 0, 'Includes Car Rental for additional $50 along with Driving Lesson for 1 hr 30 mins', NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'public', 2),
(10, 9, 'simple', 'Brush-Up Lesson', NULL, 5400, 'default', 0.00, '#0ADA1C', '100%', 1, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'public', 4),
(11, 8, 'simple', 'Driving Lesson', NULL, 5400, 'default', 135.00, '#5C3917', '100%', 1, 1, NULL, 0, 0, 0, 'Driving Lesson for 1 hr 30 mins', NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'private', 2),
(12, 10, 'simple', 'Car Rental', NULL, 900, 'default', 50.00, '#2EE641', '100%', 1, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'public', 5),
(13, 10, 'simple', 'Driver Safety Course ', NULL, 900, 'default', 50.00, '#35E744', '100%', 1, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'public', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_sessions`
--

CREATE TABLE `wp_bookly_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_shop`
--

CREATE TABLE `wp_bookly_shop` (
  `id` int(10) UNSIGNED NOT NULL,
  `plugin_id` int(10) UNSIGNED NOT NULL,
  `type` enum('plugin','bundle') NOT NULL DEFAULT 'plugin',
  `highlighted` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(10) UNSIGNED DEFAULT 0,
  `demo_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sales` int(10) UNSIGNED NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `reviews` int(10) UNSIGNED NOT NULL,
  `published` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_shop`
--

INSERT INTO `wp_bookly_shop` (`id`, `plugin_id`, `type`, `highlighted`, `priority`, `demo_url`, `title`, `slug`, `description`, `url`, `icon`, `image`, `price`, `sales`, `rating`, `reviews`, `published`, `seen`, `created_at`) VALUES
(1, 7226091, 'plugin', 1, 100, NULL, 'Bookly Pro', 'bookly-addon-pro', 'Bring appointment scheduling process to the next level with Bookly Pro (Add-on). Pro version turns Bookly plugin into the professional appointment management system. Unlock Advanced Customer management, Service provider management, Services management, Email and SMS notifications, Booking management capabilities. Connect payment gateways and modify Pro version with other add-ons available only with Bookly Pro and more.', 'https://codecanyon.net/item/bookly-booking-plugin-responsive-appointment-booking-and-scheduling/7226091', 'https://s3.envato.com/files/437889706/bookly-pro-icon80x80.png', 'https://s3.envato.com/files/477812476/CodeCanyon-main-banner-51K-CyberWeek23.jpg', 53.00, 51209, 4.53, 1133, '2014-04-12 17:14:52', 1, '2023-11-23 05:15:21'),
(2, 13903524, 'plugin', 0, 0, NULL, 'Bookly Multisite (Add-on)', 'bookly-addon-multisite', 'Bookly Multisite (Add-on) enables you to use a single instance of the Bookly plugin across your entire Multisite network. This means that each site within your network will have its own unique list of services, staff members, appointments, and settings. It’s an efficient and convenient way to manage your bookings across multiple sites from a single point of access.', 'https://codecanyon.net/item/bookly-multisite-addon/13903524', 'https://s3.envato.com/files/437364499/icon80x80.png', 'https://s3.envato.com/files/437364501/Multisite-590x300.jpg', 49.00, 701, 5.00, 9, '2015-12-04 16:38:03', 1, '2023-11-23 05:15:21'),
(3, 15552320, 'plugin', 0, 0, NULL, 'Bookly Service Extras (Add-on)', 'bookly-addon-service-extras', 'Bookly Service Extras (Add-on) allows you to offer extra items, services, products, equipment, or options that customers can book along with the regular appointment created via Bookly. These additional items can affect the overall price and duration of the appointment as selected by the client.', 'https://codecanyon.net/item/bookly-service-extras-addon/15552320', 'https://s3.envato.com/files/437367975/icon80x80%20(1).png', 'https://s3.envato.com/files/437367976/Service-Extras-590x300.jpg', 49.00, 3687, 4.42, 33, '2016-04-01 15:29:11', 1, '2023-11-23 05:15:21'),
(4, 17328208, 'plugin', 0, 0, NULL, 'Bookly Locations (Add-on)', 'bookly-addon-locations', 'Does your company operate in more than one place? Bookly Locations (Add-on) makes it possible to associate staff members and services with different locations, so your clients can pick where they prefer to receive services before they schedule a date and time for their visit.\r\n', 'https://codecanyon.net/item/bookly-locations-addon/17328208', 'https://s3.envato.com/files/437370601/icon80x80%20(2).png', 'https://s3.envato.com/files/437370602/Locations-590x300.jpg', 39.00, 3220, 4.44, 34, '2016-08-03 17:49:31', 1, '2023-11-23 05:15:21'),
(5, 17367838, 'plugin', 0, 0, NULL, 'Bookly Chain Appointments (Add-on)', 'bookly-addon-chain-appointments', 'Let your clients book several consecutive appointments in one visit. With the Bookly Chain Appointments (Add-on), your clients can choose multiple services from different staff members at the first step of the booking process. Bookly will find available time slots when all services can be delivered sequentially during a single visit.', 'https://codecanyon.net/item/bookly-chain-appointments-addon/17367838', 'https://s3.envato.com/files/437373852/icon80x80%20(3).png', 'https://s3.envato.com/files/437373854/Chain-Appointments-590x300.jpg', 29.00, 1430, 4.80, 5, '2016-08-09 17:40:29', 1, '2023-11-23 05:15:21'),
(6, 17457141, 'plugin', 0, 0, NULL, 'Bookly Multiply Appointments (Add-on)', 'bookly-addon-multiply-appointments', 'Let your clients determine the length of their visit by booking back to back sessions of the same service. Bookly Multiply Appointments (Add-on) makes it possible for your clients to select a number of appointments they would like to get in a row with the same service provider. Bookly will automatically calculate the price of such reservation and offer time slots that can accommodate the stated number of identical appointments.', 'https://codecanyon.net/item/bookly-multiply-appointments-addon/17457141', 'https://s3.envato.com/files/437382095/icon80x80%20(4).png', 'https://s3.envato.com/files/437382096/Multiply-Appointments-590x300.jpg', 29.00, 966, 0.00, 2, '2016-08-16 16:02:12', 1, '2023-11-23 05:15:21'),
(7, 17956131, 'plugin', 0, 0, NULL, 'Bookly Deposit Payments (Add-on)', 'bookly-addon-deposit-payments', 'Do you want to minimize the number of missed appointments and reduce cancellations? With the Bookly Deposit Payments (Add-on), you can require clients to pay a deposit at the time of booking to secure their appointment. By collecting a portion of the service cost in advance, you can minimize the risk of no-shows and ensure that the client is committed to their appointment. The remaining amount can then be paid offline when the client arrives for their appointment.', 'https://codecanyon.net/item/bookly-deposit-payments-addon/17956131', 'https://s3.envato.com/files/437382478/icon80x80%20(5).png', 'https://s3.envato.com/files/437382479/Deposit-Payments-2-590x300.jpg', 39.00, 1931, 3.64, 11, '2016-09-22 18:11:00', 1, '2023-11-23 05:15:21'),
(8, 18611122, 'plugin', 0, 0, NULL, 'Bookly Special Days (Add-on)', 'bookly-addon-special-days', 'Bookly Special Days (Add-on) enables you to change the default working hours of your staff on specific days of the year. This means you can create customized work schedules that differ from the regular ones, such as shorter or longer workdays, including breaks. These special days’ working hours will be taken into account when Bookly checks the service provider’s availability, providing your clients with accurate booking times.', 'https://codecanyon.net/item/bookly-special-days-addon/18611122', 'https://s3.envato.com/files/437382756/icon80x80%20(6).png', 'https://s3.envato.com/files/437382758/Special-Days-590x300.jpg', 39.00, 3041, 4.50, 18, '2016-11-07 01:25:43', 1, '2023-11-23 05:15:21'),
(9, 18704535, 'plugin', 0, 0, NULL, 'Bookly Special Hours (Add-on)', 'bookly-addon-special-hours', 'Do you want to offer flexible pricing options for your services? With the Bookly Special Hours (Add-on), you can easily set up dynamic pricing based on the time of day or day of the week. You can offer discounted rates for morning appointments or increase prices for evening or weekend bookings. This allows you to tailor your pricing to the needs of your business and customers.', 'https://codecanyon.net/item/bookly-special-hours-addon/18704535', 'https://s3.envato.com/files/437383025/icon80x80%20(7).png', 'https://s3.envato.com/files/437383027/Special-Hours-590x300.jpg', 29.00, 745, 4.33, 6, '2016-11-09 01:22:54', 1, '2023-11-23 05:15:21'),
(10, 18874038, 'plugin', 0, 0, NULL, 'Bookly Service Schedule (Add-on)', 'bookly-addon-service-schedule', 'Do you offer unique types of services that are only available during specific times or days? With the Bookly Service Schedule (Add-on), you can easily limit the availability of your services to specific hours or days. This allows staff members to follow their regular schedules but booking times for a specific service only appear in the Bookly form when they overlap with the staff’s working hours.', 'https://codecanyon.net/item/bookly-service-schedule-addon/18874038', 'https://s3.envato.com/files/437383322/icon80x80%20(8).png', 'https://s3.envato.com/files/437383325/590x300.jpg', 29.00, 3253, 4.38, 16, '2016-11-22 05:03:19', 1, '2023-11-23 05:15:21'),
(11, 19497634, 'plugin', 0, 0, NULL, 'Bookly Recurring Appointments (Add-on)', 'bookly-addon-recurring-appointments', 'Do you want to streamline your clients’ booking experience and encourage them to schedule regular visits? With the Bookly Recurring Appointments (Add-on), you can easily allow clients to schedule appointments weeks or months in advance. This feature allows you to automate the process of creating a series of appointments at a custom repeat interval, making it simple for clients to schedule regular appointments with just a few clicks in the Bookly booking form.', 'https://codecanyon.net/item/bookly-recurring-appointments-addon/19497634', 'https://s3.envato.com/files/437383633/icon80x80%20(9).png', 'https://s3.envato.com/files/437383634/Recurring-appointments-590x300.jpg', 39.00, 1968, 3.77, 13, '2017-02-23 17:42:00', 1, '2023-11-23 05:15:21'),
(12, 19617518, 'plugin', 0, 0, NULL, 'Bookly PayPal Payments Standard (Add-on)', 'bookly-addon-paypal-payments-standard', 'If you’re looking for a hassle-free way to process online payments during the booking process, Bookly PayPal Payments Standard (Add-on) is the perfect solution for you. By integrating this add-on with your Bookly PRO booking form, you can offer your customers a secure and popular payment gateway to pay via credit card or PayPal account. With all payments processed through PayPal, you can rest assured that the transaction is safe and reliable.', 'https://codecanyon.net/item/bookly-paypal-payments-standard-addon/19617518', 'https://s3.envato.com/files/437397531/icon80x80%20(10).png', 'https://s3.envato.com/files/437397532/PayPal-Payments-Standard-590x300.jpg', 29.00, 1800, 4.50, 8, '2017-03-22 04:29:25', 1, '2023-11-23 05:15:21'),
(13, 20005540, 'plugin', 0, 0, NULL, 'Bookly Staff Cabinet (Add-on)', 'bookly-addon-staff-cabinet', 'With the Bookly Staff Cabinet (Add-on), you can set up and provide each employee with their own personal account to manage their calendars, details, schedules, and other settings directly on the front end of your site. This eliminates the need for staff members to access the WordPress admin panel. By allowing employees to log in to their own Staff Cabinet, you can streamline the appointment management process and improve efficiency.', 'https://codecanyon.net/item/bookly-staff-cabinet-addon/20005540', 'https://s3.envato.com/files/437398500/icon80x80%20(11).png', 'https://s3.envato.com/files/437398501/Staff-Cabinet-590x300.jpg', 39.00, 2386, 4.15, 20, '2017-05-26 16:11:36', 1, '2023-11-23 05:15:21'),
(14, 20685954, 'plugin', 0, 0, NULL, 'Bookly PayU Latam (Add-on)', 'bookly-addon-payu-latam', 'Looking for a seamless and convenient way to accept online payments during booking on your website? Bookly PayU Latam (Add-on) enables integration of PayU Latam payment solution, which is a widely used payment platform in Latin America, into your Bookly PRO booking form. Your customers can easily pay online for your services using the PayU Checkout for secure transaction processing.', 'https://codecanyon.net/item/bookly-payu-latam-addon/20685954', 'https://s3.envato.com/files/437399038/icon80x80%20(12).png', 'https://s3.envato.com/files/437399039/PayU-Latam-590x300.jpg', 29.00, 107, 0.00, 2, '2017-10-04 22:22:08', 1, '2023-11-23 05:15:21'),
(15, 20917406, 'plugin', 0, 0, NULL, 'Bookly Waiting List (Add-on)', 'bookly-addon-waiting-list', 'Do you want to provide clients with the option to join a waiting list for fully-booked time slots? The Bookly Waiting List (Add-on) allows you to enable this feature in your Bookly booking system. If a cancellation occurs, you can quickly fill the open time slot by notifying the clients on the waiting list. Bookly will automatically notify the service provider about the available time slot, along with a list of customers in line. ', 'https://codecanyon.net/item/bookly-waiting-list-addon/20917406', 'https://s3.envato.com/files/437399297/icon80x80%20(13).png', 'https://s3.envato.com/files/437399298/Waiting-List-590x300.jpg', 29.00, 536, 3.67, 3, '2017-11-09 17:58:26', 1, '2023-11-23 05:15:21'),
(16, 20952783, 'plugin', 0, 0, NULL, 'Bookly Packages (Add-on)', 'bookly-addon-packages', 'Do your clients book the same service regularly? Why not offer them a package? With the Bookly Packages (Add-on), you can create deals for a particular service, allowing clients to book their favorite treatment in one package. Offering package deals can help to increase customer loyalty and encourage more sales. You can also set discounts on packages and set a validity period to ensure that customers use their package deals.', 'https://codecanyon.net/item/bookly-packages-addon/20952783', 'https://s3.envato.com/files/437399668/icon80x80%20(14).png', 'https://s3.envato.com/files/437399676/Packages-590x300.jpg', 29.00, 783, 3.00, 6, '2017-11-14 18:45:26', 1, '2023-11-23 05:15:21'),
(17, 21113698, 'plugin', 0, 0, NULL, 'Bookly 2Checkout (Add-on)', 'bookly-addon-2checkout', 'Looking for a safe and convenient way to accept online payments via your Bookly booking form? Bookly 2Checkout (Add-on) allows you to integrate the 2сheckout payment solution – a leading global payment solution that enables companies to accept credit card payments from buyers around the world – into your Bookly PRO booking form. With this payment gateway, you can offer your clients a hassle-free payment experience that’s both secure and reliable.', 'https://codecanyon.net/item/bookly-2checkout-addon/21113698', 'https://s3.envato.com/files/437400829/icon80x80%20(16).png', 'https://s3.envato.com/files/437400830/2checkout-590x300.jpg', 29.00, 40, 0.00, 0, '2017-12-12 10:30:34', 1, '2023-11-23 05:15:21'),
(18, 21113750, 'plugin', 0, 0, NULL, 'Bookly Authorize.Net (Add-on)', 'bookly-addon-authorize-net', 'Simplify the payment process for your customers by integrating a reliable and easy payment method into your website. With the Bookly Authorize.Net (Add-on), you can seamlessly integrate the Authorize.net payment solution into your Bookly PRO booking form. Your clients can pay for their appointments instantly with credit card via one of the most popular payment gateways.', 'https://codecanyon.net/item/bookly-authorizenet-addon/21113750', 'https://s3.envato.com/files/437400619/icon80x80%20(15).png', 'https://s3.envato.com/files/437400621/Authorize.net-590x300.jpg', 29.00, 238, 0.00, 0, '2017-12-12 10:30:24', 1, '2023-11-23 05:15:21'),
(19, 21113860, 'plugin', 0, 0, NULL, 'Bookly Coupons (Add-on)', 'bookly-addon-coupons', 'Would you like to improve customer loyalty, increase your sales, or attract new clients? With the Bookly Coupons (Add-on), you can create and manage promotional codes that customers can apply during checkout in the Bookly booking form. Once a coupon is used, the service price will automatically be reduced, and you’ll receive a record of the discount in the Bookly payment reports.', 'https://codecanyon.net/item/bookly-coupons-addon/21113860', 'https://s3.envato.com/files/437401292/icon80x80%20(17).png', 'https://s3.envato.com/files/437401293/Coupons-590x300.jpg', 39.00, 2312, 4.20, 5, '2017-12-12 10:39:37', 1, '2023-11-23 05:15:21'),
(20, 21113970, 'plugin', 0, 0, NULL, 'Bookly Custom Fields (Add-on)', 'bookly-addon-custom-fields', 'With the Bookly Custom Fields (Add-on), you can add extra fields of different types to the Details step of the Bookly booking form. This feature allows you to gather more specific information from your clients before they complete their booking. The custom fields will be added to the appointment details in the Bookly Calendar, and can be updated if necessary.', 'https://codecanyon.net/item/bookly-custom-fields-addon/21113970', 'https://s3.envato.com/files/437401484/icon80x80%20(18).png', 'https://s3.envato.com/files/437401485/Custom-Fields-590x300.jpg', 49.00, 5996, 4.77, 22, '2017-12-12 10:40:39', 1, '2023-11-23 05:15:21'),
(21, 21114042, 'plugin', 0, 0, NULL, 'Bookly Mollie (Add-on)', 'bookly-addon-mollie', 'Need a secure and easy method of accepting online payments through your Bookly booking form? The Bookly Mollie (Add-on) offers seamless integration with Mollie, one of the leading payment platforms in Europe. Mollie enables companies to accept credit card payments from buyers, providing a convenient and trustworthy payment experience. By integrating Mollie with Bookly PRO, you can offer your customers a reliable method of paying for their bookings directly on your website.', 'https://codecanyon.net/item/bookly-mollie-addon/21114042', 'https://s3.envato.com/files/437401872/icon80x80%20(19).png', 'https://s3.envato.com/files/437401873/Mollie-590x300.jpg', 34.00, 904, 3.67, 3, '2017-12-12 10:43:25', 1, '2023-11-23 05:15:21'),
(22, 21114096, 'plugin', 0, 0, NULL, 'Bookly Payson (Add-on)', 'bookly-addon-payson', 'Bookly Payson (Add-on) allows you to seamlessly integrate the Payson payment solution into your Bookly PRO booking form, providing customers with a convenient and secure payment experience. Payson Checkout is designed to increase the number of completed transactions and supports payment via online bank account or credit card. By integrating Payson with Bookly PRO, you can offer clients a reliable method of paying for their bookings directly on your website.', 'https://codecanyon.net/item/bookly-payson-addon/21114096', 'https://s3.envato.com/files/437888697/icon80x80%20(7).png', 'https://s3.envato.com/files/437888698/Payson-590x300.jpg', 29.00, 16, 0.00, 1, '2017-12-12 10:44:08', 1, '2023-11-23 05:15:21'),
(23, 21114146, 'plugin', 0, 0, NULL, 'Bookly Stripe (Add-on)', 'bookly-addon-stripe', 'Bookly Stripe (Add-on) enables your customers to easily and securely pay for their appointments without being redirected away from the Bookly booking form. By integrating the Stripe payment solution into your Bookly PRO booking form, you can streamline the payment process for your customers, making it quick and convenient to complete transactions.', 'https://codecanyon.net/item/bookly-stripe-addon/21114146', 'https://s3.envato.com/files/437890136/stripe80x80.png', 'https://s3.envato.com/files/437890138/Stripe-590x300.jpg', 39.00, 3856, 4.43, 14, '2017-12-12 10:46:42', 1, '2023-11-23 05:15:21'),
(24, 21344225, 'plugin', 0, 0, NULL, 'Bookly Group Booking (Add-on)', 'bookly-addon-group-booking', 'Bookly Group Booking (Add-on) allows clients to book appointments for multiple people at the same time. The add-on enables you to set the minimum and maximum capacity of the service and accept group bookings for the same appointment slot. In the Bookly booking form, clients can specify the number of people they are booking for, and Bookly ensures that the service provider can accommodate the group.', 'https://codecanyon.net/item/bookly-group-booking-addon/21344225', 'https://s3.envato.com/files/437900981/icon80x80.png', 'https://s3.envato.com/files/437900982/Group-Booking-590x300.jpg', 39.00, 4543, 4.27, 11, '2018-02-01 01:33:45', 1, '2023-11-23 05:15:21'),
(25, 21344290, 'plugin', 0, 0, NULL, 'Bookly Customer Groups (Add-on)', 'bookly-addon-customer-groups', 'The Bookly Customer Groups (Add-on) allows you to easily create and manage customer groups in Bookly, giving you the ability to set specific rules for each group. By categorizing your clients, you can control how their bookings are processed, set customized pricing for their appointments, and determine which services are visible to them in the Bookly booking form.', 'https://codecanyon.net/item/bookly-customer-groups-addon/21344290', 'https://s3.envato.com/files/437901186/icon80x80%20(1).png', 'https://s3.envato.com/files/437901187/Customer-Groups-590x300.jpg', 29.00, 519, 0.00, 1, '2018-02-01 02:03:48', 1, '2023-11-23 05:15:21'),
(26, 21344354, 'plugin', 0, 0, NULL, 'Bookly Files (Add-on)', 'bookly-addon-files', 'File uploading feature simplifies the process of collecting information required for appointments. Bookly Files (Add-on) makes it possible for the clients to attach files related to their visit directly in the Bookly online booking form. All uploaded files will be available for review and update in the booking details. Important: Bookly Files (Add-on) requires Bookly Custom Fields (Add-on) installed and activated.', 'https://codecanyon.net/item/bookly-files-addon/21344354', 'https://s3.envato.com/files/437901282/icon80x80%20(2).png', 'https://s3.envato.com/files/437901283/Files-590x300.jpg', 29.00, 825, 3.25, 8, '2018-02-01 02:07:58', 1, '2023-11-23 05:15:21'),
(27, 21574371, 'plugin', 0, 0, NULL, 'Bookly Compound Services (Add-on)', 'bookly-addon-compound-services', 'With the Bookly Compound Services (Add-on), you can combine existing services with spare time to create a separate complex service that clients can book a complete appointment with multiple services as any regular appointment. Each service included in the compound appointment will be performed by a relevant staff member who will only be reserved for their part of the service.', 'https://codecanyon.net/item/bookly-compound-services-addon/21574371', 'https://s3.envato.com/files/437881226/icon80x80%20(2).png', 'https://s3.envato.com/files/437881235/Compound-Services-590x300.jpg', 29.00, 310, 0.00, 2, '2018-03-13 06:08:47', 1, '2023-11-23 05:15:21'),
(28, 21574466, 'plugin', 0, 0, NULL, 'Bookly Customer Information (Add-on)', 'bookly-addon-customer-information', 'Need specific fields or records on a client profile in Bookly? Bookly Customer Information (Add-on) allows you to create multiple custom fields of different types that will appear on the Details step of the booking form. Once a booking is complete, the custom information entered by the client will be added to their profile in Bookly for future reference.', 'https://codecanyon.net/item/bookly-customer-information-addon/21574466', 'https://s3.envato.com/files/437901407/icon80x80%20(3).png', 'https://s3.envato.com/files/437901408/Customer-Information-590x300.jpg', 29.00, 1507, 4.86, 7, '2018-03-13 06:10:12', 1, '2023-11-23 05:15:21'),
(29, 21574566, 'plugin', 0, 0, NULL, 'Bookly Ratings (Add-on)', 'bookly-addon-ratings', 'Gathering feedback from customers is crucial for businesses to understand areas where they can improve their services. With the Bookly Ratings (Add-on), you can request feedback from clients after each appointment. By encouraging customers to rate the service they received, you can continuously strive to maintain high professional standards and meet their expectations.', 'https://codecanyon.net/item/bookly-ratings-addon/21574566', 'https://s3.envato.com/files/437889900/icon80x80%20(9).png', 'https://s3.envato.com/files/437889901/Ratings-590x300.jpg', 29.00, 397, 0.00, 2, '2018-03-13 06:19:21', 1, '2023-11-23 05:15:21'),
(30, 21841764, 'plugin', 0, 0, NULL, 'Bookly Cart (Add-on)', 'bookly-addon-cart', 'Do you want to boost your online sales even more? With With the Bookly Cart (Add-on), you can prompt your clients to book more appointments on your website. This feature enables clients to add multiple services to their cart and book them all in a single session. This way, clients can schedule additional future appointments with your business in one go. Also, the Cart step in Bookly can be customized to display summary information in a format that suits your needs.', 'https://codecanyon.net/item/bookly-cart-addon/21841764', 'https://s3.envato.com/files/437901471/icon80x80%20(4).png', 'https://s3.envato.com/files/437901472/Cart-590x300.jpg', 29.00, 1844, 5.00, 8, '2018-04-29 02:25:40', 1, '2023-11-23 05:15:21'),
(31, 21841828, 'plugin', 0, 0, NULL, 'Bookly Taxes (Add-on)', 'bookly-addon-taxes', 'Bookly Taxes (Add-on) makes it easy for you to include taxes in your service price. You can define multiple tax rates and apply them to selected services in Bookly. Once you’ve set up the tax rates, Bookly will automatically calculate and add the appropriate tax amount to the service price, resulting in a final price that includes taxes.', 'https://codecanyon.net/item/bookly-taxes-addon/21841828', 'https://s3.envato.com/files/437901541/icon80x80%20(5).png', 'https://s3.envato.com/files/437901542/Taxes-590x300.jpg', 39.00, 699, 3.00, 3, '2018-04-29 02:29:54', 1, '2023-11-23 05:15:21'),
(32, 21841856, 'plugin', 0, 0, NULL, 'Bookly Invoices (Add-on)', 'bookly-addon-invoices', 'Bookly Invoices (Add-on) allows you to automatically generate invoices for your clients upon ordered appointments in Bookly. You can choose to send payment requests when appointments are booked, approved, or received, and set a specific payment period. This feature allows you to quickly and easily collect payment from your clients and improve your cash flow.', 'https://codecanyon.net/item/bookly-invoices-addon/21841856', 'https://s3.envato.com/files/437887599/icon80x80%20(4).png', 'https://s3.envato.com/files/437887600/Invoices-590x300.jpg', 39.00, 1184, 4.50, 4, '2018-04-29 02:30:22', 1, '2023-11-23 05:15:21'),
(33, 21841871, 'plugin', 0, 0, NULL, 'Bookly Google Maps Address (Add-on)', 'bookly-addon-google-maps-address', 'The Bookly Google Maps Address (Add-on) streamlines the process of filling out address details in the booking form by using the Google Maps autocomplete service. Clients can quickly choose an address from the suggestions that appear as they type, minimizing errors and saving time. Address details entered in the Bookly booking form will be automatically saved in the Customers section for future reference.', 'https://codecanyon.net/item/bookly-google-maps-address-addon/21841871', 'https://s3.envato.com/files/437901578/icon80x80%20(6).png', 'https://s3.envato.com/files/437901579/Google-Maps-Address-590x300.jpg', 29.00, 511, 4.67, 3, '2018-04-29 02:45:11', 1, '2023-11-23 05:15:21'),
(34, 22060579, 'plugin', 0, 0, NULL, 'Bookly Advanced Google Calendar (Add-on)', 'bookly-addon-advanced-google-calendar', 'With the Advanced Google Calendar (Add-on), you can enjoy a complete bidirectional synchronization between Bookly Calendar and Google Calendar. This ensures that all appointments can be viewed and managed seamlessly in both calendars. Bookings made through Bookly are automatically synced to your Google Calendar, and any new events, updates, or cancellations made in your Google Calendar are instantly reflected in Bookly.', 'https://codecanyon.net/item/bookly-advanced-google-calendar-addon/22060579', 'https://s3.envato.com/files/437880953/icon80x80.png', 'https://s3.envato.com/files/437880955/Advanced-Google-Calendar-590x300.jpg', 49.00, 3319, 4.40, 15, '2018-06-06 04:37:53', 1, '2023-11-23 05:15:21'),
(35, 22060627, 'plugin', 0, 0, NULL, 'Bookly Customer Cabinet (Add-on)', 'bookly-addon-customer-cabinet', 'Looking for a way to provide your clients with online access to their bookings? Bookly Customer Cabinet (Add-on) allows you to set up a secure, personal customer account on your website where clients can view and manage their appointments and profile information. This includes the ability to reschedule and cancel appointments, view payments, and update personal information.', 'https://codecanyon.net/item/bookly-customer-cabinet-addon/22060627', 'https://s3.envato.com/files/437881780/icon80x80%20(3).png', 'https://s3.envato.com/files/437881782/Customer-Cabinet-590x300.jpg', 29.00, 2135, 4.17, 12, '2018-06-06 04:39:24', 1, '2023-11-23 05:15:21'),
(36, 22060703, 'plugin', 0, 0, NULL, 'Bookly Custom Duration (Add-on)', 'bookly-addon-custom-duration', 'Bookly Custom Duration (Add-on) allows your clients to have more control over their bookings by choosing how long they would like their appointments to last. This feature is especially useful for services that may require more time than the default duration, such as meetings or conferences. When clients book services with flexible duration, they can select the length of their appointment at the beginning of the booking process in the Bookly form, and the price will be calculated accordingly.', 'https://codecanyon.net/item/bookly-custom-duration-addon/22060703', 'https://s3.envato.com/files/437901822/icon80x80%20(7).png', 'https://s3.envato.com/files/437901823/Custom-Duration-590x300.jpg', 29.00, 1581, 4.33, 6, '2018-06-06 04:42:30', 1, '2023-11-23 05:15:21'),
(37, 22060797, 'plugin', 0, 0, NULL, 'Bookly PayUbiz (Add-on)', 'bookly-addon-payu-biz', 'If you want to accept and manage online payments from your clients in India, PayUbiz is a popular payment gateway that can help. With the Bookly PayUbiz (Add-on), you can easily integrate PayUbiz method into your Bookly PRO booking form and offer your customers a convenient way to pay instantly for their appointments.', 'https://codecanyon.net/item/bookly-payubiz-addon/22060797', 'https://s3.envato.com/files/437888863/icon80x80%20(8).png', 'https://s3.envato.com/files/437888864/PayUbiz-590x300.jpg', 29.00, 21, 0.00, 1, '2018-06-06 04:52:32', 1, '2023-11-23 05:15:21'),
(38, 22999600, 'plugin', 0, 0, NULL, 'Bookly Tasks (Add-on) ', 'bookly-addon-tasks', 'Bookly Tasks (Add-on) offers a solution for businesses that provide services without requiring clients to select a specific day and time. With this feature, clients and administrators can create and manage a list of tasks or unscheduled appointments within the Bookly admin area. For instance, employees can set a task to arrange a meeting with a specific client, and once it’s done, they can schedule the date and time, which will automatically convert the task into an appointment.', 'https://codecanyon.net/item/bookly-tasks-addon/22999600', 'https://s3.envato.com/files/437890581/icon80x80%20(10).png', 'https://s3.envato.com/files/437890582/Tasks-590x300.jpg', 29.00, 503, 0.00, 1, '2018-12-12 00:17:51', 1, '2023-11-23 05:15:21'),
(39, 22999632, 'plugin', 0, 0, NULL, 'Bookly Collaborative Services (Add-on)', 'bookly-addon-collaborative-services', 'Do you offer services that involve two or more staff members working together or shared resources? With the Bookly Collaborative Services (Add-on), you can create and sell complex services that involve multiple employees and resources, while your clients easily book a single service they need. Whether your employees work together to provide a service or need to use shared resources in an appointment, Bookly will make sure everything is properly scheduled.', 'https://codecanyon.net/item/bookly-collaborative-services-addon/22999632', 'https://s3.envato.com/files/437881105/icon80x80%20(1).png', 'https://s3.envato.com/files/437881106/Collaborative-Services-590x300.jpg', 39.00, 826, 4.50, 4, '2018-12-12 00:22:29', 1, '2023-11-23 05:15:21'),
(40, 23324001, 'plugin', 0, 0, NULL, 'Bookly Custom Statuses (Add-on)', 'bookly-addon-custom-statuses', 'If you need to manage your online bookings more efficiently and want to assign custom labels to your Bookly appointments, you can use Bookly Custom Statuses (Add-on). When editing an appointment, you can select a custom status from the list you created, allowing you to add more specific information to the appointment. You can also set up email notifications that correspond to each custom appointment status.', 'https://codecanyon.net/item/bookly-custom-statuses-addon/23324001', 'https://s3.envato.com/files/437902454/icon80x80%20(8).png', 'https://s3.envato.com/files/437902455/Custom-Statuses-590x300.jpg', 29.00, 568, 5.00, 3, '2019-02-18 20:10:01', 1, '2023-11-23 05:15:21'),
(41, 23350952, 'plugin', 0, 0, NULL, 'Bookly Outlook Calendar (Add-on)', 'bookly-addon-outlook-calendar', 'Bookly Outlook Calendar (Add-on) enables a complete bidirectional synchronization between Bookly Calendar and Outlook Calendar, ensuring seamless management of appointments across both platforms. With this add-on, appointments made through Bookly will be automatically added to the linked Outlook Calendar, while updates, cancellations, and new events from Outlook Calendar will be immediately reflected in Bookly.', 'https://codecanyon.net/item/bookly-outlook-calendar-addon/23350952', 'https://s3.envato.com/files/437888057/icon80x80%20(5).png', 'https://s3.envato.com/files/437888058/Outlook-Calendar-590x300.jpg', 49.00, 1044, 3.00, 4, '2019-02-21 23:33:34', 1, '2023-11-23 05:15:21'),
(42, 24219988, 'plugin', 0, 0, NULL, 'Bookly PayPal Checkout (Add-on)', 'bookly-addon-paypal-checkout', 'Bookly PayPal Checkout (Add-on) provides you with the ability to accept secure online payments at the time of booking through one of the most popular payment gateways. With this add-on, you can seamlessly integrate the PayPal payment option into your Bookly PRO booking form. By offering this convenient payment option to your customers, they can easily purchase your services with just a few clicks.', 'https://codecanyon.net/item/bookly-paypal-checkout-addon/24219988', 'https://s3.envato.com/files/437888402/icon80x80%20(6).png', 'https://s3.envato.com/files/437888403/PayPal-Checkout-590x300.jpg', 29.00, 642, 0.00, 0, '2019-07-30 18:31:46', 1, '2023-11-23 05:15:21'),
(43, 29936495, 'plugin', 0, 0, NULL, 'Bookly Discounts (Add-on)', 'bookly-addon-discounts', 'Providing discounts is a proven method to attract customers and boost sales. Bookly Discounts (Add-on) enables you to create automatic conditional discounts based on various factors like the number of customers or services booked. Once the booking details meet the conditions you set, the discounted price will be automatically applied, and customers will see the reduced price instantly. ', 'https://codecanyon.net/item/bookly-discounts-addon/29936495', 'https://s3.envato.com/files/437902644/icon80x80%20(9).png', 'https://s3.envato.com/files/437902653/Discounts-590x300.jpg', 29.00, 324, 0.00, 0, '2021-01-05 01:18:25', 1, '2023-11-23 05:15:21'),
(44, 34925755, 'plugin', 0, 0, NULL, 'Bookly Mailchimp (Add-on)', 'bookly-addon-mailchimp', 'Bookly Mailchimp (Add-on) offers a seamless integration between your Bookly booking system and your Mailchimp account, one of the most popular email marketing platforms available. With this integration, you can easily automate your email campaigns and build strong relationships with your customers. New customers in Bookly will be automatically added as new subscribers to your Mailchimp mailing list, allowing you to easily deliver targeted messages that drive sales and engagement.', 'https://codecanyon.net/item/bookly-mailchimp-addon/34925755', 'https://s3.envato.com/files/437902744/icon80x80%20(10).png', 'https://s3.envato.com/files/437902745/Mailchimp-590x300.jpg', 29.00, 125, 0.00, 1, '2021-11-24 03:10:56', 1, '2023-11-23 05:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_staff`
--

CREATE TABLE `wp_bookly_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `wp_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `working_time_limit` int(10) UNSIGNED DEFAULT NULL,
  `visibility` enum('public','private','archive') NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT 9999,
  `google_data` text DEFAULT NULL,
  `outlook_data` text DEFAULT NULL,
  `zoom_authentication` enum('default','oauth') NOT NULL DEFAULT 'default',
  `zoom_oauth_token` text DEFAULT NULL,
  `icalendar` tinyint(1) NOT NULL DEFAULT 0,
  `icalendar_token` varchar(255) DEFAULT NULL,
  `icalendar_days_before` int(11) NOT NULL DEFAULT 365,
  `icalendar_days_after` int(11) NOT NULL DEFAULT 365,
  `color` varchar(255) NOT NULL DEFAULT '#dddddd',
  `gateways` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_staff`
--

INSERT INTO `wp_bookly_staff` (`id`, `category_id`, `wp_user_id`, `attachment_id`, `full_name`, `email`, `phone`, `time_zone`, `info`, `working_time_limit`, `visibility`, `position`, `google_data`, `outlook_data`, `zoom_authentication`, `zoom_oauth_token`, `icalendar`, `icalendar_token`, `icalendar_days_before`, `icalendar_days_after`, `color`, `gateways`) VALUES
(2, NULL, NULL, NULL, 'Blue Bird Employee', NULL, NULL, NULL, NULL, NULL, 'public', 1, NULL, NULL, 'default', NULL, 0, '44b4389f45d65af46e727fde6b857391', 365, 365, '#43EB24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_staff_schedule_items`
--

CREATE TABLE `wp_bookly_staff_schedule_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `day_index` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_staff_schedule_items`
--

INSERT INTO `wp_bookly_staff_schedule_items` (`id`, `staff_id`, `location_id`, `day_index`, `start_time`, `end_time`) VALUES
(8, 2, NULL, 1, '08:00:00', '18:00:00'),
(9, 2, NULL, 2, '08:00:00', '18:00:00'),
(10, 2, NULL, 3, '08:00:00', '18:00:00'),
(11, 2, NULL, 4, '08:00:00', '18:00:00'),
(12, 2, NULL, 5, '08:00:00', '18:00:00'),
(13, 2, NULL, 6, '08:00:00', '18:00:00'),
(14, 2, NULL, 7, '08:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_staff_services`
--

CREATE TABLE `wp_bookly_staff_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deposit` varchar(100) NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT 1,
  `capacity_max` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bookly_staff_services`
--

INSERT INTO `wp_bookly_staff_services` (`id`, `staff_id`, `service_id`, `location_id`, `price`, `deposit`, `capacity_min`, `capacity_max`) VALUES
(14, 2, 8, NULL, 185.00, '100%', 1, 1),
(15, 2, 10, NULL, 0.00, '100%', 1, 1),
(16, 2, 11, NULL, 135.00, '100%', 1, 1),
(17, 2, 12, NULL, 50.00, '100%', 1, 1),
(18, 2, 13, NULL, 50.00, '100%', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_stats`
--

CREATE TABLE `wp_bookly_stats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookly_sub_services`
--

CREATE TABLE `wp_bookly_sub_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('service','spare_time') NOT NULL DEFAULT 'service',
  `service_id` int(10) UNSIGNED NOT NULL,
  `sub_service_id` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cfs_sessions`
--

CREATE TABLE `wp_cfs_sessions` (
  `id` varchar(32) NOT NULL,
  `data` text DEFAULT NULL,
  `expires` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_cfs_sessions`
--

INSERT INTO `wp_cfs_sessions` (`id`, `data`, `expires`) VALUES
('098f7e0fc3fa8832ce5fb2789f453a2b', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837634'),
('0ef12d2445263516bf020c02264542ca', 'a:7:{s:7:\"post_id\";i:49;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700826740'),
('12acbdd11de2961dad2eae54eb5bfd20', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833901'),
('1627d6f2f2090794d9c68e294b6ef419', 'a:7:{s:7:\"post_id\";i:246;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700829033'),
('18409dfcaaa1d14ccd4d091579f1d55a', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832290'),
('1eeebf3dda1abcc52c701507d25d6636', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836953'),
('240109d15314ae65d9d189948582dfc0', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832270'),
('319fab5430703df760bcf23ff29f132a', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836314'),
('3260a97084040d32addc84aeac885eab', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834063'),
('338946100bc5b2566afb8ab5785d9052', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700841615'),
('3436cbb4ebc62b55f8f985807ada0d0a', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836923'),
('40c1e141307a6e5fd36eb1cbf752fd6c', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834456'),
('46988e614cbdbd635bed098ba0068358', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833810'),
('4d55730b5e39f2215cc7409c01bc7376', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832178'),
('4e274a8b604370c67c5d39409bde69c7', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700835028'),
('51241b9dc3d52eab94ffc8c05f56b17a', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700840433'),
('5a0bfc152fe9938fe00ec8672a0c1657', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700840474'),
('6184fb7b081fc5865eb26af1d9ccdbe2', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837403'),
('6871735f2bd1043c7ce43a2e2dcd27d4', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700842566'),
('690f4eae80694f0bb370d94165a4efdc', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700842567'),
('691c5f63623776f7cdb63519be74817c', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832326'),
('6a701e485136ea0cac61ac1abf0743eb', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836521'),
('6c52f697c57de6736567a2860ed8b98a', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834001'),
('6c6e2e23de179217eb236e0103e3eeca', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834813'),
('6f3c83d4dc7a19977f20e1a6c9769903', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837815'),
('71f0373c729c73a2700c152599502836', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837244'),
('776cb244bb3e9b80e7e9099192f63b47', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834932'),
('7bb0e2f7ec19828cd5f4cd11c8138a1e', 'a:7:{s:7:\"post_id\";i:204;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:2:{i:0;i:97;i:1;i:226;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700829639'),
('7e964573a8e35e1b62f0f073a1490629', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832551'),
('864a765b3dfec7e57de177b1876e8bfa', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700841616'),
('880c61491c460ca324ac22882cb5c951', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832032'),
('8a7b8c3cb49371c6a237e4575d81546f', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834580'),
('8b0e89aad2942e826c4edf2c0022d0e6', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833982'),
('8ef57f31a3ab1356d435620ee104de86', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700835519'),
('98c274bfee8f18a40f9b25def28d17a9', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837761'),
('9c6f8f40f45a154bbafdaaf422379e24', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837626'),
('9e5ea4df5cd88fc502e7d21cde6def40', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833535'),
('9f6d08a5247aed4a5e147a715636c546', 'a:7:{s:7:\"post_id\";i:246;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700828977'),
('a512a24ec106d55fbfecb71444c0503d', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837839'),
('acc216cff5dfbf52de4fdacb85412505', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833275'),
('ad99c89d503718ac477f6bb671a5a619', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834742'),
('b63e550f4d78dc413d05b6b67d70794d', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700835398'),
('b8e8f010f1c3981bb2a5cae171a58848', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836103'),
('b9037f78d08d10dd7dd1ce4714b592f0', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700835918'),
('bb998b998ff46ed878cb1bb8f773ff1a', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832099'),
('bc2b685d822f019df4efb1f90a497c2f', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700833305'),
('bfd20497d329de7823bba615ba9d54da', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837528'),
('c3b50d432670516c5862a1a565b45ad7', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700840474'),
('c62c78d77ce4edefd8de2ff8378fa727', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834666'),
('c80b00f6e361b2b9217ba2e703ba56c6', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834842'),
('cf89b3642396860373c3c2679c438536', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700842569'),
('d12b923d842990da71aca2accdd03c47', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837530'),
('d216aefc15763f5658d1c749c2c5a3b3', 'a:7:{s:7:\"post_id\";i:65;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700842575'),
('d438e0980f5e5254dc4c2451c5a68d34', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700840488'),
('e02b967a5b6c785d5e0e02b127cf2148', 'a:7:{s:7:\"post_id\";i:51;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700826674'),
('e30717b4dc194da6f5ed10f63c93579b', 'a:7:{s:7:\"post_id\";i:204;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:2:{i:0;i:97;i:1;i:226;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700830557'),
('e3173b4e0e0ba68600b5b61539c54a59', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836405'),
('e77ea2e8db46a307a2a2f51ce4196061', 'a:7:{s:7:\"post_id\";i:204;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:2:{i:0;i:97;i:1;i:226;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700829616'),
('ecb9d084e40fc44c870873dc2b2c390a', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700836965'),
('edc547e921aa4f4a6d4c8165e7cdeefe', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700834786'),
('f17c7d3b7d8bbe47747dee391cd83007', 'a:7:{s:7:\"post_id\";i:49;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:97;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700826733'),
('f4940af975579462002fcfcd277db0f9', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700837491'),
('fb4793bdb8d7aa14644a63b0e3f135fb', 'a:7:{s:7:\"post_id\";i:10;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:118;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1700832670');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cfs_values`
--

CREATE TABLE `wp_cfs_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED DEFAULT NULL,
  `meta_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `base_field_id` int(10) UNSIGNED DEFAULT 0,
  `hierarchy` text DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT 0,
  `weight` int(10) UNSIGNED DEFAULT 0,
  `sub_weight` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_cfs_values`
--

INSERT INTO `wp_cfs_values` (`id`, `field_id`, `meta_id`, `post_id`, `base_field_id`, `hierarchy`, `depth`, `weight`, `sub_weight`) VALUES
(443, 6, 1595, 5, 5, '5:0:6', 1, 0, 0),
(444, 7, 1596, 5, 5, '5:0:7', 1, 0, 0),
(445, 8, 1597, 5, 5, '5:0:8', 1, 0, 0),
(446, 6, 1598, 5, 5, '5:1:6', 1, 1, 0),
(447, 7, 1599, 5, 5, '5:1:7', 1, 1, 0),
(448, 8, 1600, 5, 5, '5:1:8', 1, 1, 0),
(449, 6, 1601, 5, 5, '5:2:6', 1, 2, 0),
(450, 7, 1602, 5, 5, '5:2:7', 1, 2, 0),
(451, 8, 1603, 5, 5, '5:2:8', 1, 2, 0),
(452, 6, 1604, 5, 5, '5:3:6', 1, 3, 0),
(453, 7, 1605, 5, 5, '5:3:7', 1, 3, 0),
(454, 8, 1606, 5, 5, '5:3:8', 1, 3, 0),
(473, 16, 1651, 13, 15, '15:0:16', 1, 0, 0),
(474, 17, 1652, 13, 15, '15:0:17', 1, 0, 0),
(475, 18, 1653, 13, 15, '15:0:18', 1, 0, 0),
(476, 16, 1654, 13, 15, '15:1:16', 1, 1, 0),
(477, 17, 1655, 13, 15, '15:1:17', 1, 1, 0),
(478, 18, 1656, 13, 15, '15:1:18', 1, 1, 0),
(479, 16, 1657, 13, 15, '15:2:16', 1, 2, 0),
(480, 17, 1658, 13, 15, '15:2:17', 1, 2, 0),
(481, 18, 1659, 13, 15, '15:2:18', 1, 2, 0),
(482, 16, 1660, 13, 15, '15:3:16', 1, 3, 0),
(483, 17, 1661, 13, 15, '15:3:17', 1, 3, 0),
(484, 18, 1662, 13, 15, '15:3:18', 1, 3, 0),
(485, 16, 1663, 13, 15, '15:4:16', 1, 4, 0),
(486, 17, 1664, 13, 15, '15:4:17', 1, 4, 0),
(487, 18, 1665, 13, 15, '15:4:18', 1, 4, 0),
(488, 16, 1666, 13, 15, '15:5:16', 1, 5, 0),
(489, 17, 1667, 13, 15, '15:5:17', 1, 5, 0),
(490, 18, 1668, 13, 15, '15:5:18', 1, 5, 0),
(491, 20, 1669, 13, 19, '19:0:20', 1, 0, 0),
(492, 21, 1670, 13, 19, '19:0:21', 1, 0, 0),
(493, 22, 1671, 13, 19, '19:0:22', 1, 0, 0),
(494, 20, 1672, 13, 19, '19:1:20', 1, 1, 0),
(495, 21, 1673, 13, 19, '19:1:21', 1, 1, 0),
(496, 22, 1674, 13, 19, '19:1:22', 1, 1, 0),
(497, 20, 1675, 13, 19, '19:2:20', 1, 2, 0),
(498, 21, 1676, 13, 19, '19:2:21', 1, 2, 0),
(499, 22, 1677, 13, 19, '19:2:22', 1, 2, 0),
(500, 20, 1678, 13, 19, '19:3:20', 1, 3, 0),
(501, 21, 1679, 13, 19, '19:3:21', 1, 3, 0),
(502, 22, 1680, 13, 19, '19:3:22', 1, 3, 0),
(575, 28, 1842, 214, 0, '', 0, 0, 0),
(576, 29, 1843, 214, 0, '', 0, 0, 0),
(577, 24, 1844, 214, 23, '23:0:24', 1, 0, 0),
(578, 25, 1845, 214, 23, '23:0:25', 1, 0, 0),
(579, 26, 1846, 214, 23, '23:0:26', 1, 0, 0),
(580, 27, 1847, 214, 23, '23:0:27', 1, 0, 0),
(581, 24, 1848, 214, 23, '23:1:24', 1, 1, 0),
(582, 25, 1849, 214, 23, '23:1:25', 1, 1, 0),
(583, 26, 1850, 214, 23, '23:1:26', 1, 1, 0),
(584, 27, 1851, 214, 23, '23:1:27', 1, 1, 0),
(585, 24, 1852, 214, 23, '23:2:24', 1, 2, 0),
(586, 25, 1853, 214, 23, '23:2:25', 1, 2, 0),
(587, 26, 1854, 214, 23, '23:2:26', 1, 2, 0),
(588, 27, 1855, 214, 23, '23:2:27', 1, 2, 0),
(589, 24, 1856, 214, 23, '23:3:24', 1, 3, 0),
(590, 25, 1857, 214, 23, '23:3:25', 1, 3, 0),
(591, 26, 1858, 214, 23, '23:3:26', 1, 3, 0),
(592, 27, 1859, 214, 23, '23:3:27', 1, 3, 0),
(593, 28, 1860, 221, 0, '', 0, 0, 0),
(594, 29, 1861, 221, 0, '', 0, 0, 0),
(595, 24, 1862, 221, 23, '23:0:24', 1, 0, 0),
(596, 25, 1863, 221, 23, '23:0:25', 1, 0, 0),
(597, 26, 1864, 221, 23, '23:0:26', 1, 0, 0),
(598, 27, 1865, 221, 23, '23:0:27', 1, 0, 0),
(599, 24, 1866, 221, 23, '23:1:24', 1, 1, 0),
(600, 25, 1867, 221, 23, '23:1:25', 1, 1, 0),
(601, 26, 1868, 221, 23, '23:1:26', 1, 1, 0),
(602, 27, 1869, 221, 23, '23:1:27', 1, 1, 0),
(603, 24, 1870, 221, 23, '23:2:24', 1, 2, 0),
(604, 25, 1871, 221, 23, '23:2:25', 1, 2, 0),
(605, 26, 1872, 221, 23, '23:2:26', 1, 2, 0),
(606, 27, 1873, 221, 23, '23:2:27', 1, 2, 0),
(607, 24, 1874, 221, 23, '23:3:24', 1, 3, 0),
(608, 25, 1875, 221, 23, '23:3:25', 1, 3, 0),
(609, 26, 1876, 221, 23, '23:3:26', 1, 3, 0),
(610, 27, 1877, 221, 23, '23:3:27', 1, 3, 0),
(649, 10, 2022, 49, 9, '9:0:10', 1, 0, 0),
(650, 11, 2023, 49, 9, '9:0:11', 1, 0, 0),
(651, 10, 2024, 49, 9, '9:1:10', 1, 1, 0),
(652, 11, 2025, 49, 9, '9:1:11', 1, 1, 0),
(653, 10, 2026, 49, 9, '9:2:10', 1, 2, 0),
(654, 11, 2027, 49, 9, '9:2:11', 1, 2, 0),
(663, 32, 2050, 204, 30, '30:0:32', 1, 0, 0),
(664, 31, 2051, 204, 30, '30:0:31', 1, 0, 0),
(665, 32, 2052, 204, 30, '30:1:32', 1, 1, 0),
(666, 31, 2053, 204, 30, '30:1:31', 1, 1, 0),
(667, 32, 2054, 204, 30, '30:2:32', 1, 2, 0),
(668, 31, 2055, 204, 30, '30:2:31', 1, 2, 0),
(669, 32, 2056, 204, 30, '30:3:32', 1, 3, 0),
(670, 31, 2057, 204, 30, '30:3:31', 1, 3, 0),
(1005, 13, 2974, 10, 12, '12:0:13', 1, 0, 0),
(1006, 14, 2975, 10, 12, '12:0:14', 1, 0, 0),
(1007, 33, 2976, 10, 12, '12:0:33', 1, 0, 0),
(1008, 13, 2977, 10, 12, '12:1:13', 1, 1, 0),
(1009, 14, 2978, 10, 12, '12:1:14', 1, 1, 0),
(1010, 33, 2979, 10, 12, '12:1:33', 1, 1, 0),
(1011, 35, 2980, 10, 34, '34:1:35', 1, 1, 0),
(1012, 37, 2981, 10, 34, '34:1:37', 1, 1, 0),
(1013, 36, 2982, 10, 34, '34:1:36', 1, 1, 0),
(1014, 35, 2983, 10, 34, '34:2:35', 1, 2, 0),
(1015, 37, 2984, 10, 34, '34:2:37', 1, 2, 0),
(1016, 36, 2985, 10, 34, '34:2:36', 1, 2, 0),
(1017, 35, 2986, 10, 34, '34:3:35', 1, 3, 0),
(1018, 37, 2987, 10, 34, '34:3:37', 1, 3, 0),
(1019, 36, 2988, 10, 34, '34:3:36', 1, 3, 0),
(1020, 35, 2989, 10, 34, '34:4:35', 1, 4, 0),
(1021, 37, 2990, 10, 34, '34:4:37', 1, 4, 0),
(1022, 36, 2991, 10, 34, '34:4:36', 1, 4, 0),
(1023, 39, 2992, 10, 38, '38:0:39', 1, 0, 0),
(1024, 40, 2993, 10, 38, '38:0:40', 1, 0, 0),
(1025, 41, 2994, 10, 38, '38:0:41', 1, 0, 0),
(1026, 39, 2995, 10, 38, '38:1:39', 1, 1, 0),
(1027, 40, 2996, 10, 38, '38:1:40', 1, 1, 0),
(1028, 41, 2997, 10, 38, '38:1:41', 1, 1, 0),
(1029, 39, 2998, 10, 38, '38:2:39', 1, 2, 0),
(1030, 40, 2999, 10, 38, '38:2:40', 1, 2, 0),
(1031, 41, 3000, 10, 38, '38:2:41', 1, 2, 0),
(1032, 39, 3001, 10, 38, '38:3:39', 1, 3, 0),
(1033, 40, 3002, 10, 38, '38:3:40', 1, 3, 0),
(1034, 41, 3003, 10, 38, '38:3:41', 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-11-14 05:21:22', '2023-11-14 05:21:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_grp_google_place`
--

CREATE TABLE `wp_grp_google_place` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_grp_google_review`
--

CREATE TABLE `wp_grp_google_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_place_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `language` varchar(10) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_url` varchar(255) DEFAULT NULL,
  `profile_photo_url` varchar(255) DEFAULT NULL,
  `hide` varchar(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_grp_google_stats`
--

CREATE TABLE `wp_grp_google_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_place_id` bigint(20) UNSIGNED NOT NULL,
  `time` int(11) NOT NULL,
  `rating` double DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/star-lounge', 'yes'),
(2, 'home', 'http://localhost/star-lounge', 'yes'),
(3, 'blogname', 'Star Lounge', 'yes'),
(4, 'blogdescription', 'Perfectly Light in Every Bite', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@webbersunited.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:178:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"ourrecipe/?$\";s:29:\"index.php?post_type=ourrecipe\";s:42:\"ourrecipe/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=ourrecipe&feed=$matches[1]\";s:37:\"ourrecipe/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=ourrecipe&feed=$matches[1]\";s:29:\"ourrecipe/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=ourrecipe&paged=$matches[1]\";s:7:\"menu/?$\";s:24:\"index.php?post_type=menu\";s:37:\"menu/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=menu&feed=$matches[1]\";s:32:\"menu/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=menu&feed=$matches[1]\";s:24:\"menu/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=menu&paged=$matches[1]\";s:11:\"ourevent/?$\";s:28:\"index.php?post_type=ourevent\";s:41:\"ourevent/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=ourevent&feed=$matches[1]\";s:36:\"ourevent/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=ourevent&feed=$matches[1]\";s:28:\"ourevent/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=ourevent&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"cfs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"cfs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"cfs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cfs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cfs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"cfs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"cfs/([^/]+)/embed/?$\";s:51:\"index.php?post_type=cfs&name=$matches[1]&embed=true\";s:24:\"cfs/([^/]+)/trackback/?$\";s:45:\"index.php?post_type=cfs&name=$matches[1]&tb=1\";s:32:\"cfs/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?post_type=cfs&name=$matches[1]&paged=$matches[2]\";s:39:\"cfs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?post_type=cfs&name=$matches[1]&cpage=$matches[2]\";s:28:\"cfs/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?post_type=cfs&name=$matches[1]&page=$matches[2]\";s:20:\"cfs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"cfs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"cfs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cfs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cfs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"cfs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"ourrecipe/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"ourrecipe/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"ourrecipe/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"ourrecipe/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"ourrecipe/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"ourrecipe/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"ourrecipe/([^/]+)/embed/?$\";s:42:\"index.php?ourrecipe=$matches[1]&embed=true\";s:30:\"ourrecipe/([^/]+)/trackback/?$\";s:36:\"index.php?ourrecipe=$matches[1]&tb=1\";s:50:\"ourrecipe/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?ourrecipe=$matches[1]&feed=$matches[2]\";s:45:\"ourrecipe/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?ourrecipe=$matches[1]&feed=$matches[2]\";s:38:\"ourrecipe/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?ourrecipe=$matches[1]&paged=$matches[2]\";s:45:\"ourrecipe/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?ourrecipe=$matches[1]&cpage=$matches[2]\";s:34:\"ourrecipe/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?ourrecipe=$matches[1]&page=$matches[2]\";s:26:\"ourrecipe/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"ourrecipe/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"ourrecipe/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"ourrecipe/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"ourrecipe/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"ourrecipe/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"menu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"menu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"menu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"menu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"menu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"menu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"menu/([^/]+)/embed/?$\";s:37:\"index.php?menu=$matches[1]&embed=true\";s:25:\"menu/([^/]+)/trackback/?$\";s:31:\"index.php?menu=$matches[1]&tb=1\";s:45:\"menu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?menu=$matches[1]&feed=$matches[2]\";s:40:\"menu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?menu=$matches[1]&feed=$matches[2]\";s:33:\"menu/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?menu=$matches[1]&paged=$matches[2]\";s:40:\"menu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?menu=$matches[1]&cpage=$matches[2]\";s:29:\"menu/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?menu=$matches[1]&page=$matches[2]\";s:21:\"menu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"menu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"menu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"menu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"menu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"menu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"ourevent/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"ourevent/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"ourevent/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"ourevent/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"ourevent/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"ourevent/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"ourevent/([^/]+)/embed/?$\";s:41:\"index.php?ourevent=$matches[1]&embed=true\";s:29:\"ourevent/([^/]+)/trackback/?$\";s:35:\"index.php?ourevent=$matches[1]&tb=1\";s:49:\"ourevent/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?ourevent=$matches[1]&feed=$matches[2]\";s:44:\"ourevent/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?ourevent=$matches[1]&feed=$matches[2]\";s:37:\"ourevent/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?ourevent=$matches[1]&paged=$matches[2]\";s:44:\"ourevent/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?ourevent=$matches[1]&cpage=$matches[2]\";s:33:\"ourevent/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?ourevent=$matches[1]&page=$matches[2]\";s:25:\"ourevent/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"ourevent/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"ourevent/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"ourevent/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"ourevent/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"ourevent/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:26:\"custom-field-suite/cfs.php\";i:4;s:58:\"date-time-picker-for-contact-form-7/cf7-datetimepicker.php\";i:5;s:43:\"go-live-update-urls/go-live-update-urls.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:88:\"/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/page-home.php\";i:1;s:93:\"/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/css/responsive.css\";i:2;s:84:\"/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/style.css\";i:4;s:91:\"/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/page-service.php\";i:5;s:88:\"/home/webbersunited/public_html/cms/blue-birds/wp-content/themes/bluebirds/css/style.css\";}', 'no'),
(40, 'template', 'starlounge', 'yes'),
(41, 'stylesheet', 'starlounge', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:51:\"bookly-responsive-appointment-booking-tool/main.php\";a:2:{i:0;s:17:\"Bookly\\Lib\\Plugin\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '235', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '57', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1715491282', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:13:{i:1700832084;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1700832299;a:1:{s:21:\"bookly_hourly_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1700846484;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700846502;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700863482;a:1:{s:33:\"updraftplus_clean_temporary_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700886299;a:1:{s:20:\"bookly_daily_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700889683;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700889701;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700889702;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700889704;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1701166095;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1701235283;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1699939386;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(157, 'current_theme', 'Star Lounge', 'yes'),
(158, 'theme_mods_bluebirds', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1700716726;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(164, 'recently_activated', 'a:2:{s:29:\"widget-google-reviews/grw.php\";i:1700718500;s:51:\"bookly-responsive-appointment-booking-tool/main.php\";i:1700718484;}', 'yes'),
(166, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(207, 'acf_version', '6.2.3', 'yes'),
(210, 'cfs_next_field_id', '42', 'yes'),
(211, 'cfs_version', '2.6.4', 'yes'),
(289, 'updraftplus_version', '1.23.12', 'yes'),
(290, 'updraftplus_tour_cancelled_on', 'intro', 'yes'),
(291, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-5ed88e1c551741e8c447821559f5b1bd\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(292, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-21f3581f45530a40fc0634f160d73313\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'yes'),
(293, 'updraft_s3', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-c139ed97aabff930beb2fbb4f7a7b829\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:3:\"rrs\";s:0:\"\";s:22:\"server_side_encryption\";s:0:\"\";}}}', 'yes'),
(294, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-8076b8443d357d5e50fe7627b2c61fc1\";a:5:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";N;}}}', 'yes'),
(295, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-5f4a59b2f4cfdb60ee3b3e04d7cc4c46\";a:3:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";}}}', 'yes'),
(296, 'updraft_onedrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-abd0a9596b1b241dd5b6f619c3e13a5e\";a:0:{}}}', 'yes'),
(297, 'updraft_ftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-cd7ac34db0e3ea77d836d4728f4cfcb3\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";i:1;}}}', 'yes'),
(298, 'updraft_azure', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-bad4e857a649750c12dd649c37cfdb35\";a:0:{}}}', 'yes'),
(299, 'updraft_sftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-749de7186620a668085a806b87b49a42\";a:0:{}}}', 'yes'),
(300, 'updraft_googlecloud', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-0f31a0ea530b6e44d6e731cca019277e\";a:0:{}}}', 'yes'),
(301, 'updraft_backblaze', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-e65e20449faa7e653a3a29bf0295023f\";a:0:{}}}', 'yes'),
(302, 'updraft_webdav', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a6b45648bfc14e6fe3d65a7e37bcb8b6\";a:0:{}}}', 'yes'),
(303, 'updraft_s3generic', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-bab43a859b59ab744fedbc7400fde5ab\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}', 'yes'),
(304, 'updraft_pcloud', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-fedd65015a4ebe01284838914da251d7\";a:0:{}}}', 'yes'),
(305, 'updraft_openstack', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-1680bccef4c824a8083e418f2d06f855\";a:6:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";s:0:\"\";}}}', 'yes'),
(306, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-7f79ae6e2022bde885685090e0ab1746\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(307, 'updraftplus-addons_siteid', 'a523b7e1dcf6ecd05ddba6dce6f8987a', 'no'),
(308, 'updraft_lastmessage', 'The backup succeeded and is now complete (Nov 14 10:05:12)', 'yes'),
(309, 'updraftplus_unlocked_fd', '1', 'no'),
(310, 'updraftplus_last_lock_time_fd', '2023-11-14 10:05:01', 'no'),
(311, 'updraftplus_semaphore_fd', '0', 'no'),
(312, 'updraft_last_scheduled_fd', '1699956301', 'yes'),
(314, 'updraft_backup_history', 'a:1:{i:1699956301;a:19:{s:7:\"plugins\";a:1:{i:0;s:58:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-plugins.zip\";}s:12:\"plugins-size\";i:12397304;s:6:\"themes\";a:1:{i:0;s:57:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-themes.zip\";}s:11:\"themes-size\";i:50362915;s:7:\"uploads\";a:1:{i:0;s:58:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-uploads.zip\";}s:12:\"uploads-size\";i:5876407;s:6:\"others\";a:1:{i:0;s:57:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:52:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-db.gz\";s:7:\"db-size\";i:220696;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"f3dfda051c2dbe7c7e9e9a5dca560697aeb20e7f\";s:7:\"themes0\";s:40:\"f78318a16d12c75bd376315d2d77e9f21322528b\";s:8:\"uploads0\";s:40:\"c07994271b2b51006a94fe5cca64acbd4619e45c\";s:7:\"others0\";s:40:\"ea573ea64b7cefa851b978a6baf283e29caf7e29\";s:3:\"db0\";s:40:\"a9b9b17a4e797bdb95589f2cec5e2f7611f51562\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"eada94f60448fc8ccc8761b21fc9fd88dcce150a16ed8d624da08fd5de38c166\";s:7:\"themes0\";s:64:\"1b482e9d30f57f0b40bfb1d1d3e7e2587ce60c0aac94df11a1407a18ce8cf7be\";s:8:\"uploads0\";s:64:\"b5b2a0968693c91c34480ff3fbb202b2e3cbe05bb1fa4380a441a6162d6ba69a\";s:7:\"others0\";s:64:\"93e1f1b7a1d31bc091be9e8197e1e48dd5cbc843e50b6af00020c6859aa1c97c\";s:3:\"db0\";s:64:\"22c8be47aa8286fee48d265da2b04a455bdedba2730eb428af04fbea4c19a804\";}}s:5:\"nonce\";s:12:\"fefaff70d5f0\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:1;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1699956301;s:6:\"themes\";i:1699956307;s:7:\"uploads\";i:1699956311;s:6:\"others\";i:1699956311;}s:18:\"created_by_version\";s:7:\"1.23.12\";s:21:\"last_saved_by_version\";s:7:\"1.23.12\";s:12:\"is_multisite\";b:0;}}', 'no'),
(315, 'updraft_last_backup', 'a:6:{s:26:\"nonincremental_backup_time\";i:1699956301;s:11:\"backup_time\";i:1699956301;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:58:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-plugins.zip\";}s:12:\"plugins-size\";i:12397304;s:6:\"themes\";a:1:{i:0;s:57:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-themes.zip\";}s:11:\"themes-size\";i:50362915;s:7:\"uploads\";a:1:{i:0;s:58:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-uploads.zip\";}s:12:\"uploads-size\";i:5876407;s:6:\"others\";a:1:{i:0;s:57:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:52:\"backup_2023-11-14-1005_Blue_Birds_fefaff70d5f0-db.gz\";s:7:\"db-size\";i:220696;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"f3dfda051c2dbe7c7e9e9a5dca560697aeb20e7f\";s:7:\"themes0\";s:40:\"f78318a16d12c75bd376315d2d77e9f21322528b\";s:8:\"uploads0\";s:40:\"c07994271b2b51006a94fe5cca64acbd4619e45c\";s:7:\"others0\";s:40:\"ea573ea64b7cefa851b978a6baf283e29caf7e29\";s:3:\"db0\";s:40:\"a9b9b17a4e797bdb95589f2cec5e2f7611f51562\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"eada94f60448fc8ccc8761b21fc9fd88dcce150a16ed8d624da08fd5de38c166\";s:7:\"themes0\";s:64:\"1b482e9d30f57f0b40bfb1d1d3e7e2587ce60c0aac94df11a1407a18ce8cf7be\";s:8:\"uploads0\";s:64:\"b5b2a0968693c91c34480ff3fbb202b2e3cbe05bb1fa4380a441a6162d6ba69a\";s:7:\"others0\";s:64:\"93e1f1b7a1d31bc091be9e8197e1e48dd5cbc843e50b6af00020c6859aa1c97c\";s:3:\"db0\";s:64:\"22c8be47aa8286fee48d265da2b04a455bdedba2730eb428af04fbea4c19a804\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"fefaff70d5f0\";}', 'yes'),
(317, 'wp_attachment_pages_enabled', '1', 'yes'),
(318, 'db_upgraded', '', 'yes'),
(321, 'can_compress_scripts', '1', 'yes'),
(327, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1699956510;s:7:\"version\";s:5:\"5.8.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(328, 'secret_key', ')3vwc&rsiri~3^8#y@,,Of.qc%C+3X[nf2xM%@]:e_Oa<PcS2$?wdkU7K]A/<f+B', 'no'),
(334, 'grw_activation_time', '1700242132', 'yes'),
(335, 'grw_is_multisite', '', 'yes'),
(337, 'grw_active', '1', 'yes'),
(338, 'grw_google_api_key', '', 'yes'),
(339, 'grw_version', '3.0', 'yes'),
(340, 'grw_auth_code', '86UeQaVegZR1F0LtCHEYDQydr7YAwQuNZ3aDHZKBXYX50HOnGjgfo790wCUI0aMteluM37cBRUYdRcT8OacuiAHalfE3EQA5GRn0uXAMDMLKraKEPu2JiyINKrzcVUK', 'yes'),
(341, 'grw_revupd_cron', '1', 'yes'),
(342, 'widget_grw_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(344, 'grw_revupd_cron_timeout', '', 'yes'),
(345, 'grw_revupd_cron_log', 'Executed at 1700716523720 in 0ms for feeds: ', 'yes'),
(346, 'rplg_rev_notice_show', '', 'yes'),
(355, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":3}', 'yes'),
(381, 'bookly_data_loaded', '1', 'yes'),
(382, 'bookly_db_version', '22.6', 'yes'),
(383, 'bookly_installation_time', '1700108699', 'yes'),
(385, 'bookly_admin_preferred_language', '', 'yes'),
(386, 'bookly_app_color', '#f4662f', 'yes'),
(387, 'bookly_app_custom_styles', '', 'yes'),
(388, 'bookly_app_required_employee', '0', 'yes'),
(389, 'bookly_app_service_name_with_duration', '1', 'yes'),
(390, 'bookly_app_show_blocked_timeslots', '0', 'yes'),
(391, 'bookly_app_show_calendar', '0', 'yes'),
(392, 'bookly_app_show_day_one_column', '0', 'yes'),
(393, 'bookly_app_show_login_button', '0', 'yes'),
(394, 'bookly_app_show_notes', '1', 'yes'),
(395, 'bookly_app_show_progress_tracker', '1', 'yes'),
(396, 'bookly_app_align_buttons_left', '0', 'yes'),
(397, 'bookly_app_staff_name_with_price', '0', 'yes'),
(398, 'bookly_app_show_slots', 'all', 'yes'),
(399, 'bookly_app_show_email_confirm', '0', 'yes'),
(400, 'bookly_app_show_start_over', '1', 'yes'),
(401, 'bookly_app_show_category_info', '1', 'yes'),
(402, 'bookly_app_show_service_info', '1', 'yes'),
(403, 'bookly_app_show_staff_info', '0', 'yes'),
(404, 'bookly_app_show_terms', '0', 'yes'),
(405, 'bookly_app_show_download_ics', '0', 'yes'),
(406, 'bookly_app_show_add_to_calendar', '0', 'yes'),
(407, 'bookly_l10n_button_apply', 'Apply', 'yes'),
(408, 'bookly_l10n_button_back', 'Back', 'yes'),
(409, 'bookly_l10n_button_time_prev', '<', 'yes'),
(410, 'bookly_l10n_button_time_next', '>', 'yes'),
(411, 'bookly_l10n_button_download_ics', 'Download ICS', 'yes'),
(412, 'bookly_l10n_info_complete_step', 'Thank you! Your booking is complete. An email with details of your booking has been sent to you.', 'yes'),
(413, 'bookly_l10n_info_complete_step_limit_error', 'You are trying to use the service too often. Please contact us to make a booking.', 'yes'),
(414, 'bookly_l10n_info_complete_step_processing', 'Your payment has been accepted for processing.', 'yes'),
(415, 'bookly_l10n_info_details_step', 'You selected a booking for {service_name} by {staff_name} at {appointment_time} on {appointment_date}. The price for the service is {service_price}.\nPlease provide your details in the form below to proceed with booking.', 'yes'),
(416, 'bookly_l10n_info_details_step_guest', '', 'yes'),
(417, 'bookly_l10n_info_payment_step_single_app', 'Please tell us how you would like to pay: ', 'yes'),
(418, 'bookly_l10n_info_service_step', 'Please select service: ', 'yes'),
(419, 'bookly_l10n_info_time_step', 'Below you can find a list of available time slots for {service_name} by {staff_name}.\nClick on a time slot to proceed with booking.', 'yes'),
(420, 'bookly_l10n_info_add_to_calendar', 'Add to calendar', 'yes'),
(421, 'bookly_l10n_label_category', 'Category', 'yes'),
(422, 'bookly_l10n_label_email', 'Email', 'yes'),
(423, 'bookly_l10n_label_email_confirm', 'Confirm email', 'yes'),
(424, 'bookly_l10n_label_employee', 'Employee', 'yes'),
(425, 'bookly_l10n_label_finish_by', 'Finish by', 'yes'),
(426, 'bookly_l10n_label_name', 'Full name', 'yes'),
(427, 'bookly_l10n_label_first_name', 'First name', 'yes'),
(428, 'bookly_l10n_label_last_name', 'Last name', 'yes'),
(429, 'bookly_l10n_label_notes', 'Notes', 'yes'),
(430, 'bookly_l10n_label_pay_locally', 'I will pay locally', 'yes'),
(431, 'bookly_l10n_label_pay_cloud_stripe', 'I will pay now with Credit Card', 'yes'),
(432, 'bookly_l10n_label_phone', 'Phone', 'yes'),
(433, 'bookly_l10n_label_select_date', 'I\'m available on or after', 'yes'),
(434, 'bookly_l10n_label_service', 'Service', 'yes'),
(435, 'bookly_l10n_label_start_from', 'Start from', 'yes'),
(436, 'bookly_l10n_label_terms', 'I agree to the terms of service', 'yes'),
(437, 'bookly_l10n_error_terms', 'You must accept our terms', 'yes'),
(438, 'bookly_l10n_option_category', 'Select category', 'yes'),
(439, 'bookly_l10n_option_employee', 'Any', 'yes'),
(440, 'bookly_l10n_option_service', 'Select service', 'yes'),
(441, 'bookly_l10n_option_day', 'Select day', 'yes'),
(442, 'bookly_l10n_option_month', 'Select month', 'yes'),
(443, 'bookly_l10n_option_year', 'Select year', 'yes'),
(444, 'bookly_l10n_required_email', 'Please tell us your email', 'yes'),
(445, 'bookly_l10n_email_in_use', 'This email is already in use', 'yes'),
(446, 'bookly_l10n_email_confirm_not_match', 'Email confirmation doesn\'t match', 'yes'),
(447, 'bookly_l10n_required_employee', 'Please select an employee', 'yes'),
(448, 'bookly_l10n_required_name', 'Please tell us your name', 'yes'),
(449, 'bookly_l10n_required_first_name', 'Please tell us your first name', 'yes'),
(450, 'bookly_l10n_required_last_name', 'Please tell us your last name', 'yes'),
(451, 'bookly_l10n_required_phone', 'Please tell us your phone', 'yes'),
(452, 'bookly_l10n_required_service', 'Please select a service', 'yes'),
(453, 'bookly_l10n_step_service', 'Service', 'yes'),
(454, 'bookly_l10n_step_time', 'Time', 'yes'),
(455, 'bookly_l10n_step_time_slot_not_available', 'The selected time is not available anymore. Please, choose another time slot.', 'yes'),
(456, 'bookly_l10n_step_details', 'Details', 'yes'),
(457, 'bookly_l10n_step_details_button_login', 'Login', 'yes'),
(458, 'bookly_l10n_step_payment', 'Payment', 'yes'),
(459, 'bookly_l10n_step_done', 'Done', 'yes'),
(460, 'bookly_l10n_step_done_button_start_over', 'Start over', 'yes'),
(461, 'bookly_l10n_step_service_category_info', '{category_info}', 'yes'),
(462, 'bookly_l10n_step_service_service_info', '{service_info}', 'yes'),
(463, 'bookly_l10n_step_service_staff_info', '{staff_info}', 'yes'),
(464, 'bookly_l10n_step_service_button_next', 'Next', 'yes'),
(465, 'bookly_l10n_step_service_mobile_button_next', 'Next', 'yes'),
(466, 'bookly_l10n_step_details_button_next', 'Next', 'yes'),
(467, 'bookly_l10n_step_payment_button_next', 'Next', 'yes'),
(468, 'bookly_cal_show_only_business_days', '1', 'yes'),
(469, 'bookly_cal_show_only_business_hours', '1', 'yes'),
(470, 'bookly_cal_show_only_staff_with_appointments', '1', 'yes'),
(471, 'bookly_cal_one_participant', '{service_name}\r\n{client_name}\r\n{client_phone}\r\n{client_email}\r\n{total_price} {payment_type} {payment_status}\r\nStatus: {status}\r\nSigned up: {signed_up}\r\nCapacity: {service_capacity}', 'yes'),
(472, 'bookly_cal_many_participants', '{service_name}\r\nSigned up: {signed_up}\r\nCapacity: {service_capacity}', 'yes'),
(473, 'bookly_cal_coloring_mode', 'service', 'yes'),
(474, 'bookly_cal_month_view_style', 'classic', 'yes'),
(475, 'bookly_cal_show_new_appointments_badge', '0', 'yes'),
(476, 'bookly_cal_last_seen_appointment', '7', 'yes'),
(477, 'bookly_co_logo_attachment_id', '', 'yes'),
(478, 'bookly_co_name', 'Blue Bird', 'yes'),
(479, 'bookly_co_address', '', 'yes'),
(480, 'bookly_co_phone', '', 'yes'),
(481, 'bookly_co_website', '', 'yes'),
(482, 'bookly_co_email', 'info@webbersunited.com', 'yes'),
(483, 'bookly_co_industry', '43', 'yes'),
(484, 'bookly_co_size', '1', 'yes'),
(485, 'bookly_cst_allow_duplicates', '0', 'yes'),
(486, 'bookly_cst_create_account', '0', 'yes'),
(487, 'bookly_cst_default_country_code', '', 'yes'),
(488, 'bookly_cst_first_last_name', '0', 'yes'),
(489, 'bookly_cst_phone_default_country', 'auto', 'yes'),
(490, 'bookly_cst_remember_in_cookie', '0', 'yes'),
(491, 'bookly_cst_required_address', '0', 'yes'),
(492, 'bookly_cst_required_birthday', '0', 'yes'),
(493, 'bookly_cst_required_details', 'a:2:{i:0;s:5:\"phone\";i:1;s:5:\"email\";}', 'yes'),
(494, 'bookly_cst_show_update_details_dialog', '1', 'yes'),
(495, 'bookly_cst_verify_customer_details', 'on_update', 'yes'),
(496, 'bookly_email_sender', 'info@webbersunited.com', 'yes'),
(497, 'bookly_email_sender_name', 'Blue Birds', 'yes'),
(498, 'bookly_email_send_as', 'html', 'yes'),
(499, 'bookly_email_reply_to_customers', '1', 'yes'),
(500, 'bookly_gen_delete_data_on_uninstall', '0', 'yes'),
(501, 'bookly_gen_time_slot_length', '15', 'yes'),
(502, 'bookly_gen_service_duration_as_slot_length', '0', 'yes'),
(503, 'bookly_gen_min_time_prior_booking', '0', 'yes'),
(504, 'bookly_gen_min_time_prior_cancel', '0', 'yes'),
(505, 'bookly_gen_max_days_for_booking', '365', 'yes'),
(506, 'bookly_gen_use_client_time_zone', '0', 'yes'),
(507, 'bookly_gen_allow_staff_edit_profile', '0', 'yes'),
(508, 'bookly_gen_link_assets_method', 'enqueue', 'yes'),
(509, 'bookly_gen_collect_stats', '1', 'yes'),
(510, 'bookly_gen_show_powered_by', '1', 'yes'),
(511, 'bookly_gen_session_type', 'php', 'yes'),
(512, 'bookly_gen_prevent_caching', '1', 'yes'),
(513, 'bookly_gen_prevent_session_locking', '0', 'yes'),
(514, 'bookly_gen_badge_consider_news', '1', 'yes'),
(515, 'bookly_url_approve_page_url', 'http://localhost/star-lounge', 'yes'),
(516, 'bookly_url_approve_denied_page_url', 'http://localhost/star-lounge', 'yes'),
(517, 'bookly_url_cancel_page_url', 'http://localhost/star-lounge', 'yes'),
(518, 'bookly_url_cancel_denied_page_url', 'http://localhost/star-lounge', 'yes'),
(519, 'bookly_url_reject_page_url', 'http://localhost/star-lounge', 'yes'),
(520, 'bookly_url_reject_denied_page_url', 'http://localhost/star-lounge', 'yes'),
(521, 'bookly_sms_administrator_phone', '', 'yes'),
(522, 'bookly_sms_undelivered_count', '0', 'yes'),
(523, 'bookly_l10n_ics_customer_template', '{service_name}\n{staff_name}', 'yes'),
(524, 'bookly_ics_staff_template', '{client_name}\n{client_phone}\n{status}', 'yes'),
(525, 'bookly_cloud_account_products', '', 'yes'),
(526, 'bookly_cloud_auto_recharge_end_at', '', 'yes'),
(527, 'bookly_cloud_auto_recharge_end_at_ts', '0', 'yes'),
(528, 'bookly_cloud_auto_recharge_gateway', '', 'yes'),
(529, 'bookly_cloud_badge_consider_sms', '1', 'yes'),
(530, 'bookly_cloud_cron_api_key', '', 'yes'),
(531, 'bookly_cloud_notify_low_balance', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(532, 'bookly_cloud_promotions', 'a:1:{s:12:\"registration\";a:3:{s:2:\"id\";i:1;s:6:\"amount\";i:5;s:5:\"texts\";a:3:{s:4:\"info\";s:129:\"Register your <b>Bookly Cloud account</b> and get <b>$5 Welcome Bonus</b> to easily start using <b>SMS Notifications</b> feature!\";s:4:\"form\";s:56:\"You will get <b>$5 welcome bonus</b> after registration.\";s:6:\"button\";s:0:\"\";}}}', 'yes'),
(533, 'bookly_cloud_renew_auto_recharge_notice_hide_until', '-1', 'yes'),
(534, 'bookly_cloud_square_addition', '0', 'yes'),
(535, 'bookly_cloud_square_api_access_token', '', 'yes'),
(536, 'bookly_cloud_square_api_application_id', '', 'yes'),
(537, 'bookly_cloud_square_api_location_id', '', 'yes'),
(538, 'bookly_cloud_square_enabled', '0', 'yes'),
(539, 'bookly_cloud_square_increase', '0', 'yes'),
(540, 'bookly_cloud_square_sandbox', '0', 'yes'),
(541, 'bookly_cloud_square_timeout', '0', 'yes'),
(542, 'bookly_cloud_stripe_addition', '0', 'yes'),
(543, 'bookly_cloud_stripe_custom_metadata', '0', 'yes'),
(544, 'bookly_cloud_stripe_enabled', '0', 'yes'),
(545, 'bookly_cloud_stripe_increase', '0', 'yes'),
(546, 'bookly_cloud_stripe_metadata', 'a:0:{}', 'yes'),
(547, 'bookly_cloud_stripe_timeout', '0', 'yes'),
(548, 'bookly_cloud_token', '', 'yes'),
(549, 'bookly_cloud_zapier_api_key', '', 'yes'),
(550, 'bookly_bh_monday_start', '08:00:00', 'yes'),
(551, 'bookly_bh_monday_end', '18:00:00', 'yes'),
(552, 'bookly_bh_tuesday_start', '08:00:00', 'yes'),
(553, 'bookly_bh_tuesday_end', '18:00:00', 'yes'),
(554, 'bookly_bh_wednesday_start', '08:00:00', 'yes'),
(555, 'bookly_bh_wednesday_end', '18:00:00', 'yes'),
(556, 'bookly_bh_thursday_end', '18:00:00', 'yes'),
(557, 'bookly_bh_thursday_start', '08:00:00', 'yes'),
(558, 'bookly_bh_friday_start', '08:00:00', 'yes'),
(559, 'bookly_bh_friday_end', '18:00:00', 'yes'),
(560, 'bookly_bh_saturday_start', '', 'yes'),
(561, 'bookly_bh_saturday_end', '', 'yes'),
(562, 'bookly_bh_sunday_start', '', 'yes'),
(563, 'bookly_bh_sunday_end', '', 'yes'),
(564, 'bookly_pmt_currency', 'USD', 'yes'),
(565, 'bookly_pmt_price_format', '{symbol}{sign}{price|2}', 'yes'),
(566, 'bookly_pmt_order', '', 'yes'),
(567, 'bookly_pmt_local', '1', 'yes'),
(568, 'bookly_ntf_processing_interval', '2', 'yes'),
(569, 'bookly_сa_count', '0', 'yes'),
(570, 'bookly_logs_enabled', '0', 'yes'),
(571, 'bookly_appointment_status_pending_color', '#1e73be', 'yes'),
(572, 'bookly_appointment_status_approved_color', '#81d742', 'yes'),
(573, 'bookly_appointment_status_cancelled_color', '#eeee22', 'yes'),
(574, 'bookly_appointment_status_rejected_color', '#dd3333', 'yes'),
(575, 'bookly_appointment_status_mixed_color', '#8224e3', 'yes'),
(576, 'bookly_appointment_default_status', 'approved', 'yes'),
(577, 'bookly_appointment_cancel_action', 'cancel', 'yes'),
(578, 'bookly_show_wpml_resave_required_notice', '0', 'yes'),
(579, 'bookly_email_gateway', 'wp', 'yes'),
(580, 'bookly_smtp_host', '', 'yes'),
(581, 'bookly_smtp_port', '', 'yes'),
(582, 'bookly_smtp_user', '', 'yes'),
(583, 'bookly_smtp_password', '', 'yes'),
(584, 'bookly_smtp_secure', 'none', 'yes'),
(585, 'bookly_appointment_end_date_method', 'default', 'yes'),
(589, 'bookly_cloud_products', 'a:8:{i:0;a:7:{s:2:\"id\";s:3:\"sms\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:41:\"https://i.bookly.info/cloud/sms_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:17:\"SMS Notifications\";s:5:\"price\";s:13:\"Pay as you go\";s:11:\"description\";s:454:\"<p>With <b>SMS Notifications</b> service you will keep your customers and staff members informed about their bookings, reduce “no shows” and empty booking slots. The service offers a wide range of codes which you can use to <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212411309\" target=\"_blank\">personalize</a> your text messages.</p><p>Top up your balance with one of the standard amounts and never lose your bookings again.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:10:\"SMS Prices\";s:10:\"info-title\";s:10:\"SMS Prices\";}}i:1;a:7:{s:2:\"id\";s:6:\"stripe\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/stripe_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:15:\"Stripe Payments\";s:5:\"price\";s:39:\"0.9% <small>per-transaction fee</small>\";s:11:\"description\";s:336:\"<p>With <b>Stripe Payments</b> activated, you can integrate <a href=\"https://stripe.com/\" target=\"_blank\">Stripe</a> payment gateway into your Bookly booking form to process credit card payments online.</p><p>Click <b>Get started</b> button to connect Bookly to your Stripe account and let customers instantly pay for your services.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:5:\"Setup\";}}i:2;a:8:{s:2:\"id\";s:6:\"zapier\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/zapier-96x96.png\";s:7:\"version\";s:4:\"18.7\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:6:\"Zapier\";s:5:\"price\";s:22:\"Your subscription plan\";s:11:\"description\";s:664:\"<p><b><a href=\"https://zapier.com/\" target=\"_blank\">Zapier</a></b> allows you to automatically trigger actions in your favorite cloud apps for certain events inside of Bookly: when new bookings are made and updated, and new customers are created.</p>\n<p>You can try <b>Zapier integration</b> for free during 7 days to learn more and discover how it can work for you. After the trial period expires, you will be charged for the price of the selected plan.</p>\n<p>Choose your subscription plan, click <b>Start 7-day Trial</b> or <b>Get started</b> button to set up the connection between Bookly and Zapier, and create individual workflows to perform automations.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:18:\"Zapier Integration\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:7:\"caption\";s:79:\"$24<sup>.99</sup> per month<br/><small class=\"text-muted\">200 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:1:\"2\";s:7:\"caption\";s:79:\"$59<sup>.99</sup> per month<br/><small class=\"text-muted\">500 Tasks /mo</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:1:\"3\";s:7:\"caption\";s:82:\"$124<sup>.99</sup> per month<br/><small class=\"text-muted\">1,100 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:1:\"4\";s:7:\"caption\";s:82:\"$249<sup>.99</sup> per month<br/><small class=\"text-muted\">2,300 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:1:\"5\";s:7:\"caption\";s:83:\"$999<sup>.99</sup> per month<br/><small class=\"text-muted\">12,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:1:\"6\";s:7:\"caption\";s:85:\"$1,499<sup>.99</sup> per month<br/><small class=\"text-muted\">20,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}}}i:3;a:8:{s:2:\"id\";s:4:\"cron\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:42:\"https://i.bookly.info/cloud/cron_96x96.png\";s:7:\"version\";s:4:\"20.9\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:0;s:5:\"texts\";a:8:{s:5:\"title\";s:10:\"Cloud Cron\";s:5:\"price\";s:15:\"$11.99 per year\";s:11:\"description\";s:371:\"<p>With the <b>Cloud Cron</b> activated, you can be sure that Bookly will do all your scheduled actions (email and SMS notifications, SMS campaigns, automatic appointment status change) without any additional settings.</p>\n\n<p>Click <b>Start 7-day Trial</b> or <b>Get started</b> button to activate Cloud Cron and expand your possibilities in planning and scheduling.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:0:\"\";s:10:\"info-title\";s:0:\"\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"8\";s:7:\"caption\";s:31:\"$11<sup>.99</sup> per year<br/>\";s:4:\"tags\";a:0:{}}}}i:4;a:7:{s:2:\"id\";s:5:\"voice\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:43:\"https://i.bookly.info/cloud/voice_96x96.png\";s:7:\"version\";s:4:\"21.3\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:19:\"Voice Notifications\";s:5:\"price\";s:13:\"Pay as you go\";s:11:\"description\";s:207:\"With <b>Voice Notifications</b>, you can inform your customers about upcoming appointments more effectively. Your clients will receive automatic calls with text that you can customize to suit many scenarios.\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:6:\"Prices\";s:10:\"info-title\";s:19:\"Voice Notifications\";}}i:5;a:8:{s:2:\"id\";s:6:\"square\";s:12:\"pro_required\";b:1;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/square_96x96.jpg\";s:7:\"version\";s:4:\"21.3\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:15:\"Square Payments\";s:5:\"price\";s:15:\"$29.99 per year\";s:11:\"description\";s:355:\"<p>With <b>Square Payments</b> activated, you can integrate <a href=\"https://squareup.com/\" target=\"_blank\">Square</a> payment gateway into your Bookly booking form to process credit card payments online.</p>\n\n<p>Click <b>Start 7-day Trial</b> or <b>Get started</b> button to activate Square payments and let customers instantly pay for your services.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:15:\"Square Payments\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"9\";s:7:\"caption\";s:31:\"$29<sup>.99</sup> per year<br/>\";s:4:\"tags\";a:0:{}}}}i:6;a:8:{s:2:\"id\";s:4:\"gift\";s:12:\"pro_required\";b:1;s:8:\"icon_url\";s:42:\"https://i.bookly.info/cloud/gift_96x96.png\";s:7:\"version\";s:4:\"21.4\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:10:\"Gift Cards\";s:5:\"price\";s:15:\"$29.99 per year\";s:11:\"description\";s:278:\"<p>Create gift cards with a predefined deposit that your clients can use as a payment method at the time of online booking.</p>\n<p>Click <b>Start 7-day Trial</b> or <b>Get started</b> button to activate Gift Cards feature and offer vouchers to your customers through Bookly.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:10:\"Gift Cards\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:2:\"10\";s:7:\"caption\";s:31:\"$29<sup>.99</sup> per year<br/>\";s:4:\"tags\";a:0:{}}}}i:7;a:8:{s:2:\"id\";s:8:\"whatsapp\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:46:\"https://i.bookly.info/cloud/whatsapp_96x96.png\";s:7:\"version\";s:4:\"21.5\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:22:\"WhatsApp Notifications\";s:5:\"price\";s:22:\"Your subscription plan\";s:11:\"description\";s:680:\"<p>Keep your clients and staff informed about the booking details via instant <b>WhatsApp messages</b>. With the WhatsApp feature integrated into Bookly, you can send customizable notifications and reminders for different scenarios.</p>\n<p>To use this integration, you <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/10053650125202\" target=\"_blank\">must have</a> a Facebook Developer Account. We recommend you register and set up a Meta Business Account first. Then choose a subscription plan, click <b>Start 7-day Trial</b> or <b>Get started</b> button to activate the WhatsApp Notifications feature, and maintain constant contact with clients and employees.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:22:\"WhatsApp Notifications\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:2:\"11\";s:7:\"caption\";s:83:\"$9<sup>.99</sup> per month<br/><small class=\"text-muted\">1-100 Messages /mo</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:2:\"16\";s:7:\"caption\";s:86:\"$17<sup>.99</sup> per month<br/><small class=\"text-muted\">100-200 Messages /mo</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:2:\"17\";s:7:\"caption\";s:86:\"$45<sup>.99</sup> per month<br/><small class=\"text-muted\">200-500 Messages /mo</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:2:\"18\";s:7:\"caption\";s:87:\"$89<sup>.99</sup> per month<br/><small class=\"text-muted\">500-1000 Messages /mo</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:2:\"19\";s:7:\"caption\";s:89:\"$177<sup>.99</sup> per month<br/><small class=\"text-muted\">1000-2000 Messages /mo</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:2:\"20\";s:7:\"caption\";s:87:\"$449<sup>.99</sup> per month<br/><small class=\"text-muted\"> > 2000 Messages /mo</small>\";s:4:\"tags\";a:0:{}}}}}', 'yes'),
(601, 'bookly_app_show_time_zone_switcher', 'NaN', 'yes'),
(602, 'bookly_app_show_facebook_login_button', 'NaN', 'yes'),
(603, 'bookly_app_service_duration_with_price', 'NaN', 'yes'),
(735, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(756, 'grw_rev_notice_hide', 'never', 'yes'),
(805, 'category_children', 'a:0:{}', 'yes'),
(880, '_site_transient_timeout_browser_f529a32073a22388a8370c39e9b93c86', '1701149050', 'no'),
(881, '_site_transient_browser_f529a32073a22388a8370c39e9b93c86', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1047, '_site_transient_timeout_php_check_8cf1643c50bfbac60523b23e1f6543c8', '1701231049', 'no'),
(1048, '_site_transient_php_check_8cf1643c50bfbac60523b23e1f6543c8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1084, 'theme_mods_starlounge', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1094, 'WPLANG', '', 'yes'),
(1095, 'new_admin_email', 'info@webbersunited.com', 'yes'),
(1101, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.1\";s:7:\"version\";s:5:\"6.4.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1700809432;s:15:\"version_checked\";s:5:\"6.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1138, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1700809433;s:7:\"checked\";a:2:{s:9:\"bluebirds\";s:3:\"1.6\";s:10:\"starlounge\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1179, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1700820219', 'no'),
(1180, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6177;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4826;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2790;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2684;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2058;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1926;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1914;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1660;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1575;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1564;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1550;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1512;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1504;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1498;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1385;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1278;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1175;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1161;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1155;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1080;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1035;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1001;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:972;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:911;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:906;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:891;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:884;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:881;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:878;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:876;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:846;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:831;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:796;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:779;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:777;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:764;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:753;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:734;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:732;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:730;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:730;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:694;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:689;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:682;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:635;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:630;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:623;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:617;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:611;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:608;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:602;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:597;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:594;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:593;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:576;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:576;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:573;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:572;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:571;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:565;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:559;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:546;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:544;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:534;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:533;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:533;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:531;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:520;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:511;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:511;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:508;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:506;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:498;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:487;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:481;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:471;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:451;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:450;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:450;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:441;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:434;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:432;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:428;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:425;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:421;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:421;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:414;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:409;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:403;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:400;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:398;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:392;}}', 'no'),
(1182, '_site_transient_timeout_theme_roots', '1700811233', 'no'),
(1183, '_site_transient_theme_roots', 'a:2:{s:9:\"bluebirds\";s:7:\"/themes\";s:10:\"starlounge\";s:7:\"/themes\";}', 'no'),
(1184, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1700809436;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:26:\"custom-field-suite/cfs.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/custom-field-suite\";s:4:\"slug\";s:18:\"custom-field-suite\";s:6:\"plugin\";s:26:\"custom-field-suite/cfs.php\";s:11:\"new_version\";s:5:\"2.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/custom-field-suite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/custom-field-suite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/custom-field-suite/assets/icon-256x256.png?rev=1112866\";s:2:\"1x\";s:71:\"https://ps.w.org/custom-field-suite/assets/icon-128x128.png?rev=1112866\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:58:\"date-time-picker-for-contact-form-7/cf7-datetimepicker.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/date-time-picker-for-contact-form-7\";s:4:\"slug\";s:35:\"date-time-picker-for-contact-form-7\";s:6:\"plugin\";s:58:\"date-time-picker-for-contact-form-7/cf7-datetimepicker.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/date-time-picker-for-contact-form-7/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/date-time-picker-for-contact-form-7.1.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/date-time-picker-for-contact-form-7/assets/icon-256x256.png?rev=2394324\";s:2:\"1x\";s:88:\"https://ps.w.org/date-time-picker-for-contact-form-7/assets/icon-128x128.png?rev=2394324\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/date-time-picker-for-contact-form-7/assets/banner-1544x500.png?rev=2394324\";s:2:\"1x\";s:90:\"https://ps.w.org/date-time-picker-for-contact-form-7/assets/banner-772x250.png?rev=2394324\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:43:\"go-live-update-urls/go-live-update-urls.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/go-live-update-urls\";s:4:\"slug\";s:19:\"go-live-update-urls\";s:6:\"plugin\";s:43:\"go-live-update-urls/go-live-update-urls.php\";s:11:\"new_version\";s:5:\"6.6.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/go-live-update-urls/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/go-live-update-urls.6.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/go-live-update-urls/assets/icon-256x256.png?rev=1811295\";s:2:\"1x\";s:72:\"https://ps.w.org/go-live-update-urls/assets/icon-128x128.png?rev=1811295\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/go-live-update-urls/assets/banner-1544x500.png?rev=1811295\";s:2:\"1x\";s:74:\"https://ps.w.org/go-live-update-urls/assets/banner-772x250.png?rev=1811295\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.8.0\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.3\";s:26:\"custom-field-suite/cfs.php\";s:5:\"2.6.4\";s:58:\"date-time-picker-for-contact-form-7/cf7-datetimepicker.php\";s:5:\"1.1.1\";s:43:\"go-live-update-urls/go-live-update-urls.php\";s:5:\"6.6.3\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1700721716:1'),
(5, 5, '_wp_page_template', 'page-home.php'),
(6, 7, '_wp_trash_meta_status', 'publish'),
(7, 7, '_wp_trash_meta_time', '1699939548'),
(8, 8, '_menu_item_type', 'post_type'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '5'),
(11, 8, '_menu_item_object', 'page'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', ''),
(26, 10, '_edit_last', '1'),
(27, 10, '_edit_lock', '1700828641:1'),
(28, 10, '_wp_page_template', 'page-about.php'),
(29, 12, '_menu_item_type', 'post_type'),
(30, 12, '_menu_item_menu_item_parent', '0'),
(31, 12, '_menu_item_object_id', '10'),
(32, 12, '_menu_item_object', 'page'),
(33, 12, '_menu_item_target', ''),
(34, 12, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(35, 12, '_menu_item_xfn', ''),
(36, 12, '_menu_item_url', ''),
(38, 13, '_edit_last', '1'),
(39, 13, '_edit_lock', '1700723311:1'),
(40, 13, '_wp_page_template', 'page-ourmenu.php'),
(41, 16, '_menu_item_type', 'post_type'),
(42, 16, '_menu_item_menu_item_parent', '0'),
(43, 16, '_menu_item_object_id', '13'),
(44, 16, '_menu_item_object', 'page'),
(45, 16, '_menu_item_target', ''),
(46, 16, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(47, 16, '_menu_item_xfn', ''),
(48, 16, '_menu_item_url', ''),
(50, 17, '_edit_last', '1'),
(51, 17, '_edit_lock', '1700817504:1'),
(52, 17, '_wp_page_template', 'page-contact.php'),
(53, 20, '_menu_item_type', 'post_type'),
(54, 20, '_menu_item_menu_item_parent', '0'),
(55, 20, '_menu_item_object_id', '17'),
(56, 20, '_menu_item_object', 'page'),
(57, 20, '_menu_item_target', ''),
(58, 20, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(59, 20, '_menu_item_xfn', ''),
(60, 20, '_menu_item_url', ''),
(62, 21, '_edit_last', '1'),
(63, 21, '_edit_lock', '1700721091:1'),
(68, 5, 'banner_video', '25'),
(69, 5, '_banner_video', 'field_65530f19de5df'),
(70, 5, 'banner_heading', 'Perfectly Light In Every Bite'),
(71, 5, '_banner_heading', 'field_65530f42b321e'),
(72, 26, 'banner_video', '25'),
(73, 26, '_banner_video', 'field_65530f19de5df'),
(74, 26, 'banner_heading', '<span>Experience safe</span>\r\n                 <span>& enjoyable</span>\r\n                 <span>lessons with </span>\r\n                 <span class=\"color\"> Blue Bird Driving School! </span>\r\n                 <span>Personalized driving</span>\r\n                 <br> <span>lessons for all</span>\r\n                 <span>levels, </span>\r\n                 <span> empowering</span>\r\n                 <span> you</span>\r\n                 <span>to learn</span>\r\n                 <span>at your own pace.</span>\r\n                 <span class=\"color\">Drive with confidence</span>\r\n                 <span> today! </span>'),
(75, 26, '_banner_heading', 'field_65530f42b321e'),
(76, 27, 'banner_video', '25'),
(77, 27, '_banner_video', 'field_65530f19de5df'),
(78, 27, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(79, 27, '_banner_heading', 'field_65530f42b321e'),
(80, 5, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(81, 5, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(82, 5, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(83, 5, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(84, 30, 'banner_video', '25'),
(85, 30, '_banner_video', 'field_65530f19de5df'),
(86, 30, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(87, 30, '_banner_heading', 'field_65530f42b321e'),
(88, 30, 'banner_bottom_main_heading', '<span>Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice! </span>'),
(89, 30, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(90, 30, 'banner_bottom_subheading', ''),
(91, 30, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(92, 31, 'banner_video', '25'),
(93, 31, '_banner_video', 'field_65530f19de5df'),
(94, 31, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(95, 31, '_banner_heading', 'field_65530f42b321e'),
(96, 31, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(97, 31, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(98, 31, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(99, 31, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(100, 32, '_edit_last', '1'),
(101, 32, '_edit_lock', '1700138204:1'),
(102, 32, 'cfs_fields', 'a:4:{i:0;a:8:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"process_step_loop\";s:5:\"label\";s:17:\"Process Step Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:1;a:8:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:17:\"process_step_icon\";s:5:\"label\";s:17:\"Process Step Icon\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:5;s:6:\"weight\";i:1;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:18:\"process_step_title\";s:5:\"label\";s:18:\"Process Step Title\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:5;s:6:\"weight\";i:2;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:3;a:8:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:24:\"process_step_description\";s:5:\"label\";s:24:\"Process Step Description\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:5;s:6:\"weight\";i:3;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}}'),
(103, 32, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:13:\"page-home.php\";}}}'),
(104, 32, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"0\";}'),
(155, 5, 'step_process_main_heading', 'Our Four-step Process'),
(156, 5, '_step_process_main_heading', 'field_65531c8fc3e00'),
(157, 41, 'banner_video', '25'),
(158, 41, '_banner_video', 'field_65530f19de5df'),
(159, 41, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(160, 41, '_banner_heading', 'field_65530f42b321e'),
(161, 41, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(162, 41, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(163, 41, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(164, 41, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(165, 41, 'step_process_main_heading', 'Our Four-step Process'),
(166, 41, '_step_process_main_heading', 'field_65531c8fc3e00'),
(227, 5, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(228, 5, '_process_step_section_button_text', 'field_65532097b5187'),
(229, 5, 'process_step_section_button_link', 'http://localhost/star-lounge/book-now/'),
(230, 5, '_process_step_section_button_link', 'field_655320aeb5188'),
(231, 44, 'banner_video', '25'),
(232, 44, '_banner_video', 'field_65530f19de5df'),
(233, 44, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(234, 44, '_banner_heading', 'field_65530f42b321e'),
(235, 44, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(236, 44, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(237, 44, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(238, 44, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(239, 44, 'step_process_main_heading', 'Our Four-step Process'),
(240, 44, '_step_process_main_heading', 'field_65531c8fc3e00'),
(241, 44, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(242, 44, '_process_step_section_button_text', 'field_65532097b5187'),
(243, 44, 'process_step_section_button_link', '#'),
(244, 44, '_process_step_section_button_link', 'field_655320aeb5188'),
(245, 45, '_menu_item_type', 'post_type'),
(246, 45, '_menu_item_menu_item_parent', '0'),
(247, 45, '_menu_item_object_id', '5'),
(248, 45, '_menu_item_object', 'page'),
(249, 45, '_menu_item_target', ''),
(250, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 45, '_menu_item_xfn', ''),
(252, 45, '_menu_item_url', ''),
(254, 46, '_menu_item_type', 'post_type'),
(255, 46, '_menu_item_menu_item_parent', '0'),
(256, 46, '_menu_item_object_id', '10'),
(257, 46, '_menu_item_object', 'page'),
(258, 46, '_menu_item_target', ''),
(259, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 46, '_menu_item_xfn', ''),
(261, 46, '_menu_item_url', ''),
(263, 47, '_menu_item_type', 'post_type'),
(264, 47, '_menu_item_menu_item_parent', '0'),
(265, 47, '_menu_item_object_id', '17'),
(266, 47, '_menu_item_object', 'page'),
(267, 47, '_menu_item_target', ''),
(268, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 47, '_menu_item_xfn', ''),
(270, 47, '_menu_item_url', ''),
(272, 48, '_menu_item_type', 'post_type'),
(273, 48, '_menu_item_menu_item_parent', '0'),
(274, 48, '_menu_item_object_id', '13'),
(275, 48, '_menu_item_object', 'page'),
(276, 48, '_menu_item_target', ''),
(277, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 48, '_menu_item_xfn', ''),
(279, 48, '_menu_item_url', ''),
(281, 49, '_edit_last', '1'),
(282, 49, '_edit_lock', '1700814520:1'),
(283, 49, '_wp_page_template', 'default'),
(284, 51, '_edit_last', '1'),
(285, 51, '_edit_lock', '1700814264:1'),
(288, 49, 'logo', ''),
(289, 49, '_logo', 'field_6553249aa8b31'),
(290, 49, 'footer_shortcontent', 'Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros.'),
(291, 49, '_footer_shortcontent', 'field_655324bea8b32'),
(292, 49, 'address', '90 Martinridge Grove NE, Calgary, AB, T3J 3M4'),
(293, 49, '_address', 'field_65532541038d3'),
(294, 49, 'phone_number', '+1 (234) 567 8899'),
(295, 49, '_phone_number', 'field_6553255ebde30'),
(296, 49, 'email', 'info@bluebirddriving.ca'),
(297, 49, '_email', 'field_65532568bde31'),
(298, 58, 'logo', '57'),
(299, 58, '_logo', 'field_6553249aa8b31'),
(300, 58, 'footer_shortcontent', ''),
(301, 58, '_footer_shortcontent', 'field_655324bea8b32'),
(302, 58, 'address', ''),
(303, 58, '_address', 'field_65532541038d3'),
(304, 58, 'phone_number', ''),
(305, 58, '_phone_number', 'field_6553255ebde30'),
(306, 58, 'email', ''),
(307, 58, '_email', 'field_65532568bde31'),
(308, 59, 'logo', '57'),
(309, 59, '_logo', 'field_6553249aa8b31'),
(310, 59, 'footer_shortcontent', ''),
(311, 59, '_footer_shortcontent', 'field_655324bea8b32'),
(312, 59, 'address', ''),
(313, 59, '_address', 'field_65532541038d3'),
(314, 59, 'phone_number', '+1 403.613.8074'),
(315, 59, '_phone_number', 'field_6553255ebde30'),
(316, 59, 'email', 'info@bluebirddriving.ca'),
(317, 59, '_email', 'field_65532568bde31'),
(318, 60, 'logo', '57'),
(319, 60, '_logo', 'field_6553249aa8b31'),
(320, 60, 'footer_shortcontent', 'Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros.'),
(321, 60, '_footer_shortcontent', 'field_655324bea8b32'),
(322, 60, 'address', '90 Martinridge Grove NE, Calgary, AB, T3J 3M4'),
(323, 60, '_address', 'field_65532541038d3'),
(324, 60, 'phone_number', '+1 403.613.8074'),
(325, 60, '_phone_number', 'field_6553255ebde30'),
(326, 60, 'email', 'info@bluebirddriving.ca'),
(327, 60, '_email', 'field_65532568bde31'),
(358, 5, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(359, 5, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(360, 5, 'home_page_last_orange_section_button_text', 'Discover More'),
(361, 5, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(362, 5, 'home_page_last_orange_section_button_link', 'http://localhost/star-lounge/book-now/'),
(363, 5, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(364, 64, 'banner_video', '25'),
(365, 64, '_banner_video', 'field_65530f19de5df'),
(366, 64, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(367, 64, '_banner_heading', 'field_65530f42b321e'),
(368, 64, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(369, 64, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(370, 64, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(371, 64, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(372, 64, 'step_process_main_heading', 'Our Four-step Process'),
(373, 64, '_step_process_main_heading', 'field_65531c8fc3e00'),
(374, 64, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(375, 64, '_process_step_section_button_text', 'field_65532097b5187'),
(376, 64, 'process_step_section_button_link', '#'),
(377, 64, '_process_step_section_button_link', 'field_655320aeb5188'),
(378, 64, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(379, 64, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(380, 64, 'home_page_last_orange_section_button_text', 'Discover More'),
(381, 64, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(382, 64, 'home_page_last_orange_section_button_link', '#'),
(383, 64, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(384, 65, '_edit_last', '1'),
(385, 65, '_edit_lock', '1700828642:1'),
(386, 10, 'orange_heading', 'OUR INTRODUCTION'),
(387, 10, '_orange_heading', 'field_655333d193279'),
(388, 10, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(389, 10, '_about_main_heading', 'field_6553356a5c607'),
(390, 10, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(391, 10, '_about_main_subheading', 'field_655335785c608'),
(392, 10, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(393, 10, '_about_description_1', 'field_655335875c609'),
(394, 10, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(395, 10, '_about_description_2', 'field_655335e15c60a'),
(396, 71, 'orange_heading', 'OUR INTRODUCTION'),
(397, 71, '_orange_heading', 'field_655333d193279'),
(398, 71, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(399, 71, '_about_main_heading', 'field_6553356a5c607'),
(400, 71, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(401, 71, '_about_main_subheading', 'field_655335785c608'),
(402, 71, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(403, 71, '_about_description_1', 'field_655335875c609'),
(404, 71, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(405, 71, '_about_description_2', 'field_655335e15c60a'),
(406, 72, 'orange_heading', 'OUR INTRODUCTION'),
(407, 72, '_orange_heading', 'field_655333d193279'),
(408, 72, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(409, 72, '_about_main_heading', 'field_6553356a5c607'),
(410, 72, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(411, 72, '_about_main_subheading', 'field_655335785c608'),
(412, 72, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(413, 72, '_about_description_1', 'field_655335875c609'),
(414, 72, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(415, 72, '_about_description_2', 'field_655335e15c60a'),
(420, 10, 'about_image_1', ''),
(421, 10, '_about_image_1', 'field_655338352bd90'),
(422, 10, 'about_image_2', ''),
(423, 10, '_about_image_2', 'field_655338492bd91'),
(424, 10, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(425, 10, '_about_youtube_video', 'field_655338582bd92'),
(426, 78, 'orange_heading', 'OUR INTRODUCTION'),
(427, 78, '_orange_heading', 'field_655333d193279'),
(428, 78, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(429, 78, '_about_main_heading', 'field_6553356a5c607'),
(430, 78, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(431, 78, '_about_main_subheading', 'field_655335785c608'),
(432, 78, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(433, 78, '_about_description_1', 'field_655335875c609'),
(434, 78, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(435, 78, '_about_description_2', 'field_655335e15c60a'),
(436, 78, 'about_image_1', '76'),
(437, 78, '_about_image_1', 'field_655338352bd90'),
(438, 78, 'about_image_2', '77'),
(439, 78, '_about_image_2', 'field_655338492bd91'),
(440, 78, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(441, 78, '_about_youtube_video', 'field_655338582bd92'),
(442, 10, 'about_button_text', 'Explore Us'),
(443, 10, '_about_button_text', 'field_655339505469d'),
(444, 10, 'about_button_link', '#'),
(445, 10, '_about_button_link', 'field_6553395b5469e'),
(446, 81, 'orange_heading', 'OUR INTRODUCTION'),
(447, 81, '_orange_heading', 'field_655333d193279'),
(448, 81, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(449, 81, '_about_main_heading', 'field_6553356a5c607'),
(450, 81, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(451, 81, '_about_main_subheading', 'field_655335785c608'),
(452, 81, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(453, 81, '_about_description_1', 'field_655335875c609'),
(454, 81, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(455, 81, '_about_description_2', 'field_655335e15c60a'),
(456, 81, 'about_image_1', '76'),
(457, 81, '_about_image_1', 'field_655338352bd90'),
(458, 81, 'about_image_2', '77'),
(459, 81, '_about_image_2', 'field_655338492bd91'),
(460, 81, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(461, 81, '_about_youtube_video', 'field_655338582bd92'),
(462, 81, 'about_button_text', 'DISCOVER MORE'),
(463, 81, '_about_button_text', 'field_655339505469d'),
(464, 81, 'about_button_link', '#'),
(465, 81, '_about_button_link', 'field_6553395b5469e'),
(470, 10, 'second_section_group_second_section_background_image', ''),
(471, 10, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(472, 10, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(473, 10, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(474, 10, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(475, 10, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(476, 10, 'second_section_group', ''),
(477, 10, '_second_section_group', 'field_65533ce9e5489'),
(478, 88, 'orange_heading', 'OUR INTRODUCTION'),
(479, 88, '_orange_heading', 'field_655333d193279'),
(480, 88, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(481, 88, '_about_main_heading', 'field_6553356a5c607'),
(482, 88, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(483, 88, '_about_main_subheading', 'field_655335785c608'),
(484, 88, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(485, 88, '_about_description_1', 'field_655335875c609'),
(486, 88, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(487, 88, '_about_description_2', 'field_655335e15c60a'),
(488, 88, 'about_image_1', '76'),
(489, 88, '_about_image_1', 'field_655338352bd90'),
(490, 88, 'about_image_2', '77'),
(491, 88, '_about_image_2', 'field_655338492bd91'),
(492, 88, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(493, 88, '_about_youtube_video', 'field_655338582bd92'),
(494, 88, 'about_button_text', 'DISCOVER MORE'),
(495, 88, '_about_button_text', 'field_655339505469d'),
(496, 88, 'about_button_link', '#'),
(497, 88, '_about_button_link', 'field_6553395b5469e'),
(498, 88, 'second_section_group_second_section_background_image', '87'),
(499, 88, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(500, 88, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(501, 88, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(502, 88, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(503, 88, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(504, 88, 'second_section_group', ''),
(505, 88, '_second_section_group', 'field_65533ce9e5489'),
(508, 10, 'white_section_right_side_image', ''),
(509, 10, '_white_section_right_side_image', 'field_655341c402288'),
(510, 10, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(511, 10, '_white_section_content', 'field_655341e002289'),
(512, 92, 'orange_heading', 'OUR INTRODUCTION'),
(513, 92, '_orange_heading', 'field_655333d193279'),
(514, 92, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(515, 92, '_about_main_heading', 'field_6553356a5c607'),
(516, 92, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(517, 92, '_about_main_subheading', 'field_655335785c608'),
(518, 92, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(519, 92, '_about_description_1', 'field_655335875c609'),
(520, 92, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(521, 92, '_about_description_2', 'field_655335e15c60a'),
(522, 92, 'about_image_1', '76'),
(523, 92, '_about_image_1', 'field_655338352bd90'),
(524, 92, 'about_image_2', '77'),
(525, 92, '_about_image_2', 'field_655338492bd91'),
(526, 92, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(527, 92, '_about_youtube_video', 'field_655338582bd92'),
(528, 92, 'about_button_text', 'DISCOVER MORE'),
(529, 92, '_about_button_text', 'field_655339505469d'),
(530, 92, 'about_button_link', '#'),
(531, 92, '_about_button_link', 'field_6553395b5469e'),
(532, 92, 'second_section_group_second_section_background_image', '87'),
(533, 92, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(534, 92, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(535, 92, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(536, 92, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(537, 92, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(538, 92, 'second_section_group', ''),
(539, 92, '_second_section_group', 'field_65533ce9e5489'),
(540, 92, 'white_section_right_side_image', '91'),
(541, 92, '_white_section_right_side_image', 'field_655341c402288'),
(542, 92, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(543, 92, '_white_section_content', 'field_655341e002289'),
(544, 10, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(545, 10, '_about_white_section_button_text', 'field_65534395f3219'),
(546, 10, 'about_white_section_button_link', '#'),
(547, 10, '_about_white_section_button_link', 'field_655343d9f321a'),
(548, 95, 'orange_heading', 'OUR INTRODUCTION'),
(549, 95, '_orange_heading', 'field_655333d193279'),
(550, 95, 'about_main_heading', 'Schedule Your Driving Lessons with Us'),
(551, 95, '_about_main_heading', 'field_6553356a5c607'),
(552, 95, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(553, 95, '_about_main_subheading', 'field_655335785c608'),
(554, 95, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(555, 95, '_about_description_1', 'field_655335875c609'),
(556, 95, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(557, 95, '_about_description_2', 'field_655335e15c60a'),
(558, 95, 'about_image_1', '107'),
(559, 95, '_about_image_1', 'field_655338352bd90'),
(560, 95, 'about_image_2', ''),
(561, 95, '_about_image_2', 'field_655338492bd91'),
(562, 95, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(563, 95, '_about_youtube_video', 'field_655338582bd92'),
(564, 95, 'about_button_text', 'DISCOVER MORE'),
(565, 95, '_about_button_text', 'field_655339505469d'),
(566, 95, 'about_button_link', '#'),
(567, 95, '_about_button_link', 'field_6553395b5469e'),
(568, 95, 'second_section_group_second_section_background_image', '87'),
(569, 95, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(570, 95, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(571, 95, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(572, 95, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(573, 95, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(574, 95, 'second_section_group', ''),
(575, 95, '_second_section_group', 'field_65533ce9e5489'),
(576, 95, 'white_section_right_side_image', '91'),
(577, 95, '_white_section_right_side_image', 'field_655341c402288'),
(578, 95, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(579, 95, '_white_section_content', 'field_655341e002289'),
(580, 95, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(581, 95, '_about_white_section_button_text', 'field_65534395f3219'),
(582, 95, 'about_white_section_button_link', '#'),
(583, 95, '_about_white_section_button_link', 'field_655343d9f321a'),
(584, 96, '_form', '<div class=\"home3-form-bottom\">\n<div class=\"single-input-form-home3\">\n[select* reservationtable class:custom-select \"1 Person\" \"2 Persons\" \"3 Persons\" \"4 Persons\" \"5 Persons\"]\n</div>\n<div class=\"single-input-form-home3 \">\n[text datepicker class:walcf7-datepicker class:custom-select placeholder:\"Select Date\"]\n</div>\n<div class=\"single-input-form-home3 \">\n[text timepicker class:walcf7-timepicker class:custom-select placeholder:\"Select Time\"] \n</div>                      \n<div class=\"home3-form-btn\">\n[submit class:booktable_btn \"Book A Table\"]\n</div>\n</div>'),
(585, 96, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] \"Appointment Form\"\";s:6:\"sender\";s:38:\"[_site_title] <info@webbersunited.com>\";s:9:\"recipient\";s:46:\"[_site_admin_email], contact@webbersunited.com\";s:4:\"body\";s:236:\"From: [Name]\n      [email]\nSubject: \"Appointment Form\"\n\nMessage Body:\nName: [Name]\nEmail: [email]\nPhone: [tel]\nMessage: [comment]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(586, 96, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <info@webbersunited.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(587, 96, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(588, 96, '_additional_settings', ''),
(589, 96, '_locale', 'en_US'),
(590, 96, '_hash', '9276adc111b8281ba2919c7f4bdd5468e256d1b7'),
(593, 97, '_edit_last', '1'),
(594, 97, '_edit_lock', '1700812122:1'),
(595, 97, 'cfs_fields', 'a:3:{i:0;a:8:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:17:\"social_media_loop\";s:5:\"label\";s:17:\"Social Media Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:1;a:8:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:17:\"social_media_icon\";s:5:\"label\";s:17:\"Social Media Icon\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:9;s:6:\"weight\";i:1;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:17:\"social_media_link\";s:5:\"label\";s:17:\"Social Media Link\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:9;s:6:\"weight\";i:2;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}}'),
(596, 97, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"!=\";s:6:\"values\";a:3:{i:0;s:14:\"page-about.php\";i:1;s:16:\"page-contact.php\";i:2;s:13:\"page-home.php\";}}}'),
(597, 97, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"0\";}'),
(604, 99, '_edit_last', '1'),
(605, 99, '_wp_page_template', 'page-drivinglessonbook.php'),
(606, 99, '_edit_lock', '1700127914:1'),
(611, 108, 'orange_heading', 'OUR INTRODUCTION'),
(612, 108, '_orange_heading', 'field_655333d193279'),
(613, 108, 'about_main_heading', 'Best Driving School Calgary'),
(614, 108, '_about_main_heading', 'field_6553356a5c607'),
(615, 108, 'about_main_subheading', 'Vestibulum odio nisl, euismod sed elit sed, sagittis laoreet lacus.'),
(616, 108, '_about_main_subheading', 'field_655335785c608'),
(617, 108, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(618, 108, '_about_description_1', 'field_655335875c609'),
(619, 108, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(620, 108, '_about_description_2', 'field_655335e15c60a'),
(621, 108, 'about_image_1', '107'),
(622, 108, '_about_image_1', 'field_655338352bd90'),
(623, 108, 'about_image_2', ''),
(624, 108, '_about_image_2', 'field_655338492bd91'),
(625, 108, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(626, 108, '_about_youtube_video', 'field_655338582bd92'),
(627, 108, 'about_button_text', 'DISCOVER MORE'),
(628, 108, '_about_button_text', 'field_655339505469d'),
(629, 108, 'about_button_link', '#'),
(630, 108, '_about_button_link', 'field_6553395b5469e'),
(631, 108, 'second_section_group_second_section_background_image', '87'),
(632, 108, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(633, 108, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(634, 108, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(635, 108, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(636, 108, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(637, 108, 'second_section_group', ''),
(638, 108, '_second_section_group', 'field_65533ce9e5489'),
(639, 108, 'white_section_right_side_image', '91'),
(640, 108, '_white_section_right_side_image', 'field_655341c402288'),
(641, 108, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(642, 108, '_white_section_content', 'field_655341e002289'),
(643, 108, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(644, 108, '_about_white_section_button_text', 'field_65534395f3219'),
(645, 108, 'about_white_section_button_link', '#'),
(646, 108, '_about_white_section_button_link', 'field_655343d9f321a'),
(647, 109, 'orange_heading', 'OUR INTRODUCTION'),
(648, 109, '_orange_heading', 'field_655333d193279'),
(649, 109, 'about_main_heading', 'Best Driving School Calgary'),
(650, 109, '_about_main_heading', 'field_6553356a5c607'),
(651, 109, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(652, 109, '_about_main_subheading', 'field_655335785c608'),
(653, 109, 'about_description_1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(654, 109, '_about_description_1', 'field_655335875c609'),
(655, 109, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(656, 109, '_about_description_2', 'field_655335e15c60a'),
(657, 109, 'about_image_1', '107'),
(658, 109, '_about_image_1', 'field_655338352bd90'),
(659, 109, 'about_image_2', ''),
(660, 109, '_about_image_2', 'field_655338492bd91'),
(661, 109, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(662, 109, '_about_youtube_video', 'field_655338582bd92'),
(663, 109, 'about_button_text', 'DISCOVER MORE'),
(664, 109, '_about_button_text', 'field_655339505469d'),
(665, 109, 'about_button_link', '#'),
(666, 109, '_about_button_link', 'field_6553395b5469e'),
(667, 109, 'second_section_group_second_section_background_image', '87'),
(668, 109, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(669, 109, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(670, 109, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(671, 109, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(672, 109, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(673, 109, 'second_section_group', ''),
(674, 109, '_second_section_group', 'field_65533ce9e5489'),
(675, 109, 'white_section_right_side_image', '91'),
(676, 109, '_white_section_right_side_image', 'field_655341c402288'),
(677, 109, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(678, 109, '_white_section_content', 'field_655341e002289'),
(679, 109, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(680, 109, '_about_white_section_button_text', 'field_65534395f3219'),
(681, 109, 'about_white_section_button_link', '#'),
(682, 109, '_about_white_section_button_link', 'field_655343d9f321a'),
(683, 110, 'orange_heading', 'OUR INTRODUCTION'),
(684, 110, '_orange_heading', 'field_655333d193279'),
(685, 110, 'about_main_heading', 'Best Driving School Calgary'),
(686, 110, '_about_main_heading', 'field_6553356a5c607'),
(687, 110, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(688, 110, '_about_main_subheading', 'field_655335785c608'),
(689, 110, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(690, 110, '_about_description_1', 'field_655335875c609'),
(691, 110, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(692, 110, '_about_description_2', 'field_655335e15c60a'),
(693, 110, 'about_image_1', '107'),
(694, 110, '_about_image_1', 'field_655338352bd90'),
(695, 110, 'about_image_2', ''),
(696, 110, '_about_image_2', 'field_655338492bd91'),
(697, 110, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(698, 110, '_about_youtube_video', 'field_655338582bd92'),
(699, 110, 'about_button_text', 'DISCOVER MORE'),
(700, 110, '_about_button_text', 'field_655339505469d'),
(701, 110, 'about_button_link', '#'),
(702, 110, '_about_button_link', 'field_6553395b5469e'),
(703, 110, 'second_section_group_second_section_background_image', '87'),
(704, 110, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(705, 110, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(706, 110, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(707, 110, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(708, 110, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(709, 110, 'second_section_group', ''),
(710, 110, '_second_section_group', 'field_65533ce9e5489'),
(711, 110, 'white_section_right_side_image', '91'),
(712, 110, '_white_section_right_side_image', 'field_655341c402288'),
(713, 110, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(714, 110, '_white_section_content', 'field_655341e002289'),
(715, 110, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(716, 110, '_about_white_section_button_text', 'field_65534395f3219'),
(717, 110, 'about_white_section_button_link', '#'),
(718, 110, '_about_white_section_button_link', 'field_655343d9f321a'),
(719, 10, 'how_it_works_main_heading', 'How It Works?'),
(720, 10, '_how_it_works_main_heading', 'field_6555ca443989e'),
(721, 10, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(722, 10, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(723, 10, 'how_it_works_image', ''),
(724, 10, '_how_it_works_image', 'field_6555ca92398a0'),
(725, 111, 'orange_heading', 'OUR INTRODUCTION'),
(726, 111, '_orange_heading', 'field_655333d193279'),
(727, 111, 'about_main_heading', 'Best Driving School Calgary'),
(728, 111, '_about_main_heading', 'field_6553356a5c607'),
(729, 111, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(730, 111, '_about_main_subheading', 'field_655335785c608'),
(731, 111, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(732, 111, '_about_description_1', 'field_655335875c609'),
(733, 111, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(734, 111, '_about_description_2', 'field_655335e15c60a'),
(735, 111, 'about_image_1', '107'),
(736, 111, '_about_image_1', 'field_655338352bd90'),
(737, 111, 'about_image_2', ''),
(738, 111, '_about_image_2', 'field_655338492bd91'),
(739, 111, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(740, 111, '_about_youtube_video', 'field_655338582bd92'),
(741, 111, 'about_button_text', 'DISCOVER MORE'),
(742, 111, '_about_button_text', 'field_655339505469d'),
(743, 111, 'about_button_link', '#'),
(744, 111, '_about_button_link', 'field_6553395b5469e'),
(745, 111, 'second_section_group_second_section_background_image', '87'),
(746, 111, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(747, 111, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(748, 111, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(749, 111, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(750, 111, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(751, 111, 'second_section_group', ''),
(752, 111, '_second_section_group', 'field_65533ce9e5489'),
(753, 111, 'white_section_right_side_image', '91'),
(754, 111, '_white_section_right_side_image', 'field_655341c402288'),
(755, 111, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(756, 111, '_white_section_content', 'field_655341e002289'),
(757, 111, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(758, 111, '_about_white_section_button_text', 'field_65534395f3219'),
(759, 111, 'about_white_section_button_link', '#'),
(760, 111, '_about_white_section_button_link', 'field_655343d9f321a'),
(761, 111, 'how_it_works_main_heading', 'How It Works?'),
(762, 111, '_how_it_works_main_heading', 'field_6555ca443989e'),
(763, 111, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(764, 111, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(765, 111, 'how_it_works_image', '106'),
(766, 111, '_how_it_works_image', 'field_6555ca92398a0'),
(767, 10, 'our_best_feature_main_heading', 'Our Best Features'),
(768, 10, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(769, 115, 'orange_heading', 'OUR INTRODUCTION'),
(770, 115, '_orange_heading', 'field_655333d193279'),
(771, 115, 'about_main_heading', 'Best Driving School Calgary'),
(772, 115, '_about_main_heading', 'field_6553356a5c607'),
(773, 115, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(774, 115, '_about_main_subheading', 'field_655335785c608'),
(775, 115, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(776, 115, '_about_description_1', 'field_655335875c609'),
(777, 115, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(778, 115, '_about_description_2', 'field_655335e15c60a'),
(779, 115, 'about_image_1', '107'),
(780, 115, '_about_image_1', 'field_655338352bd90'),
(781, 115, 'about_image_2', ''),
(782, 115, '_about_image_2', 'field_655338492bd91'),
(783, 115, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(784, 115, '_about_youtube_video', 'field_655338582bd92'),
(785, 115, 'about_button_text', 'DISCOVER MORE'),
(786, 115, '_about_button_text', 'field_655339505469d'),
(787, 115, 'about_button_link', '#'),
(788, 115, '_about_button_link', 'field_6553395b5469e'),
(789, 115, 'second_section_group_second_section_background_image', '87'),
(790, 115, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(791, 115, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(792, 115, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(793, 115, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(794, 115, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(795, 115, 'second_section_group', ''),
(796, 115, '_second_section_group', 'field_65533ce9e5489'),
(797, 115, 'white_section_right_side_image', '91'),
(798, 115, '_white_section_right_side_image', 'field_655341c402288'),
(799, 115, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(800, 115, '_white_section_content', 'field_655341e002289'),
(801, 115, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(802, 115, '_about_white_section_button_text', 'field_65534395f3219'),
(803, 115, 'about_white_section_button_link', '#'),
(804, 115, '_about_white_section_button_link', 'field_655343d9f321a'),
(805, 115, 'how_it_works_main_heading', 'How It Works?'),
(806, 115, '_how_it_works_main_heading', 'field_6555ca443989e'),
(807, 115, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(808, 115, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(809, 115, 'how_it_works_image', '106'),
(810, 115, '_how_it_works_image', 'field_6555ca92398a0'),
(811, 115, 'our_best_feature_main_heading', 'Our Best Features'),
(812, 115, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(813, 118, '_edit_last', '1'),
(814, 118, '_edit_lock', '1700828785:1'),
(815, 118, 'cfs_fields', 'a:12:{i:0;a:8:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:18:\"food_quality_block\";s:5:\"label\";s:18:\"Food Quality Block\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:1;a:8:{s:2:\"id\";s:2:\"13\";s:4:\"name\";s:20:\"food_quality_heading\";s:5:\"label\";s:20:\"Food Quality Heading\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:12;s:6:\"weight\";i:1;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:20:\"food_quality_content\";s:5:\"label\";s:20:\"Food Quality Content\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:12;s:6:\"weight\";i:2;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}i:3;a:8:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:18:\"food_quality_image\";s:5:\"label\";s:18:\"Food Quality Image\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:12;s:6:\"weight\";i:3;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:4;a:8:{s:2:\"id\";s:2:\"34\";s:4:\"name\";s:18:\"why_choose_us_loop\";s:5:\"label\";s:18:\"Why Choose Us Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:4;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:5;a:8:{s:2:\"id\";s:2:\"35\";s:4:\"name\";s:21:\"why_choose_us_heading\";s:5:\"label\";s:21:\"Why Choose Us Heading\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:34;s:6:\"weight\";i:5;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:6;a:8:{s:2:\"id\";s:2:\"37\";s:4:\"name\";s:15:\"why_choose_icon\";s:5:\"label\";s:15:\"Why Choose Icon\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:34;s:6:\"weight\";i:6;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:7;a:8:{s:2:\"id\";s:2:\"36\";s:4:\"name\";s:21:\"why_choose_us_content\";s:5:\"label\";s:21:\"Why Choose Us Content\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:34;s:6:\"weight\";i:7;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}i:8;a:8:{s:2:\"id\";s:2:\"38\";s:4:\"name\";s:10:\"count_loop\";s:5:\"label\";s:10:\"Count Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:8;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:9;a:8:{s:2:\"id\";s:2:\"39\";s:4:\"name\";s:11:\"count_title\";s:5:\"label\";s:11:\"Count Title\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:38;s:6:\"weight\";i:9;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:10;a:8:{s:2:\"id\";s:2:\"40\";s:4:\"name\";s:10:\"count_icon\";s:5:\"label\";s:10:\"Count Icon\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:38;s:6:\"weight\";i:10;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:11;a:8:{s:2:\"id\";s:2:\"41\";s:4:\"name\";s:12:\"count_number\";s:5:\"label\";s:12:\"Count number\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:38;s:6:\"weight\";i:11;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}}'),
(816, 118, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:14:\"page-about.php\";}}}'),
(817, 118, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"0\";}'),
(834, 117, 'orange_heading', 'OUR INTRODUCTION'),
(835, 117, '_orange_heading', 'field_655333d193279'),
(836, 117, 'about_main_heading', 'Best Driving School Calgary'),
(837, 117, '_about_main_heading', 'field_6553356a5c607'),
(838, 117, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(839, 117, '_about_main_subheading', 'field_655335785c608'),
(840, 117, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(841, 117, '_about_description_1', 'field_655335875c609'),
(842, 117, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(843, 117, '_about_description_2', 'field_655335e15c60a'),
(844, 117, 'about_image_1', '107'),
(845, 117, '_about_image_1', 'field_655338352bd90'),
(846, 117, 'about_image_2', ''),
(847, 117, '_about_image_2', 'field_655338492bd91'),
(848, 117, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(849, 117, '_about_youtube_video', 'field_655338582bd92'),
(850, 117, 'about_button_text', 'DISCOVER MORE'),
(851, 117, '_about_button_text', 'field_655339505469d'),
(852, 117, 'about_button_link', '#'),
(853, 117, '_about_button_link', 'field_6553395b5469e'),
(854, 117, 'second_section_group_second_section_background_image', '87'),
(855, 117, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(856, 117, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(857, 117, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(858, 117, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(859, 117, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(860, 117, 'second_section_group', ''),
(861, 117, '_second_section_group', 'field_65533ce9e5489'),
(862, 117, 'white_section_right_side_image', '91'),
(863, 117, '_white_section_right_side_image', 'field_655341c402288'),
(864, 117, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(865, 117, '_white_section_content', 'field_655341e002289'),
(866, 117, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(867, 117, '_about_white_section_button_text', 'field_65534395f3219'),
(868, 117, 'about_white_section_button_link', '#'),
(869, 117, '_about_white_section_button_link', 'field_655343d9f321a'),
(870, 117, 'how_it_works_main_heading', 'How It Works?'),
(871, 117, '_how_it_works_main_heading', 'field_6555ca443989e'),
(872, 117, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(873, 117, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(874, 117, 'how_it_works_image', '106'),
(875, 117, '_how_it_works_image', 'field_6555ca92398a0'),
(876, 117, 'our_best_feature_main_heading', 'Our Best Features'),
(877, 117, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(902, 10, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(903, 10, '_best_feature_section_button', 'field_6555e68072ab1'),
(904, 10, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(905, 10, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(906, 117, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(907, 117, '_best_feature_section_button', 'field_6555e68072ab1'),
(908, 117, 'best_feature_section_button_link', '#'),
(909, 117, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(910, 124, '_form', '<div class=\"about-us-form-bottom\">\n<div class=\"single-input-form-about-us\">\n[text* Name class:about-us-input-custom class:name-icon placeholder \"Your Name\"]\n</div>\n<div class=\"single-input-form-about-us\">\n[email* email class:about-us-input-custom class:email-icon placeholder \"Email Address\"]\n</div>\n<div class=\"single-input-form-about-us\">\n[tel* tel class:about-us-input-custom class:mobile-icon placeholder \"Phone Number\"]\n</div>\n<div class=\"single-input-form-about-us\">\n[textarea message class:about-us-message class:message-icon placeholder \"Message\"]\n</div>\n<div class=\"send-message-btn\">\n[submit class:contsubtn \"Send Your Message\"]\n</div>\n</div>'),
(911, 124, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:40:\"[_site_title] \"Contact Form Information\"\";s:6:\"sender\";s:38:\"[_site_title] <info@webbersunited.com>\";s:9:\"recipient\";s:46:\"[_site_admin_email], contact@webbersunited.com\";s:4:\"body\";s:249:\"From: [Name]\n      [email]\nSubject: \"Contact Form Information\"\n\nMessage Body:\nName: [Name]\nEmail: [email]\nAddress: [address]\nMessage: [comment]\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(912, 124, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <info@webbersunited.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(913, 124, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(914, 124, '_additional_settings', ''),
(915, 124, '_locale', 'en_US'),
(916, 124, '_hash', '2276c02f9ad9c7aad4e14896d92db9cf751b3409'),
(920, 125, '_edit_last', '1'),
(921, 125, '_edit_lock', '1700199310:1'),
(922, 125, 'cfs_fields', 'a:8:{i:0;a:8:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:16:\"our_service_loop\";s:5:\"label\";s:16:\"Our Service Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:1;a:8:{s:2:\"id\";s:2:\"16\";s:4:\"name\";s:22:\"our_service_icon_image\";s:5:\"label\";s:22:\"Our Service Icon Image\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:15;s:6:\"weight\";i:1;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:2:\"17\";s:4:\"name\";s:22:\"our_service_icon_title\";s:5:\"label\";s:22:\"Our Service Icon Title\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:15;s:6:\"weight\";i:2;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:3;a:8:{s:2:\"id\";s:2:\"18\";s:4:\"name\";s:28:\"our_service_icon_description\";s:5:\"label\";s:28:\"Our Service Icon Description\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:15;s:6:\"weight\";i:3;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}i:4;a:8:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:20:\"brushup_package_loop\";s:5:\"label\";s:20:\"Brushup Package Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:4;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:5;a:8:{s:2:\"id\";s:2:\"20\";s:4:\"name\";s:21:\"brushup_package_price\";s:5:\"label\";s:21:\"Brushup Package Price\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:19;s:6:\"weight\";i:5;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:6;a:8:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:20:\"brushup_package_time\";s:5:\"label\";s:20:\"Brushup Package Time\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:19;s:6:\"weight\";i:6;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:7;a:8:{s:2:\"id\";s:2:\"22\";s:4:\"name\";s:30:\"brushup_package_lesson_details\";s:5:\"label\";s:30:\"Brushup Package Lesson Details\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:19;s:6:\"weight\";i:7;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}}'),
(923, 125, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:16:\"page-service.php\";}}}'),
(924, 125, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"1\";}'),
(963, 127, '_edit_last', '1'),
(964, 127, '_edit_lock', '1700200334:1'),
(985, 13, 'service_page_second_section_heading', 'All-In-One Training Package (Class 5): 10 Hours'),
(986, 13, '_service_page_second_section_heading', 'field_6556f2bc2875f'),
(987, 13, 'service_page_second_section_description', 'Elevate your driving skills with our best-in-class lessons! Our All-In-One Training Package offers top-notch on-road training and expert theory sessions, ensuring you excel. Plus, enjoy reduced insurance costs as a result. Don\'t just learn to drive, learn to drive confidently and save on insurance!\r\n\r\n<div class=\"packege-right\">\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;This all-inclusive training package includes<span class=\"orange\"> 10 hours </span>of practical on-road training</p>\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;substituted by <span class=\"orange\"> 15 hours</span> of in-class or online training for insurance reduction</p>\r\n                    </div>'),
(988, 13, '_service_page_second_section_description', 'field_6556f2cd28760'),
(989, 13, 'service_page_second_section_image', '131'),
(990, 13, '_service_page_second_section_image', 'field_6556f2d928761'),
(991, 15, 'service_page_second_section_heading', 'All-In-One Training Package (Class 5): 10 Hours'),
(992, 15, '_service_page_second_section_heading', 'field_6556f2bc2875f'),
(993, 15, 'service_page_second_section_description', 'Elevate your driving skills with our best-in-class lessons! Our All-In-One Training Package offers top-notch on-road training and expert theory sessions, ensuring you excel. Plus, enjoy reduced insurance costs as a result. Don\'t just learn to drive, learn to drive confidently and save on insurance!\r\n\r\n<div class=\"packege-right\">\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;This all-inclusive training package includes<span class=\"orange\"> 10 hours </span>of practical on-road training</p>\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;substituted by <span class=\"orange\"> 15 hours</span> of in-class or online training for insurance reduction</p>\r\n                    </div>'),
(994, 15, '_service_page_second_section_description', 'field_6556f2cd28760'),
(995, 15, 'service_page_second_section_image', '131'),
(996, 15, '_service_page_second_section_image', 'field_6556f2d928761'),
(1027, 132, 'service_page_second_section_heading', 'All-In-One Training Package (Class 5): 10 Hours'),
(1028, 132, '_service_page_second_section_heading', 'field_6556f2bc2875f'),
(1029, 132, 'service_page_second_section_description', 'Elevate your driving skills with our best-in-class lessons! Our All-In-One Training Package offers top-notch on-road training and expert theory sessions, ensuring you excel. Plus, enjoy reduced insurance costs as a result. Don\'t just learn to drive, learn to drive confidently and save on insurance!\r\n\r\n<div class=\"packege-right\">\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;This all-inclusive training package includes<span class=\"orange\"> 10 hours </span>of practical on-road training</p>\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;substituted by <span class=\"orange\"> 15 hours</span> of in-class or online training for insurance reduction</p>\r\n                    </div>'),
(1030, 132, '_service_page_second_section_description', 'field_6556f2cd28760'),
(1031, 132, 'service_page_second_section_image', '131'),
(1032, 132, '_service_page_second_section_image', 'field_6556f2d928761'),
(1063, 13, 'brushup_package_main_heading', 'Brush-Up Packages:'),
(1064, 13, '_brushup_package_main_heading', 'field_6556f8d7eff54'),
(1065, 13, 'brushup_package_main_subheading', 'Boost your confidence on the road with our Brush-Up Driving Course. Tailored lessons to refresh skills and increase your chances of passing. Drive with assurance!'),
(1066, 13, '_brushup_package_main_subheading', 'field_6556f8e7eff55'),
(1067, 132, 'brushup_package_main_heading', 'Brush-Up Packages:'),
(1068, 132, '_brushup_package_main_heading', 'field_6556f8d7eff54'),
(1069, 132, 'brushup_package_main_subheading', 'Boost your confidence on the road with our Brush-Up Driving Course. Tailored lessons to refresh skills and increase your chances of passing. Drive with assurance!'),
(1070, 132, '_brushup_package_main_subheading', 'field_6556f8e7eff55'),
(1119, 13, 'extra_other_category_service_group_extra_category_1st_heading', 'Car Rental: $85'),
(1120, 13, '_extra_other_category_service_group_extra_category_1st_heading', 'field_6556fc56513a6'),
(1121, 13, 'extra_other_category_service_group_extra_category_1st_description', 'Car Rental is also available for students who wish to give the road test but do not have access to a car (Quoted price excludes GST)'),
(1122, 13, '_extra_other_category_service_group_extra_category_1st_description', 'field_6556fc67513a7'),
(1123, 13, 'extra_other_category_service_group_extra_category_2nd_heading', 'Free Pick Up & Drop Off Location:'),
(1124, 13, '_extra_other_category_service_group_extra_category_2nd_heading', 'field_6556fc73513a8'),
(1125, 13, 'extra_other_category_service_group_extra_category_2nd_description', 'Free Pick Up / Drop Off service is available only at <span class=\"head\">Lions Park C-Train LRT Station.</span> An alternate pick-up/drop-off location can be arranged at the sole discreation of the instructor.'),
(1126, 13, '_extra_other_category_service_group_extra_category_2nd_description', 'field_6556fc7d513a9'),
(1127, 13, 'extra_other_category_service_group', ''),
(1128, 13, '_extra_other_category_service_group', 'field_6556fc49513a5'),
(1129, 135, 'service_page_second_section_heading', 'All-In-One Training Package (Class 5): 10 Hours'),
(1130, 135, '_service_page_second_section_heading', 'field_6556f2bc2875f'),
(1131, 135, 'service_page_second_section_description', 'Elevate your driving skills with our best-in-class lessons! Our All-In-One Training Package offers top-notch on-road training and expert theory sessions, ensuring you excel. Plus, enjoy reduced insurance costs as a result. Don\'t just learn to drive, learn to drive confidently and save on insurance!\r\n\r\n<div class=\"packege-right\">\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;This all-inclusive training package includes<span class=\"orange\"> 10 hours </span>of practical on-road training</p>\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;substituted by <span class=\"orange\"> 15 hours</span> of in-class or online training for insurance reduction</p>\r\n                    </div>'),
(1132, 135, '_service_page_second_section_description', 'field_6556f2cd28760'),
(1133, 135, 'service_page_second_section_image', '131'),
(1134, 135, '_service_page_second_section_image', 'field_6556f2d928761'),
(1135, 135, 'brushup_package_main_heading', 'Brush-Up Packages:'),
(1136, 135, '_brushup_package_main_heading', 'field_6556f8d7eff54'),
(1137, 135, 'brushup_package_main_subheading', 'Boost your confidence on the road with our Brush-Up Driving Course. Tailored lessons to refresh skills and increase your chances of passing. Drive with assurance!'),
(1138, 135, '_brushup_package_main_subheading', 'field_6556f8e7eff55'),
(1139, 135, 'extra_other_category_service_group_extra_category_1st_heading', 'Car Rental: $85'),
(1140, 135, '_extra_other_category_service_group_extra_category_1st_heading', 'field_6556fc56513a6'),
(1141, 135, 'extra_other_category_service_group_extra_category_1st_description', 'Car Rental is also available for students who wish to give the road test but do not have access to a car (Quoted price excludes GST)'),
(1142, 135, '_extra_other_category_service_group_extra_category_1st_description', 'field_6556fc67513a7'),
(1143, 135, 'extra_other_category_service_group_extra_category_2nd_heading', 'Free Pick Up & Drop Off Location:'),
(1144, 135, '_extra_other_category_service_group_extra_category_2nd_heading', 'field_6556fc73513a8'),
(1145, 135, 'extra_other_category_service_group_extra_category_2nd_description', 'Free Pick Up / Drop Off service is available only at <span class=\"head\">Lions Park C-Train LRT Station.</span> An alternate pick-up/drop-off location can be arranged at the sole discreation of the instructor.'),
(1146, 135, '_extra_other_category_service_group_extra_category_2nd_description', 'field_6556fc7d513a9'),
(1147, 135, 'extra_other_category_service_group', ''),
(1148, 135, '_extra_other_category_service_group', 'field_6556fc49513a5'),
(1169, 123, 'orange_heading', 'OUR INTRODUCTION'),
(1170, 123, '_orange_heading', 'field_655333d193279'),
(1171, 123, 'about_main_heading', 'Best Driving School Calgary'),
(1172, 123, '_about_main_heading', 'field_6553356a5c607'),
(1173, 123, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(1174, 123, '_about_main_subheading', 'field_655335785c608'),
(1175, 123, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(1176, 123, '_about_description_1', 'field_655335875c609'),
(1177, 123, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(1178, 123, '_about_description_2', 'field_655335e15c60a'),
(1179, 123, 'about_image_1', '107'),
(1180, 123, '_about_image_1', 'field_655338352bd90'),
(1181, 123, 'about_image_2', ''),
(1182, 123, '_about_image_2', 'field_655338492bd91'),
(1183, 123, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(1184, 123, '_about_youtube_video', 'field_655338582bd92'),
(1185, 123, 'about_button_text', 'DISCOVER MORE'),
(1186, 123, '_about_button_text', 'field_655339505469d'),
(1187, 123, 'about_button_link', 'http://localhost/star-lounge/book-now/'),
(1188, 123, '_about_button_link', 'field_6553395b5469e'),
(1189, 123, 'second_section_group_second_section_background_image', '87'),
(1190, 123, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(1191, 123, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(1192, 123, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(1193, 123, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(1194, 123, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(1195, 123, 'second_section_group', ''),
(1196, 123, '_second_section_group', 'field_65533ce9e5489'),
(1197, 123, 'white_section_right_side_image', '91'),
(1198, 123, '_white_section_right_side_image', 'field_655341c402288'),
(1199, 123, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(1200, 123, '_white_section_content', 'field_655341e002289'),
(1201, 123, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(1202, 123, '_about_white_section_button_text', 'field_65534395f3219'),
(1203, 123, 'about_white_section_button_link', '#'),
(1204, 123, '_about_white_section_button_link', 'field_655343d9f321a'),
(1205, 123, 'how_it_works_main_heading', 'How It Works?'),
(1206, 123, '_how_it_works_main_heading', 'field_6555ca443989e'),
(1207, 123, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(1208, 123, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(1209, 123, 'how_it_works_image', '106'),
(1210, 123, '_how_it_works_image', 'field_6555ca92398a0'),
(1211, 123, 'our_best_feature_main_heading', 'Our Best Features'),
(1212, 123, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(1213, 123, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(1214, 123, '_best_feature_section_button', 'field_6555e68072ab1'),
(1215, 123, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1216, 123, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(1225, 149, '_edit_last', '1'),
(1226, 149, '_edit_lock', '1700213428:1'),
(1232, 152, '_edit_last', '1'),
(1233, 152, '_edit_lock', '1700213493:1'),
(1239, 155, '_edit_last', '1'),
(1240, 155, '_edit_lock', '1700807153:1'),
(1246, 158, '_edit_last', '1'),
(1247, 158, '_edit_lock', '1700807121:1'),
(1253, 161, '_edit_last', '1'),
(1254, 161, '_edit_lock', '1700809714:1'),
(1262, 1, '_wp_trash_meta_status', 'publish'),
(1263, 1, '_wp_trash_meta_time', '1700214279'),
(1264, 1, '_wp_desired_post_slug', 'hello-world'),
(1265, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(1278, 5, 'resources_main_heading', 'Latest Resources'),
(1279, 5, '_resources_main_heading', 'field_6557362aac1c2'),
(1280, 148, 'banner_video', '25'),
(1281, 148, '_banner_video', 'field_65530f19de5df'),
(1282, 148, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(1283, 148, '_banner_heading', 'field_65530f42b321e'),
(1284, 148, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(1285, 148, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(1286, 148, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(1287, 148, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(1288, 148, 'step_process_main_heading', 'Our Four-step Process'),
(1289, 148, '_step_process_main_heading', 'field_65531c8fc3e00'),
(1290, 148, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(1291, 148, '_process_step_section_button_text', 'field_65532097b5187'),
(1292, 148, 'process_step_section_button_link', '#'),
(1293, 148, '_process_step_section_button_link', 'field_655320aeb5188'),
(1294, 148, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(1295, 148, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(1296, 148, 'home_page_last_orange_section_button_text', 'Discover More'),
(1297, 148, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(1298, 148, 'home_page_last_orange_section_button_link', '#'),
(1299, 148, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(1300, 148, 'resources_main_heading', 'Latest Resources'),
(1301, 148, '_resources_main_heading', 'field_6557362aac1c2'),
(1302, 168, '_menu_item_type', 'custom'),
(1303, 168, '_menu_item_menu_item_parent', '0'),
(1304, 168, '_menu_item_object_id', '168'),
(1305, 168, '_menu_item_object', 'custom'),
(1306, 168, '_menu_item_target', ''),
(1307, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1308, 168, '_menu_item_xfn', ''),
(1309, 168, '_menu_item_url', '#'),
(1311, 169, '_menu_item_type', 'custom'),
(1312, 169, '_menu_item_menu_item_parent', '0'),
(1313, 169, '_menu_item_object_id', '169'),
(1314, 169, '_menu_item_object', 'custom'),
(1315, 169, '_menu_item_target', ''),
(1316, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1317, 169, '_menu_item_xfn', ''),
(1318, 169, '_menu_item_url', '#'),
(1320, 170, '_menu_item_type', 'custom'),
(1321, 170, '_menu_item_menu_item_parent', '0'),
(1322, 170, '_menu_item_object_id', '170'),
(1323, 170, '_menu_item_object', 'custom'),
(1324, 170, '_menu_item_target', ''),
(1325, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1326, 170, '_menu_item_xfn', ''),
(1327, 170, '_menu_item_url', '#'),
(1329, 171, '_menu_item_type', 'custom'),
(1330, 171, '_menu_item_menu_item_parent', '0'),
(1331, 171, '_menu_item_object_id', '171'),
(1332, 171, '_menu_item_object', 'custom'),
(1333, 171, '_menu_item_target', ''),
(1334, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1335, 171, '_menu_item_xfn', ''),
(1336, 171, '_menu_item_url', '#'),
(1338, 172, '_wp_trash_meta_status', 'publish'),
(1339, 172, '_wp_trash_meta_time', '1700544781'),
(1340, 173, '_wp_trash_meta_status', 'publish'),
(1341, 173, '_wp_trash_meta_time', '1700544822'),
(1354, 167, 'banner_video', '25'),
(1355, 167, '_banner_video', 'field_65530f19de5df'),
(1356, 167, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(1357, 167, '_banner_heading', 'field_65530f42b321e'),
(1358, 167, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(1359, 167, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(1360, 167, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(1361, 167, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(1362, 167, 'step_process_main_heading', 'Our Four-step Process'),
(1363, 167, '_step_process_main_heading', 'field_65531c8fc3e00'),
(1364, 167, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(1365, 167, '_process_step_section_button_text', 'field_65532097b5187'),
(1366, 167, 'process_step_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1367, 167, '_process_step_section_button_link', 'field_655320aeb5188'),
(1368, 167, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(1369, 167, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(1370, 167, 'home_page_last_orange_section_button_text', 'Discover More'),
(1371, 167, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(1372, 167, 'home_page_last_orange_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1373, 167, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(1374, 167, 'resources_main_heading', 'Latest Resources'),
(1375, 167, '_resources_main_heading', 'field_6557362aac1c2'),
(1393, 8, '_wp_old_date', '2023-11-14'),
(1394, 12, '_wp_old_date', '2023-11-14'),
(1395, 16, '_wp_old_date', '2023-11-14'),
(1396, 20, '_wp_old_date', '2023-11-14'),
(1418, 5, 'under_banner_title', 'Schedule Your Driving Lessons Today'),
(1419, 5, '_under_banner_title', 'field_655d7997a276b'),
(1420, 5, 'under_banner_button_text', 'Schedule Lessons'),
(1421, 5, '_under_banner_button_text', 'field_655d79aea276c'),
(1422, 5, 'under_banner_button_link', 'http://localhost/star-lounge/book-now/'),
(1423, 5, '_under_banner_button_link', 'field_655d79bda276d'),
(1424, 175, 'banner_video', '25'),
(1425, 175, '_banner_video', 'field_65530f19de5df'),
(1426, 175, 'banner_heading', '<span>Experience safe</span><span>& enjoyable</span><span>lessons with </span><span class=\"color\"> Blue Bird Driving School! </span><span>Personalized driving</span><br> <span>lessons for all</span><span>levels, </span><span> empowering</span><span> you</span><span>to learn</span><span>at your own pace.</span><span class=\"color\">Drive with confidence</span><span> today! </span>'),
(1427, 175, '_banner_heading', 'field_65530f42b321e'),
(1428, 175, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(1429, 175, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(1430, 175, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(1431, 175, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(1432, 175, 'step_process_main_heading', 'Our Four-step Process'),
(1433, 175, '_step_process_main_heading', 'field_65531c8fc3e00'),
(1434, 175, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(1435, 175, '_process_step_section_button_text', 'field_65532097b5187'),
(1436, 175, 'process_step_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1437, 175, '_process_step_section_button_link', 'field_655320aeb5188'),
(1438, 175, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(1439, 175, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(1440, 175, 'home_page_last_orange_section_button_text', 'Discover More'),
(1441, 175, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(1442, 175, 'home_page_last_orange_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1443, 175, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(1444, 175, 'resources_main_heading', 'Latest Resources'),
(1445, 175, '_resources_main_heading', 'field_6557362aac1c2'),
(1446, 175, 'under_banner_title', 'Schedule Your Driving Lessons Today'),
(1447, 175, '_under_banner_title', 'field_655d7997a276b'),
(1448, 175, 'under_banner_button_text', 'Schedule Lessons'),
(1449, 175, '_under_banner_button_text', 'field_655d79aea276c'),
(1450, 175, 'under_banner_button_link', 'http://localhost/star-lounge/book-now/'),
(1451, 175, '_under_banner_button_link', 'field_655d79bda276d'),
(1464, 182, 'banner_video', '25'),
(1465, 182, '_banner_video', 'field_65530f19de5df'),
(1466, 182, 'banner_heading', 'Perfectly Light In Every Bite'),
(1467, 182, '_banner_heading', 'field_65530f42b321e'),
(1468, 182, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(1469, 182, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(1470, 182, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(1471, 182, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(1472, 182, 'step_process_main_heading', 'Our Four-step Process'),
(1473, 182, '_step_process_main_heading', 'field_65531c8fc3e00'),
(1474, 182, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(1475, 182, '_process_step_section_button_text', 'field_65532097b5187'),
(1476, 182, 'process_step_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1477, 182, '_process_step_section_button_link', 'field_655320aeb5188'),
(1478, 182, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(1479, 182, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(1480, 182, 'home_page_last_orange_section_button_text', 'Discover More'),
(1481, 182, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(1482, 182, 'home_page_last_orange_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1483, 182, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(1484, 182, 'resources_main_heading', 'Latest Resources'),
(1485, 182, '_resources_main_heading', 'field_6557362aac1c2'),
(1486, 182, 'under_banner_title', 'Schedule Your Driving Lessons Today'),
(1487, 182, '_under_banner_title', 'field_655d7997a276b'),
(1488, 182, 'under_banner_button_text', 'Schedule Lessons'),
(1489, 182, '_under_banner_button_text', 'field_655d79aea276c'),
(1490, 182, 'under_banner_button_link', 'http://localhost/star-lounge/book-now/'),
(1491, 182, '_under_banner_button_link', 'field_655d79bda276d'),
(1516, 8, '_wp_old_date', '2023-11-21'),
(1517, 12, '_wp_old_date', '2023-11-21'),
(1518, 16, '_wp_old_date', '2023-11-21'),
(1519, 20, '_wp_old_date', '2023-11-21'),
(1543, 5, 'banner_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1544, 5, '_banner_subheading', 'field_655ef15b20896'),
(1545, 182, 'banner_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1546, 182, '_banner_subheading', 'field_655ef15b20896'),
(1559, 5, 'banner_image', '191'),
(1560, 5, '_banner_image', 'field_65530f19de5df'),
(1561, 190, 'banner_video', '25'),
(1562, 190, '_banner_video', 'field_65530f19de5df'),
(1563, 190, 'banner_heading', 'Perfectly Light In Every Bite'),
(1564, 190, '_banner_heading', 'field_65530f42b321e'),
(1565, 190, 'banner_bottom_main_heading', 'Discover Excellence at Blue Bird Driving School – Calgary\'s Top Choice!'),
(1566, 190, '_banner_bottom_main_heading', 'field_655311f0b58c0'),
(1567, 190, 'banner_bottom_subheading', 'With over 5 years of expertise in Alberta, we specialize in crafting skilled, defensive, and safe drivers. Our patient, professional instructors are dedicated to your success, as reflected in our high passing rate of over 95%. Join us and experience driving excellence!'),
(1568, 190, '_banner_bottom_subheading', 'field_6553123ab58c1'),
(1569, 190, 'step_process_main_heading', 'Our Four-step Process'),
(1570, 190, '_step_process_main_heading', 'field_65531c8fc3e00'),
(1571, 190, 'process_step_section_button_text', 'DISCOVER MORE TO SCHEDULE APPOINTMENT'),
(1572, 190, '_process_step_section_button_text', 'field_65532097b5187'),
(1573, 190, 'process_step_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1574, 190, '_process_step_section_button_link', 'field_655320aeb5188');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1575, 190, 'home_page_last_orange_section_title', 'Schedule your lessons today!'),
(1576, 190, '_home_page_last_orange_section_title', 'field_6553286bb8a7f'),
(1577, 190, 'home_page_last_orange_section_button_text', 'Discover More'),
(1578, 190, '_home_page_last_orange_section_button_text', 'field_65532894b8a80'),
(1579, 190, 'home_page_last_orange_section_button_link', 'http://localhost/star-lounge/book-now/'),
(1580, 190, '_home_page_last_orange_section_button_link', 'field_655328a4b8a81'),
(1581, 190, 'resources_main_heading', 'Latest Resources'),
(1582, 190, '_resources_main_heading', 'field_6557362aac1c2'),
(1583, 190, 'under_banner_title', 'Schedule Your Driving Lessons Today'),
(1584, 190, '_under_banner_title', 'field_655d7997a276b'),
(1585, 190, 'under_banner_button_text', 'Schedule Lessons'),
(1586, 190, '_under_banner_button_text', 'field_655d79aea276c'),
(1587, 190, 'under_banner_button_link', 'http://localhost/star-lounge/book-now/'),
(1588, 190, '_under_banner_button_link', 'field_655d79bda276d'),
(1589, 190, 'banner_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1590, 190, '_banner_subheading', 'field_655ef15b20896'),
(1591, 190, 'banner_image', '191'),
(1592, 190, '_banner_image', 'field_65530f19de5df'),
(1593, 191, '_wp_attached_file', '2023/11/hero-1.png'),
(1594, 191, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:571;s:4:\"file\";s:18:\"2023/11/hero-1.png\";s:8:\"filesize\";i:474802;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1595, 5, 'process_step_icon', '<span class=\"fal fa-phone\"></span>'),
(1596, 5, 'process_step_title', 'Call'),
(1597, 5, 'process_step_description', 'Call us to find out the right driving lesson packages that suit your needs.'),
(1598, 5, 'process_step_icon', '<span class=\"fal fa-clock\"></span>'),
(1599, 5, 'process_step_title', 'Appointment'),
(1600, 5, 'process_step_description', 'Plan and make an appointment for your driving lessons.'),
(1601, 5, 'process_step_icon', '<span class=\"fal fa-users\"></span>'),
(1602, 5, 'process_step_title', 'Road Test'),
(1603, 5, 'process_step_description', 'Once you are ready, take the road test'),
(1604, 5, 'process_step_icon', '<span class=\"fal fa-dollar-circle\"></span>'),
(1605, 5, 'process_step_title', 'Pass'),
(1606, 5, 'process_step_description', 'Pass your road test and get your license!'),
(1619, 49, 'working_hours', '<div class=\"working-day\">\r\n                                <p class=\"homepage1-footer-txt1\">Monday - Friday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Saturday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Sunday</p>\r\n                            </div>\r\n                            <div class=\"working-time\">\r\n                                <p class=\"homepage1-footer-txt1\">09:00 - 22:00</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:30</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:00</p>\r\n                            </div>'),
(1620, 49, '_working_hours', 'field_655ef515c9e19'),
(1621, 193, 'logo', '57'),
(1622, 193, '_logo', 'field_6553249aa8b31'),
(1623, 193, 'footer_shortcontent', 'Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros.'),
(1624, 193, '_footer_shortcontent', 'field_655324bea8b32'),
(1625, 193, 'address', '90 Martinridge Grove NE, Calgary, AB, T3J 3M4'),
(1626, 193, '_address', 'field_65532541038d3'),
(1627, 193, 'phone_number', '+1 403.613.8074'),
(1628, 193, '_phone_number', 'field_6553255ebde30'),
(1629, 193, 'email', 'info@bluebirddriving.ca'),
(1630, 193, '_email', 'field_65532568bde31'),
(1631, 193, 'working_hours', '<div class=\"working-day\">\r\n                                <p class=\"homepage1-footer-txt1\">Monday - Friday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Saturday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Sunday</p>\r\n                            </div>\r\n                            <div class=\"working-time\">\r\n                                <p class=\"homepage1-footer-txt1\">09:00 - 22:00</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:30</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:00</p>\r\n                            </div>'),
(1632, 193, '_working_hours', 'field_655ef515c9e19'),
(1639, 195, 'logo', ''),
(1640, 195, '_logo', 'field_6553249aa8b31'),
(1641, 195, 'footer_shortcontent', 'Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros.'),
(1642, 195, '_footer_shortcontent', 'field_655324bea8b32'),
(1643, 195, 'address', '90 Martinridge Grove NE, Calgary, AB, T3J 3M4'),
(1644, 195, '_address', 'field_65532541038d3'),
(1645, 195, 'phone_number', '+1 403.613.8074'),
(1646, 195, '_phone_number', 'field_6553255ebde30'),
(1647, 195, 'email', 'info@bluebirddriving.ca'),
(1648, 195, '_email', 'field_65532568bde31'),
(1649, 195, 'working_hours', '<div class=\"working-day\">\r\n                                <p class=\"homepage1-footer-txt1\">Monday - Friday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Saturday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Sunday</p>\r\n                            </div>\r\n                            <div class=\"working-time\">\r\n                                <p class=\"homepage1-footer-txt1\">09:00 - 22:00</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:30</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:00</p>\r\n                            </div>'),
(1650, 195, '_working_hours', 'field_655ef515c9e19'),
(1651, 13, 'our_service_icon_image', '126'),
(1652, 13, 'our_service_icon_title', 'Certified Instructors'),
(1653, 13, 'our_service_icon_description', 'Certified Instructors: Learn from the best with our expert certified instructors guiding you every step of the way.'),
(1654, 13, 'our_service_icon_image', '126'),
(1655, 13, 'our_service_icon_title', 'Car Rentals'),
(1656, 13, 'our_service_icon_description', 'Car Rentals: Enjoy the convenience of hassle-free car rentals for your driving lessons, ensuring a seamless learning experience.'),
(1657, 13, 'our_service_icon_image', '126'),
(1658, 13, 'our_service_icon_title', 'Insurance Reduction Courses'),
(1659, 13, 'our_service_icon_description', 'Enroll in our specialized courses to reduce insurance premiums while enhancing your driving skills.'),
(1660, 13, 'our_service_icon_image', '126'),
(1661, 13, 'our_service_icon_title', 'Personalized Lessons'),
(1662, 13, 'our_service_icon_description', 'Tailored lessons designed to meet your specific needs, providing focused and effective learning.'),
(1663, 13, 'our_service_icon_image', '126'),
(1664, 13, 'our_service_icon_title', 'Self Paced Learning'),
(1665, 13, 'our_service_icon_description', 'Progress at your own speed with our flexible self-paced learning options, empowering you to learn comfortably.'),
(1666, 13, 'our_service_icon_image', '126'),
(1667, 13, 'our_service_icon_title', 'Top-Rated School'),
(1668, 13, 'our_service_icon_description', 'Choose the top-rated driving school in town, where quality education and excellent service are our top priorities.'),
(1669, 13, 'brushup_package_price', '$125'),
(1670, 13, 'brushup_package_time', '1.5 Hours'),
(1671, 13, 'brushup_package_lesson_details', '<p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;1.5 Hours of hands-on practical lessons</p><p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;Free Pick Up / Drop Off Service*</p>'),
(1672, 13, 'brushup_package_price', '$240'),
(1673, 13, 'brushup_package_time', '3 Hours'),
(1674, 13, 'brushup_package_lesson_details', '<p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;3 Hours of hands-on practical lessons</p><p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;Free Pick Up / Drop Off Service*</p>'),
(1675, 13, 'brushup_package_price', '$350'),
(1676, 13, 'brushup_package_time', '4.5 Hours'),
(1677, 13, 'brushup_package_lesson_details', '<p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;4.5 Hours of hands-on practical lessons</p><p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;Free Pick Up / Drop Off Service*</p>'),
(1678, 13, 'brushup_package_price', '$575'),
(1679, 13, 'brushup_package_time', '7.5 Hours'),
(1680, 13, 'brushup_package_lesson_details', '<p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;7.5 Hours of hands-on practical lessons</p><p><span><i class=\"bi bi-check2-circle\"></i></span>&nbsp;Free Pick Up / Drop Off Service*</p>'),
(1681, 147, 'service_page_second_section_heading', 'All-In-One Training Package (Class 5): 10 Hours'),
(1682, 147, '_service_page_second_section_heading', 'field_6556f2bc2875f'),
(1683, 147, 'service_page_second_section_description', 'Elevate your driving skills with our best-in-class lessons! Our All-In-One Training Package offers top-notch on-road training and expert theory sessions, ensuring you excel. Plus, enjoy reduced insurance costs as a result. Don\'t just learn to drive, learn to drive confidently and save on insurance!\r\n\r\n<div class=\"packege-right\">\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;This all-inclusive training package includes<span class=\"orange\"> 10 hours </span>of practical on-road training</p>\r\n                        <p><span><i class=\"bi bi-check-all\"></i></span>&nbsp;substituted by <span class=\"orange\"> 15 hours</span> of in-class or online training for insurance reduction</p>\r\n                    </div>'),
(1684, 147, '_service_page_second_section_description', 'field_6556f2cd28760'),
(1685, 147, 'service_page_second_section_image', '131'),
(1686, 147, '_service_page_second_section_image', 'field_6556f2d928761'),
(1687, 147, 'brushup_package_main_heading', 'Brush-Up Packages:'),
(1688, 147, '_brushup_package_main_heading', 'field_6556f8d7eff54'),
(1689, 147, 'brushup_package_main_subheading', 'Boost your confidence on the road with our Brush-Up Driving Course. Tailored lessons to refresh skills and increase your chances of passing. Drive with assurance!'),
(1690, 147, '_brushup_package_main_subheading', 'field_6556f8e7eff55'),
(1691, 147, 'extra_other_category_service_group_extra_category_1st_heading', 'Car Rental: $85'),
(1692, 147, '_extra_other_category_service_group_extra_category_1st_heading', 'field_6556fc56513a6'),
(1693, 147, 'extra_other_category_service_group_extra_category_1st_description', 'Car Rental is also available for students who wish to give the road test but do not have access to a car (Quoted price excludes GST)'),
(1694, 147, '_extra_other_category_service_group_extra_category_1st_description', 'field_6556fc67513a7'),
(1695, 147, 'extra_other_category_service_group_extra_category_2nd_heading', 'Free Pick Up & Drop Off Location:'),
(1696, 147, '_extra_other_category_service_group_extra_category_2nd_heading', 'field_6556fc73513a8'),
(1697, 147, 'extra_other_category_service_group_extra_category_2nd_description', 'Free Pick Up / Drop Off service is available only at <span class=\"head\">Lions Park C-Train LRT Station.</span> An alternate pick-up/drop-off location can be arranged at the sole discreation of the instructor.'),
(1698, 147, '_extra_other_category_service_group_extra_category_2nd_description', 'field_6556fc7d513a9'),
(1699, 147, 'extra_other_category_service_group', ''),
(1700, 147, '_extra_other_category_service_group', 'field_6556fc49513a5'),
(1701, 198, '_edit_last', '1'),
(1702, 198, '_edit_lock', '1700723842:1'),
(1703, 198, '_wp_page_template', 'page-event.php'),
(1704, 200, '_menu_item_type', 'post_type'),
(1705, 200, '_menu_item_menu_item_parent', '0'),
(1706, 200, '_menu_item_object_id', '198'),
(1707, 200, '_menu_item_object', 'page'),
(1708, 200, '_menu_item_target', ''),
(1709, 200, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(1710, 200, '_menu_item_xfn', ''),
(1711, 200, '_menu_item_url', ''),
(1713, 201, '_edit_last', '1'),
(1714, 201, '_edit_lock', '1700724122:1'),
(1715, 201, '_wp_page_template', 'page-reciepe.php'),
(1716, 203, '_menu_item_type', 'post_type'),
(1717, 203, '_menu_item_menu_item_parent', '0'),
(1718, 203, '_menu_item_object_id', '201'),
(1719, 203, '_menu_item_object', 'page'),
(1720, 203, '_menu_item_target', ''),
(1721, 203, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(1722, 203, '_menu_item_xfn', ''),
(1723, 203, '_menu_item_url', ''),
(1725, 204, '_edit_last', '1'),
(1726, 204, '_edit_lock', '1700817485:1'),
(1727, 204, '_wp_page_template', 'page-reservation.php'),
(1728, 206, '_menu_item_type', 'post_type'),
(1729, 206, '_menu_item_menu_item_parent', '0'),
(1730, 206, '_menu_item_object_id', '204'),
(1731, 206, '_menu_item_object', 'page'),
(1732, 206, '_menu_item_target', ''),
(1733, 206, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(1734, 206, '_menu_item_xfn', ''),
(1735, 206, '_menu_item_url', ''),
(1737, 207, '_edit_last', '1'),
(1738, 207, '_edit_lock', '1700737541:1'),
(1739, 209, '_edit_last', '1'),
(1740, 209, '_edit_lock', '1700804070:1'),
(1741, 210, '_wp_attached_file', '2023/11/blog-1.png'),
(1742, 210, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:18:\"2023/11/blog-1.png\";s:8:\"filesize\";i:872467;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1743, 209, '_thumbnail_id', '210'),
(1744, 209, 'reservation_extra_field_add_content', 'IN DINNER ON SEPTEMBER 20, 2022'),
(1745, 209, '_reservation_extra_field_add_content', 'field_655f122efb9bd'),
(1746, 211, '_edit_last', '1'),
(1747, 211, '_edit_lock', '1700733107:1'),
(1748, 212, '_wp_attached_file', '2023/11/blog-3.png'),
(1749, 212, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:18:\"2023/11/blog-3.png\";s:8:\"filesize\";i:777133;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1750, 211, '_thumbnail_id', '212'),
(1751, 211, 'reservation_extra_field_add_content', 'IN DINNER ON SEPTEMBER 20, 2022'),
(1752, 211, '_reservation_extra_field_add_content', 'field_655f122efb9bd'),
(1753, 214, '_edit_last', '1'),
(1754, 214, '_edit_lock', '1700803066:1'),
(1755, 216, '_edit_last', '1'),
(1756, 216, '_edit_lock', '1700737496:1'),
(1757, 216, 'cfs_fields', 'a:7:{i:0;a:8:{s:2:\"id\";s:2:\"28\";s:4:\"name\";s:9:\"menu_type\";s:5:\"label\";s:9:\"Menu Type\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:1;a:8:{s:2:\"id\";s:2:\"29\";s:4:\"name\";s:19:\"available_menu_time\";s:5:\"label\";s:19:\"Available Menu Time\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:1;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:2:\"23\";s:4:\"name\";s:14:\"menu_item_loop\";s:5:\"label\";s:14:\"Menu Item Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:2;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:3;a:8:{s:2:\"id\";s:2:\"24\";s:4:\"name\";s:15:\"menu_item_image\";s:5:\"label\";s:15:\"Menu Item Image\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:23;s:6:\"weight\";i:3;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:4;a:8:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:15:\"menu_item_title\";s:5:\"label\";s:15:\"Menu Item Title\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:23;s:6:\"weight\";i:4;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:5;a:8:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:17:\"menu_item_content\";s:5:\"label\";s:17:\"Menu Item Content\";s:4:\"type\";s:8:\"textarea\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:23;s:6:\"weight\";i:5;s:7:\"options\";a:3:{s:13:\"default_value\";s:0:\"\";s:10:\"formatting\";s:7:\"auto_br\";s:8:\"required\";s:1:\"0\";}}i:6;a:8:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:15:\"menu_item_price\";s:5:\"label\";s:15:\"Menu Item Price\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:23;s:6:\"weight\";i:6;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}}'),
(1758, 216, 'cfs_rules', 'a:2:{s:10:\"post_types\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:4:\"menu\";}}s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"!=\";s:6:\"values\";a:8:{i:0;s:14:\"page-about.php\";i:1;s:16:\"page-contact.php\";i:2;s:26:\"page-drivinglessonbook.php\";i:3;s:14:\"page-event.php\";i:4;s:13:\"page-home.php\";i:5;s:16:\"page-ourmenu.php\";i:6;s:16:\"page-reciepe.php\";i:7;s:20:\"page-reservation.php\";}}}'),
(1759, 216, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"0\";}'),
(1760, 217, '_wp_attached_file', '2023/11/menu-1.png'),
(1761, 217, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:170;s:4:\"file\";s:18:\"2023/11/menu-1.png\";s:8:\"filesize\";i:76309;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1766, 218, '_wp_attached_file', '2023/11/menu-2.png'),
(1767, 218, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:170;s:4:\"file\";s:18:\"2023/11/menu-2.png\";s:8:\"filesize\";i:85672;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1768, 219, '_wp_attached_file', '2023/11/menu-3.png'),
(1769, 219, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:170;s:4:\"file\";s:18:\"2023/11/menu-3.png\";s:8:\"filesize\";i:65624;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1770, 220, '_wp_attached_file', '2023/11/menu-4.png'),
(1771, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:170;s:4:\"file\";s:18:\"2023/11/menu-4.png\";s:8:\"filesize\";i:60233;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1788, 221, '_edit_last', '1'),
(1789, 221, '_edit_lock', '1700803071:1'),
(1842, 214, 'menu_type', 'BREAKFAST'),
(1843, 214, 'available_menu_time', 'Monday to Sunday 8am to 11am'),
(1844, 214, 'menu_item_image', '217'),
(1845, 214, 'menu_item_title', 'Antipasto Salad'),
(1846, 214, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.'),
(1847, 214, 'menu_item_price', '$20'),
(1848, 214, 'menu_item_image', '218'),
(1849, 214, 'menu_item_title', 'Chicken Biryani'),
(1850, 214, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.'),
(1851, 214, 'menu_item_price', '$35'),
(1852, 214, 'menu_item_image', '219'),
(1853, 214, 'menu_item_title', 'Finger Chicken'),
(1854, 214, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.'),
(1855, 214, 'menu_item_price', '$12'),
(1856, 214, 'menu_item_image', '220'),
(1857, 214, 'menu_item_title', 'Orange Juice'),
(1858, 214, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.'),
(1859, 214, 'menu_item_price', '$45'),
(1860, 221, 'menu_type', 'Lunch'),
(1861, 221, 'available_menu_time', 'Monday to Sunday 8am to 11am'),
(1862, 221, 'menu_item_image', '217'),
(1863, 221, 'menu_item_title', 'Antipasto Salad'),
(1864, 221, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato, and Italian herbs.'),
(1865, 221, 'menu_item_price', '$20'),
(1866, 221, 'menu_item_image', '218'),
(1867, 221, 'menu_item_title', 'Chicken Biryani'),
(1868, 221, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato, and Italian herbs.'),
(1869, 221, 'menu_item_price', '$35'),
(1870, 221, 'menu_item_image', '219'),
(1871, 221, 'menu_item_title', 'Finger Chicken'),
(1872, 221, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato, and Italian herbs.'),
(1873, 221, 'menu_item_price', '$12'),
(1874, 221, 'menu_item_image', '220'),
(1875, 221, 'menu_item_title', 'Orange Juice'),
(1876, 221, 'menu_item_content', 'Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato, and Italian herbs.'),
(1877, 221, 'menu_item_price', '$45'),
(1878, 222, '_edit_last', '1'),
(1879, 222, '_edit_lock', '1700737834:1'),
(1880, 204, 'reservation_1st_section_heading', 'Perfectly Light In Every Bite'),
(1881, 204, '_reservation_1st_section_heading', 'field_655f32bebe677'),
(1882, 204, 'reservation_1st_section_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1883, 204, '_reservation_1st_section_subheading', 'field_655f32e8be678'),
(1884, 205, 'reservation_1st_section_heading', 'Perfectly Light In Every Bite'),
(1885, 205, '_reservation_1st_section_heading', 'field_655f32bebe677'),
(1886, 205, 'reservation_1st_section_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1887, 205, '_reservation_1st_section_subheading', 'field_655f32e8be678'),
(1888, 225, 'reservation_1st_section_heading', 'Perfectly Light In Every Bite'),
(1889, 225, '_reservation_1st_section_heading', 'field_655f32bebe677'),
(1890, 225, 'reservation_1st_section_subheading', 'We have a proper passion for cooking. Love is the secret ingredient that makes all our meals taste better and magical.'),
(1891, 225, '_reservation_1st_section_subheading', 'field_655f32e8be678'),
(1892, 226, '_edit_last', '1'),
(1893, 226, '_edit_lock', '1700742685:1'),
(1894, 226, 'cfs_fields', 'a:3:{i:0;a:8:{s:2:\"id\";s:2:\"30\";s:4:\"name\";s:12:\"gallery_loop\";s:5:\"label\";s:12:\"Gallery Loop\";s:4:\"type\";s:4:\"loop\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:5:{s:11:\"row_display\";s:1:\"0\";s:9:\"row_label\";s:8:\"Loop Row\";s:12:\"button_label\";s:7:\"Add Row\";s:9:\"limit_min\";s:0:\"\";s:9:\"limit_max\";s:0:\"\";}}i:1;a:8:{s:2:\"id\";s:2:\"32\";s:4:\"name\";s:17:\"gallery_add_title\";s:5:\"label\";s:17:\"Gallery Add Title\";s:4:\"type\";s:4:\"text\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:30;s:6:\"weight\";i:1;s:7:\"options\";a:2:{s:13:\"default_value\";s:0:\"\";s:8:\"required\";s:1:\"0\";}}i:2;a:8:{s:2:\"id\";s:2:\"31\";s:4:\"name\";s:13:\"gallery_image\";s:5:\"label\";s:13:\"Gallery Image\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:30;s:6:\"weight\";i:2;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}}'),
(1895, 226, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:20:\"page-reservation.php\";}}}'),
(1896, 226, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:6:\"normal\";s:11:\"hide_editor\";s:1:\"0\";}'),
(1897, 227, '_wp_attached_file', '2023/11/gallery-1.png'),
(1898, 227, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/gallery-1.png\";s:8:\"filesize\";i:563896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1899, 228, '_wp_attached_file', '2023/11/gallery-2.png'),
(1900, 228, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/gallery-2.png\";s:8:\"filesize\";i:536887;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1905, 229, '_wp_attached_file', '2023/11/gallery-3.png'),
(1906, 229, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/gallery-3.png\";s:8:\"filesize\";i:556071;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1907, 230, '_wp_attached_file', '2023/11/gallery-4.png'),
(1908, 230, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/gallery-4.png\";s:8:\"filesize\";i:581056;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1925, 231, '_edit_last', '1'),
(1926, 231, '_edit_lock', '1700803437:1'),
(1927, 232, '_wp_attached_file', '2023/11/blog-1-1.png'),
(1928, 232, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2023/11/blog-1-1.png\";s:8:\"filesize\";i:412339;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1929, 231, '_thumbnail_id', '232'),
(1930, 233, '_edit_last', '1'),
(1931, 233, '_edit_lock', '1700807022:1'),
(1932, 234, '_wp_attached_file', '2023/11/blog-2.png'),
(1933, 234, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:550;s:4:\"file\";s:18:\"2023/11/blog-2.png\";s:8:\"filesize\";i:451676;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1934, 233, '_thumbnail_id', '234'),
(1935, 235, '_edit_last', '1'),
(1936, 235, '_edit_lock', '1700806574:1'),
(1937, 235, '_wp_page_template', 'default'),
(1938, 237, '_menu_item_type', 'post_type'),
(1939, 237, '_menu_item_menu_item_parent', '0'),
(1940, 237, '_menu_item_object_id', '235'),
(1941, 237, '_menu_item_object', 'page'),
(1942, 237, '_menu_item_target', ''),
(1943, 237, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(1944, 237, '_menu_item_xfn', ''),
(1945, 237, '_menu_item_url', ''),
(1947, 8, '_wp_old_date', '2023-11-23'),
(1948, 12, '_wp_old_date', '2023-11-23'),
(1949, 16, '_wp_old_date', '2023-11-23'),
(1950, 200, '_wp_old_date', '2023-11-23'),
(1951, 203, '_wp_old_date', '2023-11-23'),
(1952, 206, '_wp_old_date', '2023-11-23'),
(1953, 20, '_wp_old_date', '2023-11-23'),
(1954, 238, '_wp_attached_file', '2023/11/blog-1-2.png'),
(1955, 238, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2023/11/blog-1-2.png\";s:8:\"filesize\";i:872467;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1956, 161, '_thumbnail_id', '238'),
(1959, 161, '_wp_old_slug', 'traffic-safety-programs'),
(1960, 240, '_wp_attached_file', '2023/11/blog-3-1.png'),
(1961, 240, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2023/11/blog-3-1.png\";s:8:\"filesize\";i:777133;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1962, 158, '_thumbnail_id', '240'),
(1965, 158, '_wp_old_slug', 'alberta-transportation'),
(1966, 242, '_wp_attached_file', '2023/11/blog-4.png'),
(1967, 242, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:18:\"2023/11/blog-4.png\";s:8:\"filesize\";i:776013;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1968, 155, '_thumbnail_id', '242'),
(1971, 155, '_wp_old_slug', 'class-7-practice-test'),
(1972, 152, '_wp_trash_meta_status', 'publish'),
(1973, 152, '_wp_trash_meta_time', '1700807300'),
(1974, 152, '_wp_desired_post_slug', 'alberta-drivers-guide-2023'),
(1975, 149, '_wp_trash_meta_status', 'publish'),
(1976, 149, '_wp_trash_meta_time', '1700807303'),
(1977, 149, '_wp_desired_post_slug', 'alberta-road-test-booking'),
(1996, 196, 'logo', ''),
(1997, 196, '_logo', 'field_6553249aa8b31'),
(1998, 196, 'footer_shortcontent', 'Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros.'),
(1999, 196, '_footer_shortcontent', 'field_655324bea8b32'),
(2000, 196, 'address', '90 Martinridge Grove NE, Calgary, AB, T3J 3M4'),
(2001, 196, '_address', 'field_65532541038d3'),
(2002, 196, 'phone_number', '+1 (234) 567 8899'),
(2003, 196, '_phone_number', 'field_6553255ebde30'),
(2004, 196, 'email', 'info@bluebirddriving.ca'),
(2005, 196, '_email', 'field_65532568bde31'),
(2006, 196, 'working_hours', '<div class=\"working-day\">\r\n                                <p class=\"homepage1-footer-txt1\">Monday - Friday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Saturday</p>\r\n                                <p class=\"homepage1-footer-txt1\">Sunday</p>\r\n                            </div>\r\n                            <div class=\"working-time\">\r\n                                <p class=\"homepage1-footer-txt1\">09:00 - 22:00</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:30</p>\r\n                                <p class=\"homepage1-footer-txt1\">11:00 - 23:00</p>\r\n                            </div>'),
(2007, 196, '_working_hours', 'field_655ef515c9e19'),
(2021, 96, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(2022, 49, 'social_media_icon', '<i class=\"fab fa-facebook-f\"></i>'),
(2023, 49, 'social_media_link', 'https://www.facebook.com/'),
(2024, 49, 'social_media_icon', '<i class=\"fab fa-instagram\"></i>'),
(2025, 49, 'social_media_link', 'https://www.instagram.com/'),
(2026, 49, 'social_media_icon', '<i class=\"fab fa-linkedin-in\"></i>'),
(2027, 49, 'social_media_link', '#'),
(2028, 246, '_edit_last', '1'),
(2029, 246, '_edit_lock', '1700815061:1'),
(2030, 249, '_wp_attached_file', '2023/11/contact-1.png'),
(2031, 249, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:270;s:6:\"height\";i:490;s:4:\"file\";s:21:\"2023/11/contact-1.png\";s:8:\"filesize\";i:291669;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2032, 250, '_wp_attached_file', '2023/11/contact-2.png'),
(2033, 250, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:650;s:4:\"file\";s:21:\"2023/11/contact-2.png\";s:8:\"filesize\";i:377241;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2034, 17, 'contact_page_right_side_image_1', '249'),
(2035, 17, '_contact_page_right_side_image_1', 'field_65605ef1221c6'),
(2036, 17, 'contact_page_right_side_image_2', '250'),
(2037, 17, '_contact_page_right_side_image_2', 'field_65605f13221c7'),
(2038, 18, 'contact_page_right_side_image_1', '249'),
(2039, 18, '_contact_page_right_side_image_1', 'field_65605ef1221c6'),
(2040, 18, 'contact_page_right_side_image_2', '250'),
(2041, 18, '_contact_page_right_side_image_2', 'field_65605f13221c7'),
(2050, 204, 'gallery_add_title', 'Kebab'),
(2051, 204, 'gallery_image', '227'),
(2052, 204, 'gallery_add_title', 'Finger Roll'),
(2053, 204, 'gallery_image', '228'),
(2054, 204, 'gallery_add_title', 'Chicken'),
(2055, 204, 'gallery_image', '229'),
(2056, 204, 'gallery_add_title', 'Pasta'),
(2057, 204, 'gallery_image', '230'),
(2066, 10, 'top_heading', 'Our Restaurant'),
(2067, 10, '_top_heading', 'field_655333d193279'),
(2068, 10, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2069, 10, '_about_description', 'field_655335875c609'),
(2070, 176, 'orange_heading', 'OUR INTRODUCTION'),
(2071, 176, '_orange_heading', 'field_655333d193279'),
(2072, 176, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2073, 176, '_about_main_heading', 'field_6553356a5c607'),
(2074, 176, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2075, 176, '_about_main_subheading', 'field_655335785c608'),
(2076, 176, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2077, 176, '_about_description_1', 'field_655335875c609'),
(2078, 176, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2079, 176, '_about_description_2', 'field_655335e15c60a'),
(2080, 176, 'about_image_1', ''),
(2081, 176, '_about_image_1', 'field_655338352bd90'),
(2082, 176, 'about_image_2', ''),
(2083, 176, '_about_image_2', 'field_655338492bd91'),
(2084, 176, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2085, 176, '_about_youtube_video', 'field_655338582bd92'),
(2086, 176, 'about_button_text', 'DISCOVER MORE'),
(2087, 176, '_about_button_text', 'field_655339505469d'),
(2088, 176, 'about_button_link', 'http://localhost/star-lounge/book-now/'),
(2089, 176, '_about_button_link', 'field_6553395b5469e'),
(2090, 176, 'second_section_group_second_section_background_image', ''),
(2091, 176, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2092, 176, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2093, 176, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2094, 176, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2095, 176, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2096, 176, 'second_section_group', ''),
(2097, 176, '_second_section_group', 'field_65533ce9e5489'),
(2098, 176, 'white_section_right_side_image', ''),
(2099, 176, '_white_section_right_side_image', 'field_655341c402288'),
(2100, 176, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2101, 176, '_white_section_content', 'field_655341e002289'),
(2102, 176, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2103, 176, '_about_white_section_button_text', 'field_65534395f3219'),
(2104, 176, 'about_white_section_button_link', '#'),
(2105, 176, '_about_white_section_button_link', 'field_655343d9f321a'),
(2106, 176, 'how_it_works_main_heading', 'How It Works?'),
(2107, 176, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2108, 176, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2109, 176, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2110, 176, 'how_it_works_image', ''),
(2111, 176, '_how_it_works_image', 'field_6555ca92398a0'),
(2112, 176, 'our_best_feature_main_heading', 'Our Best Features'),
(2113, 176, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2114, 176, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2115, 176, '_best_feature_section_button', 'field_6555e68072ab1'),
(2116, 176, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2117, 176, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2118, 176, 'top_heading', 'Our Restaurant'),
(2119, 176, '_top_heading', 'field_655333d193279'),
(2120, 176, 'about_description', 'Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2121, 176, '_about_description', 'field_655335875c609'),
(2130, 252, 'orange_heading', 'OUR INTRODUCTION'),
(2131, 252, '_orange_heading', 'field_655333d193279'),
(2132, 252, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2133, 252, '_about_main_heading', 'field_6553356a5c607'),
(2134, 252, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2135, 252, '_about_main_subheading', 'field_655335785c608'),
(2136, 252, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2137, 252, '_about_description_1', 'field_655335875c609'),
(2138, 252, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2139, 252, '_about_description_2', 'field_655335e15c60a'),
(2140, 252, 'about_image_1', ''),
(2141, 252, '_about_image_1', 'field_655338352bd90'),
(2142, 252, 'about_image_2', ''),
(2143, 252, '_about_image_2', 'field_655338492bd91'),
(2144, 252, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2145, 252, '_about_youtube_video', 'field_655338582bd92'),
(2146, 252, 'about_button_text', 'DISCOVER MORE'),
(2147, 252, '_about_button_text', 'field_655339505469d'),
(2148, 252, 'about_button_link', 'http://localhost/star-lounge/book-now/'),
(2149, 252, '_about_button_link', 'field_6553395b5469e'),
(2150, 252, 'second_section_group_second_section_background_image', ''),
(2151, 252, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2152, 252, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2153, 252, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2154, 252, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2155, 252, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2156, 252, 'second_section_group', ''),
(2157, 252, '_second_section_group', 'field_65533ce9e5489'),
(2158, 252, 'white_section_right_side_image', ''),
(2159, 252, '_white_section_right_side_image', 'field_655341c402288'),
(2160, 252, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2161, 252, '_white_section_content', 'field_655341e002289'),
(2162, 252, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2163, 252, '_about_white_section_button_text', 'field_65534395f3219'),
(2164, 252, 'about_white_section_button_link', '#'),
(2165, 252, '_about_white_section_button_link', 'field_655343d9f321a'),
(2166, 252, 'how_it_works_main_heading', 'How It Works?'),
(2167, 252, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2168, 252, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2169, 252, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2170, 252, 'how_it_works_image', ''),
(2171, 252, '_how_it_works_image', 'field_6555ca92398a0'),
(2172, 252, 'our_best_feature_main_heading', 'Our Best Features'),
(2173, 252, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2174, 252, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2175, 252, '_best_feature_section_button', 'field_6555e68072ab1'),
(2176, 252, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2177, 252, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2178, 252, 'top_heading', 'Our Restaurant'),
(2179, 252, '_top_heading', 'field_655333d193279'),
(2180, 252, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2181, 252, '_about_description', 'field_655335875c609'),
(2182, 255, '_wp_attached_file', '2023/11/restaurant-3.png'),
(2183, 255, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2023/11/restaurant-3.png\";s:8:\"filesize\";i:2524;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2184, 256, '_wp_attached_file', '2023/11/restaurant-4.png'),
(2185, 256, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2023/11/restaurant-4.png\";s:8:\"filesize\";i:2659;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2192, 253, 'orange_heading', 'OUR INTRODUCTION'),
(2193, 253, '_orange_heading', 'field_655333d193279'),
(2194, 253, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2195, 253, '_about_main_heading', 'field_6553356a5c607'),
(2196, 253, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2197, 253, '_about_main_subheading', 'field_655335785c608'),
(2198, 253, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2199, 253, '_about_description_1', 'field_655335875c609');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2200, 253, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2201, 253, '_about_description_2', 'field_655335e15c60a'),
(2202, 253, 'about_image_1', ''),
(2203, 253, '_about_image_1', 'field_655338352bd90'),
(2204, 253, 'about_image_2', ''),
(2205, 253, '_about_image_2', 'field_655338492bd91'),
(2206, 253, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2207, 253, '_about_youtube_video', 'field_655338582bd92'),
(2208, 253, 'about_button_text', 'DISCOVER MORE'),
(2209, 253, '_about_button_text', 'field_655339505469d'),
(2210, 253, 'about_button_link', 'http://localhost/star-lounge/book-now/'),
(2211, 253, '_about_button_link', 'field_6553395b5469e'),
(2212, 253, 'second_section_group_second_section_background_image', ''),
(2213, 253, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2214, 253, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2215, 253, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2216, 253, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2217, 253, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2218, 253, 'second_section_group', ''),
(2219, 253, '_second_section_group', 'field_65533ce9e5489'),
(2220, 253, 'white_section_right_side_image', ''),
(2221, 253, '_white_section_right_side_image', 'field_655341c402288'),
(2222, 253, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2223, 253, '_white_section_content', 'field_655341e002289'),
(2224, 253, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2225, 253, '_about_white_section_button_text', 'field_65534395f3219'),
(2226, 253, 'about_white_section_button_link', '#'),
(2227, 253, '_about_white_section_button_link', 'field_655343d9f321a'),
(2228, 253, 'how_it_works_main_heading', 'How It Works?'),
(2229, 253, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2230, 253, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2231, 253, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2232, 253, 'how_it_works_image', ''),
(2233, 253, '_how_it_works_image', 'field_6555ca92398a0'),
(2234, 253, 'our_best_feature_main_heading', 'Our Best Features'),
(2235, 253, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2236, 253, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2237, 253, '_best_feature_section_button', 'field_6555e68072ab1'),
(2238, 253, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2239, 253, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2240, 253, 'top_heading', 'Our Restaurant'),
(2241, 253, '_top_heading', 'field_655333d193279'),
(2242, 253, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2243, 253, '_about_description', 'field_655335875c609'),
(2244, 257, '_wp_attached_file', '2023/11/round-txt-img.png'),
(2245, 257, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2023/11/round-txt-img.png\";s:8:\"filesize\";i:15556;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2246, 258, '_wp_attached_file', '2023/11/round-img.png'),
(2247, 258, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:21:\"2023/11/round-img.png\";s:8:\"filesize\";i:2268;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2254, 10, 'round_image_1', '257'),
(2255, 10, '_round_image_1', 'field_655338352bd90'),
(2256, 10, 'round_image_2', '258'),
(2257, 10, '_round_image_2', 'field_655338492bd91'),
(2258, 253, 'round_image_1', '257'),
(2259, 253, '_round_image_1', 'field_655338352bd90'),
(2260, 253, 'round_image_2', '258'),
(2261, 253, '_round_image_2', 'field_655338492bd91'),
(2268, 259, 'orange_heading', 'OUR INTRODUCTION'),
(2269, 259, '_orange_heading', 'field_655333d193279'),
(2270, 259, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2271, 259, '_about_main_heading', 'field_6553356a5c607'),
(2272, 259, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2273, 259, '_about_main_subheading', 'field_655335785c608'),
(2274, 259, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2275, 259, '_about_description_1', 'field_655335875c609'),
(2276, 259, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2277, 259, '_about_description_2', 'field_655335e15c60a'),
(2278, 259, 'about_image_1', ''),
(2279, 259, '_about_image_1', 'field_655338352bd90'),
(2280, 259, 'about_image_2', ''),
(2281, 259, '_about_image_2', 'field_655338492bd91'),
(2282, 259, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2283, 259, '_about_youtube_video', 'field_655338582bd92'),
(2284, 259, 'about_button_text', 'Explore Us'),
(2285, 259, '_about_button_text', 'field_655339505469d'),
(2286, 259, 'about_button_link', '#'),
(2287, 259, '_about_button_link', 'field_6553395b5469e'),
(2288, 259, 'second_section_group_second_section_background_image', ''),
(2289, 259, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2290, 259, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2291, 259, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2292, 259, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2293, 259, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2294, 259, 'second_section_group', ''),
(2295, 259, '_second_section_group', 'field_65533ce9e5489'),
(2296, 259, 'white_section_right_side_image', ''),
(2297, 259, '_white_section_right_side_image', 'field_655341c402288'),
(2298, 259, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2299, 259, '_white_section_content', 'field_655341e002289'),
(2300, 259, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2301, 259, '_about_white_section_button_text', 'field_65534395f3219'),
(2302, 259, 'about_white_section_button_link', '#'),
(2303, 259, '_about_white_section_button_link', 'field_655343d9f321a'),
(2304, 259, 'how_it_works_main_heading', 'How It Works?'),
(2305, 259, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2306, 259, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2307, 259, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2308, 259, 'how_it_works_image', ''),
(2309, 259, '_how_it_works_image', 'field_6555ca92398a0'),
(2310, 259, 'our_best_feature_main_heading', 'Our Best Features'),
(2311, 259, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2312, 259, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2313, 259, '_best_feature_section_button', 'field_6555e68072ab1'),
(2314, 259, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2315, 259, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2316, 259, 'top_heading', 'Our Restaurant'),
(2317, 259, '_top_heading', 'field_655333d193279'),
(2318, 259, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2319, 259, '_about_description', 'field_655335875c609'),
(2320, 259, 'round_image_1', '257'),
(2321, 259, '_round_image_1', 'field_655338352bd90'),
(2322, 259, 'round_image_2', '258'),
(2323, 259, '_round_image_2', 'field_655338492bd91'),
(2330, 10, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2331, 10, '_marque_section', 'field_655335e15c60a'),
(2332, 260, 'orange_heading', 'OUR INTRODUCTION'),
(2333, 260, '_orange_heading', 'field_655333d193279'),
(2334, 260, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2335, 260, '_about_main_heading', 'field_6553356a5c607'),
(2336, 260, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2337, 260, '_about_main_subheading', 'field_655335785c608'),
(2338, 260, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2339, 260, '_about_description_1', 'field_655335875c609'),
(2340, 260, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2341, 260, '_about_description_2', 'field_655335e15c60a'),
(2342, 260, 'about_image_1', ''),
(2343, 260, '_about_image_1', 'field_655338352bd90'),
(2344, 260, 'about_image_2', ''),
(2345, 260, '_about_image_2', 'field_655338492bd91'),
(2346, 260, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2347, 260, '_about_youtube_video', 'field_655338582bd92'),
(2348, 260, 'about_button_text', 'Explore Us'),
(2349, 260, '_about_button_text', 'field_655339505469d'),
(2350, 260, 'about_button_link', '#'),
(2351, 260, '_about_button_link', 'field_6553395b5469e'),
(2352, 260, 'second_section_group_second_section_background_image', ''),
(2353, 260, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2354, 260, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2355, 260, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2356, 260, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2357, 260, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2358, 260, 'second_section_group', ''),
(2359, 260, '_second_section_group', 'field_65533ce9e5489'),
(2360, 260, 'white_section_right_side_image', ''),
(2361, 260, '_white_section_right_side_image', 'field_655341c402288'),
(2362, 260, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2363, 260, '_white_section_content', 'field_655341e002289'),
(2364, 260, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2365, 260, '_about_white_section_button_text', 'field_65534395f3219'),
(2366, 260, 'about_white_section_button_link', '#'),
(2367, 260, '_about_white_section_button_link', 'field_655343d9f321a'),
(2368, 260, 'how_it_works_main_heading', 'How It Works?'),
(2369, 260, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2370, 260, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2371, 260, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2372, 260, 'how_it_works_image', ''),
(2373, 260, '_how_it_works_image', 'field_6555ca92398a0'),
(2374, 260, 'our_best_feature_main_heading', 'Our Best Features'),
(2375, 260, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2376, 260, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2377, 260, '_best_feature_section_button', 'field_6555e68072ab1'),
(2378, 260, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2379, 260, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2380, 260, 'top_heading', 'Our Restaurant'),
(2381, 260, '_top_heading', 'field_655333d193279'),
(2382, 260, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2383, 260, '_about_description', 'field_655335875c609'),
(2384, 260, 'round_image_1', '257'),
(2385, 260, '_round_image_1', 'field_655338352bd90'),
(2386, 260, 'round_image_2', '258'),
(2387, 260, '_round_image_2', 'field_655338492bd91'),
(2388, 260, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2389, 260, '_marque_section', 'field_655335e15c60a'),
(2399, 261, 'orange_heading', 'OUR INTRODUCTION'),
(2400, 261, '_orange_heading', 'field_655333d193279'),
(2401, 261, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2402, 261, '_about_main_heading', 'field_6553356a5c607'),
(2403, 261, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2404, 261, '_about_main_subheading', 'field_655335785c608'),
(2405, 261, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2406, 261, '_about_description_1', 'field_655335875c609'),
(2407, 261, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2408, 261, '_about_description_2', 'field_655335e15c60a'),
(2409, 261, 'about_image_1', ''),
(2410, 261, '_about_image_1', 'field_655338352bd90'),
(2411, 261, 'about_image_2', ''),
(2412, 261, '_about_image_2', 'field_655338492bd91'),
(2413, 261, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2414, 261, '_about_youtube_video', 'field_655338582bd92'),
(2415, 261, 'about_button_text', 'Explore Us'),
(2416, 261, '_about_button_text', 'field_655339505469d'),
(2417, 261, 'about_button_link', '#'),
(2418, 261, '_about_button_link', 'field_6553395b5469e'),
(2419, 261, 'second_section_group_second_section_background_image', ''),
(2420, 261, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2421, 261, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2422, 261, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2423, 261, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2424, 261, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2425, 261, 'second_section_group', ''),
(2426, 261, '_second_section_group', 'field_65533ce9e5489'),
(2427, 261, 'white_section_right_side_image', ''),
(2428, 261, '_white_section_right_side_image', 'field_655341c402288'),
(2429, 261, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2430, 261, '_white_section_content', 'field_655341e002289'),
(2431, 261, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2432, 261, '_about_white_section_button_text', 'field_65534395f3219'),
(2433, 261, 'about_white_section_button_link', '#'),
(2434, 261, '_about_white_section_button_link', 'field_655343d9f321a'),
(2435, 261, 'how_it_works_main_heading', 'How It Works?'),
(2436, 261, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2437, 261, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2438, 261, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2439, 261, 'how_it_works_image', ''),
(2440, 261, '_how_it_works_image', 'field_6555ca92398a0'),
(2441, 261, 'our_best_feature_main_heading', 'Our Best Features'),
(2442, 261, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2443, 261, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2444, 261, '_best_feature_section_button', 'field_6555e68072ab1'),
(2445, 261, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2446, 261, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2447, 261, 'top_heading', 'Our Restaurant'),
(2448, 261, '_top_heading', 'field_655333d193279'),
(2449, 261, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2450, 261, '_about_description', 'field_655335875c609'),
(2451, 261, 'round_image_1', '257'),
(2452, 261, '_round_image_1', 'field_655338352bd90'),
(2453, 261, 'round_image_2', '258'),
(2454, 261, '_round_image_2', 'field_655338492bd91'),
(2455, 261, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2456, 261, '_marque_section', 'field_655335e15c60a'),
(2475, 262, '_wp_attached_file', '2023/11/untitled-1.png'),
(2476, 262, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2023/11/untitled-1.png\";s:8:\"filesize\";i:3290;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2486, 263, '_wp_attached_file', '2023/11/untitled-2.png'),
(2487, 263, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2023/11/untitled-2.png\";s:8:\"filesize\";i:2477;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2500, 264, '_wp_attached_file', '2023/11/untitled-3.png'),
(2501, 264, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2023/11/untitled-3.png\";s:8:\"filesize\";i:2995;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2502, 265, '_wp_attached_file', '2023/11/untitled-4.png'),
(2503, 265, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2023/11/untitled-4.png\";s:8:\"filesize\";i:3688;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2522, 266, '_wp_attached_file', '2023/11/untitled-5.png'),
(2523, 266, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2023/11/untitled-5.png\";s:8:\"filesize\";i:4570;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2545, 267, '_wp_attached_file', '2023/11/untitled-6.png'),
(2546, 267, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:87;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2023/11/untitled-6.png\";s:8:\"filesize\";i:6025;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2547, 268, '_wp_attached_file', '2023/11/untitled-7.png'),
(2548, 268, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2023/11/untitled-7.png\";s:8:\"filesize\";i:4598;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2576, 269, '_wp_attached_file', '2023/11/untitled-8.png'),
(2577, 269, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2023/11/untitled-8.png\";s:8:\"filesize\";i:5321;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2668, 10, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch'),
(2669, 10, '_chef_secret_main_heading', 'field_655341e002289'),
(2670, 261, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch'),
(2671, 261, '_chef_secret_main_heading', 'field_655341e002289'),
(2702, 10, 'secret_chef_heading', 'Truly Exotic &amp; Appetizing Cuisine For Thous Special Moments In Life'),
(2703, 10, '_secret_chef_heading', 'field_6555ca443989e'),
(2704, 10, 'secret_chef_content', 'Nam turpis quis fermentum egestas nibh diam feugiat faucibus. Commodo tellus lorem fames mauris, at praesent gravida. Porttitor eu eu sed vestibulum, tortor cursus nunc. Sit egestas diam quam integer augue cum erat egestas convallis.'),
(2705, 10, '_secret_chef_content', 'field_6555ca7a3989f'),
(2706, 10, 'secret_chef_image', '272'),
(2707, 10, '_secret_chef_image', 'field_6555ca92398a0'),
(2708, 270, 'orange_heading', 'OUR INTRODUCTION'),
(2709, 270, '_orange_heading', 'field_655333d193279'),
(2710, 270, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2711, 270, '_about_main_heading', 'field_6553356a5c607'),
(2712, 270, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2713, 270, '_about_main_subheading', 'field_655335785c608'),
(2714, 270, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2715, 270, '_about_description_1', 'field_655335875c609'),
(2716, 270, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2717, 270, '_about_description_2', 'field_655335e15c60a'),
(2718, 270, 'about_image_1', ''),
(2719, 270, '_about_image_1', 'field_655338352bd90'),
(2720, 270, 'about_image_2', ''),
(2721, 270, '_about_image_2', 'field_655338492bd91'),
(2722, 270, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2723, 270, '_about_youtube_video', 'field_655338582bd92'),
(2724, 270, 'about_button_text', 'Explore Us'),
(2725, 270, '_about_button_text', 'field_655339505469d'),
(2726, 270, 'about_button_link', '#'),
(2727, 270, '_about_button_link', 'field_6553395b5469e'),
(2728, 270, 'second_section_group_second_section_background_image', ''),
(2729, 270, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2730, 270, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2731, 270, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2732, 270, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2733, 270, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2734, 270, 'second_section_group', ''),
(2735, 270, '_second_section_group', 'field_65533ce9e5489'),
(2736, 270, 'white_section_right_side_image', ''),
(2737, 270, '_white_section_right_side_image', 'field_655341c402288'),
(2738, 270, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2739, 270, '_white_section_content', 'field_655341e002289'),
(2740, 270, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2741, 270, '_about_white_section_button_text', 'field_65534395f3219'),
(2742, 270, 'about_white_section_button_link', '#'),
(2743, 270, '_about_white_section_button_link', 'field_655343d9f321a'),
(2744, 270, 'how_it_works_main_heading', 'How It Works?'),
(2745, 270, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2746, 270, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2747, 270, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2748, 270, 'how_it_works_image', ''),
(2749, 270, '_how_it_works_image', 'field_6555ca92398a0'),
(2750, 270, 'our_best_feature_main_heading', 'Our Best Features'),
(2751, 270, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2752, 270, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2753, 270, '_best_feature_section_button', 'field_6555e68072ab1'),
(2754, 270, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2755, 270, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2756, 270, 'top_heading', 'Our Restaurant'),
(2757, 270, '_top_heading', 'field_655333d193279'),
(2758, 270, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2759, 270, '_about_description', 'field_655335875c609'),
(2760, 270, 'round_image_1', '257'),
(2761, 270, '_round_image_1', 'field_655338352bd90'),
(2762, 270, 'round_image_2', '258'),
(2763, 270, '_round_image_2', 'field_655338492bd91'),
(2764, 270, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2765, 270, '_marque_section', 'field_655335e15c60a'),
(2766, 270, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch'),
(2767, 270, '_chef_secret_main_heading', 'field_655341e002289'),
(2768, 270, 'secret_chef_heading', 'Truly Exotic &amp; Appetizing Cuisine For Thous Special Moments In Life'),
(2769, 270, '_secret_chef_heading', 'field_6555ca443989e'),
(2770, 270, 'secret_chef_content', 'Nam turpis quis fermentum egestas nibh diam feugiat faucibus. Commodo tellus lorem fames mauris, at praesent gravida. Porttitor eu eu sed vestibulum, tortor cursus nunc. Sit egestas diam quam integer augue cum erat egestas convallis.'),
(2771, 270, '_secret_chef_content', 'field_6555ca7a3989f'),
(2772, 270, 'secret_chef_image', ''),
(2773, 270, '_secret_chef_image', 'field_6555ca92398a0'),
(2774, 272, '_wp_attached_file', '2023/11/chefs-1.png'),
(2775, 272, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:650;s:4:\"file\";s:19:\"2023/11/chefs-1.png\";s:8:\"filesize\";i:61777;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2806, 271, 'orange_heading', 'OUR INTRODUCTION'),
(2807, 271, '_orange_heading', 'field_655333d193279'),
(2808, 271, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2809, 271, '_about_main_heading', 'field_6553356a5c607'),
(2810, 271, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2811, 271, '_about_main_subheading', 'field_655335785c608'),
(2812, 271, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2813, 271, '_about_description_1', 'field_655335875c609'),
(2814, 271, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2815, 271, '_about_description_2', 'field_655335e15c60a'),
(2816, 271, 'about_image_1', ''),
(2817, 271, '_about_image_1', 'field_655338352bd90'),
(2818, 271, 'about_image_2', ''),
(2819, 271, '_about_image_2', 'field_655338492bd91'),
(2820, 271, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2821, 271, '_about_youtube_video', 'field_655338582bd92'),
(2822, 271, 'about_button_text', 'Explore Us'),
(2823, 271, '_about_button_text', 'field_655339505469d'),
(2824, 271, 'about_button_link', '#'),
(2825, 271, '_about_button_link', 'field_6553395b5469e'),
(2826, 271, 'second_section_group_second_section_background_image', ''),
(2827, 271, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2828, 271, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2829, 271, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2830, 271, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2831, 271, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2832, 271, 'second_section_group', ''),
(2833, 271, '_second_section_group', 'field_65533ce9e5489'),
(2834, 271, 'white_section_right_side_image', ''),
(2835, 271, '_white_section_right_side_image', 'field_655341c402288'),
(2836, 271, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2837, 271, '_white_section_content', 'field_655341e002289'),
(2838, 271, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2839, 271, '_about_white_section_button_text', 'field_65534395f3219'),
(2840, 271, 'about_white_section_button_link', '#'),
(2841, 271, '_about_white_section_button_link', 'field_655343d9f321a'),
(2842, 271, 'how_it_works_main_heading', 'How It Works?'),
(2843, 271, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2844, 271, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2845, 271, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2846, 271, 'how_it_works_image', ''),
(2847, 271, '_how_it_works_image', 'field_6555ca92398a0'),
(2848, 271, 'our_best_feature_main_heading', 'Our Best Features'),
(2849, 271, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2850, 271, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2851, 271, '_best_feature_section_button', 'field_6555e68072ab1'),
(2852, 271, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2853, 271, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2854, 271, 'top_heading', 'Our Restaurant'),
(2855, 271, '_top_heading', 'field_655333d193279'),
(2856, 271, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2857, 271, '_about_description', 'field_655335875c609'),
(2858, 271, 'round_image_1', '257'),
(2859, 271, '_round_image_1', 'field_655338352bd90'),
(2860, 271, 'round_image_2', '258'),
(2861, 271, '_round_image_2', 'field_655338492bd91'),
(2862, 271, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2863, 271, '_marque_section', 'field_655335e15c60a'),
(2864, 271, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch'),
(2865, 271, '_chef_secret_main_heading', 'field_655341e002289'),
(2866, 271, 'secret_chef_heading', 'Truly Exotic &amp; Appetizing Cuisine For Thous Special Moments In Life'),
(2867, 271, '_secret_chef_heading', 'field_6555ca443989e'),
(2868, 271, 'secret_chef_content', 'Nam turpis quis fermentum egestas nibh diam feugiat faucibus. Commodo tellus lorem fames mauris, at praesent gravida. Porttitor eu eu sed vestibulum, tortor cursus nunc. Sit egestas diam quam integer augue cum erat egestas convallis.'),
(2869, 271, '_secret_chef_content', 'field_6555ca7a3989f'),
(2870, 271, 'secret_chef_image', '272'),
(2871, 271, '_secret_chef_image', 'field_6555ca92398a0'),
(2872, 275, '_wp_attached_file', '2023/11/chefs-2.png'),
(2873, 275, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:270;s:6:\"height\";i:490;s:4:\"file\";s:19:\"2023/11/chefs-2.png\";s:8:\"filesize\";i:73098;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2904, 10, 'secret_chef_image_2', '275'),
(2905, 10, '_secret_chef_image_2', 'field_656080aac780f'),
(2906, 274, 'orange_heading', 'OUR INTRODUCTION'),
(2907, 274, '_orange_heading', 'field_655333d193279'),
(2908, 274, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(2909, 274, '_about_main_heading', 'field_6553356a5c607'),
(2910, 274, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(2911, 274, '_about_main_subheading', 'field_655335785c608'),
(2912, 274, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(2913, 274, '_about_description_1', 'field_655335875c609'),
(2914, 274, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(2915, 274, '_about_description_2', 'field_655335e15c60a'),
(2916, 274, 'about_image_1', ''),
(2917, 274, '_about_image_1', 'field_655338352bd90'),
(2918, 274, 'about_image_2', ''),
(2919, 274, '_about_image_2', 'field_655338492bd91'),
(2920, 274, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2921, 274, '_about_youtube_video', 'field_655338582bd92'),
(2922, 274, 'about_button_text', 'Explore Us'),
(2923, 274, '_about_button_text', 'field_655339505469d'),
(2924, 274, 'about_button_link', '#'),
(2925, 274, '_about_button_link', 'field_6553395b5469e'),
(2926, 274, 'second_section_group_second_section_background_image', ''),
(2927, 274, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(2928, 274, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(2929, 274, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(2930, 274, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(2931, 274, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(2932, 274, 'second_section_group', ''),
(2933, 274, '_second_section_group', 'field_65533ce9e5489'),
(2934, 274, 'white_section_right_side_image', ''),
(2935, 274, '_white_section_right_side_image', 'field_655341c402288'),
(2936, 274, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(2937, 274, '_white_section_content', 'field_655341e002289'),
(2938, 274, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2939, 274, '_about_white_section_button_text', 'field_65534395f3219'),
(2940, 274, 'about_white_section_button_link', '#'),
(2941, 274, '_about_white_section_button_link', 'field_655343d9f321a'),
(2942, 274, 'how_it_works_main_heading', 'How It Works?'),
(2943, 274, '_how_it_works_main_heading', 'field_6555ca443989e'),
(2944, 274, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(2945, 274, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(2946, 274, 'how_it_works_image', ''),
(2947, 274, '_how_it_works_image', 'field_6555ca92398a0'),
(2948, 274, 'our_best_feature_main_heading', 'Our Best Features'),
(2949, 274, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(2950, 274, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(2951, 274, '_best_feature_section_button', 'field_6555e68072ab1'),
(2952, 274, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(2953, 274, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(2954, 274, 'top_heading', 'Our Restaurant'),
(2955, 274, '_top_heading', 'field_655333d193279'),
(2956, 274, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(2957, 274, '_about_description', 'field_655335875c609'),
(2958, 274, 'round_image_1', '257'),
(2959, 274, '_round_image_1', 'field_655338352bd90'),
(2960, 274, 'round_image_2', '258'),
(2961, 274, '_round_image_2', 'field_655338492bd91'),
(2962, 274, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(2963, 274, '_marque_section', 'field_655335e15c60a'),
(2964, 274, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2965, 274, '_chef_secret_main_heading', 'field_655341e002289'),
(2966, 274, 'secret_chef_heading', 'Truly Exotic &amp; Appetizing Cuisine For Thous Special Moments In Life'),
(2967, 274, '_secret_chef_heading', 'field_6555ca443989e'),
(2968, 274, 'secret_chef_content', 'Nam turpis quis fermentum egestas nibh diam feugiat faucibus. Commodo tellus lorem fames mauris, at praesent gravida. Porttitor eu eu sed vestibulum, tortor cursus nunc. Sit egestas diam quam integer augue cum erat egestas convallis.'),
(2969, 274, '_secret_chef_content', 'field_6555ca7a3989f'),
(2970, 274, 'secret_chef_image', '272'),
(2971, 274, '_secret_chef_image', 'field_6555ca92398a0'),
(2972, 274, 'secret_chef_image_2', '275'),
(2973, 274, '_secret_chef_image_2', 'field_656080aac780f'),
(2974, 10, 'food_quality_heading', 'Quiet Environment'),
(2975, 10, 'food_quality_content', 'Objectively transition virtual functionaities via enterprise widr benefits.'),
(2976, 10, 'food_quality_image', '255'),
(2977, 10, 'food_quality_heading', 'Hygienic Food'),
(2978, 10, 'food_quality_content', 'Amet egestas id a sit. Massa ullamcorper mauris sit sed. Morbi ultrices est auctor ultrices. Aliquam.'),
(2979, 10, 'food_quality_image', '256'),
(2980, 10, 'why_choose_us_heading', 'Catering'),
(2981, 10, 'why_choose_icon', '262'),
(2982, 10, 'why_choose_us_content', 'Lacus, risus, diam sit gravida phasellus pretium sodales. Cursus rutrum lorem nulla eu amet mattis.'),
(2983, 10, 'why_choose_us_heading', 'Dinner'),
(2984, 10, 'why_choose_icon', '263'),
(2985, 10, 'why_choose_us_content', 'Lacus, risus, diam sit gravida phasellus pretium sodales. Cursus rutrum lorem nulla eu amet mattis.'),
(2986, 10, 'why_choose_us_heading', 'Wedding'),
(2987, 10, 'why_choose_icon', '264'),
(2988, 10, 'why_choose_us_content', 'Lacus, risus, diam sit gravida phasellus pretium sodales. Cursus rutrum lorem nulla eu amet mattis.'),
(2989, 10, 'why_choose_us_heading', 'Birthday'),
(2990, 10, 'why_choose_icon', '265'),
(2991, 10, 'why_choose_us_content', 'Lacus, risus, diam sit gravida phasellus pretium sodales. Cursus rutrum lorem nulla eu amet mattis.'),
(2992, 10, 'count_title', 'Happy Customers'),
(2993, 10, 'count_icon', '266'),
(2994, 10, 'count_number', '7.5'),
(2995, 10, 'count_title', 'Passionate Chef’s'),
(2996, 10, 'count_icon', '267'),
(2997, 10, 'count_number', '36'),
(2998, 10, 'count_title', 'Favourite Dishes'),
(2999, 10, 'count_icon', '268'),
(3000, 10, 'count_number', '250'),
(3001, 10, 'count_title', 'Customer Rating'),
(3002, 10, 'count_icon', '269'),
(3003, 10, 'count_number', '4.8'),
(3004, 276, 'orange_heading', 'OUR INTRODUCTION'),
(3005, 276, '_orange_heading', 'field_655333d193279'),
(3006, 276, 'about_main_heading', 'The Perfect Place For An Exceptional Experience'),
(3007, 276, '_about_main_heading', 'field_6553356a5c607'),
(3008, 276, 'about_main_subheading', 'Blue Bird Driving School is the best driving school in Calgary considering its high passing rate!'),
(3009, 276, '_about_main_subheading', 'field_655335785c608'),
(3010, 276, 'about_description_1', 'We have been teaching in Alberta for over 5 years. Our mandate is to equip new and experienced drivers with the best driving skills so that they become defensive and safe drivers in any driving environment. Students always thank us for our patience, professional expertise, and the driving techniques we provide them but mostly for their success on their road test. We have excelled to such a degree that students recommend our services to family and friends. We are friendly, experienced, qualified and government licensed instructors.'),
(3011, 276, '_about_description_1', 'field_655335875c609'),
(3012, 276, 'about_description_2', '<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Appointments six days a week.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>\r\n<div class=\"wel-block-three col-lg-6 col-md-6 col-sm-12\">\r\n<div class=\"inner-box\">\r\n<div class=\"icon\"><i class=\"fa-light fa-long-arrow-right\"></i></div>\r\n<h6>Service At Affordable Rates.</h6>\r\n<div class=\"text\">Since 2010, throughout North America for providing.</div>\r\n</div>\r\n</div>'),
(3013, 276, '_about_description_2', 'field_655335e15c60a'),
(3014, 276, 'about_image_1', ''),
(3015, 276, '_about_image_1', 'field_655338352bd90'),
(3016, 276, 'about_image_2', ''),
(3017, 276, '_about_image_2', 'field_655338492bd91'),
(3018, 276, 'about_youtube_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(3019, 276, '_about_youtube_video', 'field_655338582bd92'),
(3020, 276, 'about_button_text', 'Explore Us'),
(3021, 276, '_about_button_text', 'field_655339505469d'),
(3022, 276, 'about_button_link', '#'),
(3023, 276, '_about_button_link', 'field_6553395b5469e'),
(3024, 276, 'second_section_group_second_section_background_image', ''),
(3025, 276, '_second_section_group_second_section_background_image', 'field_65533d63e548a'),
(3026, 276, 'second_section_group_second_section_video', 'https://www.youtube.com/watch?v=0xhr0j877bI'),
(3027, 276, '_second_section_group_second_section_video', 'field_65533d8ae548b'),
(3028, 276, 'second_section_group_second_section_title', 'Start 5 Hours Class Movie Training'),
(3029, 276, '_second_section_group_second_section_title', 'field_65533db0e548c'),
(3030, 276, 'second_section_group', ''),
(3031, 276, '_second_section_group', 'field_65533ce9e5489'),
(3032, 276, 'white_section_right_side_image', ''),
(3033, 276, '_white_section_right_side_image', 'field_655341c402288'),
(3034, 276, 'white_section_content', 'We Are Since 2006 ! Over 200 Awards'),
(3035, 276, '_white_section_content', 'field_655341e002289'),
(3036, 276, 'about_white_section_button_text', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(3037, 276, '_about_white_section_button_text', 'field_65534395f3219'),
(3038, 276, 'about_white_section_button_link', '#'),
(3039, 276, '_about_white_section_button_link', 'field_655343d9f321a'),
(3040, 276, 'how_it_works_main_heading', 'How It Works?'),
(3041, 276, '_how_it_works_main_heading', 'field_6555ca443989e'),
(3042, 276, 'how_it_works_main_subheading', 'There are only a few easy steps until your traffic ticket is dismissed, your driving record is clean and your auto <br>insurances rates are safe from increases:'),
(3043, 276, '_how_it_works_main_subheading', 'field_6555ca7a3989f'),
(3044, 276, 'how_it_works_image', ''),
(3045, 276, '_how_it_works_image', 'field_6555ca92398a0'),
(3046, 276, 'our_best_feature_main_heading', 'Our Best Features'),
(3047, 276, '_our_best_feature_main_heading', 'field_6555cf4670c26'),
(3048, 276, 'best_feature_section_button', 'DISCOVER MORE TO SCHEDULE YOUR LESSONS'),
(3049, 276, '_best_feature_section_button', 'field_6555e68072ab1'),
(3050, 276, 'best_feature_section_button_link', 'http://localhost/star-lounge/book-now/'),
(3051, 276, '_best_feature_section_button_link', 'field_6555e6ad72ab2'),
(3052, 276, 'top_heading', 'Our Restaurant'),
(3053, 276, '_top_heading', 'field_655333d193279'),
(3054, 276, 'about_description', '<p class=\"home2-rest-txt2\">Elementum, interdum arcu pulvinar vitae aenean arcu rutrum lacus. Cursus phasellus tempus nunc netus. Non, viverra quisque commodo porttitor imperdiet pretium, congue.</p>\r\n                        <p class=\"home2-rest-txt2\">Tempor felis eget quisque ultrices aliquam dolor id vel. Diam facilisi vitae suspendisse dolor at congue amet. Lorem convallis erat a, accumsan id nam curabitur turpis magna. Sagittis, posuere rhoncus diam facilisi consectetur suspendisse elementum ipsum nisi.'),
(3055, 276, '_about_description', 'field_655335875c609'),
(3056, 276, 'round_image_1', '257'),
(3057, 276, '_round_image_1', 'field_655338352bd90'),
(3058, 276, 'round_image_2', '258'),
(3059, 276, '_round_image_2', 'field_655338492bd91'),
(3060, 276, 'marque_section', '<div class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p aria-hidden=\"true\">Fine Dining</p>\r\n                  <p aria-hidden=\"true\">Outdoor Catering </p>\r\n                  <p aria-hidden=\"true\">Banquets</p>\r\n                  <p aria-hidden=\"true\">Wine Shop</p>\r\n               </div>\r\n               <div aria-hidden=\"true\" class=\"marquee_group\">\r\n                  <p>Door Delivery</p>\r\n                  <p>Fine Dining</p>\r\n                  <p>Outdoor Catering </p>\r\n                  <p>Banquets</p>\r\n                  <p>Wine Shop</p>\r\n               </div>'),
(3061, 276, '_marque_section', 'field_655335e15c60a'),
(3062, 276, 'chef_secret_main_heading', 'Various Quality Specialities Made With A Personal Touch'),
(3063, 276, '_chef_secret_main_heading', 'field_655341e002289'),
(3064, 276, 'secret_chef_heading', 'Truly Exotic &amp; Appetizing Cuisine For Thous Special Moments In Life'),
(3065, 276, '_secret_chef_heading', 'field_6555ca443989e'),
(3066, 276, 'secret_chef_content', 'Nam turpis quis fermentum egestas nibh diam feugiat faucibus. Commodo tellus lorem fames mauris, at praesent gravida. Porttitor eu eu sed vestibulum, tortor cursus nunc. Sit egestas diam quam integer augue cum erat egestas convallis.'),
(3067, 276, '_secret_chef_content', 'field_6555ca7a3989f'),
(3068, 276, 'secret_chef_image', '272'),
(3069, 276, '_secret_chef_image', 'field_6555ca92398a0'),
(3070, 276, 'secret_chef_image_2', '275'),
(3071, 276, '_secret_chef_image_2', 'field_656080aac780f');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-11-14 05:21:22', '2023-11-14 05:21:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-11-17 09:44:39', '2023-11-17 09:44:39', '', 0, 'http://localhost/star-lounge/?p=1', 0, 'post', '', 1),
(2, 1, '2023-11-14 05:21:22', '2023-11-14 05:21:22', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/star-lounge/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-11-14 05:21:22', '2023-11-14 05:21:22', '', 0, 'http://localhost/star-lounge/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-11-14 05:21:22', '2023-11-14 05:21:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/star-lounge.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-11-14 05:21:22', '2023-11-14 05:21:22', '', 0, 'http://localhost/star-lounge/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-11-14 05:25:22', '2023-11-14 05:25:22', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-11-23 06:34:24', '2023-11-23 06:34:24', '', 0, 'http://localhost/star-lounge/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-11-14 05:25:22', '2023-11-14 05:25:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 05:25:22', '2023-11-14 05:25:22', '', 5, 'http://localhost/star-lounge/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-11-14 05:25:41', '2023-11-14 05:25:41', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-14 05:25:41\"\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-14 05:25:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34d1b32e-0885-4034-a078-4f793a55eb72', '', '', '2023-11-14 05:25:41', '2023-11-14 05:25:41', '', 0, 'http://localhost/star-lounge/2023/11/14/34d1b32e-0885-4034-a078-4f793a55eb72/', 0, 'customize_changeset', '', 0),
(8, 1, '2023-11-24 06:20:37', '2023-11-14 05:45:22', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=8', 1, 'nav_menu_item', '', 0),
(10, 1, '2023-11-14 05:49:33', '2023-11-14 05:49:33', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-11-24 11:41:27', '2023-11-24 11:41:27', '', 0, 'http://localhost/star-lounge/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-11-14 05:49:33', '2023-11-14 05:49:33', '', 'About', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 05:49:33', '2023-11-14 05:49:33', '', 10, 'http://localhost/star-lounge/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-11-24 06:20:37', '2023-11-14 05:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2023-11-14 05:57:58', '2023-11-14 05:57:58', '', 'Our Menu', '', 'publish', 'closed', 'closed', '', 'our-menu', '', '', '2023-11-23 07:05:27', '2023-11-23 07:05:27', '', 0, 'http://localhost/star-lounge/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-11-14 05:57:58', '2023-11-14 05:57:58', '', 'Service', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-14 05:57:58', '2023-11-14 05:57:58', '', 13, 'http://localhost/star-lounge/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-11-14 05:58:09', '2023-11-14 05:58:09', '', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-14 05:58:09', '2023-11-14 05:58:09', '', 13, 'http://localhost/star-lounge/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-11-24 06:20:37', '2023-11-14 05:58:17', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2023-11-14 06:02:33', '2023-11-14 06:02:33', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-11-24 08:33:07', '2023-11-24 08:33:07', '', 0, 'http://localhost/star-lounge/?page_id=17', 0, 'page', '', 0),
(18, 1, '2023-11-14 06:02:33', '2023-11-14 06:02:33', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-14 06:02:33', '2023-11-14 06:02:33', '', 17, 'http://localhost/star-lounge/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-11-14 06:02:45', '2023-11-14 06:02:45', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 06:02:45', '2023-11-14 06:02:45', '', 10, 'http://localhost/star-lounge/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-11-24 06:20:37', '2023-11-14 06:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=20', 8, 'nav_menu_item', '', 0),
(21, 1, '2023-11-14 06:09:50', '2023-11-14 06:09:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page Group', 'home-page-group', 'publish', 'closed', 'closed', '', 'group_65530f1882e3d', '', '', '2023-11-23 06:31:30', '2023-11-23 06:31:30', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2023-11-14 06:09:50', '2023-11-14 06:09:50', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_65530f19de5df', '', '', '2023-11-23 06:31:30', '2023-11-23 06:31:30', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2023-11-14 06:10:28', '2023-11-14 06:10:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Banner Heading', 'banner_heading', 'publish', 'closed', 'closed', '', 'field_65530f42b321e', '', '', '2023-11-23 06:31:02', '2023-11-23 06:31:02', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(26, 1, '2023-11-14 06:14:53', '2023-11-14 06:14:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 06:14:53', '2023-11-14 06:14:53', '', 5, 'http://localhost/star-lounge/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-11-14 06:15:45', '2023-11-14 06:15:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 06:15:45', '2023-11-14 06:15:45', '', 5, 'http://localhost/star-lounge/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-11-14 06:23:49', '2023-11-14 06:23:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Banner Bottom Main Heading', 'banner_bottom_main_heading', 'publish', 'closed', 'closed', '', 'field_655311f0b58c0', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=28', 6, 'acf-field', '', 0),
(29, 1, '2023-11-14 06:23:49', '2023-11-14 06:23:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Bottom Subheading', 'banner_bottom_subheading', 'publish', 'closed', 'closed', '', 'field_6553123ab58c1', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=29', 7, 'acf-field', '', 0),
(30, 1, '2023-11-14 06:24:24', '2023-11-14 06:24:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 06:24:24', '2023-11-14 06:24:24', '', 5, 'http://localhost/star-lounge/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-11-14 06:25:49', '2023-11-14 06:25:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 06:25:49', '2023-11-14 06:25:49', '', 5, 'http://localhost/star-lounge/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-11-14 06:31:52', '2023-11-14 06:31:52', '', 'Home Page Field', '', 'publish', 'closed', 'closed', '', 'home-page-field', '', '', '2023-11-16 11:04:36', '2023-11-16 11:04:36', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=32', 0, 'cfs', '', 0),
(40, 1, '2023-11-14 07:07:15', '2023-11-14 07:07:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Step Process Main Heading', 'step_process_main_heading', 'publish', 'closed', 'closed', '', 'field_65531c8fc3e00', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=40', 8, 'acf-field', '', 0),
(41, 1, '2023-11-14 07:18:48', '2023-11-14 07:18:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 07:18:48', '2023-11-14 07:18:48', '', 5, 'http://localhost/star-lounge/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-11-14 07:24:36', '2023-11-14 07:24:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Process Step Section Button Text', 'process_step_section_button_text', 'publish', 'closed', 'closed', '', 'field_65532097b5187', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=42', 9, 'acf-field', '', 0),
(43, 1, '2023-11-14 07:24:36', '2023-11-14 07:24:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Process Step Section Button Link', 'process_step_section_button_link', 'publish', 'closed', 'closed', '', 'field_655320aeb5188', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=43', 10, 'acf-field', '', 0),
(44, 1, '2023-11-14 07:26:22', '2023-11-14 07:26:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 07:26:22', '2023-11-14 07:26:22', '', 5, 'http://localhost/star-lounge/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-11-14 07:29:44', '2023-11-14 07:29:44', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2023-11-14 07:29:44', '2023-11-14 07:29:44', '', 0, 'http://localhost/star-lounge/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2023-11-14 07:29:44', '2023-11-14 07:29:44', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2023-11-14 07:29:44', '2023-11-14 07:29:44', '', 0, 'http://localhost/star-lounge/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2023-11-14 07:29:44', '2023-11-14 07:29:44', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2023-11-14 07:29:44', '2023-11-14 07:29:44', '', 0, 'http://localhost/star-lounge/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2023-11-14 07:29:44', '2023-11-14 07:29:44', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2023-11-14 07:29:44', '2023-11-14 07:29:44', '', 0, 'http://localhost/star-lounge/?p=48', 3, 'nav_menu_item', '', 0),
(49, 1, '2023-11-14 07:40:01', '2023-11-14 07:40:01', '', 'Theme Option Page', '', 'private', 'closed', 'closed', '', 'theme-option-page', '', '', '2023-11-24 07:52:20', '2023-11-24 07:52:20', '', 0, 'http://localhost/star-lounge/?page_id=49', 0, 'page', '', 0),
(50, 1, '2023-11-14 07:40:01', '2023-11-14 07:40:01', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-14 07:40:01', '2023-11-14 07:40:01', '', 49, 'http://localhost/star-lounge/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-11-14 07:43:09', '2023-11-14 07:43:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"49\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Theme Option Field', 'theme-option-field', 'publish', 'closed', 'closed', '', 'group_6553249a052a3', '', '', '2023-11-23 06:47:17', '2023-11-23 06:47:17', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2023-11-14 07:43:09', '2023-11-14 07:43:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_6553249aa8b31', '', '', '2023-11-14 07:43:09', '2023-11-14 07:43:09', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-11-14 07:43:09', '2023-11-14 07:43:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Footer Shortcontent', 'footer_shortcontent', 'publish', 'closed', 'closed', '', 'field_655324bea8b32', '', '', '2023-11-14 07:43:09', '2023-11-14 07:43:09', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2023-11-14 07:44:07', '2023-11-14 07:44:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_65532541038d3', '', '', '2023-11-14 07:44:07', '2023-11-14 07:44:07', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&p=54', 2, 'acf-field', '', 0),
(55, 1, '2023-11-14 07:44:45', '2023-11-14 07:44:45', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_6553255ebde30', '', '', '2023-11-14 07:44:45', '2023-11-14 07:44:45', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&p=55', 3, 'acf-field', '', 0),
(56, 1, '2023-11-14 07:44:45', '2023-11-14 07:44:45', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_65532568bde31', '', '', '2023-11-14 07:44:45', '2023-11-14 07:44:45', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&p=56', 4, 'acf-field', '', 0),
(58, 1, '2023-11-14 07:48:12', '2023-11-14 07:48:12', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-14 07:48:12', '2023-11-14 07:48:12', '', 49, 'http://localhost/star-lounge/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-11-14 07:50:53', '2023-11-14 07:50:53', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-14 07:50:53', '2023-11-14 07:50:53', '', 49, 'http://localhost/star-lounge/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-11-14 07:55:36', '2023-11-14 07:55:36', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-14 07:55:36', '2023-11-14 07:55:36', '', 49, 'http://localhost/star-lounge/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-11-14 07:58:34', '2023-11-14 07:58:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Home Page Last Orange Section Title', 'home_page_last_orange_section_title', 'publish', 'closed', 'closed', '', 'field_6553286bb8a7f', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=61', 11, 'acf-field', '', 0),
(62, 1, '2023-11-14 07:58:34', '2023-11-14 07:58:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Home Page Last Orange Section Button Text', 'home_page_last_orange_section_button_text', 'publish', 'closed', 'closed', '', 'field_65532894b8a80', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=62', 12, 'acf-field', '', 0),
(63, 1, '2023-11-14 07:58:34', '2023-11-14 07:58:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Home Page Last Orange Section Button Link', 'home_page_last_orange_section_button_link', 'publish', 'closed', 'closed', '', 'field_655328a4b8a81', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=63', 13, 'acf-field', '', 0),
(64, 1, '2023-11-14 08:01:59', '2023-11-14 08:01:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-14 08:01:59', '2023-11-14 08:01:59', '', 5, 'http://localhost/star-lounge/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-11-14 08:46:29', '2023-11-14 08:46:29', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us Group', 'about-us-group', 'publish', 'closed', 'closed', '', 'group_655333d147ffb', '', '', '2023-11-24 10:56:00', '2023-11-24 10:56:00', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2023-11-14 08:46:29', '2023-11-14 08:46:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Top Heading', 'top_heading', 'publish', 'closed', 'closed', '', 'field_655333d193279', '', '', '2023-11-24 09:21:38', '2023-11-24 09:21:38', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2023-11-14 08:55:07', '2023-11-14 08:55:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Main Heading', 'about_main_heading', 'publish', 'closed', 'closed', '', 'field_6553356a5c607', '', '', '2023-11-14 08:55:07', '2023-11-14 08:55:07', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(69, 1, '2023-11-14 08:55:07', '2023-11-14 08:55:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About Description', 'about_description', 'publish', 'closed', 'closed', '', 'field_655335875c609', '', '', '2023-11-24 09:24:29', '2023-11-24 09:24:29', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(70, 1, '2023-11-14 08:55:07', '2023-11-14 08:55:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Marque Section', 'marque_section', 'publish', 'closed', 'closed', '', 'field_655335e15c60a', '', '', '2023-11-24 09:53:01', '2023-11-24 09:53:01', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=70', 3, 'acf-field', '', 0),
(71, 1, '2023-11-14 09:02:24', '2023-11-14 09:02:24', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:02:24', '2023-11-14 09:02:24', '', 10, 'http://localhost/star-lounge/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-11-14 09:03:30', '2023-11-14 09:03:30', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:03:30', '2023-11-14 09:03:30', '', 10, 'http://localhost/star-lounge/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-11-14 09:05:46', '2023-11-14 09:05:46', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Round Image 1', 'round_image_1', 'publish', 'closed', 'closed', '', 'field_655338352bd90', '', '', '2023-11-24 09:41:44', '2023-11-24 09:41:44', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=73', 4, 'acf-field', '', 0),
(74, 1, '2023-11-14 09:05:46', '2023-11-14 09:05:46', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Round Image 2', 'round_image_2', 'publish', 'closed', 'closed', '', 'field_655338492bd91', '', '', '2023-11-24 09:41:44', '2023-11-24 09:41:44', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=74', 5, 'acf-field', '', 0),
(75, 1, '2023-11-14 09:05:46', '2023-11-14 09:05:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Youtube Video', 'about_youtube_video', 'publish', 'closed', 'closed', '', 'field_655338582bd92', '', '', '2023-11-24 09:24:29', '2023-11-24 09:24:29', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=75', 6, 'acf-field', '', 0),
(78, 1, '2023-11-14 09:09:08', '2023-11-14 09:09:08', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:09:08', '2023-11-14 09:09:08', '', 10, 'http://localhost/star-lounge/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-11-14 09:10:07', '2023-11-14 09:10:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Button Text', 'about_button_text', 'publish', 'closed', 'closed', '', 'field_655339505469d', '', '', '2023-11-24 09:24:29', '2023-11-24 09:24:29', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=79', 7, 'acf-field', '', 0),
(80, 1, '2023-11-14 09:10:07', '2023-11-14 09:10:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Button Link', 'about_button_link', 'publish', 'closed', 'closed', '', 'field_6553395b5469e', '', '', '2023-11-24 09:24:29', '2023-11-24 09:24:29', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=80', 8, 'acf-field', '', 0),
(81, 1, '2023-11-14 09:11:33', '2023-11-14 09:11:33', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:11:33', '2023-11-14 09:11:33', '', 10, 'http://localhost/star-lounge/?p=81', 0, 'revision', '', 0),
(88, 1, '2023-11-14 09:34:34', '2023-11-14 09:34:34', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:34:34', '2023-11-14 09:34:34', '', 10, 'http://localhost/star-lounge/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-11-14 09:46:27', '2023-11-14 09:46:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'White Section Right Side Image', 'white_section_right_side_image', 'publish', 'closed', 'closed', '', 'field_655341c402288', '', '', '2023-11-24 10:42:02', '2023-11-24 10:42:02', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=89', 9, 'acf-field', '', 0),
(90, 1, '2023-11-14 09:46:27', '2023-11-14 09:46:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Chef Secret Main Heading', 'chef_secret_main_heading', 'publish', 'closed', 'closed', '', 'field_655341e002289', '', '', '2023-11-24 10:42:02', '2023-11-24 10:42:02', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=90', 10, 'acf-field', '', 0),
(92, 1, '2023-11-14 09:53:16', '2023-11-14 09:53:16', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:53:16', '2023-11-14 09:53:16', '', 10, 'http://localhost/star-lounge/?p=92', 0, 'revision', '', 0),
(95, 1, '2023-11-14 09:56:05', '2023-11-14 09:56:05', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-14 09:56:05', '2023-11-14 09:56:05', '', 10, 'http://localhost/star-lounge/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-11-14 10:08:30', '2023-11-14 10:08:30', '<div class=\"home3-form-bottom\">\r\n<div class=\"single-input-form-home3\">\r\n[select* reservationtable class:custom-select \"1 Person\" \"2 Persons\" \"3 Persons\" \"4 Persons\" \"5 Persons\"]\r\n</div>\r\n<div class=\"single-input-form-home3 \">\r\n[text datepicker class:walcf7-datepicker class:custom-select placeholder:\"Select Date\"]\r\n</div>\r\n<div class=\"single-input-form-home3 \">\r\n[text timepicker class:walcf7-timepicker class:custom-select placeholder:\"Select Time\"] \r\n</div>                      \r\n<div class=\"home3-form-btn\">\r\n[submit class:booktable_btn \"Book A Table\"]\r\n</div>\r\n</div>\n1\n[_site_title] \"Appointment Form\"\n[_site_title] <info@webbersunited.com>\n[_site_admin_email], contact@webbersunited.com\nFrom: [Name]\r\n      [email]\r\nSubject: \"Appointment Form\"\r\n\r\nMessage Body:\r\nName: [Name]\r\nEmail: [email]\r\nPhone: [tel]\r\nMessage: [comment]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [email]\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <info@webbersunited.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Reservation Page Form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-11-24 07:46:19', '2023-11-24 07:46:19', '', 0, 'http://localhost/star-lounge/?post_type=wpcf7_contact_form&#038;p=96', 0, 'wpcf7_contact_form', '', 0),
(97, 1, '2023-11-14 10:42:57', '2023-11-14 10:42:57', '', 'Theme Option Page', '', 'publish', 'closed', 'closed', '', 'theme-option-page', '', '', '2023-11-24 07:39:22', '2023-11-24 07:39:22', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=97', 0, 'cfs', '', 0),
(99, 1, '2023-11-16 05:45:42', '2023-11-16 05:45:42', '', 'Book Now', '', 'publish', 'closed', 'closed', '', 'book-now', '', '', '2023-11-16 06:57:54', '2023-11-16 06:57:54', '', 0, 'http://localhost/star-lounge/?page_id=99', 0, 'page', '', 0),
(100, 1, '2023-11-16 05:45:42', '2023-11-16 05:45:42', '[bookly-form]', '', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-11-16 05:45:42', '2023-11-16 05:45:42', '', 99, 'http://localhost/star-lounge/?p=100', 0, 'revision', '', 0),
(101, 1, '2023-11-16 05:46:05', '2023-11-16 05:46:05', '[bookly-form]', 'Book Now', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-11-16 05:46:05', '2023-11-16 05:46:05', '', 99, 'http://localhost/star-lounge/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-11-16 05:53:46', '2023-11-16 05:53:46', '[bookly-form]{service_info}', 'Book Now', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-11-16 05:53:46', '2023-11-16 05:53:46', '', 99, 'http://localhost/star-lounge/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-11-16 05:54:11', '2023-11-16 05:54:11', '[bookly-form]', 'Book Now', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-11-16 05:54:11', '2023-11-16 05:54:11', '', 99, 'http://localhost/star-lounge/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-11-16 06:47:41', '2023-11-16 06:47:41', '', 'Book Now', '', 'inherit', 'closed', 'closed', '', '99-autosave-v1', '', '', '2023-11-16 06:47:41', '2023-11-16 06:47:41', '', 99, 'http://localhost/star-lounge/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-11-16 06:57:54', '2023-11-16 06:57:54', '', 'Book Now', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-11-16 06:57:54', '2023-11-16 06:57:54', '', 99, 'http://localhost/star-lounge/?p=105', 0, 'revision', '', 0),
(108, 1, '2023-11-16 07:40:12', '2023-11-16 07:40:12', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 07:40:12', '2023-11-16 07:40:12', '', 10, 'http://localhost/star-lounge/?p=108', 0, 'revision', '', 0),
(109, 1, '2023-11-16 07:41:48', '2023-11-16 07:41:48', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 07:41:48', '2023-11-16 07:41:48', '', 10, 'http://localhost/star-lounge/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-11-16 07:42:14', '2023-11-16 07:42:14', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 07:42:14', '2023-11-16 07:42:14', '', 10, 'http://localhost/star-lounge/?p=110', 0, 'revision', '', 0),
(111, 1, '2023-11-16 07:42:37', '2023-11-16 07:42:37', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 07:42:37', '2023-11-16 07:42:37', '', 10, 'http://localhost/star-lounge/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-11-16 07:54:18', '2023-11-16 07:54:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Secret chef Heading', 'secret_chef_heading', 'publish', 'closed', 'closed', '', 'field_6555ca443989e', '', '', '2023-11-24 10:47:23', '2023-11-24 10:47:23', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=112', 11, 'acf-field', '', 0),
(113, 1, '2023-11-16 07:54:18', '2023-11-16 07:54:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"rows\";s:0:\"\";}', 'Secret chef Content', 'secret_chef_content', 'publish', 'closed', 'closed', '', 'field_6555ca7a3989f', '', '', '2023-11-24 10:52:07', '2023-11-24 10:52:07', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=113', 12, 'acf-field', '', 0),
(114, 1, '2023-11-16 07:54:18', '2023-11-16 07:54:18', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Secret chef Image', 'secret_chef_image', 'publish', 'closed', 'closed', '', 'field_6555ca92398a0', '', '', '2023-11-24 10:47:23', '2023-11-24 10:47:23', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=114', 13, 'acf-field', '', 0),
(115, 1, '2023-11-16 08:12:47', '2023-11-16 08:12:47', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 08:12:47', '2023-11-16 08:12:47', '', 10, 'http://localhost/star-lounge/?p=115', 0, 'revision', '', 0),
(116, 1, '2023-11-16 08:14:16', '2023-11-16 08:14:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Our Best Feature Main Heading', 'our_best_feature_main_heading', 'publish', 'closed', 'closed', '', 'field_6555cf4670c26', '', '', '2023-11-24 10:53:53', '2023-11-24 10:53:53', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=116', 15, 'acf-field', '', 0),
(117, 1, '2023-11-16 08:15:20', '2023-11-16 08:15:20', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 08:15:20', '2023-11-16 08:15:20', '', 10, 'http://localhost/star-lounge/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-11-16 09:12:42', '2023-11-16 09:12:42', '', 'About Page Group', '', 'publish', 'closed', 'closed', '', 'about-page-group', '', '', '2023-11-24 10:22:41', '2023-11-24 10:22:41', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=118', 0, 'cfs', '', 0),
(121, 1, '2023-11-16 09:54:04', '2023-11-16 09:54:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Best Feature Section Button', 'best_feature_section_button', 'publish', 'closed', 'closed', '', 'field_6555e68072ab1', '', '', '2023-11-24 10:53:53', '2023-11-24 10:53:53', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=121', 16, 'acf-field', '', 0),
(122, 1, '2023-11-16 09:54:04', '2023-11-16 09:54:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Best Feature Section Button Link', 'best_feature_section_button_link', 'publish', 'closed', 'closed', '', 'field_6555e6ad72ab2', '', '', '2023-11-24 10:53:53', '2023-11-24 10:53:53', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=122', 17, 'acf-field', '', 0),
(123, 1, '2023-11-16 09:55:36', '2023-11-16 09:55:36', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-16 09:55:36', '2023-11-16 09:55:36', '', 10, 'http://localhost/star-lounge/?p=123', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2023-11-16 10:24:35', '2023-11-16 10:24:35', '<div class=\"about-us-form-bottom\">\r\n<div class=\"single-input-form-about-us\">\r\n[text* Name class:about-us-input-custom class:name-icon placeholder \"Your Name\"]\r\n</div>\r\n<div class=\"single-input-form-about-us\">\r\n[email* email class:about-us-input-custom class:email-icon placeholder \"Email Address\"]\r\n</div>\r\n<div class=\"single-input-form-about-us\">\r\n[tel* tel class:about-us-input-custom class:mobile-icon placeholder \"Phone Number\"]\r\n</div>\r\n<div class=\"single-input-form-about-us\">\r\n[textarea message class:about-us-message class:message-icon placeholder \"Message\"]\r\n</div>\r\n<div class=\"send-message-btn\">\r\n[submit class:contsubtn \"Send Your Message\"]\r\n</div>\r\n</div>\n1\n[_site_title] \"Contact Form Information\"\n[_site_title] <info@webbersunited.com>\n[_site_admin_email], contact@webbersunited.com\nFrom: [Name]\r\n      [email]\r\nSubject: \"Contact Form Information\"\r\n\r\nMessage Body:\r\nName: [Name]\r\nEmail: [email]\r\nAddress: [address]\r\nMessage: [comment]\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [email]\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <info@webbersunited.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact Page Form', '', 'publish', 'closed', 'closed', '', 'contact-page-form', '', '', '2023-11-23 07:43:00', '2023-11-23 07:43:00', '', 0, 'http://localhost/star-lounge/?post_type=wpcf7_contact_form&#038;p=124', 0, 'wpcf7_contact_form', '', 0),
(125, 1, '2023-11-16 10:49:54', '2023-11-16 10:49:54', '', 'Service Page Group', '', 'publish', 'closed', 'closed', '', 'service-page-group', '', '', '2023-11-17 05:19:08', '2023-11-17 05:19:08', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=125', 0, 'cfs', '', 0),
(127, 1, '2023-11-17 04:58:17', '2023-11-17 04:58:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Service Page Group', 'service-page-group', 'publish', 'closed', 'closed', '', 'group_6556f2b8ba77e', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=127', 0, 'acf-field-group', '', 0),
(128, 1, '2023-11-17 04:58:17', '2023-11-17 04:58:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Service Page Second Section Heading', 'service_page_second_section_heading', 'publish', 'closed', 'closed', '', 'field_6556f2bc2875f', '', '', '2023-11-17 04:58:17', '2023-11-17 04:58:17', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=128', 0, 'acf-field', '', 0),
(129, 1, '2023-11-17 04:58:17', '2023-11-17 04:58:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Service Page Second Section Description', 'service_page_second_section_description', 'publish', 'closed', 'closed', '', 'field_6556f2cd28760', '', '', '2023-11-17 04:58:17', '2023-11-17 04:58:17', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=129', 1, 'acf-field', '', 0),
(130, 1, '2023-11-17 04:58:17', '2023-11-17 04:58:17', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Service Page Second Section Image', 'service_page_second_section_image', 'publish', 'closed', 'closed', '', 'field_6556f2d928761', '', '', '2023-11-17 04:58:17', '2023-11-17 04:58:17', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=130', 2, 'acf-field', '', 0),
(132, 1, '2023-11-17 05:00:06', '2023-11-17 05:00:06', '', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-17 05:00:06', '2023-11-17 05:00:06', '', 13, 'http://localhost/star-lounge/?p=132', 0, 'revision', '', 0),
(133, 1, '2023-11-17 05:24:35', '2023-11-17 05:24:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Brushup Package Main Heading', 'brushup_package_main_heading', 'publish', 'closed', 'closed', '', 'field_6556f8d7eff54', '', '', '2023-11-17 05:24:35', '2023-11-17 05:24:35', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=133', 3, 'acf-field', '', 0),
(134, 1, '2023-11-17 05:24:35', '2023-11-17 05:24:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Brushup Package Main Subheading', 'brushup_package_main_subheading', 'publish', 'closed', 'closed', '', 'field_6556f8e7eff55', '', '', '2023-11-17 05:24:35', '2023-11-17 05:24:35', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=134', 4, 'acf-field', '', 0),
(135, 1, '2023-11-17 05:26:41', '2023-11-17 05:26:41', '', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-17 05:26:41', '2023-11-17 05:26:41', '', 13, 'http://localhost/star-lounge/?p=135', 0, 'revision', '', 0),
(142, 1, '2023-11-17 05:39:14', '2023-11-17 05:39:14', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Extra Other Category Service Group', 'extra_other_category_service_group', 'publish', 'closed', 'closed', '', 'field_6556fc49513a5', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 127, 'http://localhost/star-lounge/?post_type=acf-field&p=142', 5, 'acf-field', '', 0),
(143, 1, '2023-11-17 05:39:14', '2023-11-17 05:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Extra Category 1st Heading', 'extra_category_1st_heading', 'publish', 'closed', 'closed', '', 'field_6556fc56513a6', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 142, 'http://localhost/star-lounge/?post_type=acf-field&p=143', 0, 'acf-field', '', 0),
(144, 1, '2023-11-17 05:39:14', '2023-11-17 05:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Extra Category 1st Description', 'extra_category_1st_description', 'publish', 'closed', 'closed', '', 'field_6556fc67513a7', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 142, 'http://localhost/star-lounge/?post_type=acf-field&p=144', 1, 'acf-field', '', 0),
(145, 1, '2023-11-17 05:39:14', '2023-11-17 05:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Extra Category 2nd Heading', 'extra_category_2nd_heading', 'publish', 'closed', 'closed', '', 'field_6556fc73513a8', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 142, 'http://localhost/star-lounge/?post_type=acf-field&p=145', 2, 'acf-field', '', 0),
(146, 1, '2023-11-17 05:39:14', '2023-11-17 05:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Extra Category 2nd Description', 'extra_category_2nd_description', 'publish', 'closed', 'closed', '', 'field_6556fc7d513a9', '', '', '2023-11-17 05:39:14', '2023-11-17 05:39:14', '', 142, 'http://localhost/star-lounge/?post_type=acf-field&p=146', 3, 'acf-field', '', 0),
(147, 1, '2023-11-17 05:46:49', '2023-11-17 05:46:49', '', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-17 05:46:49', '2023-11-17 05:46:49', '', 13, 'http://localhost/star-lounge/?p=147', 0, 'revision', '', 0),
(148, 1, '2023-11-17 05:51:47', '2023-11-17 05:51:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-17 05:51:47', '2023-11-17 05:51:47', '', 5, 'http://localhost/star-lounge/?p=148', 0, 'revision', '', 0),
(149, 1, '2023-11-17 09:32:46', '2023-11-17 09:32:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Alberta Road Test Booking', '', 'trash', 'open', 'open', '', 'alberta-road-test-booking__trashed', '', '', '2023-11-24 06:28:23', '2023-11-24 06:28:23', '', 0, 'http://localhost/star-lounge/?p=149', 0, 'post', '', 0),
(151, 1, '2023-11-17 09:32:46', '2023-11-17 09:32:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Alberta Road Test Booking', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-11-17 09:32:46', '2023-11-17 09:32:46', '', 149, 'http://localhost/star-lounge/?p=151', 0, 'revision', '', 0),
(152, 1, '2023-11-17 09:33:43', '2023-11-17 09:33:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Alberta Drivers Guide (2023)', '', 'trash', 'open', 'open', '', 'alberta-drivers-guide-2023__trashed', '', '', '2023-11-24 06:28:20', '2023-11-24 06:28:20', '', 0, 'http://localhost/star-lounge/?p=152', 0, 'post', '', 0),
(154, 1, '2023-11-17 09:33:43', '2023-11-17 09:33:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Alberta Drivers Guide (2023)', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-11-17 09:33:43', '2023-11-17 09:33:43', '', 152, 'http://localhost/star-lounge/?p=154', 0, 'revision', '', 0),
(155, 1, '2023-11-17 09:34:40', '2023-11-17 09:34:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Healthy Eating Doesn’t Have To Be Very Tiring, It Can Be Fun', '', 'publish', 'open', 'open', '', 'healthy-eating-doesnt-have-to-be-very-tiring-it-can-be-fun', '', '', '2023-11-24 06:28:14', '2023-11-24 06:28:14', '', 0, 'http://localhost/star-lounge/?p=155', 0, 'post', '', 0),
(157, 1, '2023-11-17 09:34:40', '2023-11-17 09:34:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Class 7 Practice Test', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-11-17 09:34:40', '2023-11-17 09:34:40', '', 155, 'http://localhost/star-lounge/?p=157', 0, 'revision', '', 0),
(158, 1, '2023-11-17 09:36:24', '2023-11-17 09:36:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'Everything You Wanted To Know About Dining In Restaurants', '', 'publish', 'open', 'open', '', 'everything-you-wanted-to-know-about-dining-in-restaurants', '', '', '2023-11-24 06:27:42', '2023-11-24 06:27:42', '', 0, 'http://localhost/star-lounge/?p=158', 0, 'post', '', 0),
(160, 1, '2023-11-17 09:36:24', '2023-11-17 09:36:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'Alberta Transportation', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2023-11-17 09:36:24', '2023-11-17 09:36:24', '', 158, 'http://localhost/star-lounge/?p=160', 0, 'revision', '', 0),
(161, 1, '2023-11-17 09:38:08', '2023-11-17 09:38:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Restaurants In Paris', '', 'publish', 'open', 'open', '', 'restaurants-in-paris', '', '', '2023-11-24 06:46:02', '2023-11-24 06:46:02', '', 0, 'http://localhost/star-lounge/?p=161', 0, 'post', '', 0),
(164, 1, '2023-11-17 09:38:08', '2023-11-17 09:38:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Traffic Safety Programs', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2023-11-17 09:38:08', '2023-11-17 09:38:08', '', 161, 'http://localhost/star-lounge/?p=164', 0, 'revision', '', 0),
(165, 1, '2023-11-17 09:44:39', '2023-11-17 09:44:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-11-17 09:44:39', '2023-11-17 09:44:39', '', 1, 'http://localhost/star-lounge/?p=165', 0, 'revision', '', 0),
(166, 1, '2023-11-17 09:45:59', '2023-11-17 09:45:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Resources Main Heading', 'resources_main_heading', 'publish', 'closed', 'closed', '', 'field_6557362aac1c2', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=166', 14, 'acf-field', '', 0),
(167, 1, '2023-11-17 09:47:05', '2023-11-17 09:47:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-17 09:47:05', '2023-11-17 09:47:05', '', 5, 'http://localhost/star-lounge/?p=167', 0, 'revision', '', 0),
(168, 1, '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 'All-In-One Training Package', '', 'publish', 'closed', 'closed', '', 'all-in-one-training-package', '', '', '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 0, 'http://localhost/star-lounge/?p=168', 1, 'nav_menu_item', '', 0),
(169, 1, '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 'Brush-Up Packages', '', 'publish', 'closed', 'closed', '', 'brush-up-packages', '', '', '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 0, 'http://localhost/star-lounge/?p=169', 2, 'nav_menu_item', '', 0),
(170, 1, '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 'Car Rental', '', 'publish', 'closed', 'closed', '', 'car-rental', '', '', '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 0, 'http://localhost/star-lounge/?p=170', 3, 'nav_menu_item', '', 0),
(171, 1, '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 'Free Pick Up & Drop Off Location', '', 'publish', 'closed', 'closed', '', 'free-pick-up-drop-off-location', '', '', '2023-11-17 11:42:23', '2023-11-17 11:42:23', '', 0, 'http://localhost/star-lounge/?p=171', 4, 'nav_menu_item', '', 0),
(172, 1, '2023-11-21 05:33:01', '2023-11-21 05:33:01', '{\n    \"blogdescription\": {\n        \"value\": \"Driving School\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-21 05:33:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c689097d-802a-4050-a2d8-eb2a69a0a2a4', '', '', '2023-11-21 05:33:01', '2023-11-21 05:33:01', '', 0, 'http://localhost/star-lounge/c689097d-802a-4050-a2d8-eb2a69a0a2a4/', 0, 'customize_changeset', '', 0),
(173, 1, '2023-11-21 05:33:41', '2023-11-21 05:33:41', '{\n    \"site_icon\": {\n        \"value\": 57,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-21 05:33:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cda3616d-55e4-4eb0-8b1a-18cd5af0fba5', '', '', '2023-11-21 05:33:41', '2023-11-21 05:33:41', '', 0, 'http://localhost/star-lounge/cda3616d-55e4-4eb0-8b1a-18cd5af0fba5/', 0, 'customize_changeset', '', 0),
(174, 1, '2023-11-21 07:23:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-11-21 07:23:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/star-lounge/?p=174', 0, 'post', '', 0),
(175, 1, '2023-11-21 07:24:20', '2023-11-21 07:24:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-21 07:24:20', '2023-11-21 07:24:20', '', 5, 'http://localhost/star-lounge/?p=175', 0, 'revision', '', 0),
(176, 1, '2023-11-21 07:25:30', '2023-11-21 07:25:30', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-21 07:25:30', '2023-11-21 07:25:30', '', 10, 'http://localhost/star-lounge/?p=176', 0, 'revision', '', 0),
(179, 1, '2023-11-22 03:47:25', '2023-11-22 03:47:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Under Banner Title', 'under_banner_title', 'publish', 'closed', 'closed', '', 'field_655d7997a276b', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=179', 3, 'acf-field', '', 0),
(180, 1, '2023-11-22 03:47:25', '2023-11-22 03:47:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Under Banner Button Text', 'under_banner_button_text', 'publish', 'closed', 'closed', '', 'field_655d79aea276c', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=180', 4, 'acf-field', '', 0),
(181, 1, '2023-11-22 03:47:25', '2023-11-22 03:47:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Under Banner Button Link', 'under_banner_button_link', 'publish', 'closed', 'closed', '', 'field_655d79bda276d', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=181', 5, 'acf-field', '', 0),
(182, 1, '2023-11-22 03:52:01', '2023-11-22 03:52:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-22 03:52:01', '2023-11-22 03:52:01', '', 5, 'http://localhost/star-lounge/?p=182', 0, 'revision', '', 0),
(183, 1, '2023-11-23 05:54:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-11-23 05:54:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&p=183', 0, 'acf-field-group', '', 0),
(189, 1, '2023-11-23 06:30:04', '2023-11-23 06:30:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Subheading', 'banner_subheading', 'publish', 'closed', 'closed', '', 'field_655ef15b20896', '', '', '2023-11-23 06:30:16', '2023-11-23 06:30:16', '', 21, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=189', 2, 'acf-field', '', 0),
(190, 1, '2023-11-23 06:30:54', '2023-11-23 06:30:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-23 06:30:54', '2023-11-23 06:30:54', '', 5, 'http://localhost/star-lounge/?p=190', 0, 'revision', '', 0),
(191, 1, '2023-11-23 06:34:20', '2023-11-23 06:34:20', '', 'hero-1', '', 'inherit', 'open', 'closed', '', 'hero-1', '', '', '2023-11-23 06:34:20', '2023-11-23 06:34:20', '', 5, 'http://localhost/star-lounge/wp-content/uploads/2023/11/hero-1.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2023-11-23 06:34:24', '2023-11-23 06:34:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-23 06:34:24', '2023-11-23 06:34:24', '', 5, 'http://localhost/star-lounge/?p=192', 0, 'revision', '', 0),
(193, 1, '2023-11-23 06:45:10', '2023-11-23 06:45:10', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-23 06:45:10', '2023-11-23 06:45:10', '', 49, 'http://localhost/star-lounge/?p=193', 0, 'revision', '', 0),
(194, 1, '2023-11-23 06:45:51', '2023-11-23 06:45:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Working Hours', 'working_hours', 'publish', 'closed', 'closed', '', 'field_655ef515c9e19', '', '', '2023-11-23 06:47:16', '2023-11-23 06:47:16', '', 51, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=194', 5, 'acf-field', '', 0),
(195, 1, '2023-11-23 06:48:13', '2023-11-23 06:48:13', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-23 06:48:13', '2023-11-23 06:48:13', '', 49, 'http://localhost/star-lounge/?p=195', 0, 'revision', '', 0),
(196, 1, '2023-11-23 07:00:44', '2023-11-23 07:00:44', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-23 07:00:44', '2023-11-23 07:00:44', '', 49, 'http://localhost/star-lounge/?p=196', 0, 'revision', '', 0),
(197, 1, '2023-11-23 07:05:27', '2023-11-23 07:05:27', '', 'Our Menu', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-23 07:05:27', '2023-11-23 07:05:27', '', 13, 'http://localhost/star-lounge/?p=197', 0, 'revision', '', 0),
(198, 1, '2023-11-23 07:11:11', '2023-11-23 07:11:11', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2023-11-23 07:11:11', '2023-11-23 07:11:11', '', 0, 'http://localhost/star-lounge/?page_id=198', 0, 'page', '', 0),
(199, 1, '2023-11-23 07:11:11', '2023-11-23 07:11:11', '', 'Events', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2023-11-23 07:11:11', '2023-11-23 07:11:11', '', 198, 'http://localhost/star-lounge/?p=199', 0, 'revision', '', 0),
(200, 1, '2023-11-24 06:20:37', '2023-11-23 07:11:37', ' ', '', '', 'publish', 'closed', 'closed', '', '200', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=200', 4, 'nav_menu_item', '', 0),
(201, 1, '2023-11-23 07:19:54', '2023-11-23 07:19:54', '', 'Recipe', '', 'publish', 'closed', 'closed', '', 'recipe', '', '', '2023-11-23 07:19:54', '2023-11-23 07:19:54', '', 0, 'http://localhost/star-lounge/?page_id=201', 0, 'page', '', 0),
(202, 1, '2023-11-23 07:19:54', '2023-11-23 07:19:54', '', 'Recipe', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2023-11-23 07:19:54', '2023-11-23 07:19:54', '', 201, 'http://localhost/star-lounge/?p=202', 0, 'revision', '', 0),
(203, 1, '2023-11-24 06:20:37', '2023-11-23 07:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=203', 5, 'nav_menu_item', '', 0),
(204, 1, '2023-11-23 07:29:14', '2023-11-23 07:29:14', '', 'Reservation', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2023-11-24 08:55:56', '2023-11-24 08:55:56', '', 0, 'http://localhost/star-lounge/?page_id=204', 0, 'page', '', 0),
(205, 1, '2023-11-23 07:29:14', '2023-11-23 07:29:14', '', 'Reservation', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2023-11-23 07:29:14', '2023-11-23 07:29:14', '', 204, 'http://localhost/star-lounge/?p=205', 0, 'revision', '', 0),
(206, 1, '2023-11-24 06:20:37', '2023-11-23 07:29:43', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=206', 6, 'nav_menu_item', '', 0),
(207, 1, '2023-11-23 08:51:08', '2023-11-23 08:51:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"ourrecipe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Recipe Post Type', 'recipe-post-type', 'publish', 'closed', 'closed', '', 'group_655f122ddba73', '', '', '2023-11-23 11:07:55', '2023-11-23 11:07:55', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=207', 0, 'acf-field-group', '', 0),
(208, 1, '2023-11-23 08:51:08', '2023-11-23 08:51:08', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Reservation Extra Field Add Content', 'reservation_extra_field_add_content', 'publish', 'closed', 'closed', '', 'field_655f122efb9bd', '', '', '2023-11-23 08:51:08', '2023-11-23 08:51:08', '', 207, 'http://localhost/star-lounge/?post_type=acf-field&p=208', 0, 'acf-field', '', 0),
(209, 1, '2023-11-23 08:53:25', '2023-11-23 08:53:25', '<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n\r\n<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n\r\n<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n</p>\r\n', 'Recipe 1', '', 'publish', 'closed', 'closed', '', 'recipe-1', '', '', '2023-11-23 09:25:23', '2023-11-23 09:25:23', '', 0, 'http://localhost/star-lounge/?post_type=ourrecipe&#038;p=209', 0, 'ourrecipe', '', 0),
(210, 1, '2023-11-23 08:53:08', '2023-11-23 08:53:08', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1', '', '', '2023-11-23 08:53:08', '2023-11-23 08:53:08', '', 209, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-1.png', 0, 'attachment', 'image/png', 0),
(211, 1, '2023-11-23 08:54:19', '2023-11-23 08:54:19', '<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n\r\n<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n\r\n<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\r\n</p>', 'Recipe 2', '', 'publish', 'closed', 'closed', '', 'recipe-2', '', '', '2023-11-23 09:35:55', '2023-11-23 09:35:55', '', 0, 'http://localhost/star-lounge/?post_type=ourrecipe&#038;p=211', 0, 'ourrecipe', '', 0),
(212, 1, '2023-11-23 08:54:13', '2023-11-23 08:54:13', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3', '', '', '2023-11-23 08:54:13', '2023-11-23 08:54:13', '', 211, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-3.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2023-11-23 09:25:19', '2023-11-23 09:25:19', '<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\n\n<p class=\"singleblog1-txt2\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.\n</p>\n', 'Recipe 1', '', 'inherit', 'closed', 'closed', '', '209-autosave-v1', '', '', '2023-11-23 09:25:19', '2023-11-23 09:25:19', '', 209, 'http://localhost/star-lounge/?p=213', 0, 'revision', '', 0),
(214, 1, '2023-11-23 10:08:19', '2023-11-23 10:08:19', '', 'Great & Peaceful Breakfast', '', 'publish', 'closed', 'closed', '', 'great-peaceful-breakfast', '', '', '2023-11-23 10:26:38', '2023-11-23 10:26:38', '', 0, 'http://localhost/star-lounge/?post_type=menu&#038;p=214', 0, 'menu', '', 0),
(215, 1, '2023-11-23 10:05:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-11-23 10:05:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&p=215', 0, 'acf-field-group', '', 0),
(216, 1, '2023-11-23 10:08:01', '2023-11-23 10:08:01', '', 'Menu Post Type', '', 'publish', 'closed', 'closed', '', 'menu-post-type', '', '', '2023-11-23 10:22:35', '2023-11-23 10:22:35', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=216', 0, 'cfs', '', 0),
(217, 1, '2023-11-23 10:11:42', '2023-11-23 10:11:42', '', 'menu-1', '', 'inherit', 'open', 'closed', '', 'menu-1', '', '', '2023-11-23 10:11:42', '2023-11-23 10:11:42', '', 214, 'http://localhost/star-lounge/wp-content/uploads/2023/11/menu-1.png', 0, 'attachment', 'image/png', 0),
(218, 1, '2023-11-23 10:17:41', '2023-11-23 10:17:41', '', 'menu-2', '', 'inherit', 'open', 'closed', '', 'menu-2', '', '', '2023-11-23 10:17:41', '2023-11-23 10:17:41', '', 214, 'http://localhost/star-lounge/wp-content/uploads/2023/11/menu-2.png', 0, 'attachment', 'image/png', 0),
(219, 1, '2023-11-23 10:17:52', '2023-11-23 10:17:52', '', 'menu-3', '', 'inherit', 'open', 'closed', '', 'menu-3', '', '', '2023-11-23 10:17:52', '2023-11-23 10:17:52', '', 214, 'http://localhost/star-lounge/wp-content/uploads/2023/11/menu-3.png', 0, 'attachment', 'image/png', 0),
(220, 1, '2023-11-23 10:18:19', '2023-11-23 10:18:19', '', 'menu-4', '', 'inherit', 'open', 'closed', '', 'menu-4', '', '', '2023-11-23 10:18:19', '2023-11-23 10:18:19', '', 214, 'http://localhost/star-lounge/wp-content/uploads/2023/11/menu-4.png', 0, 'attachment', 'image/png', 0),
(221, 1, '2023-11-23 10:20:36', '2023-11-23 10:20:36', '', 'Take Your Real Lunch Break', '', 'publish', 'closed', 'closed', '', 'take-your-real-lunch-break', '', '', '2023-11-23 10:26:48', '2023-11-23 10:26:48', '', 0, 'http://localhost/star-lounge/?post_type=menu&#038;p=221', 0, 'menu', '', 0),
(222, 1, '2023-11-23 11:09:52', '2023-11-23 11:09:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"204\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Reservation Page Group', 'reservation-page-group', 'publish', 'closed', 'closed', '', 'group_655f32be90481', '', '', '2023-11-23 11:09:52', '2023-11-23 11:09:52', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=222', 0, 'acf-field-group', '', 0),
(223, 1, '2023-11-23 11:09:52', '2023-11-23 11:09:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Reservation 1st Section Heading', 'reservation_1st_section_heading', 'publish', 'closed', 'closed', '', 'field_655f32bebe677', '', '', '2023-11-23 11:09:52', '2023-11-23 11:09:52', '', 222, 'http://localhost/star-lounge/?post_type=acf-field&p=223', 0, 'acf-field', '', 0),
(224, 1, '2023-11-23 11:09:52', '2023-11-23 11:09:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Reservation 1st Section Subheading', 'reservation_1st_section_subheading', 'publish', 'closed', 'closed', '', 'field_655f32e8be678', '', '', '2023-11-23 11:09:52', '2023-11-23 11:09:52', '', 222, 'http://localhost/star-lounge/?post_type=acf-field&p=224', 1, 'acf-field', '', 0),
(225, 1, '2023-11-23 11:10:33', '2023-11-23 11:10:33', '', 'Reservation', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2023-11-23 11:10:33', '2023-11-23 11:10:33', '', 204, 'http://localhost/star-lounge/?p=225', 0, 'revision', '', 0),
(226, 1, '2023-11-23 11:13:54', '2023-11-23 11:13:54', '', 'Reservation Page Group', '', 'publish', 'closed', 'closed', '', 'reservation-page-group', '', '', '2023-11-23 11:27:06', '2023-11-23 11:27:06', '', 0, 'http://localhost/star-lounge/?post_type=cfs&#038;p=226', 0, 'cfs', '', 0),
(227, 1, '2023-11-23 11:28:13', '2023-11-23 11:28:13', '', 'gallery-1', '', 'inherit', 'open', 'closed', '', 'gallery-1', '', '', '2023-11-23 11:28:13', '2023-11-23 11:28:13', '', 204, 'http://localhost/star-lounge/wp-content/uploads/2023/11/gallery-1.png', 0, 'attachment', 'image/png', 0),
(228, 1, '2023-11-23 11:29:22', '2023-11-23 11:29:22', '', 'gallery-2', '', 'inherit', 'open', 'closed', '', 'gallery-2', '', '', '2023-11-23 11:29:22', '2023-11-23 11:29:22', '', 204, 'http://localhost/star-lounge/wp-content/uploads/2023/11/gallery-2.png', 0, 'attachment', 'image/png', 0),
(229, 1, '2023-11-23 11:32:33', '2023-11-23 11:32:33', '', 'gallery-3', '', 'inherit', 'open', 'closed', '', 'gallery-3', '', '', '2023-11-23 11:32:33', '2023-11-23 11:32:33', '', 204, 'http://localhost/star-lounge/wp-content/uploads/2023/11/gallery-3.png', 0, 'attachment', 'image/png', 0),
(230, 1, '2023-11-23 11:32:55', '2023-11-23 11:32:55', '', 'gallery-4', '', 'inherit', 'open', 'closed', '', 'gallery-4', '', '', '2023-11-23 11:32:55', '2023-11-23 11:32:55', '', 204, 'http://localhost/star-lounge/wp-content/uploads/2023/11/gallery-4.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2023-11-24 04:50:25', '2023-11-24 04:50:25', '<p class=\"singleblog1-txt2\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<p class=\"singleblog1-txt2\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Everything You Wanted To Know About Dining In Restaurants', '', 'publish', 'closed', 'closed', '', 'everything-you-wanted-to-know-about-dining-in-restaurants', '', '', '2023-11-24 05:20:32', '2023-11-24 05:20:32', '', 0, 'http://localhost/star-lounge/?post_type=ourevent&#038;p=231', 0, 'ourevent', '', 0),
(232, 1, '2023-11-24 04:50:20', '2023-11-24 04:50:20', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1-2', '', '', '2023-11-24 04:50:20', '2023-11-24 04:50:20', '', 231, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-1-1.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2023-11-24 04:50:50', '2023-11-24 04:50:50', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Restaurants In Paris - Get To Know Them In The City', '', 'publish', 'closed', 'closed', '', 'restaurants-in-paris-get-to-know-them-in-the-city', '', '', '2023-11-24 05:30:43', '2023-11-24 05:30:43', '', 0, 'http://localhost/star-lounge/?post_type=ourevent&#038;p=233', 0, 'ourevent', '', 0),
(234, 1, '2023-11-24 04:50:48', '2023-11-24 04:50:48', '', 'blog-2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2023-11-24 04:50:48', '2023-11-24 04:50:48', '', 233, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-2.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2023-11-24 06:18:28', '2023-11-24 06:18:28', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2023-11-24 06:18:28', '2023-11-24 06:18:28', '', 0, 'http://localhost/star-lounge/?page_id=235', 0, 'page', '', 0),
(236, 1, '2023-11-24 06:18:28', '2023-11-24 06:18:28', '', 'News', '', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2023-11-24 06:18:28', '2023-11-24 06:18:28', '', 235, 'http://localhost/star-lounge/?p=236', 0, 'revision', '', 0),
(237, 1, '2023-11-24 06:20:37', '2023-11-24 06:19:28', ' ', '', '', 'publish', 'closed', 'closed', '', '237', '', '', '2023-11-24 06:20:37', '2023-11-24 06:20:37', '', 0, 'http://localhost/star-lounge/?p=237', 7, 'nav_menu_item', '', 0),
(238, 1, '2023-11-24 06:27:01', '2023-11-24 06:27:01', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1-3', '', '', '2023-11-24 06:27:01', '2023-11-24 06:27:01', '', 161, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-1-2.png', 0, 'attachment', 'image/png', 0),
(239, 1, '2023-11-24 06:27:05', '2023-11-24 06:27:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Restaurants In Paris', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2023-11-24 06:27:05', '2023-11-24 06:27:05', '', 161, 'http://localhost/star-lounge/?p=239', 0, 'revision', '', 0),
(240, 1, '2023-11-24 06:27:39', '2023-11-24 06:27:39', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3-2', '', '', '2023-11-24 06:27:39', '2023-11-24 06:27:39', '', 158, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-3-1.png', 0, 'attachment', 'image/png', 0),
(241, 1, '2023-11-24 06:27:42', '2023-11-24 06:27:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'Everything You Wanted To Know About Dining In Restaurants', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2023-11-24 06:27:42', '2023-11-24 06:27:42', '', 158, 'http://localhost/star-lounge/?p=241', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(242, 1, '2023-11-24 06:28:11', '2023-11-24 06:28:11', '', 'blog-4', '', 'inherit', 'open', 'closed', '', 'blog-4', '', '', '2023-11-24 06:28:11', '2023-11-24 06:28:11', '', 155, 'http://localhost/star-lounge/wp-content/uploads/2023/11/blog-4.png', 0, 'attachment', 'image/png', 0),
(243, 1, '2023-11-24 06:28:14', '2023-11-24 06:28:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Healthy Eating Doesn’t Have To Be Very Tiring, It Can Be Fun', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-11-24 06:28:14', '2023-11-24 06:28:14', '', 155, 'http://localhost/star-lounge/?p=243', 0, 'revision', '', 0),
(244, 1, '2023-11-24 06:46:02', '2023-11-24 06:46:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'Restaurants In Paris', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2023-11-24 06:46:02', '2023-11-24 06:46:02', '', 161, 'http://localhost/star-lounge/?p=244', 0, 'revision', '', 0),
(245, 1, '2023-11-24 07:52:20', '2023-11-24 07:52:20', '', 'Theme Option Page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-11-24 07:52:20', '2023-11-24 07:52:20', '', 49, 'http://localhost/star-lounge/?p=245', 0, 'revision', '', 0),
(246, 1, '2023-11-24 08:30:32', '2023-11-24 08:30:32', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact Page Group', 'contact-page-group', 'publish', 'closed', 'closed', '', 'group_65605ef17d733', '', '', '2023-11-24 08:30:32', '2023-11-24 08:30:32', '', 0, 'http://localhost/star-lounge/?post_type=acf-field-group&#038;p=246', 0, 'acf-field-group', '', 0),
(247, 1, '2023-11-24 08:30:32', '2023-11-24 08:30:32', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Contact Page Right Side Image 1', 'contact_page_right_side_image_1', 'publish', 'closed', 'closed', '', 'field_65605ef1221c6', '', '', '2023-11-24 08:30:32', '2023-11-24 08:30:32', '', 246, 'http://localhost/star-lounge/?post_type=acf-field&p=247', 0, 'acf-field', '', 0),
(248, 1, '2023-11-24 08:30:32', '2023-11-24 08:30:32', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Contact Page Right Side Image 2', 'contact_page_right_side_image_2', 'publish', 'closed', 'closed', '', 'field_65605f13221c7', '', '', '2023-11-24 08:30:32', '2023-11-24 08:30:32', '', 246, 'http://localhost/star-lounge/?post_type=acf-field&p=248', 1, 'acf-field', '', 0),
(249, 1, '2023-11-24 08:31:50', '2023-11-24 08:31:50', '', 'contact-1', '', 'inherit', 'open', 'closed', '', 'contact-1', '', '', '2023-11-24 08:31:50', '2023-11-24 08:31:50', '', 17, 'http://localhost/star-lounge/wp-content/uploads/2023/11/contact-1.png', 0, 'attachment', 'image/png', 0),
(250, 1, '2023-11-24 08:32:01', '2023-11-24 08:32:01', '', 'contact-2', '', 'inherit', 'open', 'closed', '', 'contact-2', '', '', '2023-11-24 08:32:01', '2023-11-24 08:32:01', '', 17, 'http://localhost/star-lounge/wp-content/uploads/2023/11/contact-2.png', 0, 'attachment', 'image/png', 0),
(251, 1, '2023-11-24 08:33:07', '2023-11-24 08:33:07', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-24 08:33:07', '2023-11-24 08:33:07', '', 17, 'http://localhost/star-lounge/?p=251', 0, 'revision', '', 0),
(252, 1, '2023-11-24 09:24:49', '2023-11-24 09:24:49', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 09:24:49', '2023-11-24 09:24:49', '', 10, 'http://localhost/star-lounge/?p=252', 0, 'revision', '', 0),
(253, 1, '2023-11-24 09:25:25', '2023-11-24 09:25:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 09:25:25', '2023-11-24 09:25:25', '', 10, 'http://localhost/star-lounge/?p=253', 0, 'revision', '', 0),
(255, 1, '2023-11-24 09:30:23', '2023-11-24 09:30:23', '', 'restaurant-3', '', 'inherit', 'open', 'closed', '', 'restaurant-3', '', '', '2023-11-24 09:30:23', '2023-11-24 09:30:23', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/restaurant-3.png', 0, 'attachment', 'image/png', 0),
(256, 1, '2023-11-24 09:30:50', '2023-11-24 09:30:50', '', 'restaurant-4', '', 'inherit', 'open', 'closed', '', 'restaurant-4', '', '', '2023-11-24 09:30:50', '2023-11-24 09:30:50', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/restaurant-4.png', 0, 'attachment', 'image/png', 0),
(257, 1, '2023-11-24 09:48:10', '2023-11-24 09:48:10', '', 'round-txt-img', '', 'inherit', 'open', 'closed', '', 'round-txt-img', '', '', '2023-11-24 09:48:10', '2023-11-24 09:48:10', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/round-txt-img.png', 0, 'attachment', 'image/png', 0),
(258, 1, '2023-11-24 09:50:05', '2023-11-24 09:50:05', '', 'round-img', '', 'inherit', 'open', 'closed', '', 'round-img', '', '', '2023-11-24 09:50:05', '2023-11-24 09:50:05', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/round-img.png', 0, 'attachment', 'image/png', 0),
(259, 1, '2023-11-24 09:50:10', '2023-11-24 09:50:10', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 09:50:10', '2023-11-24 09:50:10', '', 10, 'http://localhost/star-lounge/?p=259', 0, 'revision', '', 0),
(260, 1, '2023-11-24 09:51:40', '2023-11-24 09:51:40', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 09:51:40', '2023-11-24 09:51:40', '', 10, 'http://localhost/star-lounge/?p=260', 0, 'revision', '', 0),
(261, 1, '2023-11-24 09:54:22', '2023-11-24 09:54:22', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 09:54:22', '2023-11-24 09:54:22', '', 10, 'http://localhost/star-lounge/?p=261', 0, 'revision', '', 0),
(262, 1, '2023-11-24 10:09:32', '2023-11-24 10:09:32', '', 'untitled (1)', '', 'inherit', 'open', 'closed', '', 'untitled-1', '', '', '2023-11-24 10:09:32', '2023-11-24 10:09:32', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-1.png', 0, 'attachment', 'image/png', 0),
(263, 1, '2023-11-24 10:16:32', '2023-11-24 10:16:32', '', 'untitled (2)', '', 'inherit', 'open', 'closed', '', 'untitled-2', '', '', '2023-11-24 10:16:32', '2023-11-24 10:16:32', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-2.png', 0, 'attachment', 'image/png', 0),
(264, 1, '2023-11-24 10:17:49', '2023-11-24 10:17:49', '', 'untitled (3)', '', 'inherit', 'open', 'closed', '', 'untitled-3', '', '', '2023-11-24 10:17:49', '2023-11-24 10:17:49', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-3.png', 0, 'attachment', 'image/png', 0),
(265, 1, '2023-11-24 10:18:31', '2023-11-24 10:18:31', '', 'untitled (4)', '', 'inherit', 'open', 'closed', '', 'untitled-4', '', '', '2023-11-24 10:18:31', '2023-11-24 10:18:31', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-4.png', 0, 'attachment', 'image/png', 0),
(266, 1, '2023-11-24 10:28:16', '2023-11-24 10:28:16', '', 'untitled (5)', '', 'inherit', 'open', 'closed', '', 'untitled-5', '', '', '2023-11-24 10:28:16', '2023-11-24 10:28:16', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-5.png', 0, 'attachment', 'image/png', 0),
(267, 1, '2023-11-24 10:31:08', '2023-11-24 10:31:08', '', 'untitled (6)', '', 'inherit', 'open', 'closed', '', 'untitled-6', '', '', '2023-11-24 10:31:08', '2023-11-24 10:31:08', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-6.png', 0, 'attachment', 'image/png', 0),
(268, 1, '2023-11-24 10:31:48', '2023-11-24 10:31:48', '', 'untitled (7)', '', 'inherit', 'open', 'closed', '', 'untitled-7', '', '', '2023-11-24 10:31:48', '2023-11-24 10:31:48', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-7.png', 0, 'attachment', 'image/png', 0),
(269, 1, '2023-11-24 10:33:19', '2023-11-24 10:33:19', '', 'untitled (8)', '', 'inherit', 'open', 'closed', '', 'untitled-8', '', '', '2023-11-24 10:33:19', '2023-11-24 10:33:19', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/untitled-8.png', 0, 'attachment', 'image/png', 0),
(270, 1, '2023-11-24 10:42:44', '2023-11-24 10:42:44', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 10:42:44', '2023-11-24 10:42:44', '', 10, 'http://localhost/star-lounge/?p=270', 0, 'revision', '', 0),
(271, 1, '2023-11-24 10:51:30', '2023-11-24 10:51:30', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 10:51:30', '2023-11-24 10:51:30', '', 10, 'http://localhost/star-lounge/?p=271', 0, 'revision', '', 0),
(272, 1, '2023-11-24 10:53:21', '2023-11-24 10:53:21', '', 'chefs-1', '', 'inherit', 'open', 'closed', '', 'chefs-1', '', '', '2023-11-24 10:53:21', '2023-11-24 10:53:21', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/chefs-1.png', 0, 'attachment', 'image/png', 0),
(273, 1, '2023-11-24 10:53:45', '2023-11-24 10:53:45', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Secret Chef Image 2', 'secret_chef_image_2', 'publish', 'closed', 'closed', '', 'field_656080aac780f', '', '', '2023-11-24 10:53:53', '2023-11-24 10:53:53', '', 65, 'http://localhost/star-lounge/?post_type=acf-field&#038;p=273', 14, 'acf-field', '', 0),
(274, 1, '2023-11-24 10:56:54', '2023-11-24 10:56:54', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 10:56:54', '2023-11-24 10:56:54', '', 10, 'http://localhost/star-lounge/?p=274', 0, 'revision', '', 0),
(275, 1, '2023-11-24 10:57:14', '2023-11-24 10:57:14', '', 'chefs-2', '', 'inherit', 'open', 'closed', '', 'chefs-2', '', '', '2023-11-24 10:57:14', '2023-11-24 10:57:14', '', 10, 'http://localhost/star-lounge/wp-content/uploads/2023/11/chefs-2.png', 0, 'attachment', 'image/png', 0),
(276, 1, '2023-11-24 10:57:18', '2023-11-24 10:57:18', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-24 10:57:18', '2023-11-24 10:57:18', '', 10, 'http://localhost/star-lounge/?p=276', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Footer_Quicklinks', 'footer_quicklinks', 0),
(4, 'Other Footer Menu', 'other-footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(12, 2, 0),
(16, 2, 0),
(20, 2, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(48, 3, 0),
(136, 1, 0),
(149, 1, 0),
(152, 1, 0),
(155, 1, 0),
(158, 1, 0),
(161, 1, 0),
(168, 4, 0),
(169, 4, 0),
(170, 4, 0),
(171, 4, 0),
(200, 2, 0),
(203, 2, 0),
(206, 2, 0),
(237, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'webberadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"df12e956ccd18d94ca4d83e18a3943485b2cbcbb4f728534039385f24c8e9fc4\";a:4:{s:10:\"expiration\";i:1701148901;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699939301;}s:64:\"874a099dd88d48596451872a00ccf1aea30857417bbea80aafcf180f8ca344ea\";a:4:{s:10:\"expiration\";i:1700889359;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1700716559;}s:64:\"7c5b2b6de58fd36d45b3aad139e4911a6eb943520cbed3e490a81745469cab5e\";a:4:{s:10:\"expiration\";i:1700973393;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1700800593;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '174'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1699942489'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'bookly_services_table_settings', 'a:3:{s:5:\"order\";a:0:{}s:6:\"filter\";a:1:{s:8:\"category\";s:0:\"\";}s:7:\"columns\";a:5:{s:2:\"id\";b:0;s:5:\"title\";b:1;s:13:\"category_name\";b:1;s:8:\"duration\";b:1;s:5:\"price\";b:1;}}'),
(24, 1, 'bookly_staff_members_table_settings', 'a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:3:{s:10:\"visibility\";s:0:\"\";s:8:\"archived\";s:1:\"0\";s:8:\"category\";s:0:\"\";}}'),
(25, 1, 'bookly_appointments_table_settings', 'a:2:{s:5:\"order\";a:1:{i:0;a:2:{s:6:\"column\";s:13:\"service.title\";s:5:\"order\";s:3:\"asc\";}}s:6:\"filter\";a:6:{s:2:\"id\";s:0:\"\";s:12:\"created_date\";s:3:\"any\";s:5:\"staff\";s:1:\"1\";s:8:\"customer\";s:1:\"1\";s:7:\"service\";s:1:\"1\";s:6:\"status\";a:5:{i:0;s:7:\"pending\";i:1;s:8:\"approved\";i:2;s:9:\"cancelled\";i:3;s:8:\"rejected\";i:4;s:4:\"done\";}}}'),
(26, 1, 'bookly_customers_table_settings', 'a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";s:0:\"\";}'),
(27, 1, 'bookly_email_notifications_table_settings', 'a:1:{s:5:\"order\";a:0:{}}'),
(28, 1, 'bookly_dismiss_powered_by_notice', '1'),
(29, 1, 'bookly_dismiss_collect_stats_notice', '1'),
(30, 1, 'bookly_dismiss_contact_us_notice', '1'),
(31, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"14.97.240.0\";}'),
(32, 1, 'closedpostboxes_page', 'a:0:{}'),
(33, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(34, 1, 'bookly_payments_table_settings', 'a:2:{s:6:\"filter\";a:6:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:5:\"staff\";s:0:\"\";s:7:\"service\";s:0:\"\";s:6:\"status\";s:0:\"\";}s:5:\"order\";a:0:{}}'),
(35, 1, 'bookly_dismiss_appearance_notice', '1'),
(36, 1, 'meta-box-order_menu', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:34:\"cfs_input_216,cfs_input_97,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(37, 1, 'screen_layout_menu', '2'),
(38, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:110:\"acf-group_655f32be90481,cfs_input_226,cfs_input_97,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(39, 1, 'screen_layout_page', '2'),
(40, 1, 'closedpostboxes_cfs', 'a:0:{}'),
(41, 1, 'metaboxhidden_cfs', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'webberadmin', '$P$BxHp0AgFjRKxZfvRVSAgcLE2GehTjy/', 'webberadmin', 'info@webbersunited.com', 'http://localhost/star-lounge', '2023-11-14 05:21:22', '', 0, 'webberadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `wp_bookly_categories`
--
ALTER TABLE `wp_bookly_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_customers`
--
ALTER TABLE `wp_bookly_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `wp_bookly_log`
--
ALTER TABLE `wp_bookly_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailing_list_id` (`mailing_list_id`);

--
-- Indexes for table `wp_bookly_mailing_lists`
--
ALTER TABLE `wp_bookly_mailing_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailing_list_id` (`mailing_list_id`);

--
-- Indexes for table `wp_bookly_mailing_queue`
--
ALTER TABLE `wp_bookly_mailing_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_news`
--
ALTER TABLE `wp_bookly_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_notifications`
--
ALTER TABLE `wp_bookly_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_notifications_queue`
--
ALTER TABLE `wp_bookly_notifications_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_orders`
--
ALTER TABLE `wp_bookly_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_payments`
--
ALTER TABLE `wp_bookly_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_schedule_item_id` (`staff_schedule_item_id`);

--
-- Indexes for table `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_id_idx` (`ref_id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `wp_bookly_series`
--
ALTER TABLE `wp_bookly_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `wp_bookly_sessions`
--
ALTER TABLE `wp_bookly_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`),
  ADD KEY `expire` (`expire`);

--
-- Indexes for table `wp_bookly_shop`
--
ALTER TABLE `wp_bookly_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_staff`
--
ALTER TABLE `wp_bookly_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ids_idx` (`staff_id`,`day_index`,`location_id`);

--
-- Indexes for table `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ids_idx` (`staff_id`,`service_id`,`location_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `wp_bookly_stats`
--
ALTER TABLE `wp_bookly_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `sub_service_id` (`sub_service_id`);

--
-- Indexes for table `wp_cfs_sessions`
--
ALTER TABLE `wp_cfs_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cfs_values`
--
ALTER TABLE `wp_cfs_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id_idx` (`field_id`),
  ADD KEY `post_id_idx` (`post_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_grp_google_place`
--
ALTER TABLE `wp_grp_google_place`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grp_place_id` (`place_id`);

--
-- Indexes for table `wp_grp_google_review`
--
ALTER TABLE `wp_grp_google_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grp_google_place_id` (`google_place_id`);

--
-- Indexes for table `wp_grp_google_stats`
--
ALTER TABLE `wp_grp_google_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grp_google_place_id` (`google_place_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bookly_categories`
--
ALTER TABLE `wp_bookly_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_bookly_customers`
--
ALTER TABLE `wp_bookly_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_log`
--
ALTER TABLE `wp_bookly_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_mailing_lists`
--
ALTER TABLE `wp_bookly_mailing_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_mailing_queue`
--
ALTER TABLE `wp_bookly_mailing_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_news`
--
ALTER TABLE `wp_bookly_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `wp_bookly_notifications`
--
ALTER TABLE `wp_bookly_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_bookly_notifications_queue`
--
ALTER TABLE `wp_bookly_notifications_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_orders`
--
ALTER TABLE `wp_bookly_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bookly_payments`
--
ALTER TABLE `wp_bookly_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_series`
--
ALTER TABLE `wp_bookly_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_bookly_sessions`
--
ALTER TABLE `wp_bookly_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_shop`
--
ALTER TABLE `wp_bookly_shop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wp_bookly_staff`
--
ALTER TABLE `wp_bookly_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_bookly_stats`
--
ALTER TABLE `wp_bookly_stats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cfs_values`
--
ALTER TABLE `wp_cfs_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_grp_google_place`
--
ALTER TABLE `wp_grp_google_place`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_grp_google_review`
--
ALTER TABLE `wp_grp_google_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_grp_google_stats`
--
ALTER TABLE `wp_grp_google_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1198;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3072;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  ADD CONSTRAINT `wp_bookly_appointments_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_appointments_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `wp_bookly_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `wp_bookly_appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `wp_bookly_series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `wp_bookly_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_5` FOREIGN KEY (`order_id`) REFERENCES `wp_bookly_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  ADD CONSTRAINT `wp_bookly_holidays_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  ADD CONSTRAINT `wp_bookly_mailing_campaigns_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  ADD CONSTRAINT `wp_bookly_mailing_list_recipients_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_payments`
--
ALTER TABLE `wp_bookly_payments`
  ADD CONSTRAINT `wp_bookly_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `wp_bookly_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  ADD CONSTRAINT `wp_bookly_schedule_item_breaks_ibfk_1` FOREIGN KEY (`staff_schedule_item_id`) REFERENCES `wp_bookly_staff_schedule_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  ADD CONSTRAINT `wp_bookly_sent_notifications_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `wp_bookly_notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  ADD CONSTRAINT `wp_bookly_services_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `wp_bookly_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  ADD CONSTRAINT `wp_bookly_staff_schedule_items_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  ADD CONSTRAINT `wp_bookly_staff_services_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_staff_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  ADD CONSTRAINT `wp_bookly_sub_services_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_sub_services_ibfk_2` FOREIGN KEY (`sub_service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
