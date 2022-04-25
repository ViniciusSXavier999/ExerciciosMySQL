-- ATIVIDADE 01

-- 1. Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará com as 
-- informações dos produtos desta empresa. 

CREATE DATABASE db_quitanda;
USE db_quitanda;

-- 2. Crie uma tabela de produtos e determine 5 atributos relevantes 
-- para se trabalhar com o serviço desta quitanda.

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome VARCHAR(200)  NOT NULL,
peso VARCHAR(100) NOT NULL,
cor VARCHAR(50),
preco DECIMAL  NOT NULL,
qtProduto INT,
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

SELECT * FROM tb_produtos;

-- 3. Crie uma tabela de categorias para esses produtos.

CREATE TABLE tb_categoria(
id bigint auto_increment,
descricao VARCHAR(200) NOT NULL,
ativo BOOLEAN NOT NULL,
PRIMARY KEY(id)
); 

SELECT * FROM tb_categoria;

INSERT tb_categoria(descricao, ativo) values("Frutas",true);
INSERT tb_categoria(descricao, ativo) values("Legumes",true);
INSERT tb_categoria(descricao, ativo) values("Bovino",true);
INSERT tb_categoria(descricao, ativo) values("Suino",true);
INSERT tb_categoria(descricao, ativo) values("Aves",true);
INSERT tb_categoria(descricao, ativo) values("Leite e derivados",true);
INSERT tb_categoria(descricao, ativo) values("Doces",true);
INSERT tb_categoria(descricao, ativo) values("Gorduras",true);

SELECT * FROM tb_categoria;


-- 4 .Faça o relacionamento de categorias na tabela de produto através da foreign key (id_categoria)
-- 5. Insira nestas tabelas no mínimo 5 dados (registros).

INSERT tb_produtos (nome, peso, cor, preco, qtproduto, categoria_id)
values("Uva","1KG","verde",10.00,9,1);

INSERT tb_produtos (nome, peso, cor, preco, qtproduto, categoria_id)
values("Banana","7KG","amarela",7.00,50,1);

INSERT tb_produtos (nome, peso, cor, preco, qtproduto, categoria_id)
values("Cenoura","9KG","laranja",20.00,90,2);

INSERT tb_produtos (nome, peso, cor, preco, qtproduto, categoria_id)
values("Queijo","2KG","meio amarelado",5.00,2,6);

INSERT tb_produtos (nome, peso, cor, preco, qtproduto, categoria_id)
values("Linguiça","1KG","Esbranquiçada",50.00,1,4);

-- 6. Faça um SELECT que retorne todos os produtos.

SELECT * FROM tb_produtos;

-- 7. Faça um SELECT que retorne todas as categorias

SELECT * FROM tb_categoria;

-- 8. Faça um SELECT que retorne todas as categorias com o valor maior do que 50.

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON tb_produtos.categoria_id = tb_categoria.id
 WHERE preco > 50.00;

-- 9. Faça um SELECT que retorne todos os produtos que contém a letra %a%.

SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

-- 10. Ao término atualize um registro desta tabela através de uma query de atualização.

update tb_produtos set preco = 99.00 where tb_produtos.id = 2;

SELECT * FROM tb_produtos;

-- 11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.

                              -- end of program









