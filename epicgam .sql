-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 04:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epicgam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `game_id` int(100) NOT NULL,
  `game_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `game_id`, `game_price`) VALUES
(1, 0, 5, 18),
(2, 0, 5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'top sellers'),
(2, 'most played'),
(3, 'new release'),
(4, 'upcoming'),
(5, 'Most Popular');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`id`, `name`, `location`) VALUES
(1, 'yasir', 'pakistan'),
(2, 'Ubisoft', 'Montreuil, France'),
(3, 'Activision', 'Santa Monica, California'),
(4, 'Rockstar Games', 'New York City, New York'),
(5, 'Naughty Dog', 'Santa Monica, California'),
(6, 'Blizzard Entertainment', 'Irvine, California'),
(7, 'Bethesda Game Studios', 'Rockville, Maryland'),
(8, 'CD Projekt Red', 'Warsaw, Poland'),
(9, 'Square Enix', 'Shinjuku, Tokyo'),
(10, 'Valve Corporation', 'Bellevue, Washington'),
(11, 'Capcom', 'Chuo City, Tokyo'),
(12, 'Bungie', 'Bellevue, Washington'),
(13, 'BioWare', 'Edmonton, Alberta'),
(14, 'Guerrilla Games', 'Amsterdam, Netherlands'),
(15, 'Konami', 'Minato City, Tokyo'),
(16, 'Insomniac Games', 'Burbank, California'),
(17, '343 Industries', 'Redmond, Washington'),
(18, 'Respawn Entertainment', 'Los Angeles, California'),
(19, 'Epic Games', 'Cary, North Carolina'),
(20, 'Kojima Productions', 'Tokyo, Japan'),
(21, 'Gearbox Software', 'Frisco, Texas'),
(22, 'PUBG Corporation', 'Seoul, South Korea'),
(23, 'Quantic Dream', 'Paris, France'),
(24, 'id Software', 'Richardson, Texas'),
(25, 'The Creative Assembly', 'Horsham, United Kingdom'),
(26, 'IO Interactive', 'Copenhagen, Denmark'),
(27, 'Hangar 13', 'Novato, California'),
(28, 'Sucker Punch Productions', 'Bellevue, Washington'),
(29, 'The Coalition', 'Vancouver, Canada'),
(30, 'Turn 10 Studios', 'Redmond, Washington');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `image_logo` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `game_description` text NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `developer_id` int(11) NOT NULL,
  `release_date` date NOT NULL,
  `platform_id` int(11) NOT NULL,
  `rating` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `game_name`, `image_logo`, `price`, `game_description`, `publisher_id`, `developer_id`, `release_date`, `platform_id`, `rating`) VALUES
(1, 'Returnal', 'https://cdn2.unrealengine.com/egs-returnal-housemarqueclimaxstudios-ic1-400x400-cddf3b8fc8c5.png?h=270&quality=medium&resize=1&w=480', '59.99', 'BREAK THE CYCLE Fight to survive as this award-winning third-person shooter brings Selene’s story to PC. Take on roguelike challenges. Engage enemies in bullet hell-fuelled clashes. Share your journey through Returnal™ with another player.', 11, 18, '2023-02-23', 7, '4.90'),
(2, 'WILD HEARTS™ ', 'https://cdn2.unrealengine.com/egs-wildhearts-koeitecmogamescoltd-ic1-400x400-c3e4c7cf64f4.png?h=270&quality=medium&resize=1&w=480', '49.99', 'WILD HEARTS™ is a twist on the hunting genre where ancient tech gives you a fighting chance against giant nature-infused beasts.', 2, 2, '2018-10-26', 2, '4.80'),
(3, 'Hogwarts Legacy', 'https://cdn2.unrealengine.com/egs-hogwartslegacy-avalanchesoftware-ic1-400x400-d22498d075da.png?h=270&quality=medium&resize=1&w=480', '59.99', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 5, 4, '2023-02-08', 1, '4.80'),
(4, 'The Last of Us Part I', 'https://cdn2.unrealengine.com/fc6-logo-400x150-7808789f6a13.png?h=270&quality=medium&resize=1&w=480', '59.99', 'Survive in a post-apocalyptic world filled with infected enemies in this intense, story-driven game.', 3, 3, '2020-06-19', 3, '4.90'),
(5, 'Far Cry 6', 'https://cdn2.unrealengine.com/fc6-logo-400x150-7808789f6a13.png?h=270&quality=medium&resize=1&w=480\n', '17.99', 'Enter the adrenaline-filled world of a modern-day guerrilla revolution. With stunning vistas, visceral gunplay, and a huge variety of gameplay experiences, there\'s never been a better time to join the fight. Play the Far Cry® 6 FREE TRIAL and discover why GAME', 4, 4, '2022-11-29', 1, '4.40'),
(6, 'Red Dead Redemption 2\n', 'https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fheather%2Fhome%2FEGS_RockstarGames_RedDeadRedemption2_IC1-625x625-38ae1bca6b89370d01ac3ed3a17daf7dd004f9f5.png?h=270&quality=medium&resize=1&w=480\n', '19.79', 'Winner of over 175 Game of the Year Awards and recipient of over 250 perfect scores, Red Dead Redemption 2 is an epic tale of honor and loyalty at the dawn of the modern age. Includes Red Dead Redemption 2: Story Mode and Red Dead Online.\n', 4, 5, '2019-11-05', 1, '4.90'),
(7, 'God of War', 'https://cdn2.unrealengine.com/egs-godofwar-santamonicastudio-ic1-400x400-5819bbf696c5.png?h=270&quality=medium&resize=1&w=480\n', '19.79', 'His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.\n', 3, 2, '2022-01-14', 3, '4.90'),
(8, 'The Settlers®: New Allies\n', 'https://cdn2.unrealengine.com/egst-logo-400x400-400x400-b6a3541c815c.png?h=270&quality=medium&resize=1&w=480\n', '49.99', 'The Settlers®: New Allies is a strategy game with an in-depth build-up experience and real-time strategic battles.\n', 5, 1, '2023-02-17', 1, '3.90'),
(9, 'Destiny 2: Lightfall\n', 'https://cdn1.epicgames.com/offer/428115def4ca4deea9d69c99c5a5a99e/EGS_Destiny2Lightfall_Bungie_AddOn_IC1_200x200-cb2f50a00ee982ce997af6e72aef2f2e?h=270&quality=medium&resize=1&w=480\n', '59.99', 'In a Neptunian city under siege, find strength in your fellow Guardians as the end to all things approaches—the Witness is here. Arm yourself with new rewards and unlock new Dark powers to triumph in Lightfall’s unforgettable Legendary mode.\n', 1, 6, '2023-02-28', 2, '4.50'),
(10, 'Dying Light 2 Stay Human\n', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '24.99', 'The virus won and civilization has fallen back to the Dark Ages. The City, one of the last human settlements, is on the brink of collapse. Use your agility and combat skills to survive, and reshape the world. Your choices matter.', 6, 3, '2022-04-02', 3, '4.60'),
(11, 'Game 11', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '119.99', 'Dummy Game 1: Embark on a thrilling adventure in this immersive game with multiple endings and challenging puzzles. Set in a vivid and detailed world, you\'ll explore new locations and interact with intriguing characters. Your choices will shape the outcome of the story and determine your fate.\n\n', 2, 2, '2022-01-11', 1, '4.60'),
(12, 'Game 12', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '129.99', 'Dummy Game 1: Embark on a thrilling adventure in this immersive game with multiple endings and challenging puzzles. Set in a vivid and detailed world, you\'ll explore new locations and interact with intriguing characters. Your choices will shape the outcome of the story and determine your fate.\n\n', 4, 4, '2022-01-12', 2, '3.50'),
(13, 'Game 13', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '139.99', 'Dummy Game 2: Enter an open world filled with danger and excitement in this action-packed game. Fight against powerful enemies and explore new territories as you seek to uncover the secrets of this mysterious land. With stunning graphics and immersive gameplay, you\'ll be hooked from the very start.\n\n', 3, 5, '2022-01-13', 3, '3.80'),
(14, 'Game 14', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\nhttps://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '149.99', 'Dummy Game 3: Get ready to go retro in this pixel art-style game with challenging gameplay. Explore a world filled with hidden treasures and secrets, and unlock new abilities as you progress. With a unique soundtrack and colorful visuals, this game is a true gem for fans of classic arcade games.\n\n', 5, 6, '2022-01-14', 1, '4.90'),
(15, 'Game 15', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '159.99', 'Dummy Game 4: Take on the role of a skilled warrior in this epic game of strategy and combat. With a vast array of weapons and skills at your disposal, you\'ll battle against powerful foes and uncover the secrets of a long-forgotten civilization. With stunning visuals and engaging gameplay, this game is a must-play for all.\n\n', 1, 3, '2022-01-15', 2, '3.60'),
(16, 'Game 16', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '169.99', 'This is game 16', 6, 2, '2022-01-16', 3, '4.20'),
(17, 'Game 17', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '69.99', 'This is game 6', 4, 5, '2022-01-06', 1, '3.90'),
(18, 'Game 18', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '79.99', 'This is game 7', 3, 2, '2022-01-07', 3, '4.70'),
(19, 'Game 19', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '89.99', 'This is game 8', 5, 1, '2022-01-08', 1, '3.20'),
(20, 'Game 20', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '99.99', 'This is game 9', 1, 6, '2022-01-09', 2, '4.10'),
(21, 'Game 21', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '109.99', 'This is game 10', 6, 3, '2022-01-10', 3, '4.40'),
(22, 'Game 22', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '119.99', 'This is game 11', 2, 2, '2022-01-11', 1, '4.60'),
(23, 'Game 23', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '129.99', 'This is game 12', 4, 4, '2022-01-12', 2, '3.50'),
(24, 'Game 24', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '139.99', 'This is game 13', 3, 5, '2022-01-13', 3, '3.80'),
(25, 'Game 25', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '149.99', 'This is game 14', 5, 6, '2022-01-14', 1, '4.90'),
(26, 'Game 26', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '159.99', 'This is game 15', 1, 3, '2022-01-15', 2, '3.60'),
(27, 'Game 27', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '169.99', 'This is game 16', 6, 2, '2022-01-16', 3, '4.20'),
(28, 'Game 26', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '69.99', 'This is game 6', 4, 5, '2022-01-06', 1, '3.90'),
(29, 'Game 27', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '79.99', 'This is game 7', 3, 2, '2022-01-07', 3, '4.70'),
(30, 'Game 28', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '89.99', 'This is game 8', 5, 1, '2022-01-08', 1, '3.20'),
(31, 'Game 29', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '99.99', 'This is game 9', 1, 6, '2022-01-09', 2, '4.10'),
(32, 'Game 30', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '109.99', 'This is game 10', 6, 3, '2022-01-10', 3, '4.40'),
(33, 'Game 31', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '119.99', 'Dummy Game 4: Take on the role of a skilled warrior in this epic game of strategy and combat. With a vast array of weapons and skills at your disposal, you\'ll battle against powerful foes and uncover the secrets of a long-forgotten civilization. With stunning visuals and engaging gameplay, this game is a must-play for all.\n\n', 2, 2, '2022-01-11', 1, '4.60'),
(34, 'Game 32', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '129.99', 'This is game 12', 4, 4, '2022-01-12', 2, '3.50'),
(35, 'Game 33', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '139.99', 'This is game 13', 3, 5, '2022-01-13', 3, '3.80'),
(36, 'Game 34', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '149.99', 'Dummy Game 4: Take on the role of a skilled warrior in this epic game of strategy and combat. With a vast array of weapons and skills at your disposal, you\'ll battle against powerful foes and uncover the secrets of a long-forgotten civilization. With stunning visuals and engaging gameplay, this game is a must-play for all.\n\n', 5, 6, '2022-01-14', 1, '4.90'),
(37, 'Game 35', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '159.99', 'Dummy Game 4: Take on the role of a skilled warrior in this epic game of strategy and combat. With a vast array of weapons and skills at your disposal, you\'ll battle against powerful foes and uncover the secrets of a long-forgotten civilization. With stunning visuals and engaging gameplay, this game is a must-play for all.\n\n', 1, 3, '2022-01-15', 2, '3.60'),
(38, 'Game 36', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\n', '169.99', 'Dummy Game 4: Take on the role of a skilled warrior in this epic game of strategy and combat. With a vast array of weapons and skills at your disposal, you\'ll battle against powerful foes and uncover the secrets of a long-forgotten civilization. With stunning visuals and engaging gameplay, this game is a must-play for all.\n\n', 6, 2, '2022-01-16', 3, '4.20'),
(39, 'Dummy Game 1', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '29.99', 'A thrilling adventure game with multiple endings and challenging puzzles.', 1, 1, '2023-03-01', 1, '4.50'),
(40, 'Dummy Game 2', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '49.99', 'Explore an open world filled with danger and excitement in this action-packed game.', 2, 2, '2023-04-01', 2, '4.80'),
(41, 'Dummy Game 3', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '19.99', 'A retro-style game with pixel art graphics and challenging gameplay.', 3, 3, '2023-05-01', 3, '3.90'),
(42, 'Dummy Game 4', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '39.99', 'An epic role-playing game with a rich and immersive storyline.', 4, 4, '2023-06-01', 4, '4.60'),
(43, 'Dummy Game 5', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '9.99', 'A casual puzzle game with addictive gameplay and cute graphics.', 5, 5, '2023-07-01', 5, '3.50'),
(44, 'Dummy Game 6', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '59.99', 'Experience the thrill of high-speed racing in this adrenaline-fueled game.', 6, 6, '2023-08-01', 6, '4.90'),
(45, 'Dummy Game 1', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '29.99', 'A thrilling adventure game with multiple endings and challenging puzzles.', 1, 1, '2023-03-01', 1, '4.50'),
(46, 'Dummy Game 2', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '49.99', 'Explore an open world filled with danger and excitement in this action-packed game.', 2, 2, '2023-04-01', 2, '4.80'),
(47, 'Dummy Game 3', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '19.99', 'A retro-style game with pixel art graphics and challenging gameplay.', 3, 3, '2023-05-01', 3, '3.90'),
(48, 'Dummy Game 4', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '39.99', 'Battle against evil forces and save the world in this epic game.', 4, 4, '2023-06-01', 4, '4.20'),
(49, 'New Game Name', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '59.99', 'Enter a new world filled with mystery and adventure in this captivating game.', 5, 5, '2023-07-01', 5, '4.70'),
(50, 'Dummy Game 6', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '24.99', 'An addictive puzzle game with colorful graphics and catchy music.', 6, 6, '2023-08-01', 6, '4.00'),
(51, 'Dummy Game 7', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480', '34.99', 'A futuristic racing game with advanced vehicles and challenging tracks.', 7, 7, '2023-09-01', 7, '4.30'),
(52, 'Game 26', 'https://cdn2.unrealengine.com/egs-dyinglight2stayhuman-techland-ic5-400x166-55b2799d56f3.png?h=270&quality=medium&resize=1&w=480\r\n', '132.00', 'Dummy Game 1: Embark on a thrilling adventure in this immersive game with multiple endings and challenging puzzles. Set in a vivid and detailed world, you\'ll explore new locations and interact with intriguing characters. Your choices will shape the outcome of the story and determine your fate.\r\n\r\n', 13, 5, '2023-02-14', 6, '4.40');

-- --------------------------------------------------------

--
-- Table structure for table `game_categories`
--

CREATE TABLE `game_categories` (
  `game_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_categories`
--

INSERT INTO `game_categories` (`game_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `game_requirements`
--

