SELECT * FROM reservation;
CREATE SEQUENCE res_seq;
drop sequence res_seq;

SELECT * FROM account;

INSERT INTO ACCOUNT (id, name, nickname, email, phone, password, gender, age, joindate) VALUES(1, '어드민', '어드민', 'admin@admin.com', '010-1234-1234', 'admin', 'F', 25, SYSDATE);

INSERT INTO reservation(id, sid, timeid, aid, payment)
                                    VALUES(res_seq.NEXTVAL, 1, 1, 1, 'k');
                                    
INSERT INTO reservation(id, sid, timeid, aid, payment)
                                    VALUES(res_seq.NEXTVAL, 2, 3, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, payment)
                                    VALUES(res_seq.NEXTVAL, 5, 3, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, payment)
                                    VALUES(res_seq.NEXTVAL, 7, 4, 1, 'k');
INSERT INTO reservation(id, sid, timeid, aid, payment)
                                    VALUES(res_seq.NEXTVAL, 1, 2, 1, 'k');

                                    
SELECT * FROM reservation;
delete from reservation;