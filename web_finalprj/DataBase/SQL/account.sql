-- 회원 테이블
CREATE TABLE account (
    id NUMBER,
    email VARCHAR2(128),
    password VARCHAR2(64),
    username VARCHAR2(64),
    nickname VARCHAR2(64),
    age NUMBER,
    gender CHAR(1),
    phone VARCHAR2(64),
    joindate DATE DEFAULT SYSDATE,
    logindate DATE DEFAULT SYSDATE,
    expiredate DATE DEFAULT NULL
);

ALTER TABLE account ADD CONSTRAINT account_id_pk PRIMARY KEY(id);
ALTER TABLE account MODIFY email CONSTRAINT account_email_nn NOT NULL;
ALTER TABLE account MODIFY password CONSTRAINT account_password_nn NOT NULL;
ALTER TABLE account MODIFY username CONSTRAINT account_username_nn NOT NULL;
ALTER TABLE account MODIFY nickname CONSTRAINT account_nickname_nn NOT NULL;
ALTER TABLE account MODIFY age CONSTRAINT account_age_nn NOT NULL;
ALTER TABLE account ADD CONSTRAINT account_gender_CK CHECK(gender IN('M', 'F'));
ALTER TABLE account MODIFY phone CONSTRAINT account_phone_nn NOT NULL;

COMMENT ON COLUMN account.id IS '회원 식별번호';
COMMENT ON COLUMN account.email IS '회원 이메일';
COMMENT ON COLUMN account.password IS '회원 비밀번호';
COMMENT ON COLUMN account.username IS '회원 이름';
COMMENT ON COLUMN account.nickname IS '회원 닉네임';
COMMENT ON COLUMN account.age IS '회원 나이';
COMMENT ON COLUMN account.gender IS '회원 성별';
COMMENT ON COLUMN account.phone IS '회원 연락처';
COMMENT ON COLUMN account.joindate IS '회원 가입일';
COMMENT ON COLUMN account.logindate IS '회원 로그인일';
COMMENT ON COLUMN account.expiredate IS '회원 탈퇴일';

SELECT a.id, a.btype, a.mid, a.aid, a.title, a.contents, a.gcnt, a.bcnt, a.cdate, a.star FROM board a
        LEFT OUTER JOIN movie b ON a.mid = b.id
        LEFT OUTER JOIN account c ON a.aid = c.id        
        WHERE REGEXP_LIKE(b.title, '홍', 'x')
           OR REGEXP_LIKE(b.genre, '홍', 'x')
           OR REGEXP_LIKE(b.director, '홍', 'x')
           OR REGEXP_LIKE(b.actor, '홍', 'x')
           OR REGEXP_LIKE(c.nickname, '홍', 'x')
           AND btype = 1 AND deleted = 'N' AND nodel = 'N' AND mid IN (
           SELECT d.mid FROM board d
				  LEFT OUTER JOIN account e ON d.aid = e.id
				  LEFT OUTER JOIN movie_theater f ON d.mid = f.mid
				  LEFT OUTER JOIN time g ON f.tid = g.id
				  LEFT OUTER JOIN reservation h ON g.id = h.timeid
				 WHERE e.id = 1
		      GROUP BY d.mid
           ) ORDER BY id DESC;
       
SELECT * FROM board WHERE btype = 1 AND deleted = 'N' AND nodel = 'N' AND mid IN (
		SELECT a.mid FROM board a
		  LEFT OUTER JOIN account b ON a.aid = b.id
		  LEFT OUTER JOIN movie_theater c ON a.mid = c.mid
		  LEFT OUTER JOIN time d ON c.tid = d.id
		  LEFT OUTER JOIN reservation e ON d.id = e.timeid
		 WHERE b.id = 1
      GROUP BY a.mid) ORDER BY id DESC
        
-- 회원 구분 테이블
CREATE TABLE account_type (
    id NUMBER,
    name VARCHAR2(64)
);

select * from account;
ALTER TABLE account RENAME COLUMN name to USERNAME;

ALTER TABLE account_type ADD CONSTRAINT account_t_id_pk PRIMARY KEY(id);

COMMENT ON COLUMN account_type.id IS '회원 구분 식별번호';
COMMENT ON COLUMN account_type.name IS '회원 구분명';
