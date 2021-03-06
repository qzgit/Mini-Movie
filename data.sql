-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-02-12 08:49:09
-- 服务器版本： 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 表的结构 `collect_comment`
--

CREATE TABLE `collect_comment` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `movie_comment`
--

CREATE TABLE `movie_comment` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useravatar` varchar(255) NOT NULL,
  `content` varchar(511) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 转存表中的数据 `moive_comment`
--

INSERT INTO `movie_comment` (`id`, `user`, `username`, `useravatar`, `content`, `movie_id`, `type`, `create_time`) VALUES
(4, 'oCU7b4jFHON3zzrIFDpAxtywcJ90', '云居雁', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwFq0Ehl9lNCLz9TdqBjm8pNrhVOHXwnkibrGXlsmnNj9cJAypkiannSPibqspgoVa8so8PSs8ib1Sgw/132', 'https://movie-1256948132-1256948132.cos.ap-beijing.myqcloud.com/recorder/1532790463878-Sntj5UwgT.mp3', 11, 'audio', '2018-07-28 23:07:45'),
(5, 'oCU7b4qcucEk2O2uv0t0Xo10w_3I', 'jie', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJbOnwTr6w3L1tEKRhHQ5XJBBCQSHQQSay5jg4mibyeiakSpvqSjexVBrzXeNBk9icRtDQBoiaPaqUUFg/132', '非常好看的一部电影，童年喜欢看的', 13, 'text', '2018-07-29 10:29:41'),
(7, 'oCU7b4jFHON3zzrIFDpAxtywcJ90', '云居雁', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwFq0Ehl9lNCLz9TdqBjm8pNrhVOHXwnkibrGXlsmnNj9cJAypkiannSPibqspgoVa8so8PSs8ib1Sgw/132', 'https://movie-1256948132-1256948132.cos.ap-beijing.myqcloud.com/recorder/1532832084050-7x7GTqyXp.mp3', 1, 'audio', '2018-07-29 10:41:27'),
(8, 'oCU7b4qcucEk2O2uv0t0Xo10w_3I', 'jie', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJbOnwTr6w3L1tEKRhHQ5XJBBCQSHQQSay5jg4mibyeiakSpvqSjexVBrzXeNBk9icRtDQBoiaPaqUUFg/132', 'https://movie-1256948132-1256948132.cos.ap-beijing.myqcloud.com/recorder/1532832124783-tW-vf-Iwc.mp3', 6, 'audio', '2018-07-29 10:42:05'),
(9, 'oCU7b4jFHON3zzrIFDpAxtywcJ90', '云居雁', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwFq0Ehl9lNCLz9TdqBjm8pNrhVOHXwnkibrGXlsmnNj9cJAypkiannSPibqspgoVa8so8PSs8ib1Sgw/132', 'https://movie-1256948132-1256948132.cos.ap-beijing.myqcloud.com/recorder/1532832719767-hJ7ayyHcQ.mp3', 4, 'audio', '2018-07-29 10:52:01'),
(10, 'oCU7b4sTKBAIYdQWn7H0obmmXPbU', '苏樱?', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmwxw0wpXQiagqUrr3BOlB4Aj276SszMHZiaicPXoWKc3XhVj5lFcY4dQfxMTrrQ2NiaEThRBDib7UyJw/132', '对梅姨强大的气场印象深刻。', 14, 'text', '2018-07-30 22:01:43'),
(11, 'oCU7b4s5YbpJ6RMI5LtvSMWgWMGQ', '烟花易冷', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK1ZRDv3Rm21ibIxJhSmPngs5UELuh5oyuyfCG3pTx0hrscGZywaYydjp3QAeh4fq8JbFn3oFLg4MQ/132', '电影非常好看', 4, 'text', '2018-07-30 22:13:51'),
(12, 'oCU7b4j1gK7mgCMTV5vBvo3GzVtM', '王小康', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL32d8aT1rsfReCibyicfYmlB6TgKAe8Hbwsza5kQ6CjYG8y4Zc9OWkPibxib4wKzrlPTvSkd6DEVX5XQ/132', '也可以说是一部拍给成人的动画电影。远离城市的尘嚣，一段奇幻的冒险。追寻善良美好的主题永远是宫崎骏电影最为动人之处。一部动画史上的经典之作，谢谢宫老！', 12, 'text', '2018-07-30 22:43:15'),
(13, 'oCU7b4gsWQNDeqlyTGANlVnXEaJQ', '马盗城攻', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhuxcfuuheC9OfibiaAbzyRX5IpZianqltwmOYnqNOXkjK3hDEBYkjMAJFrowDppj87eVnuwoHEnHng/132', '这部电影呦，还是挺好看的呦，有人说没有打胎呦，没有三角恋呦，可最后为什么没在一起呢？我也不知道呦！！！大概这就是现实吧?', 4, 'text', '2018-07-31 22:36:13');



-- --------------------------------------------------------

CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` TEXT CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET @IMAGE_BASE_URL = "https://movie-1256948132.cos.ap-beijing.myqcloud.com/";
-- FOR EXAMPLE: https://*****.ap-shanghai.myqcloud.com/
-- 注意！需要将资源添加到存储桶后，修改这里的 url，并在存储桶中添加 video 文件夹，并将视频导入到该文件夹中

