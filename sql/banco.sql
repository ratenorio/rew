create database rew;
use rew;,

CREATE TABLE Livro (
    cod_livro int PRIMARY KEY,
    nome varchar(50),
    autor varchar(50),
    data_publicacao int,
    qtd_capitulo int,
    sinopse text,
    fk_Usuario_cod_usuario int,
    fk_genero_cod_genero int
);

CREATE TABLE Usuario (
    cod_usuario int PRIMARY KEY,
    email varchar(255),
    senha varchar(10),
    username varchar(50),
    biografia varchar(255)
);

CREATE TABLE _comenta (
    cod_comentario int PRIMARY KEY,
    fk_Usuario_cod_usuario int,
    fk_Livro_cod_livro int,
    comentario varchar(255),
    fanart varchar(255)
);

CREATE TABLE genero (
    cod_genero int PRIMARY KEY,
    descricao varchar(255),
    nome varchar(50)
);

CREATE TABLE capitulos (
    capitulo int,
    titulo varchar(50),
    texto mediumtext,
    fk_Livro_cod_livro int,
    PRIMARY KEY (capitulo, fk_Livro_cod_livro)
);

CREATE TABLE le (
    fk_Livro_cod_livro int,
    fk_Usuario_cod_usuario int,
    continuar_lendo int,
    lista_de_interesses int
);

CREATE TABLE avalia (
    fk_Usuario_cod_usuario int,
    fk_Livro_cod_livro int,
    estrelas int
);

CREATE TABLE denuncia (
    fk_Usuario_cod_usuario int,
    fk__comenta_cod_comentario int
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_2
    FOREIGN KEY (fk_Usuario_cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_3
    FOREIGN KEY (fk_genero_cod_genero)
    REFERENCES genero (cod_genero)
    ON DELETE CASCADE;
 
ALTER TABLE _comenta ADD CONSTRAINT FK__comenta_2
    FOREIGN KEY (fk_Usuario_cod_usuario)
    REFERENCES Usuario (cod_usuario);
 
ALTER TABLE _comenta ADD CONSTRAINT FK__comenta_3
    FOREIGN KEY (fk_Livro_cod_livro)
    REFERENCES Livro (cod_livro);
 
ALTER TABLE capitulos ADD CONSTRAINT FK_capitulos_2
    FOREIGN KEY (fk_Livro_cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE RESTRICT;
 
ALTER TABLE le ADD CONSTRAINT FK_le_1
    FOREIGN KEY (fk_Livro_cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE SET NULL;
 
ALTER TABLE le ADD CONSTRAINT FK_le_2
    FOREIGN KEY (fk_Usuario_cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE avalia ADD CONSTRAINT FK_avalia_1
    FOREIGN KEY (fk_Usuario_cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE avalia ADD CONSTRAINT FK_avalia_2
    FOREIGN KEY (fk_Livro_cod_livro)
    REFERENCES Livro (cod_livro)
    ON DELETE SET NULL;
 
ALTER TABLE denuncia ADD CONSTRAINT FK_denuncia_1
    FOREIGN KEY (fk_Usuario_cod_usuario)
    REFERENCES Usuario (cod_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE denuncia ADD CONSTRAINT FK_denuncia_2
    FOREIGN KEY (fk__comenta_cod_comentario)
    REFERENCES _comenta (cod_comentario)
    ON DELETE RESTRICT;