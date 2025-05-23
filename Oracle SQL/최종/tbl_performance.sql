-- tbl_performance ����
create SEQUENCE seq_performance;

create table tbl_performance(
    bno number(10,0),
    img_url varchar2(500) not null, 
    title varchar2(200) not null,
    writer varchar2(50) not null,
    readcount number(4) default 0,      -- ��ȸ��
    regdate date default sysdate,       -- �ۼ���
    updatedate date default sysdate,     -- ������
    content varchar2(1000)
);

alter table tbl_performance add CONSTRAINT pk_performance
primary key(bno);

desc tbl_performance;

SET DEFINE OFF;

insert into tbl_performance(bno, img_url, title, writer, content)
values(seq_performance.nextval, 
'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=5372753d74594dfc8dcd65e0edf40a83&thumb=Y',
'[������ȭȸ��] ���̰� �ִ� ������ [����ô�]', 'user5941', 
'[������ȭȸ��] ���̰� �ִ� ������ [����ô�]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!');

commit;

select * from tbl_performance order by BNO;

-- replyCnt �߰�
alter table tbl_performance
add (replyCnt number default 0);

-- ���, �з� �߰�
alter table tbl_performance
add (img_key VARCHAR2(255), place VARCHAR2(300), category VARCHAR2(100));



