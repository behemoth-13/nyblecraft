CREATE DATABASE  IF NOT EXISTS `nyblecraft` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nyblecraft`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: nyblecraft
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `t_first_name` varchar(100) NOT NULL,
  `t_last_name` varchar(100) DEFAULT NULL,
  `t_image` blob,
  `t_pdf` blob,
  PRIMARY KEY (`t_first_name`),
  UNIQUE KEY `first_name_UNIQUE` (`t_first_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES ('Aleksej','Alekseev_jpg','GIF89aN\05\0÷\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0 \0\0!\0\0\"\0\0#\0\0$\0\0%\0\0&\0\0\'\0\0(\0\0)\0\0*\0\0+\0\0,\0\0-\0\0.\0\0/\0\00\0\01\0\02\0\03\0\04\0\06\0\07\0\08\0\09\0\0:\0\0;\0\0<\0\0>\0\0?\0\0@\0\0A\0\0B\0\0C\0\0D\0\0E\0\0F\0\0H\0\0I\0\0J\0\0K\0\0L\0\0M\0\0N\0\0O\0\0P\0\0Q\0\0S\0\0T\0\0U\0\0V\0\0W\0\0X\0\0Z\0\0[\0\0\\\0\0]\0\0^\0\0_\0\0`\0\0a\0\0b\0\0c\0\0d\0\0e\0\0f\0\0h\0\0j\0\0l\0\0m\0\0n\0\0o\0\0p\0\0q\0\0s\0\0t\0\0u\0\0v\0\0w\0\0x\0\0y\0\0z\0\0{\0\0|\0\0}\0\0~\0\0\0\0€\0\0‚\0\0ƒ\0\0„\0\0†\0\0‡\0\0ˆ\0\0Š\0\0‹\0\0Œ\0\0\0\0Ž\0\0\0\0\0\0‘\0\0’\0\0“\0\0”\0\0•\0\0–\0\0˜\0\0™\0\0š\0\0›\0\0œ\0\0\0\0Ÿ\0\0¡\0\0¢\0\0£\0\0¤\0\0¦\0\0§\0\0¨\0\0©\0\0ª\0\0«\0\0¬\0\0­\0\0®\0\0¯\0\0°\0\0±\0\0²\0\0³\0\0´\0\0µ\0\0¶\0\0·\0\0¸\0\0¹\0\0º\0\0»\0\0¼\0\0½\0\0¾\0\0¿\0\0À\0\0\Â\0\0\Ã\0\0\Ä\0\0\Å\0\0\Æ\0\0\Ç\0\0\È\0\0\É\0\0\Ê\0\0\Ë\0\0\Ì\0\0\Í\0\0\Î\0\0\Ï\0\0\Ð\0\0\Ñ\0\0\Ò\0\0\Ó\0\0\Ô\0\0\Õ\0\0\Ö\0\0\×\0\0\Ø\0\0\Ù\0\0\Ú\0\0\Û\0\0\Ü\0\0\Ý\0\0\Þ\0\0\ß\0\0\à\0\0\á\0\0\â\0\0\ã\0\0\ä\0\0\å\0\0\æ\0\0\ç\0\0\è\0\0\é\0\0\ê\0\0\ë\0\0\ì\0\0\í\0\0\î\0\0\ï\0\0ð\0\0ñ\0\0ò\0\0ó\0\0ô\0\0õ\0\0ö\0\0ø\0\0ù\0\0ú\0\0û\0\0ü\0\0ý\0\0þ\0\0ÿ\0\0\Ì\Ì\Ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!ù\0\0\í\0,\0\0\0\0N\05\0\0þ\0H° Áƒ*\\È°¡Ã‡#JœH±¢Å‹3j\Ü\Èqbƒƒd3\ÆkSœ\Z\r:ª4¨ ‹+q\Þbn«6m\Ú3^ˆt(X©R\Ä#q\âØ±\ÛfX°gÕª=[¶L\Z<5ž\Ø\äÍœ¸`²d¹ÊºU°eK™^\ê¢!jE\n•ª‰«¦5«Û·®jv\ZÍšÓ‚AJ²Ó¬\Â8Æ¶M{Kx«+Ã²x³»­q\ãj\Æ<1ñ›P„\×mm3w%\×mW^²¾D¡ŒðKªeµ¸zÎª*O¾\n’0ò\Üu«\'Hô³i0g·_ú\n<¦\ë&O©ºB\"ªî‚ˆ*\ÛL]\Ök\0ü\0öó#1v6þqM!\çý\Ì^YŸ6U2Ô¨õ\Ì°K5ª2–u\ne¡GP¼©Æ™+ªl\"\Æ%\ËxcL*A¬ƒ,ƒ¹b\Î	8Pq²™®ðòHQ,³\Í3®|Ñ€žL“\Ú%+ü§!A$„$\ìq5	U Q\rfˆh@‚²°%\ËS$œ7\ã@:Á\Ä#\ÕyR…\rdŒ7Z\Ñ\0©tX\"d¸$\0\Ô ‚L\â‰\'~‘™ªLŒ, ¢`&\Ë&1œð\æ˜ACvAÀH-\ÛlE\Ö\n—œ–+¬\0¨Aðgy´\á\Ê4 ©b&\0â¹…†„K°B]>SK¹D‚*þÀ\è©\Ê y¤òŒo®T±B«\è„(@\Éô\Ì&U4¢¼t%—9æ°µU1d  Œ\0%”8\Ëð\ÒF1E0v½U/À\0ZV:¼†žªˆ\Ã\ìtnÕA€\Õ\àJ}©ý¶Yº\è\Õ \Ë6k±÷C\Â°‚(\Ó\\u˜,~¬ B8ª\Ä\Ïe°\É3Ø¶w\ØI\n@\rª\0ŒbVžtûq«EDÁf\å\Ì6\Ët–U%q´‘qL\ã8\Ïx¦byvøAXQ˜\ìWF%ú[b©\ÔR\Í\Î\Ì\Æ\ì\Ö&\'4\0\"³Õ–Jhü€FF«Ä‡+\Û\ä«qVÀ£;Þœ«•+qˆ\ä\Õ\ë¹U’+1¥\ÒþO\rˆroa«U÷6k?h\à\"P\Z˜¶P]Á“žÔ’\ï\ÂKW>H˜„õZ\rB\êJ]\\2§¾œsfD¥ùˆa\ÊRn<¡ÉœV\×ú\àŒ\Ø\é±ƒˆ\"s\îóÆžµ	~˜+‹ $\0U\Øñgž¼fOúù\Î\Þ\í\í=úŸ´\Å \Z›P~‰\0(ÀýJ:ðñ<ñš-½\É\n\r\Ð+?\èðžTòE\æ\0È¯’q°ƒõrD¼®ˆ\"€\0ÿ¢”DþS	¢ >\0.{›E\ÊÁ@Um~ø“YVP…*¯tn¹„\ãú7©ƒ@A\r\å–\æ\n>@ \ZX^	Ò€\ZD\n\r@\ÖCŒŽj tp‡i@r˜#Ø¡Q¢ ™H\"Ñ…$¸¡B\ÊsÅ† RVL`»H\Æ2šñŒhL£\Z\×x€\0\0;',NULL),('Ivan','Ivanov_png','ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\á\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0\0t\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0õ]z\çWƒ\ÅZ7Ø§ƒ\ì\'x¸€\ÈD’­Œ/B_ÂºK‹¸-}\ÄñÂŸÞ‘‚\Ì\×\r\âù<}á¢¬Gô?\ì=Yø¢Ì¾Œ© ý².‡\Ü\Òª:¥€›\Ëp\\\È8úúU¼ñšòNY£\ã5óƒgl\Äï¹¿Æ»}\Ü\ßü<\ãË¸’\Ä\"L\Ãv\Ã\å€ŒŒ\ã\ê(L†\Ëk‡d†x\äe\ä„`N3Œ\Ó\çž+xÌ“H‘ \ê\Îp+Ê´Ç¹\Óu\ï	[5\ážE¶’\'”)Q\"\á¹Ç¡#=Mvþ+‹\Ï\Z\\fS\Z›\è‰ \ã$0#ùQr’»±G\ÃZ­\Õ×Šu\ÛIn\ÖñL9bÁWž•\Ô\ÏyolUgž8\Ëd€\ì@\ê~•\Îh\Ö0\Úx»UxŸq˜«·±Á¬/_˜<}z“Ý¬P.“ PÏ·\'\å8´\' J6g£ ò¥®;\áÎ n<k4ò\å\"R7?PO\\ú\n\è?·´¯28ÿ\0´m·\È\â4_0e˜œ\0=É¦Ir\æ\æKy..$X\áw;±ÀQ\êk?Mñ&¬]Im§j0]M\Zouˆ\ç8\Î~µgTkD\Ó.Zù‘md\Ê\\\îNk\ÌF£\á‹mKI\Õ šy/\ÑeHˆ\ÉL;P¢]ø—G°²{Ë½Bm\Ñ\Ú6’L¸u9¬/ø¢\Ú\Â\r:X5X`ýüSË–#t’H\ë‚s^ðüšö©©½\ÜòKfg’3\íd\rÁE#†=\ÎkK\Çz\r½–†¢%r·\Ð\Ä\Ô·\'q\íJ\àwöw1\ÞYÁsŠñ\Ë\Zº°\èAŠ‡J²Ž\ÃL·¶„ˆƒúQ@7Œ\î _ˆž¦A.$;	\ç•`?3\ÓÖ­|W¹‚\ß\ÂP‰¦H\Ë\ÞE·q\ë\×5\Ø\Ýiö×\Ïs\Êü\Ä\0~€\Ó\î­!½ƒÉFz€\Ä*\0ñ\ÍVú\Õu?\Z\ætù,­ò3þ\×o^£ó\Û\è\Î[\áXx3!þ\Ï\Êù|“ˆ\ÇLu5\Òÿ\0cXo\ß\ä\Û6g{p¾j{{;{[o³\ÃØ‡ð\äŸ\çB@x\î‰yfú—‚#[¨¤”Y• >H!HÁô>\Ýk¸ø‡7\Ù\ìt©™¶FšŒ;\ä<*\rÃ–=‡š\è—D\Ó\ÕÑ„(\Û\×÷€~™«W6\Ð\Ý\Äb7¡\ê3ŠV\Zvw8_\ß\Ã{\ã_®]’ò¶xÁ\é\í\ïU5ù\ÓOø“swv|¨”ÎŽ\íµe*T\í¹\È\è9\é]ý¾™imrgŠ\"%#n\â\ìxüM>\â\Æ\Ú\é\Õ\æ‹s/FƒúS°Û»0|!$:Ï…\íZrB.…Å³¯\ÊwuVØ€Aïšµo\à¯\n\Ú\\\Åso\á½&)\âq$r\Çg\Z²098 ÷­{khm!Á\Z\Ç\ZôQSS$\å<sö”´°¹ŽUŠ\Ò\Ú\ãÍ»v\'ˆÀ=±\Ï8®\ZóXð•Î¥¡A¤_™î¿´ˆ`NN{W±I\ZÈŒŽ2¤`\ÖHðÖ“¼1µbA\Ï\Í3‘Ÿ¡4š¸\ïÃ‰Re\Õ\Ú6\Ü>\Ý0ÿ\0Çª\ß\Ä$}2\Æ\è[{+µ¹¸v\'+\ZI¹®ž\Þ\Ê\Þ\ÚY$†=¯!Ëœ“ŸÎ¦‘D(\Ã*x4X\n\Úm\Ü7ºmµÍ»nŠX•\Ôû\r-µ´6,0&\È\ÇA’h¦ÿ\Ù',NULL),('Petr','Petrov_gif','ÿ\Øÿ\à\0JFIF\0\0H\0H\0\0ÿ\Û\0C\0	\Z!\Z\"$\"$ÿ\Û\0CÿÀ\0\0N\0œ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\08\0	\0\0\0\0\0\0!1\"AQa2‘q¡±ÁBR#3Sbr\Â\Ñðñÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\00\0	\0\0\0\0\0\0\0!1AQ\"aq±2R‘¡\ÑðÁ$ÿ\Ú\0\0\0?\0\Ñ\Ñ;$ôDD!DDB„DD!e²\Õr¹¼¶\ßCQR[ó\ã$7ñ=\Õx\ç‹¸\Ø/\Ó\ç»+E\Ê\ÃE9S¤\ï\ÔÀ™\è„xò\ïZB¢j)g§vÙ£-?uµô®vQ#o\æ“°LI‘™Nü£žSoEe¥Vˆˆ„-sZµ\î4{?\ÏþÕ¬\È*\Ì?e·j˜\æp¦’!›·²—\ì\ïM\Ñê«ƒ\è*jŸH\îà½kr7:û%jö™+K¹· L\Ø~”\Í\'\Ç\Õs¸„¥\Ãlg*Nšªjy å£…¹j~Î¯º~´–µ•´\Å\Û[<chúç¢³I`ž\ÝTg’x*ZC\\\Æ\ä0ãŸ›\í•UYÿ\09-”Y0\á”U¼Áµ÷¶^·\ÞûûV\Â	$`;º\Ä|’L\âX\Ç9£œ\rÏª—Ž´·t\Ã\È\ÏAú,¨\Z\ÑP\Öl`\Î€\0\ç\ÇT¿\í£\Ð- \áu’\Ã\ß~­\Ê\Í)-\×Hw°\È~%²e‘15\Ê+#žŽ±ôõ0¾)\ãvH\äØ©k\Ú\Ù>%\â\"_ÀoõôS•öH.Vù#«¤mF¼8$z«*Z–`ýo>\\Ó™\î@Ø‹m\ãu¦,ô×=e¸Oyª ®¦Œ5±\çyð01\äV»VÖ¶²v±\ï{[+€sñ“‚y8_[\é¢\ët…\Þ\Ùek™[D\É#\ÜIp½|\×\Í=¨\Ø`\Ó:\î\åe§‘\ÒENc!\Î\êw\Æ×Ÿ\Í\Å3\à\ï{ªc~\ïú[Šµ\á—q¾¿µ¬¢)lŽ\ë¨i©§§i\ï&÷hòúœªašV\Ã‘\Û\rUM5<•36\Å\Ü\ã`·¾\É;2m\î\ïWý\ì¡q\ÌÀ\áÓ\êq\ê\è\'¯\íR\Ûh\è\è[MIO<Œ28\Ø\ZÖ`}ž\ãp1Œ\ÚÖ´\0ÖŽ\0Šõ\Â\æ\Î\èø‚G«¯uQ\Ìó§!\Ñi´?¸\ÈÆ¼\Ï3ý\ÑiZ²\0þ%Ô±€÷.ª«\Ú\à\ï\åzŠpç»”³XB\×xq\0]k\Ìb“Õ¹è¯±Á\Íi\È+­\Ùq^\Û\å\"C<G\â¯8g’9›I1»] ¿#\Èy’\çi|OQDüZ²³W³›\ÌÛ¨\Þü\Å\ïseœˆ‹F\\\â±.\0À=ÿ\0e¥)n¿\Z\É\íyûƒ7\Ùòª&ô\Ú\Ó53\èÛ¸4»xûc÷[Æ”¼QÛ©Etóº\n˜\Î\Ö03ˆÛŽ£\ß)nh£~\"ò÷åµ\à&Š‘H\Ð_R¦õ•®\éo¨ŽJ\ØjÃŸyŽP\ì0\ÏE§µ¯’˜w\ÅÁ\Î\íp<u\ä\åÿ\0ŠR\å©jn—Ø®¦¢y¢€\îs\É.ÿ\0¼(\ë¥X–¶j¨\ãm3%pò´tIø«‰\Ç5\îµ\î\Z¨ö\ÔM»l§ŸŠÈ‚‘ò\í”5Ï£/|x%£Ïƒæ©’‘Ñ´LcŠ:y4\äÉ—ð|ÀV\"/Ò¹²D\àAp=Z¯\Úø\å2\Õ\Ü\ãóU\â\ÙvM\Ù\Ä\Â\ÄÛ¢°øŒ¬\r¨v÷òA\ä0?U²\Ü/£\ÑtUYg~Y‡—	k‹…ª\ÕÔ¶*¶B\Ò\ÞCFOB}Uwøâª«¡Š\á^-ú~Ã¾˜;ŸðFÞ®8\É\é\Æ\ìú)­%Ä’\î=ˆR\Ò\Ó<ƒ\Þ\Ôy“ú]ZÏ«o´”´ÿ\0\Æ\ê;ŠXš\ÈXY@\09Àõ\\\ã´°¾júû›d\ïÅƒ~A\Î\Ö5¹\ã\åYV¹©n”F{m<‘QK+„‘\Å\Îk\ÃA÷Pw¨[Os–\ã\r\Ú8é£)“†¤q«{O\Ê}BÀkœrXžµ†§ômSh\êf“£ˆ\0nsû(Ts˜x*ûˆ‹†!o‡¨WýŸ\Ç¼CN\É69¾ùo\Ï\åuú\rEµƒ\Çù«•š‹,>?\Ír¸n¯hù—²ÝžGÌ³?{6]xy¹\ïe³_/\æ\ï\Ó.u[\ÜyVê«œüò£f”¸õP\å—2b¡\Ã\Ä![•\Ù*˜	#ú‚¥\ÅUL\Ò\ê†ý@¢1¨.÷ªF/\ìÛ‡Ndør:þYMÔº\"-\Ép²¹\É+*’šJº˜iak]$\Ïll8“\É\è±`sZNãŒ­»²»Å¦Í®­—+µC!£‚B\é^\è] \Ès”©ˆ\Ò\Ë%[‹ZHÓ‘\è\rLq\Ó4\ë\Ï\Å]\×}”\êN\Íh©LT·Z\'46®8žGÃ“\äA x%^”¼\Ñ\éª;\í\Ú\Ã=-cC\Ød\îù\à;Ãž£8\Ê\ïžÔ»4¼\Ö|\Æ\í\ß\ÚÝ‡¼IG9kœ\ÓÀÛ³§š—Ÿµ\Þ\Ë&¤u·Ø¤§s;³\íó–\ã \Ç\ÑVI„\É-\ÉaB™0¾&v24³¥\ÂùQ¹\Í|{µ…¸\rc\n \\*`a™À;¨\Ê\ìºò\Å\Øý\âw\Õi\ís%œ’O\ÃIl¨š,ú7\ÂG¶O\Ñq§PHdñ3-’\Ò9¼•¸UCEûkS\Äô\Ò<\Ë–¿ŠµCTÁplµ/\Ûyy\è8V/W˜+\ÞY\r\r­•\í±\æ¦VeUS\ìÎ£`f\é$k¤\Úq¸7 ürsô\nö\n\×tŒ´ÿ\0­¿ò¥Å‡\Ímc?b–\ë±fTiœ[\Íoº\n\ê \Ò1³;$ø‡\Ä\Ìõ‚O\ç…b\á –¶W·¦\ì}¸Zµ¦†ñI&\ã· €_\Üú)º&\Ê\Ø?·þð½\î<ç«‰ýÕž	C$O{šEÁ\Ü¡-W9Žm\ÚA\Õ_TL\Íñ–Ž¾J´L\ÓBÉ£toX¨´ur\ÑT2¢g°‚ˆ7\n3½sI‚\Ì}V]U0—\ÄÓµÿ\0ªŽ‘’Fpö²,[¨Ã¤9…\Ù\ÉÜ¾½ð]{\Â\\g‡q;K5»\Ì;ƒ\Î\ÝGˆúØª\ÜòUªPN\0\ÉT\Â\çD\æl\Ñs²,\ÛlG™\\=š©¦£sˆt µ¾žeg€\0\0\0ž¸g\0”J*\ê`>w¿Sþ_\n\í7´\nWÒ¿	Ãž]£\Ü6\å™<\í =DE .{DDB„DD!DDB„B#!_B½ƒp­÷ÿ\0„Ï²©Œc>Vµ¿€U\"ø²š\Í`\È)“bU“³$³9\Í\è\\Hûˆˆ¾\Ê\"\"¿ÿ\Ù',NULL);
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-29 14:57:56
