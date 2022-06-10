create database cadastro;

use cadastro;
create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas;

drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;

create database pipi;
drop database pipi;

use cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(30),
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
pais_origem varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;