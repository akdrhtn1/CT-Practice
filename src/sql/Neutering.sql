--보호소에 중성화한 동물

SELECT * FROM ANIMAL_INS;

INSERT INTO ANIMAL_INS VALUES('A367438','Dog',to_date('2015-09-10 16:01:00','yyyy-mm-dd hh24:mi:ss'),'Normal','Cookie','Spayed Female');
INSERT INTO ANIMAL_INS VALUES('A382192','Dog',to_date('2015-03-13 13:14:00','yyyy-mm-dd hh24:mi:ss'),'Sick','Maxwell 2','Intact Male');
INSERT INTO ANIMAL_INS VALUES('A405494','Dog',to_date('2014-05-16 14:17:00','yyyy-mm-dd hh24:mi:ss'),'Normal','	Kaila','Spayed Female');
INSERT INTO ANIMAL_INS VALUES('A410330','Dog',to_date('2016-09-11 14:09:00','yyyy-mm-dd hh24:mi:ss'),'Sick','Chewy','Intact Male');


INSERT INTO ANIMAL_OUTS VALUES('A367438','Dog',to_date('2015-09-10 16:01:00','yyyy-mm-dd hh24:mi:ss'),'Cookie','Spayed Female');
INSERT INTO ANIMAL_OUTS VALUES('A382192','Dog',to_date('2015-03-13 13:14:00','yyyy-mm-dd hh24:mi:ss'),'Maxwell 2','Neutered Male');
INSERT INTO ANIMAL_OUTS VALUES('A405494','Dog',to_date('2014-05-16 14:17:00','yyyy-mm-dd hh24:mi:ss'),'Kaila','Spayed Female');
INSERT INTO ANIMAL_OUTS VALUES('A410330','Dog',to_date('2016-09-11 14:09:00','yyyy-mm-dd hh24:mi:ss'),'Chewy','Spayed Female');

COMMIT;

SELECT AO.ANIMAL_ID,AO.ANIMAL_TYPE, AO.NAME
FROM ANIMAL_INS AI
INNER JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE <> AO.SEX_UPON_OUTCOME
ORDER BY AO.ANIMAL_ID;
