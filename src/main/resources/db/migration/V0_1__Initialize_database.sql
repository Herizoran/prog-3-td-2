CREATE TABLE team(
   id SERIAL,
   name VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(name)
);

CREATE TABLE sponsor(
   id SERIAL,
   name VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(name)
);

CREATE TABLE player(
   id SERIAL,
   name VARCHAR(50)  NOT NULL,
   number INTEGER NOT NULL,
   id_team INTEGER NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(name),
   UNIQUE(number),
   FOREIGN KEY(id_team) REFERENCES team(id)
);

CREATE TABLE play(
   id SERIAL,
   datetime TIMESTAMPZ,
   stadium VARCHAR(50) ,
   id_team INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_team) REFERENCES team(id)
;

CREATE TABLE team_sponsor(
   id_team INTEGER,
   id_sponsor INTEGER,
   PRIMARY KEY(id_team, id_sponsor),
   FOREIGN KEY(id_team) REFERENCES team(id),
   FOREIGN KEY(id_sponsor) REFERENCES sponsor(id)
);
