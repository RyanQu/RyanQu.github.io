

CREATE TABLE `director` (
    `dir_id` int,
    `dir_fname` varchar(20),
    `dir_lname` varchar(20)
);

INSERT INTO director VALUES('201','Alfred','Hitchcock');
INSERT INTO director VALUES('202','Jack','Clayton');
INSERT INTO director VALUES('203','David','Lean');
INSERT INTO director VALUES('204','Michael','Cimino');
INSERT INTO director VALUES('205','Milos','Forman');
INSERT INTO director VALUES('206','Ridley','Scott');
INSERT INTO director VALUES('207','Stanley','Kubrick');
INSERT INTO director VALUES('208','Bryan','Singer');
INSERT INTO director VALUES('209','Roman','Polanski');
INSERT INTO director VALUES('210','Paul','Thomas Anderson');
INSERT INTO director VALUES('211','Woody','Allen');
INSERT INTO director VALUES('212','Hayao','Miyazaki');
INSERT INTO director VALUES('213','Frank','Darabont');
INSERT INTO director VALUES('214','Sam','Mendes');
INSERT INTO director VALUES('215','James','Cameron');
INSERT INTO director VALUES('216','Gus','Van Sant');
INSERT INTO director VALUES('217','John','Boorman');
INSERT INTO director VALUES('218','Danny','Boyle');
INSERT INTO director VALUES('219','Christopher','Nolan');
INSERT INTO director VALUES('220','Richard','Kelly');
INSERT INTO director VALUES('221','Kevin','Spacey');
INSERT INTO director VALUES('222','Andrei','Tarkovsky');
INSERT INTO director VALUES('223','Peter','Jackson');

CREATE TABLE `genres`(
`gen_id` int,
`gen_title` varchar(20)
);

INSERT INTO genres VALUES('1002','Adventure');
INSERT INTO genres VALUES('1003','Animation');
INSERT INTO genres VALUES('1004','Biography');
INSERT INTO genres VALUES('1005','Comedy');
INSERT INTO genres VALUES('1006','Crime');
INSERT INTO genres VALUES('1007','Drama');
INSERT INTO genres VALUES('1008','Horror');
INSERT INTO genres VALUES('1009','Music');
INSERT INTO genres VALUES('1010','Mystery');
INSERT INTO genres VALUES('1011','Romance');
INSERT INTO genres VALUES('1012','Thriller');
INSERT INTO genres VALUES('1013','War');

CREATE TABLE `movie`(
`mov_id` int,
`mov_title` varchar(30),
`mov_year` int,
`mov_time` int,
`mov_lang` varchar(20),
`mov_dt_rel` varchar(20),
`mov_rel_country` varchar(10)
);

