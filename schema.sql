-- Use drop statements for developers, once the database is set we should delete these dangerous lines
-- drop table if exists competition cascade;
-- drop table if exists team cascade;
-- drop table if exists comp_team_mapping cascade;
-- drop table if exists match;
-- drop table if exists pit;
-- drop table if exists users;
-- drop type if exists user_role;


create table competition (
    competition_id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    short_name varchar(255) NOT NULL,
    is_current boolean NOT NULL DEFAULT FALSE,
    CONSTRAINT competition_unique_key UNIQUE (short_name)
);

INSERT INTO competition (short_name, is_current) VALUES ('HVR', TRUE);
INSERT INTO competition (short_name, is_current) VALUES ('SBPLI', FALSE);
INSERT INTO competition (short_name, is_current) VALUES ('NYC', FALSE);
INSERT INTO competition (short_name, is_current) VALUES ('Champs', FALSE);


create table team (
    team_id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    team_num int NOT NULL,
    team_name varchar(100),
    CONSTRAINT team_unique_key UNIQUE (team_num)
);

insert into team (team_num, team_name) values (354, 'G-House Pirates');
insert into team (team_num, team_name) values (694, 'StuyPulse');
insert into team (team_num, team_name) values (1796, 'RoboTigers');
insert into team (team_num, team_name) values (20, 'The Rocketeers');
insert into team (team_num, team_name) values (250, 'The Dynamos');
insert into team (team_num, team_name) values (303, 'The T.E.S.T. Team');
insert into team (team_num, team_name) values (383, 'Brazilian Machine');
insert into team (team_num, team_name) values (527, 'Red Dragons');
insert into team (team_num, team_name) values (871, 'Robotechs');
insert into team (team_num, team_name) values (1155, 'SciBorgs');
insert into team (team_num, team_name) values (1156, 'Under Control');
insert into team (team_num, team_name) values (1660, 'Harlem Knights');
insert into team (team_num, team_name) values (1880, 'Warriors of East Harlem');
insert into team (team_num, team_name) values (2265, 'Fe Maidens');
insert into team (team_num, team_name) values (2601, 'Steel Hawks');
insert into team (team_num, team_name) values (2872, 'CyberCats');
insert into team (team_num, team_name) values (3017, 'Patriots');
insert into team (team_num, team_name) values (3314, 'Mechanical Mustangs');
insert into team (team_num, team_name) values (3419, 'RoHawks');
insert into team (team_num, team_name) values (3950, 'RoboGym Robotics');
insert into team (team_num, team_name) values (4012, 'Bad News Bots');
insert into team (team_num, team_name) values (4091, 'DRIFT');
insert into team (team_num, team_name) values (4122, 'Ossining O-Bots');



create table comp_team_mapping (
 mapping_id bigint generated by default as identity primary key,
 competition_id int references competition (competition_id) not null,
 team_id int references team (team_id) not null,
 constraint comp_team_mapping_unique_key unique (competition_id, team_id)
);

