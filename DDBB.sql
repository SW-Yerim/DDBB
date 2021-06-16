/*  *********************************
              product TABLE
    ********************************* */
CREATE TABLE product (
    proName VARCHAR2(50) PRIMARY KEY,
    proPrice NUMBER,
    proImg VARCHAR2(100),
    proContentImg VARCHAR2(100),
    proCategory VARCHAR2(50),
    proSales NUMBER
);
INSERT INTO product VALUES (
    'CC»§', 
    2, 
    'resources/images/product/temp3.png', 
    'resources/images/product/temp2.png', 
    '»÷µåÀ§Ä¡',
    0
);
SELECT * FROM product;
SELECT * FROM product WHERE proCategory='°£½Ä¿ë»§';
SELECT * FROM product WHERE proName LIKE '%B%';
SELECT * 
    FROM (
        SELECT ROWNUM NUM
                , A.*
            FROM (
                SELECT * 
                FROM product
                WHERE proName LIKE '%B%'
                ORDER BY proPrice DESC
            ) A
        )
WHERE NUM BETWEEN 0 AND 10;
COMMIT;




/*  *********************************
          product Review TABLE
    ********************************* */
CREATE TABLE productReview (
    proReviewNum NUMBER PRIMARY KEY,
    proReviewOrderNum NUMBER,
    proReviewProName VARCHAR2(50),
    proReviewUserId VARCHAR2(50),
    proReviewUserName VARCHAR2(50),
    proReviewScore NUMBER,
    proReviewImg VARCHAR2(100),
    proReviewContent VARCHAR2(500),
    proReviewDate DATE DEFAULT sysdate
);
CREATE SEQUENCE productReview_seq START WITH 1 INCREMENT BY 1;
INSERT INTO productReview VALUES (
    productReview_seq.nextval,
    001,
    '¿ìÀ¯½Ä»§',
    'hong',
    'È«±æµ¿',
    3,
    'resources/images/product/temp2.png',
    'Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! Good~! ',
    sysdate
);
SELECT * FROM productReview;
SELECT * 
    FROM productReview 
    WHERE proReviewOrderNum=1 AND proReviewproname='¿ìÀ¯½Ä»§';
DELETE FROM productReview WHERE proReviewUserId='hong';
COMMIT;


/*  *********************************
            product QnA TABLE
    ********************************* */
CREATE TABLE productQna (
    proQnaNum NUMBER PRIMARY KEY,
    proQnaProName VARCHAR2(50),
    proQnaTitle VARCHAR2(50),
    proQnaContent VARCHAR2(500),
    proQnaUserName VARCHAR2(50),
    proQnaUserId VARCHAR2(50),
    proQnaDate DATE DEFAULT sysdate,
    proQnaAnswer VARCHAR2(50),
    proQnaSecret NUMBER 
);
CREATE SEQUENCE productQna_seq START WITH 1 INCREMENT BY 1;
INSERT INTO productQna VALUES(
    productQna_seq.nextval,
    '½Ä»§',
    'ggg',
    '¤±¤±¤±¤±¤±¤±¤±¤±¤±',
    'È«±æµ¿',
    'hong',
    sysdate,
    null,
    0
);
SELECT * FROM productQna;
SELECT * FROM productQna WHERE proQnaProName='½Ä»§';
SELECT * FROM productQna WHERE (proQnaTitle || proQnaContent) LIKE '%a%';

ALTER SESSION SET nls_date_format='YYYY-MM-DD';
COMMIT;




/*  *********************************
                cart TABLE
    ********************************* */
CREATE TABLE cart (
    userId VARCHAR2(50) not null,
    proName VARCHAR2(50) not null,
    proPrice NUMBER not null,
    proImg VARCHAR2(100) not null,
    addAccount NUMBER not null
);
INSERT INTO cart VALUES ('hong', 
                        '½Ä»§', 
                        1500,
                        'resources/images/product/temp2.png', 
                        10
);
SELECT * FROM cart;
COMMIT;
DROP TABLE cart;




/*  *********************************
              wish_list TABLE
    ********************************* */
CREATE TABLE wishList (
    userId VARCHAR2(50) not null,
    proName VARCHAR2(50) not null,
    proPrice NUMBER not null,
    proImg VARCHAR2(100) not null
);
INSERT INTO wishList VALUES ('hong', 
                        '½Ä»§', 
                        1500,
                        'resources/images/product/temp2.png'
);
SELECT * FROM wishList;
COMMIT;





/*  *********************************
              Order TABLE
    ********************************* */
