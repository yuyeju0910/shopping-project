
/* SPRING SECURITY 를 적용할 경우 
 * 회원 가입시 비즈니스 계층(서비스)에서  회원가입과 권한을 함께 insert하도록 처리한다 (트랜잭션 처리 필요!)
 */
select *from tbl_goods;
delete from tbl_goods;
delete *from tbl_goods;
select *from tbl_reply;
select *from tbl_member;
---
select *from tbl_member;


select * from tbl_goods where gdsName=#{value};
select *
      from tbl_goods
      where gdsName like '니트여유';
      
select *
      from tbl_goods
      where gdsName '%'||#{value}||'%'
---
   select *
      from post p, a_member m
      where title like '%'||#{value}||'%' and p.member_id=m.member_id
---
 select
     r.gdsNum, r.id, r.repNum, r.repCon, r.repDate, m.name
 from tbl_reply r
     inner join tbl_member m
         on r.id = m.id
     where gdsNum =23

--댓글
delete from tbl_reply;
-------------------


--------------
create table tbl_reply (
    gdsNum      number          not null,
    id     varchar2(50)    not null,
    repNum      number          not null,
    repCon      varchar2(2000)  not null,
    repDate     date            default sysdate,
    primary key(gdsNum, repNum) 
);
create sequence tbl_reply_seq;
--참조--id
alter table tbl_reply
    add constraint tbl_reply_gdsNum foreign key(gdsNum)
    references tbl_goods(gdsNum);
    
alter table tbl_reply
    add constraint tbl_reply_id foreign key(id)
    references tbl_member(id);
    ---

 select *from tbl_goods--------------------------------------------------------51
    add constraint tbl_goods_id foreign key(id)
    references tbl_member(id);
    
    ALTER TABLE tbl_board ADD name VARCHAR(25);
    
    ---
  select *from tbl_member;

    --
----


--tbl_order에 새로운 컬럼추가
alter table tbl_order
add(
     delivery varchar2(20) default '배송준비'
);
---gds price 추가
alter table 
--
select *from tbl_cart;
select *from tbl_order;
select *from tbl_order;
select *from tbl_order_details;
delete tbl_order
where id='admin';
-------

---주문테이블생성
--orderRec 수신자
create table tbl_order(
orderId varchar2(50) not null,
id  varchar2(50) not null,
orderRec varchar2(50) not null,
addr1 varchar2(50) not null,
addr2 varchar2(50) not null,
addr3 varchar2(50) not null,
orderPhon varchar2(50) not null,
amount number not null,
orderDate Date default sysdate,
primary key(orderId)
);
----------------------------
select *from tbl_order;
select *
--주문테이블과 멤버테이블 참조 설정
alter table tbl_order
add constraint tbl_order_id foreign key(id)
references tbl_member(id);
--------------
--주문 상세 테이블 생성 카트테이블 데이터 가져옴
create table tbl_order_details(
orderDetailsNum number not null,
orderId  varchar2(50) not null,
gdsNum  number not null,
cartStock number not null,
primary key(orderDetailsNum)
);
----



  
  select *from tbl_order;   
  delete from tbl_order;
  select *from tbl_order_details;       


--주문 상세번호 시퀀스
create sequence tbl_order_details_seq;
drop table tbl_order_details;
drop table tbl_order;
--주문상세 테이블 주문
alter table tbl_order_details
add constraint tbl_order_details_orderId foreign key(orderId)
references tbl_order(orderId) ON DELETE CASCADE ;


-------------------
//cart 카트테이블 생성
create table tbl_cart (
    cartNum     number          not null,
    id      varchar2(50)    not null,
    gdsNum      number          not null,
    cartStock   number          not null,
    addDate     date            default sysdate,
    primary key(cartNum, id) 
);
//카트 번호 시퀀스
create sequence tbl_cart_seq;

select *from tbl_member;
-----------
alter table tbl_cart
    add constraint tbl_cart_id foreign key(id)
    references tbl_member(id);
    

