SELECT * FROM movie_theater;

DELETE movie_theater;
DROP SEQUENCE movie_t_seq;

CREATE SEQUENCE movie_t_seq;
--DROP SEQUENCE movie_t_seq;

-- 위왓치유(ID : 1) / 강남 1관(ID : 1)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 1, TO_DATE('21/09/12','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 2, 1, TO_DATE('21/09/13','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 3, 1, TO_DATE('21/09/14','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 4, 1, TO_DATE('21/09/15','YY/MM/DD'));
-- 강남 2관
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 4, 2, TO_DATE('21/09/15','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 5, 2, TO_DATE('21/09/15','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 6, 2, TO_DATE('21/09/15','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 7, 2, TO_DATE('21/09/15','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 8, 2, TO_DATE('21/09/15','YY/MM/DD'));
-- 강남대로 1관
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 8, 3, TO_DATE('21/09/15','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 9, 3, TO_DATE('21/09/18','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 10, 3, TO_DATE('21/09/20','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 11, 3, TO_DATE('21/09/25','YY/MM/DD'));
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 12, 3, TO_DATE('21/09/29','YY/MM/DD'));
-- 위왓치유(ID : 1) / 강남대로 2관(ID : 4)
INSERT INTO movie_theater(id, mid, tid, enddate) VALUES(movie_t_seq.NEXTVAL, 1, 4, TO_DATE('21/09/15','YY/MM/DD'));
-- 강동 1관

-- 강동 2관

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

-- 지역->지점 선택 후 상영중인 영화리스트 출력
-- 중복된 영화 제거 후 리스트 뽑기..
-- (theater = 지점별 상영관 테이블, movie_theater = 영화 상영관, movie = 영화)
SELECT distinct
	a.mid,
	--a.tid,
	--a.enddate,
	b.id,
	b.rating,
	b.title,
	--c.name,
	c.bid,
	d.location,
	d.name
FROM movie_theater a
JOIN movie b
ON a.mid = b.id
JOIN theater c
ON a.tid = c.id
JOIN branch d
ON c.bid = d.id
WHERE d.location = '서울' AND d.name = '강남';

-- 날짜 선택 ...해당 날짜 클릭시
-- 선택한 영화에 대한 관(1,2관)과 영화시작시간/영화종료시간, 총좌석수, 남은좌석수 리스트 출력
-- movie, movie_theater, time
SELECT t.mtid,
	t.moviedate,
	t.starttime,
	t.endtime,
	mt.id,
	mt.tid,
	mt.mid,
	t.bid,
	t.name
FROM time t
JOIN movie_theater mt
ON t.mtid = mt.id
JOIN theater t
ON mt.tid = t.id
WHERE mt.tid = '1' AND mt.mid = '1';

SELECT * FROM branch;
SELECT * FROM theater;
SELECT * FROM movie_theater;
SELECT * FROM time;
SELECT * FROM seat;
SELECT * FROM movie;

COMMIT;