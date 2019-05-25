alter table topic
drop primary key

alter table topic
add primary key(topic_id, article_id)

Q3

select topic_type"topic"
from topic
where article_id not in (select article_id
from article
where publish_date >= date '2019-01-01');

update topic 
set topic_type = 'null'
where topic_id = 730 

Q11

update reporter_office
set office_id = 201
where r_id in (select r_id 
from reporter_office
where office_id = 204);

delete from reporter_office
where office_id = 204;

delete from office
where office_id = 204;

Q7
select r_FName, r_LName
from reporter, office, reporter_office
where reporter.r_id = reporter_office.r_id
and office.office_id = reporter_office.office_id
and office.office_state = 'CA' in (select
from article

update status
set status_type = 'Draft'
where article_id = 315

q7

select r_FName, r_LName
from reporter, office, reporter_office
where office.office_id = reporter_office.office_id
and office.office_state = 'CA'
and r_id in (select r_id 
from reporter_article
where article_id in (select article_id 
from article
where publish_date > date '2018-11-12'
and article_id in (select article_id
from status 
where status_type = 'draft'))) 
order by r_FName;

q7

select r_FName, r_LName
from reporter 
where r_id in (select r_id 
from reporter_office 
where office_id in (select office_id 
from office 
where office_state = 'CA'))
and r_id not in (select r_id 
from reporter_article
where article_id in (select article_id 
from status 
where status_type = 'draft' 
and publish_date >= to_date('04/03/2019','mm/dd/yyyy')))                                                                              
order by r_FName;

q11
delete from reporter_office
where office_id = 204;

delete from office
where office_id = 204;
