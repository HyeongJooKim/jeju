drop table mbr;
drop sequence mbr_seq;
create table mbr(
	mno number constraint mbr_mno_pk primary key,
	id varchar2(20) constraint mbr_id_uk unique constraint mbr_id_nn not null,
	pw varchar2(20) constraint mbr_pw_nn not null,
	name varchar2(20) constraint mbr_name_nn not null,
	tel number(11) constraint mbr_tel_uk unique,
	email varchar2(30) constraint mbr_email_uk unique,
	answer varchar(50),
	lvl char(3) default 'L01' constraint mbr_lvl_fk references lvl(lvl)
);
create sequence mbr_seq;
--input data
insert into mbr values (mbr_seq.nextval,'user1','test!111','������','01012341111','user1@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'user2','test!111','������','01012341112','user2@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'user3','test!111','������','01012341113','user3@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'user4','test!111','������','01012341114','user4@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'user5','test!111','������','01012341115','user5@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'user6','test!111','������','01012341116','user6@bitjeju.com','������','L01');
insert into mbr values (mbr_seq.nextval,'bitjeju01','test!111','������','01012341117','bitjeju01@bitjeju.com','������','L11');
insert into mbr values (mbr_seq.nextval,'bitjeju02','test!111','������','01012341118','bitjeju02@bitjeju.com','������','L11');
insert into mbr values (mbr_seq.nextval,'bitjeju03','test!111','������','01012341119','bitjeju03@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju04','test!111','������','01012341120','bitjeju04@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju05','test!111','������','01012341121','bitjeju05@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju06','test!111','ȸ����','01012341122','bitjeju06@bitjeju.com','������','L13');
insert into mbr values (mbr_seq.nextval,'bitjeju07','test!111','�����','01012341123','bitjeju07@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju08','test!111','���μ�','01012341124','bitjeju08@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju09','test!111','������','01012341125','bitjeju09@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju10','test!111','Ȳ����','01012341126','bitjeju10@bitjeju.com','������','L12');
insert into mbr values (mbr_seq.nextval,'bitadmin','test!111','������','01012341127','bitadmin@bitjeju.com','������','L20');

commit;

select * from mbr;