CREATE TABLE buyOrder (
    orderProNumber VARCHAR2(50),
    orderUserId VARCHAR2(50),
    orderUserName VARCHAR2(50),
    orderDate DATE DEFAULT sysdate,
    orderProImg VARCHAR2(100),
    orderProName VARCHAR2(50),
    orderProPrice NUMBER,
    orderProAccount NUMBER,
    orderTracking NUMBER,
    orderReviewContent NUMBER
);
DROP TABLE buyOrder;
INSERT INTO buyOrder VALUES (
    11123,
    'hong',
    'È«±æµ¿',
    TO_DATE(SYSDATE, 'yyyy-mm-dd'),
    'resources/images/product/temp.png',
    '½Ä»§',
    1500,
    2,
    3,
    0
);
SELECT * FROM buyOrder;
COMMIT;
UPDATE buyOrder SET orderReviewContent=1 WHERE orderProNumber=1597567764531 AND orderProName='½Ä»§';




/*  *********************************
            OrderSimple TABLE
    ********************************* */
CREATE TABLE buyOrderSimple (
    orderProNumber VARCHAR2(50),
    orderUserId VARCHAR2(50),
    orderUserName VARCHAR2(50),
    orderDate DATE DEFAULT sysdate,
    orderProImg VARCHAR2(50),
    orderProName VARCHAR2(50),
    orderTracking NUMBER,
    orderSimTotalCost NUMBER
);
ALTER TABLE buyOrderSimple DROP COLUMN orderProPrice;
INSERT INTO buyOrderSimple VALUES (
    11122,
    'hong',
    'È«±æµ¿',
    sysdate,
    'resources/images/product/temp.png',
    '»÷µåÀ§Ä¡ ¿Ü 2°Ç',
    0,
    7000
);
DROP TABLE buyOrderSimple;
SELECT * FROM buyOrderSimple;
COMMIT;
SELECT * FROM ( 
    SELECT ROWNUM NUM , A.* FROM ( 
        SELECT * FROM buyOrderSimple 
            WHERE orderDate BETWEEN '2020-08-10' AND '2020-08-12'	
            ORDER BY orderProNumber DESC 
        ) A 
    )
WHERE NUM BETWEEN 1 AND 10;






/*  *********************************
              userInfo TABLE
    ********************************* */
CREATE TABLE userInfo (
    userId varchar2(50) not null primary KEY
    ,userPwd varchar2(50) not null
    ,userName varchar2(50)
    ,userEmail varchar2(100)
    ,userPhone varchar2(50)
    ,userAddress varchar2(500)
);
ALTER TABLE userInfo ADD(userJoinDate date default sysdate);
SELECT * FROM userInfo;
DROP TABLE userinfo;





/*  *********************************
          Admin userInfo TABLE
    ********************************* */
create table adminUser (
    adminUserNum number,
    adminUserName varchar2(50),
    adminUserId varchar2(50) not null primary KEY,
    adminUserPwd varchar2(50),
    adminUserBanner number,
    adminUserCustomer number,
    adminUserProduct number,
    adminUserOrder number,
    adminUserMaster number
);
insert into adminUser values (1,'admin','admin','admin',1,1,1,1,1);
insert into adminUser values (2,'aaa','aaa','aaa',1,0,0,0,0);
insert into adminUser values (3,'bbb','bbb','bbb',0,1,0,0,0);
insert into adminUser values (4,'ccc','ccc','ccc',0,0,1,0,0);
insert into adminUser values (5,'ddd','ddd','ddd',0,0,0,1,0);
insert into adminUser values (6,'eee','eee','eee',0,1,1,0,0);
insert into adminUser values (7,'fff','fff','fff',1,0,1,0,0);
insert into adminUser values (8,'ggg','ggg','ggg',0,1,0,1,0);
insert into adminUser values (9,'hhh','hhh','hhh',1,1,1,0,0);
insert into adminUser values (8,'iii','iii','iii',1,1,1,1,0);
SELECT * FROM adminUser;
DELETE FROM adminUser WHERE adminUserName='fff';
DROP TABLE adminUser;
COMMIT;




/*  *********************************
              Banner TABLE
    ********************************* */
create table mainbanner(
    mainbannertitle varchar2(50),
    mainbannerimg varchar2(100),
    mainbannerlink varchar2(100),
    mainbannersort number
);
COMMIT;


SELECT  'DROP TABLE ' || object_name || ' CASCADE CONSTRAINTS;'
  FROM    user_objects
WHERE   object_type = 'TABLE';