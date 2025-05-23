-- ��� ���̺�
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

select * from tbl_reply order by rno;

-- Test�� ���� ��� �߰�
insert into tbl_reply(rno, bno, reply, replyer)
values(seq_reply.nextval, 2, '��� test �Է�', 'ȫ�浿');

commit;

-- ��� Ȯ��
select * 
from tbl_reply
order by rno desc;

-- ����¡ ó�� index ����
create index idx_reply on tbl_reply (bno desc, rno asc);
