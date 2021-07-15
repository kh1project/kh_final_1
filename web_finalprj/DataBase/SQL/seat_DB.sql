SELECT * FROM seat;
SELECT * FROM seat WHERE id = 292;
DELETE seat;

DROP SEQUENCE seat_seq;
CREATE SEQUENCE seat_seq;

-- 강남 1관 A
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', 14, 'n');

-- 강남 1관 B
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', 14, 'n');

-- 강남 1관 C
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', 14, 'n');

-- 강남 1관 D
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', 14, 'n');

-- 강남 1관 E
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', 14, 'n');

-- 강남 1관 F
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', 14, 'n');

-- 강남 1관 G
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', 14, 'n');

-- 시간 구분

-- 강남 1관 A
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'A', 14, 'n');

-- 강남 1관 B
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'B', 14, 'n');

-- 강남 1관 C
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'C', 14, 'n');

-- 강남 1관 D
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'D', 14, 'n');

-- 강남 1관 E
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'E', 14, 'n');

-- 강남 1관 F
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'F', 14, 'n');

-- 강남 1관 G
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 2, 'G', 14, 'n');

-- 시간 구분
-- 강남 1관 A
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'A', 14, 'n');

-- 강남 1관 B
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'B', 14, 'n');

-- 강남 1관 C
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'C', 14, 'n');

-- 강남 1관 D
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'D', 14, 'n');

-- 강남 1관 E
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'E', 14, 'n');

-- 강남 1관 F
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'F', 14, 'n');

-- 강남 1관 G
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 1, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 2, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 3, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 4, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 5, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 6, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 7, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 8, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 9, 'n');

INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 10, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 11, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 12, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 13, 'n');
INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 3, 'G', 14, 'n');