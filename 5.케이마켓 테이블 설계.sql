#일자 : 2021년 04월 20일 
# 이름 : 이진주 
#내용 : 케이마켓 쇼핑몰 테이블 설계하기


#1차 카테고리
CREATE TABLE `km_cate1` (
	`code1` TINYINT PRIMARY KEY,
	`title` VARCHAR(100)
);

INSERT INTO `km_cate1` VALUES(1,'브랜드패션');
INSERT INTO `km_cate1` VALUES(2,'패션의류·잡화·뷰티');
INSERT INTO `km_cate1` VALUES(3,'유아동');
INSERT INTO `km_cate1` VALUES(4,'식품·생필품');
INSERT INTO `km_cate1` VALUES(5,'홈테코·문구·위미·반려');
INSERT INTO `km_cate1` VALUES(6,'컴퓨터·디지털·가전');
INSERT INTO `km_cate1` VALUES(7,'스포츠·건강·렌탈');
INSERT INTO `km_cate1` VALUES(8,'자동차·공구');
INSERT INTO `km_cate1` VALUES(9,'여행·도서·티켓·e쿠폰');

#2차 카테고리
CREATE TABLE `km_cate2` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`code1`  TINYINT,
	`code2`	TINYINT,
	`title`	VARCHAR(100)
);

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,1,'브랜드 여성의류');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,2,'브랜드 남성의류');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,3,'브랜드 진/캐주얼');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,4,'브랜드 신발/가방');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,5,'브랜드 주얼리/시계');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(1,6,'브랜드 아웃도어');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,1,'여성의류');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,2,'남성의류');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,3,'언더웨어');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,4,'신발');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,5,'가방/잡화');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(2,6,'화장품/향수');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(3,1,'출산/육아');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(3,2,'장난감/완구');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(3,3,'유아동 의류');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(3,4,'유아동 신발/잡화');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(4,1,'신선식품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(4,2,'가공식품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(4,3,'건강식품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(4,4,'커피/음료');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(4,5,'생필품');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,1,'가구/DIY');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,2,'침구/커튼');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,3,'조명/인테리어');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,4,'생활용품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,5,'주방용품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,6,'문구/사무용품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,7,'악기/취미');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(5,8,'반려동물용품');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,1,'노트북/PC');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,2,'모니터/프린터');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,3,'Pc 주변기기');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,4,'모바일/태블릿');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,5,'카메라');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,6,'게임');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,7,'영상가전');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,8,'주방가전');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,9,'계절가전');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(6,10,'생활/미용가전');


INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,1,'스포츠의류/운동화');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,2,'휘트니스/수영');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,3,'구기/라켓');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,4,'골프');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,5,'자전거/보드/기타레져');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,6,'캠핑/낚시');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,7,'등산/아웃도어');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,8,'건강/의료용품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,9,'건강식품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(7,10,'렌탈서비스');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(8,1,'자동차용품');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(8,2,'공구/안전/산업용품');

INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(9,1,'여행/항공권');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(9,2,'도서/음잔/e교육');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(9,3,'공연티켓');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(9,4,'e쿠폰');
INSERT INTO `km_cate2` (`code1`,`code2`,`title`) VALUES(9,5,'상품권');


#약관
CREATE TABLE `km_terms` (
	`terms`		TEXT,
	`privacy`	TEXT,
	`location`	TEXT,
	`finance`	TEXT,
	`tax`			TEXT
);

#회원
CREATE TABLE `km_member` (
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`gender`		TINYINT,
	`hp`			CHAR(13),
	`email`		VARCHAR(100),
	`type`		TINYINT,
	`point`		INT DEFAULT 0,
	`grade`		TINYINT DEFAULT 2,
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`company`	VARCHAR(20),
	`ceo`			VARCHAR(20),
	`bizRegNum`	CHAR(12),
	`commRepNum`	VARCHAR(100),
	`tel`			VARCHAR(20),
	`manager`	VARCHAR(20),
	`managerHp`	CHAR(13),
	`fax`			VARCHAR(20),
	`ip`			VARCHAR(100),
	`leaveDate`	DATETIME,
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(20),
	`etc4`		VARCHAR(20),
	`etc5`		VARCHAR(20)
);

#포인트
CREATE TABLE `km_member_point` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(20),
	`code`	INT,
	`price`	INT,
	`point`	INT,
	`rdate`	DATETIME
);

