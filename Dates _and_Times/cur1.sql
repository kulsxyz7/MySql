-- CURDATE() - gives current DATE
-- CURTIME() - gives current TIME
-- NOW() gives current DATETIME

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

DELETE FROM people WHERE name='Microwave';