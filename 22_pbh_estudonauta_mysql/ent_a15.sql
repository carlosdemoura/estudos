use cadastro;
describe gafanhotos;
select * from gafanhotos;

alter table gafanhotos add cursopreferido int;
alter table gafanhotos add foreign key(cursopreferido) references cursos(idcurso);

delete from cursos where idcurso=6;



select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano from gafanhotos
join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

select g.nome, c.nome, c.ano from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
;
