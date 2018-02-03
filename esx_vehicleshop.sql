USE `fivem2337`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_cardealer','Car dealer',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_cardealer','Car dealer',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('cardealer','Car dealer')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('cardealer',0,'recruit','Recruit',10,'{}','{}'),
  ('cardealer',1,'novice','Novice',25,'{}','{}'),
  ('cardealer',2,'experienced','Experienced',40,'{}','{}'),
  ('cardealer',3,'boss','Boss',0,'{}','{}')
;

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `owned_vehicles` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `rented_vehicles` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle_categories` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `vehicle_categories` (name, label) VALUES
  ('compacts','Compacts'),
  ('coupes','Coupes'),
  ('sedans','Sedans'),
  ('sports','Sports'),
  ('sportsclassics','Sports Classics'),
  ('super','Super'),
  ('muscle','Muscle'),
  ('offroad','Off Road'),
  ('suvs','SUVs'),
  ('vans','Vans'),
  ('motorcycles','Motorcycles')
;

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `vehicles` (name, model, price, category) VALUES
  ('Blade','blade',15000,'muscle'),
  ('Buccaneer','buccaneer',18000,'muscle'),
  ('Buccaneer Rider','buccaneer2',24000,'muscle'),
  ('Chino','chino',15000,'muscle'),
  ('Chino Luxe','chino2',19000,'muscle'),
  ('Coquette BlackFin','coquette3',55000,'muscle'),
  ('Dominator','dominator',35000,'muscle'),
  ('Dukes','dukes',28000,'muscle'),
  ('Gauntlet','gauntlet',30000,'muscle'),
  ('Hotknife','hotknife',125000,'muscle'),
  ('Faction','faction',20000,'muscle'),
  ('Faction Rider','faction2',30000,'muscle'),
  ('Faction XL','faction3',40000,'muscle'),
  ('Nightshade','nightshade',65000,'muscle'),
  ('Phoenix','phoenix',12500,'muscle'),
  ('Picador','picador',18000,'muscle'),
  ('Sabre Turbo','sabregt',20000,'muscle'),
  ('Sabre GT','sabregt2',25000,'muscle'),
  ('Slam Van','slamvan3',11500,'muscle'),
  ('Tampa','tampa',16000,'muscle'),
  ('Virgo','virgo',14000,'muscle'),
  ('Vigero','vigero',12500,'muscle'),
  ('Voodoo','voodoo',7200,'muscle'),
  ('Blista','blista',8000,'compacts'),
  ('Brioso R/A','brioso',18000,'compacts'),
  ('Issi','issi2',10000,'compacts'),
  ('Panto','panto',10000,'compacts'),
  ('Prairie','prairie',12000,'compacts'),
  ('Bison','bison',45000,'vans'),
  ('Bobcat XL','bobcatxl',32000,'vans'),
  ('Burrito','burrito3',19000,'vans'),
  ('Burrito','gburrito2',29000,'vans'),
  ('Camper','camper',42000,'vans'),
  ('Gang Burrito','gburrito',45000,'vans'),
  ('Journey','journey',6500,'vans'),
  ('Minivan','minivan',13000,'vans'),
  ('Moonbeam','moonbeam',18000,'vans'),
  ('Moonbeam Rider','moonbeam2',35000,'vans'),
  ('Paradise','paradise',19000,'vans'),
  ('Rumpo','rumpo',15000,'vans'),
  ('Rumpo Trail','rumpo3',19500,'vans'),
  ('Surfer','surfer',12000,'vans'),
  ('Youga','youga',10800,'vans'),
  ('Youga Luxuary','youga2',14500,'vans'),
  ('Asea','asea',5500,'sedans'),
  ('Cognoscenti','cognoscenti',55000,'sedans'),
  ('Emperor','emperor',8500,'sedans'),
  ('Fugitive','fugitive',12000,'sedans'),
  ('Glendale','glendale',6500,'sedans'),
  ('Intruder','intruder',7500,'sedans'),
  ('Premier','premier',8000,'sedans'),
  ('Primo Custom','primo2',14000,'sedans'),
  ('Regina','regina',5000,'sedans'),
  ('Schafter','schafter2',25000,'sedans'),
  ('Stretch','stretch',90000,'sedans'),
  ('Super Diamond','superd',130000,'sedans'),
  ('Tailgater','tailgater',30000,'sedans'),
  ('Warrener','warrener',4000,'sedans'),
  ('Washington','washington',9000,'sedans'),
  ('Baller','baller2',40000,'suvs'),
  ('Baller Sport','baller3',60000,'suvs'),
  ('Cavalcade','cavalcade2',55000,'suvs'),
  ('Contender','contender',70000,'suvs'),
  ('Dubsta','dubsta',45000,'suvs'),
  ('Dubsta Luxuary','dubsta2',60000,'suvs'),
  ('Fhantom','fq2',17000,'suvs'),
  ('Grabger','granger',50000,'suvs'),
  ('Gresley','gresley',47500,'suvs'),
  ('Huntley S','huntley',40000,'suvs'),
  ('Landstalker','landstalker',35000,'suvs'),
  ('Mesa','mesa',16000,'suvs'),
  ('Mesa Trail','mesa3',40000,'suvs'),
  ('Patriot','patriot',55000,'suvs'),
  ('Radius','radi',29000,'suvs'),
  ('Rocoto','rocoto',45000,'suvs'),
  ('Seminole','seminole',25000,'suvs'),
  ('XLS','xls',32000,'suvs'),
  ('Btype','btype',62000,'sportsclassics'),
  ('Btype Luxe','btype3',85000,'sportsclassics'),
  ('Btype Hotroad','btype2',155000,'sportsclassics'),
  ('Casco','casco',30000,'sportsclassics'),
  ('Coquette Classic','coquette2',40000,'sportsclassics'),
  ('Manana','manana',12800,'sportsclassics'),
  ('Monroe','monroe',55000,'sportsclassics'),
  ('Pigalle','pigalle',20000,'sportsclassics'),
  ('Stinger','stinger',80000,'sportsclassics'),
  ('Stinger GT','stingergt',75000,'sportsclassics'),
  ('Stirling GT','feltzer3',65000,'sportsclassics'),
  ('Z-Type','ztype',220000,'sportsclassics'),
  ('Bifta','bifta',12000,'offroad'),
  ('Bf Injection','bfinjection',16000,'offroad'),
  ('Blazer','blazer',6500,'offroad'),
  ('Blazer Sport','blazer4',8500,'offroad'),
  ('Brawler','brawler',45000,'offroad'),
  ('Bubsta 6x6','dubsta3',120000,'offroad'),
  ('Dune Buggy','dune',8000,'offroad'),
  ('Guardian','guardian',45000,'offroad'),
  ('Rebel','rebel2',35000,'offroad'),
  ('Sandking','sandking',55000,'offroad'),
  ('The Liberator','monster',210000,'offroad'),
  ('Trophy Truck','trophytruck',60000,'offroad'),
  ('Trophy Truck Limited','trophytruck2',80000,'offroad'),
  ('Cognoscenti Cabrio','cogcabrio',55000,'coupes'),
  ('Exemplar','exemplar',32000,'coupes'),
  ('F620','f620',40000,'coupes'),
  ('Felon','felon',42000,'coupes'),
  ('Felon GT','felon2',55000,'coupes'),
  ('Jackal','jackal',38000,'coupes'),
  ('Oracle XS','oracle2',35000,'coupes'),
  ('Sentinel','sentinel',32000,'coupes'),
  ('Sentinel XS','sentinel2',40000,'coupes'),
  ('Windsor','windsor',95000,'coupes'),
  ('Windsor Drop','windsor2',125000,'coupes'),
  ('Zion','zion',36000,'coupes'),
  ('Zion Cabrio','zion2',45000,'coupes'),
  ('9F','ninef',65000,'sports'),
  ('9F Cabrio','ninef2',80000,'sports'),
  ('Alpha','alpha',60000,'sports'),
  ('Banshee','banshee',70000,'sports'),
  ('Bestia GTS','bestiagts',55000,'sports'),
  ('Buffalo','buffalo',12000,'sports'),
  ('Buffalo S','buffalo2',20000,'sports'),
  ('Carbonizzare','carbonizzare',75000,'sports'),
  ('Comet','comet2',65000,'sports'),
  ('Coquette','coquette',65000,'sports'),
  ('Drift Tampa','tampa2',80000,'sports'),
  ('Elegy','elegy2',38500,'sports'),
  ('Feltzer','feltzer2',55000,'sports'),
  ('Furore GT','furoregt',45000,'sports'),
  ('Fusilade','fusilade',40000,'sports'),
  ('Jester','jester',65000,'sports'),
  ('Jester(Racecar)','jester2',135000,'sports'),
  ('Khamelion','khamelion',38000,'sports'),
  ('Kuruma','kuruma',30000,'sports'),
  ('Lynx','lynx',40000,'sports'),
  ('Mamba','mamba',70000,'sports'),
  ('Massacro','massacro',65000,'sports'),
  ('Massacro(Racecar)','massacro2',130000,'sports'),
  ('Omnis','omnis',35000,'sports'),
  ('Penumbra','penumbra',28000,'sports'),
  ('Rapid GT','rapidgt',35000,'sports'),
  ('Rapid GT Convertible','rapidgt2',45000,'sports'),
  ('Schafter V12','schafter3',50000,'sports'),
  ('Seven 70','seven70',39500,'sports'),
  ('Sultan','sultan',15000,'sports'),
  ('Surano','surano',50000,'sports'),
  ('Tropos','tropos',40000,'sports'),
  ('Verlierer','verlierer2',70000,'sports'),
  ('Adder','adder',900000,'super'),
  ('Banshee 900R','banshee2',255000,'super'),
  ('Bullet','bullet',90000,'super'),
  ('Cheetah','cheetah',375000,'super'),
  ('Entity XF','entityxf',425000,'super'),
  ('ETR1','sheava',220000,'super'),
  ('FMJ','fmj',185000,'super'),
  ('Infernus','infernus',180000,'super'),
  ('Osiris','osiris',160000,'super'),
  ('Pfister','pfister811',85000,'super'),
  ('RE-7B','le7b',325000,'super'),
  ('Reaper','reaper',150000,'super'),
  ('Sultan RS','sultanrs',65000,'super'),
  ('T20','t20',300000,'super'),
  ('Turismo R','turismor',350000,'super'),
  ('Tyrus','tyrus',600000,'super'),
  ('Vacca','vacca',120000,'super'),
  ('Voltic','voltic',90000,'super'),
  ('X80 Proto','prototipo',2500000,'super'),
  ('Zentorno','zentorno',1500000,'super'),
  ('Akuma','AKUMA',7500,'motorcycles'),
  ('Avarus','avarus',18000,'motorcycles'),
  ('Bagger','bagger',13500,'motorcycles'),
  ('Bati 801','bati',12000,'motorcycles'),
  ('Bati 801RR','bati2',19000,'motorcycles'),
  ('BF400','bf400',6500,'motorcycles'),
  ('BMX (velo)','bmx',160,'motorcycles'),
  ('Carbon RS','carbonrs',18000,'motorcycles'),
  ('Chimera','chimera',38000,'motorcycles'),
  ('Cliffhanger','cliffhanger',9500,'motorcycles'),
  ('Cruiser (velo)','cruiser',510,'motorcycles'),
  ('Daemon','daemon',11500,'motorcycles'),
  ('Daemon High','daemon2',13500,'motorcycles'),
  ('Defiler','defiler',9800,'motorcycles'),
  ('Double T','double',28000,'motorcycles'),
  ('Enduro','enduro',5500,'motorcycles'),
  ('Esskey','esskey',4200,'motorcycles'),
  ('Faggio','faggio',1900,'motorcycles'),
  ('Vespa','faggio2',2800,'motorcycles'),
  ('Fixter (velo)','fixter',225,'motorcycles'),
  ('Gargoyle','gargoyle',16500,'motorcycles'),
  ('Hakuchou','hakuchou',31000,'motorcycles'),
  ('Hakuchou Sport','hakuchou2',55000,'motorcycles'),
  ('Hexer','hexer',12000,'motorcycles'),
  ('Innovation','innovation',23500,'motorcycles'),
  ('Manchez','manchez',5300,'motorcycles'),
  ('Nemesis','nemesis',5800,'motorcycles'),
  ('Nightblade','nightblade',35000,'motorcycles'),
  ('PCJ-600','pcj',6200,'motorcycles'),
  ('Ruffian','ruffian',6800,'motorcycles'),
  ('Sanchez','sanchez',5300,'motorcycles'),
  ('Sanchez Sport','sanchez2',5300,'motorcycles'),
  ('Sanctus','sanctus',25000,'motorcycles'),
  ('Scorcher (velo)','scorcher',280,'motorcycles'),
  ('Sovereign','sovereign',22000,'motorcycles'),
  ('Shotaro Concept','shotaro',320000,'motorcycles'),
  ('Thrust','thrust',24000,'motorcycles'),
  ('Tri bike (velo)','tribike3',520,'motorcycles'),
  ('Vader','vader',7200,'motorcycles'),
  ('Vortex','vortex',9800,'motorcycles'),
  ('Woflsbane','wolfsbane',9000,'motorcycles'),
  ('Zombie','zombiea',9500,'motorcycles'),
  ('Zombie Luxuary','zombieb',12000,'motorcycles')
;
