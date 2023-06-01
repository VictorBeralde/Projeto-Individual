use individual;

create table jogador(
  idJogador int primary key auto_increment,
  nick varchar(45),
  email varchar(45),
  senha varchar(45)
);

create table boss(
	idBoss int primary key auto_increment,
	nome varchar(45) 
);

create table favoritos(
idJogador int,
idBoss int,
constraint fkJogador foreign key (idJogador) references jogador(idJogador),
constraint fkBoss foreign key (idBoss) references boss(idBoss),
primary key (idJogador,idBoss)
);