USE fighting_games;

ALTER TABLE Version ADD CHECK(v_name like ('%.%')); -- version name control
ALTER TABLE Company ADD CHECK(c_creationdate between '1500-01-01' and '2027-01-01'); -- average creationdate
ALTER TABLE Game ADD CHECK(g_release_date BETWEEN '1950-01-01' and '2027-01-01'); -- game date creationdate average
ALTER TABLE Input ADD CHECK(i_input RLIKE '^[0-9]*[A-Z]$'); -- input numpad notation control scheme
ALTER TABLE Company ADD CHECK(c_ceo LIKE '% %'); -- company ceo average name