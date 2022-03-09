/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : pinwo

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 09/03/2022 13:57:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for companymess
-- ----------------------------
DROP TABLE IF EXISTS `companymess`;
CREATE TABLE `companymess`  (
  `company_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `companyname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `logoimg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司LOGO',
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司网址',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `select_industry` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业领域',
  `select_scale` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司规模',
  `s_radio` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发展阶段',
  `select_invest` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择发展阶段',
  `stageorg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投资机构',
  `temptation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司介绍',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companymess
-- ----------------------------
INSERT INTO `companymess` VALUES (1, '立方网', 'ff80808140ac5ed90140b953972e0215.png', 'http://L99.com', '武汉', '移动互联网,游戏', '50-150人', 'A轮', 'A轮,A轮,', '腾讯(A轮),IDG(A轮),', '这就是立方网！', '立方网');
INSERT INTO `companymess` VALUES (2, '老杨扫一扫', 'wx3.png', 'http://Laoyangsys.com', '重庆', '移动互联网', '少于15人', '未融资', ',', ',', '老杨扫一扫', '老杨');
INSERT INTO `companymess` VALUES (3, '联想集团', 'a254b11ecead45bda166afa8aaa9c8bc.jpg', 'https://www.lenovo.com.cn/', '北京', '移动互联网,O2O', '2000人以上', '上市公司', '上市公司,,', '联想集团,,', '联想是一家成立于中国、业务遍及160个市场的全球化科技公司。全球约有5.4万名员工，年营业额超过3000亿人民币。联想聚焦全球化发展，树立了行业领先的多元企业文化和运营模式典范，服务全球超过10亿用户。作为值得信赖的全球科技企业领导者，联想助力客户，把握明日科技，变革今日世界。\r\n\r\n\r\n联想依托人工智能、数据、计算力和算法，为用户与全行业提供整合了应用、服务和最佳体验的智能终端及强大的云基础设施与行业智能解决方案。我们的智能变革战略愿景，必将让人们获得更好的智能化体验和更高效的连接，打破地理与文化的藩篱，共享智能生活。', '联想集团');
INSERT INTO `companymess` VALUES (4, '梦网网络科技', 'c0052c69ef4546c3b7d08366d0744974.jpg', 'http://mengwang.com', '沈阳', '游戏', '15-50人', '未融资', ',', ',', '梦网网络科技等你来', 'yangcheng');
INSERT INTO `companymess` VALUES (5, 'administrator', '5caf8f9631114bf990f87bb11360653e.png', 'http://administrator.com', '天津', '电子商务', '50-150人', '未融资', ',', ',', 'administrator', 'administrator');
INSERT INTO `companymess` VALUES (6, '印鸽科技', 'yinge.jpg', 'http://yingekeji.com', '杭州', '移动互联网,招聘', '150-500人', '上市公司', '上市公司,,', ',,', '印鸽科技成立于2018年，坐落于杭州西湖区。\r\n我们的愿景是做全球最好的柔性供应链公司，图案只要有一个人喜欢，就能被生产\r\n\r\n我们干了什么：\r\n我们是一群互联网传统互联网人，前几年一直从事图像的AI开发和应用，一次偶然的机遇看到机械臂的完成度很高，感觉可以通过两者的结合做一些不一样的事情。几个人商量后，做了柔造—个性化定制供应链。用AI图像引擎帮助用户生成自己喜欢的图像并且定制到实体商品上。这个想法得到市场的验证，而且需求比预估大，公司创业半年公司盈利，这两年增长速度也很快。公司成长近200人的团队，业务从用户个性化定制拓展到婚庆用户定制、礼品定制、中小批量生产等。旗下覆盖印鸽、喜印、印途等多家子公司。', '印鸽科技');
INSERT INTO `companymess` VALUES (7, '西安道通科技有限公司', 'daotong.png', 'http://www.auteltech.cn', '西安', '移动互联网,电子商务', '2000人以上', '上市公司', ',', ',,,,,', '深圳市道通科技股份有限公司（以下简称道通科技）成立于2004年，是一家致力于汽车电子研发、生产和销售的国家高新技术企业，是全球领先的汽车诊断方案提供商和设备供应商。西安道通科技有限公司隶属于深圳市道通科技股份有限公司。\r\n“产品至上”、“将产品做到极致”是道通科技一以贯之的产品理念。高度智能与专业的产品使道通科技在国际市场上同Bosch、Snap-on、Spx等行业巨头同台竞技，并取得骄人成绩。MaxiDas 系列产品上市半年即迅速占据欧美汽车诊断产品市场主导地位；MaxiSys系列产品为行业高端产品树立了新的标杆，上市之后即获得国内外客户的一致认可和高度赞扬，并荣获国际行业重要奖项2014年VISION“全球***新产品”奖。\r\n道通科技一直坚持“价值创新、孜孜以求”的研发战略。道通科技持续投入大量研发经费，汇聚大批行业研发精英，建立了实力强大的研发团队。持续创新产生丰硕成果，创业10多年来，道通科技已申请200多件专利，其中发明专利120多件，商标已在50多个国家或地区获得注册，是行业内为数极少具有自主知识产权的公司之一。\r\n伴随着全球汽车保有量不断增长和道通科技产品线不断丰富，道通科技一直保持较快的发展速度，特别是近年来，公司保持了年平均增长30%以上的发展速度。', '西安道通科技有限公司');
INSERT INTO `companymess` VALUES (8, '河南点盛信息科技有限公司', 'hndiansheng.png', 'http://diansheng.com', '郑州', '生活服务,媒体', '150-500人', '未融资', ',', ',', '河南点盛信息科技有限公司是一家主营电子产品、通讯增值类业务、儿童益智类等产品的综合性企业，一直以提供', '河南点盛信息科技有限公司');
INSERT INTO `companymess` VALUES (9, '宝岛阿里山（厦门）酒业股份有限公司', 'bdals.jpg', 'http://bdals.9998.tv', '厦门', '电子商务,生活服务', '150-500人', '未融资', ',', ',', '宝岛阿里山（厦门）酒业股份有限公司，是由历经多年、具成功品牌管理运营经验的多家公司联合打造。旗下拥有多个子公司，公司位于风光秀丽的滨海城市厦门，与宝岛台湾一水相隔，举目相望。公司集研发、生产、销售于一体，并坚持以“自主品牌”为核心、以“宝岛阿里山”品牌为导向、以行业标杆为目标，通过不断追求完美、不断创新来“满足市场需求”；同时公司坚持以品质求市场，以服务求发展、以创新求领先的经营理念，从而与客户、伙伴、股东实现人文价值、实现双赢价值。\r\n宝岛阿里山（厦门）酒业股份有限公司是目前厦门地区高粱酒行业品牌最多、最具有竞争力的企业，公司为台湾高粱酒行业引入了全新的经营理念和思路，并积极推动台湾高粱酒市场走向繁荣！公司以超前的战略眼光认识到日益崛起的重要性，目前公司已经成功运作了“宝岛阿里山”高粱酒 、 “宝岛阿里山”精酿小啤酒、“澎湖湾”高粱酒、“名岛”台湾高粱酒、“厦顺”台湾高粱酒、“88”台湾高粱酒、“隔海相望”台湾高粱酒“感舍”酱酒“象征”酱酒“鼓浪屿”矿泉水、“科比布来恩特”葡萄酒、“杜兰特”葡萄酒、“宝岛阿里山”茶\\酒\\文创连锁加盟系统等诸多品牌，并使这些品牌保持健康快速成长。', '宝岛阿里山');
INSERT INTO `companymess` VALUES (10, '北京雨花石云计算科技股份有限公司', 'yuhuashiyjs.jpg', 'http://550713028.dayinmao.com/', '上海', '移动互联网,电子商务', '150-500人', '上市公司', ',', ',,,,,', '雨花石云计算是中国领先的SaaS、PaaS服务企业，专注于企业CRM领域，是Salesforce在大中华地区本土最大的合作伙伴，公司专注于房地产、快消品、生命科学、专业服务等行业，服务万科、碧桂园、蒙牛、泸州老窖等大型客户。公司荣登美国《APAC CIO Outlook》杂志评选的2017年度“TOP25大数据公司”榜单。公司于2016年登陆新三板，股票代码837605。公司在北京、上海、深圳、广州、台北、香港设有办公室。', '雨花石云计算');
INSERT INTO `companymess` VALUES (11, '江西先飞科技发展有限公司', 'xianfei.jpg', 'http://xianfeikeji.com', '南昌', '移动互联网,视频多媒体', '少于15人', '未融资', ',', ',,,', '江西先飞科技发展有限公司', '先飞科技');
INSERT INTO `companymess` VALUES (12, '优酷视频传媒科技有限公司', '2bba2b71d0b0443eaea1774f7ee17c9f.png', 'http://youku.com', '西安', '移动互联网,视频多媒体', '2000人以上', '未融资', ',', ',,,', '大优酷事业群是阿里巴巴文化娱乐集团两大核心用户平台引擎之一，由优酷（www.youku.com）、阿里家庭娱乐和来疯组成，于2016年10月31日宣布组建，是中国富有影响力的数字娱乐平台。\r\n\r\n目前，优酷、土豆两大视频平台覆盖5.8亿多屏终端、日播放量11.8亿。来疯是全民综娱直播平台，以互动综艺直播为特色领先于行业。阿里家庭娱乐是聚焦于大屏端和客厅场景的业务平台，旗下终端累计覆盖近3000万户中国家庭。\r\n\r\n大优酷事业群现支持PC、电视、移动三大终端，兼具版权、合制、自制、自频道、直播、VR等多种内容形态。业务覆盖会员、游戏、支付、智能硬件和艺人经纪，从内容生产、宣发、营销、衍生商业到粉丝经济，贯通文化娱乐全链路。\r\n\r\n以“这世界很酷”为品牌主张，优酷致力于打造从看到玩的一站式文娱酷体验，让年轻人的娱乐更阳光。', '优酷');
INSERT INTO `companymess` VALUES (13, '广州百田信息科技有限公司', 'ff8080814356e881014357741e5910f1.jpg', 'http://baitianinfo.com', '广州', '移动互联网,教育', '150-500人', '上市公司', ',', ',,,,,', '百奥家庭互动（广州百田）成立于2009年，2014年4月在香港联合交易所上市（股票代码2100.HK），连续2年入选中国互联网百强，是一家优秀的互联网内容与服务提供商。其核心业务覆盖游戏、动漫、社交、人工智能等领域。公司总部位于广州天河，拥有珠江新城CBD 7层办公楼，员工超过800人。同时在成都有分公司，在美国纽约开设办事处，以丰富知识产权(“IP”)创新，谋求更广泛的全球影响力。\r\n成立最初，百奥致力于青少年互联网产品的研发与运营，先后推出的重要作品均积累过亿注册用户。随着业务的增长以及移动互联网的崛起，公司在手机游戏研发及运营的业务上，也推出了多款口碑好、高人气的作品。公司关注并提供游戏、动漫、社交、人工智能等数字内容产品及相关服务，同时有效部署其以IP及原创内容创作为核心的战略，以开发新产品及扩充现有产品线。\r\n目前，百奥提出三大发展战略：游戏IP改造、漫画IP塑造和IP孵化。 通过具有个性魅力的IP形象，展现具有人文情怀的故事情节，带出健康向上的价值观， 以实现其「绿色娱乐、健康社交、快乐陪伴」的愿景。', '广州百田');
INSERT INTO `companymess` VALUES (14, '开思时代科技有限公司', 'kaisishidai.jpg', 'http://www.casstime.com/', '深圳', '移动互联网,企业服务', '500-2000人', 'C轮', 'C轮,,', ',,', '深圳开思时代科技有限公司（CassTime）成立于2015年5月20日，总部位于深圳，在广州、成都、', '开思时代');
INSERT INTO `companymess` VALUES (15, '青岛市星火教育科技有限公司', 'xinghuojy.jpg', 'http://www.xinghuo100.com', '青岛', '教育,生活服务', '2000人以上', '未融资', ',', ',', '星火教育是晓教育集团旗下中小学个性化辅导品牌，也是中国知名课外辅导品牌，为6至18岁中小学生提供个性化学习服务，授课模式主打“1对1”、“10人课堂”和“双师课堂”。总部设在广州太古汇，自2003年创立以来，已在全国30多个大中城市设立180多所分校区，拥有数千名高素质、高标准、专业化的教研人员。\r\n\r\n星火教育秉承“知人善教、激发兴趣、塑造能力”的教育理念，自主建立全年级全学科教研体系，深入研究个性化教育、学习能力的开发和培养、家庭教育和前沿教育技术，并借助晓教育集团的技术力量重塑“1对1”、“10人课堂”和“双师课堂”，不断改善学习体验。\r\n\r\n星火教育自主研发了学能测评系统（MCE），并依托晓教育集团研发的智能教学平台（晓教学）与题库平台（晓题库），为学生提供高品质的教学产品与优质的教学服务，全面提升学生的学习成绩与学习体验，帮助学生成为人生道路上的冠军。', '星火教育');
INSERT INTO `companymess` VALUES (16, '小米科技有限责任公司', 'xiaomi.png', 'https://www.mi.com', '北京', '移动互联网,电子商务', '2000人以上', '上市公司', '上市公司,,', ',,', '小米公司正式成立于2010年4月，是一家以手机、智能硬件和 IoT 平台为核心的互联网公司。创业仅7年时间，小米的年收入就突破了千亿元人民币。截止2018年，小米的业务遍及全球80多个国家和地区。\r\n\r\n小米的使命是，始终坚持做“感动人心、价格厚道”的好产品，让全球每个人都能享受科技带来的美好生活。\r\n\r\n“和用户交朋友，做用户心中最酷的公司”的愿景都在驱动着我们努力创新，不断追求极致的产品和效率，成就了一个不断缔造成长奇迹的小米。\r\n\r\n目前，小米是全球第四大智能手机制造商，在30余个国家和地区的手机市场进入了前五名，特别是在印度，连续11个季度保持手机出货量第一。通过独特的“生态链模式”，小米投资、带动了更多志同道合的创业者，同时建成了连接超过1.3亿台智能设备的IoT平台。\r\n2018年7月9日，小米成功在香港主板上市，成为了港交所首个同股不同权上市公司，创造了香港史上最大规模科技股IPO，以及当时历史上全球第三大科技股IPO。', '小米');
INSERT INTO `companymess` VALUES (17, '青岛麦肯锡企业管理有限公司', 'maikenxi.png', 'http://www.qingdaocom.com', '青岛', '移动互联网,电子商务', '15-50人', '未融资', ',', ',', '专业成就服务。', '麦肯锡');
INSERT INTO `companymess` VALUES (18, '北京瓦特曼科技有限公司', 'watemankj.jpg', 'http://www.wattman.cn', '北京', '移动互联网,金融互联网', '50-150人', '未融资', ',', ',', '北京瓦特曼智能科技有限公司是国内极具技术创新基因的工业智能制造解决方案提供商，是在工业领域技术创新与工程落地的领军企业，致力于将工业视觉、机器人等人工智能技术落地于传统工业领域，构建智能制造工业平台，以客户为核心，助力实现传统工业企业实现工作体验友好化、工业设备智能化、生产效率高效化。', '瓦特曼');
INSERT INTO `companymess` VALUES (19, '便利蜂商贸有限公司', 'bianlifeng.png', 'http://www.bianlifeng.com', '天津', '移动互联网,企业服务', '2000人以上', '未融资', ',', ',', '便利蜂是一家以科技创新为先导、以安全健康为核心、以便民高效为目标的创新创业企业，公司以“便利蜂”为品牌名称，于2016年12月在北京完成注册申请，注册资金1亿元人民币。公司通过互联网高新技术，配合完善的供应链，以开设24小时的 “便利蜂”便利店业态为主，打造全新的“互联网+”形态的社区便民服务新模式，在实体便利店内将全面汇集生活日用品售卖、三餐上门及各类便民事项办理等综合功能，开启“新零售时代”不一样的消费体验和智能社区生活圈。\r\n', '便利蜂');
INSERT INTO `companymess` VALUES (20, '中能瑞通（北京）科技有限公司', 'zhongnengruitong.png', 'http://www.power-peak.com.cn/', '北京', '移动互联网,O2O', '15-50人', '未融资', ',', ',', '中能瑞通（北京）科技有限公司', '中能瑞通');
INSERT INTO `companymess` VALUES (21, '广州小黑屋科技有限公司', 'xiaoheiwu.jpg', 'http://www.heywoods.cn', '广州', '移动互联网,企业服务', '150-500人', 'A轮', 'A轮,,', ',,', '广州小黑屋科技有限公司成立于2016年6月6日，是广东省高新技术企业，专注于微信生态的互联网公司，助力品牌快速进入微信生态的微信服务商。 创始团队来自腾讯、百度、阿里、七天、南方报业等业内知名企业，拥有独立高效的开发及运营团队。目前业务覆盖视频类小程序、微信公众号、电商业务和SASS工具，拥有百万级日活的小程序矩阵和近2000万用户。 目前小黑屋已完成千万级别的A+轮融资，投资方为红杉、晨兴、红点、贝塔斯曼。同时，小黑屋积极参与“彩虹助学”公益活动，固定资助云南腾冲贫困学生。', '小黑屋');
INSERT INTO `companymess` VALUES (22, '北京华品博睿网络技术有限公司', 'BOSSzhipin.jpg', 'https://www.zhipin.com', '北京', '移动互联网,招聘', '2000人以上', 'D轮及以上', 'D轮及以上,,', ',,', 'BOSS直聘是一款在全球范围内率先发展移动互联网“直聘”模式的在线招聘App，于2014年7月13日上线，致力于为职场BOSS和求职者搭建高效沟通、信息对等的平台。 BOSS直聘产品的核心是“直聊+精准匹配”，通过将在线聊天功能引入招聘场景，让应聘者和用人方直接沟通，跳过传统的冗长环节，提升效率。同时，BOSS直聘应用前沿大数据与人工智能技术，不断追求岗位与人才的多维度精准推荐与匹配，提升招聘效果。 BOSS直聘提出了网络招聘的“MDD”模式，即移动 (Mobile)、大数据驱动 (Data)和直聘 (Direcruit)。BOSS直聘提倡以重视求职者画像和企业内部协同招聘为核心的\"新招聘\"理念。', 'BOSS直聘');
INSERT INTO `companymess` VALUES (23, '上海赋算通云计算科技有限公司', 'fusuantong.png', 'http://fusuantong.com', '上海', '移动互联网,企业服务', '少于15人', '未融资', ',', ',', '上海赋算通云计算科技有限公司', '赋算通');
INSERT INTO `companymess` VALUES (24, '链家地产', 'lianjia.jpg', 'http://lianjia.com', '杭州', '移动互联网,生活服务', '2000人以上', 'D轮及以上', ',', ',', '链家地产简介 1、真房源标准的倡导者 链家致力于为消费者提供真实可信的房源信息。为了打破行业潜规则，树立行业规范，保护消费者利益，同时推动经纪人行为规范，链家制定真房源四大标准“真实存在、真实在售、真实价格、真实图片”。为保障真房源，链家于2008年开始建立“楼盘字典”系统，目前已记录了超过7000万套房屋信息，并由品控中心，作为独立于其他业务部门的监管机构，对真房源监管、经纪人行为规范等方面进行全面监管和把控。 2、不动产交易信息透明的推动者 2004年链家在业内明确提出“透明交易、签三方约、不吃差价”的阳光操作模式，并将其作为公司业务准则全面推进。 链家通过签约前通过视频等制式化手段向交易双方提示签约风险提示； 线上披露高压线、垃圾站等6类嫌恶设施，公示房屋真实成交价，让业主定价、购房人出价更有依据；经纪人信息全透明展示，好评、差评，给客户评价一目了然、更精准的购房成本参考 ；线上更新实缴税费，价/税等关键信息；公示一房一核验、房源被带看次数、业主调价记录等促进房产交易的信息透明，让客户安心购房。 3、更优质找房体验的践行者 链家线上平台链家网， 作为中国具备集房源信息搜索、产品研发、大数据处理、服务标准建立为一体的数据驱动的价值链房产服务平台，通过地图找房、地铁找房等多维度找房功能/工具精准定位客户找房需求，链接起用户需求和线下服务，提升购房效率和购房体验。 4、不动产交易保障与风险防范的发起者 链家一直关注维护客户权益的服务保障， 是业内第一家与建设银行开始资金托管的中介公司，也是国内第一家获央行颁布的第三方支付牌照的房地产企业。2007年，链家联合八大银行，首家公布二手房交易资金监管账号，推进不动产交易保障和风险方案的进一步规范与进步。 2014年链家推出八大购房安心服务承诺，包含房屋筛选、查封回购、欠费垫付、漏水保固、交易不成退费、税费精选和真实房源等服务承诺，提供保障赔付，树立行业标准。', '链家');
INSERT INTO `companymess` VALUES (25, '北京小猿文化传播有限公司', 'yuanfudao.jpg', 'http://www.yuanfudao.com', '上海', '移动互联网,教育', '2000人以上', 'D轮及以上', ',', ',', '猿辅导是国内K-12在线教育领域首个独角兽公司，目前估值超过155亿美元。我们致力于以科技和优质教育资源，打破地域限制，普惠更多学生。公司旗下有猿辅导、猿题库、小猿搜题、小猿口算、斑马英语五款移动教育APP。 通过人工智能与在线教育结合，我们推出自适应练习系统、英语作文自动批改等一系列黑科技产品，帮助学生快速提高学习能力、提升学习成绩，从而持续获得正向激励和反馈，实现“个性化学习”。 公司成立8年来，先后获得IDG、腾讯、经纬创投、CMC、华平投资和新天域资本共计3亿美元融资。目前业务保持快速稳健增长，为超过2.5亿的中小学生和家长提供包括辅导网课、搜题答疑、自适应题库等在内的多元化智能教育服务。 不断将AI及前沿科技应用于教育场景，始终致力于利用科技，让中小学生便捷、高效的获取最优质的教育资源。', '猿辅导');
INSERT INTO `companymess` VALUES (26, '雅昌文化（集团）有限公司', 'yachangjituan.jpg', 'http://www.artron.com.cn', '北京', '移动互联网', '2000人以上', '未融资', ',', ',', '雅昌文化集团创建于1993年，是一家立足于艺术领域的综合性文化产业集团，以通过“为人民艺术服务”达成“艺术为人民服务”，传承、提升、传播和实现艺术价值为使命，面向艺术专业全领域，传承优秀艺术文化，提升艺术价值; 在艺术大众市场，传播艺术文化价值，让艺术之美走进生活。 面对日新月异的技术发展和商业模式的变化，雅昌不断创新，以工匠精神推动传统加工业务向智能制造和定制服务进化；以艺术数据为核心，IT技术为手段，为艺术行业提供智慧化的艺术数据及IT服务综合解决方案；以艺术空间为体验，互联网为平台，充分释放艺术行业内的资源潜力，满足艺术专业人士和艺术爱好者的艺术生活需要。 迄今，雅昌文化集团已拥有北京、上海、深圳三大运营基地，杭州、广州、南京、成都、西安、合肥六大艺术服务中心，产品和服务遍及全球几十个国家和地区，服务艺术行业，丰富艺术生活，让艺术之美永续留传。', '雅昌集团');
INSERT INTO `companymess` VALUES (27, '壹沓科技（上海）有限公司', 'yitakeji.jpg', 'http://www.1data.info', '上海', '移动互联网,云计算\\大数据', '150-500人', 'A轮', ',', ',', '壹沓科技成立于2016年11月，聚焦于前沿技术在企业数字化中的应用，立志成为中国数字机器人领导者。我们在自然语言处理、图像文字识别、知识图谱、数据挖掘、机器人流程自动化、业务流程重构及管理等领域具备完整的自主研发能力。我们的核心业务围绕壹沓数字机器人产品和互联网数据挖掘平台，为企业提供数字化解决方案，帮助企业构建面向未来的人力智能企业。我们通过数字机器人串联office内部的各类软件，打通数据及业务。对企业而言，数字机器人可以代替或者协助员工完成流程的任务，提高运营效率，降低运营成本。对个人而言，帮助员工完成岗位中的数字化工作，专注于更有价值的事情。壹沓科技总部位于上海 ，在北京、深圳设有分公司， 已获得高新技术企业、双软及专精特新企业等专业认证 。核心团队来自于华为、微软等多家知名公司，在企业服务及互联网从业超过10年，拥有人工智能、大数据及云服务的丰富经验。', '壹沓科技');
INSERT INTO `companymess` VALUES (28, '招联消费金融有限公司', 'zlxfjr.jpg', 'http://www.mucfc.com', '深圳', '金融互联网,生活服务', '2000人以上', '未融资', ',', ',', '招联消费金融有限公司是经中国银保监会批准成立，由招商银行与中国联通两家世界500强公司共同组建，我国第一家在《内地与香港关于建立更紧密经贸关系的安排》（CEPA）框架下成立的消费金融公司。  2015年3月3日，招联金融获得原银监会颁发的金融业务许可证，3月6日在深圳前海注册成立，3月18日开始试运营；初始注册资本20亿元，由招商银行和中国联通各出资10亿元；在2017年、2018年股东方分别进行两次增资后，注册资本增至38.69亿元。截至目前，两大股东累计投资52亿元。  招联金融旗下拥有“好期贷”、“信用付”两大消费金融产品体系，为用户提供全线上、免担保、低利率的普惠消费信贷服务。目前，招联金融已全面覆盖购物、旅游、教育、装修等众多消费场景，服务数千万客户，业务覆盖全国广泛地区。', '招联消费金融');
INSERT INTO `companymess` VALUES (29, '软通动力信息技术（集团）股份有限公司', 'rtdl.png', 'http://www.isoftstone.com', '杭州', '企业服务,云计算\\大数据', '2000人以上', '上市公司', '上市公司,,', ',,', '软通动力是中国领先的创新型技术服务商。公司于2001年成立，立足中国，服务全球，依托“海外+中国”的战略布局，市场遍及北美、亚洲、欧洲等区域国家[1] 立足中国，服务大中华区和全球市场，长期为客户提供端到端的数字化解决方案与服务，包括数字化转型咨询、数字化解决方案设计与实施、云与IT基础设施建设与运维、软件开发与测试服务和数字化运营服务等。', '软通动力');
INSERT INTO `companymess` VALUES (30, '深圳绿米联创科技有限公司', 'lmlc.jpg', 'http://lmlc2020.zgjx68.com', '深圳', '移动互联网,健康医疗', '2000人以上', 'C轮', 'C轮,,', ',,,,,,,,,,,,,', '深圳绿米联创，由美国海归于2009年创立，致力于智能家庭产品的研发。2014年，正式加入小米生态链，从智能硬件、软件和互联网几个方面着手，研发和创造智能新产品，推动智能产品在智能家庭和物联网领域的普及和应用。  2015年发布小米智能家庭套装后，在短期内实现了销量超过100万的不俗业绩，成为中国智能家居市场的佼佼者。目前自有品牌 Aqara 硬件产品已经覆盖全屋智能，包括各种传感器、灯光控制器、空调控制器、智能门锁、自动窗帘和晾晒以及摄像头等。绿米2018年12月出品的米家智能门锁在不到8小时的时间内实现众筹3万件，引起门锁行业轰动，一举成为行业的领跑者。  绿米有一个能战斗的，来自国内外名校的一流国际化团队，覆盖设计中心、智能硬件、嵌入式软件、云平台、SaaS平台、大数据、先进算法和AI等领域 ，我们认为智能家居和智能楼宇的未来是建立在智能硬件、数据和人工智能基础上服务，我们诚邀热衷于IOT行业的英雄好汉，共同推动和见证一个新时代的到来。期待您的加入！', '绿米联创');
INSERT INTO `companymess` VALUES (31, '武汉市多比特信息科技有限公司', 'duobite.jpg', 'http://www.wedobest.com.cn', '武汉', '移动互联网,游戏', '150-500人', '未融资', ',', ',', '武汉市多比特信息科技有限公司（简称多比特）成立于2014年，是一家飞速成长的互联网公司，公司目前人员规模300+，拥有两层3000平方办公室。公司专注于研发、运营和发行，产品累计下载量超7亿。公司通过以大数据运营技术为支撑的广告分发平台为广告业主提供互联网广告增值业务，同时为广大互联网用户提供优秀的休闲游戏产品和服务体验。  公司大事记： 2014年，公司成立。 2015年，公司盈利； 2016年，被认定为湖北省高新技术企业，湖北省版权示范单位。 2017年，游戏“吹来吹趣”获得“年度中国原创游戏精品出版工程”；获得A轮亿级投资。 2018年，东湖高新区“瞪羚企业”，“光谷高科技高成长”企业前十强。 2019年，光谷“瞪羚王”，“光谷高科技高成长”第一名，“中国高科技高成长”企业第37名；武汉软件百强企业。腾讯“游戏行业卓越媒体”、360“最具潜力合作伙伴”。 2020年，公司产品下载量超7亿；捐款100万元人民币，用于新冠肺炎疫情的防治，获得“抗疫先进企业”和“抗疫先进个人”荣誉奖章；VIVO“年度最具流量价值合作伙伴”。', '多比特');
INSERT INTO `companymess` VALUES (32, '浙江丹鸟物流科技有限公司', 'cainiaozs.jpg', 'http://www.danniao.com', '武汉', '移动互联网,分类信息', '2000人以上', '未融资', ',', ',', '菜鸟于2013年由阿里巴巴集团联合四通一达等快递公司牵头成立。菜鸟是一家互联网科技公司，专注于物流网络平台服务。通过技术创新和高效协同，菜鸟持续推动快递物流业向数字化、智能化升级，为全球消费者提升物流体验，为全球商家提供智慧供应链解决方案，帮助降低全社会物流成本。  菜鸟直送作为菜鸟品牌之一，服务能力覆盖350+城市，全国3000+站点，400万+配送员运力池，构建立体化同城配送网络，让每一份期待温暖抵达。  产品及服务： 服务模式：B2C仓到门模式、B2b配送上门模式、O2O即时配送模式 时效产品：当日达、次日达、次晨达、隔日达 基础服务：送前电联、送货上门。', '菜鸟直送');
INSERT INTO `companymess` VALUES (35, '上海小牛互娱智能科技有限公司', 'xiaonihuyu.jpg', 'http://www.xiaoniuhy.com', '上海', '移动互联网,游戏', '2000人以上', '未融资', ',', ',', '上海小牛互娱智能科技有限公司创立于2018年，是一家专注于创新技术发展的移动互联网科技+游戏公司，公司坐落于上海浦东新区张江星创科技园区，地铁沿线，交通便利，同时在厦门、广州北京、和武汉也有分公司。发展至今员工已超过1000+。公司的核心成员均是来自腾讯、阿里、网易、百度、美团等互联网巨头的产品及技术专家，有多名业内资深游戏制作人加盟。在强大的核心团队的努力下，公司利用自身的技术优势，不断推出符合市场需求的优质产品，深度发展互联网和游戏行业，目前已布局手游、语音直播、手机应用工具等领域，已取得行业领先地位，但是我们并不满足于此，还在不断尝试发展新的项目，多个项目齐头并进，多元化发展。 ', '小牛互娱');
INSERT INTO `companymess` VALUES (36, '辽宁鸿文教育科技有限公司', 'hongwenjiaoyu.jpg', 'http://www.ihongwen.com', '鞍山', '移动互联网,教育', '2000人以上', '未融资', ',', ',', '鸿文教育始创于2011年，是国内深耕高中领域的领导品牌，旗下拥有鸿文高考、蜻蜓志愿、鸿文优学、鸿文智学四大核心事业部，以国内最先进的KIE教育理论体系为核心，以全面系统地解决高中阶段教育问题为使命。业务覆盖高考文化培训、高考志愿填报、学业生涯规划、学习状态激励、家庭教育以及图书出版等领域，线下校区百余所，遍布辽宁、吉林、黑龙江、河北、陕西、内蒙等十六省。 鸿文高考事业部联合国内32名顶级特级教师、百余名知名教辅资料编者独创业内首款根据成绩分层教学的教材-五阶晋级教材，颠覆了传统通用版高中阶段教材的局面，并辅以智能辅学（人脸识别、大数据记录等）系统，最大限度提高课堂效率。 蜻蜓志愿事业部利用大数据、人工智能技术，自主研发了AI智能报考系统，并独家推出双师报考系统，全面提升生涯规划、志愿填报的科学性。经过短短两年发展，蜻蜓志愿已成为高考报考领域的知名领导品牌。 鸿文智学事业部首创专注高中领域的智学AI自适应学习系统，通过知识诊断、学习目标建立，生成个性化学习方案，利用人工智能技术，不断优化学习路径，辅以专家教师的讲解视频，最大限度降低了无效学习时间，提高学习效率，提升学习效果。', '鸿文教育');

-- ----------------------------
-- Table structure for jianli
-- ----------------------------
DROP TABLE IF EXISTS `jianli`;
CREATE TABLE `jianli`  (
  `jianli_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历名',
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `topDegree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `workyear` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作年限',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `currentState` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目前状态',
  `expectCity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望城市',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位类型',
  `expectPosition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望职位',
  `expectSalary` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望月薪',
  `resumeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重命名',
  `companyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `positionName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `companyYearStart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位开始年份',
  `companyMonthStart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位开始月份',
  `companyYearEnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位结束年份',
  `companyMonthEnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位结束月份',
  `projectName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `thePost` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '担任职务',
  `projectYearStart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目开始年份',
  `projectMonthStart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目开始月份',
  `projectYearEnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目结束年份',
  `projectMonthEnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目结束月份',
  `projectDescription` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  `schoolName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `degree` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `professionalName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `schoolYearStart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上学开始年份',
  `schoolYearEnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上学结束年份',
  `selfDescription` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自我描述',
  PRIMARY KEY (`jianli_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianli
-- ----------------------------
INSERT INTO `jianli` VALUES (1, 'tom', 'tom', NULL, '本科', '应届毕业生', '12345678910', '123@qq.com', '我是应届毕业生', '北京', '全职', 'JAVA高级开发工程师', '10k-15k', 'tom的完整简历', '百度', 'JAVA高级开发工程师', '2019', '03', '2021', '02', '百度搜索', 'JAVA高级开发工程师', '2018', '04', '至今', '至今', '百度一下，你就知道', '辽宁科技大学', '本科', '软件工程', '2016', '2020', '我就是我，不一样的烟火');
INSERT INTO `jianli` VALUES (2, 'yc', 'ycc', '男', '本科', '应届毕业生', '9876543210', 'ycccccc@qq.com', '我是应届毕业生', '北京', '全职', 'JAVA高级开发工程师', '25k-50k', 'yc的极简简历', '滴滴金融', 'JAVA高级开发工程师', '2017', '05', '2020', '02', '滴滴金融旗下项目研发', 'JAVA高级开发工程师', '', '', '', '', '', '辽宁科技大学', '本科', '软件工程', '2017', '2021', '<span>\r\n                            这就是yc\r\n                        </span>');
INSERT INTO `jianli` VALUES (4, 'laoyang', 'laoyang', '男', '本科', '应届毕业生', '14725836912', 'laoyang@163.com', '我是应届毕业生', '深圳', '实习', 'PHP开发实习生', '2k-5k', 'laoyang的简历', '广州小黑屋科技有限公司', 'PHP开发实习生', '2020', '10', '2021', '02', '小黑屋搜索', 'PHP开发', '2020', '11', '2021', '01', '小黑屋搜索开发', '辽宁科技大学', '本科', '软件工程', '2017', '2021', '希望能够得到一份PHP开发工作');
INSERT INTO `jianli` VALUES (6, 'myname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jianli` VALUES (14, 'jack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jianli` VALUES (17, '求职者', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jianli` VALUES (18, 'user', 'user', '女', '本科', '应届毕业生', '13877777777', 'user@qq.com', '我目前已离职，可快速到岗', '大连', '全职', 'JAVA实习生', '5k-10k', 'user的简历', '无', '', '', '', '', '', '无', '', '', '', '', '', '', '辽宁科技大学', '本科', '软件工程', '2017', '2021', 'JAVA开发实习生');
INSERT INTO `jianli` VALUES (19, 'yccc', 'yccc', '男', '本科', '应届毕业生', '12345555555', 'yccc@163.com', '我是应届毕业生', '上海', '全职', 'UI实习生', '2k-5k', 'yccc', '无', '', '', '', '', '', '无', '', '', '', '', '', '', '辽宁科技大学', '本科', '软件工程', '2017', '2021', '我是yccc');
INSERT INTO `jianli` VALUES (20, '求职者测试', '求职者测试', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, '求职者测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jianli` VALUES (21, '测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for toudi
-- ----------------------------
DROP TABLE IF EXISTS `toudi`;
CREATE TABLE `toudi`  (
  `toudi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投递ID',
  `jianli_id` int(11) NULL DEFAULT NULL COMMENT '简历ID',
  `zhiwei_id` int(11) NULL DEFAULT NULL COMMENT '职位ID',
  `company_id` int(11) NULL DEFAULT NULL COMMENT '公司ID',
  `touditime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投递时间',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历状态',
  PRIMARY KEY (`toudi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toudi
-- ----------------------------
INSERT INTO `toudi` VALUES (1, 1, 10, 10, '2021-03-15 15:32:00', '通知面试');
INSERT INTO `toudi` VALUES (2, 1, 20, 20, '2021-03-15 15:54:21', '通知面试');
INSERT INTO `toudi` VALUES (3, 2, 6, 6, '2021-03-15 17:07:29', NULL);
INSERT INTO `toudi` VALUES (4, 1, 2, 5, '2021-03-15 17:29:55', NULL);
INSERT INTO `toudi` VALUES (5, 1, 14, 14, '2021-03-15 17:30:49', NULL);
INSERT INTO `toudi` VALUES (6, 1, 16, 16, '2021-03-15 17:36:55', '不合适');
INSERT INTO `toudi` VALUES (7, 2, 16, 16, '2021-03-15 18:17:36', '不合适');
INSERT INTO `toudi` VALUES (8, 4, 21, 21, '2021-03-16 09:40:20', NULL);
INSERT INTO `toudi` VALUES (10, 2, 5, 3, '2021-03-31 17:11:05', '通知面试');
INSERT INTO `toudi` VALUES (11, 18, 10, 10, '2021-04-02 14:13:59', '不合适');
INSERT INTO `toudi` VALUES (14, 19, 23, 23, '2021-04-09 11:11:17', NULL);
INSERT INTO `toudi` VALUES (15, 2, 10, 10, '2021-04-09 14:13:32', NULL);
INSERT INTO `toudi` VALUES (16, 1, 37, 27, '2021-05-20 12:51:55', '不合适');
INSERT INTO `toudi` VALUES (17, 1, 19, 19, '2021-05-20 12:53:22', '不合适');
INSERT INTO `toudi` VALUES (18, 4, 16, 16, '2021-05-20 12:55:56', NULL);
INSERT INTO `toudi` VALUES (19, 20, 2, 5, '2021-06-08 11:54:25', NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `type_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型ID',
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`type_id`) USING BTREE,
  INDEX `id`(`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('0', '管理员');
INSERT INTO `type` VALUES ('1', '求职者');
INSERT INTO `type` VALUES ('2', '企业');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `insurepassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '确认密码',
  `type_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型ID',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 964 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yangcheng', '123456', '123456', '2');
INSERT INTO `user` VALUES (2, 'tom', '123456', '123456', '1');
INSERT INTO `user` VALUES (3, '老杨', '123456', '123456', '2');
INSERT INTO `user` VALUES (4, 'username', 'password', 'password', '1');
INSERT INTO `user` VALUES (5, 'yc', '123456', '123456', '1');
INSERT INTO `user` VALUES (6, 'user', '123456', '123456', '1');
INSERT INTO `user` VALUES (7, 'administrator', '123456', '123456', '2');
INSERT INTO `user` VALUES (8, '立方网', '123456', '123456', '2');
INSERT INTO `user` VALUES (9, '联想集团', '123456', '123456', '2');
INSERT INTO `user` VALUES (10, '印鸽科技', '123456', '123456', '2');
INSERT INTO `user` VALUES (11, '西安道通科技有限公司', '123456', '123456', '2');
INSERT INTO `user` VALUES (12, '河南点盛信息科技有限公司', '123456', '123456', '2');
INSERT INTO `user` VALUES (13, '宝岛阿里山', '123456', '123456', '2');
INSERT INTO `user` VALUES (14, '雨花石云计算', '123456', '123456', '2');
INSERT INTO `user` VALUES (15, '先飞科技', '123456', '123456', '2');
INSERT INTO `user` VALUES (16, '优酷', '123456', '123456', '2');
INSERT INTO `user` VALUES (17, '广州百田', '123456', '123456', '2');
INSERT INTO `user` VALUES (888, 'admin', 'admin', 'admin', '0');
INSERT INTO `user` VALUES (919, 'user1', '123456', '123456', '1');
INSERT INTO `user` VALUES (920, '开思时代', '123456', '123456', '2');
INSERT INTO `user` VALUES (921, '星火教育', '123456', '123456', '2');
INSERT INTO `user` VALUES (922, '小米', '123456', '123456', '2');
INSERT INTO `user` VALUES (923, '麦肯锡', '123456', '123456', '2');
INSERT INTO `user` VALUES (924, '瓦特曼', '123456', '123456', '2');
INSERT INTO `user` VALUES (925, '便利蜂', '123456', '123456', '2');
INSERT INTO `user` VALUES (926, '中能瑞通', '123456', '123456', '2');
INSERT INTO `user` VALUES (927, 'myname', '123456', '123456', '1');
INSERT INTO `user` VALUES (928, '重庆更赢', '123456', '123456', '2');
INSERT INTO `user` VALUES (929, '小黑屋', '123456', '123456', '2');
INSERT INTO `user` VALUES (930, 'laoyang', '123456', '123456', '1');
INSERT INTO `user` VALUES (931, 'BOSS直聘', '123456', '123456', '2');
INSERT INTO `user` VALUES (932, '赋算通', '123456', '123456', '2');
INSERT INTO `user` VALUES (933, '链家', '123456', '123456', '2');
INSERT INTO `user` VALUES (934, '猿辅导', '123456', '123456', '2');
INSERT INTO `user` VALUES (935, 'jack', '123456', '123456', '1');
INSERT INTO `user` VALUES (936, '雅昌集团', '123456', '123456', '2');
INSERT INTO `user` VALUES (937, '壹沓科技', '123456', '123456', '2');
INSERT INTO `user` VALUES (938, '求职者', '123456', '123456', '1');
INSERT INTO `user` VALUES (939, '招联消费金融', '123456', '123456', '2');
INSERT INTO `user` VALUES (940, '软通动力', '123456', '123456', '2');
INSERT INTO `user` VALUES (941, '绿米联创', '123456', '123456', '2');
INSERT INTO `user` VALUES (942, '多比特', '123456', '123456', '2');
INSERT INTO `user` VALUES (943, '菜鸟直送', '123456', '123456', '2');
INSERT INTO `user` VALUES (944, '招聘单位测试', '123456', '123456', '2');
INSERT INTO `user` VALUES (945, '求职者测试', '123456', '123456', '1');
INSERT INTO `user` VALUES (946, '小牛互娱', '123456', '123456', '2');
INSERT INTO `user` VALUES (947, '鸿文教育', '123456', '123456', '2');
INSERT INTO `user` VALUES (948, 'yccc', '123456', '123456', '1');
INSERT INTO `user` VALUES (958, 'docker', '123456', '123456', '1');
INSERT INTO `user` VALUES (959, 'dotcloud', '123456', '123456', '2');
INSERT INTO `user` VALUES (960, 'btc', '123456', '123456', '1');
INSERT INTO `user` VALUES (963, '测试', '123456', '123456', '1');

-- ----------------------------
-- Table structure for zhiwei
-- ----------------------------
DROP TABLE IF EXISTS `zhiwei`;
CREATE TABLE `zhiwei`  (
  `zhiwei_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `positionType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位类别',
  `positionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `jobNature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作性质',
  `salaryMin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最低月薪',
  `salaryMax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高月薪',
  `workAddress` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作城市',
  `workYear` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作经验',
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `positionAdvantage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位诱惑',
  `positionDetail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位描述',
  `positionAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地址',
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`zhiwei_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhiwei
-- ----------------------------
INSERT INTO `zhiwei` VALUES (1, '老杨', '视觉设计', '高级UI设计师', '全职', '18', '25', '杭州', '5-10年', '本科', '五险一金，年终奖，加班补助，通讯补贴', '岗位职责：\r\n1、给你超大的发挥空间，负责公司移动端iOS、Android、小程序、PC等平台产品的整体UI设计与用户体验； \r\n2、我们需要更有实力的你，对产品整体的视觉风格有一定的把握，传递符合产品定位的设计理念； \r\n3、我们对“标准化”Say No！我们需要天马行空的你来加持我们的产品布局和设计风格，同时又能踏实落地，收放自如；参与甚至主导我们设计规范的制定和优化； \r\n4、既要内心强大，又要千变万化，参与产品的设计和讨论，准确理解产品需求和交互原型，设计出高质量用户体验的界面效果图； \r\n5、来，我们一起成长！需要有对工作的主动性，对行业的敏感度、和对超前的设计趋势有自己的判断；结合自己的工作经验，制定规范，在团队中有积极带领作用。 \r\n岗位要求： \r\n1、数字媒体、视觉传达、工业设计等相关艺术类专业优先考虑\r\n2、4年以上互联网UI/UX体验设计经验，有能力独立负责较复杂系统的界面视觉设计；有营销活动、B端平台、大数据平台、数据可视化平台经验优先； \r\n3、能高效理解产品和交互设计思路，敏锐判断视觉设计的可行性；\r\n4、重视细节，追求像素级精神，热爱交互小动画；\r\n5、在技术和产品高强度压力下，有视觉设计底线 ；\r\n6、对前沿设计探索感兴趣，自我驱动力强，能用设计效果准确表达想法；\r\n7、精通 Photoshop、AI 、sketch等视觉设计软件，会手绘插画、2.5D插画优先；\r\n8、能作为内部枢纽，有效的跨部门沟通和资源协调，有良好的团队精神和服务意识；\r\n9、有良好的沟通能力，能承受较强的工作压力，具有团队合作精神，能够站在用户的角度去理解问题，发掘不足，善于总结；\r\n10、简历请附带作品，无作品不予考虑。', '杭州滨江区东冠·恒鑫大厦588号17-18楼', '2021-03-31 09:45:33');
INSERT INTO `zhiwei` VALUES (2, 'administrator', '项目管理', '项目经理', '全职', '15', '20', '北京', '3-5年', '大专', '五险一金，年终奖', '岗位职责：\r\n1、协助销售沟通和挖掘企业需求，促进项目的签订。\r\n2、针对客户提出的校园招聘需求进行整理和分析；\r\n3、招聘项目的推动及实施工作；\r\n4、项目执行中对内协调、对外沟通、流程确认，确保招聘项目顺利进行；\r\n5、熟练操作牛客的产品系统，快速响应及解决客户提出的问题；\r\n6、项目后期相关数据的收集及分析。\r\n岗位要求：\r\n1、本科及以上学历；\r\n2、有相关实习经验者优先，有售前和公关策划经验优先；\r\n3、了解一定的人力资源基础知识，熟悉校园招聘行业工作流程；\r\n4、优秀的沟通能力，强烈的团队意识和协作精神；', '北京市海淀区中关村软件园', '2021-03-05 18:29:39');
INSERT INTO `zhiwei` VALUES (3, 'yangcheng', '高端职能职位', 'HRD/HRM', '全职', '10', '16', '深圳', '1-3年', '本科', '六险二金，带薪年假', '1.协助HRD完成公司团队搭建，组织建设等工作；\r\n2.协助HRD完成人力资源项目、包括不限于校园招聘，组织架构调整，团队建设计划及执行；\r\n3.协助完成其他人力资源工作 \r\n【任职要求】 23周岁以内，身高160以上，形象好气质佳。\r\n1.统招本科以上学历，人力资源相关专业优先； \r\n2.有责任心踏实细致有时间观念,有互联网思维意识,有较强的学习能力和工作主动性; \r\n3.有人力资源相关的实习经验者优先; \r\n4.人力资源专业优先考虑; \r\n5.有良好的人际沟通能力与团队合作意识; \r\n6.每周保证5天以上实习,3个月以上的实习期。', '广东省深圳市', '2021-03-05 18:31:59');
INSERT INTO `zhiwei` VALUES (4, '立方网', '运营', '内容运营', '全职', '10', '15', '武汉', '3-5年', '本科', '大家都来了 你还在等什么！！', '岗位职责：\r\n1、参与管理和维护立方网，保证网络社区健康、有序地运转，负责网站信息安全；\r\n2、强化团队建设，提高团队工作效率，做好领导与员工直接沟通的桥梁；\r\n3、制定和完善客服体系规章制度,培训新人。\r\n\r\n 岗位要求：1、2年以上互联网行业客服主管工作经验，本科及以上学历；\r\n2、良好的沟通和协调能力、人际交往能力和语言表达能力；\r\n3、较强的责任心和执行力，富有工作热情和团队协作能力。', '武汉市武昌区螃蟹岬凤凰大厦A1-1301', '2021-03-08 13:46:21');
INSERT INTO `zhiwei` VALUES (5, '联想集团', '后端开发', 'Java（高级）开发工程师', '全职', '20', '40', '北京', '3-5年', '本科', '五险一金，带薪年假，年终奖，餐补，通讯补贴', '职位要求：\r\n1. 负责供应链产品化服务端设计和开发 \r\n2. 负责封装算法工程师开发的算法 \r\n3. 负责分析算法代码中执行效率低的代码，提高算法运行效率 \r\n4. 持续进行系统性能优化和技术难题攻关 \r\n5. 识别并及时处理潜在技术风险，保证系统安全、稳定运行 \r\n6. 撰写各类技术文档 \r\n任职资格：\r\n1. 2-3年JAVA服务端开发经验 \r\na) 熟练掌握JAVA语法规范，JVM内存模型 \r\nb) 掌握HA（高可用）分布式系统开发经验\r\nc) 精通Spring框架体系下的开发 \r\n2. 了解Linux工作机制，原理，熟练掌握命令行命令 \r\n3. 熟练掌握各类开发模式，例如工厂模式，代理模式 \r\n4. 掌握内存优化，内存管理的设计思想 \r\n5. 熟练掌握多线程，面向对象技术，多进程编程技巧 \r\n6. 熟练掌握跨进程通信原理和方式', '北京市 海淀区 联想全球总部 西北旺东路10号院', '2021-03-09 15:04:17');
INSERT INTO `zhiwei` VALUES (6, '印鸽科技', '后端开发', '高级PHP开发工程师', '全职', '15', '25', '杭州', '3-5年', '大专', '五险一金，年终奖，股票期权，带薪年假，交通补助', '一、岗位职责:\r\n1、协助运营部经理管理日常工作；\r\n2、做好产品宣传，推广，筹划商务计划，提供建议；\r\n3、负责收集，分析以及反馈市场的销售绩效数据；\r\n4、协助部门经理制定运营策略，落实考核项目；\r\n5、综合协调日常事务，做好总结，开展下一阶段工作；\r\n6、完成好部门领导交办的各项临时性工作。\r\n二、岗位要求：\r\n1、18-30之间，有无经验均可，有想法有上进心者优先\r\n2、个性开朗、具有较好的组织协调能力，执行能力强；\r\n3、工作积极主动，能够承受较大压力，吃苦耐劳，有一定的企图心\r\n4、团队意识较强，具有较强的责任感及执行力，具有较强的学习能力，发现问题、解决问题的能力；\r\n5、熟练使用相关办公软件', '杭州市 西湖区 金色西溪·B座 7楼 印鸽科技（农业银行楼上）', '2021-03-11 13:48:43');
INSERT INTO `zhiwei` VALUES (7, '西安道通科技有限公司', '后端开发', 'C++开发工程师 ', '全职', '12', '18', '西安', '3-5年', '本科', '五险一金，定期体检，加班补助，全勤奖，年终奖，带薪年假', '岗位职责：\r\n1. 根据诊断软件研发设计工作计划及任务分工，开展软件研发编码工作，并进行调试优化(VC,VS环境)；\r\n2. 参与诊断软件的迭代升级工作，提出改进建议和方案；\r\n3. 分析诊断软件业务逻辑，编写软件研发设计的协议文档；\r\n4. 及时解决研发过程中的技术问题。\r\n任职要求：\r\n1、计算机或电子信息工程相关专业等本科以上学历，可阅读基本的英文资料； \r\n2、精通C/C++语言，熟悉VS编程环境；熟悉面向对象的程序设计方法，精通常用数据结构与算法。 熟悉STL，掌握多线程，掌握常用的数据库。\r\n3、两年以上软件开发相关经验；\r\n4、对汽车诊断协议或其它通讯协议有一定了解者优先； \r\n5、具有较强的逻辑思维能力。', '西安雁塔区摩尔中心C座11楼', '2021-03-11 13:54:40');
INSERT INTO `zhiwei` VALUES (8, '河南点盛信息科技有限公司', '运营', '运营实习生（免费提供住宿）', '实习', '4', '8', '郑州', '不限', '不限', '五险一金，定期体检，全勤奖，年终奖，股票期权', '一、岗位职责:\r\n1、协助运营部经理管理日常工作；\r\n2、做好产品宣传，推广，筹划商务计划，提供建议；\r\n3、负责收集，分析以及反馈市场的销售绩效数据；\r\n4、协助部门经理制定运营策略，落实考核项目；\r\n5、综合协调日常事务，做好总结，开展下一阶段工作；\r\n6、完成好部门领导交办的各项临时性工作。\r\n二、岗位要求：\r\n1、18-30之间，有无经验均可，有想法有上进心者优先\r\n2、个性开朗、具有较好的组织协调能力，执行能力强；\r\n3、工作积极主动，能够承受较大压力，吃苦耐劳，有一定的企图心\r\n4、团队意识较强，具有较强的责任感及执行力，具有较强的学习能力，发现问题、解决问题的能力；\r\n5、熟练使用相关办公软件。\r\n                        ', '郑州市 管城回族区 华林·新时代广场 7楼0723（进楼坐左手边单层电梯）', '2021-03-11 14:03:31');
INSERT INTO `zhiwei` VALUES (9, '宝岛阿里山', '人力资源', '人事经理 HR ', '全职', '5', '8', '厦门', '1-3年', '大专', '补充医疗保险，加班补助，全勤奖，年终奖，带薪年假', '岗位职责：\r\n1.根据企业战略情况制定招聘、培训、绩效、薪酬等人力资源管理制度，撰写相关培训资料并执行；\r\n2、负责建立人员招聘体系，组织公司各岗位职责的建立，根据公司人力资源需求，拟定年度招聘计划、实施，统筹新员工入职培训等工作；\r\n3、根据公司的战略需求及现有人力的资源，制定适合公司培训的体系，实施培训并考核；\r\n4、制定员工的考核体系并组织实施，将绩效充分与员工奖惩以及升、降、调、辞，薪资等结合；\r\n5、制定有激励性的薪资制度，充分了解同行业薪资水平。\r\n6、负责协调员工关系，解决劳动纠纷；协调、维持公司与政府及其他单位对口部门的关系；\r\n7、总经理交办的其他事项；\r\n任职要求：\r\n1、人力资源相关专业毕业，两年以上的人事行政相关工作经验；\r\n2、具有很强的亲和力、善于沟通交流；\r\n3、能熟练掌握并对人力资源管理模块，做到熟练操作；\r\n4、爱岗敬业、具有很强的责任心，有较强的工作责任感和工作抗压力。', '福建省厦门市集美区软件园三期b区13栋 21层', '2021-03-11 14:21:40');
INSERT INTO `zhiwei` VALUES (10, '雨花石云计算', '后端开发', 'Java开发实习生', '实习', '3', '6', '上海', '1年以下', '本科', '五险一金，年终奖，带薪年假，通讯补贴，零食下午茶', '岗位职责：\r\n1) 企业管理软件客户关系管理CRM技术开发；\r\n2) 主要基于Salesforce云计算平台和微信（Wechat）等社会化媒体开放平台构建企业级应用系统；\r\n3) 熟悉数据库语言及相关数据迁移操作。 \r\n任职资格：\r\n1) 计算机软件相关专业毕业，本科以上学历,211或985院校优先；\r\n2) 对面向对象的编程的思想有一定的理解，并能够进行简单的建模设计；\r\n3) 有过Java 相关实习经验；\r\n4）英语过四级；\r\n5）班干部和学生会经历优先；\r\n6）了解CRM/ERP/OA优先；', '上海长宁区杨宅路258号环东华智尚源A座601室', '2021-03-11 14:41:19');
INSERT INTO `zhiwei` VALUES (11, '先飞科技', '视觉设计', 'UI设计师', '全职', '3', '6', '南昌', '不限', '大专', '员工旅游通讯补贴社会保险', '岗位要求：\r\n1.大专及以上学历，设计专业，有相关基础的其他专业亦可，逻辑思维能力强人员亦可；\r\n2.沟通能力佳，有团队意识；\r\n3.热爱计算机软件开发行业；\r\n4.善于学习和总结分析，有良好的工作态度和团队合作精神。\r\n岗位职责：\r\n1、负责客户项目网页、手机APP的界面设计、编辑、美化等工作；高效的完成设计任务；\r\n2、根据项目创意要求进行设计任务，确保设计符合要求；\r\n3、具备责任心，注重细节，对设计作品精益求精，能担当设计工作，保持乐观精神。\r\n职位招聘1-2人', '南昌市 青山湖区 新城吾悦广场 A座', '2021-03-11 14:47:11');
INSERT INTO `zhiwei` VALUES (12, '优酷', '编辑', '内容编辑', '全职', '4', '6', '西安', '1年以下', '本科', '五险一金，补充医疗保险，定期体检，加班补助', '岗位职责：\r\n1.负责电视节目录制及电视节目介质的采集、上传工作；\r\n2.使用剪辑工具对电视节目进行剪辑、整合；\r\n3.对节目看点进行编目、标题拟定、封面优化；\r\n4.监控重点电视节目全网上线，进行数据分析；\r\n5.对实时新闻及事件具有敏感度，能够适应突发的采集工作强度。\r\n任职要求：\r\n1.对各大电视台及其节目足够了解；\r\n2.热爱综艺节目，对节目形式及当中人物非常了解；\r\n3.具备良好的新闻敏感度，对新闻形式、新闻内容、热点事件足够关注；\r\n4.文字功底好，策划能力佳，善于发现热点，懂基本运营；\r\n5.能够使用Pr、Edius等剪辑工具，对视频编码转码有一定了解；\r\n6.能够接受夜班工作，具有较强的抗压能力。\r\n7.对网络视频感兴趣的应届毕业生或是有视频网站工作经验者优先考虑。', '西安雁塔区曲江环球中心(雁南五路)18楼', '2021-03-11 15:00:11');
INSERT INTO `zhiwei` VALUES (13, '广州百田', '产品经理', '产品经理', '全职', '8', '15', '广州', '1-3年', '本科', '上市公司，快速发展空间，产品的话语权', '工作职责： \r\n1、挖掘公司互联网产品现有和预期的市场需求； \r\n2、负责组织公司互联网新产品开发和产品改进； \r\n3、发掘收集竞争对手信息，进行竞争对手分析，制定应对战略； \r\n4、在产品运营中倾听用户声音，了解用户潜在需求，并在产品改进中满足； \r\n5、在产品运营中整合已有的产品功能、用户资源、推广资源，策划运营活动； \r\n6、与市场、运营、UI、开发、测试、公关、法务、客服等人员紧密合作，实现产品目标。\r\n \r\n任职要求：\r\n1、本科及以上学历，英语四级以上，专业不限； \r\n2、对互联网产品有敏锐的直觉和良好的市场分析能力； \r\n3、有严密的逻辑分析能力，有良好的沟通协作能力； \r\n4、有很强的责任心、学习能力、文字表达能力； \r\n5、具有很强的团队协助精神，善于总结和分享经验； \r\n6、具有互联网产品规划和产品设计经验者优先。\r\n\r\n', '广州市天河区科韵路信息港建中路36号裕桥商务大厦', '2021-03-11 15:25:02');
INSERT INTO `zhiwei` VALUES (14, '开思时代', '测试', '测试开发工程师', '全职', '10', '15', '深圳', '应届毕业生', '本科', '五险一金，补充医疗保险，定期体检，年终奖', '岗位职责：\r\n1、负责测试平台工具开发工作的管理和执行；\r\n2、负责支持和优化项目研发效率；\r\n3、通过工具引入、打通、建设提升项目团队研发流程顺畅度和自动化能力，保障项目效率和质量提升；\r\n任职要求：\r\n1. 注重代码风格，爱写单元测试，善于自动化；\r\n2. 喜欢学习新的框架和技术，善于总结提高、自我表达和与他人沟通；', '深圳市 龙岗区 云里智能园5栋 2楼', '2021-03-12 11:40:50');
INSERT INTO `zhiwei` VALUES (15, '星火教育', '市场/营销', '市场推广（实习岗+有宿舍', '实习', '4', '8', '青岛', '应届毕业生', '大专', '五险一金，定期体检，带薪年假，员工旅游，交通补助', '【工作职责】\r\n1、负责K12项目产品在本区域的整体营销、宣传策划工作；\r\n2、各教学部门在区域内的讲座、活动、海报、单页推广和执行工作；\r\n3、与公立学校建立良好的合作关系，适时结合区域课程进行推广招生；\r\n4、负责建立本区域内稳定的兼职劳务团队并管理；\r\n5、收集区域市场活动后潜在报名人群的有效信息收集整理后进行集中外呼转化；\r\n \r\n【任职要求】\r\n1.统招全日制大专学历及以上；\r\n2.市场营销专业或管理类专业优先；\r\n3.熟悉市场推广、文案写作、平面设计等技能者优先；\r\n4.能简单操作PS、有驾照者优先', '青岛市 市北区 青岛智立方国际科技文化产业园 B栋三楼', '2021-03-12 11:51:09');
INSERT INTO `zhiwei` VALUES (16, '小米', '高端技术职位', 'Java架构师', '全职', '36', '55', '北京', '5-10年', '本科', '五险一金，补充医疗保险，加班补助，全勤奖，年终奖', '工作职责： \r\n负责电商业务的研发工作，包括服务器端需求沟通，架构设计，核心技术研发，团队管理等； \r\n工作要求： \r\n1. 本科或以上，计算机软件或相关专业毕业； \r\n2. 5年及以上的服务端开发经验，3年及以上的团队管理经验，能够独立设计多种技术方案，根据实际情况分析各方案利弊并能够做出选择； \r\n3. 熟悉常用的业务级分布式技术、存储技术、远程调用技术、服务框架等，并清楚地知道它们的特性； \r\n4. 熟悉linux和java环境下常见的线上故障，能够独立分析解决线上问题 \r\n5. 扎实的编程能力，熟悉算法和数据结构，熟悉计算机的基础理论； \r\n6. 熟悉Linux开发环境,； \r\n7. 有强烈上进心，自我驱动，学习适应能力强，乐观自信，能挑战自我不断追求卓越； \r\n8. 有电商业务相关工作经验的优先', '北京海淀区小米总参毛纺路58号院3', '2021-03-18 15:33:15');
INSERT INTO `zhiwei` VALUES (17, '麦肯锡', '财务', '实习会计/会计实习生', '实习', '2', '4', '青岛', '应届毕业生', '大专', '五险一金，全勤奖，年终奖，通讯补贴，交通补助', ' 岗位职责：\r\n    1、负责到工商、税务、银行等部门办理公司注册、变更、注销及其他相关的工作；\r\n    2、配合业务主管和记账会计/助理会计完成日常业务的流程实施；\r\n    3、定期向相关财务部门报送报表，到银行缴纳税款，完成税款转账；\r\n    4、协作记账会计发票购领及年底进行汇算清缴工作；\r\n    5、办理公司有关的其他事务，及时汇报工作；\r\n    6、有较强的服务意识和沟通能力，服从公司领导安排，遵守公司的各项规章制度。\r\n任职资格：\r\n    1、接受应届毕业生，会计专业优先；\r\n    2、有工商税务相关工作经验或会计公司相同职位工作经历、或持有会计证者优先；\r\n    3、熟练使用EXCEL等办公软件；\r\n    4、相貌端正，善于合作，有较强的服务意识；\r\n    5、能吃苦耐劳，熟悉当地交通地理环境者优先考虑。', '青岛城阳区银盛泰·泰馨苑(西1门)文阳路中川路往南100米马路东二楼268号门头', '2021-03-12 12:03:39');
INSERT INTO `zhiwei` VALUES (18, '瓦特曼', '前端开发', '前端实习生', '实习', '3', '5', '北京', '应届毕业生', '本科', '五险一金，年终奖，股票期权，带薪年假', '岗位职责\r\n1.负责公司产品的web端页面的产品设计和开发工作。\r\n2.负责web页面前端的实现及开发；\r\n3.负责公司产品的界面交互开发，为产品提供优秀的界面交互体验；\r\n任职要求\r\n1.统招本科以上学历，计算机、数学等相关专业优先；\r\n2.1-3年前端开发经验，能独立完成前端开发工作；\r\n3.对交互体验、可用性、用户体验有较好的理解；\r\n4.热衷学习与自我修炼，喜欢阅读英文原版技术文档和书籍；', '北京海淀区中国铝业大厦(复兴路辅路)11层1122室', '2021-03-12 14:21:57');
INSERT INTO `zhiwei` VALUES (19, '便利蜂', '前端开发', '前端开发工程师', '全职', '25', '50', '天津', '应届毕业生', '本科', '带薪年假，节日福利，五险一金', '岗位职责：\r\n1.负责便利蜂各应用系统的前端研发，前端各类交互设计与实现；\r\n2.负责高质量编码设计，承担重点业务开发，保证业务稳定推进。 \r\n任职资格：\r\n1.2021年应届毕业生，计算机相关专业优先；\r\n2.计算机基础扎实，熟悉计算机操作系统、网络、数据库等基础课程；\r\n3.熟悉常见数据结构和算法，至少熟悉一门编程语言，有良好的编程习惯；\r\n4.熟练Html5、css3、js、jquery、websocket、Vue、React、Redux、nodejs、es6等，有相关上线项目开发经验优先；\r\n5.优秀的团队合作能力，热爱前端，关注技术发展和趋势，善于沟通和表达，有良好的团队合作精神。\r\n加分项：\r\n1.熟悉React、Webpack、Babel等技术原理者优先；\r\n2.有Node.js或其他后端编程语言经验者优先；\r\n3.在工程化、组件化、数据可视化等方向有探索者优先；\r\n4.技术社区活跃者、持续技术博客写作者、实习时间较长者优先。', '天津市 河西区 泰达大厦 便利蜂', '2021-03-12 14:29:15');
INSERT INTO `zhiwei` VALUES (20, '中能瑞通', '后端开发', 'JAVA初级工程师', '全职', '5', '10', '北京', '应届毕业生', '本科', '五险一金，带薪年假，通讯补贴', '1、参与软件技术预研工作；\r\n2、能够根据工作任务制定开发计划；\r\n3、完成软件详细设计及数模设计；\r\n4、负责代码开发与优化、单元测试；\r\n5、按照公司体系要求，完成相关文档编制工作。\r\n任职要求：\r\n1、JAVA基础扎实，熟悉java通用API，具有面向对象编程思想；\r\n2、熟练使用spring、springMVC、hibernate或mybatis等开发框架；\r\n3、了解tomcat、weblogic等web服务器；\r\n4、了解MySQL/Oracle数据库，精通Sql语法；\r\n5、责任心强，有相当强的工作压力承受能力；\r\n6、备良好的语言沟通能力和团队协作精神；\r\n7、有良好的编写代码习惯；', '北京昌平区金域国际中心A座19层', '2021-03-12 14:32:55');
INSERT INTO `zhiwei` VALUES (21, '小黑屋', '后端开发', 'PHP开发实习生(可转正、双休）', '实习', '4', '5', '广州', '应届毕业生', '本科', '五险一金，补充医疗保险，年终奖，带薪年假', '任职资格：\r\n1. 本科及以上学历，21、22年应届毕业生，计算机相关专业，责任心强，技术求知欲强；\r\n2. 熟练使用PHP开发，熟悉一到两种常用框架（Phalcon、Swoole、Laravel、Yaf等）；\r\n3. 熟练使用git、walle、jenkins等版本控制和代码部署工具；\r\n4. 熟悉常见数据结构、算法和设计模式并能在工作中灵活运用；\r\n5. 熟悉NoSQL，熟练使用Redis、Mongo等常用非关系型数据库；\r\n6. 熟悉Linux操作系统指令，对LNMP及分布式架构、自动化部署、参数调优有一定了解。\r\n岗位职责：\r\n1. 参与需求讨论，编写项目/接口文档，参与或负责小程序、web网站、第三方API对接及管理后台等类型项目的研发维护；\r\n2. 参与数据库、缓存、队列方案选型及其他基础服务设计实现，并持续对其进行性能调优；\r\n3. 协助解决各类技术问题。', '广州海珠区环球贸易中心(新港东路)2102小黑屋', '2021-03-16 09:29:25');
INSERT INTO `zhiwei` VALUES (22, 'BOSS直聘', '前端开发', '【校招】前端开发工程师', '全职', '20', '30', '北京', '应届毕业生', '本科', '五险一金,补充医疗保险,定期体检,加班补助,年终奖', '岗位职责：\r\n1、负责集团公司BOSS直聘、店长直聘、看准网相关业务的前端开发工作；\r\n2、负责业务线运营、监控、安全、数据可视化等平台的前端研发工作；\r\n3、参与内部效率、质量工具的建设。\r\n职位要求：\r\n1、对前端技术有浓厚兴趣，在校期间有系统性地学习过相关知识并有实际的项目案例；\r\n2、对原生HTML5/JS/CSS基础有比较深刻地认识，能从知识点上举一反三；\r\n3、高度重视用户体验，有一定的审美能力；\r\n4、善于沟通交流，具有良好的团队合作精神。', '北京 朝阳区 冠捷大厦(太阳宫中路) 1001', '2021-03-16 09:50:49');
INSERT INTO `zhiwei` VALUES (23, '赋算通', '视觉设计', 'UI设计实习', '实习', '3', '5', '上海', '应届毕业生', '本科', '五险一金，带薪年假，餐补，通讯补贴', '岗位职责：\r\n1、根据产品原型进行网页（PC端、手机端）的美术创意和界面设计，按策划方案和网页设计规范进行网页视觉设计；\r\n２、 对网站进行整体的界面设计，交互设计；\r\n３、 协助跟进产品设计、开发和上线整个过程，跟进设计还原度，保障产品设计品质的有效落地；\r\n４、 根据开发需要，输出UI标注和切图。\r\n５、领导安排的其他工作。\r\n \r\n任职资格：\r\n1、统招艺术设计类专业本科或研究生学历，有PC端设计经验者优先；\r\n2、精通PS、AI、AE、Sｋｅｔｃｈ等主流设计软件；\r\n3、了解网页PC和移动端切图，了解网页（PC和移动端）的设计规范，了解UI样式标注原理，熟悉Pxcook等自动化标注工具；\r\n4、较强的设计能力和深厚的美术功底，良好的色彩把控和整体构成能力，可独立完成整个网页设计。\r\n５、善于与人沟通，良好的团队合作精神和高度的责任感，保证工作质量，能承受一定的工作压力', '上海浦东新区银东商务中心13C', '2021-03-17 10:45:22');
INSERT INTO `zhiwei` VALUES (24, '链家', '销售', '销售经理', '全职', '5', '10', '杭州', '应届毕业生', '本科', '补充医疗保险，定期体检，带薪年假，节日福利', '1．薪资待遇：绝对优于同行业！\r\n新入职员工：无责任底薪5000-6000（最长可达6个月）；新人可以实习，可以无经验，有师傅一对一辅导成长；\r\n转正后：35-70%高额提成，上不封顶，带薪年假；\r\n2．惊喜连连：五险二金（公积金自选+员工互助金）+各种现金奖励+过节福利+国内游、境外游；\r\n3．带薪培训：公司提供免费系统完善的培训，助您全面提升个人能力\r\n4．晋升通道：一种是凭借个人的实力，按能力享受职级，每月都有晋升机会。还有一种是你到了一定等级，不一定是最好的，公司会给予你锻炼的机会。这个取决于你平时的表现。所有管理岗位均从员工内部提拔产生：经纪人～店经理～商圈经理～大区总监～分公司总经理~杭州总经理。\r\n5．业务模式：多样化，财富化。我们打破传统意义上的业务划分，员工可以自行选择买卖、租赁等业务线\r\n6．资源共享，团队作战。公司资源平台多元化，房源共享，优秀的团队帮助你快速成长\r\n7. 我们是一支优秀的团队，照顾新来的朋友是我们义不容辞的传统文化，没有职级间的代沟，有意见可以反馈，我们有专门的反馈途径，保护你的个人隐私。在业务中我们非常重视资源外泄，一经发现，会根据你情况做相应的处罚，我们有相应的黑红黄线制度对应事情的严重性。我们每个月都会有团建，每个月都回去不同的地方吃喝玩乐，放松一下。每个礼拜会有一天休息时间，时间可以调换，但是需要跟上级申请。一般都是可以的，如果只是很小的事情在开动员大会这种日子休息，一般不予批准。公司比较人性化管理，如有业务上的严格要求，也是希望你能成长，在这个环境下得到你想要的，公司不会对每一个人放弃。如果你遇到瓶颈，你可以找师傅或者商圈经理，如果你认为他们帮不到你，你可以找更上一级的总监，以此类推。公司的作战方针是培养每一个链家人，如果你自己放弃自己，一直堕入，那我们也没有神丹妙药能解救你。一切都需要你自己首先具备好强的学习态度，强加在你身上的方法经验如同负担。自己挣到钱了，可以跟上级申请额外的假期，带家人旅游度假。不用担心你是新人就得不到资源，我们有平台会给予你，还有那些同事，师傅，经理都会无私帮助。我们链家打造的就是好口碑，优秀的文化。这样一个公司才能走的更长远。最后我们欢迎每一位热爱工作的人来面试，欢迎你成为我们其中一员。', '杭州市 下城区 凤起都市花园 凤起路177号', '2021-03-17 10:54:00');
INSERT INTO `zhiwei` VALUES (25, '猿辅导', '后端开发', 'Python助教', '全职', '6', '10', '上海', '应届毕业生', '本科', '五险一金，补充医疗保险，定期体检，加班补助，年终奖', '您需要做的是： \r\n1.辅导：提醒到课，跟课；课后问题解答，督促作业。\r\n2.服务：运营班级群，解答家长的问题，汇总孩子的学习结果。\r\n3.续报：课程周期8-12个月，1年续报1次。\r\n我们希望您：\r\n1.【统招本科】以上学历（接受大四全职应届生）；\r\n2.性格外向开朗，擅长与人沟通，普通话标准，表达流畅；\r\n3.有一定的教育情怀，喜欢小朋友，有服务意识；\r\n4.能够接受带有部分销售性质的工作；\r\n5.计算机相关专业优先，精通任一门编程语言；如有开发相关经验，了解Python更好（我们提供入职带薪技术培训）；', '上海市浦东新区上钢一村', '2021-03-18 11:02:46');
INSERT INTO `zhiwei` VALUES (26, '雅昌集团', '产品经理', '产品助理实习生', '实习', '3', '4', '北京', '应届毕业生', '本科', '五险一金，年终奖，股票期权，带薪年假，交通补助', '商业产品-产品助理（实习生）\r\n1、互联网业务单元线上业务系统跟进，关联商业管理事项辅助处理；\r\n2、对部门产品项目、商业项目进行项目计划制定项目进度管理；\r\n3、艺术行业商业端动向监测、B端商业客户动向跟踪，形成舆情反馈信息，辅助产品与商业发展策略推进；\r\n4.部门其他事务性工作', '北京顺义区北京雅昌艺术中心金马园区(北2门)达盛路3号', '2021-03-18 14:01:36');
INSERT INTO `zhiwei` VALUES (27, '壹沓科技', '后端开发', 'Python软件开发实习生', '实习', '4', '6', '上海', '应届毕业生', '本科', '五险一金，年终奖，股票期权，带薪年假', '【工作职责】\r\n1、参与数字机器人项目组件开发和维护；\r\n2、完成开发任务，完成软件的单元测试，并配合完成整个系统的集成测试；\r\n【任职资格】\r\n1、计算机、信息、通信、数学相关专业本科及以上学历；\r\n2、熟悉面向对象编程；\r\n3、具有良好的沟通协调能力、团队协作精神；\r\n4、具备一定的抗压能力、应变能力和学习能力，有强烈的责任心、勤奋好学、热爱生活、热爱技术。\r\n【加分项】\r\n. RPA行业从业者优先考虑。\r\n. 熟悉 Pandas、Numpy；\r\n. 熟悉 Qt5、pywin32；\r\n. 熟悉 C/Cpp、Java、Rust；', '上海静安区电气文通·709媒体园区64号3楼壹沓科技', '2021-03-18 15:35:20');
INSERT INTO `zhiwei` VALUES (28, '招联消费金融', '用户研究', '数据分析经理 ', '全职', '15', '28', '深圳', '不限', '本科', '五险一金，定期体检，年终奖，带薪年假', '岗位职责:\r\n1. 从产品、运营与市场的角度,运用数据挖掘/统计学的理论和方法解决项目工作实际问题；\r\n2. 从数据中挖掘潜在的问题和价值，规划、设计基于客户增长的解决方案；\r\n3. 承接业务方的数据分析需求，进行业务数据统计与分析，解决业务问题；\r\n4. 根据业务发展需求，统筹设计业务指标与业务报表，并跟踪管理业务报表体系 ；\r\n5. 协助推动相关业务流程、制度、系统改善优化；\r\n6. 及时完成上级交付的其他工作事项。\r\n任职资格:\r\n1. 本科及以上学历，计算机、统计学、应用数学或财务管理专业毕业；\r\n2. 三年以上数据分析与挖掘工作经验，并具有海量数据挖掘和分析项目经验，有实际挖掘应用案例优先；\r\n3. 具有互联网或金融行业从业经验，市场、经营或风险分析经验优先；\r\n4. 熟练掌握数据挖掘或统计学习的基础理论和方法，至少精通R、PYTHON、SAS等工具其中一项；\r\n5. 拥有良好的逻辑分析和沟通协调能力，具有创新意识，工作细致严谨，具有高度的责任感和较强的执行能力。', '深圳市 南山区 科兴科学园', '2021-03-30 10:37:06');
INSERT INTO `zhiwei` VALUES (29, '软通动力', '运营', '游戏运营', '全职', '8', '13', '杭州', '1-3年', '大专', '五险一金，团建活动，股票期权，带薪年假', '岗位职责：\r\n负责PC大厅游戏运营工作，包含但不限于：\r\n1、设计针对性的平台运营活动，并跟进活动效果，对活动形式进行持续优化，保证资源得到合理利用，达成运营指标。\r\n2、关注用户需求细节，根据平台周期来思考活动方式，与PM共同完成活动设计。\r\n岗位要求：\r\n1、热爱游戏，有丰富的游戏试玩经历，对游戏活动和平台活动有一定的经验者优先；\r\n2、对数据敏感有一定的分析能力，有敏锐的洞察力和快速学习能力； 进取心强，有强烈的责任感；\r\n3、优秀的沟通协作能力，具备较好的沟通技巧与推动力，能承担多线程的沟通工作，较强的逻辑思维能力和总结沉淀能力；\r\n4、团队合作意识强、工作认真负责，稳定性高，抗压能力强。', '杭州市 西湖区 阿里云飞天园区', '2021-03-30 11:25:02');
INSERT INTO `zhiwei` VALUES (30, '绿米联创', '市场/营销', '市场策划实习生', '实习', '3', '4', '深圳', '不限', '本科', '五险一金，年终奖，股票期权，带薪年假', '工作职责\r\n1- 协助节点营销、事件营销等内容创意策划；\r\n2- 协助宣传物料的文案撰写；\r\n3- 协助项目执行落地；\r\n4- 追踪和分析项目效果，协助输出复盘报告；\r\n5- 关注热点内容、掌握行业动态，收集整理市场资料并输出分享；\r\n6- 与小组其他成员积极配合。\r\n任职要求\r\n1- 本科及以上学历，中文、新闻、广告学及市场营销等相关专业优先；\r\n2- 良好的文字功底，对社会热点敏感、有不错的洞察力并能独立思考；\r\n3- 积极主动、细心负责；\r\n4- 执行力强、乐于学习；\r\n5- 富有团队意识。\r\n此岗位属于实习岗位，可开实习证明，有实习补贴。希望在校生申请，每周可固定来公司上班三日以上。', '深圳南山区深圳绿米联创科技有限公司801', '2021-03-30 12:07:38');
INSERT INTO `zhiwei` VALUES (31, '多比特', '产品经理', '游戏策划', '全职', '15', '30', '武汉', '3-5年', '本科', '五险一金，年终奖，节日福利，带薪年假', '我们需要你来：\r\n1、根据游戏的核心玩法，对游戏内容进行细节设计；\r\n2、负责撰写游戏开发的策划文档、功能需求、美术风格的制定；\r\n3、负责与技术人员进行沟通需求，落实游戏设计具体需求的实施；\r\n4、研究学习其他同类或不同类产品，提出新的创意、游戏交互方式，对目前游戏提出优化方案；\r\n5、收集产品反馈，关注游戏产品数据，同时不断改进产品方案。\r\n我们希望你是：\r\n1、三年以上游戏策划或相关工作经验，全日制本科以上学历；\r\n2、有严密的逻辑思维和较强的抗压能力；\r\n3、深入了解休闲类游戏或对休闲游戏有研究；\r\n4、工作态度严谨，注重细节，善于沟通，不固执己见；\r\n5、计算机、数学或设计类相关专业优先。', '武汉市 洪山区 光谷软件园F区 F3栋6楼', '2021-03-30 12:17:43');
INSERT INTO `zhiwei` VALUES (32, '菜鸟直送', '行政', '行政后勤主管', '全职', '7', '9', '武汉', '3-5年', '大专', '五险一金，带薪年假，年终奖，餐补', '工作内容：\r\n1、执行公司人事政策，负责转运中心员工关系处理，如入职、离职、异动、社保\r\n相关、考勤相关、合同及劳动者法律相关工作；协助转运负责人实施团队建设活动；\r\n2、负责转运中心后勤管理，如固资和生产设备管理、办公耗材、水电网需求、维养、盘点、安全检查管理；嗯\r\n3、负责转运中心非现场业务的流程执行工作。\r\n4、协助转运负责人处理部门内外关系\r\n任职资格：\r\n1、3年以上人事行政后勤工作，1年以上行政主管工作经验；\r\n2、原则性和灵活性兼具，高情商，较强的责任心和敬业精神，良好的组织协调能力及沟通能力；\r\n3、熟练使用办公软件和办公自动化设备；\r\n4、会开车、有物流公司担任同类职位优先。', '武汉江夏区菜鸟网络(武汉江夏园区1期)菜鸟物流园1期三号库', '2021-03-30 12:22:43');
INSERT INTO `zhiwei` VALUES (34, '老杨', '视觉设计', 'UI设计师', '全职', '13', '20', '杭州', '3-5年', '大专', '五险一金，年终奖，加班补助，带薪年假', '岗位职责：\r\n1、独立负责平台的业务线，快速深⼊业务、梳理业务和⽤户流程关系，为⽤户体验的设计制定明确的⽬标并输出⽅案；\r\n2、根据产品需求，结合用户研究和数据分析对需求中的信息架构、业务流程进行规划和设计，完善设计细节，结合合理的解决方案，提高产品易用性；\r\n3、持续关注最新的产品动态和前沿的设计风格，愿意总结和沉淀经验分享给团队成员。\r\n任职资格:\r\n1、3年以上互联网公司工作经验，可以独立完成整个设计方案设计，且有成功的项目经验；\r\n2、有较深的美术功底、良好的审美观，精通Photoshop、AI、sketch、AE等设计软件；\r\n3、有较好的团队意识及沟通能力，能以自己的专业性去附能需求方，更好的达到目标；\r\n4、有较强的抗压能力、自我驱动意愿；\r\n5、应聘需提供相关作品。', '杭州滨江区东冠·恒鑫大厦588号17-18楼', '2021-03-31 09:44:01');
INSERT INTO `zhiwei` VALUES (35, '小米', '前端开发', '高级web前端工程师', '全职', '30', '40', '北京', '3-5年', '本科', '五险一金，带薪年假，年终奖，餐补', '【岗位职责】\r\n- 负责集团新零售、智能制造、企业应用等业务前端/客户端开发\r\n- 围绕中台系统、办公自动化等领域构建大前端开发生态，包括但不限于通用组件库、低代码平台、跨端开发等方案落地\r\n- 持续优化现有大前端技术体系，积累和分享最佳开发实践\r\n【任职要求】\r\n-具备 3 年以上工作经验\r\n-熟练掌握小程序/Web端开发体系：React / RN / Electron / node.js 等\r\n-熟练使用 Mac 环境进行开发，掌握 git、shell 等必备技能\r\n-具有高效团队协作的能力，关注前端领域发展；\r\n-具有良好的英语听说读写能力\r\n-熟悉至少一门后端语言：Java / Go 等\r\n加分项：\r\n- 认同小米公司文化、价值观，如果你是米粉，小米欢迎你\r\n- 有复杂小程序、中台系统项目开发经验\r\n- 具备良好的美学感知，关注 UE、UI 设计\r\n- 极客精神，代码洁癖偏执狂\r\n工作环境：\r\n- 全额五险一金 + 补充保险、餐补\r\n- 餐厅、健身区、班车（目前仅限北京）等\r\n- 大前端团队标配 iMac 27\" + DELL 显示器', '北京市 海淀区 小米移动互联网产业园', '2021-03-31 11:43:40');
INSERT INTO `zhiwei` VALUES (36, '招联消费金融', '后端开发', 'Java开发工程师', '全职', '12', '18', '深圳', '3-5年', '本科', '五险一金，带薪年假，年终奖，零食下午茶', '岗位职责:\r\n1. 负责互联网金融后台服务系统开发；\r\n2. 负责资金，催收，营销，数据分析，实时数据分析等相关系统开发；\r\n3. 与产品经理、业务部门协同配合，参与系统设计与开发，并最终上线；\r\n4. 参与design & code review，指导初级工程师工作；\r\n5. 参与团队技术交流和分享活动，促进团队共同进步。\r\n任职资格:\r\n1. 本科以上学历，计算机相关专业，3-5年开发工作经验；\r\n2. 熟练掌握 Java 及面向对象设计开发，对部分 Java 技术有深入研究，研究过优秀开源软件的源码并有心得者优先；\r\n3. 熟悉 SOA 架构理念、实现技术；熟悉常见设计模式，熟练掌握 Spring、SpringMVC，myBatis 等框架，对Dubbo，Hessian等有使用经验优先；\r\n4. 熟练掌握 MySQL 应用开发、数据库原理和常用性能优化和扩展技术，以及 NoSQL，Queue 的原理、使用场景以及限制；\r\n5. 研究过 http 协议、缓存、jvm 调优、序列化、nio、RPC 调用框架等，有相应实践经验者优先；\r\n6. 参与过大型复杂分布式互联网系统的设计开发者优先；\r\n7. 对业务运营系统有开发经验者亦可（前后台均能开发者尤佳）。', '深圳南山区科兴科学园A座A4栋18F', '2021-04-02 14:08:03');
INSERT INTO `zhiwei` VALUES (37, '壹沓科技', '后端开发', 'Python数据开发工程师', '全职', '15', '20', '上海', '1-3年', '本科', '五险一金，带薪年假，年终奖，节日福利', '岗位职责：\r\n负责本公司AI与创新部门中机器学习模型工程化相关工作以及部分规则化的文本处理算法模型开发工作，主要负责nlp工程师构建的算法模型进行性能测评，多线程优化，服务化api封装，并完成Docker服务构建，部署配置，运行监测等。并协助部门进行大数据文本处理，计算环境构建与管理。\r\n岗位技能要求\r\n有1年以上专职数据或文本挖掘业务的python后端开发经验，\r\n有扎实的独立restful服务实现、部署、运行管理全流程经验\r\n熟悉流行的中文nlp工具包jieba hanlp nltk的常规使用等，\r\n熟悉mysql，elasticsearch，neo4j等数据库服务的构建与配置，\r\n对机器学习和数据科学有热情与兴趣，\r\n对生产环境运行问题有日志分析能力，\r\n有较强的团队协作沟通能力。', '上海静安区电气文通709媒体园区71号楼2楼', '2021-04-02 14:27:22');
INSERT INTO `zhiwei` VALUES (38, '联想集团', '产品经理', '产品经理', '全职', '8', '12', '北京', '1-3年', '本科', '五险一金,补充医疗保险,定期体检,年终奖', '岗位职责：1、负责手机产品策略制定以及产品市场机会信息收集、分析、评估，完成既定销售目标；\r\n2、负责手机产品的导入；\r\n3、负责产品营销方案的设计；\r\n4、负责产品线的销量预测、经营预估、资源测算及价格管控；\r\n5、负责上游产品的供应协调及保证；\r\n6、负责对终端的销售指导；\r\n7、负责运营商对接；\r\n8、负责产品的售后政策制定；\r\n9、领导交办的其他事宜。\r\n任职要求：必须： 熟悉手机行业，熟知产品及运营商策略，有零售连锁企业管理经验。\r\n常规：\r\n1、熟悉手机产品配置和技术、规格，及市场主流产品的产品配置和规格。\r\n2、大学本科（含）及以上学历，英语 4级及以上。熟练使用Excel、PPT等办公软件。\r\n3、良好的沟通协调能力，能够跨职能、跨部门的沟通协调资源\r\n3、熟悉店面运营流程及日常管理，有店面运营及管理经验者优先。\r\n4、熟悉联想内部产品、营销及运作流程者优先。\r\n5、有通讯类产品零售连锁企业营销管理及运营经验者优先。', '北京市 海淀区 联想总部园区 W6', '2021-04-02 14:45:53');
INSERT INTO `zhiwei` VALUES (39, '小牛互娱', '后端开发', 'PHP开发工程师', '全职', '18', '30', '上海', '3-5年', '大专', '五险一金，带薪年假，年终奖，全勤奖', '岗位职责：\r\n1、负责PHP后端代码编写，能独立完成开发任务；\r\n2、设计技术方案，表设计，研究和解决技术难题；性能调优。\r\n岗位要求：\r\n1、大专及以上学历，3年以上PHP互联网相关项目开发经验；\r\n2、熟练使用PHP，熟悉MySQL的设计及查询优化技巧，熟悉Linux+Nginx环境；\r\n3、熟悉至少一种PHP框架，如ThinkPHP、Laraval等；\r\n4、掌握HTML、CSS、JS、AJAX等Web前端技术者优先；\r\n5、具备较强的责任心和良好的沟通表达能力、团队合作意识；\r\n6、能独立完成领导安排的相关任务，学习能力强，有较强的分析问题、解决问题能力；\r\n7、勤奋好学，乐观向上，不甘平庸，积极进取。', '上海市浦东新区星创科技广场1号楼 5楼', '2021-04-02 14:56:19');
INSERT INTO `zhiwei` VALUES (40, '鸿文教育', '前端开发', '前端工程师', '全职', '4', '8', '鞍山', '1-3年', '大专', '五险一金，带薪年假，年终奖，全勤奖', '岗位职责： \r\n1.负责Web前端框架核心代码的开发，通用模块的搭建与维护；\r\n2、理解后端架构，与后端工程师配合，为项目提供最优化的技术解决方案；\r\n3、同测试人员沟通，协助编写功能测试和性能测试用例。\r\n任职要求：\r\n1、计算机及相关专业毕业，本科及以上学历；\r\n2、三年以上前端开发经验，熟悉HTTP协议，精通掌握Html5、CSS、JavaScript、Ajax、Json等Web页面技术，熟悉前后台数据交互；\r\n3、熟悉模块化、组件化的前端开发方式，熟悉组件间的事件机制，使用过Sea.js等模块加载器优先；\r\n4、较为系统的掌握前端框架，如jQuery、Bootstrap等，具备实际项目经验；\r\n5、熟悉各种流行的浏览器的版本差别和各自特点；\r\n6、能编写风格良好的代码，对前端性能优化有一定见解；\r\n具备良好的学习能力、沟通能力、分析及解决问题能力，优秀的团队协作精神。', '鞍山市 立山区 辽宁科技大学-科大科技园 四层', '2021-04-02 15:14:54');

SET FOREIGN_KEY_CHECKS = 1;
