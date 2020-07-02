[제1과제]========================================================================
create table DM_TBL(
   dmno number(8) not null primary key,
   custid varchar2 (10),
   maildate date,
   contents varchar2 (16),
   dept char(2),
   grade varchar2(6),
   campain char(2)
);

insert into DM_TBL values (1,'aaa','20171201','안녕하세요?','10','1','C1');
insert into DM_TBL values (2,'bbb','20171201','안녕하세요?','10','2','C1');
insert into DM_TBL values (3,'ccc','20171201','안녕하세요?','10','3','C1');
insert into DM_TBL values (4,'ddd','20171224','안녕하세요?','20','V','C2');
insert into DM_TBL values (5,'eee','20171224','안녕하세요?','20','VV','C2');
insert into DM_TBL values (6,'fff','20171224','안녕하세요?','30','1','C3');

create table bookinfo_tbl(
   custid varchar2 (10) not null primary key,
   author varchar2 (20),
   goods varchar2 (10),
   phone varchar2(13),
   email varchar2 (20),
   area varchar2 (20)
);

insert into bookinfo_tbl values ('aaa','김고객','의류','010-1111-1111','aaa@korea.com','서울');
insert into bookinfo_tbl values ('bbb','이고객','의류','010-1111-1112','bbb@korea.com','서울');
insert into bookinfo_tbl values ('ccc','박고객','식료품','010-1111-1113','ccc@korea.com','경기');
insert into bookinfo_tbl values ('ddd','홍고객','공산품','010-1111-1114','ddd@korea.com','대전');
insert into bookinfo_tbl values ('eee','조고객','컴퓨터','010-1111-1115','eee@korea.com','대전');
insert into bookinfo_tbl values ('fff','백고객','관광','010-1111-1116','fff@korea.com','울산');

select a.dmno "발송번호", a.custid "고객ID", b.author "고객명" , TO_CHAR(a.maildate, 'YYYY-MM-DD')"발송일", a.contents "내용", a.campain "캠페인구분"
from DM_TBL a, bookinfo_tbl b where a.custid = b.custid ;


select b.area "지역", count(a.contents) "발송 건수"
from DM_TBL a, bookinfo_tbl b where a.custid = b.custid group by b.area;


[제2과제]========================================================================
회원정보 테이블
create table custom_01 (
	p_id varchar2(10) not null primary key,
	p_pw varchar2(10),
	c_name varchar2(20),
	c_email varchar2(20),
	c_tel varchar2(14)
);
insert into custom_01 values('aaa','1234','김회원','aaa@korea.com','010-1111-1111');
insert into custom_01 values('bbb','1234','이회원','bbb@korea.com','010-1111-1112');
insert into custom_01 values('ccc','1234','박회원','ccc@korea.com','010-1111-1113');

select * from custom_01;

