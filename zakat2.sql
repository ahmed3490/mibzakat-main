-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 05:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakat2`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id_card` varchar(200) NOT NULL,
  `address` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `island` varchar(191) NOT NULL,
  `zakat` bigint(191) NOT NULL,
  `dependents` int(191) NOT NULL,
  `zakat_total` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `id_card`, `address`, `email`, `island`, `zakat`, `dependents`, `zakat_total`) VALUES
(33, 'Ali Rasaan', 'A929292', 'G.hasaboge 1st floor', 'rasaan2112@gmail.com', 'HA. Huvahandhoo', 95, 3, 285),
(34, 'Ahmed Amjad', 'A158877', 'G.picture 2nd floor', 'amjad223@gmail.com', 'HA. Gallandhoo', 95, 3, 285);

-- --------------------------------------------------------

--
-- Table structure for table `islands`
--

CREATE TABLE `islands` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `islands`
--

INSERT INTO `islands` (`id`, `name`) VALUES
(1001, 'HA Thakandhoo'),
(1002, 'HA Utheemu'),
(1003, 'HA. Muraidhoo'),
(1004, 'HA. Baarah'),
(1005, 'HA. Maafahi'),
(1006, 'HA. Alidhoo'),
(1007, 'HA. Huvahandhoo'),
(1008, 'HA. Dhonakulhi'),
(1009, 'HA. Beenaafushi'),
(1010, 'HA. Dhapparuhuraa'),
(1011, 'HA. Dhigufaruhuraa'),
(1012, 'HA. Gaafushi'),
(1013, 'HA. Gaamathikulhudhoo'),
(1014, 'HA. Gallandhoo'),
(1015, 'HA. Govvaafushi'),
(1016, 'HA. Innafinolhu'),
(1017, 'HA. Kudafinolhu'),
(1018, 'HA. Maafari'),
(1019, 'HA. Maafinolhu'),
(1020, 'HA. Madulu'),
(1021, 'HA. Manafaru'),
(1022, 'HA. Matheerah'),
(1023, 'HA. Medhafushi'),
(1024, 'HA. Mulidhoo'),
(1025, 'HA. Naridhoo'),
(1026, 'HA. Ubulifinolhu'),
(1027, 'HA. Umaraiyfinolhu'),
(1028, 'HA. Vangaaru'),
(1029, 'HA. Velifinolhu'),
(1030, 'HDh. Faridhoo'),
(1031, 'HDh. Hondaidhoo'),
(1032, 'HDh. Hanimaadhoo'),
(1033, 'HDh. Finey'),
(1034, 'HDh. Naivaadhoo'),
(1035, 'HDh. Hirimaradhoo'),
(1036, 'HDh. Nolhivaranfaru'),
(1037, 'HDh. Nellaidhoo'),
(1038, 'HDh. Nolhivaram'),
(1039, 'HDh. Kurinbi'),
(1040, 'HDh. Kunburudhoo'),
(1041, 'HDh. Kulhudhuffushi'),
(1042, 'HDh. Kumundhoo'),
(1043, 'HDh. Neykurendhoo'),
(1044, 'HDh. Vaikaradhoo'),
(1045, 'HDh. Maavaidhoo'),
(1046, 'HDh. Makunudhoo'),
(1047, 'HDh. Vaikaramuraidhoo'),
(1048, 'HDh. Theefaridhoo'),
(1049, 'HDh. Dhipparufushi'),
(1050, 'HDh. Fenboahuraa'),
(1051, 'HDh. Hirinaidhoo'),
(1052, 'HDh. Hodaafushi'),
(1053, 'HDh. Innafushi'),
(1054, 'HDh. Kanamana'),
(1055, 'HDh. Kandinmaahuraa'),
(1056, 'HDh. Kattalafushi'),
(1057, 'HDh. Keylakunu'),
(1058, 'HDh. Kudafaru'),
(1059, 'HDh. Kudamuraidhoo'),
(1060, 'HDh. Muiri'),
(1061, 'HDh. Naagoashi'),
(1062, 'HDh. Rahburi'),
(1063, 'HDh. Rasfushi'),
(1064, 'HDh. Ruffushi'),
(1065, 'HDh. Veligandu'),
(1066, 'Sh. Kanditheemu'),
(1067, 'Sh. Noomaraa'),
(1068, 'Sh. Goidhoo'),
(1069, 'Sh. Feydhoo'),
(1070, 'Sh. Feevah'),
(1071, 'Sh. Bilehffahi'),
(1072, 'Sh. Foakaidhoo'),
(1073, 'Sh. Narudhoo'),
(1074, 'Sh. Maakandoodhoo'),
(1075, 'Sh. Maroshi'),
(1076, 'Sh. Lhaimagu'),
(1077, 'Sh. Firubaidhoo'),
(1078, 'Sh. Komandoo'),
(1079, 'Sh. Maaungoodhoo'),
(1080, 'Sh. Funadhoo'),
(1081, 'Sh. Milandhoo'),
(1082, 'Sh. Nilandhoo'),
(1083, 'Sh. Keekimini'),
(1084, 'Sh. Bisalhaahuraa'),
(1085, 'Sh. Boduhuraa'),
(1086, 'Sh. Bolissafaru'),
(1087, 'Sh. Dhigurah'),
(1088, 'Sh. Dhiguvelidhoo'),
(1089, 'Sh. Dholhiyadhoo'),
(1090, 'Sh. Dhonvelihuraa'),
(1091, 'Sh. Dolhiyadhoo Kudarah'),
(1092, 'Sh. Eriadhoo'),
(1093, 'Sh. Eskasdhoo'),
(1094, 'Sh. Farukolhu'),
(1095, 'Sh. Fushifaru'),
(1096, 'Sh. Gaakoshibee'),
(1097, 'Sh. Gallaidhoo'),
(1098, 'Sh. Hahfathigadu'),
(1099, 'Sh. Hirubadhoo'),
(1100, 'Sh. Hurasfaru'),
(1101, 'Sh. Ka\'baalifaru'),
(1102, 'Sh. Kakaaeriadhoo'),
(1103, 'Sh. Kudadhoo'),
(1104, 'Sh. Kudafarufinolhu'),
(1105, 'Sh. Kudafaruhuraa'),
(1106, 'Sh. Kudafunadhoo'),
(1107, 'Sh. Kudalhaimendhoo'),
(1108, 'Sh. Madidhoo'),
(1109, 'Sh. Madikuredhdhoo'),
(1110, 'Sh. Mathikomandoo'),
(1111, 'Sh. Medhukuburudhoo'),
(1112, 'Sh. Medhurah'),
(1113, 'Sh. Migoodhoo'),
(1114, 'Sh. Muleehuraa'),
(1115, 'Sh. Naainfaru'),
(1116, 'Sh. Naalaahuraa'),
(1117, 'Sh. Nalandhoo'),
(1118, 'Sh. Naruribudhoo'),
(1119, 'Sh. Neyo'),
(1120, 'Sh. Vagaru'),
(1121, 'N. Henbandhoo'),
(1122, 'N. Kendhikolhudhoo'),
(1123, 'N. Tholhendhoo'),
(1124, 'N. Maalhendhoo'),
(1125, 'N. Kudafari'),
(1126, 'N. Landhoo'),
(1127, 'N. Maafaru'),
(1128, 'N. Lhohi'),
(1129, 'N. Miladhoo'),
(1130, 'N. Magoodhoo'),
(1131, 'N. Manadhoo'),
(1132, 'N. Holhudhoo'),
(1133, 'N. Fodhdhoo'),
(1134, 'N. Velidhoo'),
(1135, 'N. Aarah'),
(1136, 'N. Badaidhidhdhoo'),
(1137, 'N. Bodufushi'),
(1138, 'N. Bodulhaimendhoo'),
(1139, 'N. Bomasdhoo'),
(1140, 'N. Burehifasdhoo'),
(1141, 'N. Dheefuram'),
(1142, 'N. Dhekenanfaru'),
(1143, 'N. Dhigurah'),
(1144, 'N. Dhonaerikandoodhoo'),
(1145, 'N. Edhdhuffaru Mairah'),
(1146, 'N. Ekulhivaru'),
(1147, 'N. Erruhhuraa'),
(1148, 'N. Farumuli'),
(1149, 'N. Felivaru'),
(1150, 'N. Felivarukudarah'),
(1151, 'N. Fohdhipparu'),
(1152, 'N. Fushivelavaru'),
(1153, 'N. Goabilivaadhoo'),
(1154, 'N. Holhumeedhoo'),
(1155, 'N. Huivani'),
(1156, 'N. Hulhudhdhoo'),
(1157, 'N. Huvadhumaavattaru'),
(1158, 'N. Inguraidhoo'),
(1159, 'N. Kaalhugemendhoo'),
(1160, 'N. Kadinmaahuraa'),
(1161, 'N. Kafakomandoo'),
(1162, 'N. Kalaidhoo'),
(1163, 'N. Karinma'),
(1164, 'N. Karinmavattaru'),
(1165, 'N. Kedhivaru'),
(1166, 'N. Kolhufushi'),
(1167, 'N. Kudafunafaru'),
(1168, 'N. Kudafushi'),
(1169, 'N. Kunnumalei'),
(1170, 'N. Kuramaadhoo'),
(1171, 'N. Kuredhivaru'),
(1172, 'N. Loafaru'),
(1173, 'N. Maafunafaru'),
(1174, 'N. Maakanaafushi'),
(1175, 'N. Maakurandhoo'),
(1176, 'N. Maavandhoo'),
(1177, 'N. Maavelavaru'),
(1178, 'N. Medhafushi'),
(1179, 'N. Medhufaru'),
(1180, 'N. Minaavaru'),
(1181, 'N. Orimasvaru'),
(1182, 'N. Orivaru'),
(1183, 'N. Orivarukudarah'),
(1184, 'N. Raafushi'),
(1185, 'N. Raalhugadu'),
(1186, 'N. Raalhulaakolhu'),
(1187, 'N. Randheli'),
(1188, 'N. Thaburudhoo'),
(1189, 'N. Thaburudhuffushi'),
(1190, 'N. Tholhendhoo'),
(1191, 'N. Thoshigandukolhu'),
(1192, 'N. Vavathi'),
(1193, 'N. Vihafaru'),
(1194, 'N. Vihafarufinolhu'),
(1195, 'R. Alifushi'),
(1196, 'R. Vaadhoo'),
(1197, 'R. Rasgetheemu'),
(1198, 'R. Angolhitheemu'),
(1199, 'R. Gaaudoodhoo'),
(1200, 'R. Ungoofaaru'),
(1201, 'R. Kadholhudhoo'),
(1202, 'R. Maakurathu'),
(1203, 'R. Rasmaadhoo'),
(1204, 'R. Innamaadhoo'),
(1205, 'R. Maduvvari'),
(1206, 'R. Inguraidhoo'),
(1207, 'R. Fainu'),
(1208, 'R. Meedhoo'),
(1209, 'R. Kinolhas'),
(1210, 'R. Hulhudhuffaaru'),
(1211, 'R. Ifuru'),
(1212, 'R. Meedhupparu'),
(1213, 'R. Aarah'),
(1214, 'R. Angaagiri'),
(1215, 'R. Arilundhoo'),
(1216, 'R. Badaveri'),
(1217, 'R. Bodufarufinolhu'),
(1218, 'R. Bodufenmaaembudhoo'),
(1219, 'R. Bodufushi'),
(1220, 'R. Boduhuraa'),
(1221, 'R. Dheburidheythereyvaadhoo'),
(1222, 'R. Dhekunumaafaru'),
(1223, 'R. Dhigali'),
(1224, 'R. Dhikkuredhdhoo'),
(1225, 'R. Dhinnaafushi'),
(1226, 'R. Dhoragali'),
(1227, 'R. Dhuvaafaru'),
(1228, 'R. Dhuvaafaruhuraa'),
(1229, 'R. Ehthigandujehihuraa'),
(1230, 'R. Ehthigili'),
(1231, 'R. Ekurufushifinolhu'),
(1232, 'R. Faarufushi'),
(1233, 'R. Fasgandufaru'),
(1234, 'R. Fasmendhoo'),
(1235, 'R. Fenfushi'),
(1236, 'R. Filaidhoo'),
(1237, 'R. Fuggiri'),
(1238, 'R. Furaveri'),
(1239, 'R. Gaaudoodhoo'),
(1240, 'R. Gemana'),
(1241, 'R. Giraavaaru'),
(1242, 'R. Goiymaru'),
(1243, 'R. Goyyafaru'),
(1244, 'R. Gubolhi'),
(1245, 'R. Bodu Haiykodi'),
(1246, 'R. Hiboodhoo'),
(1247, 'R. Hiraveri'),
(1248, 'R. Hulhudhoo'),
(1249, 'R. Huruvalhi'),
(1250, 'R. Kadoogadu'),
(1251, 'R. Kandhoomeehunge lhaabugali'),
(1252, 'R. Kothaafaru'),
(1253, 'R. Kottefaru'),
(1254, 'R. Kudafenmaaembudhoo'),
(1255, 'R. Kudafushi'),
(1256, 'R. Kudakurathu'),
(1257, 'R. Kudalhosgiri'),
(1258, 'R. Kudathulhaadhoo'),
(1259, 'R. Kukulhudhoo'),
(1260, 'R. Kuredhdhoo'),
(1261, 'R. Kuroshigiri'),
(1262, 'R. Lhaabugali'),
(1263, 'R. Lhohi'),
(1264, 'R. Liboakandhoo'),
(1265, 'R. Lundhufushi'),
(1266, 'R. Maamingili'),
(1267, 'R. Maamunagau'),
(1268, 'R. Maamunagaufinolhu'),
(1269, 'R. Maanenfushi'),
(1270, 'R. Maashigiri'),
(1271, 'R. Madivaafaru'),
(1272, 'R. Mahidhoo'),
(1273, 'R. Meedhupparu'),
(1274, 'R. Minaadhoo'),
(1275, 'R. Mullaafushi'),
(1276, 'R. Muravandhoo'),
(1277, 'R. Neyo'),
(1278, 'R. Orimasfushi'),
(1279, 'R. Thaavathaa'),
(1280, 'R. Ufulandhoo'),
(1281, 'R. Ugulu'),
(1282, 'R. Uthurumaafaru'),
(1283, 'R. Vaffushihuraa'),
(1284, 'R. Vahfushi'),
(1285, 'R. Vandhoo'),
(1286, 'R. Veyveh'),
(1287, 'R. Villingili'),
(1288, 'B. Kudarikilu'),
(1289, 'B. Kamadhoo'),
(1290, 'B. Kendhoo'),
(1291, 'B. Maaddoo'),
(1292, 'B. Udoodhoo'),
(1293, 'B. Kihaadhoo'),
(1294, 'B. Dhonfanu'),
(1295, 'B. Dharavandhoo'),
(1296, 'B. Maalhos'),
(1297, 'B. Eydhafushi'),
(1298, 'B. Funadhoo'),
(1299, 'B. Thulhaadhoo'),
(1300, 'B. Hithaadhoo'),
(1301, 'B. Fulhadhoo'),
(1302, 'B. Fehendhoo'),
(1303, 'B. Goidhoo'),
(1304, 'B. Landaagiraavaru'),
(1305, 'B. Dhunikolhu'),
(1306, 'B. Kihaadhuffaru'),
(1307, 'B. Fonimagoodhoo'),
(1308, 'B. Kunfunadhoo'),
(1309, 'B. Horubadhoo'),
(1310, 'B. Ahivahfushi'),
(1311, 'B. Aidhoo'),
(1312, 'B. Anhenunfushi'),
(1313, 'B. Balhufinolhu'),
(1314, 'B. Bathalaa'),
(1315, 'B. Bathalaahuraa'),
(1316, 'B. Boadhaafusheefinolhu'),
(1317, 'B. Bodufinolhu'),
(1318, 'B. Boifushi'),
(1319, 'B. Dhakandhoo'),
(1320, 'B. Dhandhoo'),
(1321, 'B. Dhigudhefaru'),
(1322, 'B. Dhigufaruvinagandu'),
(1323, 'B. Dhoogandufinolhu'),
(1324, 'B. Embudhoo'),
(1325, 'B. Fareedhaafinolhu'),
(1326, 'B. Fares'),
(1327, 'B. Fehenfaru'),
(1328, 'B. Finolhas'),
(1329, 'B. Funadhoo'),
(1330, 'B. Gaagadufaruhuraa'),
(1331, 'B. Gaaviligili'),
(1332, 'B. Gemendhoo'),
(1333, 'B. Hanifaru'),
(1334, 'B. Hibalhidhoo'),
(1335, 'B. Hirundhoo'),
(1336, 'B. Hulhudhoo'),
(1337, 'B. Innafushi'),
(1338, 'B. Kanufusheefinolhu'),
(1339, 'B. Kanufusheegaathufinolhu'),
(1340, 'B. Kanufushi'),
(1341, 'B. Kashidhoo'),
(1342, 'B. Kashidhuhfarufinolhu'),
(1343, 'B. Keyodhoo'),
(1344, 'B. Kihavah Haruvalhi'),
(1345, 'B. Kudadhoo'),
(1346, 'B. Maaddoo'),
(1347, 'B. Maaddoohulhudhoo'),
(1348, 'B. Maafusheefinolhu'),
(1349, 'B. Maamaduvvaree'),
(1350, 'B. Maarikili'),
(1351, 'B. Madhirivaadhoo'),
(1352, 'B. Medhufinolhu'),
(1353, 'B. Medhufinolhu'),
(1354, 'B. Mendhoo'),
(1355, 'B. Milaidhoo'),
(1356, 'B. Miriandhoo'),
(1357, 'B. Mudhdhoo'),
(1358, 'B. Muthaafushi'),
(1359, 'B. Nelivarufinolhu'),
(1360, 'B. Nibiligaa'),
(1361, 'B. Olhugiri'),
(1362, 'B. Fulhadhoo rahkairi finolhu '),
(1363, 'B. Thiladhoo'),
(1364, 'B. Udoodhoo'),
(1365, 'B. Ufuligiri'),
(1366, 'B. Vakkaru'),
(1367, 'B. Veyofushi'),
(1368, 'B. Vinaneiyfaruhuraa'),
(1369, 'B. Voavah'),
(1370, 'Lh. Hinnavaru'),
(1371, 'Lh. Naifaru'),
(1372, 'Lh. Kurendhoo'),
(1373, 'Lh. Olhuvelifushi'),
(1374, 'Lh. Maafilaafushi'),
(1375, 'Lh. Felivaru'),
(1376, 'Lh. Kanuhuraa'),
(1377, 'Lh. Komandoo'),
(1378, 'Lh. Kuredhdhoo'),
(1379, 'Lh. Madhiriguraidhoo'),
(1380, 'Lh. Alhigaa'),
(1381, 'Lh. Bodufinolhu'),
(1382, 'Lh. Bovalhafushi'),
(1383, 'Lh. Dhashugirifinolhu'),
(1384, 'Lh. Dheruhfinolhu'),
(1385, 'Lh. Dhidhdhoo'),
(1386, 'Lh. Dhirunbaafushi'),
(1387, 'Lh. Faadhoo'),
(1388, 'Lh. Fainuaadhamhuraa'),
(1389, 'Lh. Farufinolhu'),
(1390, 'Lh. Fehigili'),
(1391, 'Lh. Fushifaru'),
(1392, 'Lh. Gaaerifaru'),
(1393, 'Lh. Govaafushi'),
(1394, 'Lh. Hudhufushi'),
(1395, 'Lh. Huruvalhi'),
(1396, 'Lh. Innahuraa'),
(1397, 'Lh. Kalhumanjehuraa'),
(1398, 'Lh. Kanifushi'),
(1399, 'Lh. Lhohi'),
(1400, 'Lh. Lhosalafushi'),
(1401, 'Lh. Maakoa'),
(1402, 'Lh. Maavaafushi'),
(1403, 'Lh. Maabinhuraa'),
(1404, 'Lh. Madivaru'),
(1405, 'Lh. Maduvvari'),
(1406, 'Lh. Maidhoo'),
(1407, 'Lh. Medhaadihuraa'),
(1408, 'Lh. Medhafushi'),
(1409, 'Lh. Meedhaahuraa'),
(1410, 'Lh. Meyafushi'),
(1411, 'Lh. Ookolhufinolhu'),
(1412, 'Lh. Ruhelhifushi'),
(1413, 'Lh. Thilamaafushi'),
(1414, 'Lh. Uthuruhuraa'),
(1415, 'Lh. Varihuraa'),
(1416, 'Lh. Vavvaru'),
(1417, 'Lh. Vejvah'),
(1418, 'Lh. Veligandu'),
(1419, 'Lh. Vihafaru'),
(1420, 'Male\'. Male\''),
(1421, 'Male\'. Villingili'),
(1422, 'Male\'. Hulhumale\''),
(1423, 'K. Kaashidhoo'),
(1424, 'K. Gaafaru'),
(1425, 'K. Dhiffushi'),
(1426, 'K. Thulusdhoo'),
(1427, 'K. Huraa'),
(1428, 'K. Himmafushi'),
(1429, 'K. Gulhi'),
(1430, 'K. Maafushi'),
(1431, 'K. Guraidhoo'),
(1432, 'K. Hulhule'),
(1433, 'K. Thilafushi'),
(1434, 'K. Kuda Bandos'),
(1435, 'K. Kanduoiygiri'),
(1436, 'K. Aarah'),
(1437, 'K. Dhoonidhoo'),
(1438, 'K. Funadhoo'),
(1439, 'K. Girifushi'),
(1440, 'K. Gaamaadhoo'),
(1441, 'K. Feydhoofinolhu'),
(1442, 'K. Asdhu'),
(1443, 'K. Bandos'),
(1444, 'K. Baros'),
(1445, 'K. Biyaadhu'),
(1446, 'K. Boduhithi'),
(1447, 'K. Bolifushi'),
(1448, 'K. Farukolhufushi'),
(1449, 'K. Rannalhi'),
(1450, 'K. Makunufushi'),
(1451, 'K. Dhigufinohlu'),
(1452, 'K. Emboodhu'),
(1453, 'K. Eriyadhoo'),
(1454, 'K. Fihaalhohi'),
(1455, 'K. Kuda Huraa'),
(1456, 'K. Furanafushi'),
(1457, 'K. Bodufinolhu'),
(1458, 'K. Gasfinolhu'),
(1459, 'K. Giraavaru'),
(1460, 'K. Helegeli'),
(1461, 'K. Lankanfushi'),
(1462, 'K. Ihuru'),
(1463, 'K. Kandoomafushi'),
(1464, 'K. Kanifinolhu'),
(1465, 'K. Kudahithi'),
(1466, 'K. Vihamanaafushi'),
(1467, 'K. Velassaru'),
(1468, 'K. Lhohifushi'),
(1469, 'K. Mankunudhoo'),
(1470, 'K. Meerufenfushi'),
(1471, 'K. Nakatchafushi'),
(1472, 'K. Olhuveli'),
(1473, 'K. Veligandu Huraa'),
(1474, 'K. Lankanfinolhu'),
(1475, 'K. Medhufinolhu'),
(1476, 'K. Mahaanaelhi Huraa'),
(1477, 'K. Ziyaaraiyfushi'),
(1478, 'K. Kanuoiy Huraa'),
(1479, 'K. Thulhagiri'),
(1480, 'K. Hambadhu'),
(1481, 'K. Embudhu Finolhu'),
(1482, 'K. Vaadhu'),
(1483, 'K. Vabbinfaru'),
(1484, 'K. Vilivaru'),
(1485, 'K. Bodu Huraa'),
(1486, 'K. Bushy'),
(1487, 'K. Emboodhoo Finolhu'),
(1488, 'K. Erruhhuraa'),
(1489, 'K. Farukolhufushi'),
(1490, 'K. Feydhoo'),
(1491, 'K. Hembadhoo'),
(1492, 'K. Kaduoiygiri'),
(1493, 'K. Kagi'),
(1494, 'K. Kudafinolhu'),
(1495, 'K. Little Huraa'),
(1496, 'K. Maadhoo'),
(1497, 'K. Madivaru'),
(1498, 'K. Maniyafushi'),
(1499, 'K. Masleggihuraa'),
(1500, 'K. Oidhunifinolhu'),
(1501, 'K. Olhigandufinolhu'),
(1502, 'K. Olhuhali'),
(1503, 'K. Rasfari'),
(1504, 'K. Thaburudhoo'),
(1505, 'K. Tholhimaraahuraa'),
(1506, 'K. Thulusdhoo Irumathee hura'),
(1507, 'K. Vaagali'),
(1508, 'K. Vabboahuraa'),
(1509, 'K. Valassaru'),
(1510, 'K. Vammaafushi'),
(1511, 'K. Villingilimathidhahuraa'),
(1512, 'AA. Thoddoo'),
(1513, 'AA. Rasdhoo'),
(1514, 'AA. Ukulhas'),
(1515, 'AA. Mathiveri'),
(1516, 'AA. Bodufolhudhoo'),
(1517, 'AA. Feridhoo'),
(1518, 'AA. Maalhos'),
(1519, 'AA. Himandhoo'),
(1520, 'AA. Bathala'),
(1521, 'AA. Ellaidhu'),
(1522, 'AA. Fesdhoo'),
(1523, 'AA. Gangehi'),
(1524, 'AA. Halaveli'),
(1525, 'AA. Kuramathi'),
(1526, 'AA. Maayaafushi'),
(1527, 'AA. Madoogali'),
(1528, 'AA. Kudafolhudhoo'),
(1529, 'AA. Veligandu'),
(1530, 'AA. Velidhoo'),
(1531, 'AA. Mushimasmigili'),
(1532, 'AA. Alikoirah'),
(1533, 'AA. Beyrumadivaru'),
(1534, 'AA. Dhinnolhufinolhu'),
(1535, 'AA. Etheremadivaru'),
(1536, 'AA. Fushi'),
(1537, 'AA. Gaathafushi'),
(1538, 'AA. Kandholhudhoo'),
(1539, 'AA. Maagau'),
(1540, 'AA. Madivaru'),
(1541, 'AA. Madivarufinolhu'),
(1542, 'AA. Mathivereefinolhu'),
(1543, 'AA. Meerufenfushi'),
(1544, 'AA. Vihamaafaru'),
(1545, 'Adh. Avi Island'),
(1546, 'Adh. Machchafushi'),
(1547, 'Adh. Hangnameedhoo'),
(1548, 'Adh. Omadhoo'),
(1549, 'Adh. Kuburudhoo'),
(1550, 'Adh. Mahibadhoo'),
(1551, 'Adh. Mandhoo'),
(1552, 'Adh. Dhangethi'),
(1553, 'Adh. Dhigurah'),
(1554, 'Adh. Fenfushi'),
(1555, 'Adh. Dhidhdhoo'),
(1556, 'Adh. Maamigili'),
(1557, 'Adh. Ariyadhoo'),
(1558, 'Adh. Angaaga'),
(1559, 'Adh. Dhidhdhoofinolhu'),
(1560, 'Adh. Athurugau'),
(1561, 'Adh. Dhiffushi'),
(1562, 'Adh. Kuda Rah'),
(1563, 'Adh. Huvahendhoo'),
(1564, 'Adh. Machchafushi'),
(1565, 'Adh. Mirihi'),
(1566, 'Adh. Rangalifinolhu'),
(1567, 'Adh. Moofushi'),
(1568, 'Adh. Villingilivaru'),
(1569, 'Adh. Nalaguraidhoo'),
(1570, 'Adh. Thundufushi'),
(1571, 'Adh. Maafushivaru'),
(1572, 'Adh. Vakarufalhi'),
(1573, 'Adh. Vilamendhoo'),
(1574, 'Adh. Aafinolhu'),
(1575, 'Adh. Bodufinolhu'),
(1576, 'Adh. Bodukaashihuraa'),
(1577, 'Adh. Bulhalhohi'),
(1578, 'Adh. Dhiggiri'),
(1579, 'Adh. Enboodhoo'),
(1580, 'Adh. Fushidhiggaa'),
(1581, 'Adh. Heenfaru'),
(1582, 'Adh. Hiyafushi'),
(1583, 'Adh. Hukurudhoo'),
(1584, 'Adh. Hurasdhoo'),
(1585, 'Adh. Huruelhi'),
(1586, 'Adh. Innafushi'),
(1587, 'Adh. Kalhahadhihuraa'),
(1588, 'Adh. Kudadhoo'),
(1589, 'Adh. Lonuboi'),
(1590, 'Adh. Theluveligaa'),
(1591, 'Adh. Theyofulhihuraa'),
(1592, 'Adh. Tholhifushi'),
(1593, 'V. Fulidhoo'),
(1594, 'V. Thinadhoo'),
(1595, 'V. Felidhoo'),
(1596, 'V. Keyodhoo'),
(1597, 'V. Rakeedhoo'),
(1598, 'V. Anbaraa'),
(1599, 'V. Bodumohuraa'),
(1600, 'V. Alimatha'),
(1601, 'V. Dhiggiri'),
(1602, 'V. Aarah'),
(1603, 'V. Foththeyo Bodufushi'),
(1604, 'V. Hulhidhoo'),
(1605, 'V. Kudhiboli'),
(1606, 'V. Kunaavashi'),
(1607, 'V. Raggadu'),
(1608, 'V. Ruhhurihuraa'),
(1609, 'V. Thuduhuraa'),
(1610, 'V. Vashugiri'),
(1611, 'V. Vattaru'),
(1612, 'M. Raimandhoo'),
(1613, 'M. Madifushi'),
(1614, 'M. Veyvah'),
(1615, 'M. Mulah'),
(1616, 'M. Muli'),
(1617, 'M. Naalaafushi'),
(1618, 'M. Kolhufushi'),
(1619, 'M. Dhiggaru'),
(1620, 'M. Maduvvari'),
(1621, 'M. Hakuraa Huraa'),
(1622, 'M. Medhufushi'),
(1623, 'M. Boahuraa'),
(1624, 'M. Dhekunuboduveli'),
(1625, 'M. Dhiththudi'),
(1626, 'M. Erruh-huraa'),
(1627, 'M. Fenboafinolhu'),
(1628, 'M. Fenboakurali'),
(1629, 'M. Fenfuraveli'),
(1630, 'M. Gaakurali'),
(1631, 'M. Gasveli'),
(1632, 'M. Gongalihuraa'),
(1633, 'M. Hurasveli (Uthurugasveli)'),
(1634, 'M. Kakaahuraa'),
(1635, 'M. Kekuraalhuveli'),
(1636, 'M. Kudausfushi'),
(1637, 'M. Maahuraa'),
(1638, 'M. Maalhaveli'),
(1639, 'M. Mausfushi'),
(1640, 'M. Medhufushi'),
(1641, 'M. Seedheehuraa'),
(1642, 'M. Seedihuraaveligandu'),
(1643, 'M. Thuvaru'),
(1644, 'M. Uthuruboduveli'),
(1645, 'M. Verineiybe'),
(1646, 'F. Feeali'),
(1647, 'F. Biledhdhoo'),
(1648, 'F. Magoodhoo'),
(1649, 'F. Dharaboodhoo'),
(1650, 'F. Nilandhoo'),
(1651, 'F. Maafushi'),
(1652, 'F. Filitheyo'),
(1653, 'F. Adhangau'),
(1654, 'F. Agulugalee-Finolhu'),
(1655, 'F. Bandidhuhfusheefinolhu'),
(1656, 'F. Bodufinolhu'),
(1657, 'F. Dhiguvaru'),
(1658, 'F. Dunifinolhu'),
(1659, 'F. Embulufushi'),
(1660, 'F. Faanumaahuraa'),
(1661, 'F. Gaahuraa'),
(1662, 'F. Himithi'),
(1663, 'F. Huraa'),
(1664, 'F. Jinnathgau'),
(1665, 'F. Kadumoonufushi'),
(1666, 'F. Kofesdhoo'),
(1667, 'F. Kudafalhufinolhu'),
(1668, 'F. Kudafareefinolhu'),
(1669, 'F. Maavaruhuraa'),
(1670, 'F. Madivaru huraa'),
(1671, 'F. Madivaru huraa'),
(1672, 'F. Magoodhoobodufinolhu'),
(1673, 'F. Makunueri'),
(1674, 'F. Minimasgali'),
(1675, 'F. Rangaleefinolhu'),
(1676, 'F. Villiginlivarufinolhu'),
(1677, 'Dh. Meedhoo'),
(1678, 'Dh. Bandidhoo'),
(1679, 'Dh. Rinbudhoo'),
(1680, 'Dh. Hulhudheli'),
(1681, 'Dh. Gemendhoo'),
(1682, 'Dh. Vaanee'),
(1683, 'Dh. Maaenboodhoo'),
(1684, 'Dh. Kudahuvadhoo'),
(1685, 'Dh. Velavaru'),
(1686, 'Dh. Meedhuffushi'),
(1687, 'Dh. Aluvifushi'),
(1688, 'Dh. Ayyukaloahuraa'),
(1689, 'Dh. Bhulalafushi'),
(1690, 'Dh. Bodufushi'),
(1691, 'Dh. Dhebaidhoo'),
(1692, 'Dh. Dhoores'),
(1693, 'Dh. Embudhoofushi'),
(1694, 'Dh. Faandhoo'),
(1695, 'Dh. Fenaruvaahuraa'),
(1696, 'Dh. Fenfushi'),
(1697, 'Dh. Fenmeeruhuraa'),
(1698, 'Dh. Gahadhiffushi'),
(1699, 'Dh. Hasannalaafushi'),
(1700, 'Dh. Hinaidhoo'),
(1701, 'Dh. Hiriyafushi'),
(1702, 'Dh. Hudufushifinolhu'),
(1703, 'Dh. Hulhuveli'),
(1704, 'Dh. Issari'),
(1705, 'Dh. Kannefaru'),
(1706, 'Dh. Kedhigadu'),
(1707, 'Dh. Kiraidhoo'),
(1708, 'Dh. Lhohi'),
(1709, 'Dh. Maadheli'),
(1710, 'Dh. Maafushi'),
(1711, 'Dh. Maagau'),
(1712, 'Dh. Maalefaru'),
(1713, 'Dh. Maavarufinolhu'),
(1714, 'Dh. Mathidhebaidhoo'),
(1715, 'Dh. Medhurah'),
(1716, 'Dh. Meedhuffushi'),
(1717, 'Dh. Minimasgali'),
(1718, 'Dh. Naibukaloabodufushi'),
(1719, 'Dh. Olhufushi'),
(1720, 'Dh. Olhuveli'),
(1721, 'Dh. Sarakafushi'),
(1722, 'Dh. Sathaaraa'),
(1723, 'Dh. Thabalhaidhoo'),
(1724, 'Dh. Thilabolhufushi'),
(1725, 'Dh. Thinhuraa'),
(1726, 'Dh. Udhdhoo'),
(1727, 'Dh. Vaalia'),
(1728, 'Dh. Vallalhohi'),
(1729, 'Dh. Vommuli'),
(1730, 'Th. Buruni'),
(1731, 'Th. Vilufushi'),
(1732, 'Th. Madifushi'),
(1733, 'Th. Dhiyamigili'),
(1734, 'Th. Guraidhoo'),
(1735, 'Th. Kandoodhoo'),
(1736, 'Th. Vandhoo'),
(1737, 'Th. Hirilandhoo'),
(1738, 'Th. Gaadhiffushi'),
(1739, 'Th. Thimarafushi'),
(1740, 'Th. Veymandoo'),
(1741, 'Th. Kinbidhoo'),
(1742, 'Th. Omadhoo'),
(1743, 'Th. Fondhoo'),
(1744, 'Th. Kanimeedhoo'),
(1745, 'Th. Bodufinolhu'),
(1746, 'Th. Bodurehaa'),
(1747, 'Th. Dhiffushi'),
(1748, 'Th. Dhonanfushi'),
(1749, 'Th. Dhururehaa'),
(1750, 'Th. Ekruffushi'),
(1751, 'Th. Elaa'),
(1752, 'Th. Fenfushi'),
(1753, 'Th. Fenmeerufushi'),
(1754, 'Th. Fonidhaani'),
(1755, 'Th. Funaddhoo'),
(1756, 'Th. Fushi'),
(1757, 'Th. Fushifaru'),
(1758, 'Th. Gaalee'),
(1759, 'Th. Gaathurehaa'),
(1760, 'Th. Hathifushi'),
(1761, 'Th. Hikandhilohi'),
(1762, 'Th. Hiriyanfushi'),
(1763, 'Th. Hodelifushi'),
(1764, 'Th. Hulhiyanfushi'),
(1765, 'Th. Kaadhoo'),
(1766, 'Th. Kadufushi'),
(1767, 'Th. Kafidhoo'),
(1768, 'Th. Kakolhas'),
(1769, 'Th. Kalhudheyfushi'),
(1770, 'Th. Kalhufahalafushi'),
(1771, 'Th. Kandaru'),
(1772, 'Th. Kani'),
(1773, 'Th. Kolafushi'),
(1774, 'Th. Kolhufushi'),
(1775, 'Th. Kolhufushi'),
(1776, 'Th. Kudadhoo'),
(1777, 'Th. Kudadhoofinolhu'),
(1778, 'Th. Kudakaadhoo'),
(1779, 'Th. Kudakibidhoo'),
(1780, 'Th. Kuradhuvaru'),
(1781, 'Th. Kuredhifushi'),
(1782, 'Th. Lhavaddoo'),
(1783, 'Th. Maagulhi'),
(1784, 'Th. Maleafushi'),
(1785, 'Th. Mathidhoo'),
(1786, 'Th. Medhafushi'),
(1787, 'Th. Olhudhiyafushi'),
(1788, 'Th. Olhufushi'),
(1789, 'Th. Olhufushifinolhu'),
(1790, 'Th. Olhugiri'),
(1791, 'Th. Rihaamaafushi'),
(1792, 'Th. Ruththibirah'),
(1793, 'Th. Thinkolhufushi'),
(1794, 'Th. Ufuriyaa'),
(1795, 'Th. Usfushi'),
(1796, 'Th. Vanbadhi'),
(1797, 'L. Isdhoo'),
(1798, 'L. Dhabidhoo'),
(1799, 'L. Maabaidhoo'),
(1800, 'L. Mundoo'),
(1801, 'L. Kalhaidhoo'),
(1802, 'L. Gan'),
(1803, 'L. Maavah'),
(1804, 'L. Fonadhoo'),
(1805, 'L. Gaadhoo'),
(1806, 'L. Maamendhoo'),
(1807, 'L. Hithadhoo'),
(1808, 'L. Kunahandhoo'),
(1809, 'L. Baresdhoo'),
(1810, 'L. Maandhoo'),
(1811, 'L. Hulhimendhoo'),
(1812, 'L. Kadhdhoo'),
(1813, 'L. Athahedha'),
(1814, 'L. Bileitheyrahaa'),
(1815, 'L. Bodufenrahaa'),
(1816, 'L. Bodufinolhu'),
(1817, 'L. Boduhuraa'),
(1818, 'L. Boduhuraa'),
(1819, 'L. Kudahuraa'),
(1820, 'L. Boduhuraa'),
(1821, 'L. Bodumaabulhali'),
(1822, 'L. Bokaiyfushi'),
(1823, 'L. Burahaa'),
(1824, 'L. Dhekunuvinagadu'),
(1825, 'L. Dhonberahaa'),
(1826, 'L. Fares'),
(1827, 'L. Fenboahuraa'),
(1828, 'L. Fenboarahaa'),
(1829, 'L. Fonagaadhoo'),
(1830, 'L. Fushi'),
(1831, 'L. Gasgfinolhu'),
(1832, 'L. Guraidhoo'),
(1833, 'L. Haiythirahaa'),
(1834, 'L. Haiythoshi'),
(1835, 'L. Hanhushi'),
(1836, 'L. Hedha'),
(1837, 'L. Hikandhirahaa'),
(1838, 'L. Holhurahaa'),
(1839, 'L. Hulhisdhoo'),
(1840, 'L. Hulhiyandhoo'),
(1841, 'L. Kalhurahaa'),
(1842, 'L. Kandaru'),
(1843, 'L. Kanuhuraa'),
(1844, 'L. Kashidhoo'),
(1845, 'L. Kilegerahaa'),
(1846, 'L. Kudafares'),
(1847, 'L. Kudafenhuraa'),
(1848, 'L. Kudafushi'),
(1849, 'L. Kudakalhaidhoo'),
(1850, 'L. Kudamaabulhahi'),
(1851, 'L. Kudamahiguli'),
(1852, 'L. Kudaveshi'),
(1853, 'L. Maafushi'),
(1854, 'L. Maakalhuveli'),
(1855, 'L. Maaveshi'),
(1856, 'L. Mahakanfushi'),
(1857, 'L. Mahigulhi'),
(1858, 'L. Medhuvinagadu'),
(1859, 'L. Mendhoo'),
(1860, 'L. Olhutholhu'),
(1861, 'L. Olhuveli'),
(1862, 'L. Thathunrahaa'),
(1863, 'L. Thunburi'),
(1864, 'L. Usfinolhu'),
(1865, 'L. Uthuruvinagadu'),
(1866, 'L. Uvadhevifushi'),
(1867, 'L. Vadinolhu'),
(1868, 'L. Veligandufinolhu'),
(1869, 'L. Ziyaaraiffushi'),
(1870, 'GA. Kolamaafushi'),
(1871, 'GA. Villingili'),
(1872, 'GA. Maamendhoo'),
(1873, 'GA. Nilandhoo'),
(1874, 'GA. Dhaandhoo'),
(1875, 'GA. Dhevvadhoo'),
(1876, 'GA. Kondey'),
(1877, 'GA. Dhiyadhoo'),
(1878, 'GA. Gemanafushi'),
(1879, 'GA. Kanduhulhudhoo'),
(1880, 'GA. Kooddoo'),
(1881, 'GA. Kendheraa'),
(1882, 'GA. Araigaththaa'),
(1883, 'GA. Baavanadhoo'),
(1884, 'GA. Baberaahuttaa'),
(1885, 'GA. Bakeththaa'),
(1886, 'GA. Beyrumauddoo'),
(1887, 'GA. Boaddoo'),
(1888, 'GA. Bodubondeyyaa'),
(1889, 'GA. Bodufushi'),
(1890, 'GA. Bodehuttaa'),
(1891, 'GA. Dhevaamaagalaa'),
(1892, 'GA. Dhevalaabadhoo'),
(1893, 'GA. Dhigudhoo'),
(1894, 'GA. Dhigurah'),
(1895, 'GA. Falhumaafushi'),
(1896, 'GA. Falhuverrehaa'),
(1897, 'GA. Faruhulhudhoo'),
(1898, 'GA. Fenrehaa'),
(1899, 'GA. Fenrehaahuttaa'),
(1900, 'GA. Fulangi'),
(1901, 'GA. Funadhoo'),
(1902, 'GA. Funadhooviligillaa'),
(1903, 'GA. Funamauddoo'),
(1904, 'GA. Galamadhoo'),
(1905, 'GA. Hadahaa'),
(1906, 'GA. Hagedhoo'),
(1907, 'GA. Hagevillaa'),
(1908, 'GA. Heenaamaagalaa'),
(1909, 'GA. Hirihuttaa'),
(1910, 'GA. Hithaadhoo'),
(1911, 'GA. Hithandhoogalaa'),
(1912, 'GA. Hulhimendhoo'),
(1913, 'GA. Huredhdhoo'),
(1914, 'GA. Idimaa'),
(1915, 'GA. Inareha'),
(1916, 'GA. Kanduvilingili'),
(1917, 'GA. Kalhehuttaa'),
(1918, 'GA. Keesseyrahaa'),
(1919, 'GA. Koadhoo'),
(1920, 'GA. Kodafuttaa'),
(1921, 'GA. Kodeymatheelaabadhoo'),
(1922, 'GA. Kodeyvilingili'),
(1923, 'GA. Kolhaa'),
(1924, 'GA. Kubumaafushi'),
(1925, 'GA. Kudafehala'),
(1926, 'GA. Kudalafari'),
(1927, 'GA. Kudhebondeyyaa'),
(1928, 'GA. Kuredhdhoo'),
(1929, 'GA. Lhossaa'),
(1930, 'GA. Maadhiguvara'),
(1931, 'GA. Maafehelaa'),
(1932, 'GA. Maagehuttaa'),
(1933, 'GA. Maamutaa'),
(1934, 'GA. Maanaagalaa'),
(1935, 'GA. Maarandhoo'),
(1936, 'GA. Maarehaa'),
(1937, 'GA. Mahadhdhoo'),
(1938, 'GA. Mathidhdhoo'),
(1939, 'GA. Medhuhuttaa'),
(1940, 'GA. Medhurehaa'),
(1941, 'GA. Melaimu'),
(1942, 'GA. Meradhoo'),
(1943, 'GA. Minimensaa'),
(1944, 'GA. Munandhoo'),
(1945, 'GA. Odagallaa'),
(1946, 'GA. Raavehrehaa'),
(1947, 'GA. Ribidhoo'),
(1948, 'GA. Viligalaa'),
(1949, 'GA. Vodamulaa'),
(1950, 'GDh. Madaveli'),
(1951, 'GDh. Hoadedhdhoo'),
(1952, 'GDh. Nadellaa'),
(1953, 'GDh. Gadhdhoo'),
(1954, 'GDh. Rathafandhoo'),
(1955, 'GDh. Vaadhoo'),
(1956, 'GDh. Fiyoari'),
(1957, 'GDh. Thinadhoo'),
(1958, 'GDh. Fares-Maathodaa'),
(1959, 'GDh. Konottaa'),
(1960, 'GDh. Kaadedhdhoo'),
(1961, 'GDh. Baulhageella'),
(1962, 'GDh. Dhigulaabadhoo'),
(1963, 'GDh. Dhoonirehaa'),
(1964, 'GDh. Faanahuttaa'),
(1965, 'GDh. Farehulhudhoo'),
(1966, 'GDh. Gan'),
(1967, 'GDh. Gazeera'),
(1968, 'GDh. Golhallaa'),
(1969, 'GDh. Haadhoo'),
(1970, 'GDh. Havoddaa'),
(1971, 'GDh. Havodigalaa'),
(1972, 'GDh. Hulhuvaarulu'),
(1973, 'GDh. Kaadehdhuvaa'),
(1974, 'GDh. Kaashidhoo'),
(1975, 'GDh. Kadahalagalaa'),
(1976, 'GDh. Kafenaa'),
(1977, 'GDh. Kalhehamala'),
(1978, 'GDh. Kalherehaa'),
(1979, 'GDh. Kodaanafuttaa'),
(1980, 'GDh. Odavarrehaa'),
(1981, 'GDh. Kudahuttaa'),
(1982, 'GDh. Kudhelaihaa'),
(1983, 'GDh. Laihaa'),
(1984, 'GDh. Lonudhoo'),
(1985, 'GDh. Lonudhoohuttaa'),
(1986, 'GDh. Gehemaagala'),
(1987, 'GDh. Maagoderehaa'),
(1988, 'GDh. Maahutigalaa'),
(1989, 'GDh. Maaodagalaa'),
(1990, 'GDh. Maavaarulu'),
(1991, 'GDh. Maavadhdhuvaa'),
(1992, 'GDh. Magudhdhuvaa'),
(1993, 'GDh. Mallaarehaa'),
(1994, 'GDh. Mathihuttaa'),
(1995, 'GDh. Menthandhuvaa'),
(1996, 'GDh. Mudhimaahuttaa'),
(1997, 'GDh. Odagallaa'),
(1998, 'GDh. Rahadhuvaa'),
(1999, 'GDh. Meehunthibenehuttaa'),
(2000, 'GDh. Thinehuttaa'),
(2001, 'GDh. Ullegalaa'),
(2002, 'GDh. Vaireyaadhuvaa'),
(2003, 'GDh. Vatavarrehaa'),
(2004, 'GDh. Gehevelagalaa'),
(2005, 'GDh. Veraaviligilillaa'),
(2006, 'Gn. Fuvahmulah'),
(2007, 'S. Meedhoo'),
(2008, 'S. Hithadhoo'),
(2009, 'S. Maradhoo'),
(2010, 'S. Feydhoo'),
(2011, 'S. Maradhoo-Feydhoo'),
(2012, 'S. Hulhudhoo'),
(2013, 'S. Hulhumeedhoo'),
(2014, 'S. Gan'),
(2015, 'S. Bedeyaurah'),
(2016, 'S. Boduhajara'),
(2017, 'S. Bodukalhuhera'),
(2018, 'S. Dheerondi'),
(2019, 'S. Dhigihera'),
(2020, 'S. Gomahera'),
(2021, 'S. Hankede'),
(2022, 'S. Hassanbeaarah'),
(2023, 'S. Herethere'),
(2024, 'S. Hikahera'),
(2025, 'S. Kafathalhaahera'),
(2026, 'S. Kan\'dihera'),
(2027, 'S. Kedavaahera'),
(2028, 'S. Kudamaahera'),
(2029, 'S. Kaohera'),
(2030, 'S. Maahera'),
(2031, 'S. Mulike\'de'),
(2032, 'S. Savaaheli'),
(2033, 'S. Villingili'),
(2034, 'S. Thun\'bafushi');

-- --------------------------------------------------------

--
-- Table structure for table `zakat_rates`
--

CREATE TABLE `zakat_rates` (
  `id` int(11) NOT NULL,
  `rate` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zakat_rates`
--

INSERT INTO `zakat_rates` (`id`, `rate`) VALUES
(1, 'Baasmathee Hadoo 65'),
(2, '95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `islands`
--
ALTER TABLE `islands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakat_rates`
--
ALTER TABLE `zakat_rates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `islands`
--
ALTER TABLE `islands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `zakat_rates`
--
ALTER TABLE `zakat_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;