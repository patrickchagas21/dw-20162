show databases;
create database <db-name>;
drop database <db-name>;

use <db-name>;
select DATABASE();
create table host(
  id int not null auto_increment,
  host varchar(100) not null,
  ip varchar(100) not null,
  primary key ( id )
);
create table history(
  id int not null auto_increment,
  transmitted int,
  received int,
  time float,
  host_id int,
  primary key ( id ),
  foreign key (host_id) references host(id)
);
rename table history to host;
show tables;
alter table history add ip varchar(100);
alter table history drop column transmitted;
describe history;

insert into history
  (host, transmitted, received, time)
  values
  ('www.ifpb.edu.br', 5, 5, 1000.0),
  ('www.ufpb.br', 5, 4, 2000.0),
  ('8.8.8.8', 5, 5, 500.0);

insert into history
  (host, transmitted, received, time)
  values
  ('www.ifpb.edu.br', 3, 3, 1000.0);

select id, host, transmitted, received, time from history;
select * from history;
select * from history where transmitted = received;
select count(*) from history where transmitted = received;
select sum(time) from history;
select id from history order by id desc limit 1;
select id from history order by id desc limit 1 offset 2;
select * from history order by time desc;
select * from history where id = 4;
select * from history where id = (select id from history order by id desc limit 1);
select * from history where transmitted = received order by host asc;

update history
  set time = 800.0
  where id = 4;

update history
  set received = 4, transmitted = 4
  where id = 4;

delete from history
  where id = 4;
