CREATE DATABASE MeusLivros;

SHOW DATABASES;

USE meuslivros;

SELECT DATABASE ();

CREATE TABLE Autores ( 
IdAutor     SMALLINT AUTO_INCREMENT ,
NomeAutor   VARCHAR (60),
SobreNomeAutor   VARCHAR (60),
CONSTRAINT pk_id_autor PRIMARY KEY(IdAutor)
);

describe autores;

CREATE TABLE Editoras ( 
IdEditora  SMALLINT PRIMARY KEY AUTO_INCREMENT,
NomeEditora   VARCHAR (50)
);

CREATE TABLE Assuntos ( 
IdAssunto   TINYINT AUTO_INCREMENT , 
Assunto     VARCHAR   (50),
CONSTRAINT pk_id_assunto  PRIMARY KEY (IdAssunto) 
);

CREATE TABLE livros ( 
IdLivros         SMALLINT NOT NULL AUTO_INCREMENT ,
NomeLivro        VARCHAR (80),
ISBN13           VARCHAR (15),
DataPubl         YEAR,
Preco            FLOAT (10,2),
NumeroPaginas    SMALLINT  NOT NULL,
IdEditora        SMALLINT  NOT NULL,
IdAssunto        tinyint   NOT NULL,
CONSTRAINT  pk_id_livro PRIMARY KEY (IdLivros), 
CONSTRAINT  fk_id_editora FOREIGN KEY (IdEditora) REFERENCES Editoras (IdEditora) ON DELETE CASCADE,
CONSTRAINT  fk_id_assunto FOREIGN KEY (IdAssunto) REFERENCES Assuntos (IdAssunto) ON DELETE CASCADE
 );

CREATE TABLE LivrosAutores ( 
IdLivro  SMALLINT  NOT NULL,
IdAutor  SMALLINT  NOT NULL,
CONSTRAINT  pk_id_livro_autor PRIMARY KEY (IdLivro,IdAutor),
CONSTRAINT  fk_id_livros FOREIGN KEY (IdLivro) REFERENCES Livros (IdLivros),
CONSTRAINT  fk_id_autores FOREIGN KEY (IdAutor) REFERENCES Autores (IdAutor)
);

DESCRIBE autores;
DESCRIBE editoras;
DESCRIBE assuntos;
DESCRIBE livros;

SELECT * FROM autores;
SELECT * FROM editoras;
SELECT * FROM assuntos;
SELECT * FROM livros;
SELECT * FROM livrosautores;

INSERT INTO autores (NomeAutor, SobreNomeAutor) 
VALUES ("Marcelo", "Ramos de Oliveira"),("Rubem","Fonseca");
INSERT INTO autores (NomeAutor, SobreNomeAutor)
VALUES              ('Boris','Johnson'),('Otto', 'H.Frank'),('Alex','Ogg'),('Maria','Ligia Padro');


INSERT INTO editoras (NomeEditora) 
VALUES     ('Comunicare Editora'),('Faber and Faber');
INSERT INTO Editoras (NomeEditora)
VALUES     ('Ed. Planeta'),('Ed. Record'),('Ediçoes Ideal'),('Editora Contexto'); 

INSERT INTO Assuntos (assunto)
VALUES ('Viagem'),('Romance');

INSERT INTO Assuntos (assunto)
VALUES ('Biografia'),('Biografia'),('Biografia'),('História');

INSERT INTO livros (              NomeLivro  , ISBN13, DataPubl,  Preco, NumeroPaginas, IdEditora, IdAssunto,   Edicao)
VALUES             (              'Nocturnes',    '0',   "2009",  50.00,           221,         3,         3, 	     1);

INSERT INTO livros (               NomeLivro,     ISBN13,  DataPubl, Preco, NumeroPaginas, IdEditora, IdAssunto, Edicao)
VALUES             (     'O fator Churchill', '97585422',  '2015',  60.00,             461,         4,         4,      1),
                   ('O diário de Anne Frank',  '9758501',  '2005',  40.00,             349,         5,         5,      8),
                   (         'DEAD KENNEDYS', '97885628',  '2014',  80.00,             218,         6,         6,      1),
                   ( 'A Hisória da América Latina','975857244','2014', 50.00,          203,         7,         7,      1);         
INSERT INTO LivrosAutores (IdLivro, IdAutor)
VALUES                    (1,1) , (7,2) ,(8,3) , (9,4) , (10,5) , (11,6) , (12,7);
 


