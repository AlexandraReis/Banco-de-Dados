CREATE DATABASE DB_CURSO_DA_MINHA_VIDA;

USE DB_CURSO_DA_MINHA_VIDA;

CREATE TABLE TB_CATEGORIAS (
ID BIGINT AUTO_INCREMENT,
AREA VARCHAR (255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE TB_CURSOS(
CODIGO BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
MODALIDADE VARCHAR (255),
PRECO FLOAT (6,2),
CATEGORIA_ID BIGINT,
PRIMARY KEY (CODIGO),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("LÍNGUAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("HABILIDADES MANUAIS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("EXATAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("HUMANAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("TECNOLOGIA");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("ESPANHOL", "ONLINE", 850 , 1);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("INGLES BÁSICO", "HÍBRIDO", 950 , 1);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("TRICOT", "PRESENCIAL", 280 , 2);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("BORDADO", "ONLINE", 310 , 2);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("FUNÇÕES", "HÍBRIDO", 990 , 3);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("HISTÓRIA DA ARTE", "ONLINE", 850 , 4);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("FRONT-END", "ONLINE", 1000 , 5);
INSERT INTO TB_CURSOS (NOME, MODALIDADE, PRECO, CATEGORIA_ID)
VALUES ("CLOUD", "ONLINE", 1200 , 5);

SELECT * FROM TB_CURSOS;

SELECT * FROM TB_CURSOS WHERE PRECO > 500;
SELECT * FROM TB_CURSOS WHERE PRECO >= 600 AND PRECO <= 1000;
SELECT * FROM TB_CURSOS WHERE NOME LIKE "%J%";
SELECT * FROM TB_CURSOS INNER JOIN TB_CATEGORIAS ON TB_CURSOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_CURSOS INNER JOIN TB_CATEGORIAS ON TB_CURSOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE ID = 3;