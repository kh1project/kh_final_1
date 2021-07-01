SELECT * FROM seat;

CREATE SEQUENCE seat_seq;

-- 강남 1관
begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'A', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'B', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'C', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'D', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'E', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'F', i, 'n');
    end loop;
end;

begin
    for i in 1..10 loop
       INSERT INTO seat(id, tid, seatrow, seatcol, reserved) VALUES (seat_seq.NEXTVAL, 1, 'G', i, 'n');
    end loop;
end;