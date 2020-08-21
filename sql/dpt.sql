drop table dpt;
create table dpt(
	dno char(3) constraint dpt_dno_pk primary key,
	dname varchar2(20) constraint dpt_dname_nn not null,
	daccess varchar2(300)
);
--input data
insert into dpt values ('D01','����','LMS ����');
insert into dpt values ('D02','����','�л� ������ ����');
insert into dpt values ('D03','����','�л� ������ ����');
insert into dpt values ('D04','���','�л� ������ ����');
insert into dpt values ('D05','ȸ��','ȸ�� ���� ����');
insert into dpt values ('D06','����','Admin ����Ʈ ����');

commit;

select * from dpt;