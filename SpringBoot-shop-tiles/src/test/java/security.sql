
/* SPRING SECURITY 를 적용할 경우 
 * 회원 가입시 비즈니스 계층(서비스)에서  회원가입과 권한을 함께 insert하도록 처리한다 (트랜잭션 처리 필요!)
 */
drop table security_member;
create table security_member(
	id varchar(100) primary key,
	password varchar(100) not null,
	name varchar(100) not null,
	address varchar(100) not null,
	enabled int default 1 not null 
)

delete from security_member;
commit
select * from security_member;
drop table tbl_member;
select *from tbl_member;
---------------------------
create table tbl_member (
    id      varchar2(50)    not null,
    password    varchar2(100)   not null,
    name    varchar2(30)    not null,
    phone    varchar2(20)    not null,
    info	  varchar2(300)    null,
    addr1   varchar2(20)    null,
   	addr2   varchar2(50)    null,
   	addr3   varchar2(50)    null,
    regidate    date            default sysdate,
    enabled int default 1 not null ,
    primary key(id)
);




-- 아이디는 id , 패스워드는 password , 
--탈퇴여부(0은 탈퇴, 1은 가입상태)는 enabled 로 별칭주면 된다 

-- 비밀번호 암호화해서 등록해야 하므로 어플리케이션에서 회원가입을 이용한다 
--insert into security_member(id,password,name,address,enabled) 
--values('java','1234','아이유','판교',1);

--select id,password,name,address,enabled from security_member
--where id='java' and enabled=1;

/*
 * SPRING SECURITY는 권한이 일치하는 대상에 대해 인가하기 때문에 
   관리자 권한 즉, ROLE_ADMIN을 보유하고 있더라도 
   사용자 권한인 ROLE_MEMBER 보유하고 있지 않을 경우 접근을 못하게 된다 
   따라서 한 유저는 여러개의 권한(1:n)을 보유할 수 있어야 하므로 테이블을 생성한다 
 */
drop table authorities;

create table authorities(
	username varchar(100) not null,
	authority varchar(30) not null,
	constraint fk_authorities foreign key(username) references security_member(id),
	constraint member_authorities primary key(username,authority)
)



create table authorities(
	username varchar(100) not null,
	authority varchar(30) not null,
	constraint fk_authorities foreign key(username) references tbl_member(id),
	constraint member_authorities primary key(username,authority)
)
delete * from authorities;
-- -- 어플리케이션에서 회원가입을 하면 ROLE_MEMBER가 등록된다 
-- insert into authorities(username,authority) values('java','ROLE_MEMBER');
-----------------------------------------------------------
--  관리자 권한까지 추가해본다 
insert into authorities(username,authority) values('king','ROLE_ADMIN');

insert into authorities(username,authority) values('admin','ROLE_ADMIN');

select * from authorities;

commit
drop table tbl_goods;
create table tbl_goods (
    gdsNum       number          not null, //상품번호
    gdsName      varchar2(50)    not null, //상품이름
    cateCode     varchar2(30)    not null, //분류
    gdsPrice     number          not null, //가격
    gdsStock     number          null,  //수량
    gdsDes       varchar(500)    null, //설명
    gdsImg       varchar(200)    null, //이미지
    gdsDate      date            default sysdate, //등록날짜
    primary key(gdsNum)  
);
---------------상품테이블-------------
create table tbl_goods (
    gdsNum       number          not null, 
    gdsName      varchar2(50)    not null, 
    cateCode     varchar2(30)    not null, 
    gdsPrice     number          not null, 
    gdsStock     number          null, 
    gdsDes       varchar2(500)    null, 
    gdsImg       varchar2(200)    null, 
    gdsDate      date            default sysdate, 
    primary key(gdsNum)  
);
select *from tbl_goods
--------카테고리---------------------

 


-- n-차분류 ---------------------------------------
create table goods_category (
    cateName     varchar2(20)    not null, 
    cateCode     varchar2(30)    not null,  
    primary key(cateCode)
);
delete table goods_category;
insert into goods_category(cateName,cateCode) values('Top',100);
insert into goods_category(cateName,cateCode) values('bottom',200);

select *from goods_category;

select middlecateCode,middlecateName from middle_category where cateCode=100;

create table middle_category(
middlecateCode varchar2(30)  not null primary key,
 middlecateName  varchar2(20) not null,
 cateCode 			varchar2(30) not null,
 constraint fk_goods_category foreign key (cateCode) references goods_category(cateCode)
);
----
select *from middle_category;
insert into middle_category(middlecatecode,middlecatename,catecode) values('101','neat',100);
insert into middle_category(middlecatecode,middlecatename,catecode) values('201','pants',200);

create table tbl_goods (
    gdsNum       number          not null primary key,
    gdsName      varchar2(50)    not null, 
   middlecateCode varchar2(30)    not null, 
    gdsPrice     number          not null, 
    gdsStock     number          null, 
    gdsDes       varchar2(500)    null, 
    gdsImg       varchar2(200)    null, 
    gdsDate      date            default sysdate, 
  constraint fk_middle_category foreign key (middlecateCode) references middle_category(middlecateCode)
);

select *from tbl_goods
select *from goods_category
select *from middle_category

-------------------------------------------------------------------------------------



select *from middle_category;

----

DROP TABLE goods_category CASCADE CONSTRAINTS;
select cateName,cateCode from goods_category where level

-- 2차분류 --
drop table goods_category;
select *from goods_category;


--카테고리 참조 코드는 상위 카테고리가 무엇인지 가르키는 코드--
--https://kuzuro.blogspot.com/2018/09/2-vo.html--
alter table tbl_goods add
    constraint fk_goods_category
    foreign key (cateCode)
        references goods_category(cateCode);

 create sequence tbl_goods_seq;
 
 select *from goods_category;
 insert into goods_category (cateName, cateCode) values('카테고리 ','100');
 insert into goods_category (cateName, cateCode, cateCodeRef) values('카테고리1-1','101','100');
 
 
 insert into goods_category(cateName, cateCode) values('카테고리2','200');      
 insert into goods_category(cateName, cateCode, cateCodeRef) values('카테고리2-1','201','200');
delete from goods_category;

---------------------------------
insert into goods_category(cateName, cateCode) values(' FURNITURES',100);
insert into goods_category(cateName, cateCode, cateCodeRef) values('clock','101','100');
insert into goods_category(cateName, cateCode, cateCodeRef) values('speaker','102','100');
insert into goods_category(cateName, cateCode, cateCodeRef) values('clothesBox','103','100');
 
 insert into goods_category(cateName, cateCode) values('BAGS',200);
insert into goods_category(cateName, cateCode, cateCodeRef) values('broneCandle','201','200');
insert into goods_category(cateName, cateCode, cateCodeRef) values('clothesBox','202','200'); 


insert into goods_category(cateName, cateCode) values('DECORATION',300);
insert into goods_category(cateName, cateCode, cateCodeRef) values('LiquidLily','301','300');
insert into goods_category(cateName, cateCode, cateCodeRef) values('UneroSmallBag','302','300');

insert into goods_category(cateName, cateCode) values('ACCESSORIES',400);
insert into goods_category(cateName, cateCode, cateCodeRef) values('Glasses','401','400');
insert into goods_category(cateName, cateCode, cateCodeRef) values('Sunglass','402','400');
insert into goods_category(cateName, cateCode, cateCodeRef) values('rings','403','400');
insert into goods_category(cateName, cateCode, cateCodeRef) values('earrings','404','400');

commit;

select *from goods_category;
