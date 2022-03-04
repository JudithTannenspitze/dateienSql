
create user wohnung identified by wohnung2021 default tablespace users temporary tablespace temp;
grant connect, create table, create view, create procedure, create sequence, create trigger to wohnung;

grant create database link  to wohnung;


