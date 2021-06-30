SELECT * FROM reservation;
CREATE SEQUENCE res_seq;
DROP SEQUENCE res_seq;

SELECT * FROM account;

INSERT INTO ACCOUNT (id, name, nickname, email, phone, password, gender, age, joindate) VALUES(1, '어드민', '어드민', 'admin@admin.com', '010-1234-1234', 'admin', 'F', 25, SYSDATE);

INSERT INTO reservation(id, sid, timeid, aid, rdate,  rcnt, payment)
	VALUES(res_seq.NEXTVAL, 1, 1, 1, SYSDATE, 1, 'k');