#상품
CREATE TABLE `km_product` (
	`code`		INT(10) ZEROFILL AUTO_INCREMENT PRIMARY KEY,
	`cate1`		TINYINT,
	`cate2`		TINYINT,
	`name`		VARCHAR(100),
	`descript`	VARCHAR(100),
	`company`	VARCHAR(100),
	`seller`		VARCHAR(20),
	`price`		INT DEFAULT 0,
	`discount`	TINYINT DEFAULT 0,
	`point`		INT DEFAULT 0,
	`stock`		INT DEFAULT 0,
	`sold`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`score`		INT DEFAULT 0,
	`review`		INT DEFAULT 0,
	`thumb1`		VARCHAR(255),
	`thumb2`		VARCHAR(255),
	`thumb3`		VARCHAR(255),
	`detail`		VARCHAR(255),
	`status`		VARCHAR(20) DEFAULT '새상품',
	`dutyFree`	VARCHAR(20) DEFAULT '과세상품',
	`receipt`	VARCHAR(60) DEFAULT '발행가능-신용카드 전표, 온라인 현금영수증',
	`bizClass`	VARCHAR(20) DEFAULT '사업자 판매자',
	`origin`		VARCHAR(20) DEFAULT '국내산',
	`ip`			VARCHAR(100),
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(20),
	`etc4`		VARCHAR(20),
	`etc5`		VARCHAR(20)
);

#장바구니
CREATE TABLE `km_product_cart` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`code`		INT,
	`name`		VARCHAR(100),
	`count`		INT,
	`price`		INT,
	`discount`	INT,
	`point`		INT,
	`delivery`  INT,
	`total`		INT,
	`rdate`		DATETIME
);

#결제
CREATE TABLE `km_product_order` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`code`		INT,
	`name`		VARCHAR(100),
	`count`		INT,
	`price`		INT,
	`discount`	INT,
	`point`		INT,
	`delivery`  INT,
	`total`		INT,
	`payment`	TINYINT,
	`complete`	TINYINT,
	`rdate`		DATETIME
);

#리뷰
CREATE TABLE `km_product_review` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`code`		INT,
	`content`	VARCHAR(255),
	`uid`			VARCHAR(20),
	`rating`		TINYINT,
	`ip`			VARCHAR(20),
	`rdate`		DATETIME
);



SELECT c1.code1,c2.code2,c1.title AS tit1, c2.title AS tit2
FROM `km_cate1` AS c1
JOIN `km_cate2` AS c2
ON c1.code1=c2.code1
Order BY c1.code1,c2.code2;


#임시 조정 
UPDATE `km_product` SET `hit` = CEIL(RAND()*100);
UPDATE `km_product` SET `score` = CEIL(RAND()*5);
UPDATE `km_product` SET `sold` = CEIL(RAND()*1000);

#베스트 상품 
(SELECT * FROM `km_product` Order BY `sold` DESC LIMIT 5)
UNION

#히트상품
(SELECT * FROM `km_product` Order BY `hit` DESC LIMIT 8)
UNION
#추천상품
(SELECT * FROM `km_product` Order BY `score` DESC LIMIT 8)
UNION
#최신상품 
(SELECT * FROM `km_product` Order BY `rdate` DESC LIMIT 8)
UNION
#할인상품
(SELECT * FROM `km_product` Order BY `discount` DESC LIMIT 8);

#베스트 상품할인 
SELECT *,FLOOR( price*(1-discount/100)) AS `salePrice` FROM `km_product` Order BY `sold` DESC LIMIT 5;

SELECT c1.title AS tit1, c2.title AS tit2 FROM `km_cate1` AS c1
JOIN `km_cate2` AS c2
ON c1.code1=c2.code1
WHERE c1.code1=2 AND c2.code2=1;

SELECT a.*, b.title as tit1, c.title AS tit2, FLOOR(price *(1-discount/100)) AS `salePrice`
FROM `km_product` AS a
JOIN `km_cate1` AS b ON a.cate1 = b.code1
JOIN `km_cate2` AS c ON a.cate2=c.code1 AND a.cate2 = c.code2
WHERE `code`=62;
							    
#약관조회							    
SELECT * FROM `km_terms`;

#장바구니 목록 -> 주문하기 테이블로 이동
INSERT INTO `km_product_order` 
(`uid`,`code`,`name`,`count`,`price`,`discount`,`point`,`delivery`,`total`,`rdate`)
SELECT `uid`,`code`,`name`,`count`,`price`,`discount`,`point`,`delivery`,`total`,NOW()
FROM `km_product_cart` WHERE `seq`=IN(,);