INSERT INTO `movies` (`id`, `image`, `thumbnail`, `video`, `title`, `score`, `year`, `category`, `description`) VALUES
(1, CONCAT(@IMAGE_BASE_URL, 'p1874816818.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1693796023.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/theperks.mp4'), '壁花少年', '7.9', '2012', '青春 / 成长 / 美国 / 爱情', '查理（罗根·勒曼 Logan Lerman 饰）是个害羞和孤独的高中新生，拥有超越年龄的敏感和泪腺，总是默默观察身边的家人和朋友，是个典型的「壁花少年」。他的青春期充满各种挫折，先后经历了阿姨为给他买生日礼物去世、最好朋友自杀、受同侪排挤欺负、单恋没有回应等各种事情。然而查理还不是最惨的，因为和他一样被生活逼入墙角罚站的人实在太多。他幸运的拥有一个开明的老师和两个高年级的好友：叛逆娇俏的少女珊（艾玛·沃森 Emma Watson 饰）和自信满满的同志男生帕特里克（埃兹拉·米勒 Ezra Miller 饰），他们让查理明白了有时候不能永远旁观，必须要参与进来才能拥有属于自己的精彩。 '),
(2, CONCAT(@IMAGE_BASE_URL, 'p1024585648.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1024585455.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/theloveofsiam.mp4'), '暹罗之恋', '8.3', '2007', '剧情 / 爱情 / 同性', 'Mew（Witwisit Hirunwongkul饰）和Tong（Mario Maurer饰）是一对小伙伴，一场悲剧却使二人不得不分开：Tong的姐姐阿红在一次野外旅行中不幸失踪，Tong的父母迅速决定离开这个伤心地。 几年后，长大了的两人在曼谷广场意外重逢，此时，Mew是August乐团的创作加主唱，相依为命的嬷嬷去世后，他独自一人寂寞地生活。Tong的家庭也难现欢乐，爸爸因为过度思念死去的女儿，整日借酒浇愁。重逢后，时间就像是逆流回童年，两人重拾以往的亲密无间，还是无话不谈的朋友。 渐渐的，一种新的情愫开始在两人心中滋生，派对上，Mew唱出他写的第一首情歌——为Tong而写的情歌，二人情不自禁亲吻了，不料这一幕却被Tong的妈妈尽收眼底……Tong和Mew的交往开始受到阻挠，二人陷入痛苦之中，亦因此得以重新审视这份感情。'),
(3, CONCAT(@IMAGE_BASE_URL, 'p2123400019.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1622866349.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/speechless.mp4'), '非诚勿语', '7.7', '2012', '同性 / 喜剧 / 爱情', '罗马青年马蒂亚斯（Josafat Vagni 饰）在大学毕业后和西班牙男友爱德华（Jose Dammert 饰）终于修得正果，准备前往马德里工作和生活。然而完美至上的爱德华坚信他们理应得到所有家庭成员的祝福，热心的开始计划跟马蒂亚斯的家人会面。这一下反而让马蒂亚斯慌了神——因为他并没有像他说的那样跟家里公开性取向！他需要决定：是跟家人义无反顾，还是对男友坦白从宽？也许凭借朋友们的帮忙，存在一个左右不为难的选择？意大利最新浪漫喜剧，以真心话大冒险的出柜历程讲述同志家庭的爱与戏剧性。'),
(4, CONCAT(@IMAGE_BASE_URL, 'p975141602.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2204835586.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/thoseyear.mp4'), '那些年，我们一起追的女孩', '8.1', '2011', '剧情 / 爱情 / 喜剧', '柯景腾（柯震东 饰）和他的一群好友，爱耍帅却老是情场失意的老曹（敖犬 饰），停止不了勃起所以叫勃起的勃起（鄢胜宇 饰），想用搞笑致胜却总是失败的该边（蔡昌 宪 饰），胖界的夺爱高手阿和（赦绍文 饰），从国中到高中，一直是不离不弃的死党。他们都对班花沈佳宜（陈妍希 饰）有着一种纠结的感情。一方面，他们瞧不起这种只会用功读书的女生，另一方面他们又为她的美好气质倾倒。因为学习成绩较差，柯景腾被老师安排坐在沈佳宜前面。因为他的一次英雄救美，她开始用强制的方式帮他补习功课。此事令其他兄弟羡慕嫉妒恨，但是大家都未说破。毕业后，柯景腾和沈佳宜在各自大学保持恋人般的联系。直到他举办自由格斗赛，事情才出现了变化…… 这一连串下，原本按兵不动的好友也都纷纷加入女神争夺战！'),
(5, CONCAT(@IMAGE_BASE_URL, 'p956201863.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2443657563.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/farewell.mp4'), '霸王别姬', '9.5', '1993', '文艺 / 经典 / 爱情 / 同性', '段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。 段小楼在认为该成家立业之时迎娶了名妓菊仙（巩俐），致使程蝶衣认定菊仙是可耻的第三者，使段小楼做了叛徒，自此，三人围绕一出《霸王别姬》生出的爱恨情仇战开始随着时代风云的变迁不断升级，终酿成悲剧。'),
(6, CONCAT(@IMAGE_BASE_URL, 'p453716919.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2049064198.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/memoirsofgeisha.mp4'), '艺伎回忆录', '7.2', '2005', '剧情 / 爱情', '故事以第一人称展开，时代背景从1929年开始延续到二战结束，女主人公回忆了自己从小拼命挣扎、历尽荣辱的人生经历。 有着一双蓝灰色眼睛的小百合（章子怡饰）出生于贫穷小渔村，被卖到京都一家知名的艺妓馆。小百合在那里学习了舞蹈、茶艺等，渐渐成为当地头牌艺妓，同时也不断受到京都第一红妓初桃（巩俐饰）的压迫与挑战。一个偶然的机会，全日本最美丽、知名的艺妓真美羽（杨紫琼饰）要认小百合为“妹妹”，此举从此改变了小百合的一生......'),
(7, CONCAT(@IMAGE_BASE_URL, 'p1507809038.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2453199661.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/crouchingtiger.mp4'), '卧虎藏龙', '8.0', '2000', '剧情 / 爱情 / 武侠 / 古装 / 动作 ', '一代大侠李慕白（周润发饰）有退出江湖之意，托付红颜知己俞秀莲（杨紫琼饰）将青冥剑转交给贝勒爷（郎雄饰）收藏，不料当夜遭玉娇龙（章子怡）窃取。俞秀莲暗中查访也大约知道是玉府小姐玉蛟龙所为，她想办法迫使玉蛟龙归还宝剑，免伤和气。但李慕白发现了害死师傅的碧眼狐狸（郑佩佩饰）的踪迹，她隐匿于玉府并收玉蛟龙为弟子。而玉蛟龙欲以青冥剑来斩断阻碍罗小虎（张震饰）的枷锁，他们私定终身。关系变得错综复杂，俞秀莲和李慕白爱惜玉蛟龙人才难得，苦心引导，但玉蛟龙却使性任气不听劝阻......'),
(8, CONCAT(@IMAGE_BASE_URL, 'p456676352.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1436358321.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/deliveryservice.mp4'), '魔女宅急便', '8.5', '1989', ' 动画 / 奇幻 / 冒险', '琪琪今年13岁了，按照魔法界的规矩，魔法少女年满13岁就要出外进行为期一年的修行。所以琪琪带着宠物黑猫吉吉踏上了修行之旅。然而，修行之旅开始得并不顺利，当琪琪来到海边一座大城市时，人们并没有欢迎她的到来，人人都不搭理她。幸亏琪琪有一颗善良的心，当她拾到了一件别人的失物时，热心的琪琪找到了失主。她的善良赢得了面包店老板娘的好感，琪琪就在面包店开始了她用飞行魔法为客人服务的快递业务。琪琪很快适应了新环境，一次，一个热衷于飞机制造的男孩邀请琪琪去参加飞行俱乐部的聚会，途中琪琪因为帮一位老大娘送东西而被雨淋了。从此，琪琪突然发现自己的魔法正在一天天变弱。'),
(9, CONCAT(@IMAGE_BASE_URL, 'p542283571.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1570179660.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/alittlething.mp4'), '初恋这件小事', '8.3', '2010', '剧情 / 喜剧 / 爱情', '初中生小水相貌平平，家境一般，所以在学校里并不受重视。但是她心地善良，又有一群死党，日子过得倒也开心。某天，她遇见了帅气的学长阿亮（马里奥·毛瑞尔 Mario Maurer 饰），春心萌动，无 法遏制。她喜欢看他踢足球，看他拍照，如痴如狂。上英语课时，她不停地给死党传纸条 表达对阿亮的爱慕。然而，英语老师则指出她除了英语一无是处。回到家，叔叔从美国捎来了父亲的消息，说如果她能考全校第一，就可以去美国。于是，她按下决心要努力加油。某天，小水等人在买饮料时，碰到篮球队员蛮横插队。阿亮挺身而出，为她们教训了对方，并挨了校长的责骂。小水也第一次听说，阿亮的父亲因为射失点球而退役的事情，理解了他心中的隐痛。由于舞蹈队是给美女准备的，所以小水等一干姐妹准备在话剧社大展身手，没想到学长也来到这个社团。两人还扮演王子公主，他们的恋情会由此展开么？……'),
(10, CONCAT(@IMAGE_BASE_URL, 'p513535588.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1174967042.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/brokeback.mp4'), '断背山', '8.7', '2005', '剧情 / 爱情 / 同性', '美国怀俄明州的西部，沉默寡言的农夫恩尼斯（希斯•莱杰饰）和热情开朗的牛仔杰克（杰克•吉伦希尔饰)一道被派到山上牧羊，那里人迹罕至，他们只有与羊群为伴，生活单调无味。一个天寒地冻的夜晚，在酒精与荷尔蒙的作用下，他们做了“不该做的事情”，也就此他们在断背山上度过了人生中最美好的时光。 季节性放牧结束，迫于世俗压力，杰克和恩尼斯不舍地与对方分离并各自结婚生子。恩尼斯迎娶了自幼相识的阿尔玛，并有了两个可爱的女儿；杰克到了德州，在妻子露琳家族的扶植下事业顺利，还有了个儿子。虽然彼此真心相应，他们只能每年定期约会。一边知情的阿尔玛痛苦无比，而他们又无法满足一年只有几天的团聚。这时意外发生......'),
(11, CONCAT(@IMAGE_BASE_URL, 'p766075680.jpg'), CONCAT(@IMAGE_BASE_URL, 'p765965815.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/colorful.mp4'), '意外的幸运签', '8.2', '2010', '剧情 / 动画 / 奇幻', '“我”（富泽风斗 配音）冥冥中来至天国，却被那个有些聒噪的使者普拉普拉拦住去路。在他所说，上帝给了十恶不赦的我一次重生的机会，以此体味和感受生命真正的价值。“我”不由分说被重新投回人间，灵魂进入了一个初三学生小林真的体内。小林真三日前见到了心仪的女孩桑园寻香（南明奈 配音）与中年大叔出入爱情旅馆，又见到母亲（麻生久美子 配音）不贞的举止，加上生活中的一切都让人绝望，于是他选择服毒自杀。苏醒后的“我”以小林的身份生活着，各有心计的家人，有些烦人的女同学唱子（宫崎葵 配音），以及投来异样目光的同学，都让“我”感到烦躁，而在这一过程中“我”似乎触摸到了生存的意义......'),
(12, CONCAT(@IMAGE_BASE_URL, 'p1606727862.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2178186198.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/spiritedaway.mp4'), '千与千寻', '9.3', '2010', '剧情 / 动画 / 奇幻', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一分工作才能不被魔法变成别的东西。千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。 一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。 为了救小白，千寻又踏上了她的冒险之旅。'),
(13, CONCAT(@IMAGE_BASE_URL, 'p537668599.jpg'), CONCAT(@IMAGE_BASE_URL, 'p537667467.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/totoro.mp4'), '龙猫', '9.1', '1988', '动画 / 家庭 / 奇幻', '小月的母亲生病住院了，父亲带着她与四岁的妹妹小梅到乡间的居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。 妹妹小梅常常挂念生病中的母亲，嚷着要姐姐带着她去看母亲，但小月拒绝了。小梅竟然自己前往，不料途中迷路了，小月只好寻找她的龙猫及小精灵朋友们帮助。'),
(14, CONCAT(@IMAGE_BASE_URL, 'p735379215.jpg'), CONCAT(@IMAGE_BASE_URL, 'p1514110789.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/theevil.mp4'), '穿普拉达的女王', '7.9', '2006', '剧情 / 爱情', '初涉社会的安德丽娅•桑切丝（安妮•海瑟薇饰）来到了著名时尚杂志《RUNWAY》面试，以聪明得到了主编米兰达•普雷斯丽（梅利尔•斯特里普）的特许，让她担任自己的第二助理。开始的时候安德丽娅感到十分委屈，就算自己多努力工作也无法得到赞赏，经一位老前辈的指点便重新改造自己。工作越来越顺，甚至取代了第一助理在米兰达心中的地位，决定带着这个聪明的女孩前往法国。可安德丽的改变让她失去了男友及朋友的爱，令她非常矛盾。 到达法国后，她得知了米兰达的地位不保了，没想到米兰达竟然牺牲自己多年的好搭档保住了自己的地位，此事令安德丽娅深感失望，有了抽身离去的想法，到底安德丽娅会何去何从？'),
(15, CONCAT(@IMAGE_BASE_URL, 'p456703618.jpg'), CONCAT(@IMAGE_BASE_URL, 'p2280814760.jpg'), CONCAT(@IMAGE_BASE_URL, 'video/godfather.mp4'), '东京教父', '8.8', '2003', '剧情 / 喜剧 / 动画', '圣诞夜，退役自行车选手Gin，性倒错者花，离家出走的少女美由纪三人在东京的雪夜中无所事事。这是，他们发现垃圾堆中有一位哭泣的弃婴。孩子的襁褓中仅有一个酒吧的名片与照片。婴儿的父母身份成了谜团。 花想收留孩子，并将孩子取名清子。但另外2人表示反对。于是三人开始了寻找清子 的父母的旅程。圣诞夜幸福的气氛，伴随的却是怀中清子的哭泣。无家可归的三个人，开始为同样无家可归的清子找寻属于她的家。这一队流浪者，在一夜经历了诸多奇妙的事件。他们能找到清子的父母吗？');

-- --------------------------------------------------------

--
-- Indexes for table `movie_comment`
--
ALTER TABLE `movie_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies` (`movie_id`);

--
-- 限制表 `movie_comment`，将两个表关联起来
--
ALTER TABLE `movie_comment`
  ADD CONSTRAINT `movie_comment_link` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);


--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `movie_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Indexes for table `collect_comment`
--
ALTER TABLE `collect_comment`
  ADD PRIMARY KEY (`id`);

--
-- 限制表 `collect_comment`，将两个表关联起来
--
ALTER TABLE `collect_comment`
  ADD CONSTRAINT `collect_comment_link` FOREIGN KEY (`comment_id`) REFERENCES `movie_comment` (`id`);


--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `collect_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
