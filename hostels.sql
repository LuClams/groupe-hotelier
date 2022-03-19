CREATE DATABASE hostel_group;
USE hostel_group;

CREATE TABLE customer (
                          id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                          name VARCHAR(30) NOT NULL,
                          email VARCHAR(30) NOT NULL,
                          password VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE visitors (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
)ENGINE=InnoDB;

CREATE TABLE admin (
                       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       name VARCHAR(30) NOT NULL,
                       password VARCHAR(30) NOT NULL,
                       email VARCHAR(50) NOT NULL
)ENGINE=InnoDB;
CREATE TABLE managers (
                          id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                          firstname VARCHAR(30) NOT NULL,
                          lastname VARCHAR(30) NOT NULL,
                          password VARCHAR(30) NOT NULL,
                          email VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE hostels (
                         id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         name VARCHAR(30) NOT NULL,
                         city VARCHAR(30) NOT NULL,
                         address VARCHAR(30) NOT NULL,
                         description TEXT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE rooms (
                       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       title VARCHAR(30) NOT NULL,
                       description TEXT NOT NULL,
                       price FLOAT
)ENGINE=InnoDB;

ALTER TABLE customers DROP name;
ALTER TABLE customers ADD firstname VARCHAR(255) NOT NULL;
ALTER TABLE customers ADD lastname VARCHAR(255) NOT NULL;

ALTER TABLE customers MODIFY password VARCHAR(255) NOT NULL;

insert into customers (firstname, lastname, email, password)
values  ('Clarey', 'Ronaghan', 'cronaghan0@github.io', '$2y$10$A6s261qSxbTfcL4rnBy2nunwTgLO67RFJXhUuEVDJjQDLY9BDTVu6'),
        ('Anne', 'Werrett', 'awerrett1@indiegogo.com', '$2y$10$TIkOfQMWNWhvKYE7k.FCG.JxEyLuJp.M75cln6/qLl1hOzfPZxp9m'),
        ('Melisenda', 'Dobrovsky', 'mdobrovsky2@shinystat.com', '$2y$10$PkyHpA2Wu7cuIGQpiQDy2uoolMivBI09wihRnADdou8rqUPPdnLE6'),
        ('Xaviera', 'Dearnly', 'xdearnly3@qq.com', '$2y$10$zJ9iYbounrJzbEyJvFRXCuR0bUzaUHHMrx7zzKnGSJB766DJMHEFy'),
        ('Janessa', 'Huyche', 'jhuyche4@wisc.edu', '$2y$10$m9N.KszQCuxToGak87cOw.8fg9pma74bsSaycJyJDefKgHpcOH7Re'),
        ('Leisha', 'Plumbridge', 'lplumbridge5@unicef.org', '$2y$10$2oyj0UYrTrHYBKdSNWYDXemz8WLnVTDC/2f8nZys2eVCHlN6Vctre'),
        ('Joann', 'Mabbe', 'jmabbe6@symantec.com', '$2y$10$3uFTOMt5MogQqbQpGd5MteXNNJRt0of67PdSVjY6dmWy1QLyeSQq6'),
        ('Nate', 'Edgeson', 'nedgeson7@domainmarket.com', '$2y$10$VPHXMTJyGqIvSOOtCgJDued.9yfQlp1OdSHYpBbRpkfIERPxXIxoa'),
        ('Wolfy', 'Bright', 'wbright8@hao123.com', '$2y$10$S4NAOqtdN9tY8CI9nOXxf.XihrM8V03A.l3LVd3eP1wppf96FD3D2'),
        ('Druci', 'Luttger', 'dluttger9@webs.com', '$2y$10$NB6mrK8Ne76ONQ99Wf8HGewLpvJ8YPiqt0Gs4KHdT4CN0NHAIIv3u'),
        ('Kassie', 'Sterre', 'ksterrea@instagram.com', '$2y$10$iNnUjmb6yTAOLJDViWDpf.QQQtc0itbLl6cNzPm6rVkEinOzFNh06');

ALTER TABLE managers MODIFY password VARCHAR(255) NOT NULL;
insert into managers (firstname, lastname, email, password)
values  ('Kassie', 'Sterre', 'ksterrea@instagram.com', '$2y$10$UWTOYiND2OYn3pOwG/Y42O5fB4whyVG19k/KJhrwJ6ezDdGRaQ/vS'),
        ('Cynthie', 'Gianelli', 'cgianellib@gnu.org', '$2y$10$3GlcVlnGQPAvsSTGDAmNvOoYQKUpUfj8CcwwjD2W1C0jtqk4AeOI.'),
        ('Sharyl', 'Davall', 'sdavallc@devhub.com', '$2y$10$mNj1VEVBtyp.hClxiZFBOexwzi/8qMPy6vQ8bRDE8V0tHZMM3U6kS'),
        ('Rudie', 'Turfitt', 'rturfittd@indiegogo.com', '$2y$10$pvd7oqbUozezPjTd6RDdJ.24UVZEzZy2J9sgj0NQUkPzmCnjr0Q5K'),
        ('Daphene', 'Joynes', 'djoynese@com.com', '$2y$10$kBczRH2Ayg/KJABNj8CbUuUVobNSpiq1il2Ads4ADGG7emEGYRsl6'),
        ('Beverley', 'Blamphin', 'bblamphinf@bloglovin.com', '$2y$10$hJRVo4jGxZYsLKu7AjrziOdGN.jCUgOi9bruqKskCowOOY3Rq5PH6'),
        ('Tabbie', 'Furley', 'tfurleyg@biblegateway.com', '$2y$10$nJ0Vr2YHYiNjLQC9AGOSneQxwD8QCs//AJ/rw8hjLTCdFtjgPA6HK');

ALTER TABLE admin DROP name;
ALTER TABLE admin ADD firstname VARCHAR(255) NOT NULL;
ALTER TABLE admin ADD lastname VARCHAR(255) NOT NULL;
ALTER TABLE admin MODIFY password VARCHAR(255) NOT NULL;

insert into admin (firstname, lastname, email, password)
values  ('Lunel', 'Clamy', 'lunelclamytj@outlook.fr', '$2y$10$I/ADaz3WyXCiAySazFao1uAmbNgitU88gWn4UdVwgD5Za0EV9UYUq'),
        ('Thorstein', 'Sandham', 'tsandhamh@twitpic.com', '$2y$10$65eGaOS4M7HDiTds5fCYjegVPb6oTvVpuUMoqK7TiBxRBizlxCY/S');

insert into hostels (name, city, address, description)
values  ('Westeen', 'LONDRES', '73992 Scott Circle', 'center change manufacturing furniture park learn yet broke come flow famous flat moment nine properly pitch sugar slowly sick strange facing mass whatever unknown'),
        ('Hyatt', 'PARIS', '7 Rue Forest Pass, 75010', 'clean hung full off tired gulf parent blanket careful certain essential on below understanding gate per purpose smoke complex shout damage term see live'),
        ('Cap', 'RIO DE JANEIRO', '1659 Judy Hill', 'married desert old question successful top tube fine did unhappy base hold roll relationship eight steam mark carry reader branch gather birth temperature lake'),
        ('Ibis', 'BERLIN', '3 Emmet Way', 'past leather enough troops negative harbor exchange increase thousand did whatever master giving bee swing north engine younger active composed any dug complex everybody'),
        ('Hotel V', 'LE CAIRE', '55220 Graedel Plaza', 'peace topic cheese pale citizen exclaimed education anybody guide skill simply ask pet element breathing with driving pile dirty nest wool dollar row particularly'),
        ('Jazzy', 'BROOKLYN', '475 Bayside Trail', 'include whose telephone nearly grown refer activity made clothing add speak blue fill stood cry faster cook composition famous firm several various this elephant'),
        ('Yadel', 'SYDNEY', '1440 Oneill Alley', 'deal die prevent wise attack running curious rain minute do mother jack highest stiff larger production silver began importance element fighting pony president charge');

UPDATE hostels SET city = 'NICE', address = '49 Rue Ameline' WHERE name = 'Westeen';
UPDATE hostels SET city = 'TOULOUSE', address = '58 Rue St-Etienne' WHERE name = 'Cap';
UPDATE hostels SET city = 'LYON', address = '26 Rue Daguenille' WHERE name = 'Ibis';
UPDATE hostels SET city = 'POITIERS', address = '74 Rue Estesse' WHERE name = 'Hotel V';
UPDATE hostels SET city = 'BORDEAUX', address = '3 Rue Soritel' WHERE name = 'Jazzy';
UPDATE hostels SET city = 'STRASBOURG', address = '57 Rue Firatome' WHERE name = 'Yadel';

UPDATE hostels SET address = '49 Rue Ameline, 06000' WHERE city = 'NICE';
UPDATE hostels SET address = '58 Rue St-Etienne, 31100' WHERE city = 'TOULOUSE';
UPDATE hostels SET address = '26 Rue Daguenille, 69000' WHERE city = 'LYON';
UPDATE hostels SET address = '74 Rue Estesse, 86000' WHERE city = 'POITIERS';
UPDATE hostels SET address = '3 Rue Soritel, 33300' WHERE city = 'BORDEAUX';
UPDATE hostels SET address = '57 Rue Firatome, 67000' WHERE city = 'STRASBOURG';

INSERT INTO rooms (title, price, description) VALUES ('AZUR', '678','whether opportunity fifth orbit however do question figure ice needs ordinary natural north usually give visitor is mainly important winter local cookies setting attempt'),
                                                     ('COTE', '678','fresh notice time among still product power typical religious entirely pay soon they dull create pig vowel continued beginning probably further habit friend doll'),
                                                     ('TEZAMI', '678','shoe chemical particles six nodded uncle triangle sun back bigger though free bar consist level west factor ship allow rabbit gasoline discovery speak began'),
                                                     ('LUX', '678','transportation declared play tears science announced gate shut magnet river with her gently supper immediately run graph nervous evening rising already trail cotton fire'),
                                                     ('RAGNAR', '678','basic what race compound equal taken rush scientific name trail making spin search machine forgot color rice forgotten primitive tent product fast twice species'),
                                                     ('LILO', '678','series rocky because heavy tropical cap equally map building usual anywhere weight team without wealth brother notice more safety finally positive desk brief month'),
                                                     ('GRAND TSIBILI', '678','straw many pile till die before clear hair wealth shorter ready nature creature rate yet give flies its taught identity forget practical officer station'),
                                                     ('ROMLEND', '678','simple finish rose lying apple note pig judge rock perhaps declared shelf buried period needs globe rush place dollar want fly longer bat article'),
                                                     ('NORIO', '678','back rule current satellites finest together basic whatever living worth eye supply five alphabet stronger function part lying magnet huge bridge purple change rush'),
                                                     ('NEW CITY', '678','animal doubt mile battle orbit serious rubber hardly anybody foreign pool everyone pipe harder finger shake tip break directly poet call shop both dollar'),
                                                     ('MOKO', '678','atom myself organization pen printed below suddenly tip gold burst forgotten help especially modern aware throw brief lake spite widely coffee movie silent force'),
                                                     ('ADEN', '678','blind just spend dirt mostly metal promised toward during egg pick equally lion ordinary leader serve union moving quick fall black meal fire length'),
                                                     ('ELEGANT', '678','themselves official with driver call pass than toward shown bat biggest numeral hit told plate route return potatoes soft heard example manner month whenever'),
                                                     ('MER', '678','shoe store put tales cattle save tribe until youth wash suddenly west second figure joined test object leave travel noise sport gather please wall'),
                                                     ('SABLE', '678','shirt sometime herself face actual wood scientific lake pine last length ever lovely reader generally image ground control smaller adventure screen girl classroom experiment'),
                                                     ('FIRAS', '678','walk thousand nothing snow fastened fallen mental moving no where industrial start remain hung run grabbed steam bell trip soil spend wear who support'),
                                                     ('IVERTUBANI', '678','except idea talk beneath there prize replace foreign handle breathe rock direction gentle cattle speed spider power fifteen stop lesson globe design ear swing'),
                                                     ('ATU', '678','eager roar fence opportunity system weight than completely factor us successful driven master giant late surprise headed excited balloon shoot move shirt connected golden'),
                                                     ('DKS-BRIDGE', '678','another same capital drink flies heavy spoken modern tropical college tall solution worse count cloud student location land opinion involved clothes alphabet run sat'),
                                                     ('SOLEIL', '678','purple shallow someone knew word sweet balance hunt feet yourself swung since accurate during maybe search factory ago research visitor care difficult happily for'),
                                                     ('LUNE', '678','represent first jar principal drink gulf active ear far saddle hospital mind practical red animal deep especially whole information sick they child later stairs'),
                                                     ('ETOILE', '678','president organized terrible wagon made crowd damage act depend likely income win drive suppose tell east wide twelve hungry army color seat eat grew');

ALTER TABLE managers MODIFY id INT NOT NULL;
ALTER TABLE managers ADD hostel_id INT NOT NULL;
ALTER TABLE managers DROP id;
ALTER TABLE managers ADD id INT NOT NULL;
ALTER TABLE managers DROP id;
ALTER TABLE managers DROP hostel_id;
ALTER TABLE managers ADD hostel_id INT NOT NULL;
USE hostel_group;
SHOW ENGINE INNODB STATUS;

ALTER TABLE rooms ADD hostel_id INT NOT NULL;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms ADD hostel_id INT NOT NULL;

UPDATE managers SET hostel_id = 1 WHERE  firstname = 'Kassie';
UPDATE managers SET hostel_id = 2 WHERE  firstname = 'Cynthie';

ALTER TABLE managers DROP hostel_id;
ALTER TABLE managers ADD  hostel_id INT NOT NULL;
ALTER TABLE managers DROP hostel_id;
ALTER TABLE managers ADD  hostel_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE managers ADD FOREIGN KEY (hostel_id) REFERENCES hostels(id);

ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms ADD hostel_id INT NOT NULL;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms MODIFY id INT NOT NULL;
ALTER TABLE rooms DROP id;
ALTER TABLE rooms ADD id INT NOT NULL;
ALTER TABLE rooms ADD hostel_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms DROP id;
ALTER TABLE rooms ADD hostel_id INT NOT NULL;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms ADD hostel_id INT PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE rooms DROP hostel_id;
ALTER TABLE rooms ADD id INT PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE rooms ADD hostel_id INT NOT NULL;
ALTER TABLE rooms DROP id;

ALTER TABLE rooms ADD id INT NOT NULL;
ALTER TABLE rooms MODIFY id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE rooms MODIFY hostel_id VARCHAR(30) NOT NULL;

UPDATE rooms SET hostel_id = 'Westeen' WHERE title = 'AZUR';
UPDATE rooms SET hostel_id = 'Westeen' WHERE title = 'COTE';
UPDATE rooms SET hostel_id = 'Westeen' WHERE title = 'TEZAMI';
UPDATE rooms SET hostel_id = 'Westeen' WHERE title = 'LUX';

UPDATE rooms SET hostel_id = 'Hyatt' WHERE title = 'RAGNAR';
UPDATE rooms SET hostel_id = 'Hyatt' WHERE title = 'LILO';
UPDATE rooms SET hostel_id = 'Hyatt' WHERE title = 'GRAND TSIBILI';

UPDATE rooms SET hostel_id = 'Cap' WHERE title = 'ROMLEND';
UPDATE rooms SET hostel_id = 'Cap' WHERE title = 'NORIO';
UPDATE rooms SET hostel_id = 'Cap' WHERE title = 'NEW CITY';

UPDATE rooms SET hostel_id = 'Ibis' WHERE title = 'MOKO';
UPDATE rooms SET hostel_id = 'Ibis' WHERE title = 'ADEN';

UPDATE rooms SET hostel_id = 'Hotel V' WHERE title = 'ELEGANT';
UPDATE rooms SET hostel_id = 'Hotel V' WHERE title = 'MER';
UPDATE rooms SET hostel_id = 'Hotel V' WHERE title = 'SABLE';
UPDATE rooms SET hostel_id = 'Hotel V' WHERE title = 'FIRAS';
UPDATE rooms SET hostel_id = 'Hotel V' WHERE title = 'IVERTUBANI';

UPDATE rooms SET hostel_id = 'Jazzy' WHERE title = 'ATU';
UPDATE rooms SET hostel_id = 'Jazzy' WHERE title = 'DKS-BRIDGE';
UPDATE rooms SET hostel_id = 'Jazzy' WHERE title = 'SOLEIL';

UPDATE rooms SET hostel_id = 'Yadel' WHERE title = 'LUNE';
UPDATE rooms SET hostel_id = 'Yadel' WHERE title = 'ETOILE';

ALTER TABLE rooms DROP id;
ALTER TABLE rooms MODIFY title VARCHAR(30) PRIMARY KEY NOT NULL;

ALTER TABLE rooms CHANGE hostel_id rooomhostel_id VARCHAR(30) NOT NULL;
ALTER TABLE rooms CHANGE rooomhostel_id roomhostel_id VARCHAR(30) NOT NULL;
USE hostel_group;
ALTER TABLE rooms DROP hostel_id;