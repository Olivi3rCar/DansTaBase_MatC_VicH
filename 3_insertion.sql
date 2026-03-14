-- =====================
-- COMPANY
-- =====================

INSERT INTO Company VALUES
('Capcom', '1979-05-30', 'From arcade roots to global hits', 'Kenzo Tsujimoto'),
('SNK', '1978-07-22', 'The Future Is Now', 'Kenji Matsubara'),
('Arc System Works', '1988-05-01', 'Stylish fighting action', 'Minoru Kidooka');


-- =====================
-- VERSION
-- =====================

INSERT INTO Version VALUES
(1,'1.0','2010-01-01','Initial release'),
(2,'1.1','2010-06-01','Balance update'),
(3,'2.0','2012-03-15','Major gameplay revision');


-- =====================
-- INPUT
-- =====================

INSERT INTO input VALUES
(1,'5A'),
(2,'5B'),
(3,'2A'),
(4,'2B'),
(5,'6A'),
(6,'236A'),
(7,'214A'),
(8,'623A'),
(9,'236C');


-- =====================
-- CHARACTERS
-- =====================

INSERT INTO Chara VALUES
(1,'Ryu','Shoto','Japanese wandering martial artist seeking perfection','Hadoken'),
(2,'Chun-Li','Agile striker','Chinese Interpol officer fighting crime','Lightning Legs'),
(3,'Guile','Defensive zoner','American air force major seeking justice','Sonic Boom'),
(4,'Zangief','Grappler','Russian professional wrestler','Spinning Piledriver'),
(5,'Cammy','Rushdown','British special forces operative','Spiral Arrow'),
(6,'Dhalsim','Zoner','Indian yoga master with mystical powers','Elastic Limbs'),

(7,'Kyo Kusanagi','Shoto','Japanese heir to sacred flames','Flame Punch'),
(8,'Iori Yagami','Rival','Moody Japanese fighter wielding cursed flames','Dark Flame'),
(9,'Mai Shiranui','Agile ninja','Japanese kunoichi using fan techniques','Fire Fan'),
(10,'Terry Bogard','Brawler','American street fighter and hero','Burn Knuckle'),
(11,'Athena Asamiya','Psychic','Japanese idol with psychic powers','Psycho Ball'),
(12,'Ralf Jones','Soldier','Mercenary soldier with explosive punches','Galactica Phantom'),

(13,'Sol Badguy','Power','Gear hunter with massive damage output','Gun Flame'),
(14,'Ky Kiske','Balanced','Holy knight leader from France','Stun Edge'),
(15,'May','Rushdown','Japanese pirate girl with dolphin attacks','Mr Dolphin'),
(16,'Axl Low','Zoner','British fighter manipulating time','Chain Sickle'),
(17,'Chipp Zanuff','Speed','American ninja president','Alpha Blade'),
(18,'Baiken','Counter','Japanese wandering samurai','Tatami Gaeshi'),

(19,'Akira Kazama','Striker','Japanese biker martial artist','Rival Kick'),
(20,'Sakura Kasugano','Student','Japanese schoolgirl inspired by Ryu','Shouoken'),
(21,'Juri Han','Sadistic','Korean taekwondo prodigy with evil eye','Fuhajin'),
(22,'Hugo','Giant grappler','German professional wrestler','Monster Lariat'),
(23,'Poison','Trickster','American wrestling manager and fighter','Heart Raid'),
(24,'Rolento','Military','American commando with baton techniques','Patriot Circle'),

(25,'Ragna Bloodedge','Rebel','Outlaw seeking revenge with dark power','Dead Spike'),
(26,'Jin Kisaragi','Ice swordsman','Strict military officer wielding ice','Fubuki'),
(27,'Noel Vermillion','Gunfighter','Reserved soldier using twin guns','Chain Revolver'),
(28,'Rachel Alucard','Vampire','Aristocratic vampire controlling wind','Tempest Dahlia'),
(29,'Iron Tager','Grappler','Massive cyborg powered by magnetism','Sledgehammer'),
(30,'Taokaka','Wild','Chaotic beastkin fighter','Dancing Edge');


-- =====================
-- GAMES
-- =====================

INSERT INTO Game VALUES
(1,'Street Fighter IV','2008-07-18','Street Fighter','Capcom'),
(2,'Street Fighter Alpha 3','1998-05-25','Street Fighter','Capcom'),
(3,'King of Fighters XIII','2010-07-14','King of Fighters','SNK'),
(4,'Guilty Gear Xrd','2014-02-20','Guilty Gear','Arc System Works'),
(5,'BlazBlue Centralfiction','2015-11-19','BlazBlue','Arc System Works');


-- =====================
-- FEATURES (characters appearing in games)
-- =====================

INSERT INTO Features VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),
(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),
(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),
(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),
(5,25),(5,26),(5,27),(5,28),(5,29),(5,30);


-- =====================
-- MOVES
-- =====================

-- Ryu
INSERT INTO move VALUES
(1,1,1,'Standing Punch','normal',FALSE,'mid',30,4,3,8,0,2),
(1,1,6,'Hadoken','special',FALSE,'mid',60,14,2,20,-6,1);

-- Chun Li
INSERT INTO move VALUES
(2,1,1,'Lightning Jab','normal',FALSE,'mid',28,3,3,7,1,3),
(2,1,6,'Kikoken','special',FALSE,'mid',55,12,3,18,-4,2);

-- Guile (ONLY ONE MOVE)
INSERT INTO move VALUES
(3,1,6,'Sonic Boom','special',FALSE,'mid',55,10,2,18,-4,2);

