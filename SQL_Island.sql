-- https://sql-island.informatik.uni-kl.de/

SELECT * FROM village;

SELECT * FROM INHABITANT;

SELECT * FROM inhabitant WHERE job = 'butcher';


SELECT * FROM INHABITANT WHERE state = 'friendly';


SELECT * FROM INHABITANT WHERE state = 'friendly' AND job LIKE '%smith';

INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?');

SELECT personid FROM INHABITANT WHERE name = 'Stranger';

SELECT gold FROM INHABITANT WHERE name = 'Stranger';

SELECT * FROM ITEM WHERE owner IS NULL;

UPDATE item SET owner = 20 WHERE item = 'coffee cup';

UPDATE ITEM SET owner = 20 WHERE owner IS NULL;

SELECT * FROM ITEM WHERE owner = 20;

SELECT * FROM INHABITANT WHERE job IN ('dealer', 'merchant') AND state = 'friendly';