CREATE TABLE `game_requirements` (
  `game_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `processor_id` int(11) NOT NULL,
  `memory_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `graphics_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_requirements`
--

INSERT INTO `game_requirements` (`game_id`, `os_id`, `processor_id`, `memory_id`, `storage_id`, `graphics_id`) VALUES
(1, 2, 2, 1, 34, 9),
(2, 9, 2, 7, 7, 5),
(3, 1, 1, 1, 1, 1),
(5, 4, 6, 3, 16, 2),
(6, 9, 6, 5, 26, 5),
(7, 6, 2, 6, 27, 7),
(8, 6, 7, 4, 17, 5),
(9, 5, 6, 5, 46, 4),
(10, 7, 4, 3, 46, 7),
(11, 5, 6, 6, 7, 4),
(12, 9, 5, 5, 45, 5),
(13, 5, 5, 6, 17, 4),
(14, 4, 9, 8, 27, 2),
(15, 5, 6, 4, 17, 7);

-- --------------------------------------------------------

--
-- Table structure for table `graphics`
--

CREATE TABLE `graphics` (
  `graphics_id` int(11) NOT NULL,
  `graphics_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graphics`
--

INSERT INTO `graphics` (`graphics_id`, `graphics_type`) VALUES
(1, '4 gb graphic'),
(2, 'NVIDIA GeForce GTX 1650'),
(3, 'AMD Radeon RX 6800 XT'),
(4, 'Intel Iris Xe Graphics'),
(5, 'NVIDIA Quadro RTX 4000'),
(6, 'AMD Radeon Pro 5700 XT'),
(7, 'NVIDIA GeForce RTX 3080 Ti'),
(8, 'Intel UHD Graphics 630'),
(9, 'AMD Radeon RX 580'),
(10, 'NVIDIA Titan RTX');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_logo` varchar(255) NOT NULL,
  `image_link1` varchar(255) NOT NULL,
  `image_link2` varchar(255) NOT NULL,
  `image_link3` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_link`, `image_logo`, `image_link1`, `image_link2`, `image_link3`, `game_id`) VALUES
(1, 'https://cdn2.unrealengine.com/egs-returnal-housemarqueclimaxstudios-g1a-01-1920x1080-0a08504b7cbc.jpg', 'https://example.com/logo1.png', 'https://cdn2.unrealengine.com/egs-returnal-housemarqueclimaxstudios-g1a-02-1920x1080-59a2139b492f.jpg', 'https://cdn2.unrealengine.com/egs-returnal-housemarqueclimaxstudios-g1a-03-1920x1080-6160610f2403.jpg', 'https://cdn2.unrealengine.com/egs-returnal-housemarqueclimaxstudios-g1a-05-1920x1080-fd9a04e1b979.jpg', 1),
(2, 'https://media-cdn.epicgames.com/95124632761c4fff8b3a79a0f56affbf/95124632761c4fff8b3a79a0f56affbf-00001-thumb.png?h=270&quality=medium&resize=1&w=480', 'https://example.com/logo2.png', 'https://cdn2.unrealengine.com/egs-wildheartsstandardedition-koeitecmogamescoltd-g1a-01-1920x1080-ebd1e3b7a39f.jpg', 'https://cdn2.unrealengine.com/egs-wildheartsstandardedition-koeitecmogamescoltd-g1a-02-1920x1080-a73a508170e0.jpg', 'https://cdn2.unrealengine.com/egs-wildheartsstandardedition-koeitecmogamescoltd-g1a-02-1920x1080-a73a508170e0.jpg', 2),
(3, 'https://cdn2.unrealengine.com/egs-hogwartslegacy-avalanchesoftware-g1c-00-1920x1080-3f98e9656ef5.jpg?h=270&quality=medium&resize=1&w=480', 'https://example.com/logo3.png', 'https://cdn2.unrealengine.com/egs-hogwartslegacy-avalanchesoftware-g1a-00-1920x1080-6ae741e030bb.jpg?h=270&quality=medium&resize=1&w=480', 'https://cdn2.unrealengine.com/egs-hogwartslegacy-avalanchesoftware-g1a-03-1920x1080-112c79719791.jpg?h=270&quality=medium&resize=1&w=480', 'https://cdn2.unrealengine.com/egs-hogwartslegacy-avalanchesoftware-g1a-02-1920x1080-bfdc2c908ac6.jpg?h=270&quality=medium&resize=1&w=480', 3),
(4, 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-00-1920x1080-80ff1ea45568.jpg\n', 'https://example.com/logo4.png', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-01-1920x1080-6356a03c4fa7.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-02-1920x1080-e82823960d87.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-03-1920x1080-b703862dd000.jpg?h=270&quality=medium&resize=1&w=480\n', 4),
(5, 'https://cdn2.unrealengine.com/fc-background-1920x1080-1920x1080-90a7d76b5ca2.jpg?h=270&quality=medium&resize=1&w=480', 'https://example.com/logo5.png', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-01-1920x1080-6356a03c4fa7.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-02-1920x1080-e82823960d87.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-03-1920x1080-b703862dd000.jpg?h=270&quality=medium&resize=1&w=480\n', 5),
(6, 'https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fheather%2Fhome%2FEGS_RockstarGames_RedDeadRedemption2_G1A_00-1920x1080-308f101576da37225c889173094f373f2afc56c1.jpg?h=270&quality=medium&resize=1&w=480', 'https://example.com/logo6.png', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-01-1920x1080-6356a03c4fa7.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-02-1920x1080-e82823960d87.jpg\n', 'https://cdn2.unrealengine.com/egs-thelastofuspartidigitaldeluxeedition-naughtydogllc-editions-g1a-03-1920x1080-b703862dd000.jpg?h=270&quality=medium&resize=1&w=480\n', 6),
(7, 'https://cdn2.unrealengine.com/egs-godofwar-santamonicastudio-g1a-01-1920x1080-c84d2a96aea3.jpg\r\n', 'https://example.com/logo7.png', 'https://cdn2.unrealengine.com/egs-godofwar-santamonicastudio-g1a-02-1920x1080-f7c6fef5c876.jpg\r\n', 'https://cdn2.unrealengine.com/egs-godofwar-santamonicastudio-g1a-03-1920x1080-65b80475ae32.jpg\r\n', 'https://cdn2.unrealengine.com/egs-godofwar-santamonicastudio-g1a-01-1920x1080-c84d2a96aea3.jpg\r\n', 7),
(8, 'https://m.media-amazon.com/images/I/A11zx2WP1ZL._SX1200_.jpg\r\n', 'https://example.com/logo8.com', 'https://www.gameonaus.com/wp-content/uploads/2023/02/settlers-new-allies-3.jpeg\r\n', 'https://m.media-amazon.com/images/I/A11zx2WP1ZL._SX1200_.jpg\r\n', 'https://www.gameonaus.com/wp-content/uploads/2023/02/settlers-new-allies-3.jpeg\r\n', 8),
(9, 'https://cdn1.epicgames.com/offer/428115def4ca4deea9d69c99c5a5a99e/EGS_Destiny2Lightfall_Bungie_AddOn_G1A_01_1920x1080-58a6dc8166a2fe0ec44074b31db2dde2\r\n', 'https://example.com/logo9.com', 'https://cdn1.epicgames.com/offer/428115def4ca4deea9d69c99c5a5a99e/EGS_Destiny2Lightfall_Bungie_AddOn_G1A_02_1920x1080-cc808d6d08ef7ce267dead01a52a9a9d\r\n', 'https://cdn1.epicgames.com/offer/428115def4ca4deea9d69c99c5a5a99e/EGS_Destiny2Lightfall_Bungie_AddOn_G1A_01_1920x1080-58a6dc8166a2fe0ec44074b31db2dde2\r\n', 'https://cdn1.epicgames.com/offer/428115def4ca4deea9d69c99c5a5a99e/EGS_Destiny2Lightfall_Bungie_AddOn_G1A_02_1920x1080-cc808d6d08ef7ce267dead01a52a9a9d\r\n', 9),
(10, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg\n', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg\n', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg\n', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg\n', 10),
(11, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 11),
(12, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 12),
(13, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 13),
(14, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 14),
(15, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 15),
(16, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 16),
(17, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 18),
(19, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 19),
(20, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 20),
(21, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 21),
(22, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 22),
(23, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 23),
(24, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 24),
(25, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 25),
(26, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 26),
(27, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 27),
(28, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 28),
(29, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 29),
(30, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 30),
(31, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 31),
(32, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 32),
(33, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 33),
(34, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 34),
(35, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 35),
(36, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 36),
(37, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 37),
(38, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 38),
(39, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 39),
(40, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 40),
(41, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 41),
(42, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 42),
(43, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 43),
(44, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 44),
(45, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 45),
(46, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 46),
(47, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 47),
(48, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 48),
(49, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 49),
(50, 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://example.com/logo10.com', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-1-1920x1080-832ed0ed2d6d.jpg', 'https://cdn2.unrealengine.com/dl2-screenshot-egs-3-3840x2160-7794fc192b56.jpg', 50);

-- --------------------------------------------------------

--
-- Table structure for table `memory`
--

CREATE TABLE `memory` (
  `memory_id` int(11) NOT NULL,
  `memory_size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memory`
--

INSERT INTO `memory` (`memory_id`, `memory_size`) VALUES
(1, '8 GB (Dual-Channel mode)\r\n'),
(2, '16 GB'),
(3, '32 GB'),
(4, '64 GB'),
(5, '128 GB'),
(6, '256 GB'),
(7, '512 GB'),
(8, '1 TB'),
(9, '2 TB'),
(10, '4 TB');

-- --------------------------------------------------------

--
-- Table structure for table `operating_system`
--

CREATE TABLE `operating_system` (
  `os_id` int(11) NOT NULL,
  `os_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operating_system`
--

INSERT INTO `operating_system` (`os_id`, `os_name`) VALUES
(1, 'window os'),
(2, 'macOS Monterey'),
(3, 'Ubuntu'),
(4, 'Android 12'),
(5, 'iOS 15'),
(6, 'Chrome OS'),
(7, 'FreeBSD'),
(8, 'Red Hat Enterprise Linux'),
(9, 'Debian'),
(10, 'Fedora');

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `name`) VALUES
(1, 'window'),
(2, 'macOS'),
(3, 'Linux'),
(4, 'Android'),
(5, 'iOS'),
(6, 'Xbox'),
(7, 'PlayStation'),
(8, 'Nintendo Switch'),
(9, 'Amazon Fire OS'),
(10, 'Google Stadia');

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `processor_id` int(11) NOT NULL,
  `processor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`processor_id`, `processor_name`) VALUES
(1, 'AMD Ryzen 3 1200 – 3.1 GHz / Intel i5-4460 – 3.2 GHz\r\n'),
(2, 'AMD Ryzen 9 5950X'),
(3, 'Apple M1 Max'),
(4, 'Qualcomm Snapdragon 888'),
(5, 'Nvidia Tegra X1'),
(6, 'Samsung Exynos 2200'),
(7, 'Intel Xeon Platinum 8180'),
(8, 'AMD EPYC 7763'),
(9, 'Qualcomm Snapdragon 870'),
(10, 'Apple A15 Bionic');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `location`) VALUES
(1, 'pb yasir', 'pb pakistan'),
(2, 'Samantha Johnson', 'Unknown'),
(3, 'Michael Davis', 'Unknown'),
(4, 'Emily Hernandez', 'Unknown'),
(5, 'William Lee', 'Unknown'),
(6, 'Olivia Brown', 'Unknown'),
(7, 'Robert Rodriguez', 'Unknown'),
(8, 'Isabella Martinez', 'Unknown'),
(9, 'Daniel Miller', 'Unknown'),
(10, 'Sophia Taylor', 'Unknown'),
(11, 'David Jackson', 'Unknown'),
(12, 'Madison Martin', 'Unknown'),
(13, 'Joseph Garcia', 'Unknown'),
(14, 'Ava Martinez', 'Unknown'),
(15, 'Christopher Davis', 'Unknown'),
(16, 'Emma Johnson', 'Unknown'),
(17, 'Andrew Wilson', 'Unknown'),
(18, 'Mia Anderson', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `storage_id` int(11) NOT NULL,
  `storage_size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`storage_id`, `storage_size`) VALUES
(1, '60 GB HDD (SSD recommended)\r\n'),
(2, '256GB'),
(3, '512GB'),
(4, '1TB'),
(5, '2TB'),
(6, '4TB'),
(7, '8TB'),
(8, '16GB'),
(9, '32GB'),
(10, '64GB'),
(11, '128GB'),
(12, '256GB'),
(13, '512GB'),
(14, '1TB'),
(15, '2TB'),
(16, '4TB'),
(17, '8TB'),
(18, '16GB'),
(19, '32GB'),
(20, '64GB'),
(21, '128GB'),
(22, '256GB'),
(23, '512GB'),
(24, '1TB'),
(25, '2TB'),
(26, '4TB'),
(27, '8TB'),
(28, '16GB'),
(29, '32GB'),
(30, '64GB'),
(31, '128GB'),
(32, '256GB'),
(33, '512GB'),
(34, '1TB'),
(35, '2TB'),
(36, '4TB'),
(37, '8TB'),
(38, '16GB'),
(39, '32GB'),
(40, '64GB'),
(41, '128GB'),
(42, '256GB'),
(43, '512GB'),
(44, '1TB'),
(45, '2TB'),
(46, '4TB'),
(47, '8TB'),
(48, '16GB'),
(49, '32GB'),
(50, '64GB');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_fname` varchar(100) NOT NULL,
  `user_lname` varchar(100) NOT NULL,
  `user_dname` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_news` varchar(100) DEFAULT NULL,
  `user_agree` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_country`, `user_fname`, `user_lname`, `user_dname`, `user_email`, `user_password`, `user_news`, `user_agree`) VALUES
(1, 'Pakistan', 'yasir', 'mukhtar', 'yasir', 'yasir@gmail.com', 'dad36300cc5edb4d6971f7518fc667a2', 'user agreed for news', 'user agreed for policy'),
(2, 'Pakistan', 'yasir', 'yasir', 'yasir2', 'yasir2@gmail.com', '29c11c6b5af0960af7b73467964d5335', 'user agreed for news', 'user agreed for policy'),
(3, 'Pakistan', 'yasir', 'yasir', 'yasir3', 'yasir3@gmail.com', '14a0daf201ef9455e1a9e1057c67ec0a', 'user agreed for news', 'user agreed for policy'),
(10, 'Pakistan', 'yasir', 'yadk', 'kdlfkdd', 'skldfll2@gmail.com', 'c9667190e8cf54d0e958e959e8522654', 'user agreed for news', 'user agreed for policy'),
(11, 'Pakistan', 'ldk', 'ldf', 'yasir', 'ya@gmail.com', 'e310701128cdcace788181ffe82d0470', 'user agreed for news', 'user agreed for policy');

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `review_text` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`review_id`, `user_name`, `review_text`, `game_id`) VALUES
(10, 'John', 'This game is awesome!', 1),
(11, 'Emily', 'I loved playing this game, highly recommend it!', 1),
(12, 'Mark', 'The graphics are amazing and the story is so engaging.', 1),
(13, 'Paul', '\"The Last of Us Part II\" is a visually stunning and emotionally impactful game that offers a thrilling narrative and satisfying gameplay.\r\n', 2),
(14, 'John', '\"Red Dead Redemption 2\" is a masterpiece in open-world gaming, with stunning visuals, immersive gameplay, and a captivating story.\r\n', 2),
(15, 'Wilder', '\"Breath of the Wild\" revolutionizes open-world gaming with its stunning art style, dynamic gameplay, and an intricate world full of discovery and adventure.\r\n', 2),
(16, 'Portal', '\"Portal 2\" is a perfectly executed puzzle game with smart writing, witty humor, and a memorable antagonist.\r\n', 3),
(17, 'Mathiws', '\"Mass Effect 2\" delivers an immersive sci-fi experience with well-developed characters, compelling storylines, and engaging gameplay.\r\n', 3),
(18, 'Witcher ', '\"The Witcher 3: Wild Hunt\" is a sprawling RPG with excellent writing, rich characters, and gorgeous graphics that immerses players in a deep and immersive world.\r\n', 3),
(19, 'Alyx', '\"Half-Life: Alyx\" is a game-changer in VR gaming, with intuitive gameplay, realistic physics, and an engaging narrative.\r\n', 4),
(20, 'Dark Souls', '\"Dark Souls\" is a punishing but rewarding game that tests players\' skill and patience with challenging gameplay and a rich, atmospheric world.\r\n', 4),
(21, 'Odyssey', '\"Super Mario Odyssey\" is a joyful and imaginative platformer that pushes the boundaries of what a Mario game can be with creative level design and new gameplay mechanics.\r\n', 4),
(22, 'Minecraft', '\"Minecraft\" is a creative sandbox game that allows players to build and explore to their hearts\' content, offering endless possibilities for imagination and fun.\r\n', 5),
(23, 'Stardew', '\"Stardew Valley\" is a charming and addictive farming simulator with a relaxing pace, endearing characters, and engaging gameplay.\r\n', 5),
(24, 'Overwatch', '\"Overwatch\" is a fast-paced and engaging team-based shooter with well-designed heroes, diverse gameplay modes, and stunning graphics.\r\n', 5),
(25, 'Fallout', '\"Fallout: New Vegas\" is a gripping RPG with a deep and branching storyline, memorable characters, and a vast and immersive world.\r\n', 6),
(26, 'Undertale', '\"Undertale\" is a quirky and inventive RPG with memorable characters, a unique battle system, and a clever twist on morality in gaming.\r\n', 6),
(27, 'Gone Home', '\"Gone Home\" is a thought-provoking and emotionally resonant narrative game that explores themes of family, identity, and coming-of-age.\r\n', 6),
(28, 'Journey', '\"Journey\" is a beautiful and meditative game that invites players on a visually stunning and emotionally evocative pilgrimage.\r\n', 7),
(29, 'Bioshock', '\"Bioshock\" is a genre-defining FPS with a rich and immersive narrative, atmospheric world, and memorable characters.\r\n', 7),
(30, 'Civilization ', '\"Civilization VI\" is a strategic masterpiece with deep and complex gameplay, a vast tech tree, and engaging diplomacy mechanics.\r\n', 7);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_link1` varchar(255) NOT NULL,
  `video_link2` varchar(255) NOT NULL,
  `video_link3` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `video_link1`, `video_link2`, `video_link3`, `game_id`) VALUES
(1, 'https://www.youtube.com/embed/ov4fJmGCsZM', 'https://www.youtube.com/embed/49S75Lh51YM', 'https://www.youtube.com/embed/ov4fJmGCsZM', 1),
(2, 'https://www.youtube.com/embed/49S75Lh51YM', 'https://www.youtube.com/embed/49S75Lh51YM', 'https://www.youtube.com/embed/49S75Lh51YM', 2),
(3, 'https://www.youtube.com/embed/49S75Lh51YM', 'https://www.youtube.com/embed/49S75Lh51YM', 'https://www.youtube.com/embed/49S75Lh51YM', 3),
(4, 'https://www.youtube.com/embed/R2Ebc_OFeug\n', 'https://www.youtube.com/embed/WxjeV10H1F0\n', 'https://www.youtube.com/embed/W01L70IGBgE\n', 4),
(5, 'https://www.youtube.com/embed/DFze21M_O6s\n', 'https://www.youtube.com/embed/DFze21M_O6s\n', 'https://www.youtube.com/embed/DFze21M_O6s\n', 5),
(6, 'https://www.youtube.com/embed/gmA6MrX81z4\r\n', 'https://www.youtube.com/embed/gmA6MrX81z4\r\n', 'https://www.youtube.com/embed/gmA6MrX81z4\r\n', 6),
(7, 'https://www.youtube.com/embed/rClXqZD2Xrs\r\n', 'https://www.youtube.com/embed/rClXqZD2Xrs\r\n', 'https://www.youtube.com/embed/rClXqZD2Xrs\r\n', 7),
(8, 'https://www.youtube.com/embed/1o__VfCAjns\r\n', 'https://www.youtube.com/embed/1o__VfCAjns\r\n', 'https://www.youtube.com/embed/1o__VfCAjns\r\n', 8),
(9, 'https://www.youtube.com/embed/jgv00uCRt60\r\n', 'https://www.youtube.com/embed/jgv00uCRt60\r\n', 'https://www.youtube.com/embed/jgv00uCRt60\r\n', 9),
(10, 'https://www.youtube.com/embed/68bZ1LKKh7Q\r\n', 'https://www.youtube.com/embed/68bZ1LKKh7Q\r\n', 'https://www.youtube.com/embed/68bZ1LKKh7Q\r\n', 10),
(11, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 11),
(12, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 12),
(13, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 13),
(14, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 14),
(15, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 15),
(16, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 16),
(17, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 17),
(18, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 18),
(19, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 19),
(20, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 20),
(21, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 21),
(22, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 22),
(23, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 23),
(24, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 24),
(25, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 25),
(26, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 26),
(27, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 27),
(28, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 28),
(29, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 29),
(30, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 30),
(31, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 31),
(32, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 32),
(33, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 33),
(34, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 34),
(35, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 35),
(36, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 36),
(37, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 37),
(38, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 38),
(39, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 39),
(40, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 40),
(41, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 41),
(42, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 42),
(43, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 43),
(44, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 44),
(45, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 45),
(46, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 46),
(47, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 47),
(48, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 48),
(49, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 49),
(50, 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 'https://www.youtube.com/embed/68bZ1LKKh7Q', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `developer_id` (`developer_id`),
  ADD KEY `platform_id` (`platform_id`);

--
-- Indexes for table `game_categories`
--
ALTER TABLE `game_categories`
  ADD PRIMARY KEY (`game_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `game_requirements`
--
ALTER TABLE `game_requirements`
  ADD PRIMARY KEY (`game_id`,`os_id`,`processor_id`,`memory_id`,`storage_id`,`graphics_id`),
  ADD KEY `os_id` (`os_id`),
  ADD KEY `processor_id` (`processor_id`),
  ADD KEY `memory_id` (`memory_id`),
  ADD KEY `storage_id` (`storage_id`),
  ADD KEY `graphics_id` (`graphics_id`);

--
-- Indexes for table `graphics`
--
ALTER TABLE `graphics`
  ADD PRIMARY KEY (`graphics_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `memory`
--
ALTER TABLE `memory`
  ADD PRIMARY KEY (`memory_id`);

--
-- Indexes for table `operating_system`
--
ALTER TABLE `operating_system`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`processor_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storage_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `game_id` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `graphics`
--
ALTER TABLE `graphics`
  MODIFY `graphics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `memory`
--
ALTER TABLE `memory`
  MODIFY `memory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `operating_system`
--
ALTER TABLE `operating_system`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `processor`
--
ALTER TABLE `processor`
  MODIFY `processor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `storage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`);

--
-- Constraints for table `game_categories`
--
ALTER TABLE `game_categories`
  ADD CONSTRAINT `fk_key` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `game_requirements`
--
ALTER TABLE `game_requirements`
  ADD CONSTRAINT `game_requirements_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  ADD CONSTRAINT `game_requirements_ibfk_2` FOREIGN KEY (`os_id`) REFERENCES `operating_system` (`os_id`),
  ADD CONSTRAINT `game_requirements_ibfk_3` FOREIGN KEY (`processor_id`) REFERENCES `processor` (`processor_id`),
  ADD CONSTRAINT `game_requirements_ibfk_4` FOREIGN KEY (`memory_id`) REFERENCES `memory` (`memory_id`),
  ADD CONSTRAINT `game_requirements_ibfk_5` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`storage_id`),
  ADD CONSTRAINT `game_requirements_ibfk_6` FOREIGN KEY (`graphics_id`) REFERENCES `graphics` (`graphics_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`);

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `user_review_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
