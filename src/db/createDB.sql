drop database if exists research_platform;

create database research_platform;
use research_platform;

create table users (
	username varchar(255),
    passwd varchar(255) NOT NULL,
    PRIMARY KEY (username)
);
create table project (
	pj_id int NOT NULL auto_increment,
	pj_name varchar(255) NOT NULL,
    pj_intro text,
    pj_progress text,
    PRIMARY KEY (pj_id)
);
create table team (
	tm_id int NOT NULL auto_increment,
	tm_name varchar(255) NOT NULL,
    tm_focus text NOT NULL,
    tm_task text,
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
    cf_intro text,
    cf_detail text,
    PRIMARY KEY (cf_id)
);
create table notification (
	nt_id int NOT NULL auto_increment,
	nt_title varchar(255) NOT NULL,
    nt_content text,
    nt_date date NOT NULL,
    PRIMARY KEY (nt_id)
);
create table news(
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
	pr_id int NOT NULL,
    tm_id int NOT NULL,
    FOREIGN KEY (pr_id) REFERENCES project(pj_id),
    FOREIGN KEY (tm_id) REFERENCES team(tm_id)
);
create table project_article (
	pj_id int NOT NULL,
    ar_id int NOT NULL,
    FOREIGN KEY (pj_id) REFERENCES project(pj_id),
    FOREIGN KEY (ar_id) REFERENCES article(ar_id)
);
create table project_data_tool (
	pj_id int NOT NULL,
    dt_id int NOT NULL,
    FOREIGN KEY (pj_id) REFERENCES project(pj_id),
    FOREIGN KEY (dt_id) REFERENCES data_tool(dt_id)
);
create table team_member (
	tm_id int NOT NULL,
    mb_id int NOT NULL,
    FOREIGN KEY (tm_id) REFERENCES team(tm_id),
    FOREIGN KEY (mb_id) REFERENCES member(mb_id)
);
create table team_article (
	tm_id int NOT NULL,
    ar_id int NOT NULL,
    FOREIGN KEY (tm_id) REFERENCES team(tm_id),
    FOREIGN KEY (ar_id) REFERENCES article(ar_id)
);