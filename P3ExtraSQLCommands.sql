/* SQL COMMANDS TO TEST 
READLOCKING, WRITELOCKING, AND DEADLOCKING */

alter table customer
add c_status varchar(30) 

update customer
set c_status = 'Active'

/* Q9

30 rows deleted. */

insert into topic
values(topic_seq.nextval, 312, 'Lunch')

insert into topic
values(topic_seq.nextval, 314, 'Celebrity')

insert into topic
values(topic_seq.nextval, 310, 'Bills')

insert into topic
values(topic_seq.nextval, 307, 'Sounds')

insert into topic
values(topic_seq.nextval, 302, 'Appliances')

/* Q10 */
Create Table NewArticle 
as Select * from Article;
Commit;
  
Create Table NewReporter_Article
as Select * from Reporter_Article
commit;

/* Q11 */
alter table customer
add c_pw varchar(50) 