INSERT INTO movie VALUES('901','Vertigo','1958','128','English','1958-08-24','UK');
INSERT INTO movie VALUES('902','The Innocents','1961','100','English','1962-02-19','SW');
INSERT INTO movie VALUES('903','Lawrence of Arabia','1962','216','English','1962-12-11','UK');
INSERT INTO movie VALUES('904','The Deer Hunter','1978','183','English','1979-03-08','UK');
INSERT INTO movie VALUES('905','Amadeus','1984','160','English','1985-01-07','UK');
INSERT INTO movie VALUES('906','Blade Runner','1982','117','English','1982-09-09','UK');
INSERT INTO movie VALUES('907','Eyes Wide Shut','1999','159','English','','UK');
INSERT INTO movie VALUES('908','The Usual Suspects','1995','106','English','1995-08-25','UK');
INSERT INTO movie VALUES('909','Chinatown','1974','130','English','1974-08-09','UK');
INSERT INTO movie VALUES('910','Boogie Nights','1997','155','English','1998-02-16','UK');
INSERT INTO movie VALUES('911','Annie Hall','1977','93','English','1977-04-20','USA');
INSERT INTO movie VALUES('912','Princess Mononoke','1997','134','Japanese','2001-10-19','UK');
INSERT INTO movie VALUES('913','The Shawshank Redemption','1994','142','English','1995-02-17','UK');
INSERT INTO movie VALUES('914','American Beauty','1999','122','English','','UK');
INSERT INTO movie VALUES('915','Titanic','1997','194','English','1998-01-23','UK');
INSERT INTO movie VALUES('916','Good Will Hunting','1997','126','English','1998-06-03','UK');
INSERT INTO movie VALUES('917','Deliverance','1972','109','English','1982-10-05','UK');
INSERT INTO movie VALUES('918','Trainspotting','1996','94','English','1996-02-23','UK');
INSERT INTO movie VALUES('919','The Prestige','2006','130','English','2006-11-10','UK');
INSERT INTO movie VALUES('920','Donnie Darko','2001','113','English','','UK');
INSERT INTO movie VALUES('921','Slumdog Millionaire','2008','120','English','2009-01-09','UK');
INSERT INTO movie VALUES('922','Aliens','1986','137','English','1986-08-29','UK');
INSERT INTO movie VALUES('923','Beyond the Sea','2004','118','English','2004-11-26','UK');
INSERT INTO movie VALUES('924','Avatar','2009','162','English','2009-12-17','UK ');
INSERT INTO movie VALUES('926','Seven Samurai','1954','207','Japanese','1954-04-26','JP');
INSERT INTO movie VALUES('927','Spirited Away','2001','125','Japanese','2003-09-12','UK');
INSERT INTO movie VALUES('928','Back to the Future','1985','116','English','1985-12-04','UK');
INSERT INTO movie VALUES('925','Braveheart','1995','178','English','1995-09-08','UK');

CREATE TABLE `movie_cast` (
`act_id` int,
`mov_id` int,
`role` varchar(30)
);


INSERT INTO movie_cast VALUES('102','902','Miss Giddens');
INSERT INTO movie_cast VALUES('103','903','T.E. Lawrence');
INSERT INTO movie_cast VALUES('104','904','Michael');
INSERT INTO movie_cast VALUES('105','905','Antonio Salieri');
INSERT INTO movie_cast VALUES('106','906','Rick Deckard');
INSERT INTO movie_cast VALUES('107','907','Alice Harford');
INSERT INTO movie_cast VALUES('108','908','McManus');
INSERT INTO movie_cast VALUES('110','910','Eddie Adams');
INSERT INTO movie_cast VALUES('111','911','Alvy Singer');
INSERT INTO movie_cast VALUES('112','912','San');
INSERT INTO movie_cast VALUES('113','913','Andy Dufresne');
INSERT INTO movie_cast VALUES('114','914','Lester Burnham');
INSERT INTO movie_cast VALUES('115','915','Rose DeWitt Bukater');
INSERT INTO movie_cast VALUES('116','916','Sean Maguire');
INSERT INTO movie_cast VALUES('117','917','Ed');
INSERT INTO movie_cast VALUES('118','918','Renton');
INSERT INTO movie_cast VALUES('120','920','Elizabeth Darko');
INSERT INTO movie_cast VALUES('121','921','Older Jamal');
INSERT INTO movie_cast VALUES('122','922','Ripley');
INSERT INTO movie_cast VALUES('114','923','Bobby Darin');
INSERT INTO movie_cast VALUES('109','909','J.J. Gittes');
INSERT INTO movie_cast VALUES('119','919','Alfred Borden');
INSERT INTO movie_cast VALUES('101','901','John Scottie Ferguson');
INSERT INTO movie_cast VALUES('102','902','Miss Giddens');
INSERT INTO movie_cast VALUES('103','903','T.E. Lawrence');
INSERT INTO movie_cast VALUES('104','904','Michael');
INSERT INTO movie_cast VALUES('105','905','Antonio Salieri');
INSERT INTO movie_cast VALUES('106','906','Rick Deckard');
INSERT INTO movie_cast VALUES('107','907','Alice Harford');
INSERT INTO movie_cast VALUES('108','908','McManus');
INSERT INTO movie_cast VALUES('110','910','Eddie Adams');
INSERT INTO movie_cast VALUES('111','911','Alvy Singer');
INSERT INTO movie_cast VALUES('112','912','San');
INSERT INTO movie_cast VALUES('113','913','Andy Dufresne');
INSERT INTO movie_cast VALUES('114','914','Lester Burnham');
INSERT INTO movie_cast VALUES('115','915','Rose DeWitt Bukater');
INSERT INTO movie_cast VALUES('116','916','Sean Maguire');
INSERT INTO movie_cast VALUES('117','917','Ed');
INSERT INTO movie_cast VALUES('118','918','Renton');
INSERT INTO movie_cast VALUES('120','920','Elizabeth Darko');
INSERT INTO movie_cast VALUES('121','921','Older Jamal');
INSERT INTO movie_cast VALUES('122','922','Ripley');
INSERT INTO movie_cast VALUES('114','923','Bobby Darin');
INSERT INTO movie_cast VALUES('109','909','J.J. Gittes');
INSERT INTO movie_cast VALUES('119','919','Alfred Borden');

