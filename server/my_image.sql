SET NAMES UTF8;
DROP DATABASE IF EXISTS my_image;
CREATE DATABASE  my_image CHARSET=UTF8;
USE my_image;

CREATE TABLE image_index(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);
INSERT INTO image_index VALUES(NULL,"image/ca1.jpg");
INSERT INTO image_index VALUES(NULL,"image/ca2.jpg");
INSERT INTO image_index VALUES(NULL,"image/ca3.jpg");
INSERT INTO image_index VALUES(NULL,"image/ca4.jpg");
INSERT INTO image_index VALUES(NULL,"image/youhuiquan.jpg");
INSERT INTO image_index VALUES(NULL,"image/home.png");
INSERT INTO image_index VALUES(NULL,"image/hat.jpg");
INSERT INTO image_index VALUES(NULL,"image/cloth.jpg");


CREATE TABLE image_second(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img1 VARCHAR(128),
    img2 VARCHAR(128)
);
#宠物蜗居图片
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro1.png","second_image/woju-pro1-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro2.png","second_image/woju-pro2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro3.png","second_image/woju-pro3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro4.png","second_image/woju-pro4-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro1.png","second_image/woju-pro1-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro2.png","second_image/woju-pro2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro3.png","second_image/woju-pro3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/woju-pro4.png","second_image/woju-pro4-1.png");
#服饰图片
INSERT INTO image_second VALUES(NULL,"second_image/colth1.png","second_image/colth1-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth2.png","second_image/colth2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth3.png","second_image/colth3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth4.png","second_image/colth4-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth1.png","second_image/colth1-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth2.png","second_image/colth2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth3.png","second_image/colth3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/colth4.png","second_image/colth4-1.png");
#清洁图片
INSERT INTO image_second VALUES(NULL,"second_image/clean1.png","second_image/clean1-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/clean2.png","second_image/clean2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/clean3.png","second_image/clean3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/clean4.png","second_image/clean4-1.png");
#美容图片
INSERT INTO image_second VALUES(NULL,"second_image/food1.png","second_image/food2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/food2.png","second_image/food2-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/food3.png","second_image/food3-1.png");
INSERT INTO image_second VALUES(NULL,"second_image/food4.png","second_image/food4-1.png");


CREATE TABLE image_third(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    price DECIMAL(9,2),
    title VARCHAR(128),
    sell  INT,
    think VARCHAR(128)
);
INSERT INTO image_third VALUES(NULL,"third_image/product1.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product2.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product6.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product9.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);

INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product6.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product1.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product2.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);

INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product9.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product6.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);

INSERT INTO image_third VALUES(NULL,"third_image/product6.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product1.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product2.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);

INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product8.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product9.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product3.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product5.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product6.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);
INSERT INTO image_third VALUES(NULL,"third_image/product7.jpg",86,"狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品",49605,10614);

#创建详情数据
CREATE TABLE image_last(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    sm_img VARCHAR(128),
    md_img VARCHAR(128),
    lg_img VARCHAR(128),
    title VARCHAR(128),
    stitle VARCHAR(128),
    price DECIMAL(9,2),
    letter VARCHAR(128),
    sell  VARCHAR(128)
);
INSERT INTO image_last VALUES(NULL,"./last_image/product1.jpg","./last_image/product1.jpg","./last_image/product1.jpg","狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品","周年大促销,优惠满减!!!",86.00,"服务承诺：*30天无忧退货 *48小时快速退款","S：长30cm适合5斤内【送凉席】,S：长35cm适合6斤内【送凉席】,S：长25cm适合4斤内【送凉席】");
INSERT INTO image_last VALUES(NULL,"./last_image/product2.jpg","./last_image/product2.jpg","./last_image/product2.jpg","狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品","周年大促销,优惠满减!!!",86.00,"服务承诺：*30天无忧退货 *48小时快速退款","S：长30cm适合5斤内【送凉席】,S：长35cm适合6斤内【送凉席】,S：长25cm适合4斤内【送凉席】");
INSERT INTO image_last VALUES(NULL,"./last_image/product3.jpg","./last_image/product3.jpg","./last_image/product3.jpg","狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品","周年大促销,优惠满减!!!",86.00,"服务承诺：*30天无忧退货 *48小时快速退款","S：长30cm适合5斤内【送凉席】,S：长35cm适合6斤内【送凉席】,S：长25cm适合4斤内【送凉席】");
INSERT INTO image_last VALUES(NULL,"./last_image/product4.jpg","./last_image/product4.jpg","./last_image/product4.jpg","狗窝可拆洗冬天保暖泰迪博美宠物小型中型大型犬金毛狗床狗狗用品","周年大促销,优惠满减!!!",86.00,"服务承诺：*30天无忧退货 *48小时快速退款","S：长30cm适合5斤内【送凉席】,S：长35cm适合6斤内【送凉席】,S：长25cm适合4斤内【送凉席】");