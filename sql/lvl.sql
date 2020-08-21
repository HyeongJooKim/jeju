drop table lvl;
create table lvl(
	lvl char(3) constraint lvl_lvl_pk primary key,
	lname varchar2(20) constraint lvl_lname_nn not null constraint lvl_lname_uk unique,
	ldesc varchar2(50) 
);
--input data
insert into lvl values ('L01','member','�¶���ȸ��');
insert into lvl values ('L02','register','������û');
insert into lvl values ('L03','student','������');
insert into lvl values ('L04','alum','������');
insert into lvl values ('L05','hired','����Ϸ�');
insert into lvl values ('L06','drop','�����ߴ�');
insert into lvl values ('L07','deleted','ȸ��Ż��');

commit;

select * from lvl;

update lvl set ldesc='�¶���ȸ��' where lvl='L01';
update lvl set ldesc='������û' where lvl='L02';
update lvl set ldesc='������' where lvl='L03';
update lvl set ldesc='������' where lvl='L04';
update lvl set ldesc='����Ϸ�' where lvl='L05';
update lvl set ldesc='�����ߴ�' where lvl='L06';
update lvl set ldesc='ȸ��Ż��' where lvl='L07';
