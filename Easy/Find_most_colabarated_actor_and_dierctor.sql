-- table creating in postgres
create table actor ( actor_id int Not Null, director_id int NOT NULL, time_stamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP) ;


-- Sample record
insert into actor(actor_id,director_id )
values(1,1),
(1,1),
(1,1),
(1,2),
(1,2),
(2,1),
(2,1);


-- select dierctor and actor who associated to gether 3 or more time
select actor_id, director_id from actor group by actor_id,director_id having count(*) >=3;
