drop table mbr;
drop sequence mbr_seq;
create table mbr(
	mno number constraint mbr_mno_pk primary key,
	id varchar2(20) constraint mbr_id_uk unique constraint mbr_id_nn not null,
	pw varchar2(20) constraint mbr_pw_nn not null,
	name varchar2(20) constraint mbr_name_nn not null,
	tel number(11) constraint mbr_tel_uk unique,
	email varchar2(30) constraint mbr_email_uk unique,
	answer varchar2(50),
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

insert into mbr values (mbr_seq.nextval,'stu01','test!111','�л�1','01012341128','stu01@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu02','test!111','�л�2','01012341129','stu02@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu03','test!111','�л�3','01012341130','stu03@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu04','test!111','�л�4','01012341131','stu04@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu05','test!111','�л�5','01012341132','stu05@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu06','test!111','�л�6','01012341133','stu06@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu07','test!111','�л�7','01012341134','stu07@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu08','test!111','�л�8','01012341135','stu08@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu09','test!111','�л�9','01012341136','stu09@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu10','test!111','�л�10','01012341137','stu10@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu11','test!111','�л�11','01012341138','stu11@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu12','test!111','�л�12','01012341139','stu12@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu13','test!111','�л�13','01012341140','stu13@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu14','test!111','�л�14','01012341141','stu14@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu15','test!111','�л�15','01012341142','stu15@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu16','test!111','�л�16','01012341143','stu16@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu17','test!111','�л�17','01012341144','stu17@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu18','test!111','�л�18','01012341145','stu18@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu19','test!111','�л�19','01012341146','stu19@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu20','test!111','�л�20','01012341147','stu20@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu21','test!111','�л�21','01012341148','stu21@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu22','test!111','�л�22','01012341149','stu22@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu23','test!111','�л�23','01012341150','stu23@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu24','test!111','�л�24','01012341151','stu24@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu25','test!111','�л�25','01012341152','stu25@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu26','test!111','�л�26','01012341153','stu26@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu27','test!111','�л�27','01012341154','stu27@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu28','test!111','�л�28','01012341155','stu28@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu29','test!111','�л�29','01012341156','stu29@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu30','test!111','�л�30','01012341157','stu30@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu31','test!111','�л�31','01012341158','stu31@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu32','test!111','�л�32','01012341159','stu32@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu33','test!111','�л�33','01012341160','stu33@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu34','test!111','�л�34','01012341161','stu34@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu35','test!111','�л�35','01012341162','stu35@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu36','test!111','�л�36','01012341163','stu36@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu37','test!111','�л�37','01012341164','stu37@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu38','test!111','�л�38','01012341165','stu38@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu39','test!111','�л�39','01012341166','stu39@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu40','test!111','�л�40','01012341167','stu40@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu41','test!111','�л�41','01012341168','stu41@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu42','test!111','�л�42','01012341169','stu42@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu43','test!111','�л�43','01012341170','stu43@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu44','test!111','�л�44','01012341171','stu44@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu45','test!111','�л�45','01012341172','stu45@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu46','test!111','�л�46','01012341173','stu46@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu47','test!111','�л�47','01012341174','stu47@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu48','test!111','�л�48','01012341175','stu48@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu49','test!111','�л�49','01012341176','stu49@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu50','test!111','�л�50','01012341177','stu50@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu51','test!111','�л�51','01012341178','stu51@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu52','test!111','�л�52','01012341179','stu52@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu53','test!111','�л�53','01012341180','stu53@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu54','test!111','�л�54','01012341181','stu54@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu55','test!111','�л�55','01012341182','stu55@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu56','test!111','�л�56','01012341183','stu56@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu57','test!111','�л�57','01012341184','stu57@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu58','test!111','�л�58','01012341185','stu58@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu59','test!111','�л�59','01012341186','stu59@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu60','test!111','�л�60','01012341187','stu60@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu61','test!111','�л�61','01012341188','stu61@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu62','test!111','�л�62','01012341189','stu62@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu63','test!111','�л�63','01012341190','stu63@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu64','test!111','�л�64','01012341191','stu64@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu65','test!111','�л�65','01012341192','stu65@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu66','test!111','�л�66','01012341193','stu66@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu67','test!111','�л�67','01012341194','stu67@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu68','test!111','�л�68','01012341195','stu68@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu69','test!111','�л�69','01012341196','stu69@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu70','test!111','�л�70','01012341197','stu70@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu71','test!111','�л�71','01012341198','stu71@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu72','test!111','�л�72','01012341199','stu72@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu73','test!111','�л�73','01012341200','stu73@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu74','test!111','�л�74','01012341201','stu74@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu75','test!111','�л�75','01012341202','stu75@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu76','test!111','�л�76','01012341203','stu76@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu77','test!111','�л�77','01012341204','stu77@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu78','test!111','�л�78','01012341205','stu78@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu79','test!111','�л�79','01012341206','stu79@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu80','test!111','�л�80','01012341207','stu80@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu81','test!111','�л�81','01012341208','stu81@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu82','test!111','�л�82','01012341209','stu82@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu83','test!111','�л�83','01012341210','stu83@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu84','test!111','�л�84','01012341211','stu84@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu85','test!111','�л�85','01012341212','stu85@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu86','test!111','�л�86','01012341213','stu86@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu87','test!111','�л�87','01012341214','stu87@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu88','test!111','�л�88','01012341215','stu88@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu89','test!111','�л�89','01012341216','stu89@bitjeju.com','������','L03');
insert into mbr values (mbr_seq.nextval,'stu90','test!111','�л�90','01012341217','stu90@bitjeju.com','������','L03');

commit;

select * from mbr;