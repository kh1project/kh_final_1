-- 회원 테이블
CREATE TABLE account (
    id NUMBER,
    name VARCHAR2(64),
    nickname VARCHAR2(64),
    email VARCHAR2(128),
    phone VARCHAR2(64),
    password VARCHAR2(64),
    gender CHAR(1),
    age NUMBER,
    joindate DATE DEFAULT SYSDATE,
    logindate DATE DEFAULT SYSDATE,
    expiredate DATE DEFAULT NULL
);

ALTER TABLE account ADD CONSTRAINT account_id_pk PRIMARY KEY(id);




-- 회원 구분 테이블
CREATE TABLE account_type (
    id NUMBER,
    name VARCHAR2(64)
);

ALTER TABLE account_type ADD CONSTRAINT account_t_id_pk PRIMARY KEY(id);

COMMENT ON COLUMN account_type.id IS '회원 구분 식별번호';
COMMENT ON COLUMN account_type.name IS '회원 구분명';
