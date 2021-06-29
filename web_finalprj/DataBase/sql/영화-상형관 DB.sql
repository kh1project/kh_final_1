SELECT * FROM movie_theater;

CREATE SEQUENCE movie_t_seq;

-- 위왓치유(ID : 1) / 강남 1관(ID : 1)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 1, TO_DATE('21/09/12','YY/MM/DD'));
-- 위왓치유(ID : 1) / 강남대로 2관(ID : 4)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 4, TO_DATE('21/09/15','YY/MM/DD'));

-- 그 여름, 가장 차가웠던(ID : 2) / 고양스타필드 1관(ID :7)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 2, 7, TO_DATE('21/10/02','YY/MM/DD'));
-- 그 여름, 가장 차가웠던(ID : 2) / 김포한강신도시 2관(ID :10)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 2, 10, TO_DATE('21/09/24','YY/MM/DD'));

-- 그레타 툰베리(ID : 3) / 검단 1관(ID :13)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 3, 13, TO_DATE('21/09/24','YY/MM/DD'));
-- 그레타 툰베리(ID : 3) / 송도 2관(ID : 16)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 3, 16, TO_DATE('21/10/10','YY/MM/DD'));

-- 위왓치유(ID : 1) / 공주 1관(ID : 19)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 19, TO_DATE('21/09/02','YY/MM/DD'));
-- 위왓치유(ID : 1) / 논산 2관(ID : 22)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 22, TO_DATE('21/09/12','YY/MM/DD'));

-- 그 여름, 가장 차가웠던(ID : 2) / 경북도청 1관(ID :25)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 2, 25, TO_DATE('21/10/01','YY/MM/DD'));
-- 그 여름, 가장 차가웠던(ID : 2) / 경산하양 2관(ID :28)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 2, 28, TO_DATE('21/09/20','YY/MM/DD'));

-- 그레타 툰베리(ID : 3) / 광주상무 1관(ID :31)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 3, 31, TO_DATE('21/09/30','YY/MM/DD'));
-- 그레타 툰베리(ID : 3) / 송광주하남 2관(ID : 34)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 3, 34, TO_DATE('21/10/21','YY/MM/DD'));

COMMIT;