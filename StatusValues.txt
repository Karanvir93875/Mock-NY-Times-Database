insert into status
values(status_seq.nextval, 300, 'Draft' )

insert into status
values(400, 301, 'Published' )

insert into status
values(400, 302, 'Published' )

insert into status
values(400, 304, 'Published' )

insert into status
values(400, 303, 'Published' )

insert into status
values(400, 305, 'Published' )

insert into status
values(400, 306, 'Published' )

insert into status
values(400, 307, 'Published' )

insert into status
values(400, 308, 'Published' )

insert into status
values(400, 309, 'Published' )

insert into status
values(400, 310, 'Published' )

insert into status
values(400, 311, 'Published' )

insert into status
values(400, 312, 'Published' )

insert into status
values(400, 313, 'Published' )

insert into status
values(400, 314, 'Published' )

insert into status
values(400,315, 'Published')

insert into status
values(400,316, 'Published')

insert into status
values(400,317, 'Published')

insert into status
values(400,318, 'Published')

insert into status
values(400,319, 'Published')

insert into status
values(400,320, 'Published')

insert into status
values(400,321, 'Waiting for Approval')

update status
set status_type = 'Draft'
where status_id = 400 
and article_id = 300

