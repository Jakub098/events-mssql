ALTER TABLE Event 
DROP CONSTRAINT Event_Event_type;

ALTER TABLE EVENT
DROP CONSTRAINT Event_Place;

ALTER TABLE Performance
DROP CONSTRAINT Performance_Event;

ALTER TABLE Performance
DROP CONSTRAINT Performance_Performer;

ALTER TABLE Place
DROP CONSTRAINT Place_Place_address;

DROP TABLE Event;
DROP TABLE Event_type;
DROP TABLE Performance;
DROP TABLE Performer;
DROP TABLE Place;
DROP TABLE Place_address;