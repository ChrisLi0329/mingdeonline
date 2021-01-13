-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 12:07 AM
-- Server version: 8.0.22
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

CREATE TABLE `tbl_app` (
  `app_id` int UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`, `added_date`, `updated_date`, `image_name`) VALUES
(1, 'Vijay Thapa Online Exam System', 'hi@vijaythapa.com', 'admin', '7a6bebc2cd4c0598f4ef30128635b93b', '9866296009', '2017-04-03', '2020-12-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE `tbl_faculty` (
  `faculty_id` int UNSIGNED NOT NULL,
  `faculty_name` varchar(150) NOT NULL,
  `time_duration` int NOT NULL,
  `qns_per_set` int NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`faculty_id`, `faculty_name`, `time_duration`, `qns_per_set`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'Grade 10 English', 120, 10, 'yes', '2021-01-12', '2021-01-12'),
(2, 'Grade 9 English', 60, 1, 'yes', '2021-01-12', '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `question_id` int UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `answer` int NOT NULL,
  `writing_answer` longtext NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `faculty` int NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `answer`, `writing_answer`, `reason`, `marks`, `category`, `faculty`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(1, '<p>A rat is a rodent, the most common mammal in the world. Rattus norvegicus is one of the approximately four hundred different kinds of rodents, and it is known by many names, each of which describes a trait or a perceived trait or sometimes a habitat: the earth rat, the roving rat, the barn rat, the field rat, the migratory rat, the house rat, the sewer rat, the water rat, the wharf rat, the alley rat, the gray rat, the brown rat, and the common rat. The average brown rat is large and stocky; it grows to be approximately sixteen inches long from its nose to its tail&mdash;the size of a large adult human male&rsquo;s foot&mdash;and weighs about a pound, though brown rats have been measured by scientists and exterminators at twenty inches and up to two pounds. The brown rat is sometimes confused with the black rat, or Rattus rattus, which is smaller and once inhabited New York City and all of the cities of America but, since Rattus norvegicus pushed it out, is now relegated to a minor role. (The two species still survive alongside each other in some Southern coastal cities and on the West Coast, in places like Los Angeles, for example, where the black rat lives in attics and palm trees.) The black rat is always a very dark gray, almost black, and the brown rat is gray or brown, with a belly that can be light gray, yellow, or even a pure-seeming white. One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car. Both pet rats and laboratory rats are Rattus norvegicus, but they are not wild and therefore, I would emphasize, not the subject of this book. Sometimes pet rats are called fancy rats. But if anyone has picked up this book to learn about fancy rats, then they should put this book down right away; none of the rats mentioned herein are at all fancy.</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>In paragraph, what do the different rat names <strong>mainly</strong> show?</p>\r\n', 'Rats are the largest type of rodent.', 'There are many opinions about rats.', 'There is little reason to be afraid of rats.', 'Rats can live in a variety of environments.', 4, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(2, '<p>Rats are nocturnal, and out in the night the brown rat&rsquo;s eyes are small and black and shiny; when a flashlight shines into them in the dark, the eyes of a rat light up like the eyes of a deer. Though it forages* in darkness, the brown rat has poor eyesight. It makes up for this with, first of all, an excellent sense of smell. . . . They have an excellent sense of taste, detecting the most minute amounts of poison, down to one part per million. A brown rat has strong feet, the two front paws each equipped with four clawlike nails, the rear paws even longer and stronger. It can run and climb with squirrel-like agility. It is an excellent swimmer, surviving in rivers and bays, in sewer streams and toilet bowls.</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>What does the end of paragraph&nbsp;<strong>mainly</strong> emphasize about rats?</p>\r\n', 'their strange diet', 'their physical abilities', 'their preference for dry land', 'their similarity to other mammals', 2, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(3, '<p>The brown rat&rsquo;s teeth are yellow, the front two incisors being especially long and sharp, like buckteeth. When the brown rat bites, its front two teeth spread apart. When it gnaws, a flap of skin plugs the space behind its incisors. Hence, when the rat gnaws on indigestible materials&mdash;concrete or steel, for example&mdash;the shavings don&rsquo;t go down the rat&rsquo;s throat and kill it. Its incisors grow at a rate of five inches per year. Rats always gnaw, and no one is certain why&mdash;there are few modern rat studies. It is sometimes erroneously stated that the rat gnaws solely to limit the length of its incisors, which would otherwise grow out of its head, but this is not the case: the incisors wear down naturally. In terms of hardness, the brown rat&rsquo;s teeth are stronger than aluminum, copper, lead, and iron. They are comparable to steel. With the alligator-like structure of their jaws, rats can exert a biting pressure of up to seven thousand pounds per square inch. Rats, like mice, seem to be attracted to wires&mdash;to utility wires, computer wires, wires in vehicles, in addition to gas and water pipes. One rat expert theorizes that wires may be attractive to rats because of their resemblance to vines and the stalks of plants; cables are the vines of the city. By one estimate, 26 percent of all electric-cable breaks and 18 percent of all phone-cable disruptions are caused by rats. According to one study, as many as 25 percent of all fires of unknown origin are rat-caused. Rats chew electrical cables. Sitting in a nest of tattered rags and newspapers, in the floorboards of an old tenement, a rat gnaws the head of a match&mdash;the lightning in the city forest.</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>In paragraph, what is the <strong>most likely</strong> reason the author states, &ldquo;cables are the vines of the city&rdquo;?</p>\r\n', 'to show why rats enjoy chewing on cables', 'to show that vines are nutritious for rats', 'to show that rats like living in vehicles', 'to show why it is hard to find rats', 1, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(4, '<p>The brown rat&rsquo;s teeth are yellow, the front two incisors being especially long and sharp, like buckteeth. When the brown rat bites, its front two teeth spread apart. When it gnaws, a flap of skin plugs the space behind its incisors. Hence, when the rat gnaws on indigestible materials&mdash;concrete or steel, for example&mdash;the shavings don&rsquo;t go down the rat&rsquo;s throat and kill it. Its incisors grow at a rate of five inches per year. Rats always gnaw, and no one is certain why&mdash;there are few modern rat studies. It is sometimes erroneously stated that the rat gnaws solely to limit the length of its incisors, which would otherwise grow out of its head, but this is not the case: the incisors wear down naturally. In terms of hardness, the brown rat&rsquo;s teeth are stronger than aluminum, copper, lead, and iron. They are comparable to steel. With the alligator-like structure of their jaws, rats can exert a biting pressure of up to seven thousand pounds per square inch. Rats, like mice, seem to be attracted to wires&mdash;to utility wires, computer wires, wires in vehicles, in addition to gas and water pipes. One rat expert theorizes that wires may be attractive to rats because of their resemblance to vines and the stalks of plants; cables are the vines of the city. By one estimate, 26 percent of all electric-cable breaks and 18 percent of all phone-cable disruptions are caused by rats. According to one study, as many as 25 percent of all fires of unknown origin are rat-caused. Rats chew electrical cables. Sitting in a nest of tattered rags and newspapers, in the floorboards of an old tenement, a rat gnaws the head of a match&mdash;the lightning in the city forest.</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>What is one of the <strong>main</strong> purposes of the statistics in paragraph?</p>\r\n', 'to show how many rats live in city buildings', 'to show how poorly constructed most cities are', 'to emphasize the damage rats do to city infrastructure', 'to emphasize the amount of litter people in cities produce', 3, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(5, '<p>When it is not gnawing or feeding on trash, the brown rat digs. Anywhere there is dirt in a city, brown rats are likely to be digging&mdash;in parks, in flowerbeds, in little dirt-poor backyards. They dig holes to enter buildings and to make nests. Rat nests can be in the floorboards of apartments, in the waste-stuffed corners of subway stations, in sewers, or beneath old furniture in basements. &ldquo;Cluttered and unkempt alleyways in cities provide ideal rat habitat, especially those alleyways associated with food-serving establishments,&rdquo; writes Robert Corrigan in Rodent Control, a pest control manual. &ldquo;Alley rats can forage safely within the shadows created by the alleyway, as well as quickly retreat to the safety of cover in these narrow channels.&rdquo; Often, rats burrow under concrete sidewalk slabs. Entrance to a typical under-the-sidewalk rat&rsquo;s nest is gained through a two-inch-wide hole&mdash;their skeletons collapse and they can squeeze into a hole as small as three quarters of an inch wide, the average width of their skull. This tunnel then travels about a foot down to where it widens into a nest or den. The den is lined with soft debris, often shredded plastic garbage or shopping bags, but sometimes even grasses or plants; some rat nests have been found stuffed with the gnawed shavings of the wood-based, spring-loaded snap traps that are used in attempts to kill them. The back of the den then narrows into a long tunnel that opens up on another hole back on the street. This second hole is called a bolt hole; it is an emergency exit. A bolt hole is typically covered lightly with dirt or trash&mdash;camouflage. Sometimes there are networks of burrows, which can stretch beneath a few concrete squares on a sidewalk, or a number of backyards, or even an entire city block&mdash;when Rattus norvegicus first came to Selkirk, England, in 1776, there were so many burrows that people feared the town might sink. Rats can also nest in basements, sewers, manholes, abandoned pipes of any kind, floorboards, or any hole or depression. &ldquo;Often,&rdquo; Robert Corrigan writes, &ldquo;&lsquo;city rats&rsquo; will live unbeknownst to people right beneath their feet.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>Which of the following additions to paragraph&nbsp;would be <strong>most</strong> useful to the reader?</p>\r\n', 'a picture of a rat', 'a picture of a trap', 'a picture of a rat nest', 'a picture of a subway tunnel', 3, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(6, '<p>A rat is a rodent, the most common mammal in the world. Rattus norvegicus is one of the approximately four hundred different kinds of rodents, and it is known by many names, each of which describes a trait or a perceived trait or sometimes a habitat: the earth rat, the roving rat, the barn rat, the field rat, the migratory rat, the house rat, the sewer rat, the water rat, the wharf rat, the alley rat, the gray rat, the brown rat, and the common rat. The average brown rat is large and stocky; it grows to be approximately sixteen inches long from its nose to its tail&mdash;the size of a large adult human male&rsquo;s foot&mdash;and weighs about a pound, though brown rats have been measured by scientists and exterminators at twenty inches and up to two pounds. The brown rat is sometimes confused with the black rat, or Rattus rattus, which is smaller and once inhabited New York City and all of the cities of America but, since Rattus norvegicus pushed it out, is now relegated to a minor role. (The two species still survive alongside each other in some Southern coastal cities and on the West Coast, in places like Los Angeles, for example, where the black rat lives in attics and palm trees.) The black rat is always a very dark gray, almost black, and the brown rat is gray or brown, with a belly that can be light gray, yellow, or even a pure-seeming white. One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car. Both pet rats and laboratory rats are Rattus norvegicus, but they are not wild and therefore, I would emphasize, not the subject of this book. Sometimes pet rats are called fancy rats. But if anyone has picked up this book to learn about fancy rats, then they should put this book down right away; none of the rats mentioned herein are at all fancy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats are nocturnal, and out in the night the brown rat&rsquo;s eyes are small and black and shiny; when a flashlight shines into them in the dark, the eyes of a rat light up like the eyes of a deer. Though it forages* in darkness, the brown rat has poor eyesight. It makes up for this with, first of all, an excellent sense of smell. . . . They have an excellent sense of taste, detecting the most minute amounts of poison, down to one part per million. A brown rat has strong feet, the two front paws each equipped with four clawlike nails, the rear paws even longer and stronger. It can run and climb with squirrel-like agility. It is an excellent swimmer, surviving in rivers and bays, in sewer streams and toilet bowls.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The brown rat&rsquo;s teeth are yellow, the front two incisors being especially long and sharp, like buckteeth. When the brown rat bites, its front two teeth spread apart. When it gnaws, a flap of skin plugs the space behind its incisors. Hence, when the rat gnaws on indigestible materials&mdash;concrete or steel, for example&mdash;the shavings don&rsquo;t go down the rat&rsquo;s throat and kill it. Its incisors grow at a rate of five inches per year. Rats always gnaw, and no one is certain why&mdash;there are few modern rat studies. It is sometimes erroneously stated that the rat gnaws solely to limit the length of its incisors, which would otherwise grow out of its head, but this is not the case: the incisors wear down naturally. In terms of hardness, the brown rat&rsquo;s teeth are stronger than aluminum, copper, lead, and iron. They are comparable to steel. With the alligator-like structure of their jaws, rats can exert a biting pressure of up to seven thousand pounds per square inch. Rats, like mice, seem to be attracted to wires&mdash;to utility wires, computer wires, wires in vehicles, in addition to gas and water pipes. One rat expert theorizes that wires may be attractive to rats because of their resemblance to vines and the stalks of plants; cables are the vines of the city. By one estimate, 26 percent of all electric-cable breaks and 18 percent of all phone-cable disruptions are caused by rats. According to one study, as many as 25 percent of all fires of unknown origin are rat-caused. Rats chew electrical cables. Sitting in a nest of tattered rags and newspapers, in the floorboards of an old tenement, a rat gnaws the head of a match&mdash;the lightning in the city forest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When it is not gnawing or feeding on trash, the brown rat digs. Anywhere there is dirt in a city, brown rats are likely to be digging&mdash;in parks, in flowerbeds, in little dirt-poor backyards. They dig holes to enter buildings and to make nests. Rat nests can be in the floorboards of apartments, in the waste-stuffed corners of subway stations, in sewers, or beneath old furniture in basements. &ldquo;Cluttered and unkempt alleyways in cities provide ideal rat habitat, especially those alleyways associated with food-serving establishments,&rdquo; writes Robert Corrigan in Rodent Control, a pest control manual. &ldquo;Alley rats can forage safely within the shadows created by the alleyway, as well as quickly retreat to the safety of cover in these narrow channels.&rdquo; Often, rats burrow under concrete sidewalk slabs. Entrance to a typical under-the-sidewalk rat&rsquo;s nest is gained through a two-inch-wide hole&mdash;their skeletons collapse and they can squeeze into a hole as small as three quarters of an inch wide, the average width of their skull. This tunnel then travels about a foot down to where it widens into a nest or den. The den is lined with soft debris, often shredded plastic garbage or shopping bags, but sometimes even grasses or plants; some rat nests have been found stuffed with the gnawed shavings of the wood-based, spring-loaded snap traps that are used in attempts to kill them. The back of the den then narrows into a long tunnel that opens up on another hole back on the street. This second hole is called a bolt hole; it is an emergency exit. A bolt hole is typically covered lightly with dirt or trash&mdash;camouflage. Sometimes there are networks of burrows, which can stretch beneath a few concrete squares on a sidewalk, or a number of backyards, or even an entire city block&mdash;when Rattus norvegicus first came to Selkirk, England, in 1776, there were so many burrows that people feared the town might sink. Rats can also nest in basements, sewers, manholes, abandoned pipes of any kind, floorboards, or any hole or depression. &ldquo;Often,&rdquo; Robert Corrigan writes, &ldquo;&lsquo;city rats&rsquo; will live unbeknownst to people right beneath their feet.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats also inhabit subways, as most people in New York City and any city with a subway system are well aware. Every once in a while, there are reports of rats boarding trains, but for the most part rats stay on the tracks&mdash;subway workers I have talked to refer to rats as &ldquo;track rabbits.&rdquo; People tend to think that the subways are filled with rats, but in fact rats are not everywhere in the system; they live in the subways according to the supply of discarded human food and sewer leaks. Sometimes, rats use the subway purely for nesting purposes; they find ways through the walls of the subway stations leading from the tracks to the restaurants and stores on the street&mdash;the vibrations of subway trains tend to create rat-size cracks and holes. Many subway rats tend to live near stations that are themselves near fast-food restaurants. At the various subway stations near Herald Square, for example, people come down from the streets and throw the food that they have not eaten onto the tracks, along with newspapers and soda bottles and, I have noticed, thousands of no- longer-charged AA batteries, waiting to leak acid. The rats eat freely from the waste and sit at the side of the little streams of creamy brown sewery water that flows between the rails. They sip the water the way rats do, either with their front paws or by scooping it up with their incisors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>Read the examples from the excerpt&nbsp;below.</p>\r\n\r\n<ul>\r\n	<li>One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car.</li>\r\n	<li>. . . people . . . throw the food that they have not eaten onto the tracks, along with newspapers and soda bottles and, I have noticed, thousands of no-longer-charged AA batteries, waiting to leak acid.</li>\r\n</ul>\r\n\r\n<p>What do the examples show about the author&rsquo;s research methods?</p>\r\n', 'The author relies on data from published studies.', 'The author looks for humorous stories about rats.', 'The author gathers his own field observations.', 'The author contrasts rats with other animals.', 3, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(7, '<p>A rat is a rodent, the most common mammal in the world. Rattus norvegicus is one of the approximately four hundred different kinds of rodents, and it is known by many names, each of which describes a trait or a perceived trait or sometimes a habitat: the earth rat, the roving rat, the barn rat, the field rat, the migratory rat, the house rat, the sewer rat, the water rat, the wharf rat, the alley rat, the gray rat, the brown rat, and the common rat. The average brown rat is large and stocky; it grows to be approximately sixteen inches long from its nose to its tail&mdash;the size of a large adult human male&rsquo;s foot&mdash;and weighs about a pound, though brown rats have been measured by scientists and exterminators at twenty inches and up to two pounds. The brown rat is sometimes confused with the black rat, or Rattus rattus, which is smaller and once inhabited New York City and all of the cities of America but, since Rattus norvegicus pushed it out, is now relegated to a minor role. (The two species still survive alongside each other in some Southern coastal cities and on the West Coast, in places like Los Angeles, for example, where the black rat lives in attics and palm trees.) The black rat is always a very dark gray, almost black, and the brown rat is gray or brown, with a belly that can be light gray, yellow, or even a pure-seeming white. One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car. Both pet rats and laboratory rats are Rattus norvegicus, but they are not wild and therefore, I would emphasize, not the subject of this book. Sometimes pet rats are called fancy rats. But if anyone has picked up this book to learn about fancy rats, then they should put this book down right away; none of the rats mentioned herein are at all fancy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats are nocturnal, and out in the night the brown rat&rsquo;s eyes are small and black and shiny; when a flashlight shines into them in the dark, the eyes of a rat light up like the eyes of a deer. Though it forages* in darkness, the brown rat has poor eyesight. It makes up for this with, first of all, an excellent sense of smell. . . . They have an excellent sense of taste, detecting the most minute amounts of poison, down to one part per million. A brown rat has strong feet, the two front paws each equipped with four clawlike nails, the rear paws even longer and stronger. It can run and climb with squirrel-like agility. It is an excellent swimmer, surviving in rivers and bays, in sewer streams and toilet bowls.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The brown rat&rsquo;s teeth are yellow, the front two incisors being especially long and sharp, like buckteeth. When the brown rat bites, its front two teeth spread apart. When it gnaws, a flap of skin plugs the space behind its incisors. Hence, when the rat gnaws on indigestible materials&mdash;concrete or steel, for example&mdash;the shavings don&rsquo;t go down the rat&rsquo;s throat and kill it. Its incisors grow at a rate of five inches per year. Rats always gnaw, and no one is certain why&mdash;there are few modern rat studies. It is sometimes erroneously stated that the rat gnaws solely to limit the length of its incisors, which would otherwise grow out of its head, but this is not the case: the incisors wear down naturally. In terms of hardness, the brown rat&rsquo;s teeth are stronger than aluminum, copper, lead, and iron. They are comparable to steel. With the alligator-like structure of their jaws, rats can exert a biting pressure of up to seven thousand pounds per square inch. Rats, like mice, seem to be attracted to wires&mdash;to utility wires, computer wires, wires in vehicles, in addition to gas and water pipes. One rat expert theorizes that wires may be attractive to rats because of their resemblance to vines and the stalks of plants; cables are the vines of the city. By one estimate, 26 percent of all electric-cable breaks and 18 percent of all phone-cable disruptions are caused by rats. According to one study, as many as 25 percent of all fires of unknown origin are rat-caused. Rats chew electrical cables. Sitting in a nest of tattered rags and newspapers, in the floorboards of an old tenement, a rat gnaws the head of a match&mdash;the lightning in the city forest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When it is not gnawing or feeding on trash, the brown rat digs. Anywhere there is dirt in a city, brown rats are likely to be digging&mdash;in parks, in flowerbeds, in little dirt-poor backyards. They dig holes to enter buildings and to make nests. Rat nests can be in the floorboards of apartments, in the waste-stuffed corners of subway stations, in sewers, or beneath old furniture in basements. &ldquo;Cluttered and unkempt alleyways in cities provide ideal rat habitat, especially those alleyways associated with food-serving establishments,&rdquo; writes Robert Corrigan in Rodent Control, a pest control manual. &ldquo;Alley rats can forage safely within the shadows created by the alleyway, as well as quickly retreat to the safety of cover in these narrow channels.&rdquo; Often, rats burrow under concrete sidewalk slabs. Entrance to a typical under-the-sidewalk rat&rsquo;s nest is gained through a two-inch-wide hole&mdash;their skeletons collapse and they can squeeze into a hole as small as three quarters of an inch wide, the average width of their skull. This tunnel then travels about a foot down to where it widens into a nest or den. The den is lined with soft debris, often shredded plastic garbage or shopping bags, but sometimes even grasses or plants; some rat nests have been found stuffed with the gnawed shavings of the wood-based, spring-loaded snap traps that are used in attempts to kill them. The back of the den then narrows into a long tunnel that opens up on another hole back on the street. This second hole is called a bolt hole; it is an emergency exit. A bolt hole is typically covered lightly with dirt or trash&mdash;camouflage. Sometimes there are networks of burrows, which can stretch beneath a few concrete squares on a sidewalk, or a number of backyards, or even an entire city block&mdash;when Rattus norvegicus first came to Selkirk, England, in 1776, there were so many burrows that people feared the town might sink. Rats can also nest in basements, sewers, manholes, abandoned pipes of any kind, floorboards, or any hole or depression. &ldquo;Often,&rdquo; Robert Corrigan writes, &ldquo;&lsquo;city rats&rsquo; will live unbeknownst to people right beneath their feet.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats also inhabit subways, as most people in New York City and any city with a subway system are well aware. Every once in a while, there are reports of rats boarding trains, but for the most part rats stay on the tracks&mdash;subway workers I have talked to refer to rats as &ldquo;track rabbits.&rdquo; People tend to think that the subways are filled with rats, but in fact rats are not everywhere in the system; they live in the subways according to the supply of discarded human food and sewer leaks. Sometimes, rats use the subway purely for nesting purposes; they find ways through the walls of the subway stations leading from the tracks to the restaurants and stores on the street&mdash;the vibrations of subway trains tend to create rat-size cracks and holes. Many subway rats tend to live near stations that are themselves near fast-food restaurants. At the various subway stations near Herald Square, for example, people come down from the streets and throw the food that they have not eaten onto the tracks, along with newspapers and soda bottles and, I have noticed, thousands of no- longer-charged AA batteries, waiting to leak acid. The rats eat freely from the waste and sit at the side of the little streams of creamy brown sewery water that flows between the rails. They sip the water the way rats do, either with their front paws or by scooping it up with their incisors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>Which of the following would be the <strong>best</strong> subtitle for the excerpt?</p>\r\n', '“The Disease Carrier”', '“Toward a Cleaner City”', '“Life on the Train Tracks”', '“Succeeding among Humans”', 4, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(8, '<p>A rat is a rodent, the most common mammal in the world. Rattus norvegicus is one of the approximately four hundred different kinds of rodents, and it is known by many names, each of which describes a trait or a perceived trait or sometimes a habitat: the earth rat, the roving rat, the barn rat, the field rat, the migratory rat, the house rat, the sewer rat, the water rat, the wharf rat, the alley rat, the gray rat, the brown rat, and the common rat. The average brown rat is large and stocky; it grows to be approximately sixteen inches long from its nose to its tail&mdash;the size of a large adult human male&rsquo;s foot&mdash;and weighs about a pound, though brown rats have been measured by scientists and exterminators at twenty inches and up to two pounds. The brown rat is sometimes confused with the black rat, or Rattus rattus, which is smaller and once inhabited New York City and all of the cities of America but, since Rattus norvegicus pushed it out, is now relegated to a minor role. (The two species still survive alongside each other in some Southern coastal cities and on the West Coast, in places like Los Angeles, for example, where the black rat lives in attics and palm trees.) The black rat is always a very dark gray, almost black, and the brown rat is gray or brown, with a belly that can be light gray, yellow, or even a pure-seeming white. One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car. Both pet rats and laboratory rats are Rattus norvegicus, but they are not wild and therefore, I would emphasize, not the subject of this book. Sometimes pet rats are called fancy rats. But if anyone has picked up this book to learn about fancy rats, then they should put this book down right away; none of the rats mentioned herein are at all fancy.</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>In paragraph , what does the information between the dashes provide?</p>\r\n', 'a transition', 'a definition', 'a personal belief', 'a familiar comparison', 4, '', '', '2', 'multipleChoice', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(9, '<p>A rat is a rodent, the most common mammal in the world. Rattus norvegicus is one of the approximately four hundred different kinds of rodents, and it is known by many names, each of which describes a trait or a perceived trait or sometimes a habitat: the earth rat, the roving rat, the barn rat, the field rat, the migratory rat, the house rat, the sewer rat, the water rat, the wharf rat, the alley rat, the gray rat, the brown rat, and the common rat. The average brown rat is large and stocky; it grows to be approximately sixteen inches long from its nose to its tail&mdash;the size of a large adult human male&rsquo;s foot&mdash;and weighs about a pound, though brown rats have been measured by scientists and exterminators at twenty inches and up to two pounds. The brown rat is sometimes confused with the black rat, or Rattus rattus, which is smaller and once inhabited New York City and all of the cities of America but, since Rattus norvegicus pushed it out, is now relegated to a minor role. (The two species still survive alongside each other in some Southern coastal cities and on the West Coast, in places like Los Angeles, for example, where the black rat lives in attics and palm trees.) The black rat is always a very dark gray, almost black, and the brown rat is gray or brown, with a belly that can be light gray, yellow, or even a pure-seeming white. One spring, beneath the Brooklyn Bridge, I saw a red-haired brown rat that had been run over by a car. Both pet rats and laboratory rats are Rattus norvegicus, but they are not wild and therefore, I would emphasize, not the subject of this book. Sometimes pet rats are called fancy rats. But if anyone has picked up this book to learn about fancy rats, then they should put this book down right away; none of the rats mentioned herein are at all fancy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats are nocturnal, and out in the night the brown rat&rsquo;s eyes are small and black and shiny; when a flashlight shines into them in the dark, the eyes of a rat light up like the eyes of a deer. Though it forages* in darkness, the brown rat has poor eyesight. It makes up for this with, first of all, an excellent sense of smell. . . . They have an excellent sense of taste, detecting the most minute amounts of poison, down to one part per million. A brown rat has strong feet, the two front paws each equipped with four clawlike nails, the rear paws even longer and stronger. It can run and climb with squirrel-like agility. It is an excellent swimmer, surviving in rivers and bays, in sewer streams and toilet bowls.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The brown rat&rsquo;s teeth are yellow, the front two incisors being especially long and sharp, like buckteeth. When the brown rat bites, its front two teeth spread apart. When it gnaws, a flap of skin plugs the space behind its incisors. Hence, when the rat gnaws on indigestible materials&mdash;concrete or steel, for example&mdash;the shavings don&rsquo;t go down the rat&rsquo;s throat and kill it. Its incisors grow at a rate of five inches per year. Rats always gnaw, and no one is certain why&mdash;there are few modern rat studies. It is sometimes erroneously stated that the rat gnaws solely to limit the length of its incisors, which would otherwise grow out of its head, but this is not the case: the incisors wear down naturally. In terms of hardness, the brown rat&rsquo;s teeth are stronger than aluminum, copper, lead, and iron. They are comparable to steel. With the alligator-like structure of their jaws, rats can exert a biting pressure of up to seven thousand pounds per square inch. Rats, like mice, seem to be attracted to wires&mdash;to utility wires, computer wires, wires in vehicles, in addition to gas and water pipes. One rat expert theorizes that wires may be attractive to rats because of their resemblance to vines and the stalks of plants; cables are the vines of the city. By one estimate, 26 percent of all electric-cable breaks and 18 percent of all phone-cable disruptions are caused by rats. According to one study, as many as 25 percent of all fires of unknown origin are rat-caused. Rats chew electrical cables. Sitting in a nest of tattered rags and newspapers, in the floorboards of an old tenement, a rat gnaws the head of a match&mdash;the lightning in the city forest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When it is not gnawing or feeding on trash, the brown rat digs. Anywhere there is dirt in a city, brown rats are likely to be digging&mdash;in parks, in flowerbeds, in little dirt-poor backyards. They dig holes to enter buildings and to make nests. Rat nests can be in the floorboards of apartments, in the waste-stuffed corners of subway stations, in sewers, or beneath old furniture in basements. &ldquo;Cluttered and unkempt alleyways in cities provide ideal rat habitat, especially those alleyways associated with food-serving establishments,&rdquo; writes Robert Corrigan in Rodent Control, a pest control manual. &ldquo;Alley rats can forage safely within the shadows created by the alleyway, as well as quickly retreat to the safety of cover in these narrow channels.&rdquo; Often, rats burrow under concrete sidewalk slabs. Entrance to a typical under-the-sidewalk rat&rsquo;s nest is gained through a two-inch-wide hole&mdash;their skeletons collapse and they can squeeze into a hole as small as three quarters of an inch wide, the average width of their skull. This tunnel then travels about a foot down to where it widens into a nest or den. The den is lined with soft debris, often shredded plastic garbage or shopping bags, but sometimes even grasses or plants; some rat nests have been found stuffed with the gnawed shavings of the wood-based, spring-loaded snap traps that are used in attempts to kill them. The back of the den then narrows into a long tunnel that opens up on another hole back on the street. This second hole is called a bolt hole; it is an emergency exit. A bolt hole is typically covered lightly with dirt or trash&mdash;camouflage. Sometimes there are networks of burrows, which can stretch beneath a few concrete squares on a sidewalk, or a number of backyards, or even an entire city block&mdash;when Rattus norvegicus first came to Selkirk, England, in 1776, there were so many burrows that people feared the town might sink. Rats can also nest in basements, sewers, manholes, abandoned pipes of any kind, floorboards, or any hole or depression. &ldquo;Often,&rdquo; Robert Corrigan writes, &ldquo;&lsquo;city rats&rsquo; will live unbeknownst to people right beneath their feet.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rats also inhabit subways, as most people in New York City and any city with a subway system are well aware. Every once in a while, there are reports of rats boarding trains, but for the most part rats stay on the tracks&mdash;subway workers I have talked to refer to rats as &ldquo;track rabbits.&rdquo; People tend to think that the subways are filled with rats, but in fact rats are not everywhere in the system; they live in the subways according to the supply of discarded human food and sewer leaks. Sometimes, rats use the subway purely for nesting purposes; they find ways through the walls of the subway stations leading from the tracks to the restaurants and stores on the street&mdash;the vibrations of subway trains tend to create rat-size cracks and holes. Many subway rats tend to live near stations that are themselves near fast-food restaurants. At the various subway stations near Herald Square, for example, people come down from the streets and throw the food that they have not eaten onto the tracks, along with newspapers and soda bottles and, I have noticed, thousands of no- longer-charged AA batteries, waiting to leak acid. The rats eat freely from the waste and sit at the side of the little streams of creamy brown sewery water that flows between the rails. They sip the water the way rats do, either with their front paws or by scooping it up with their incisors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Question:</p>\r\n\r\n<p>Based on the excerpt, explain why brown rats have been able to thrive in urban areas. Support your answer with relevant and specific information from the excerpt.</p>\r\n', 'READ THE QUESTION CAREFULLY', 'EXPLAIN YOUR ANSWER', 'ADD SUPPORTING DETAILS', 'DOUBLE  CHECK YOUR WORK', 1, '', '', '2', 'writing', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(10, '<p>Choose one from the three prompts below. Write a 5 paragraph persuasive essay<br />\r\nincluding:<br />\r\n- Express and be clear of your voice<br />\r\n- Support your ideas with evidence<br />\r\n- Transitions<br />\r\n- Edit and pay attention to your writing conventions</p>\r\n', 'We all have favourite activities that we enjoy. Write an essay convincing readers to try the activity that you enjoy most.', 'Research shows that the average American watches as much as six hours of television each day. Do you think this is too much? Write an essay convincing readers to spend less time in front of the TV.', 'Have you ever traveled to a place that you found very meaningful and rewarding? Write an essay that persuades others to visit this important place', 'Good Luck', 4, '', '', '2', 'writing', 1, 'yes', '2021-01-12', '2021-01-12', ''),
(115, '<p><a href=\"https://ibb.co/59SyFRg\"><img alt=\"\" src=\"https://ibb.co/59SyFRg\" /></a><img alt=\"\" src=\"https://ibb.co/59SyFRg\" /> In lines 1 to 9, the writer reinforces the description of Marley&rsquo;s energetic character through the use of the words</p>\r\n', 'as', 'asd', 'asda', 'asdada', 1, '', '', '2', 'multipleChoice', 2, 'yes', '2021-01-12', '2021-01-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `result_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `user_answer` int UNSIGNED NOT NULL,
  `user_writing_answer` longtext NOT NULL,
  `right_answer` int UNSIGNED NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `student_id`, `question_id`, `user_answer`, `user_writing_answer`, `right_answer`, `added_date`) VALUES
(257, 8, 115, 0, '', 1, '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_summary`
--

CREATE TABLE `tbl_result_summary` (
  `summary_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_result_summary`
--

INSERT INTO `tbl_result_summary` (`summary_id`, `student_id`, `marks`, `added_date`) VALUES
(80, 8, '0.00', '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `wechat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `subjects` varchar(30) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `wechat`, `gender`, `grade`, `subjects`, `faculty`, `is_active`, `added_date`, `updated_date`) VALUES
(8, 'tt', 'tt', 'tt2FSG@GFD', 'tt', 'tt', '2342352', 'werfsd23452', 'male', '10', '数学', '2', 'no', '2021-01-11', '2021-01-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `app_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `faculty_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `result_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  MODIFY `summary_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
