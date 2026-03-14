create database fighting_games;
USE fighting_games;

CREATE TABLE Company (
    c_name VARCHAR(50),
    c_creationdate DATE NOT NULL,
    c_motto VARCHAR(200),
    c_ceo VARCHAR(50) NOT NULL,
    PRIMARY KEY (c_name)
);

CREATE TABLE Game (
    g_id INT,
    g_name VARCHAR(50) NOT NULL,
    g_release_date DATE,
    game_series VARCHAR(50),
    c_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (g_id),
    FOREIGN KEY (c_name)
        REFERENCES Company (c_name)
        ON DELETE CASCADE
);

CREATE TABLE Chara (
    ch_id INT,
    ch_name VARCHAR(50) NOT NULL,
    ch_archetype VARCHAR(50),
    ch_desc VARCHAR(200) NOT NULL,
    ch_unique_mechanic VARCHAR(50),
    PRIMARY KEY (ch_id)
);

CREATE TABLE Version (
    v_id INT,
    v_name VARCHAR(50) NOT NULL,
    v_release_date DATE,
    v_desc TEXT,
    PRIMARY KEY (v_id)
);

CREATE TABLE input (
    i_id INT,
    i_input VARCHAR(50) NOT NULL,
    PRIMARY KEY (i_id)
);

CREATE TABLE move (
    ch_id INT,
    v_id INT,
    i_id INT,
    m_name VARCHAR(50) NOT NULL,
    m_category VARCHAR(50),
    m_guard_crush BOOL DEFAULT FALSE,
    m_guardlevel ENUM ('low', 'mid', 'high') NOT NULL,
    m_basedamage SMALLINT NOT NULL,
    m_startupf TINYINT NOT NULL,
    m_activef TINYINT NOT NULL,
    m_recoveryf TINYINT NOT NULL,
    m_onblockadv TINYINT NOT NULL,
    m_onhitadv TINYINT NOT NULL,
    PRIMARY KEY (ch_id , v_id , i_id),
    FOREIGN KEY (ch_id)
        REFERENCES Chara (ch_id)
        ON DELETE CASCADE,
    FOREIGN KEY (v_id)
        REFERENCES Version (v_id)
        ON DELETE CASCADE,
    FOREIGN KEY (i_id)
        REFERENCES input (i_id)
        ON DELETE CASCADE
);

CREATE TABLE Features (
    g_id INT,
    ch_id INT,
    PRIMARY KEY (g_id , ch_id),
    FOREIGN KEY (g_id)
        REFERENCES Game (g_id)
        ON DELETE CASCADE,
    FOREIGN KEY (ch_id)
        REFERENCES Chara (ch_id)
        ON DELETE CASCADE
);

CREATE TABLE Links_into (
    ch_id INT,
    v_id INT,
    i_id INT,
    m_name VARCHAR(50),
    ch_id_1 INT,
    v_id_1 INT,
    i_id_1 INT,
    m_name_1 VARCHAR(50),
    link_type VARCHAR(50),
    PRIMARY KEY (ch_id , v_id , i_id , ch_id_1 , v_id_1 , i_id_1),
    FOREIGN KEY (ch_id , v_id , i_id)
        REFERENCES move (ch_id , v_id , i_id)
        ON DELETE CASCADE,
    FOREIGN KEY (ch_id_1 , v_id_1 , i_id_1)
        REFERENCES move (ch_id , v_id , i_id)
        ON DELETE CASCADE
);
