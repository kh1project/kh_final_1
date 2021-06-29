-- 게시판 테이블
CREATE TABLE board (
    id NUMBER,
    btype NUMBER,
    aid NUMBER,
    title NVARCHAR2(256),
    contents NCLOB,
    vcnt NUMBER DEFAULT 0,
    gcnt NUMBER DEFAULT 0,
    bcnt NUMBER DEFAULT 0,
    star NUMBER DEFAULT 1,
    cdate DATE DEFAULT SYSDATE,
    udate DATE DEFAULT SYSDATE,
    nodel CHAR(1) DEFAULT 'N',
    deleted CHAR(1) DEFAULT 'N'
);

ALTER TABLE board ADD CONSTRAINT board_id_pk PRIMARY KEY(id);
ALTER TABLE board ADD CONSTRAINT board_btype_FK FOREIGN KEY(btype) REFERENCES board_type(id);
ALTER TABLE board ADD CONSTRAINT board_aid_FK FOREIGN KEY(aid) REFERENCES account(id);

COMMENT ON COLUMN board.id IS '게시판 식별번호';
COMMENT ON COLUMN board.btype IS '게시판 구분 번호';
COMMENT ON COLUMN board.aid IS '게시판 작성자명';
COMMENT ON COLUMN board.title IS '게시판 제목';
COMMENT ON COLUMN board.contents IS '게시판 내용';
COMMENT ON COLUMN board.vcnt IS '게시판 조회수';
COMMENT ON COLUMN board.gcnt IS '게시판 추천';
COMMENT ON COLUMN board.bcnt IS '게시판 비추천';
COMMENT ON COLUMN board.star IS '게시판 별점';
COMMENT ON COLUMN board.cdate IS '게시판 작성일';
COMMENT ON COLUMN board.udate IS '게시판 수정일';
COMMENT ON COLUMN board.nodel IS '게시판 삭제금지';
COMMENT ON COLUMN board.deleted IS '게시판 삭제 구분';


-- 게시판 구분 테이블
CREATE TABLE board_type (
    id NUMBER,
    name VARCHAR2(256)
);

ALTER TABLE board_type ADD CONSTRAINT board_t_id_pk PRIMARY KEY(id);

COMMENT ON COLUMN board_type.id IS '게시판 구분 식별번호';
COMMENT ON COLUMN board_type.name IS '게시판 구분명';

