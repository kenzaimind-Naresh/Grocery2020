CREATE DATABASE  IF NOT EXISTS `skeletondemotest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `skeletondemotest`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: skeletondemotest
-- ------------------------------------------------------
-- Server version	5.5.60-log

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
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `image` longblob,
  `last_name` varchar(50) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `qrcode` longblob,
  `shop_id` varchar(255) NOT NULL,
  `shop_name` varchar(50) NOT NULL,
  `street` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type1` varchar(255) DEFAULT NULL,
  `zip_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_22hw5xdmw9ehbp92kr3h9pbh` (`email`),
  UNIQUE KEY `UK_dq7ss0mmlwhjw2a028hpo545c` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1001,0,'Hyderabad','Hyderabad','manjari@gmail.com','Max','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\"1!%)+...383-7(-.+\n\n\n\r\Z-%+-------------------------------+-----------.-----ÿÀ\0\0·\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0J\0\0\0\0\0!1AQ\"2aq‘#BR¡±\ÑSb’Á\áð$3r4Cs‚¢²³\Â\Ãc“ñDtƒ\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0(\0\0\0\0\0\0\0!1A\"a2Q#ðRqÿ\Ú\0\0\0?\0“faBF\î¼k=µ\Ö\Ý\Úma\Ù+p\ëd¤j£À|÷Qona°¨&e*\ÈBEÏ–‚¼·l\ãœ\Ä=\Î,uS9’Tn7\Ô\ï÷V8ò<Šê‹”x–¶ñÏ­´¬ei\nê‚’µ‘¸¨ª\0ˆ\Â\ìwI\ç>“þ@Š[„\Ú\åôer\nÅ¬\"cCw\n²Zp¢\ã\Âbko\à±Ø¤uš j¦Œ/¿›Yƒ\à©\ì§- \Ó\É%’:\É ¥i<ƒ\ÒI\ï`#Pu¨qû9·aFR\àê¸ƒ•\Äöo†GeM”\â©f3\0šX÷™0òy\Ä}ki¼\Ôh_\Å2;JœSnÍ©*Aôj$R1.H½«J¨œl$\ÖùÁ¤\ÖE€\ãqÅ²\nzÀÚ­x-¤Œ©rA‘i¹¾\ìºMR6\É„\ï\î§\\•	\\¡Z\'§\á\ÚZ\ÓT,©Ú«TÀòü¿V®°\ê&\ê™\í\Ò{ªc‹ {QP=ŒRˆ$LZŸ3úµi}\"[®\Ç\Í;\"\æ=\ç\Ïò¦Xe´žózA* BG\rñN°\Ï þ&\'\Ã}tU#\ì\Ìs$‰‹‹\ï¤8œx\Z^œ\í]®YmK\æT¸	\0“&4$qª¦)\ÆÌ \å\'uª¢\Ó%ª:w³\Ù\ï ]*Vª1\ÃJ\ß:?:\çI\ßCþ\çÎ\Åar‰¢\Ý\\ji^?¥¼\Ô6Z&Á\ày\Ñ+P	:	¹\ï\à)³8P\0	(O\0 Oq1z¢\í\Å/  e\Ýk‰\Ö)¶Á\Â:\n–¼\Æ\àf0\ëTJj*\ÙQƒ“¤]ö{kJº\Ðx,Xßˆ«.\0ªr«‡\â?*«l­¦ó`gNtqþ#‡¾­\ØbÛ€-µtH\ÓP;R\n\Ò#%¢\'	E\ì`¤$~?…w‡L\Ïo\rün;ª6\ÌvƒR\à\'4ÿ\0æ¨LR¢G÷R\×\×E:\ä’Oë²€Å¬q¦‰b\ìkÖª\Ö\Ô\ÄM§õ\Äw¦›S*³ŒuD\Ú\'A:É´G•L™I\ÞAµ\Ò.0…*\ÃR£h½ Õ«a4>—¥+‡Œ¸\n\ÔU•\\\"`\rÀ\nA±›Kx7IZ‘œ¥ ¦Ä¸&\nGUî«’\0	&\0u1¼ö\ÒCdykU!MeP—œ\Æ-d©jRÔ­I$˜\'yá­¼\è\Ì0JRV\é\î{G\êÔ·BFc\ä\Z‰+=ƒJ\ÍRE½vV\ÕH}\n\Ñ![¯h6¯M\ÙXŽq)XmÄ…uJ@P\â\r\Åx\î\Í@\nJ\Ö	Nk¬hc¶º½Ó’X\ä=‚eH?º¥\r\ã \0y§)ñ®|ùœ#iY®8)=›w²\'*‡D\ÛÞª…ÿ\0_¯Ñ‹f`Šj\á™+ ¸\áoˆ\Ò\Õ\Ïÿ\0¡\×&‹\áºEcJKŒ\ÙÍ©Y\ã*ý¤…x”\ë\ãNvš•\è7I\ì<~†¶lIlw\Ë2µf$ž’ò•k`uJ­¼×µ\î?*®\íetZ‹>jü©i¬q¦¬‡6™oV\Ügˆò?*[Uµ©\"OdL^ª¤Tj‘q¨¸£\ÚA\î2ð\Â\Ò:\ÜnHø\rþ4S»Q¦u‰7T{“óT½±\Êe„³$t—¹‹„ w\ßÂ¦\äó%\Ä%FJ”.¥kbD¨\ï53Ÿ\Ø\áN‹niU!0Ÿ-\ï=´\Ëe´¤¸­{Î´»ÀDG\nur\ã·\ã\\¾û›\Ù\×ì¨¡›—MÄˆ‚;*‹\Ë]–¾h\\m£œ\ëVAz%A&úw\Å^Ðªƒ‡BÒ¤© ¤Øƒ]Xòq9gŽ\ÏwecHþ‡?ý\Ãã’­4†—\Ýen€s(-&zD‹˜›F\êU¶0óˆ\"FUe<R¤\à{)w®›q\Ý\Ù]h\çú-˜—0\Ç\Ök\ï\'\çKq\r2}vþú~u^q\"tBˆ\Ùx­Y”‘•&\Ú\\ü«º\Û.*ô‚“JŒ˜)\Ô\rA\í§{?\r˜Š…¤‚x\nw³\Ð$W\åÉq8FP=[ChÁ™)õU\Þ8ö\Ó@:i¢ˆ¦ih\ÅTmm/°]£5Á¤\ã}1Ðóòø\ÒL~\\+¥\ÄºÉ¸™L}\ê­bR\ÔT¢J\É5\èbNJ\ÙÇ’“¤]±-\0­\Æ\Þ\ïÊ‘\ã\Z|wZ§Ù®¨±\È\n·–\Úù\Ô‘TôJb™¾¤Ò¦Ú—S¦³÷o1\ß\Û\Z\äM\è=Œ\Ög	\0L‹\ïQ’	›h<\ë&h‹\Ö¢Œ#A\îmkRœÊ”\æ\çIAV‰¤™\ì«^œ¶—PR\ÓI\nh*=nS¾˜‘T\":\Êî²€>Ey\Ü\Ö\ÝE\ì\æ …1 ük¼&\Î:«\Ë\çL\Ò\Íd\Ë8#0¼I @\ß\ÛVo\ä\ï”Cˆ(tú¡+}UøL\Ã;©6+\r\"xR\Ðo\ê\\ST\ÇgÑ(¶¼§Àñ\Åæƒˆ öü«\Ï?“¿ô–†\Ã\éšˆŸYÔž)\Zq\Âjû€t‹k‰Ãƒ\â\Í9^\Å\Ø\Ü\0R\Ú\í¼düª§‰Ã”ª\"F°AøW¢c‰\Þ.<7wUl\Ù\Åv§Œ\'´¦\ï½j¯\n=‰v¦\n¿\Îh(ý§£_ÀÎªŠ\ì‡âŒ¥\ÙÁÙ®b›\0W°ÙŒrjó³ð\ÓI@\Ö\ÒO³›Ÿ²\n½\Ññ\"­\îZ¼\ßY“\ä¢wúLzrf\0FJe…T*8šZ\êD1¾\ÅX¥]€\×4;:e\Ð\á+©“B \æ@X£šíŠ³ŽZ+<±\Øüû\'(ôˆ’˜$\Z¢Gó¼±\Â&\áR\'\Ö?:öŸ)Áö\×Ùˆü+\Íyx\ÊQŠVQ’•žó ŸŸ\Z\è\Å+Te–±eJ	H2O´m\ÛV|3A $h)VÁÃŽ¹\Ô\È€Sd¨s…>\ÊG¼þUŽiÛ£LP¥cf0’)¶¬·¨vbe4\Ç\Öe@\Ð\\\Öe1®\r¾¬\êLŸ#F°¾„ýªn£\Â\0¢0döjŒ™^\å›g;j\ÜRGˆ3øŠ®U×•m\Î}•$ù\ÛñªX\èaw\"ù´\Æ:\æ9Ä‹	7J·\ê	í§žr‚Rm~Ìlð\áõk\×Î”\âT½À\Z&(c\Þfò+	™m\Úeef4t$ÿ\0ty\Õc³\0˜û÷\éW\ÎH1•EP!¶Œa\0\Ø\\ù\ï¬M&\Å*W:\áS\n\np„)J\Ñ\ÅoX2;)‰&\ÃÃ”0€¦\ÛmD)-u3¨•(§Œ’LÑ¦¨DU•\Õn€>nJ/Rs4Z›¹¬‹ SÖc0ú¨MY]@\"¡a€SZˆvf\Ñ[.%Ä’\nH6±¶ðx\ß+W»ro”-cJ‚€z$`°5RF\â£P|	ðÍ¥-™‰I\ßøÚ‹	Šq¢\ÒÔ˜9†S([0\àwvŠ%5B\èúi\í\ÓKR·n\'@*Œ\Ü:\Ë\ÎL©.†\×k\Üs\È$\ïŽq\Ñýð7UShr\×‹i©#œ\ný\â fD-²’7Ì‚4\ÐUŸ“…(i\Æ\îCƒ2\É=,\ÉRT¥“\Ä$+v\à-YB_È®Õ <yžoø?\ä]\njm 2¨\ê¢ƒŽR\Å({G\È\×J\ÒD=°•W4$}³\ï®Uüg\ßJ\ÇE·‘\Øy.+øR™?\Ó\Ùj\nÝ§m¨žEl¢\Û#7Y]#\Ù [¾\0¤;Q\à1+B\r‡ºos\ç^Vh¹·3\Ó\Ã.)Dlµ‚@\Z\Ó2\Ð[`o©®b\Ê_Hž²`wÕ¿f’¦‰\Þ)c‡\Ëþ9|Nö+ö)?®\Úc´Ÿ-\á^q:¡µ¨w„’*—\Ç)·ò¾®[U_²¿Ã™pÿ\0€\×F\áœù\ë´QyŠ*Ê®\"ÿ\0)þTp\Å8†×¹MÇŠTOÁB§\ä-(lMµø\Ñ?\Ê>5§H¦\nx\ÄðÂ´Ç©´NUpLCÉ„’\Ø<\n¾&³ù8…)\'\Èþtûb\à’\Þ)õ²Ê»\Í\ÏÆ\àS8»%¥°?YÚ—&i\Å\Å$Ë¦\Ï%-\Ì_p\í«®i°YW=õ\\\äÛ²¼¦\à£¹I´‡:”ƒa­	ª²\\wC­’\ä¡jûG\ÝDlŽ¢»Th|ý”l5®K½¼Û¤\ÅZðD—a[Q®q‡¾$w§¤>Bz\Ù\Øä¸·²\è“¸À¼vkTd\×o§v™Éž4\Ðv\Òjp‚ðC²>\áª\Êq&!vŠ³ã¿¢§û_öUmÐ˜ƒU>\Ì\áÐ½´s˜†\Ä&I\Ü\0\é^\Ûãˆ¯K\Ùbp¯\Ï<\\PAAV@¤ˆ¥6²•P¶s‹r:£-\Ï»Á>úô¼sXD\ÜX*\çs) ­%qº\àD‰\íY®\Í<›	HJD\0\0€Š\è\Ö\ëF¨G3YY5”\àÎ¦õ\Âp\æi³øh& \æ\ÏdTP\ìWˆgA\Äû¨„`¨µ1%6ÒŒ\0\n8…‹†(H:ƒ¥*\ÄòQ%RÛ…€\î2\rX”\årB\Ð\ÙÙ‰`@’Nª;þBšl‰*R	€¦\ÝL™¥‰$\é­f-B‡e)T¤\ÇIM¤i©X\ã}¸¨e¢]·‹n˜\ë›\Ú\nžV£³…mÍŒ\ÎRRò\æ4(\î4\Ól¹™@L©.\âð\ÓÎš¯!@!W€[\É k5¤Èˆ#c´\Êù$qn\Ú\Ç\Z\ï³\ZKˆP{6U¤\å-À0¡i\ÍFc\ÐRyµ\ê=M.7\ÔKI\Í/Q›Tõ‡­¦•„¯öl¨¿l\í¤C)^¨&k\ÎvF\0£T^.gJŠ¥$J³\ÝG¶¯#…¶\ë+±Tˆ\ÐÁUD‡2\å_@NSp	\Íú\Å/\ãk\èÝ¿\äO\ì\Ö\ÞL)¥\r\ÊGù…_6\nz\é¯>\Ú\ÎI\Ä|k\Ð6ô†±‡\å|‹\ã\"—†\\\ãñ);»2Æ®ûI*s\0úS\Ö,:~CU›\r\í7\ìnU¸\ÅÒ•kÆ¯[AH)\ÜDy\Ö\éq\É_F\åŽþ\Ï2\ä~[ƒ¬›þ»\Å\'\åc+^!@(eH	\Zð“§i÷Q˜LR°\ë!&\âDH±‚@ð¡žtT£rd›\êMn•l\ÆS´v8m*$õ`˜1\"\Ö5½ƒ‡\'µZ9¢;g85\Þ€\ÆB¡ ˜õš/“\0­@\Îbn\Ïü\×4ÓŒeýòuBJN?\ße2–Yu\Õn^\0MUvK«v\nº\Ê7ó«*\ßË€q#UB{\å@t\Ð[\êJLˆNŸ\ÂS‡Áó¹²\Ë\Êg\Þ¶\Ó#9	$n%G\Î\0ñ5>\ÇBÓW7yU–l3Lq\"¡å¡‘‡O\Ú&7ÀA\ZxŠ?B0\Ç1\0Z\æ\ÃP5«Qù¤g\'ðl]È¦ýO\Ù\ËîŠ©m|)–rA3!`‘p&j\Û\É5\ÙKrw¾{R®U\âÑ±­0Q\ãR´À­ý;\Ó2õ’\Ûks\èh\É]ÿ\0j«)iË©fjÛŽW\ì­ÿ\0iÿ\0ª\î5výwÖ³\ì\Â=¶>Œ}µX\êE\ÂE¼úôœ2A\ÅG§¦R›þ\åY\Ì\È>²\Æ_	ªo\'0Þ™†\ä ¨›6Q&,D\Ï«¦ÀÄ¥\Ðã­¼\ãˆ[†\ÄôJP tdODKcS\\š\ê´j„qY[­P‘bš‰H¦#Æ \æ\æ…\Ð28\Z“R<\ÔPŽ½˜#¢Dö\"qSaz‰bu5™dx‡\Å\ÉÒ¸¢‚Äª™ˆ„ø¤{É – µ»hŽ\å«ru±=ÀöVÖ¢©“\ß\ÚMÿ\0:É½\Ò4J•±²OCû˜{\ÑØ£\0´óŠ\\ù!\"8a\î±ü)òðÈ‰\æ\Ò{’\rtµhÁh\æH\n2lR/¡•$\ë\ãR8•I\Ó|kS1‡dÀ\æQ3½¿£Îº\Ãlö²þ\é\æ^£\íª\ÝÕ‹F©‘`Šƒ“bB#q\éR¾\n‰ºUc¯Y1ð®Á´}l\Çz¸\Ì\î­b0\ì\Ç\î\Ò	SiLÁZdL\ØkS¢¹1-G0ž\"¯[žx	\Þj›¶3˜›wSm˜@u\'Œ1\\\Üwgg/ˆÏ•Ëˆ\Ì%Pl\'p¦Ü”\Æ\0)&\Û@^(	WRð¥h‹Dò9øTqø\×D\Ö\ã#žRˆƒi€q6\Ò#þóŸ•‹W£t\rAk\Þ\ât¦\ÛOg bTo\Þ9\× )DÀ½…ô¥,aÂ¬\ÅdgPŒ\ëõUi¾\ê\Ô\ç\ne\08\Ð\â´x\×õ¾·\Äd\Å\Ç|\\W\á›	Z!Ký\Þ~º¬B”$\ìCm\0\0\ã§kþ\Ñ\éõl5\ìp[Í L\0¥{ Q\ÛxÉ¹½%\È\Ø!jÏ˜p²,d˜\Zo¦\Â)\Å\çž\Ã\Ü(\ÉiE6›“\Zò·yöS®VóGj•\í©v¾\ÒÉ„\Ê,·J}Ä«ÀOŒRö\\úN$¸:¢Ÿ\àNÿ\0\'Æ˜\í|3a%\å\æ!¬½A\nRS…\à\Ñ\ÊM´”cQd›!\ÖZ\ê°œO…,\å)Í€\ÅJb k\Î\"ô\ÉÁ7\çŸ²9¸‚S¥\'\åSd\àq0ê¬”\ÏR\ãœEŒ\'J\ë\Ç£“$ù\ÊÀöÒ\Ñ­ÿ\0ˆUs²·ƒ¼‹q\ç\Ü\rX¶Â¿doû_ø“I¹>œ\ÏM’“¦\âz#N\Ì\ÔO±C¢\ë°	/º§\Ú[hŒ\êEV…[È¸°7Ò®{ +™o;\Õe¸P©¼ºª{µýE\ëÁ>…%\Ä\r\Ð	YfÑº®¨8wi\áItS\ì\î¹5ºÑ¦#š\Ê\ÃY@`:Te@\nN\Æ\ÖRP\nˆW±¬sl·\'º\ÖP\Í	-3I\ã”^\Ðf,“¥©V!MŠ\åw!ñ4©Ý´U¢c¼\Í9M	AŒÔ´¤^Â—b1EÃ‘6NªQ·FE\Ïgf§J\æ™Y3Àõ·Z=_Ö´nãƒ¢2¢fo\ÄO\Ú>\á}&±roH\Ñ$¶\ÈgD¦Àiãª•\Éü\ê\ê Qa‚L\n\áQ…v)Júb[A·K?\Ã5gNR”óš˜U÷Ûºû\Â[£U‡oÊ­­\âºI<\Ú\à}Oÿ\0U\Òs¶,Â°³˜•¤eR\ÓÔž¢ˆ˜\Í\ÙRœ#©9R\âH)*•6fJº*Ö»aÂ”/3kµT\Ç8»L+‰wH¬Ó™r\ÏG\\\Ê:f\âõ‰qbW°¯\0¥gAT¡¬¹T°&sLÊ½Õ¥\ì÷I\0¸‹(*Íªe&F«\â)º•µ\ämj%HŽˆGU$‘ìš”89ÄŒ«\n#!\',üÁ¨p)H«ý	Å§2Š7\Ø%@\êF¤4š›Ê’¦\â.€D4$\âdS°r \çB\ÐdÄ ž²­Õ‘©\ÉO¥nR²Y	È««2ŒDN„n¡bMl¯y Kkˆ·D%$¸Z’A\ZD\ÔûPù\n¶k‚4“\Øj|s‰S…\Ên!\nC‰*™²š/\'œE\Ô\0!Dsk˜›¯a«x\ÓTJ\Ì\ÓlG‰unº§r¦\Î*$ŸU[\ã¸PIaiôd$\çz‘e(ˆˆ<\r8\Ã„+0RNu’\ë+£»|Š\Ú\Ûóf’r.3gY8Gy	qXu„•\Âr¶„¶D™\é,€t\â­;(Í›ƒqh$fU„\é\'¶ˆ\Æ\0¦	“™MeÊ•BV	Ýº\r3Á))q¼¥ (A	;\r\'I\Û*98Å¢­µV!2e$ÂŠº†ª7\èjÕ°9’u-$\0N[GHƒ@xp¤\ãf¶\çMj\ÈC®Y@§2T©;\ç\ãN\Ð\ëi}­`tB³¨\Æh‰ˆ¤ñÜ­•\î%\n]¼Ò™)t!°\ÛhKd\ÞV¼¡G ªU>;\n\ã8\ÚR§rjá•iU†^\Ï}µ1‰V\á™T\Ö\\¦Iä“§\0/LFtCÄ‚zB@‘}{\ëc°F*Ñ‰¥]!ªLÝ”«•«Rp8ˆlAJ…u¢p¶\áÞšD¾\á¬²\n¬{EÊ¬B~ƒ‰\âTJ[\é’y\ÔOÀ¼‹ù@\ìaþ\Ôÿ\0¤š“I!·¨˜\0_6D\ÈuT@®¹Gý¡\Zº\ÒF¶µK³[Jp\ì¡@Âˆ0˜I.7M-Q“³Leÿ\0flò„G\Ñ\Û(NgV¯HÒ´IBM\î	g¤»?ˆ$\á\ÊKm6\Ú^\Íe¦$€¡‘&þN\éª\æº5É¦¦µYY@::]‚\nR¡â“¯e´·•‡Ã“\×è¾dø\n±6P¥¶\Êpf\Ò8y\Òß¡ªI)Tn‘\Z\å\ã\Ñ\ÔÔ«³Heµ%Qk¶×¾¹\Ã\àu·\Ê|\Å\é¦\ÃHLª\ÙÎ€ÕƒÁQJT€%H\ÞmqW\ZMÙ¤p\ír*˜,-/\Ò&f\âLý\ÝõcÂ¸\ÚÖ”‚ ˜ðµ*\Î3ó\n„$F³[qŽo*’o6™‚8øo\ï½Ø©qZF3Æ”\ï´Zpø|0SŠ@…4\'x*±\Ê	ZÊ’@OH\Ø&{úkij…­i§(\Ë \Ç\éó¨q\ÑvZHJ\ÔBJ†—\Ô¸N\áÆº!\×z:S\èªÿ\0¶\Âÿ\0¢\íZ\Ô\âŸ/Îªø€ ð›\'\é8|óa—„+v¼i£\ÊFGeHý\Ò\âí›˜MõuG›%N†8³9$]L\Æ\ï\ëSNð\é\é£^°\á5[e(\ç\å)\é}\\@J¸\Z\Þ\Îi0\ÏVnlŽu3I¡!\ÎÏ»r7•{\ÍJG¦0Ÿó¹ICI)”„ê¨„£\ÚU3cÜ¬\äA<\á•2\0\Ó\Ã\çQZ.\É1©<Ó’O]˜û\é6¢\ÃglÉŒ\ÂGú\rt)K	 \ÎR`”\Ì\Ç\×A”\ç²c\Ñ¿:„Ç…5Ø¼\ì\ày•\ë\Ör\àI\Ô\è7\Ô\ÊO\í\rÿ\0ñ\Çú‹¨Ñ…BT\ÒBD¹  „\Új,^ª\Ë\Ò\ç[Fh‚RyÃ–G«m*‰;\Úóôwµ²Ø‹\ÔN‡}\Ûgn\ÂDj8R¤×£tH$kÒ¶8\ë§\Å$§9Rp¦\n\ìR\Ú\È3<@ \r\ì¡\èTw\çs·}K¤·ý²Oy\ç¼T8*S\Í$f	QL€§.NY˜T	ši·”T\\(6e\Ì\\ÅŽš\ÑAa\ÛY\Ãôw¯¢Ø‹DzDit‡ª€Ž4¯˜J\Ð\âW˜¤<±k\Ñ\r\âH\Ñ9!J\è–òÊ•ii\n;\çRiˆ\çd¼C+3¢\Ü\×Ayò©\é\çÚ¾¬I\íéª‡\Â0”¸P’ Žl.3(ô”\ã‰&MôH­8\Ø/4 ¥IK©\Ô\èžlÞº¼\è\'ÚŽ\Ò\æ?x\Äx¾\Ý*\å\Âÿ\0c|[Dª\Ý´Ä¥)Î¨SÍ¥W@\â\Æ\ïi	>§•Äœ& g&“»\ë[a\Û@!V\Ù#\èÍ‚5qV}\Z-\ßNv2?iÃ²\n\ÄPÀ±J\0]\î\Í\äin\ÖhŒ3+\0—¦†Iƒ\å\\\áö£JXYS\Øw€„­:7‘)‰\Ôð5žK\äkŽ«gªlD¤—œ	y%nK»Šm-d\ÓJó-qè²ƒx„\â\Êñ(\Ó\Å\"Ÿ\à9~\Â\ì\ãn6w\Û:\Ãu.H\Ùúy¥kk\ëe¶´h<&\ØaÞ£©\'„Áò4e3«³™¬¬¬¦\Îÿ\0H[ˆ$ÄJF\×$\ÅF\ÚR¥RcEX‚Œp¢\nÍ§ *JTR¡Cœ)*+B\\‘’G\ç­a(;ú;p¦¥l!/’B¯\"5\ïó§©ÇŸF¢áµx\Üj¦\ÛiYŠ”`˜$o\ÄÚ˜\à•Î¥J\\:¡9eW¹Š\Ö3‹L\éµ-ñn¾´’RB­\ÞN²\"‡\Ù\à©JJ¤„ú³r¬8i\\\ãq\Ëm 7\ÒB£¤x§uõ\àk€ðSª*°\éÑ¬\ÖI¹.È¯#\Üc\Ü\Ú\ÊJŠJU€H›Hñ¡ð{05•ì¹²€TgÁ\æ\"‰Ä©|\Ì) ¢	MµÒ–9‡qÔœ¦\É\ÊÜFð\rl\ç\ë£9½it+ÛŠ\Ìó“q›Cq1\Û\Þi.)	I\ê§v\á¼MXñ˜4-\Å,¸&ù€\Ö47)\Ä`‚œG*H6¤Ÿ[vp7nØµ!Vº>U;HAõ÷Aü(²•\í£\ï§\çD\á¶B\í\ÓdOP4\ã{T.“\Êq9\ÃME€Ì$	\è\Ä\\À½	†\Ù\á\ÂB•¸&*³\àÓˆB\nö-ýsV \0™ƒ\0yq½³ö[­«2]h\ím “ú¸\ßG(Ž¤%4•”s#8 „¦d‰\Ým/<+m\àTUÍ†ŽpHË”H\Ô{©÷\Ð—ôˆ$ó\íf·no\ëi\\³€\Åó™Û™&C\ÍL™\ÞWñ£”B˜‰¼”¬©BÊ„ôD\æ­·V›\Ã)vHqD\\€THñ­¿\Zv\Þ‚¥\æH0zAÖŠ¤â¼˜™ž:Ð¸T\âNE¢#0RI¾·\'»Ê©S!\Ú¶\Ø\"B—6Z´\×q­—q\è?i\Ú9½˜\ê=[A Øˆ\Ük¯ ¹\ìŸu:`\\h\ëã‡¤xGuë¤¹¯\04\ã yM0û*òü«¡³žö÷M:‚\'¡£\ï	$ŸJ\è’u&úš\í8\ÕO\Ò\ÄúW/ß€‰þl\ê\×÷\ruü\Ø÷Õ¯\î*\nÁÑŒp’´\â&2’Q°$Æ¼I>5Ê¶‹²\Ò‘0sFhŸ8U\ßó[ˆ\Ìyµ‰\"II‡\n…{-\ßa^G\åKeh\í{A\Õ@8‡l ¡qe	\0\éÀŸ:!A\ÇP¦\Ü}\Õ%P	EÀ!B\á3 †\ÏrGA^F›ap‹\Ü7ûIA¨&E4¿bc\ÅaBð¨ÿ\0Œ\nW‰Ù€^*Ç†d§œ\Ñ%\Â`m–/\ÕÂ›\ÝCBL¬§g\\@ù\Ñ²\êHƒ˜}°\á*¸ð4\é¦DÚy @¶ú‡Z›[B\"\Õ6þþ\ÕOÆ»o\Zók<\Û\ê@öTNœ%r‘\àiûL]*N\êž&\Ë\ÔK\Îÿ\0\Ø;{¤“Û’}\àÞ²¥þko\ØU”qa\î\ÇüQ\ç\Û\Â ¤‹\Ú\Þ\ã\ßs\æk‡J¥)P$’$G™\ZŠ¼Cª„&b;$Z·ŒY\ê¸Ê¯\äO…c’¥¢\à\îg-#3…$dlªn\nŽ$x\ÍGŠÇ¤)\Æ\×\Ò	œªH	Ž\â<\ë–q!-(\"RH\ã .8\ÐHbÄ•A6$\ßqŠQ^«qt¶X6xId\Ò ”ÌžŽšMµ®°s!j\Z™\"hf)\0f\Êg6h\é¼\ÔØ±Ì¶s‚@’\"úÞ·r¨\ëFyg­hsŽ\ÚÍ†\Ô\ÒU×¸´ž3Uõm	Pôm$Z•;¶\Ù:…Wkaý•yU<‘ªh˜\æH\'j\ã\ãªQ1º\ÖÒ—:’M­ªÁ3\nò­9\áø*—4\Îgm\Ø8Aí©šI®\Æ\Ó\Ãð5±µp\ãqò¥hT\Æ\áú:ö\n‹\n\Ù\'wÊ q€=j\Äm¬>\é÷\Ð\rœ\Æ\Ã_\ÂkId\æˆ÷\n€mf8Ÿ}v¨\ÄÌŸ}‚™\Ú2Dqµ…F\Ó$\Ím;E¡>ú\í;O7‘M4&™\Ðk´[°VœIH›Em;Kw\Ô\îcp\Å1˜û\éòB\âÀ\ÃÇ…v5Ê±{U\ÈÅ±\íû\éØ¨”bo™ùÔƒ®\'\Ìü\êŠc\Û÷Ô‰\Ä1õŸ\n,)’}1g\ÖW\ÞWÎ³ùÁÑ£‹û\ëù\×(ulV3\íŠv*%N\Ô{\ëW÷\Õó¢\Û\ÚN}c’uôŠaK\á­\Î:\ï3{–) £h>†‚‚ó§4¯¯¦\ç7Ž\Â\'¶ŠÁ\í\æ\Ö`’•{*·¿CHÕŽG6:\Ó\î£IBº\ÊLQb¢\ìi{¨”8HýMUpó}W\Ä{*3V,(€’’{\r1%*\ÖjB\åv\âò\Ø\Ð\Í “4€%Z·]¥›V©ó6€J\Ê\äe&l?D\Å\Ù\ÌþR\nB\Ò@0GoÎ…RA‘!jÓ·eœ)”ÂŒ\Ñ\ê\Î\î\Ç9q£µFº&Ú›-BH\'2wñ\Ö\äo3j\r„*ô©‹¤¤Á#*´\é¼XÕh\Z(õ¢ó\Òi!iC¹’&Q\é\0¶k\Ø\Æó­Rüœ™)´ÿ\0`x:\àJE¯©<o»ó¦ø—š\"—m\r¡a\0‰\ÐvP\Ø,9Y™²¶n\ÈÉ‘Ï°\æökþ¬Q-r{½±D\á0\Ùw\Ó\ÓSFv+›\Ã}X­/“Xo«\å	­\Å:+nrc4E…\Øs…*GhpŠ\ÎhL\Åb!\É|)þ®¥O$°¿WORw¥0+’Xobµÿ\0¤0\Þ\ÍXA©)\ÐY[<\Ã{&¸s‘8x°3V¤Ô4\n\Ê[|baIPøT\ë\ä3;Š½\Õn[v¶µ\"\Ê#Jt+*g­qó\n¹\Ð\Õ;\r\\‚/ ž\í\Õ:RMQ•\È\Ü(\ë!c\ßð5Â¹#ƒ\ÜU>5zNž±Ÿp¢‡H\ÝOAló¬7#0\êõ\ÌÑ©þO\Ø>ºªÙŒC[\Åû5¡ð¸g5\n vÞ![+KþNÜµR¬O!›²MzB\à\Öº{«)“E \ä\Ï><ˆÙ©Z\äm5syÒ‘dŸ*·ó`oÖŸ.L¯\è1\Ï\Z{É†œ#™‚\ÊÎ*)h\à“ú\ãP¼«‚UŸ\Ç{G\n1\á\\7µ\ZýÆ«\î8¡;\æ¤*IH½û(cN\Ök\Ú÷\ZÊ¬¾\Ú\Ê(vU\Ûa\Ô-°U#¤M¼õ©pø… GD’™\æo••\Í(«Z\î\Î\ä\íY1÷y»Z$\ïŠí§‰9\Î\èueeTR\â\Ø[\ád\ÌBˆl-75 9W¤\n\Ê\Êg4»,8U\ÈI­VP\"T\Ö\ÕYY@ Š\émƒ[¬¦-³–ó5¼Æ²²¶*v\ë+(*S]Š\Ê\Ê`w4¹\å«4ñ­\ÖP†!®˜Uee1Rüv>ù¯ÀVVS@uƒ\Ãsrw\ÓEeeF+-Z¬ g\0\î¨Á ú£Ê²²€{g\"¥˜™ü\ïYYLc²Ž\ãn6—p¬¬¦\'º²²²˜ÿ\Ù','max','9493050493','self','image2.jpg','Qr Code.png','123456','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\á\0\0\0\á\0\0\0	m\"H\0\0\0oPLTEÿÿÿ\0\0\0|||\à\à\à\Í\Í\Í^^^SSSrrrùùù\Ú\Ú\Ú\ç\ç\ç@@@GGG***óóó999222\í\í\íMMM   \Ó\Ó\ÓiiicccYYY000&&&\É\ÉÉCCC¼¼¼–––¡¡¡¬¬¬¹¹¹	½A\0\06IDATxœ\íi{\â8„N „û\n@®\Ùÿÿw\ÇV9\ëŠ{Z²!¦\ê›\ä–Ü¯Íƒ¤\Ö\á›I’$I’$I:3}t\é~Ê¿Qþ4ñþ‡P\éf\ît»öºf\ÊBù%\å	QŽÓ©:aòö­j\Õ¡E(B—pLù\çû_ú¾¾\Ñ\Z­©\Ø~\à\îó\æ\ëv(Ç„q\î\Ü\Þ\Æ®Ï ;\"L\Õ*”·ž„\ïqª=o#klK8¡“\íE\È¡§‰\ã\Ñ\é	\ß\ïkõˆ–œ	…\ëÜ—9\Ô\×\ÓÝ…ò”¿±<~4üiNxß©×ƒAˆ\0÷efF=–,S\íOˆ~)ŽD(BŠð\è„\ÜZ\\\á&´k \á~]\Ñ\Ãó\ÅBøµ‚#Ä“N½.‡ß¡E(BŸD/WKx÷X±\ì\ë#d‰P„\"\á\ßHø˜H\Èó‡V¹ó!>\Ô1j&ÌŠ\ËZø}µ\ØkoS\Ñ#\â¥kª\ßò\ØpÇ´÷	=Y1o\ÄMy¬o\ÅM­ú}S\íŠðò\æ-D(\ÂxS\íÿ\ÂØµƒpf\Ôs>„Ë»(m°Z„‡§<ü–\åz\ív=ôeJò\âúð™7…ý’=\Þ\ÄùsO˜*ž?Ä¯sLi‚ˆg¹\ÙÃ†îœ\ç-,B¼S&<ÿum\"¡ceZ#^O Ä¨	\í\à<¤1¼A\ëb²‡\r\Ýù\á\"k&x8,’û\ÞS®—÷\"c¿,Ò£.;Lˆún(*›ðX\âvÑ‹\ê{+m\ÏO\"„Dx¾!t¹„h\Ù\ÑòOˆø†ò¿Ï³·e\ïO\ZsCs(\ì_@\Ò-\Òÿµ{¹JóaVMC 4\î7bûq½]9ž…›\Ð\ëµñ˜ý)\ä[\ãCOV\Ìb{\Ï\Î*O\ÈQù\Øum\"¡Eø)o|È„\áz\ëK\r\rœÛ±§¦}\è1,|\ÂÅ°VD~Ax/kö\n O\Â\âòrf‘nŠ\ëó\ê\r§}òö/…ýöµÞ½\×m¨or\âðÿuO„V4\ßZ_Ê²zk¡÷nüw\ç‰	­h~\ì>`D7DK B_\"„.—cˆB\ZcˆW²\ãùA\ë¿$ü„NOøk4®\Óü\×\"×º\Òo\Õ4´}_Td¶K\áú\í,\Ô\Ç1\ï!•Á2Ü‡\ëc{[V¯\r¿N¬‘Â³¿#»Ô¦–gH9ªÏ„\í!F¾ ä–¿)¡7o‰0^\"\áõZ\ëISO\Ü\ÙV=.\Çlw|\Â\×iÞ¾LAÄ„³Q®\É{°\ëQ>¿\ËÍ¨V˜P\í„ô*\Ü÷Ëƒb\Âqµžy:!¯‚fB\ïò‰ò›î’µüjZN„\"¡Ï[‹„	š\î\Ç7\ÜJ«&N-\Õô\0}™ù,\×\ê=\ä/)Ÿç€³`·\íÔ‹ý	õô÷¡\ì”ÍªŠ\'´´!\Ïð.cw\É\Î;õ\âûp¾•ö\êiO˜ºX„\"\á\ßLˆþ\Ã!\ä–\Çqr¼\ÔÚ\ÏqQˆ\ã§\Ç\'\íLö´ÿÖŠW—t\'yþ¼\Ü7X\ÈÆ…}ÿ£H—\ã\"û\Ó„\Óz­Ÿ\ç•Œ\Ó7F=>aI\Ê÷zmhù\\o\È;Á|g”‹}G\çOhýzE(B^3!¯ŸaB\Ìb4BkŸ¡·¯1\Ð\"¦>Or\íxŒ¿\äÊ–…Áÿò ,.Êˆñ0\ØÏ‹ú\Ìw‰r±„IE»TM\È\Ï>5ª\ï\í\n²Mh\ä‹P„\"\á9²\ç/Åºš²óNˆ$œvM\r;ÿ\ëK‡\Ý\ê·:oh™¨}	\É\árU\Ø}vOýüzy<©E8õ”»\×Cú–ê¥»<t‚\ÝC\Å\îfòW6a\ì™\nÖª/ˆ{m!¯§A\ÏÁ¹½\Ù;³ò?•\Z§iK;K\"B~J„\çKˆx\é\Þ6É…–œ×—}™=„ÿ\êrvO\êô„¬ûN¿NˆÇ»\"ý9\Ö/\Ò\è\àI \\x\"\Ùs(žd\Ö\ßƒª½)Ë®	a½x}©µg†\×LqT¿\ÎU\ç¸jO{®¾E(Bú\â™P&\ä¯2!Ï„b\Ì\Âg~°\ÅúSO\Î\Ò!\Ï\Â\Ú3c\Õ\ïü8\á—X¸Y\"a{‰ðò	±2\È\"\äu¦\ßO\Øö\Ì=GŒY!{\ë\Ï÷zg´‹=ŽõG„\é¡%²Ç±þœ!\Ï÷}a\ÛË™\Ïó¶¼4mñ}2\è\Ø\ßtN\å¡}E\È\áõn«õ\rxW«-¡¿ž¦\í­MWT/bžöd\Ü\'ó\ßeÛ¯’YŠ=e÷ô« E(B^/¡÷µÜ‹\'­E¹>4uñ\ç9\"Œ?¬›™ò\î;kjY\é\Ø\'p¼¯tz_a¼ou‰P„\"a<!\ÇÚ®‡DX¯\Êó‡—\ßZ\rx\ÍS\Èo\Üâ§“˜ðË»óVA‹P„\"a{Bþ\Ò*ì¾Ÿ05šh|\ßbÁ«.Cý\å÷(Ö”þ>BO!‹\ê+w’„\'U¶‹¨\Çò\ÜKÿ!ŸÁg­‚f\ÏE(BŠP„Ñ„\å¹2\Ö(\êø„©bBôÊ¬³†X|\Ò¤\êô„Ö® K±ÑŒX‰0]\"ô$\ÂT‰0]—C(I’$I’$IÒ‰ô/²F\Õ\ê\Â)ül\0\0\0\0IEND®B`‚','105','Max Market','Begumpet','image/jpeg','image/png','500002');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-04 17:08:18