CREATE TABLE `movie_direction`(
`dir_id` int,
`mov_id` int
);

INSERT INTO movie_direction VALUES('201','901');
INSERT INTO movie_direction VALUES('202','902');
INSERT INTO movie_direction VALUES('203','903');
INSERT INTO movie_direction VALUES('204','904');
INSERT INTO movie_direction VALUES('205','905');
INSERT INTO movie_direction VALUES('206','906');
INSERT INTO movie_direction VALUES('207','907');
INSERT INTO movie_direction VALUES('208','908');
INSERT INTO movie_direction VALUES('209','909');
INSERT INTO movie_direction VALUES('210','910');
INSERT INTO movie_direction VALUES('211','911');
INSERT INTO movie_direction VALUES('212','912');
INSERT INTO movie_direction VALUES('213','913');
INSERT INTO movie_direction VALUES('214','914');
INSERT INTO movie_direction VALUES('215','915');
INSERT INTO movie_direction VALUES('216','916');
INSERT INTO movie_direction VALUES('217','917');
INSERT INTO movie_direction VALUES('218','918');
INSERT INTO movie_direction VALUES('219','919');
INSERT INTO movie_direction VALUES('220','920');
INSERT INTO movie_direction VALUES('218','921');
INSERT INTO movie_direction VALUES('215','922');
INSERT INTO movie_direction VALUES('221','923');
INSERT INTO movie_direction VALUES('201','901');
INSERT INTO movie_direction VALUES('202','902');
INSERT INTO movie_direction VALUES('203','903');
INSERT INTO movie_direction VALUES('204','904');
INSERT INTO movie_direction VALUES('205','905');
INSERT INTO movie_direction VALUES('206','906');
INSERT INTO movie_direction VALUES('207','907');
INSERT INTO movie_direction VALUES('208','908');
INSERT INTO movie_direction VALUES('209','909');
INSERT INTO movie_direction VALUES('210','910');
INSERT INTO movie_direction VALUES('211','911');
INSERT INTO movie_direction VALUES('212','912');
INSERT INTO movie_direction VALUES('213','913');
INSERT INTO movie_direction VALUES('214','914');
INSERT INTO movie_direction VALUES('215','915');
INSERT INTO movie_direction VALUES('216','916');
INSERT INTO movie_direction VALUES('217','917');
INSERT INTO movie_direction VALUES('218','918');
INSERT INTO movie_direction VALUES('219','919');
INSERT INTO movie_direction VALUES('220','920');
INSERT INTO movie_direction VALUES('218','921');
INSERT INTO movie_direction VALUES('215','922');
INSERT INTO movie_direction VALUES('221','923');

CREATE TABLE `movie_genres`(
`mov_id` int,
`gen_id` int
);

