CREATE TABLE coffeebean (
    coffeecount         NUMBER(3)
                        CONSTRAINT coffeebean_count_nn NOT NULL,
    coffeename          VARCHAR2(100 char)
                        CONSTRAINT coffeebean_name_nn NOT NULL,
    coffeeprice         NUMBER(6)
                        CONSTRAINT coffeebean_price_nn NOT NULL,
    coffeehotice        VARCHAR2(10)               
);

DROP TABLE coffeebean;

INSERT INTO coffeebean (coffeecount, coffeename, coffeeprice)
VALUES ('1', 'ahah', '23132');

CREATE TABLE baguni (
    menucount   NUMBER(3)
                CONSTRAINT menucount_count_nn NOT NULL,
    menutitle   VARCHAR2(100)
                CONSTRAINT menutitle_title_nn NOT NULL,
    menuprice   VARCHAR2(100)
                CONSTRAINT menuprice_price_nn NOT NULL,
    menutotalp  VARCHAR2(100)
                CONSTRAINT menutotalp_total_nn NOT NULL,
                
    created_time    TIMESTAMP default sysdate
);


INSERT INTO baguni (menucount, menutitle, menuprice, menutotalp)
VALUES ('2', '아아', '4000', '1');

COMMIT;
