#일자 : 2021/03/24
#이름 : 이진주 
#내용 : SQL 실습하기

#직원테이블 생성
CREATE TABLE `MEMBER`(
`uid` VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(10),
`hp` CHAR(13),
`pos` VARCHAR(10),
`dep` TINYINT,
`rdate` DATETIME
);

#부서 데이블 생성하기 
CREATE TABLE `DEPART`(
`depNo` TINYINT PRIMARY KEY,
`name` VARCHAR(10),
`tel` CHAR(12)
);

CREATE TABLE `SALE`(
`seq` 	INT AUTO_INCREMENT PRIMARY KEY,
`uid`		VARCHAR(10),
`year`	YEAR,
`month`	TINYINT,
`sales`	INT
);

INSERT INTO `MEMBER` VALUES('a101','박혁거세','010-1234-1001','부장',101,NOW());
INSERT INTO `MEMBER` VALUES('a102','김유신','010-1234-1002','차장',101,NOW());
INSERT INTO `MEMBER` VALUES('a103','김춘추','010-1234-1003','사원',101,NOW());
INSERT INTO `MEMBER` VALUES('a104','장보고','010-1234-1004','대리',102,NOW());
INSERT INTO `MEMBER` VALUES('a105','강감찬','010-1234-1005','과장',102,NOW());
INSERT INTO `MEMBER` VALUES('a106','이성계','010-1234-1006','차장',103,NOW());
INSERT INTO `MEMBER` VALUES('a107','정철','010-1234-1007','차장',103,NOW());
INSERT INTO `MEMBER` VALUES('a108','이순신','010-1234-1008','부장',104,NOW());
INSERT INTO `MEMBER` VALUES('a109','허균','010-1234-1009','부장',104,NOW());
INSERT INTO `MEMBER` VALUES('a1010','정약용','010-1234-1010','사원',105,NOW());
INSERT INTO `MEMBER` VALUES('a1011','박지원','010-1234-1011','사원',106,NOW());


INSERT INTO `DEPART` VALUES(101,'영업1부','051-512-1001');
INSERT INTO `DEPART` VALUES(102,'영업2부','051-512-1002');
INSERT INTO `DEPART` VALUES(103,'영업3부','051-512-1003');
INSERT INTO `DEPART` VALUES(104,'영업4부','051-512-1004');
INSERT INTO `DEPART` VALUES(105,'영업5부','051-512-1005');
INSERT INTO `DEPART` VALUES(106,'영업지원부','051-512-1006');
INSERT INTO `DEPART` VALUES(107,'인사부','051-512-1007');


INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES('a101',2018,1,98100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2018,1,136000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a103',2018,1,80100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a104',2018,1,78000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a105',2018,1,93000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a101',2018,2,23500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2018,2,126000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a103',2018,2,18500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a105',2018,2,19000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a106',2018,2,53000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a101',2019,1,24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2019,1,109000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a103',2019,1,101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a104',2019,1,53500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a107',2019,1,24000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2019,2,160000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a103',2019,2,101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a104',2019,2,43000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a105',2019,2,24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a106',2019,2,109000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2020,1,201000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a104',2020,1,63000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a105',2020,1,74000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a106',2020,1,122000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a107',2020,1,111000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a102',2020,2,120000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a103',2020,2,93000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a104',2020,2,84000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a105',2020,2,180000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`)VALUES('a108',2020,2,76000);

#실습하기4-1
SELECT * FROM `MEMBER` WHERE `name`='김유신';
SELECT * FROM `MEMBER` WHERE `pos`='차장'AND dep=101;
SELECT * FROM `MEMBER` WHERE `pos`='차장'or dep=101;
SELECT * FROM `MEMBER` WHERE `name`!='김춘추';
SELECT * FROM `MEMBER` WHERE `name`<>'김춘추';
SELECT *	FROM `MEMBER` WHERE `pos`='사원'OR`pos`='대리';
SELECT * FROM `MEMBER` WHERE `pos`IN('사원','대리');
SELECT * FROM `MEMBER` WHERE `dep`IN(101,102,103);
SELECT * FROM `MEMBER` WHERE `name` LIKE '%신';
SELECT * FROM `MEMBER` WHERE `name` LIKE '김%';
SELECT * FROM `MEMBER` WHERE `name` LIKE '김__';
SELECT * FROM `MEMBER` WHERE `name` LIKE '_성_';
SELECT * FROM `MEMBER` WHERE `name` LIKE '정__';

SELECT * FROM `SALE` WHERE `sales`>50000;
SELECT * FROM `SALE` WHERE `sales`>=50000 AND `sales`<100000 AND `month`=1;
SELECT * FROM `SALE` WHERE `sales`>50000 BETWEEN 50000 AND 100000;
SELECT * FROM `SALE` WHERE `year`IN(2020);
SELECT * FROM `SALE` WHERE `month`IN(1,2);

#실습하기4-2
SELECT * FROM `SALE` ORDER BY sales;
SELECT * FROM `SALE` ORDER BY `sales` ASC;
SELECT * FROM `SALE` ORDER BY `sales` DESC;
SELECT * FROM `MEMBER` ORDER BY `name`;
SELECT * FROM `MEMBER` ORDER BY `name` ASC;
SELECT * FROM `MEMBER` ORDER BY `name` DESC;
SELECT * FROM 	`SALE` WHERE `sales` > 50000 ORDER BY sales DESC;
SELECT * FROM 	`SALE` WHERE `sales` >50000 ORDER BY `year`,`month`,`sales` DESC;

#실습하기4-3
SELECT * FROM `SALE`
SELECT * FROM `SALE` LIMIT 3;
SELECT * FROM `SALE` LIMIT 0,3;
SELECT * FROM `SALE` LIMIT 1,3;
SELECT * FROM `SALE` LIMIT 4,5;
SELECT * FROM `SALE` ORDER BY `sales` DESC LIMIT 3,5;
SELECT * FROM `SALE` WHERE `sales`<50000 ORDER BY `sales` DESC LIMIT 3;
SELECT * FROM `SALE` WHERE `sales`>50000 ORDER BY `sales` DESC LIMIT 5;


#실습하기4-4
SELECT SUM(`sales`) AS '합계' FROM `SALE`;
SELECT avg(`sales`) AS '평균' FROM `SALE`;
SELECT max(`sales`) AS '최댓값' FROM `SALE`;
SELECT min(`sales`) AS '최솟값' FROM `SALE`;
SELECT count(`sales`) AS '갯수' FROM `SALE`;
SELECT COUNT(*) AS '갯수' FROM `SALE`;
SELECT SUBSTRING(hp,10,4) AS '전화번호 끝자리' FROM `MEMBER`;
INSERT INTO `MEMBER` VALUES('b101','을지문덕','010-555-1234','사장',107,NOW());

#문제1 2018년 1월 매출의 총합 조회 
SELECT SUM(`sales`) AS '2018 1월 합' FROM `SALE` WHERE `year`=2018 AND `month`=1;

#문제2 2019년 2월 매출 50000원이상의 총합과 평균 조회 
SELECT SUM(`sales`)AS '총합',AVG (`sales`) AS '평균' FROM `SALE` WHERE `year`=2019 AND `month`=2 AND `sales`>=50000;

#문제3 2020년 전체 매출의 최저,최고가 조회 
SELECT MIN(`sales`) AS '2020년 매출 최저가' , MAX(`sales`) AS '2020년 매출 최고가' FROM`SALE` WHERE `year`=2020;

#실습하기4-5
SELECT *FROM `SALE` GROUP BY `uid`;
SELECT *FROM `SALE` GROUP BY `year`;
SELECT *FROM `SALE` GROUP BY `uid`,`year`;

SELECT `uid`,COUNT(*) AS '건수' FROM `SALE` GROUP BY `uid`;
SELECT `uid`,SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid`;
SELECT `uid`,AVG(`sales`) AS '평균' FROM `SALE` GROUP BY `uid`;
SELECT `uid`,SUM(`sales`) AS '합계',AVG(`sales`) AS '평균' FROM `SALE` GROUP BY `uid`;

SELECT `uid`,`year`,SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid`,`year`;
SELECT `uid`,`year`,SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid`,`year` ORDER BY `year` ASC, `합계`DESC;
SELECT `uid`,`year`,SUM(`sales`) AS '합계' FROM `SALE` WHERE `sales`>=50000 GROUP BY `uid`,`year` ORDER BY `year` DESC;


#실습하기4-6
SELECT `uid`, SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid` HAVING SUM(`sales`)>=200000;

#실습하기4-7
CREATE TABLE `SALE2` LIKE `SALE`;
INSERT INTO `SALE2`SELECT *FROM `SALE`;
UPDATE `SALE2` SET `year`=`year`+3;

SELECT *FROM `SALE` UNION SELECT*FROM `SALE2`;
#실습하기4-8

#실습하기4-9
SELECT * FROM `SALE` INNER JOIN `MEMBER` ON `SALE`.`uid`=`MEMBER`.`uid`;
SELECT a.seq,a.uid,a.sales,b.name,b.pos FROM	`SALE` AS a JOIN `MEMBER` AS b ON a.uid=b.uid;
SELECT a.seq,a.uid,a.sales,b.name,b.pos FROM	`SALE` AS a JOIN `MEMBER` AS b USING(`uid`) WHERE `sales`>=100000;
SELECT * FROM `SALE` AS a JOIN `MEMBER` AS b ON a.uid=b.uid   JOIN `DEPART` AS c  ON b.dep=c.depNo;

#실습하기4-10
SELECT * FROM `SALE` JOIN `MEMBER` ON `SALE`.uid=`MEMBER`.uid;
SELECT * FROM `SALE` left JOIN `MEMBER` ON `SALE`.uid=`MEMBER`.uid;
SELECT * FROM `SALE` right JOIN `MEMBER` ON `SALE`.uid=`MEMBER`.uid;
