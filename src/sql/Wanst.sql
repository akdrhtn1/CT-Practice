-- 있었는데요 없었습니다.!! 

SELECT * FROM ANIMAL_INS;

INSERT INTO ANIMAL_INS VALUES('A350276','CAT',to_date('2017/08/13 13:50:00','yyyy-mm-dd hh24:mi:ss'),'Normal','Jewel','Spayed Female');
INSERT INTO ANIMAL_INS VALUES('A381217','DOG',to_date('2017/08/13 13:50:00','yyyy-mm-dd hh24:mi:ss'),'Sick','Cherokee','Male');

INSERT INTO ANIMAL_OUTS VALUES('A350276','CAT',to_date('2018/08/13 13:50:00','yyyy-mm-dd hh24:mi:ss'),'Jewel','Spayed Female');
INSERT INTO ANIMAL_OUTS VALUES('A381217','DOG',to_date('2016/08/13 13:50:00','yyyy-mm-dd hh24:mi:ss'),'Cherokee','Male');
COMMIT;

SELECT AO.ANIMAL_ID, AO.NAME
FROM ANIMAL_INS AI
INNER JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.DATETIME >= AO.DATETIME
ORDER BY AI.DATETIME;
