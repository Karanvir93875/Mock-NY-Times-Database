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
comment_text varchar(1000),
comment_date DATE,
article_id number,
c_id number,
foreign key (c_id) references customer(c_id),
foreign key (article_id) references article(article_id) 
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