insert into comp_team_mapping (competition_id, team_id) values (1,1);
insert into comp_team_mapping (competition_id, team_id) values (1,2);
insert into comp_team_mapping (competition_id, team_id) values (1,3);
insert into comp_team_mapping (competition_id, team_id) values (1,4);
insert into comp_team_mapping (competition_id, team_id) values (1,5);
insert into comp_team_mapping (competition_id, team_id) values (1,6);
insert into comp_team_mapping (competition_id, team_id) values (1,7);
insert into comp_team_mapping (competition_id, team_id) values (1,8);
insert into comp_team_mapping (competition_id, team_id) values (1,9);
insert into comp_team_mapping (competition_id, team_id) values (1,10);
insert into comp_team_mapping (competition_id, team_id) values (1,11);
insert into comp_team_mapping (competition_id, team_id) values (1,12);
insert into comp_team_mapping (competition_id, team_id) values (1,13);
insert into comp_team_mapping (competition_id, team_id) values (1,14);
insert into comp_team_mapping (competition_id, team_id) values (1,15);
insert into comp_team_mapping (competition_id, team_id) values (1,16);
insert into comp_team_mapping (competition_id, team_id) values (1,17);
insert into comp_team_mapping (competition_id, team_id) values (1,18);
insert into comp_team_mapping (competition_id, team_id) values (1,19);
insert into comp_team_mapping (competition_id, team_id) values (1,20);
insert into comp_team_mapping (competition_id, team_id) values (1,21);
insert into comp_team_mapping (competition_id, team_id) values (1,22);
insert into comp_team_mapping (competition_id, team_id) values (1,23);
insert into comp_team_mapping (competition_id, team_id) values (2,1);
insert into comp_team_mapping (competition_id, team_id) values (2,2);
insert into comp_team_mapping (competition_id, team_id) values (2,3);
insert into comp_team_mapping (competition_id, team_id) values (2,4);
insert into comp_team_mapping (competition_id, team_id) values (2,5);
insert into comp_team_mapping (competition_id, team_id) values (2,6);
insert into comp_team_mapping (competition_id, team_id) values (2,7);
insert into comp_team_mapping (competition_id, team_id) values (2,8);
insert into comp_team_mapping (competition_id, team_id) values (2,9);
insert into comp_team_mapping (competition_id, team_id) values (2,10);
insert into comp_team_mapping (competition_id, team_id) values (2,11);
insert into comp_team_mapping (competition_id, team_id) values (2,12);
insert into comp_team_mapping (competition_id, team_id) values (2,13);
insert into comp_team_mapping (competition_id, team_id) values (2,14);
insert into comp_team_mapping (competition_id, team_id) values (2,15);
insert into comp_team_mapping (competition_id, team_id) values (2,16);
insert into comp_team_mapping (competition_id, team_id) values (2,17);
insert into comp_team_mapping (competition_id, team_id) values (2,18);
insert into comp_team_mapping (competition_id, team_id) values (2,19);
insert into comp_team_mapping (competition_id, team_id) values (2,20);
insert into comp_team_mapping (competition_id, team_id) values (2,21);
insert into comp_team_mapping (competition_id, team_id) values (2,22);
insert into comp_team_mapping (competition_id, team_id) values (2,23);



create table match (
    match_id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    mapping_id int references comp_team_mapping(mapping_id) NOT NULL,
    match_num int NOT NULL,
    scout_name varchar(100),
    report_status varchar(30),
    alliance_station varchar(20),
    auto_team boolean,
    auto_power_cells int,
    starting_position varchar(20),
    cross_line varchar(10),
    auto_scored json,
    auto_comments text,
    teleop_scored json,
    rotation_control varchar(30),
    rotation_timer int,
    position_control varchar(30),
    position_timer int,
    end_game varchar(30),
    end_game_timer int,
    climb varchar(20),
    level varchar(20),
    level_position decimal,
    communication varchar(10),
    break varchar(10),
    negatives json,
    reflection_comments text,
    last_modified timestamp(0) NOT NULL DEFAULT (now())::timestamp(0),
    CONSTRAINT match_composite_key UNIQUE (mapping_id, match_num)
);



create table pit (
    pit_id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    mapping_id int references comp_team_mapping(mapping_id) NOT NULL,
    status varchar(30) NOT NULL DEFAULT 'NOT STARTED',
    group_name varchar(30),
    weight decimal,
    height decimal,
    drive_train varchar(30),
    motors json,
    wheels json,
    drive_comments text,
    code_language varchar(10),
    starting_position varchar(20),
    auto_comments text,
    abilities json,
    working_comments text,
    closing_comments text,
    image varchar,
    last_modified timestamp(0) NOT NULL DEFAULT (now())::timestamp(0),
    CONSTRAINT mapping_key UNIQUE (mapping_id)
);

insert into pit (mapping_id, status) values (1, 'Follow Up');
insert into pit (mapping_id, status) values (2, 'Follow Up');
insert into pit (mapping_id, status) values (3, 'Follow Up');
insert into pit (mapping_id, status) values (4, 'Follow Up');
insert into pit (mapping_id, status) values (5, 'Follow Up');


create type user_role as enum ('admin', 'scout');
-- User table must be plural, user is reserved word
create table users (
  user_id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  role user_role NOT NULL
);
