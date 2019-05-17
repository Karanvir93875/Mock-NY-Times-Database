create table office (
office_id number, 
r_ID number,
office_Street varchar(30),
office_City varchar(30),
office_state char(2),
office_zip char(5),
office_Country varchar(30)
foreign key(r_ID) references reporter(r_ID),
constraint office_pk primary key (office_id, r_id)
);

create table reporter_office (
r_ID number not null,
office_id number not null,
constraint reporter_office_pk primary Key(r_id, office_id) 
);

create table article(
article_ID number Primary Key,
article_title varchar(100),
publish_Date date,
article_body varchar(4000)
);

create table reporter 
(
r_ID number Primary Key,
r_FName varchar(20),
r_LName varchar(20),
r_Salary decimal(6,2)
);

create table section(
section_id number Primary Key,
article_id number,
section_type varchar(50),
foreign key (article_id) references article(article_id)
);

create table status (
status_id number Primary Key,
article_id number,
status_type varchar(50),
foreign key (article_id) references article(article_id)
);

create table topic (
topic_id number Primary Key,
article_id number,
topic_type varchar(50),
foreign key (article_id) references article(article_id)
);

create table photo (
photo_id number Primary Key,
article_id number,
photo_path varchar(50),
foreign key (article_id) references article(article_id)
);

create table reporter_article (
article_id references article(article_id),
r_id references reporter(r_id),
constraint reporter_article_pk Primary Key (r_id, article_id)
);


create table page (
page_id number Primary Key,
page_number number,
article_id number,
foreign key (article_id) references article(article_id));

create table customer (
c_id number Primary Key,
c_first varchar(30),
c_last varchar(30),
c_email varchar(30),
c_account varchar(30),
c_payment varchar(10)
c_exp DATE
)

create table comments (
comment_id number Primary Key,
comment_text varchar(30),
comment_date DATE
)

create table articleRead (
read_id number Primary Key,
readDate DATE,
readNum number,
article_id number,
c_id number,
foreign key(c_id) references customer(c_id),
foreign key(article_id) references article(article_ID)
);


