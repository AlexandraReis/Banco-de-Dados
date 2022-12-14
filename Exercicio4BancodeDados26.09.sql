CREATE DATABASE DB_CONSTRUINDO_VIDAS;

USE DB_CONSTRUINDO_VIDAS;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
TIPO VARCHAR (255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE TB_PRODUTOS(
REFERENCIA BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO FLOAT (6,2) NOT NULL,
TAMANHO VARCHAR (255),
CATEGORIA_ID BIGINT,
PRIMARY KEY (REFERENCIA),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (TIPO)
VALUES ("CONSTRUÇÃO");
INSERT INTO TB_CATEGORIAS (TIPO)
VALUES ("ELÉTRICA");
INSERT INTO TB_CATEGORIAS (TIPO)
VALUES ("HIDRÁULICA");
INSERT INTO TB_CATEGORIAS (TIPO)
VALUES ("TINTAS");
INSERT INTO TB_CATEGORIAS (TIPO)
VALUES ("FERRAMENTAS");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("FIO", 60.0, "5 METROS" , 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("TINTA BRANCA SUVINIL", 35, "1.4L" , 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("PINCEL", 4, "PEQUENO" , 5);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("MILHEIRO DE TIJOLOS", 358, "1000 PEÇAS" , 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("CANO PVC", 16.54, "3 METROS" , 3);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("MASSA CORRIDA", 32.5, "900ML" , 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("CAPACETE DE PROTEÇÃO", 19.9, "ÚNICO" , 5);
INSERT INTO TB_PRODUTOS (NOME, PRECO, TAMANHO, CATEGORIA_ID)
VALUES ("CIMENTO", 28.46, "25KG" , 1);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 100;
SELECT * FROM TB_PRODUTOS WHERE PRECO >= 70 AND PRECO <= 150;
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE ID = 4;