-- 테이블 삭제
drop table guestbook;

-- 시퀀스 삭제
drop sequence seq_guestbook_id;

-- 테이블 생성
create table guestbook (
    no number(5),               --식별번호 PK
    name varchar2(80),          --이름
    password varchar2(20),      --비밀번호
    content varchar2(2000),     --본문
    reg_date date,               --등록일
    primary key (no)
);

--시퀀스 생성
create sequence seq_guestbook_id
increment by 1
start with 1;

-- insert 문
insert into guestbook
values (seq_guestbook_id.nextval, '이정재', '1234', '안녕하세요', sysdate);

-- select문
select  no,
        name,
        password,
        content,
        to_char(reg_date, 'YYYY-MM-DD hh24:mi:ss')
from guestbook;

select  no,
        name,
        password,
        content,
        to_char(reg_date, 'YYYY-MM-DD hh24:mi:ss')
from guestbook
where no = 2;

-- delete문
delete from guestbook
where password = '1111'
and no = 2;

rollback;
commit;