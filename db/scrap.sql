-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 01:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email_created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keyword` varchar(50) CHARACTER SET utf8 NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 NOT NULL,
  `interval` int(11) UNSIGNED NOT NULL DEFAULT '5',
  `is_reminded` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classifieds`
--

CREATE TABLE `classifieds` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `listing_region` varchar(255) DEFAULT NULL,
  `listing_newregion` varchar(255) DEFAULT NULL,
  `listing_category` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classifieds`
--

INSERT INTO `classifieds` (`id`, `post_id`, `price`, `title`, `listing_region`, `listing_newregion`, `listing_category`, `link`) VALUES
(1, 33046618, 3056, ' Almost new Kitchen Cabinets with Hob, Gas Cooker and Cylinder.', ' Jeddah ', '(Sharae Al Suwais, Al Faisaleyah, Behind Aziz Mall.) ', 'household', '/cls/33046618.html'),
(2, 33041262, 65000, ' DODGE CHARGER, 2012, automatic, 65000 KM, <span class="__cf_email__" data-cfemail="87c4efe6f5e0e2f5b5b7b6b5c7b1b2b7b7b7">[email&#160;protected]<', ' Riyadh ', '', 'vehicles', '/cls/33041262.html'),
(3, 33065966, 30, ' Designed phone cases iphone', ' Khobar ', '', 'mobile phones', '/cls/33065966.html'),
(4, 33065960, 7500, ' MacBook Pro 13 with Retina display ForceTouch Core i7 3.1', ' Riyadh ', '(riyadh) ', 'computers', '/cls/33065960.html'),
(5, 33065539, 500, ' LED TV 32"', ' Riyadh ', '(Dabab) ', 'electronics', '/cls/33065539.html'),
(6, 33065534, 20000, ' ford expedition, 2006, automatic, 270000 KM, ford expedition 2006', ' Riyadh ', '(riyadh) ', 'vehicles', '/cls/33065534.html'),
(7, 33065533, 800, ' 32" Sony Bravia remote control LCD WITH TROLLEY', ' Riyadh ', '', 'electronics', '/cls/33065533.html'),
(8, 33064981, 100, ' homix sambosa maker for sale', ' Riyadh ', '(malaz) ', 'household', '/cls/33064981.html'),
(9, 33064976, 7000, ' Mazda 323, 2003, manual, 180000 KM', ' Jeddah ', '(Faisaliyya) ', 'vehicles', '/cls/33064976.html'),
(10, 33064974, 2300, ' New 2400 watt Inverter for Sale', ' Jubail ', '', 'electronics', '/cls/33064974.html'),
(11, 33064566, 250, ' ORIGINAL leather jackets, Wallets & belts made in Pakistan reasonable price', ' Khobar ', '(King Abdul Aziz cross 16 Khobar Dammam high way fr) ', 'baby/kid stuff', '/cls/33064566.html'),
(12, 33005211, 150, ' TV - 32 INCH , 150 SAR', ' Jubail ', '', 'electronics', '/cls/33005211.html'),
(13, 33064558, 6000, ' Mitsubishi Lancer, 1999, automatic, 292834 KM, good car sale', ' Riyadh ', '(Malaz) ', 'vehicles', '/cls/33064558.html'),
(14, 33063993, 16500, ' 2008 Lumina LS, 2008, automatic, 209100 KM, LUMINA LS 2008 - EXCELLENT CONDITION', ' Riyadh ', '(Shamesi - Shalhoub Road) ', 'vehicles', '/cls/33063993.html'),
(15, 33063424, 500, ' IPhone 5 with Face Time for Sale Urgently', ' Yanbu ', '', 'mobile phones', '/cls/33063424.html'),
(16, 32932044, 850, ' Huawei G8 (32GB', ' Riyadh ', '', 'mobile phones', '/cls/32932044.html'),
(17, 32972783, 75, ' Samsung Galaxy S6 Power Case (Power Bank)', ' Riyadh ', '', 'mobile phones', '/cls/32972783.html'),
(18, 32841597, 17000, ' Mercury Mountaineer, 2005, automatic, 320000 KM, Urgent for sale', ' Riyadh ', '(Exit 16) ', 'vehicles', '/cls/32841597.html'),
(19, 33062345, 14000, ' Toyota Yaris, 2008, manual, 166250 KM, Toyota Yaris, 2008 -Manual- Perfect Condition', ' Dammam ', '(Dammam, Near Kanoo Tower) ', 'vehicles', '/cls/33062345.html'),
(20, 33062343, 150, ' TV Cabinet x 2', ' Riyadh ', '(Green City Compound) ', 'furniture', '/cls/33062343.html'),
(21, 33062332, 40000, ' Mercury Mountaineer V8 Premier, 2007, automatic, 146500 KM, Mercury Mountaineer', ' Jubail ', '(Royal Commission) ', 'vehicles', '/cls/33062332.html'),
(22, 33061664, 25000, ' Trail Blazer LS, 2007, automatic, 175000 KM, Trail Blazer 2007', ' Jeddah ', '(40 street) ', 'vehicles', '/cls/33061664.html'),
(23, 33061663, 2500, ' Furniture for sale since going on exit25', ' Khobar ', '(13 cross Makkah street) ', 'furniture', '/cls/33061663.html'),
(24, 33061660, 120, ' Turkish Carpets ', ' Khobar ', '', 'household', '/cls/33061660.html'),
(25, 32323981, 320, ' Samsung Portable Bluetooth Speaker', ' Jeddah ', '(Hail Street) ', 'electronics', '/cls/32323981.html'),
(26, 33061126, 1900, ' IPAD PRO 9.7 32 GB ROSEGOLD WIFI ONLY', ' Jeddah ', '', 'tablets', '/cls/33061126.html'),
(27, 33060421, 5800, ' Chevrolet Trailblazer, 1998, automatic, 214000 KM, ARGENT', ' Riyadh ', '(HARA) ', 'vehicles', '/cls/33060421.html'),
(28, 32876565, 11000, ' Chevy Lumina, 2006, automatic, 145000 KM, Urgent Sale!', ' Riyadh ', '', 'vehicles', '/cls/32876565.html'),
(29, 33060367, 900, ' SALE! Xperia XA Ultra Dual Sim, Black Color,Including Sony Tempered Glass and Case', ' Jubail ', '', 'mobile phones', '/cls/33060367.html'),
(30, 32825440, 700, ' Samsung Fridge 360 lt', ' Jeddah ', '(Al Ruwais) ', 'appliances', '/cls/32825440.html'),
(31, 33032434, 650, ' Household items in very good condition for sale', ' Riyadh ', '(Ishbeliya) ', 'household', '/cls/33032434.html'),
(32, 32905062, 12000, ' MAZDA 3, 2009, manual, 165000 KM, MAZDA 3 Year: 2009 manual Odometer: 165000 rehab near majid sudais', ' Jeddah ', '(Jeddah (Rehab Dist near majid sudais)) ', 'vehicles', '/cls/32905062.html'),
(33, 33058855, 10000, ' Chevrolet Lumina, 2006, automatic, 165000 KM, Special Price Car 10,000 SAR Only', ' Jeddah ', '(beside Aziz Mall) ', 'vehicles', '/cls/33058855.html'),
(34, 33058820, 350, ' ## SALE 2TB FLASH USB##', ' Riyadh ', '(Exit 5) ', 'mobile phones', '/cls/33058820.html'),
(35, 33058102, 2500, ' Selling my pristined LEICA V-LUX +4', ' Khobar ', '(Selling my pristined LEICA V-LUX +4) ', 'photo/video', '/cls/33058102.html'),
(36, 32115001, 100, ' Server Memory - 1GB Module PC2 5300', ' Riyadh ', '(Olaya) ', 'computers', '/cls/32115001.html'),
(37, 33058088, 450, ' Urgent sale 1 ton AC very good condition', ' Jubail ', '(Near old hyperpanda.) ', 'electronics', '/cls/33058088.html'),
(38, 33037125, 39500, ' Kia Mohave', ' Khobar ', '(Prince Naif 16th Cross Al-Khobar) ', 'vehicles', '/cls/33037125.html'),
(39, 32995277, 900, ' Xiaomi Mi Max - brand new condition + complete', ' Riyadh ', '', 'mobile phones', '/cls/32995277.html'),
(40, 33056861, 150, ' baby games', ' Riyadh ', '(exit 7 -alfalah street) ', 'baby/kid stuff', '/cls/33056861.html'),
(41, 32558124, 930, ' Second Hand in A1 condition', ' Khobar ', '(22nd st. near Silver Tower, back of Saudi Hollandi) ', 'appliances', '/cls/32558124.html'),
(42, 32762746, 32500, ' HYUNDAI SONATA, 2012, 190000 KM, FULL OPTIONS SONATA 2012', ' Khobar ', '', 'vehicles', '/cls/32762746.html'),
(43, 33055953, 25000, ' Chevrolet Cruze, 2013, automatic, 74000 KM, CHEVROLET CRUZE SLIVER 74000 KM (RABIGH)', ' Jeddah ', '', 'vehicles', '/cls/33055953.html'),
(44, 33055947, 6500, ' Furnished family Flat for rent available', ' Dammam ', '(Dammam Near Reymond shop) ', 'household', '/cls/33055947.html'),
(45, 32732739, 300, ' SAR 300 guitar for sale..0546526157', ' Riyadh ', '(riyadh) ', 'musical instruments', '/cls/32732739.html'),
(46, 33055677, 70, ' Kurti & dresses', ' Jeddah ', '(Azizya aadab restaurant) ', 'clothing & accessories', '/cls/33055677.html'),
(47, 32208732, 1300, ' 1,CHINA FACTORY PRICE NEW ELECTRIC TREADMILL WITH TWO YEARS WARRANTY,', ' Jeddah ', '(JEDDAH) ', 'sports', '/cls/32208732.html'),
(48, 33055668, 120, ' Baby carrier', ' Jeddah ', '(Musrifah) ', 'clothing & accessories', '/cls/33055668.html'),
(49, 33063531, 2, ' Pick up & Drop (Low price)', ' Dammam ', '(Khobar to 2nd Industrial City Dammam) ', 'Rideshare', '/cls/33063531.html'),
(50, 33063522, 2, ' Pick up & Drop (Low price)', ' Khobar ', '(Khobar to 2nd Industrial City Dammam) ', 'Rideshare', '/cls/33063522.html'),
(51, 33056239, 9608, ' RIDE SHARE TO *BAHRAIN * &#9608; for 60 SAR &#9608; ** &#9650; TRANSPORTATION TO BAHRAIN&#9650;&#9650;', ' Jubail ', '', 'Rideshare', '/cls/33056239.html'),
(52, 33056209, 9608, ' CARPOOL TO *BAHRAIN * &#9608; - 60 SAR &#9608; ** &#9650;&#9650;&#9650;&#9650;&#9650;', ' Khobar ', '', 'Rideshare', '/cls/33056209.html'),
(53, 32980322, 24000, ' year - 2 BR - Flat on 1st Floor Available immediately ', ' Riyadh ', '(Murabba, Dabbab Road, 5 mins from SABB Head Office) ', 'apts/flats avail.', '/cls/32980322.html'),
(54, 33065538, 400, ' month - Bedspace available in sulaimaniayah 400 SAR Monthly', ' Riyadh ', '', 'bedspace available', '/cls/33065538.html'),
(55, 33065530, 340, ' month - Bed space available - Malayalis only', ' Riyadh ', '(Olaya Beside Narcissus Hotel) ', 'bedspace available', '/cls/33065530.html'),
(56, 33064667, 13000, ' year - 2 Bedroom - 1 Washroom', ' Riyadh ', '(Behind Marriot hotel) ', 'apts/flats avail.', '/cls/33064667.html'),
(57, 32900763, 22000, ' year - 2 BR - Two bedroom two bathroom flat for rent', ' Jubail ', '(mashoor street/ hyper panda) ', 'apts/flats avail.', '/cls/32900763.html'),
(58, 32900807, 1833, ' month - 2 BR - batchelor flat for rent', ' Jubail ', '(jubail city... behind jedda resturant) ', 'apts/flats avail.', '/cls/32900807.html'),
(59, 33063541, 17000, ' year - 2 BR - 2 Bed flat available on 2nd floor with new building', ' Riyadh ', '(Hara near to PARADISE) ', 'apts/flats avail.', '/cls/33063541.html'),
(60, 33062498, 45000, ' month - 1 BR - &#9733;&#9733;&#9733;Fully Furnished Cozy one bedroom flat in Sulaymaniya', ' Riyadh ', '(SULAIMANIYA) ', 'apts/flats avail.', '/cls/33062498.html'),
(61, 33062497, 85000, ' year - 2 BR - &#9733;&#9733;&#9733;SAR85,000 Fully furnished cozy 2 bedroom s flat in Olaya', ' Riyadh ', '(OLAYA) ', 'apts/flats avail.', '/cls/33062497.html'),
(62, 33062490, 53000, ' year - 1 BR - &#9733;&#9733;&#9733;One bedroom fully furnished flats in a private compound block next to Exit 13.', ' Riyadh ', '(AL RAWDAH) ', 'apts/flats avail.', '/cls/33062490.html'),
(63, 33061350, 700, ' month - Room for rent', ' Riyadh ', '(Rabwah Exit 14, behind Jarir Store and Al Sadhan M) ', 'rooms avail.', '/cls/33061350.html'),
(64, 33061334, 20000, ' year - 2 BR - house for rent yearly rent 20,000', ' Riyadh ', '(Al Amal area) ', 'apts/flats avail.', '/cls/33061334.html'),
(65, 32807786, 1500, ' month - 1 BR - 1500 ', ' Jubail ', '(Dhakal mehdood) ', 'apts/flats avail.', '/cls/32807786.html'),
(66, 33060057, 20000, ' year - 2 BR - 2 bhk with house hold items worth 4000, 0568737039', ' Jubail ', '(makka street , near saif real estate) ', 'apts/flats avail.', '/cls/33060057.html'),
(67, 33060053, 1310, ' 6 mnths for 1 persn - A big room for rent only for Indian(Tamil)', ' Riyadh ', '(Bathah, Near G Mart) ', 'rooms avail.', '/cls/33060053.html'),
(68, 32952740, 950, ' month - 1 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(In Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32952740.html'),
(69, 32928648, 950, ' month - 2 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32928648.html'),
(70, 32892558, 11400, ' year - 1 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(In Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32892558.html'),
(71, 33057961, 750, ' month - Room For Rent', ' Jeddah ', '(Azizia) ', 'rooms avail.', '/cls/33057961.html'),
(72, 32923488, 1500, ' month - 1 BR - 1 bHK for rent,,new building,', ' Jubail ', '(ladies market,, opposite big world,, gud morning s) ', 'apts/flats avail.', '/cls/32923488.html'),
(73, 32923497, 1500, ' month - 1 bhk , 2 bhk,, 3 bhk', ' Jubail ', '(ladies market,, opposite big world,, gud morning s) ', 'apts/flats avail.', '/cls/32923497.html'),
(74, 33056790, 555, ' month - Filipino Kabayan 1 room available near Soliman Fakeeh Hospital', ' Jeddah ', '(Al Ruwais, Hail Street near Soliman Fakeeh Hospita) ', 'rooms avail.', '/cls/33056790.html'),
(75, 33056788, 30000, ' year - 2 BR - New Family Fully Furnished Flats', ' Khobar ', '(Al-Thuqba Makkah Road Cross No: 8) ', 'apts/flats avail.', '/cls/33056788.html'),
(76, 32507351, 1500, ' month - 1 BR - Big and well furnished room for rent.', ' Khobar ', '(Near Cornish Al khober, near Al Mana Hospital 10 t) ', 'apts/flats avail.', '/cls/32507351.html'),
(77, 33055437, 22000, ' year - 2 BR - Apartment for Rent (Ground Floor)', ' Riyadh ', '(Malaz Jarir Street, Near King Abdullah Park and Ne) ', 'apts/flats avail.', '/cls/33055437.html'),
(78, 32968227, 1000, ' month - BIG COMPLETELY FURNISHED ROOM AVAILABLE FOR ONLY PAKISTANI OR INDIAN MUSLIM', ' Jeddah ', '(AL-REHAB) ', 'rooms avail.', '/cls/32968227.html'),
(79, 33066201, 10001500, ' month - 2 BR - Assalamualaikum Wa Rehmatullah Hi wa Barakatu Hu,', ' Riyadh ', '', 'apts/flats wanted', '/cls/33066201.html'),
(80, 31463831, 29, 'India', ' Dammam ', '(Dammam/khobar/Saudi/Bangalore/India) ', 'seeking bride - matrimonials', '/cls/31463831.html'),
(81, 33058023, 32, 'Pakistani Seeking a Beautiful Girl For Marriage', '', '', 'seeking bride - matrimonials', '/cls/33058023.html'),
(82, 33064396, 910, 'O Level (Nov-Feb)', ' Jeddah ', '(Firdous Mosque, near spicy Resturant. Arabaeen Roa) ', 'education', '/cls/33064396.html'),
(83, 33063899, 75, 'PAGE & FLASH PRESENTATION CD, WEB HOSTING, ERP & SOFT WARES', ' Riyadh ', '', 'web design', '/cls/33063899.html'),
(84, 33060946, 15, '- Pick & Drop for PISR English Section', ' Riyadh ', '(Hara) ', 'pick up & drop off', '/cls/33060946.html'),
(85, 33059691, 1001100450, 'Yr', ' Jubail ', '(Fedri Consulting Services) ', 'web design', '/cls/33059691.html'),
(86, 31303252, 24, '7 ', ' Khobar ', '(dammam) ', 'transportation', '/cls/31303252.html'),
(87, 33058255, 2013, 'Female Instr', ' Riyadh ', '', 'computer', '/cls/33058255.html'),
(88, 32832565, 2, '3 DAYS FAMILY VISIT Visa', ' Jeddah ', '(all around) ', 'legal', '/cls/32832565.html'),
(89, 33056222, 9608, ' CAR POOL TO *BAHRAIN * &#9608; - 60 SAR &#9608; ** &#9650; TRANSPORTATION', ' Khobar ', '', 'transportation', '/cls/33056222.html'),
(90, 33056212, 9608, ' CAR POOL TO *BAHRAIN * &#9608; - 60 SAR &#9608; ** &#9650; TRANSPORTATION TO BAHRAIN&#9650;&#9650;&#9650;&#9650;', ' Khobar ', '', 'pick up & drop off', '/cls/33056212.html'),
(91, 32789996, 72015, ' Maktab ', ' Riyadh ', '', 'pick up & drop off', '/cls/32789996.html'),
(92, 32822695, 4, 'Marketing Professional is looking for JOB.(Saudi & UK Experience)', '', '(Riyadh ,Jeddah and Dammam) ', 'Riyadh', '/cls/32822695.html'),
(93, 33065995, 90000, ' Equipment in a very good working condition like new', ' Khobar ', '(aqrabia) ', 'tools', '/cls/33065995.html'),
(94, 33065992, 4, 'C, Fridge, Furniture, Bed Set in Good Condition', ' Jubail ', '(Commercial Port, Near to ladies Market) ', 'household', '/cls/33065992.html'),
(95, 33065991, 500, ' Wooden Showcase', ' Riyadh ', '(Hara near Deccan Sweets, Taj bakala) ', 'furniture', '/cls/33065991.html'),
(96, 33065579, 550, ' DESKTOP COMPUTER WITH LCD', ' Riyadh ', '', 'computers', '/cls/33065579.html'),
(97, 32986911, 3500, ' iPhone 7 Plus 256GB Gold - URGENT SELL', ' Eastern Province ', '', 'mobile phones', '/cls/32986911.html'),
(98, 33065043, 33000, ' 2016 Toyota Camry, 2016, automatic, 40000 KM, 2016 Toyota Camry', ' Jeddah ', '(Faisaliya Rowdah street opposite to Shobra market ) ', 'vehicles', '/cls/33065043.html'),
(99, 31189375, 8000, ' Honda Accord, 1999, automatic, 450000 KM, Honda Accord 99 in good condition', ' Dammam ', '', 'vehicles', '/cls/31189375.html'),
(100, 33064603, 1100, ' Trademill !!( negotiable)', ' Dammam ', '', 'electronics', '/cls/33064603.html'),
(101, 33064600, 50, ' Baby bath tub', ' Riyadh ', '(hara) ', 'baby/kid stuff', '/cls/33064600.html'),
(102, 33064043, 80, ' Sundirect set top box for sale with recording option', ' Riyadh ', '(SHUMACY) ', 'electronics', '/cls/33064043.html'),
(103, 33064038, 35000, ' Toyota Corolla, 2015, automatic, 54000 KM, Toyota Corolla (Automatic Geniune Condition) one hand use', ' Jeddah ', '(Hamdania Near Lahore Hotel) ', 'vehicles', '/cls/33064038.html'),
(104, 33063469, 3000, ' 2015, 2015, automatic, 18000 KM, *******Kia Cerato 5 door hatchback black ******(lease transfer anb)', ' Riyadh ', '(Tamimi Markeet Dabbad Street -Sulmaniyah) ', 'vehicles', '/cls/33063469.html'),
(105, 33042533, 1200, ' Excellent Condition Wooden Dining Table 8 chair with Side Board', ' Riyadh ', '', 'furniture', '/cls/33042533.html'),
(106, 32794166, 850, ' ZTE Axon Mini Premium Edition (32GB) Duel SIM 4G', ' Riyadh ', '', 'mobile phones', '/cls/32794166.html'),
(107, 33062941, 600, ' i want to sell refrigerator Haier Make big size', ' Jeddah ', '(aziziyah , Shahafa street) ', 'appliances', '/cls/33062941.html'),
(108, 32808555, 850, ' Xiaomi Mi Max 6.44-inch FHD 32GB Duel SIM 4G+ (Brand New Sealed Pack)', ' Riyadh ', '', 'mobile phones', '/cls/32808555.html'),
(109, 33062376, 100, ' Carpet for hallway', ' Riyadh ', '(Green City Compound) ', 'household', '/cls/33062376.html'),
(110, 33062370, 50, ' Cheap Price - last date November 23, 2016', ' Jeddah ', '(Kamil Azhar Street, Rehab, diagonally opposite to ) ', 'household', '/cls/33062370.html'),
(111, 33062367, 6000, ' cisco catalyst 32 port switch', ' Jeddah ', '(khaleed bin waleed) ', 'computers', '/cls/33062367.html'),
(112, 33061734, 89000, ' Toyota Land Cruiser Prado, 2013, automatic, 56000 KM', ' Jeddah ', '(Al-Aziziyah) ', 'vehicles', '/cls/33061734.html'),
(113, 33061696, 100, ' Emjoi Power Deep Fryer 2.5L', ' Riyadh ', '(Green City Compound) ', 'appliances', '/cls/33061696.html'),
(114, 33061251, 14500, ' Nissan Sunny, 2010, manual, 160000 KM', ' Riyadh ', '(malaz) ', 'vehicles', '/cls/33061251.html'),
(115, 33061228, 75, ' Baby Walkers', ' Riyadh ', '(Al Nakheel) ', 'baby/kid stuff', '/cls/33061228.html'),
(116, 33061209, 20000, ' CHEVROLET EPICA SEDAN, 2011, automatic, 143888 KM, Chevrolet Epica Sedan', ' Jeddah ', '', 'vehicles', '/cls/33061209.html'),
(117, 33060466, 32500, ' Hyundai Elantra, 2015, automatic, 70000 KM, HYUNDAI ELANTRA 2015 GEAR AUTOMATIC', ' Jeddah ', '', 'vehicles', '/cls/33060466.html'),
(118, 33018351, 1000, ' Good Quality High Design Cupboard for Sale used only one year like new', ' Riyadh ', '(Exit 9) ', 'furniture', '/cls/33018351.html'),
(119, 33060461, 16000, ' Trail Blazer, 2005, automatic, 208000 KM, Trail Blazer 2005', ' Riyadh ', '(RIYADH) ', 'vehicles', '/cls/33060461.html'),
(120, 32432036, 6500, ' Chevrolet Aveo, 2007, manual, 171600 KM, Chevrolet Aveo 2007 in good condition', ' Jeddah ', '(Sharfiya) ', 'vehicles', '/cls/32432036.html'),
(121, 33059637, 16000, ' GMC Envoy XL, 2005, automatic, 234000 KM, URGENT SALE', ' Khobar ', '', 'vehicles', '/cls/33059637.html'),
(122, 32973528, 1500, ' IPhone 5 SE 64gb', ' Riyadh ', '', 'mobile phones', '/cls/32973528.html'),
(123, 33058905, 1500, ' Furniture for sale @ very reasonable price', ' Khobar ', '(Rakah) ', 'furniture', '/cls/33058905.html'),
(124, 33058904, 1300, ' newly purchased good condition furniture at low prices', ' Jubail ', '(Abu baker Al Siddique rd. (Behind Al farhan hotel)) ', 'furniture', '/cls/33058904.html'),
(125, 32995453, 18000, ' Hyundai Accent, 2013, manual, 90464 KM, Neat & Clean', ' Riyadh ', '(manfoha) ', 'vehicles', '/cls/32995453.html'),
(126, 33058139, 450, ' Urgent sale 1ton AC very good condition', ' Jubail ', '(Near old hyperpanda.) ', 'household', '/cls/33058139.html'),
(127, 33058131, 2000, ' For sell Asus Transformer T300CHI - Windows Tablet', ' Riyadh ', '', 'computers', '/cls/33058131.html'),
(128, 33044201, 80, ' STC-Fibre Optics modem available', ' Riyadh ', '(Ghirtatah) ', 'electronics', '/cls/33044201.html'),
(129, 33057475, 17000, ' Honda Odyssey, 2000, automatic, 180500 KM', ' Dammam ', '(Khobar) ', 'vehicles', '/cls/33057475.html'),
(130, 33042104, 300, ' For sale size 12 nike roshe run PRM flykint (photo blue color)', ' Riyadh ', '(Malaz, farazdaq street near obeid hospital) ', 'clothing & accessories', '/cls/33042104.html'),
(131, 33056879, 10000, ' Toyota Yaris, 2016, automatic, 20024 KM, SAR 10,000 ', ' Rabigh ', '(jeddah) ', 'vehicles', '/cls/33056879.html'),
(132, 33056099, 138000, ' Toyota Land Cruiser 2013 GX-R For Sale v8, 2013, automatic, 129000 KM, Toyota Land Cruiser 2013 GX-R Full Option Without sunroof For Sale', ' Riyadh ', '', 'vehicles', '/cls/33056099.html'),
(133, 33056075, 1600, ' Samsung Galaxy S6 edge Original (Sealed Box)-32GB, 4G LTE, Gold Platinum', ' Riyadh ', '(Exit-5) ', 'mobile phones', '/cls/33056075.html'),
(134, 33056049, 150, ' Household items for sale', ' Jeddah ', '(Madina Road) ', 'furniture', '/cls/33056049.html'),
(135, 28990291, 120, ' silver key ring 18 gram made in Italy', ' Jeddah ', '(Al bawadi sara sary) ', 'household', '/cls/28990291.html'),
(136, 28990282, 130, ' New Gigabyte Motherbord GA-Z77-D3H', ' Jeddah ', '(Al bawadi sara sary) ', 'household', '/cls/28990282.html'),
(137, 31605116, 1300, ' FACTORY PRICE ELECTRIC TREADMILL FREE DELIVERY MORE THAN 1400 UNIT FOR SALE 1300SR', ' Riyadh ', '(NASEEM) ', 'sports', '/cls/31605116.html'),
(138, 33065601, 17000, ' year - 2 BR - 2br flat,at main sharfiya in new building on 6th floor,2 elevators,for bechalors or family', ' Jeddah ', '(sharfiya) ', 'apts/flats avail.', '/cls/33065601.html'),
(139, 33065578, 20000, ' year - 2 BR - available on rent for SR 20 000 per year King Fahd Road 1st cross Near Al Salamah Hospita', ' Khobar ', '(2 BR - Fully Furnished flat 2 bedroom Hall Kitchen) ', 'apts/flats avail.', '/cls/33065578.html'),
(140, 33032064, 1800, ' month - 1 BR - Family flat available.', ' Riyadh ', '(Hayal wazarath ( hara)) ', 'apts/flats avail.', '/cls/33032064.html'),
(141, 33064713, 15000, ' year - Bachelor Rooms Available', ' Jubail ', '(Near COCO Restaurant) ', 'rooms avail.', '/cls/33064713.html'),
(142, 33064697, 26000, ' year - 3 rooms - 2 washrooms', ' Riyadh ', '(Behind Marriot hotel) ', 'apts/flats avail.', '/cls/33064697.html'),
(143, 33064695, 19000, ' year - 2 BR - 2 BHK Family apt for rent near ladies market', ' Jubail ', '(Behind jeddah restaurant ladies market) ', 'apts/flats avail.', '/cls/33064695.html'),
(144, 33063567, 330, ' month - Room Sharing', ' Khobar ', '(King Fahd St. cor (9th St.) in-front of Pizza Hut,) ', 'bedspace available', '/cls/33063567.html'),
(145, 32846524, 22000, ' year - 2 BR - Two bedroom batchelor flat', ' Jubail ', '(jubail city... behind jedda resturant) ', 'apts/flats avail.', '/cls/32846524.html'),
(146, 33062504, 90000, ' year - 3 BR - &#9733;&#9733;&#9733;Luxurious fully furnished 2 bedrooms complex flats in Al Maather', ' Riyadh ', '(AL MAATHER) ', 'apts/flats avail.', '/cls/33062504.html'),
(147, 33062501, 45000, ' year - 2 BR - &#9733;&#9733;&#9733;New unfurnished Flat cozy 2', ' Riyadh ', '(SULAIMANIYA) ', 'apts/flats avail.', '/cls/33062501.html'),
(148, 33062500, 100000, ' year - 3 BR - &#9733;&#9733;&#9733; -Extremely spacious unfurnished flat 3 bedrooms in a family complex in &#8211; New building', ' Riyadh ', '(SALAHUDDIN) ', 'apts/flats avail.', '/cls/33062500.html'),
(149, 33061384, 500, ' month - Furnished room available for Rent (1 person only)', ' Khobar ', '', 'rooms avail.', '/cls/33061384.html'),
(150, 33061353, 8000, ' year - Single ROOM is available for bachelor - HARA Farhan Restaurant', ' Riyadh ', '(HARA) ', 'apts/flats avail.', '/cls/33061353.html'),
(151, 33060138, 1500, ' month - 1 BR - ROOM ', ' Jubail ', '(near Toyota) ', 'apts/flats avail.', '/cls/33060138.html'),
(152, 33060076, 1000, ' month - Furnished room available', ' Jeddah ', '(Near Thiama Garden) ', 'rooms avail.', '/cls/33060076.html'),
(153, 33060075, 40000, ' year - 4rooms-3BR-majles-AC family flat for rent', ' Khobar ', '(Rakah) ', 'apts/flats avail.', '/cls/33060075.html'),
(154, 32993356, 950, ' month - 1 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(In Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32993356.html'),
(155, 32960910, 950, ' month - 1 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32960910.html'),
(156, 32952748, 11400, ' year - 1 BR - Family Flat, 1 Bedroom, 1 Common, Kitchen, Washroom and separate washing area', ' Dammam ', '(Adama Dammam, near to old Mouwasat Dispensary) ', 'apts/flats avail.', '/cls/32952748.html'),
(157, 33057986, 540, ' month - 1 BR - Room for rent FOR FILIPINO KABAYAN COUPLE ONLY...Rawdah Area, Exit 13, Near Carrefour', ' Riyadh ', '(Rawdah Area, Exit 13, Near Carrefour/Rawdah Park/S) ', 'apts/flats avail.', '/cls/33057986.html'),
(158, 33057972, 1300, ' month - Furnished Room is Available for Muslim Single Executive ***************', ' Riyadh ', '(Sulemaniyah) ', 'rooms avail.', '/cls/33057972.html'),
(159, 32895653, 1500, ' month - 1 bhk room', ' Jubail ', '(ladies market,, opposite big world,, gud morning s) ', 'rooms avail.', '/cls/32895653.html'),
(160, 32817682, 600, ' month - Behind Saudi Hollandi Bank', ' Khobar ', '(23rd Street - Aqrabiyah, Behind Saudi Hollandi Ban) ', 'bedspace available', '/cls/32817682.html'),
(161, 32838388, 600, ' month - I would like to share my Room with executive Sri Lankan (Non- Muslim)', ' Khobar ', '(23rd Street, Aqrabiah - Behind Saudi Hollandi Bank) ', 'rooms avail.', '/cls/32838388.html'),
(162, 33055489, 700, ' month - ROOM for rent for single executive batchlor or maximum 2 person', ' Khobar ', '(THOKBA/ Tabook street cross # 21/22) ', 'rooms avail.', '/cls/33055489.html'),
(163, 33066029, 450, ' Nexus 4', ' Riyadh ', '(Al mather near Banque saudi head office and Ncb) ', 'mobile phones', '/cls/33066029.html'),
(164, 33066028, 140, ' PS4 game - UNCHARTED 4 (for sell or exchange)', ' Riyadh ', '(Exit 9 , Hamra district) ', 'video games', '/cls/33066028.html'),
(165, 33066015, 12000, ' KIA RIO (HATCH BACK), 2013, automatic, 57500 KM, SAR 12000', ' Riyadh ', '', 'vehicles', '/cls/33066015.html'),
(166, 33065647, 100, ' Need For Speed Rivals For Ps4 in Perfectly Working', ' Riyadh ', '(Prince sultan university,Riyadh) ', 'video games', '/cls/33065647.html'),
(167, 33065627, 50, ' Brand new cooking range', ' Riyadh ', '(Hi Al malaz) ', 'appliances', '/cls/33065627.html'),
(168, 33065620, 800, ' Excellent Condition Samsung Washing Machine Automatic', ' Riyadh ', '', 'electronics', '/cls/33065620.html'),
(169, 32309613, 9000, ' Chevrolet optra, 2006, manual, 183000 KM, **********PLEASE URGENT********: Neat Clean Chevrolet Optra', ' Jeddah ', '(Al Safa) ', 'vehicles', '/cls/32309613.html'),
(170, 33024302, 900, ' Thread mill urgent sale. good condition.', '', ' (khobar aqrabia) ', 'sports', '/cls/33024302.html'),
(171, 33065082, 350, ' Innjoo tab leap4 windows 8.1. Ips screen 8" gold color with leather cover', ' Jeddah ', '(S/Iskan) ', 'tablets', '/cls/33065082.html'),
(172, 32907422, 200, ' Room Heater Oil Field Radiator 12 Elements', ' Riyadh ', '(Khurais Road Exit 30) ', 'household', '/cls/32907422.html'),
(173, 33064063, 450, ' Complete Bed Room Set', ' Jeddah ', '(shara sahafa Azizia) ', 'appliances', '/cls/33064063.html'),
(174, 32712967, 61000, ' Toyota Fortuner, 2013, automatic, 97000 KM, Toyota Fortuner 2013.', ' Riyadh ', '(Exit 21) ', 'vehicles', '/cls/32712967.html'),
(175, 33063482, 140, ' SQ 518,basic phone, Dual SIM, Black, 2.4" QVGA screen, 1500mah pics, (Malaz)', ' Riyadh ', '', 'mobile phones', '/cls/33063482.html'),
(176, 33063479, 300, ' 7 seater sofa set', ' Khobar ', '(18 street thoqba) ', 'household', '/cls/33063479.html'),
(177, 33039141, 350, ' Graco brand baby stroller for sell at Hara-Mezban Resturant', ' Riyadh ', '(At Hara Graco baby stroller for sell) ', 'baby/kid stuff', '/cls/33039141.html'),
(178, 33062983, 1000, ' Huawei Nova Plus - Brand New', ' Riyadh ', '', 'mobile phones', '/cls/33062983.html'),
(179, 33062971, 1350, ' Sony Xperia Z5 Premium Duel SIM - 4K Display', ' Riyadh ', '', 'mobile phones', '/cls/33062971.html'),
(180, 33062968, 18000, ' Toyota Yaris Automatic, 2013, automatic, 70000 KM, White automatic yaris2013', ' Madinah ', '', 'vehicles', '/cls/33062968.html'),
(181, 33062469, 150, ' ITEMS FOR SALE', ' Jeddah ', '(Azizia Jeddah) ', 'household', '/cls/33062469.html'),
(182, 32492386, 3000, ' LG 55 FHD smart + Led Wos purchasing price 3700 2 year warranty', ' Riyadh ', '(malaz) ', 'household', '/cls/32492386.html'),
(183, 33062454, 50, ' &#9733;&#9733;&#9733;Football stars mini statues: Cristiano Ronaldo, Messi, Luis Suarez, Neymar', ' Riyadh ', '(SULAIMANIYA) ', 'toys/games', '/cls/33062454.html'),
(184, 33061799, 60, ' fan,cylinder,recevier, side table', ' Jubail ', '(near old hyper panda) ', 'appliances', '/cls/33061799.html'),
(185, 33061773, 1400, ' fridge', ' Khobar ', '(King abdulla 11 th cross) ', 'appliances', '/cls/33061773.html'),
(186, 32983400, 1600, ' I phone 6plus 16gb with FaceTime', ' Dammam ', '(Khobar) ', 'mobile phones', '/cls/32983400.html'),
(187, 33061282, 38000, ' Toyota Yaris, 2016, automatic, 58000 KM, Toyota Yaris 2016, automatic, 58000KM, Neat & Clean Genuine Conditions, Value for money', ' Khobar ', '(Aqrabiya, 16th cross, on khober Dammam highway, ba) ', 'vehicles', '/cls/33061282.html'),
(188, 32567912, 38000, ' Jaguar XJ - Soverein - Top of the range, 1997, automatic, 195000 KM, Exclusive, Rare, Antique model used by a Britisher', ' Eastern Province ', '', 'vehicles', '/cls/32567912.html'),
(189, 33019125, 60, ' Study Table for Sale in good condition', ' Riyadh ', '(Exit 9) ', 'furniture', '/cls/33019125.html'),
(190, 33016943, 2000, ' High Quality BEDROOM SET Only one year used at throw away price', ' Riyadh ', '(Exit - 9) ', 'furniture', '/cls/33016943.html'),
(191, 33059743, 150, ' woden table', ' Jeddah ', '(near sari road) ', 'furniture', '/cls/33059743.html'),
(192, 33059738, 290, ' Fibre glass GAZ Cylinder', ' Riyadh ', '(Al Nakheel) ', 'household', '/cls/33059738.html'),
(193, 32830240, 22000, ' Mercedes-Benz 300SE, 2001, automatic, 300000 KM, Mercedes S class 2001 for sale', ' Jeddah ', '(Jeddah Bawadi) ', 'vehicles', '/cls/32830240.html'),
(194, 32823800, 21000, ' Honda Accord, 2005, automatic, 167000 KM', ' Riyadh ', '', 'vehicles', '/cls/32823800.html'),
(195, 33058966, 45000, ' Toyota Camry, 2014, automatic, 68000 KM, Toyota Camry 2014 GLX with sunroof', ' Jeddah ', '', 'vehicles', '/cls/33058966.html'),
(196, 32973931, 7000, ' Toyota Camry, 1993, manual, 500000 KM', ' Jeddah ', '', 'vehicles', '/cls/32973931.html'),
(197, 33058180, 45100, ' Toyota Corolla, 2015, automatic, 39477 KM', ' Riyadh ', '(Malaz Sharah Jareer Street) ', 'vehicles', '/cls/33058180.html'),
(198, 33057495, 300, ' Single Bed with Side Table and FREE Mattress', ' Riyadh ', '(Riyadh (Al Nafal, Exit 5)) ', 'furniture', '/cls/33057495.html'),
(199, 33057494, 17000, ' Honda Odyssey, 2000, automatic, 180500 KM', ' Khobar ', '(Dammam) ', 'vehicles', '/cls/33057494.html'),
(200, 32740807, 25500, ' Toyota Yaris, 2015, automatic, 61500 KM, Car for Sale', ' Riyadh ', '(Tazaj Hara) ', 'vehicles', '/cls/32740807.html'),
(201, 33056989, 26000, ' Toyota Yaris, 2014, automatic, 80000 KM, Toyota Yaris for sale', ' Riyadh ', '(Rowdah) ', 'vehicles', '/cls/33056989.html'),
(202, 32924578, 1600, ' 17cuft Samsung refrigerator', ' Jeddah ', '(Azaziah opp Danube arbeen road) ', 'household', '/cls/32924578.html'),
(203, 33052978, 1000, ' Huawei Nova Plus Silver', ' Riyadh ', '(Malaz Jarir) ', 'mobile phones', '/cls/33052978.html'),
(204, 33056154, 135, ' AYESHA DESIGN DRESSES (ELEGANT STYLISH COLLECTION)', ' Riyadh ', '', 'clothing & accessories', '/cls/33056154.html'),
(205, 33056148, 18000, ' Nissan Sunny, 2010, automatic, 90000 KM, Japanese made.Mint condition', ' Jeddah ', '', 'vehicles', '/cls/33056148.html'),
(206, 33056140, 75000, ' toyota prado, 2011, automatic, 146000 KM, toyota prado 2011 v4 no accident', ' Riyadh ', '', 'vehicles', '/cls/33056140.html'),
(207, 28990998, 130, ' New Gigabyte Motherbord GA-Z77-D3H', ' Jeddah ', '(Al bawadi sara sary) ', 'computers', '/cls/28990998.html'),
(208, 28990987, 140, ' silver key ring 18 gram made in italy', ' Jeddah ', '(Al bawadi sara sary) ', 'computers', '/cls/28990987.html'),
(209, 31490037, 1300, ' NEW ELECTRIC TREADMILL WHOLESALE AND RETAIL,FACTORY PRICE', ' Jeddah ', '(RIYADH, JEDDAH, MADINA, THABOOK,KHOBAR, DAMMAM,HAS) ', 'sports', '/cls/31490037.html'),
(210, 33065633, 1250, ' month - 1 BR - I am offering 1 BHK house with some house hold items', ' Jubail ', '(Exactly near Maroor signal and beyond Old Kudu) ', 'apts/flats avail.', '/cls/33065633.html'),
(211, 32949018, 25000, ' month - 4 BR - 4 Rooms 2 Toilet & Big Kitchen sala Rehab', ' Jeddah ', '(Rehab) ', 'apts/flats avail.', '/cls/32949018.html'),
(212, 32847326, 1250, ' month-Single Executive only-sahafa', ' Jeddah ', '', 'apts/flats avail.', '/cls/32847326.html'),
(213, 29018296, 45000, ' year - 2 BR - Brand New, Good 2BR Apartment For Small Families Within A Convenient Locality In Zahra', ' Jeddah ', '(Zahra) ', 'apts/flats avail.', '/cls/29018296.html'),
(214, 29300010, 45000, ' year - 2 BR - Good 2BR Apartment With Split AC In A Convenient Locality In Rawdah', ' Jeddah ', '(Rawdah) ', 'apts/flats avail.', '/cls/29300010.html'),
(215, 33064735, 19000, ' year - 2 BR - 2 BHK Family apt near ladies market for rent', ' Jubail ', '(Behind jeddah restaurant ladies market) ', 'apts/flats avail.', '/cls/33064735.html'),
(216, 32998446, 1050, ' month - Bachelor room for rent Pakistani or Indian preferred call after 6pm', ' Jeddah ', '(Toba street near Eskan Building Sharafya) ', 'rooms avail.', '/cls/32998446.html'),
(217, 33063573, 0, 'month 2 Bedroom new flat behind Dammam Palace Hotel', ' Dammam ', '', 'apts/flats avail.', '/cls/33063573.html'),
(218, 33063571, 1000, ' month - ROOM for RENT! For Filipino bachelor', '', ' (Sulaymania near military hospital) ', 'rooms avail.', '/cls/33063571.html'),
(219, 32972582, 20000, ' year - 2 BR - 2 Bedrooms 1 Bathroom Hall Kitchen family flat Ground floor', ' Jubail ', '(Saudi Airlines opposite Try Restaurant) ', 'apts/flats avail.', '/cls/32972582.html'),
(220, 33062602, 500800, ' month - Single room for rent urgent !', ' Khobar ', '(Tuqba near Rashid mall) ', 'rooms avail.', '/cls/33062602.html'),
(221, 33062570, 625, ' month - One Room Available for Filipino Couple Only', ' Jeddah ', '(Al-Bawadi Dist. near Sari St. Back of Hyper Panda) ', 'rooms avail.', '/cls/33062570.html'),
(222, 32968042, 1500, ' month - 1 BR - Full Furnished Flat with good hospitality on rent for 6 months', ' Riyadh ', '(Hail Wazarat (HARA)) ', 'apts/flats avail.', '/cls/32968042.html'),
(223, 33061465, 1000, ' month - Single room with Kitchen and Bathroom is available in family flat for two persons', ' Riyadh ', '(Near Tshoes Signal, HARA) ', 'rooms avail.', '/cls/33061465.html'),
(224, 33061460, 800, ' month - One Big Room Available for Rent (Kabayan Only)', ' Jeddah ', '(Rawdah, Jeddah) ', 'rooms avail.', '/cls/33061460.html'),
(225, 33060210, 17800, ' year - 2 Room Flat in Main HARA', ' Riyadh ', '(Main HARA) ', 'apts/flats avail.', '/cls/33060210.html'),
(226, 33060187, 18800, ' year - 3 Room Flat in Main HARA', ' Riyadh ', '(Main HARA) ', 'apts/flats avail.', '/cls/33060187.html'),
(227, 33060144, 2000, ' month - 2 BR - 2000', ' Jubail ', '', 'apts/flats avail.', '/cls/33060144.html'),
(228, 32930159, 11000, ' year - 1 BR - Big Room with Bathroom available for Rent only for Pakistani Executive Bachelor', ' Riyadh ', '(Malaz - Salah Uddin Al Ayyoubi Road - Near Wooden ) ', 'apts/flats avail.', '/cls/32930159.html'),
(229, 32887493, 11000, ' year - Big Room with Bathroom available for Rent only for Pakistani Executive Bachelor', ' Riyadh ', '(Malaz - Salah Uddin Al Ayyoubi Road - Near Wooden ) ', 'rooms avail.', '/cls/32887493.html'),
(230, 32887377, 11000, ' year - 1 BR - Big Room with Bathroom available for Rent only for Pakistani Executive Bachelor', ' Riyadh ', '(Malaz - Salah Uddin Al Ayyoubi Road - Near Wooden ) ', 'apts/flats avail.', '/cls/32887377.html'),
(231, 33058001, 12000, ' year - 1 BR - Some Household Items available in reasonable price.', ' Dammam ', '(Behind city flower market and very close to new po) ', 'apts/flats avail.', '/cls/33058001.html'),
(232, 32524244, 900, ' month - big room wth separate entrance', ' Jeddah ', '(aziziah rehab) ', 'rooms avail.', '/cls/32524244.html'),
(233, 33057995, 540, ' month - Room for rent FOR FILIPINO KABAYAN COUPLE ONLY...Rawdah Area, Exit 13, Near Carrefour', ' Riyadh ', '(Rawdah Area, Exit 13, Near Carrefour/Rawdah Park/S) ', 'rooms avail.', '/cls/33057995.html'),
(234, 33056900, 950, ' month - 3 BR - FURNISHED BEDROOM WITH, SEPARATE BATHROOM N BIG KITCHEN ON SHARING BASIS', ' Dammam ', '(al khobar subeka) ', 'exchanges', '/cls/33056900.html'),
(235, 33056878, 650, ' month - Vacant Room for Filipino Couple or Bachelor', ' Jeddah ', '(Gharnatah St.) ', 'rooms avail.', '/cls/33056878.html'),
(236, 33056860, 950, ' month - EXPERIENCED N WELL TRAINED TUTOR FOR ALL SUBJECTS FROM KG TO 9TH', ' Dammam ', '(al khobar subeka) ', 'bedspace available', '/cls/33056860.html'),
(237, 33066255, 500, ' month - Engineer bachelor looking for bedspace in Aziziya or nearby Aziziya', ' Jeddah ', '', 'bedspace wanted', '/cls/33066255.html');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `links` varchar(255) DEFAULT NULL,
  `last_scrapped_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `links`, `last_scrapped_date_time`) VALUES
(1, 'http://www.expatriates.com/classifieds/us/forsale/', NULL),
(2, 'http://www.expatriates.com/classifieds/us/childcare/', NULL),
(3, 'http://www.expatriates.com/classifieds/us/business/', NULL),
(4, 'http://www.expatriates.com/classifieds/us/hs/', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `classifieds`
--
ALTER TABLE `classifieds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `classifieds`
--
ALTER TABLE `classifieds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
