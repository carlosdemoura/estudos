use primeiro_modelo;

select * from clientes;
select * from cidade;
select * from estado;

alter table cidade
change column estado estado int;

alter table cidade
add foreign key (estado)
references estado(idestado);

alter table clientes
add column estado int;


alter table clientes
add foreign key (cidade)
references cidade(idcidade);

insert into estado (nome)
values ('Minas Gerais');

insert into cidade (nome, estado)
values ('Belo Horizonte', 1);

alter table clientes
add column end_bairro varchar(100) after end_compl;

alter table clientes
modify column end_rua varchar(100);

insert into clientes (nome, nasc, CPF, end_rua, end_nro, end_compl, end_bairro,CEP, cidade, estado)
values ('Flunao de tal', '1992-02-27', 12345678, 'Av. Getúlio Vargas', 310, null, 'centro', 32000, 1, 1);