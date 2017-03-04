# set global options
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
# create database 
drop database if exists cs3520project;
create database cs3520project;
use cs3520project;

drop table if exists orders;
drop table if exists customer;
drop table if exists book;
drop table if exists authors;
create table authors (
    name char(50) primary key);
create table book (
    ISBN char(50) primary key,
    title char(50) not null,
    author char(100) not null,
    publish_year date);
create table customer (
    cid integer primary key,
    login_name char(20) not null,
    password char(20) not null,
    full_name char(50),
    phone char(20),
    constraint unique_login_name unique (login_name));
create table orders (
    oid integer primary key,
    ISBN char(50) not null,
    cid integer not null,
    buy_date date,
    amount int,
    constraint relation
    foreign key (ISBN) references book(ISBN),
    foreign key (cid) references customer(cid));