USE fighting_games;

-- We are a couple of game designers from Arc System Works with a degree in MySQL MERISE 
-- We want to update the wiki with the general info about our recent games
SELECT * FROM game
WHERE c_name RLIKE '^Arc';

-- To write the tutorial for the GUILTY GEAR Xrd game, we want to know all of Sol Badguy's moves that link to another
SELECT CH.ch_name as 'Character Name', LI.m_name as 'First Hit', LI.m_name_1 as 'Link' FROM links_into LI
JOIN chara CH on LI.ch_id = CH.ch_id
WHERE CH.ch_name = 'Sol Badguy';

-- We need to make the balance patch on the most recent game
SELECT * FROM game ORDER BY g_release_date DESC;

-- We need to get the list of characters from that game
SELECT C.ch_name, C.ch_desc, G.g_name FROM chara C
JOIN features F ON C.ch_id = F.ch_id
JOIN game G ON F.g_id = G.G_id
WHERE G.g_release_date = (
	SELECT max(g_release_date) FROM game);

-- We want to nerf the character Iron Tager by reducing his advantage on block
SELECT M.*, C.ch_name FROM move M
JOIN chara C ON C.ch_id = M.ch_id
WHERE ch_name = 'Iron Tager';


-- First reducing adv from magnet punch
UPDATE move 
SET m_onblockadv = -4
WHERE (ch_id = 29 AND v_id = 1 AND i_id = 1);

-- Then from Sledgehammer
UPDATE move 
SET m_onblockadv = -30
WHERE (ch_id = 29 AND v_id = 1 AND i_id = 8);

-- We want to balance out the game overall by augmenting by 1 each of the shortest moves' startup frames
SELECT m.* from move m
join features f on m.ch_id = f.ch_id
join game g on f.g_id = g.g_id and g.g_name like '%Blazblue%'
where m.m_startupf = (select min(M2.m_startupf) from move M2
join features F2 on M2.ch_id = F2.ch_id
join game G2 on F2.g_id = G2.g_id and G2.g_name like '%Blazblue%');

-- We are doing Corporate Espionnage(tm) and we want to get statistical info
-- From a competitor's (CapCom) game : SFIV
SELECT AVG(M.m_startupf) as "Average Startup Frames",
AVG(M.m_activef) as  "Average ActiveFrames",
AVG(M.m_recoveryf) as  "Average Recovery Frames"
from move M
join features f on M.ch_id = f.ch_id
join game g on f.g_id = g.g_id and g.g_name rlike 'IV$';

-- we want to study the move guard level rappartition from King Of Fighters XIII
select m_guardlevel, count(m_guardlevel) as 'Number' from move m
	where exists (select * from features f where m.ch_id = f.ch_id and
		exists(select * from game g where f.g_id = g.g_id and g.g_name rlike '^King'))
group by m_guardlevel;


-- we finally want to study the on hit advantage from moves from different categories from Street Fighter IV
select m.m_category, avg(m.m_onhitadv) as 'On Hit Advantage' from move m
	where exists (select * from features f where m.ch_id = f.ch_id and
		exists(select * from game g where f.g_id = g.g_id and g.g_name = 'Street Fighter IV'))
group by m.m_category;

-- To sum it all up, """we""" want to get the average on block advantage from all games not from our company
select m.m_category, avg(m.m_onblockadv) as 'On Block Advantage' from move m
	where m.ch_id NOT IN (select f.ch_id from features f where m.ch_id = f.ch_id and
		f.g_id IN (select g.g_id from game g where g.c_name = 'Arc System Works'))
group by m.m_category;