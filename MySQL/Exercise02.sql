-- Atividade 2
-- 1. Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos 
-- produtos deste e-commerce. 

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2. Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos
-- para se trabalhar com o serviço deste e-commerce.

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome_produto VARCHAR(255),
marca VARCHAR(255),
cor VARCHAR(255),
preco DOUBLE,
quantidade INT,
PRIMARY KEY(id));

-- 3. Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("Celular","iphone","preto",3000,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("Camisa","lacoste","branca",200.00,2);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("tenis","nike","preto",700.00,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("bermuda","adidas","verde",90.00,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("meia","puma","rosa",50.00,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("jaqueta","DGK","roxa",150.00,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("luva","gucci","azul",20.00,1);

INSERT INTO tb_produtos(nome_produto, marca, cor, preco, quantidade)
VALUES("PS4","sony","preto",4000,1);

SELECT * FROM tb_produtos;

-- 4. Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

SELECT * FROM tb_produtos WHERE preco > 500;

-- 5. Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

SELECT * FROM tb_produtos WHERE preco < 500;

-- 6.Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos SET marca = "Versace" WHERE id = 2;

SELECT * FROM tb_produtos;