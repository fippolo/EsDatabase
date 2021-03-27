CREATE TABLE Genere 
(
   IDgenere int identity (1,1) primary key,
   genere varchar (30)
);

CREATE TABLE Artista
(
   IDartista int identity (1,1) primary key,
   nome_artista varchar (30)
);

CREATE TABLE Album
(
   IDalbum int identity (1,1) primary key,
   nome_album varchar (50),
   data_album varchar (8),
   artistaID int,
   genereID int,
   constraint fkartista foreign key (artistaID) references artista (IDartista),
   constraint fkgenere foreign key (genereID) references genere (IDgenere)
);

CREATE TABLE Brani
(
   IDbrano int identity (1,1) primary key,
   titolo varchar (50),
   durata TIME,
   albumID int,
   constraint fknumbrani foreign key (albumID) references album (IDalbum)
);

INSERT INTO artista (nome_artista) values ('Pino Daniele');
INSERT INTO genere (genere) values ('Blues');
INSERT INTO album (nome_album, data_album,artistaID, genereID) values ('Nero a metà', 1982,1,1);

INSERT INTO Brani(titolo, durata, albumID)
VALUES ('I Say i sto ccà',CONVERT(time, '4:08'),1),
('Musica musica',CONVERT(time, '2:49'),1),
('Quanno chiove',CONVERT(time, '4:35'),1),
('Puozze passà nu guaio',CONVERT(time, '3:05'),1),
('Voglio di più',CONVERT(time, '4:02'),1),
('Appocundria',CONVERT(time, '1:36'),1),
('A me me piace o blues',CONVERT(time, '3:01'),1),
('E so cuntento e sta',CONVERT(time, '4:29'),1),
('Nun me scoccià',CONVERT(time, '3:35'),1),
('Alleria',CONVERT(time, '3:11'),1),
('A testa in giù',CONVERT(time, '3:44'),1),
('Sotto o sole',CONVERT(time, '3:02'),1)


INSERT INTO artista (nome_artista) values ('AC/DC');
INSERT INTO genere (genere) values ('Hard rock');
INSERT INTO album (nome_album, data_album,artistaID, genereID) values ('Live', 1992,2,2);

INSERT INTO Brani(titolo, durata, albumID)
VALUES ('Thunderstruck',CONVERT(time, '4:52'),2),
('Shoot to Thrill ',CONVERT(time, '5:47 '),2),
('Back in Black',CONVERT(time, '4:15'),2),
('Who Made Who',CONVERT(time, '3:27'),2),
('Heatseeker',CONVERT(time, '3:51'),2),
('The Jack',CONVERT(time, '5:53'),2),
('Moneytalks', CONVERT(time,'3:45'),2),
('Hells Bells',CONVERT(time, '5:13'),2),
('Dirty Deeds Done Dirt Cheap',CONVERT(time, '4:48'),2),
('Whole Lotta Rosie',CONVERT(time, '5:20'),2),
('You Shook Me All Night Long',CONVERT(time, '3:30'),2),
('Highway to Hell',CONVERT(time, '3:38'),2),
('T.N.T.', CONVERT(time,'3:36'),2),
('For Those About to Rock (We Salute You)', CONVERT(time,'5:44'),2)

INSERT INTO artista (nome_artista) values ('Skillet');
INSERT INTO genere (genere) values ('Rock');
INSERT INTO album (nome_album, data_album,artistaID, genereID) values ('Victorius', 2019,3,3);

INSERT INTO Brani(titolo, durata, albumID)
VALUES ('Legendary',CONVERT(time, '4:05 '),3),
('You Ain''t Ready',CONVERT(time, '3:19 '),3),
('Victorious',CONVERT(time, '4:05'),3),
('This Is the Kingdom',CONVERT(time, '3:27'),3),
('Save Me',CONVERT(time, '3:43'),3),
('Rise Up', CONVERT(time,'3:58'),3),
('Terrify The Dark ', CONVERT(time,'3:45'),3),
('Never Going Back', CONVERT(time,'3:33'),3),
('Reach',CONVERT(time, '3:23'),3),
('Anchor',CONVERT(time, '3:36'),3),
('Finish Line', CONVERT(time,'3:26'),3),
('Back To Life', CONVERT(time,'4:36'),3);

INSERT INTO artista (nome_artista) values ('Imagine Dragons');
INSERT INTO genere (genere) values ('Pop rock');
INSERT INTO album (nome_album, data_album, artistaID, genereID) values ('Origins', 2018, 4, 4);

INSERT INTO brani (titolo, durata, albumID)
VALUES ('Natural',CONVERT(time,'3:09'),4),
('Boomerang',CONVERT(time,'3:07'),4),
('Machine',CONVERT(time,'3:01'),4),
('Cool Out',CONVERT(time,'3:27'),4),
('Bad Liar',CONVERT(time,'4:20'),4),
('West Coast',CONVERT(time,'3:37'),4),
('Zero',CONVERT(time,'3:30'),4),
('Bullet in a Gun',CONVERT(time,'3:24'),4),
('Digital',CONVERT(time,'3:21'),4),
('Only',CONVERT(time,'3:00'),4),
('Stuck',CONVERT(time,'3:10'),4),
('Love',CONVERT(time,'2:46'),4);
