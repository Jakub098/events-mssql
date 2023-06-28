CREATE TABLE Place_address (
    id_place_address INT NOT NULL IDENTITY,
    street VARCHAR(64),
    house_number VARCHAR(3),
    postal_code VARCHAR(5),
    city VARCHAR(64),
    CONSTRAINT PK_Place_address PRIMARY KEY (id_place_address)
);

CREATE TABLE Event_type (
    id_event_type INT NOT NULL IDENTITY,
    name VARCHAR(64),
    description VARCHAR(3) NULL,
    CONSTRAINT PK_Event_type PRIMARY KEY (id_event_type)
);

CREATE TABLE Performer (
    id_performer INT NOT NULL IDENTITY,
    name VARCHAR(64),
    CONSTRAINT PK_Performer PRIMARY KEY (id_performer)
);

CREATE TABLE Place (
    id_place INT NOT NULL IDENTITY,
    name VARCHAR(64),
    capacity INT,
    id_place_address int  NOT NULL,
    CONSTRAINT PK_Place PRIMARY KEY (id_place)
);

CREATE TABLE Event (
    id_event INT NOT NULL IDENTITY,
    name VARCHAR(64),
    event_date DATETIME,
    id_place int  NOT NULL,
    id_event_type int  NOT NULL,
    CONSTRAINT PK_Event PRIMARY KEY (id_event)
);

CREATE TABLE Performance (
    id_performance INT NOT NULL IDENTITY,
    id_event INT  NOT NULL,
    id_performer INT  NOT NULL,
    CONSTRAINT PK_Performance PRIMARY KEY (id_performance)
);

ALTER TABLE Place
ADD CONSTRAINT Place_Place_address
FOREIGN KEY (id_place_address) REFERENCES Place_address (id_place_address);

ALTER TABLE Event
ADD CONSTRAINT Event_Event_type
FOREIGN KEY (id_event_type) REFERENCES Event_type (id_event_type);

ALTER TABLE Event
ADD CONSTRAINT Event_Place
FOREIGN KEY (id_place) REFERENCES Place (id_place);

ALTER TABLE Performance
ADD CONSTRAINT Performance_Event
FOREIGN KEY (id_event) REFERENCES Event (id_event);

ALTER TABLE Performance
ADD CONSTRAINT Performance_Performer
FOREIGN KEY (id_Performer) REFERENCES Performer (id_Performer);