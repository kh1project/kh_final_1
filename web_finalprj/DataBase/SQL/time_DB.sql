SELECT * FROM time;
CREATE SEQUENCE time_seq;
DROP SEQUENCE time_seq;

INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 1, TO_DATE('21/06/28', 'YY/MM/DD'), '11:30:00', '13:14:00');
INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 1, TO_DATE('21/06/28', 'YY/MM/DD'), '13:34:00', '15:18:00');

INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 2, TO_DATE('21/06/28', 'YY/MM/DD'), '11:40:00', '13:24:00');
INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 2, TO_DATE('21/06/28', 'YY/MM/DD'), '13:44:00', '15:28:00');

INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 1, TO_DATE('21/06/29', 'YY/MM/DD'), '11:20:00', '13:04:00');
INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 1, TO_DATE('21/06/29', 'YY/MM/DD'), '13:04:00', '15:08:00');

INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 2, TO_DATE('21/06/29', 'YY/MM/DD'), '11:30:00', '13:14:00');
INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 2, TO_DATE('21/06/29', 'YY/MM/DD'), '13:34:00', '15:18:00');

INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 3, TO_DATE('21/07/01', 'YY/MM/DD'), '11:30:00', '13:14:00'); --21
INSERT INTO time(id, mtid, moviedate, starttime, endtime) VALUES(time_seq.NEXTVAL, 3, TO_DATE('21/07/01', 'YY/MM/DD'), '13:34:00', '15:18:00'); --22