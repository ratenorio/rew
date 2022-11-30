create database rew;
use rew;

CREATE TABLE Livro (
    cod_livro int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    autor varchar(50),
    data_publicacao datetime,
    qtd_capitulo int,
    sinopse text,
    cod_usuario int,
    cod_genero int,
    foto varchar(100)
);

CREATE TABLE Usuario (
    cod_usuario int PRIMARY KEY AUTO_INCREMENT,
    email varchar(255),
    senha varchar(100),
    username varchar(50),
    biografia varchar(255), 
    foto blob
);

CREATE TABLE Comenta (
    cod_comentario int PRIMARY KEY AUTO_INCREMENT,
    cod_usuario int,
    cod_livro int,
    comentario varchar(255),
    fanart varchar(255)
);

CREATE TABLE Genero (
    cod_genero int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50)
);

CREATE TABLE Capitulos (
    cod_capitulo int PRIMARY KEY AUTO_INCREMENT,
    titulo varchar(50),
    texto mediumtext,
    cod_livro int    
);

CREATE TABLE Le (
    cod_le int PRIMARY KEY AUTO_INCREMENT,
    cod_livro int,
    cod_usuario int,
    continuar_lendo int,
    lista_de_interesses int
);

CREATE TABLE Avalia (
    cod_avalia int PRIMARY KEY AUTO_INCREMENT,
    cod_usuario int,
    cod_livro int,
    estrelas int
);

CREATE TABLE Denuncia (
    cod_denuncia int PRIMARY KEY AUTO_INCREMENT,
    cod_usuario int,
    cod_comentario int
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_Usuario
    FOREIGN KEY (cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_Genero
    FOREIGN KEY (cod_genero)
    REFERENCES genero (cod_genero)
    ON DELETE CASCADE;
 
ALTER TABLE Comenta ADD CONSTRAINT FK_comenta_Usuario
    FOREIGN KEY (cod_usuario)
    REFERENCES Usuario (cod_usuario);
 
ALTER TABLE Comenta ADD CONSTRAINT FK_Comenta_Livro
    FOREIGN KEY (cod_livro)
    REFERENCES Livro (cod_livro);
 
ALTER TABLE Capitulos ADD CONSTRAINT FK_Capitulos_Livro
    FOREIGN KEY (cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE CASCADE;
 
ALTER TABLE Le ADD CONSTRAINT FK_Le_Livro
    FOREIGN KEY (cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE SET NULL;
 
ALTER TABLE Le ADD CONSTRAINT FK_Le_Usuario
    FOREIGN KEY (cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Avalia ADD CONSTRAINT FK_Avalia_Usuario
    FOREIGN KEY (cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Avalia ADD CONSTRAINT FK_Avalia_Livro
    FOREIGN KEY (cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE SET NULL;
 
ALTER TABLE Denuncia ADD CONSTRAINT FK_Denuncia_Usuario
    FOREIGN KEY (cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Denuncia ADD CONSTRAINT FK_Denuncia_Comenta
    FOREIGN KEY (cod_comentario)
    REFERENCES Comenta (cod_comentario)
    ON DELETE RESTRICT;



insert into genero(nome) values('omance');
insert into genero(nome) values('fantasia');
insert into genero(nome) values('terror');
insert into genero(nome) values('poema');
insert into genero(nome) values('outros');