INSERT INTO movie_genres VALUES('917','1002');
INSERT INTO movie_genres VALUES('903','1002');
INSERT INTO movie_genres VALUES('912','1003');
INSERT INTO movie_genres VALUES('911','1005');
INSERT INTO movie_genres VALUES('908','1006');
INSERT INTO movie_genres VALUES('913','1006');
INSERT INTO movie_genres VALUES('926','1007');
INSERT INTO movie_genres VALUES('928','1007');
INSERT INTO movie_genres VALUES('918','1007');
INSERT INTO movie_genres VALUES('921','1007');
INSERT INTO movie_genres VALUES('902','1008');
INSERT INTO movie_genres VALUES('923','1009');
INSERT INTO movie_genres VALUES('907','1010');
INSERT INTO movie_genres VALUES('927','1010');
INSERT INTO movie_genres VALUES('901','1010');
INSERT INTO movie_genres VALUES('914','1011');
INSERT INTO movie_genres VALUES('906','1012');
INSERT INTO movie_genres VALUES('904','1013');
INSERT INTO movie_genres VALUES('922','1001');
INSERT INTO movie_genres VALUES('917','1002');
INSERT INTO movie_genres VALUES('903','1002');
INSERT INTO movie_genres VALUES('912','1003');
INSERT INTO movie_genres VALUES('911','1005');
INSERT INTO movie_genres VALUES('908','1006');
INSERT INTO movie_genres VALUES('913','1006');
INSERT INTO movie_genres VALUES('926','1007');
INSERT INTO movie_genres VALUES('928','1007');
INSERT INTO movie_genres VALUES('918','1007');
INSERT INTO movie_genres VALUES('921','1007');
INSERT INTO movie_genres VALUES('902','1008');
INSERT INTO movie_genres VALUES('923','1009');
INSERT INTO movie_genres VALUES('907','1010');
INSERT INTO movie_genres VALUES('927','1010');
INSERT INTO movie_genres VALUES('901','1010');
INSERT INTO movie_genres VALUES('914','1011');
INSERT INTO movie_genres VALUES('906','1012');
INSERT INTO movie_genres VALUES('904','1013');

CREATE TABLE `rating`(
`mov_id` int,
`rev_id` int,
`rev_stars` int,
`num_o_ratings` int
);

INSERT INTO rating VALUES('902','9002','7.90','20207');
INSERT INTO rating VALUES('903','9003','8.30','202778');
INSERT INTO rating VALUES('906','9005','8.20','484746');
INSERT INTO rating VALUES('924','9006','7.30','');
INSERT INTO rating VALUES('908','9007','8.60','779489');
INSERT INTO rating VALUES('909','9008','','227235');
INSERT INTO rating VALUES('910','9009','3.00','195961');
INSERT INTO rating VALUES('911','9010','8.10','203875');
INSERT INTO rating VALUES('912','9011','8.40','');
INSERT INTO rating VALUES('914','9013','7.00','862618');
INSERT INTO rating VALUES('915','9001','7.70','830095');
INSERT INTO rating VALUES('916','9014','4.00','642132');
INSERT INTO rating VALUES('925','9015','7.70','81328');
INSERT INTO rating VALUES('918','9016','','580301');
INSERT INTO rating VALUES('920','9017','8.10','609451');
INSERT INTO rating VALUES('921','9018','8.00','667758');
INSERT INTO rating VALUES('922','9019','8.40','511613');
INSERT INTO rating VALUES('923','9020','6.70','13091');
INSERT INTO rating VALUES('901','9001','8.40','263575');
INSERT INTO rating VALUES('902','9002','7.90','20207');
INSERT INTO rating VALUES('903','9003','8.30','202778');
INSERT INTO rating VALUES('906','9005','8.20','484746');
INSERT INTO rating VALUES('924','9006','7.30','');
INSERT INTO rating VALUES('908','9007','8.60','779489');
INSERT INTO rating VALUES('909','9008','','227235');
INSERT INTO rating VALUES('910','9009','3.00','195961');
INSERT INTO rating VALUES('911','9010','8.10','203875');
INSERT INTO rating VALUES('912','9011','8.40','');
INSERT INTO rating VALUES('914','9013','7.00','862618');
INSERT INTO rating VALUES('915','9001','7.70','830095');
INSERT INTO rating VALUES('916','9014','4.00','642132');
INSERT INTO rating VALUES('925','9015','7.70','81328');
INSERT INTO rating VALUES('918','9016','','580301');
INSERT INTO rating VALUES('920','9017','8.10','609451');
INSERT INTO rating VALUES('921','9018','8.00','667758');
INSERT INTO rating VALUES('922','9019','8.40','511613');
INSERT INTO rating VALUES('923','9020','6.70','13091');


CREATE TABLE `reviewer` (
`rev_id` int,
`rev_name` varchar(30)
);

INSERT INTO reviewer VALUES('9002','Jack Malvern');
INSERT INTO reviewer VALUES('9003','Flagrant Baronessa');
INSERT INTO reviewer VALUES('9004','Alec Shaw');
INSERT INTO reviewer VALUES('9005','');
INSERT INTO reviewer VALUES('9006','Victor Woeltjen');
INSERT INTO reviewer VALUES('9007','Simon Wright');
INSERT INTO reviewer VALUES('9008','Neal Wruck');
INSERT INTO reviewer VALUES('9009','Paul Monks');
INSERT INTO reviewer VALUES('9010','Mike Salvati');
INSERT INTO reviewer VALUES('9011','');
INSERT INTO reviewer VALUES('9012','Wesley S. Walker');
INSERT INTO reviewer VALUES('9013','Sasha Goldshtein');
INSERT INTO reviewer VALUES('9014','Josh Cates');
INSERT INTO reviewer VALUES('9015','Krug Stillo');
INSERT INTO reviewer VALUES('9016','Scott LeBrun');
INSERT INTO reviewer VALUES('9017','Hannah Steele');
INSERT INTO reviewer VALUES('9018','Vincent Cadena');
INSERT INTO reviewer VALUES('9019','Brandt Sponseller');
INSERT INTO reviewer VALUES('9020','Richard Adams');

CREATE TABLE `actor` (
`act_id` int,
`act_fname` varchar(20),
`act_lname` varchar(20),
`act_gender` varchar(1)
);

INSERT INTO actor VALUES('101','James','Stewart','M');
INSERT INTO actor VALUES('102','Deborah','Kerr','F');
INSERT INTO actor VALUES('103','Peter','OToole','M');
INSERT INTO actor VALUES('104','Robert','De Niro','M');
INSERT INTO actor VALUES('105','F. Murray','Abraham','M');
INSERT INTO actor VALUES('106','Harrison','Ford','M');
INSERT INTO actor VALUES('107','Nicole','Kidman','F');
INSERT INTO actor VALUES('108','Stephen','Baldwin','M');
INSERT INTO actor VALUES('109','Jack','Nicholson','M');
INSERT INTO actor VALUES('110','Mark','Wahlberg','M');
INSERT INTO actor VALUES('111','Woody','Allen','M');
INSERT INTO actor VALUES('112','Claire','Danes','F');
INSERT INTO actor VALUES('113','Tim','Robbins','M');
INSERT INTO actor VALUES('114','Kevin','Spacey','M');
INSERT INTO actor VALUES('115','Kate','Winslet','F');
INSERT INTO actor VALUES('116','Robin','Williams','M');
INSERT INTO actor VALUES('117','Jon','Voight','M');
INSERT INTO actor VALUES('118','Ewan','McGregor','M');
INSERT INTO actor VALUES('119','Christian','Bale','M');
INSERT INTO actor VALUES('120','Maggie','Gyllenhaal','F');
INSERT INTO actor VALUES('121','Dev','Patel','M');
INSERT INTO actor VALUES('122','Sigourney','Weaver','F');
INSERT INTO actor VALUES('123','David','Aston','M');
INSERT INTO actor VALUES('124','Ali','Astin','F');
