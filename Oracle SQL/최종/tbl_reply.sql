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

-- ��� Ȯ��
select * 
from tbl_reply
order by rno desc;

-- ����¡ ó�� index ����
create index idx_reply on tbl_reply (bno desc, rno asc);

-- ��� Test ���
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�� ������ �;��.', 'replyer01');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�����͸� ���� ������ ���Ƴ׿䡦 ��¥ ���ſ�.', 'replyer02');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� �����±���! �������� ��ٷȾ��.', 'replyer03');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '������ �ʹ� ������.', 'replyer04');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�۳⿡ �ٳ�Դµ� ���� ���Ҿ��. ���ص� ���˴ϴ�!', 'replyer05');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�ð� ���缭 ģ���� ���� ����� �߾��.', 'replyer06');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� �ı� �����ֽ� �� ��Ű���? ������ ��� �ñ��ؿ�.', 'replyer07');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� ������ �ʹ� ��̷ӳ׿�. ', 'replyer08');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� ���� �����մϴ�. ��¥ üũ�صѰԿ�!', 'replyer09');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�� ����ȸ ���� ���ſ�! �� ������ �ͳ׿�.', 'replyer10');

commit;