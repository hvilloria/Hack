drop table students;
drop table mentors;
drop table courses;

create table students(
	id int primary key auto_increment,
	vehicle bool,
	id_persons int not null unique,
	foreign key(id_persons) references persons(id)
);

create table mentors(
	id int primary key auto_increment,
	vehicule bool,
	id_persons int not null unique,
	foreign key(id_persons) references persons(id)
);



insert into mentors (id_persons) values (1);
insert into mentors (id_persons) values (2);
insert into mentors (id_persons) values (3);

insert into students (id_persons) values (4);
insert into students (id_persons) values (2);

create table phones(
	id int primary key auto_increment,
	phone varchar(12) not null unique,
	id_persons int,
	foreign key (id_persons) references persons(id)
);

insert into phones(phone,id_persons) values ('4242774968',1);
insert into phones(phone,id_persons) values ('675',2);
insert into phones(phone,id_persons) values ('42344968',2);
insert into phones(phone,id_persons) values ('35681',1);

create table courses(
	id int primary key auto_increment,
	name varchar(50) not null unique,

);

create table persons_courses(
	id_persons int,
	id_courses int,
	foreign key (id_persons) references persons(id),
	foreign key (id_courses) references courses(id)
);

insert into courses (name) values ('HumanToDev');
insert into courses (name) values ('DevToHack');

insert into persons_courses (id_persons,id_courses) values (2,1);
insert into persons_courses (id_persons,id_courses) values (4,1);
insert into persons_courses (id_persons,id_courses) values (5,1);
insert into persons_courses (id_persons,id_courses) values (6,1);
insert into persons_courses (id_persons,id_courses) values (12,1);