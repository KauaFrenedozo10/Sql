create database empresa_kauaFrenedozo;

use empresa_kauaFrenedozo;
drop table Funcionario;
create table Funcionario (
numero integer auto_increment,
nome varchar (255),
rua varchar (200),
salario float,
cep varchar(9),
nmrCasa varchar(10),
bairro varchar(40),
estado varchar(2),
cidade varchar (10),
numeroSuper Integer,
primary key (numero),
foreign key(numeroSuper) references Funcionario(numero)


);

create table Departamento (
numeroDep integer auto_increment,
nome varchar(100),
depLocal varchar(30),
primary key (numeroDep)
);

create table Projeto (
numProj integer auto_increment,
nomeProj varchar(255),
numeroDep integer,
primary key (numProj),
foreign key (numDep) references Departamento(numeroDep)
);

create table dependente (

nome varchar (255),
dataIn date,
parentesco varchar(255)

);


create table FuncProjeto (

numeroProj integer,
numero integer,
nomeproj varchar (100),
nomefunc varchar (100),
foreign key(numeroProj) references Projeto(numeroProj),
foreign key(numero) references Funcionario(numero),
primary key(numero, numeroProj)
);

create table locaDep (
numeroDep integer,
depLocal varchar(100),
primary key (numeroDep, depLocal)
);