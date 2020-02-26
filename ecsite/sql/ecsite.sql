set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite_im;

create database if not exists ecsite_im;
use ecsite_im;

drop table if exists login_user_transaction;

create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	login_pass varchar(16),
	user_name varchar(50),
	insert_date datetime,
	updated_date datetime,
	admin_flg varchar(1)
);

drop table if exists item_info_transaction;

create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);

INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("グレープフルーツ",100,60);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("デコポン",200,40);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("甘夏",300,30);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("梅",100,50);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("オレンジ",100,70);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("パイナップル",400,20);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("さくらんぼ",500,10);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("スイカ",2500,10);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("マンゴー",1500,20);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("桃",400,10);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("バナナ",100,50);
INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("メロン",3000,5);

INSERT INTO login_user_transaction(login_id,login_pass,user_name,admin_flg)VALUES("admin","admin1","adminID","1");
INSERT INTO login_user_transaction(login_id,login_pass,user_name,admin_flg)VALUES("internous","internous01","test","0");
