USE MeusLivros;

DESCRIBE Autores;
SELECT * FROM assuntos;
SELECT * FROM editoras;

INSERT INTO autores (NomeAutor, SobreNomeAutor) 
VALUES ('Ian','Croft'),('Yuval','Noah Harani'),('Geofrey','Blainey'),('Laurentino','Gomes'); 

INSERT INTO editoras ( NomeEditora) 
VALUES ('Ed. Porto');

INSERT INTO assuntos (assunto) 
VALUES ('História');

INSERT INTO Livros       ( NomeLivro                         ,           ISBN13,      DataPubl,    Preco,   NumeroPaginas,    IdEditora,   IdAssunto,  Edicao)
VALUES                   ( 'Uma breve história da humanidade',  '9788525432186',        '2018',    90.00,             459,            8,           7,      32),IdLivros
                         (      'Uma breve história do mundo',      '046412909',        '2004',    60.00,             336,            9,           7,      10),
                         (          '1889 - Fim da Monarquia',  '9788525054463',        '2013',    70.00,             415,           10,           7,       1),
                         (           '1822 - Criação do pais',  '9788525060648',        '2015',    70.00,             374,           10,           7,       2),
                         ( '1808 - História de Brasil e Portugal',          '0',        '2015',    80.00,             328,           11,           7,       1);
SELECT * FROM Livros;





