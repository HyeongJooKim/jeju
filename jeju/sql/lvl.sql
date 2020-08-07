drop table lvl;
create table lvl(
	lvl char(3) constraint lvl_lvl_pk primary key,
	lname varchar2(20) constraint lvl_lname_nn not null constraint lvl_lname_uk unique,
	ldesc varchar2(50) 
);
--input data
insert into lvl values ('L01','member','�¶���ȸ��');
insert into lvl values ('L02','register','������û�� ȸ��');
insert into lvl values ('L03','student','���� ������');
insert into lvl values ('L04','alum','������');
insert into lvl values ('L05','hired','������ ���');
insert into lvl values ('L11','emp1','�Ϲ����� LMS ����');
insert into lvl values ('L12','emp2','�л� ������ ����');
insert into lvl values ('L13','emp3','ȸ��, �λ� ���� ����');
insert into lvl values ('L20','admin','����Ʈ������');
commit;

select * from lvl;