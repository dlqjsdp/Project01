-- 댓글 테이블
create table tbl_reply(
    rno number(10,0),
    bno number(10,0) not null,
    reply varchar2(1000) not null,
    replyer varchar2(50) not null,
    replyDate date default sysdate,
    updateDate date default sysdate
);

create SEQUENCE seq_reply;

alter table tbl_reply add CONSTRAINT pk_reply
primary key(rno);

alter table tbl_reply add CONSTRAINT fk_reply FOREIGN key(bno) REFERENCES tbl_performance(bno);

desc tbl_reply;

-- 댓글 확인
select * 
from tbl_reply
order by rno desc;

-- 페이징 처리 index 생성
create index idx_reply on tbl_reply (bno desc, rno asc);

-- 댓글 Test 등록
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '얼른 가보고 싶어요.', 'replyer01');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '포스터만 봐도 분위기 미쳤네요… 진짜 기대돼요.', 'replyer02');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '드디어 열리는군요! 오랫동안 기다렸어요.', 'replyer03');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '포스터 너무 예뻐요.', 'replyer04');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '작년에 다녀왔는데 정말 좋았어요. 올해도 기대됩니다!', 'replyer05');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '시간 맞춰서 친구랑 같이 가기로 했어요.', 'replyer06');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '관람 후기 남겨주실 분 계신가요? 분위기 어떤지 궁금해요.', 'replyer07');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '전시 주제가 너무 흥미롭네요. ', 'replyer08');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '좋은 정보 감사합니다. 날짜 체크해둘게요!', 'replyer09');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '이 전시회 정말 기대돼요! 꼭 가보고 싶네요.', 'replyer10');

commit;