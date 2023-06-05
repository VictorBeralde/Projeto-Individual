-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE individual;

USE individual;

CREATE TABLE jogador (
	idJogador INT PRIMARY KEY AUTO_INCREMENT,
	nick VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(45)
);

CREATE TABLE boss (
	idBoss INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45)
);

create table favoritos(
	idJogador int,
	idBoss int,
	foreign key (idJogador) references jogador(idJogador),
	foreign key (idBoss) references boss(idBoss),
	primary key (idJogador, idBoss)  
);