alter table tbl_cart
    add constraint tbl_cart_gdsNum foreign key(gdsNum)
    references tbl_goods(gdsNum);    
    
  select *from tbl_cart;  
    --카트담기-
 insert into tbl_cart(cartNum,id,gdsNum,cartStock)  
 values(tbl_cart_seq.nextval,'yyj1',89,99);

select*from tbl_goods;
--------------------
--카트테이블 조인
--row_number() over(order by c.cartNum desc) as num ->출력된 결과에순서 표시
<!-- 카트 리스트 -->
<select id="cartList" resultType="CartListVO">
 select
     row_number() over(order by c.cartNum desc) as num,
     c.cartNum, c.id, c.gdsNum, c.cartStock, c.addDate,
     g.gdsName, g.gdsPrice, g.gdsThumbImg
 from tbl_cart c
     inner join tbl_goods g
         on c.gdsNum = g.gdsNum   
     where c.id = #{id}
</select>
---
 select
     row_number() over(order by c.cartNum desc) as num,
     c.cartNum, c.id, c.gdsNum, c.cartStock, c.addDate,
     g.gdsName, g.gdsPrice, g.gdsThumbImg
 from tbl_cart c
     inner join tbl_goods g
         on c.gdsNum = g.gdsNum   
     where c.id = 'admin';

---


---------------------------


commit
drop table tbl_member;
select *from tbl_member;
---------------------------
create table tbl_member (
    id      varchar2(50)    not null,
    password    varchar2(100)   not null,
    name    varchar2(30)    not null,
    phone    varchar2(20)    not null,
    info     varchar2(300)    null,
    addr1   varchar2(20)    null,
      addr2   varchar2(50)    null,
      addr3   varchar2(50)    null,
    regidate    date            default sysdate,
    enabled int default 1 not null ,
    primary key(id)
);



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

---------------상품테이블-------------

select *from tbl_goods
--------카테고리---------------------
alter table tbl_goods add (gdsThumbImg varchar(200));
 
-- n-차분류 ---------------------------------------
create table goods_category (
    cateName     varchar2(20)    not null, 
    cateCode     varchar2(30)    not null,  
    primary key(cateCode)
);
delete from goods_category;
insert into goods_category(cateName,cateCode) values('Best',100);
insert into goods_category(cateName,cateCode) values('Ring/Earings',200);
insert into goods_category(cateName,cateCode) values('Necklaces',300);
select *from goods_category;

create table middle_category(
middlecateCode varchar2(30)  not null primary key,
 middlecateName  varchar2(20) not null,
 cateCode          varchar2(30) not null,
 constraint fk_goods_category foreign key (cateCode) references goods_
(cateCode)
);
--------------
select *from middle_category;
delete from middle_category;
delete from goods_category;
select *from goods_category;
delete from tbl_goods;
delete from middle_category;
insert into middle_category(middlecatecode,middlecatename,catecode) values('301','Necklaces',300);
insert into middle_category(middlecatecode,middlecatename,catecode) values('101','All',100);
insert into middle_category(middlecatecode,middlecatename,catecode) values('102','etc',100);
insert into middle_category(middlecatecode,middlecatename,catecode) values('201','Ring',200);
insert into middle_category(middlecatecode,middlecatename,catecode) values('202','Earings',200);
-------------------------
tbl_board

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
---------------
CREATE SEQUENCE tbl_board_seq;
drop table tbl_board;
CREATE TABLE  tbl_board(
    board_no number primary key,
   title varchar2(100) not null,
   time_posted date not null,
   content clob not null,
   hits number default 0,
   id varchar2(100) not null,
   img varchar2(100),
   CONSTRAINT tbl_board_fk foreign key(id) references tbl_member(id) on delete cascade
);
select *from tbl_board;
insert into tbl_board(no,title,content,id) values(tbl_board_seq.nextval,'고구마','맛잇음','admin');
insert into tbl_board(no,title,content,id,name) values(tbl_board_seq.nextval,'고구마','맛잇음','admin','관리자');
alter table


