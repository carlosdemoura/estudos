-- aula 11
select * from gafanhotos
order by nome;

select ano, nome, ano, carga from cursos
order by ano;

select * from cursos
where ano='2016'
order by nome;


select nome, descricao, ano from cursos
where ano <='2015'
order by ano, nome;


select * from cursos
where ano between 2014 and 2016;


select * from cursos
where ano in(2014, 2016, 2010);


select * from cursos
where carga>35 or totaulas<30;





-- aula 12
select * from cursos
where nome like 'P__';

select nome from gafanhotos
where nome like '% silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos
where carga>40;

select nome, min(totaulas) from cursos
where ano='2016';

select sum(totaulas) from cursos
where ano='2019';

-- ex01
select nome from gafanhotos
where sexo='f';

-- ex02
select nome from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

-- ex03
select nome from gafanhotos
where sexo='m' and profissao like 'programador';

-- ex04
select * from gafanhotos
where sexo='f' and nome like 'j%';

-- ex05
select nome, nacionalidade from gafanhotos
where sexo='m' and nome like '% Silva%' and nacionalidade <> 'Brasil' and peso<100;

-- ex06
select max(altura) from gafanhotos
where nacionalidade = 'Brasil';

-- ex07
select avg(peso) from gafanhotos;

-- ex08
select min(peso) from gafanhotos
where sexo='f' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- ex09
select count(*) from gafanhotos
where sexo='f' and altura>1.9;






-- aula 13
use cadastro;

select totaulas, count(*) from cursos where totaulas>25
group by totaulas
order by totaulas;

select carga, count(carga) from cursos
group by carga
having count(carga)>3  -- o having deve ser usado após o group by
order by carga;




select avg(carga) from cursos;

select carga, count(*) from cursos
where ano>2015		-- a ordem importa, porra!
group by carga
having carga>(select avg(carga) from cursos);



-- ex 01
select profissao, count(*) from gafanhotos
group by profissao
;


-- ex 02
select sexo, count(*) from gafanhotos
where nascimento > 2005-01-01
group by sexo;

-- ex 03
select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'Brasil'
group by nacionalidade
having count(*)>3
order by nacionalidade
;

-- ex 04
select nome, peso, altura from gafanhotos
where peso>100
group by altura
having altura > (select avg(altura) from gafanhotos);