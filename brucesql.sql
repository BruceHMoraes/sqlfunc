create database dbempresa;

use dbempresa;

create table if not exists depart
(dep_cod integer auto_increment primary key,
dep_nome varchar(20) not null);

create table cargo
(car_cod integer auto_increment primary key,
car_nome varchar(20) not null);

create table func
(fun_matr integer primary key,
fun_nome varchar(40) not null,
fun_genero varchar(1) check (fun_genero in("M","F")),
fun_dt_adm date not null,
fun_salar numeric(7,2) default 2000,
dep_cod integer not null,
car_cod integer not null,
foreign key (dep_cod) references depart(dep_cod),
foreign key (car_cod) references cargo(car_cod));

insert into depart(dep_nome)
values("Administrativo");
insert into depart(dep_nome)
values("financeiro");
insert into depart(dep_nome)
values("comercial");
insert into depart(dep_nome)
values("jurídico");
insert into depart(dep_nome)
values("Marketing");


insert into cargo(car_nome)
values("Presidente"),("Diretor"),("Gerente"),("Assistente"),("Estagiário");

insert into func
values(101, "José da Silva", "M","2010-10-10",5000,01,01);
insert into func
values(102, "Bruce H moraes", "M","2010-12-10",5500,04,02);
insert into func
values(103, "Amanda", "F","2010-09-10",5000,04,01);
insert into func
values(104, "José da Carlos", "M","2010-11-10",5050,01,04);
insert into func
values(105, "Maria da Silva", "F","2010-10-24",5005,04,03);
insert into func
values(106, "Astolfo", "M","2010-10-15",5060,01,05);

select * from func;
select * from cargo;
select * from depart;