select *from tbl_member;






drop table tbl_board;



insert into tbl_board(pnum,title,content,hits,id)  values(tbl_board_seq.nextval,'한소희귀걸이','진짜예쁘다',0,'admin');
select *from tbl_board;
---
insert into tbl_goods (gdsNum ,gdsName,middlecateCode,gdsPrice,gdsStock,gdsDes)
values(tbl_goods_seq.nextval,'pinkneat',101,23000,30,'상품설명');
----
create sequence tbl_board_seq;

select *from tbl_board;

drop table tbl_board;


select *from tbl_goods;

select *from middle_category
------------------------------------------
create sequence tbl_goods_seq;
select tbl_goods_seq.nextval from dual

insert into tbl_goods (gdsNum ,gdsName,middlecateCode,gdsPrice,gdsStock,gdsDes)
values(tbl_goods_seq.nextval,'pinkneat',101,23000,30,'상품설명');

select gdsNum, gdsName,middlecateCode,gdsPrice,gdsStock,gdsDes
from tbl_goods
order by gdsNum desc;

-------------------------------------------------------------------------------------


insert
select *from middle_category;
select *from tbl_

----


-- 2차분류 --


--카테고리 참조 코드는 상위 카테고리가 무엇인지 가르키는 코드--


 create sequence tbl_goods_seq;

---------------------------------

commit;
select c.cateCode,c.cateName, m.middlecateCode,m.middlecateName
from  goods_category c, middle_category m
where  m.middlecateCode=101;
--------------
middlecateCode varchar2(30)  not null primary key,
 middlecateName  varchar2(20) not null,
 cateCode          varchar2(30) not null,
 ---------------------
 

select *from middle_category;
 select g.gdsNum, g.gdsName, g.middlecateCode, c.cateCode,c.middlecateName,gdsPrice, gdsStock, gdsDes, gdsImg, gdsDate, g.gdsImg, g.gdsThumbImg
 from tbl_goods g, middle_category c
 where g.middlecateCode =101;
 --
 select *from goods_category;
 select *from  middle_category;
 select *from tbl_goods;
  DELETE FROM tbl_goods   WHERE gdsNum=85;
  -----------------
  select
    constraint_name,
    table_name,
    r_constraint_name
from
    user_constraints
where
    constraint_name = 'XXX';
  
  
 ---
 select g.gdsNum, g.gdsName, g.middlecateCode
 ,g.gdsStock
, g.gdsDes
, g.gdsImg
, g.gdsDate
, g.gdsImg
, g.gdsThumbImg
, m.middlecateName
, c.cateCode
, c.cateName
 from tbl_goods g inner join  middle_category m on g.middlecateCode =m.middlecateCode
 inner join  goods_category c on m.cateCode =c.cateCode
 where g.middlecateCode =101;
 
 
  select g.gdsNum, g.gdsName, g.middlecateCode
 ,g.gdsStock
, g.gdsDes
, g.gdsImg
, g.gdsDate
, g.gdsImg
, g.gdsThumbImg
,g.gdsPrice
, m.middlecateName
, c.cateCode
, c.cateName
 from tbl_goods g inner join  middle_category m on g.middlecateCode =m.middlecateCode
 inner join  goods_category c on m.cateCode =c.cateCode
 where c.cateCode =100;
 -----
   select g.gdsNum, g.gdsName, g.middlecateCode
 ,g.gdsStock
, g.gdsDes
, g.gdsImg
, g.gdsDate
, g.gdsImg
, g.gdsThumbImg
, m.middlecateName
, c.cateCode
, c.cateName
 from tbl_goods g inner join  middle_category m on g.middlecateCode =m.middlecateCode
 inner join  goods_category c on m.cateCode =c.cateCode
 where c.cateCode  =100 and g.middlecateCode =101;
 
 
 
 
 

 select *from 
 
 select *from goods_category;
 
 