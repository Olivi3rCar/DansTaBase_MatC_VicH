Select * from company;
Select * from chara;

INSERT INTO Company VALUE ('Glorp Corp', '3077', 'The Future Is Actually Tomorrow', 'Bogos Binted');

INSERT INTO move VALUE (2,1,9,'Kikoken EX','special',FALSE,'mid',55,12,3,18,-4,2);

SELECT * from move where ch_id = 2 AND v_id = 1;

DELETE FROM input WHERE  i_id = 9;

SELECT * from move where ch_id = 2 AND v_id = 1;