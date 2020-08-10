drop table crs;
drop sequence crs_seq;
create table crs(
	cno number constraint crs_cno_pk primary key,
	ctitle varchar2(300),	
	cbegin date,
	cend date,
	cdays number(3),
	climit number(3),
	croom varchar2(10) check (croom in ('401','402','403')),
	profno number constraint crs_profno_fk references empl(eno),
	salesno number constraint crs_salesno_fk references empl(eno)
);
create sequence crs_seq;
--input data
insert into crs values (crs_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺����','2020-7-1','2020-9-30','55','30','401','8','1');
insert into crs values (crs_seq.nextval,'�������������� ��� Framework ���� ������ �缺����','2020-7-1','2020-9-30','55','30','402','9','2');
insert into crs values (crs_seq.nextval,'����������������� ���ձ���� Ȱ����sw �� ������ �缺���� A','2020-7-1','2020-9-30','55','30','403','10','1');
insert into crs values (crs_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� A','2020-10-1','2020-12-31','55','30','401','8','2');
insert into crs values (crs_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� B','2020-10-1','2020-12-31','55','30','402','9','1');
insert into crs values (crs_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� C','2020-10-1','2020-12-31','55','30','403','10','2');

commit;

select * from crs;