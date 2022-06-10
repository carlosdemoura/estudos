create database teste;

create table if not exists cursos2 (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos2
add column idcurso int first;

alter table cursos2
add primary key (idcurso);



insert into cursos2 values
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


select * from cursos2;
drop table cursos2;

alter table cursos2 drop carga;

delete from cursos2 
where nome != null;


select * from gafanhotos;








select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

insert into gafanhoto_assiste_curso values 
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos as g join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto;