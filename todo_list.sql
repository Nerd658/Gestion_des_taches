-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 06 août 2024 à 23:49
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `todo_list`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tache', 7, 'add_tache'),
(26, 'Can change tache', 7, 'change_tache'),
(27, 'Can delete tache', 7, 'delete_tache'),
(28, 'Can view tache', 7, 'view_tache');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$720000$fONbZ8q9AdomjHhRAMQdta$7mX4yQD5W38ZVCgMEl4rIlQW5FYw2sW+5jTgxG43XHs=', '2024-08-04 21:31:31.500754', 1, 'asus', '', '', '', 1, 1, '2024-07-01 21:10:04.214729'),
(13, 'pbkdf2_sha256$720000$87zDPV4VPUxHAqicw7bqLa$VEpoC//ubm09xM8+hiiK3ue4wGXMxti9Bv2RQHpBHwk=', '2024-08-04 21:23:09.266959', 0, 'hassan', '', '', '', 0, 1, '2024-08-04 21:22:52.327183');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-03 10:20:39.244629', '11', 'azerty', 3, '', 4, 2),
(2, '2024-07-03 10:20:39.249614', '1', 'ha', 3, '', 4, 2),
(3, '2024-07-03 10:20:39.249614', '7', 'hassab', 3, '', 4, 2),
(4, '2024-07-03 10:20:39.255643', '12', 'hello', 3, '', 4, 2),
(5, '2024-07-03 10:20:39.257392', '5', 'jus', 3, '', 4, 2),
(6, '2024-07-03 10:20:39.260873', '4', 'Serge', 3, '', 4, 2),
(7, '2024-07-03 10:20:39.262612', '8', 'testa', 3, '', 4, 2),
(8, '2024-07-03 10:20:39.264351', '9', 'testb', 3, '', 4, 2),
(9, '2024-07-03 10:20:39.267359', '10', 'testc', 3, '', 4, 2),
(10, '2024-07-03 10:20:39.270159', '3', 'tyu', 3, '', 4, 2),
(11, '2024-07-03 10:20:39.271914', '6', 'zz', 3, '', 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'tache', 'tache');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-01 21:04:50.280386'),
(2, 'auth', '0001_initial', '2024-07-01 21:04:51.045505'),
(3, 'admin', '0001_initial', '2024-07-01 21:04:51.217535'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-01 21:04:51.228896'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-01 21:04:51.234796'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-01 21:04:51.324549'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-01 21:04:51.421168'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-01 21:04:51.442906'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-01 21:04:51.449402'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-01 21:04:51.546447'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-01 21:04:51.549919'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-01 21:04:51.561638'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-01 21:04:51.577756'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-01 21:04:51.594122'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-01 21:04:51.610083'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-01 21:04:51.621726'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-01 21:04:51.637434'),
(18, 'sessions', '0001_initial', '2024-07-01 21:04:51.715333'),
(19, 'tache', '0001_initial', '2024-07-01 21:04:51.725363'),
(20, 'tache', '0002_tache_delete_taches', '2024-07-01 21:04:51.747644'),
(21, 'tache', '0003_tache_owner', '2024-07-01 21:04:51.829912'),
(22, 'tache', '0004_remove_tache_owner', '2024-07-01 21:04:52.458944'),
(23, 'tache', '0005_customusercreation', '2024-07-01 21:04:52.474124'),
(24, 'tache', '0006_delete_customusercreation', '2024-07-01 21:04:52.483993'),
(25, 'tache', '0007_tache_user', '2024-07-03 09:22:32.480806');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1dy9n07zh2blacks62rr0gse6d1qd55l', '.eJxVjEEOwiAQRe_C2hBKgaEu3fcMzcAMUjWQlHZlvLsh6UK3_73332LBY8_L0XhbVhJXocXldwsYn1w6oAeWe5Wxln1bg-yKPGmTcyV-3U737yBjy71WRgMBjANFp0JINIJhG5kZVByD92lKaD0Z0DAAJTIuITpj0KbJovh8AfoXOKU:1saip9:uhZrZ2XfNLzUFDB9f5Ah6FtshPfFLr4EjtI2gXtQfOg', '2024-08-18 21:31:31.511311'),
('94rub9bz6hjbrt0a64awc3g2hxbufz5v', '.eJxVjEEOwiAQRe_C2hBKgaEu3fcMzcAMUjWQlHZlvLsh6UK3_73332LBY8_L0XhbVhJXocXldwsYn1w6oAeWe5Wxln1bg-yKPGmTcyV-3U737yBjy71WRgMBjANFp0JINIJhG5kZVByD92lKaD0Z0DAAJTIuITpj0KbJovh8AfoXOKU:1sQD8t:39iNFAqWQfcJu3f2VGCd70iLpsCvxKu3-HmoUdv2sFk', '2024-07-20 21:40:27.403816'),
('g7k8lvyprfof8oatt7xps8i760d6xdss', '.eJxVjEEOwiAQRe_C2hBKgaEu3fcMzcAMUjWQlHZlvLsh6UK3_73332LBY8_L0XhbVhJXocXldwsYn1w6oAeWe5Wxln1bg-yKPGmTcyV-3U737yBjy71WRgMBjANFp0JINIJhG5kZVByD92lKaD0Z0DAAJTIuITpj0KbJovh8AfoXOKU:1sSLdz:h1KbroAJu50Q5MArSIpz63E_MFBP0NBhDsyw5_cP08o', '2024-07-26 19:09:23.593009'),
('st57k4p243fmlx4uanyygm2p1fve9mri', '.eJxVjEEOwiAQRe_C2hBKgaEu3fcMzcAMUjWQlHZlvLsh6UK3_73332LBY8_L0XhbVhJXocXldwsYn1w6oAeWe5Wxln1bg-yKPGmTcyV-3U737yBjy71WRgMBjANFp0JINIJhG5kZVByD92lKaD0Z0DAAJTIuITpj0KbJovh8AfoXOKU:1sSlfR:jowx4SPj4_KKMRos2eHHafM_94bNgL-03dCDtzecRGo', '2024-07-27 22:56:37.079313');

-- --------------------------------------------------------

--
-- Structure de la table `tache_tache`
--

CREATE TABLE `tache_tache` (
  `id` bigint(20) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(64) NOT NULL,
  `date` datetime(6) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tache_tache`
--

INSERT INTO `tache_tache` (`id`, `title`, `description`, `date`, `etat`, `user_id`) VALUES
(6, 'b', 'a', '2024-07-06 14:48:32.902944', 1, 2),
(7, 'a', 's', '2024-07-12 19:09:47.514884', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `tache_tache`
--
ALTER TABLE `tache_tache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tache_tache_user_id_ec5f1365_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `tache_tache`
--
ALTER TABLE `tache_tache`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `tache_tache`
--
ALTER TABLE `tache_tache`
  ADD CONSTRAINT `tache_tache_user_id_ec5f1365_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
