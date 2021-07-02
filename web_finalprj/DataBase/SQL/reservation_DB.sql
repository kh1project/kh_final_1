SELECT * FROM reservation;
CREATE SEQUENCE res_seq;
DROP SEQUENCE res_seq;

SELECT * FROM account;

INSERT INTO ACCOUNT (id, name, nickname, email, phone, password, gender, age, joindate) VALUES(1, '어드민', '어드민', 'admin@admin.com', '010-1234-1234', 'admin', 'F', 25, SYSDATE);

INSERT INTO reservation(id, sid, timeid, aid, rdate,  rcnt, payment)
	VALUES(res_seq.NEXTVAL, 1, 1, 1, SYSDATE, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, rdate,  rcnt, payment)
	VALUES(res_seq.NEXTVAL, 3, 2, 1, SYSDATE, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, rdate,  rcnt, payment)
	VALUES(res_seq.NEXTVAL, 8, 8, 1, SYSDATE, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, rdate,  rcnt, payment)
	VALUES(res_seq.NEXTVAL, 5, 21, 1, SYSDATE, 1, 'k');
	
select * from reservation where aid = 1;

-- aid로 내가 본 영화의 mid를 가져온다.
select mid
  from MOVIE_THEATER MT
 where MT.id IN (select mtid
				   from time T
				  where T.id IN (select timeid
				                   from reservation R
				                  where R.aid = 1));