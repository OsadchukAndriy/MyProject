use sys;


CREATE TABLE sys.member
(
    uname VARCHAR(45) NOT NULL PRIMARY KEY,
    password VARCHAR(450) NOT NULL ,
    email VARCHAR(45) NOT NULL ,
    phone VARCHAR(45) NOT NULL

);

insert into member  values('volya', 'dva','@','03');
insert into member  values('admin', 'admin','','');
insert into member  values('andri', 'andri','andrii@com','80987876567', '');



ALTER DATABASE sys CHARACTER SET utf8 COLLATE utf8_general_ci;
 ALTER DATABASE sys CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


##############################################Periodicals

drop table if exists periodicals;
CREATE TABLE sys.periodicals
(
    periodicals_id   INT  NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(75) NOT NULL,
    price int NOT NULL ,
    type VARCHAR(45) NOT NULL ,
    description VARCHAR(450) NOT NULL

);
insert into sys.periodicals (name, price, type, description) values('The New York Times','15','Daily newspaper','American daily newspaper based in New York City with a worldwide readership');


#################CREATE ORDER


drop table if exists sys.orders;
CREATE TABLE sys.orders
(
    order_id INT  NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    periodicals_id   INT  NOT NULL ,
    username VARCHAR(75) NOT NULL

);



############### money          #################################################













drop table if exists sys.money;
CREATE TABLE sys.money
(
    username varchar(50)  NOT NULL  PRIMARY KEY,
    money   INT  NOT NULL
);


ALTER TABLE member
    ADD isBlocked varchar(5);

ALTER TABLE sys.member MODIFY isBlocked varchar(10);


