use cadastro;

alter table pessoas
add column profissao varchar(10);

desc pessoas;

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;



alter table pessoas
add column codigo int first;






alter table pessoas
modify column profissao varchar(20) not null default '';



alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to gafanhotos;







create table if not exists gafanhotos (teste int);

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);



insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga='40', ano='2015'
where idcurso = '5'
limit 1;