use cadastro;

drop table pessoas;

create table pessoas(
id int not null auto_increment,
nome varchar(30),
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
('1', 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Maria', '1920-12-30', 'F', '55.2', '1.65', 'Portugal'),
(default, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

insert into pessoas values
(default, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

insert into pessoas values
(default, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', DEFAULT),
(default, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'EUA');



select * from pessoas;