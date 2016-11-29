drop database if exists research_platform;

create database research_platform;
use research_platform;
alter database research_platform character set utf8;

create table users (
	username varchar(255),
    passwd varchar(255) NOT NULL,
    type int NOT NULL DEFAULT 0,
    PRIMARY KEY (username)
);
create table project (
	pj_id int NOT NULL auto_increment,
    pj_type varchar(255) NOT NULL,
	pj_name varchar(255) NOT NULL,
    pj_intro text,
    pj_progress text,
    PRIMARY KEY (pj_id)
);
create table team (
	tm_id int NOT NULL auto_increment,
	tm_name varchar(255) NOT NULL,
    tm_focus text NOT NULL,
    tm_work text,
    PRIMARY KEY (tm_id)
);
create table member (
	mb_id int NOT NULL auto_increment,
	mb_name varchar(255) NOT NULL,
    mb_focus text,
    mb_intro text, 
    mb_work text,
    PRIMARY KEY (mb_id)
);
create table data_tool (
	dt_id int NOT NULL auto_increment,
	dt_title varchar(255) NOT NULL,
    dt_type int NOT NULL,
    dt_link varchar(255) NOT NULL,
    dt_content text,
    PRIMARY KEY (dt_id)
);
create table conference (
	cf_id int NOT NULL auto_increment,
	cf_title varchar(255) NOT NULL,
    cf_content text,
    cf_date date NOT NULL,
    PRIMARY KEY (cf_id)
);
create table notification (
	nt_id int NOT NULL auto_increment,
	nt_title varchar(255) NOT NULL,
    nt_content text,
    nt_date date NOT NULL,
    PRIMARY KEY (nt_id)
);
create table news (
	ne_id int NOT NULL auto_increment,
	ne_title varchar(255) NOT NULL,
    ne_content text,
    ne_date date NOT NULL,
    PRIMARY KEY (ne_id)
);
create table article (
	ar_id int NOT NULL auto_increment,
	ar_title varchar(255) NOT NULL,
    ar_author varchar(255) NOT NULL,
    ar_date date NOT NULL,
    ar_link varchar(255) NOT NULL,
    PRIMARY KEY (ar_id)
);

create table project_team (
    pj_tm_id int auto_increment,
	pj_id int NOT NULL,
    tm_id int NOT NULL,
    PRIMARY KEY (pj_tm_id),
    FOREIGN KEY (pj_id) REFERENCES project(pj_id),
    FOREIGN KEY (tm_id) REFERENCES team(tm_id),
    CONSTRAINT pj_tm UNIQUE (pr_id, tm_id)
);
create table project_article (
    pj_ar_id int auto_increment,
	pj_id int NOT NULL,
    ar_id int NOT NULL,
    pj_ar_type int NOT NULL DEFAULT 0,
    PRIMARY KEY (pj_ar_id),
    FOREIGN KEY (pj_id) REFERENCES project(pj_id),
    FOREIGN KEY (ar_id) REFERENCES article(ar_id),
    CONSTRAINT pj_ar UNIQUE (pj_id, ar_id)
);
create table project_data_tool (
    pj_dt_id int auto_increment,
	pj_id int NOT NULL,
    dt_id int NOT NULL,
    PRIMARY KEY (pj_dt_id),
    FOREIGN KEY (pj_id) REFERENCES project(pj_id),
    FOREIGN KEY (dt_id) REFERENCES data_tool(dt_id),
    CONSTRAINT pj_dt UNIQUE (pj_id, dt_id)
);
create table team_member (
	tm_mb_id int auto_increment,
	tm_id int NOT NULL,
    mb_id int NOT NULL,
    PRIMARY KEY (tm_mb_id),
    FOREIGN KEY (tm_id) REFERENCES team(tm_id),
    FOREIGN KEY (mb_id) REFERENCES member(mb_id),
    CONSTRAINT tm_mb UNIQUE (tm_id, mb_id)
);
create table team_article (
    tm_ar_id int auto_increment,
	tm_id int NOT NULL,
    ar_id int NOT NULL,
    PRIMARY KEY (tm_ar_id),
    FOREIGN KEY (tm_id) REFERENCES team(tm_id),
    FOREIGN KEY (ar_id) REFERENCES article(ar_id),
    CONSTRAINT tm_ar UNIQUE (tm_id, ar_id)
);