-- Zangief
INSERT INTO move VALUES
(4,1,1,'Lariat Chop','normal',FALSE,'mid',35,5,3,9,0,2),
(4,1,8,'Spinning Piledriver','command grab',TRUE,'high',80,6,2,25,0,5);

-- Cammy
INSERT INTO move VALUES
(5,1,1,'Quick Punch','normal',FALSE,'mid',25,3,3,7,2,4),
(5,1,7,'Spiral Arrow','special',FALSE,'low',65,8,4,20,-8,1);

-- Dhalsim
INSERT INTO move VALUES
(6,1,2,'Stretch Punch','normal',FALSE,'mid',30,6,4,10,1,3),
(6,1,6,'Yoga Fire','special',FALSE,'mid',60,15,3,22,-5,2);

-- Kyo
INSERT INTO move VALUES
(7,1,1,'Punch','normal',FALSE,'mid',30,4,3,8,0,2),
(7,1,8,'Oniyaki','special',FALSE,'high',70,5,3,18,-10,3);

-- Iori
INSERT INTO move VALUES
(8,1,1,'Slash','normal',FALSE,'mid',32,4,3,8,0,2),
(8,1,7,'Dark Flame','special',FALSE,'mid',65,10,3,20,-6,2);

-- Mai
INSERT INTO move VALUES
(9,1,1,'Fan Strike','normal',FALSE,'mid',28,3,3,7,1,3),
(9,1,6,'Kachousen','special',FALSE,'mid',55,12,3,19,-5,2);

-- Terry
INSERT INTO move VALUES
(10,1,1,'Power Jab','normal',FALSE,'mid',30,4,3,8,0,2),
(10,1,6,'Burn Knuckle','special',FALSE,'mid',70,11,3,22,-7,1);

-- Athena
INSERT INTO move VALUES
(11,1,1,'Psychic Jab','normal',FALSE,'mid',27,3,3,7,1,3),
(11,1,6,'Psycho Ball','special',FALSE,'mid',60,13,3,20,-5,2);

-- Ralf
INSERT INTO move VALUES
(12,1,1,'Heavy Punch','normal',FALSE,'mid',34,5,3,9,0,2),
(12,1,8,'Galactica Phantom','special',TRUE,'mid',90,12,2,25,-15,4);

-- Sol
INSERT INTO move VALUES
(13,1,1,'Close Slash','normal',FALSE,'mid',32,4,3,8,0,2),
(13,1,6,'Gun Flame','special',FALSE,'mid',65,14,3,22,-7,1);

-- Ky
INSERT INTO move VALUES
(14,1,1,'Sword Strike','normal',FALSE,'mid',30,4,3,8,0,2),
(14,1,6,'Stun Edge','special',FALSE,'mid',60,12,3,20,-6,1);

-- May
INSERT INTO move VALUES
(15,1,1,'Anchor Jab','normal',FALSE,'mid',28,3,3,7,1,3),
(15,1,6,'Mr Dolphin','special',FALSE,'mid',70,9,4,21,-8,2);

-- Axl
INSERT INTO move VALUES
(16,1,2,'Long Punch','normal',FALSE,'mid',29,5,4,10,1,3),
(16,1,6,'Rensen','special',FALSE,'mid',60,13,3,21,-6,1);

-- Chipp
INSERT INTO move VALUES
(17,1,1,'Fast Jab','normal',FALSE,'mid',22,2,3,6,2,4),
(17,1,7,'Alpha Blade','special',FALSE,'mid',60,7,3,18,-6,2);

-- Baiken
INSERT INTO move VALUES
(18,1,1,'Katana Slash','normal',FALSE,'mid',31,4,3,8,0,2),
(18,1,7,'Tatami Gaeshi','special',FALSE,'mid',65,9,3,20,-5,2);

-- BlazBlue cast
INSERT INTO move VALUES
(25,1,1,'Rebel Strike','normal',FALSE,'mid',32,4,3,8,0,2),
(25,1,6,'Dead Spike','special',FALSE,'mid',70,12,3,22,-6,2),

(26,1,1,'Ice Slash','normal',FALSE,'mid',30,4,3,8,0,2),
(26,1,8,'Fubuki','special',FALSE,'high',65,6,3,18,-5,2),

(27,1,1,'Gun Shot','normal',FALSE,'mid',28,3,3,7,1,3),
(27,1,6,'Chain Revolver','special',FALSE,'mid',60,10,3,20,-4,2),

(28,1,1,'Wind Jab','normal',FALSE,'mid',27,3,3,7,1,3),
(28,1,6,'Tempest Dahlia','special',FALSE,'mid',65,11,3,21,-6,2),

(29,1,1,'Magnet Punch','normal',FALSE,'mid',35,5,3,9,0,2),
(29,1,8,'Sledgehammer','special',TRUE,'mid',85,10,3,23,-10,3),

(30,1,1,'Wild Claw','normal',FALSE,'mid',26,3,3,7,1,3),
(30,1,7,'Dancing Edge','special',FALSE,'mid',60,8,4,20,-5,2);


-- =====================
-- LINKS INTO (simple combo examples)
-- =====================

INSERT INTO Links_into VALUES
(1,1,1,'Standing Punch',1,1,6,'Hadoken','cancel'),
(2,1,1,'Lightning Jab',2,1,6,'Kikoken','cancel'),
(5,1,1,'Quick Punch',5,1,7,'Spiral Arrow','cancel'),
(13,1,1,'Close Slash',13,1,6,'Gun Flame','gatling'),
(25,1,1,'Rebel Strike',25,1,6,'Dead Spike','cancel');
