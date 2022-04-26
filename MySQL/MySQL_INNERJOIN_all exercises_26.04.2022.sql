-- ATIVIDADE 01

-- Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o 
-- seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. 
-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- 1 . Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os personagens do Game Online.

CREATE TABLE tb_classes(
id bigint auto_increment,
ataque INT not null,
defesa INT not null,
PRIMARY KEY (id)
);

-- 2 . Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes 
-- aos personagens do Game Online.

-- 3. Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome VARCHAR(200),
peso VARCHAR(100),
habiEspecial VARCHAR(300),
agilidade INT,
classe_id bigint,

PRIMARY KEY (id),
FOREIGN KEY(classe_id) REFERENCES tb_classes (id)
);

-- 4. Insira 5 registros na tabela tb_classes.

INSERT INTO tb_classes(ataque, defesa) values(1000,3000);
INSERT INTO tb_classes(ataque, defesa) values(5000,2000);
INSERT INTO tb_classes(ataque, defesa) values(10000,500);
INSERT INTO tb_classes(ataque, defesa) values(20000,3000);
INSERT INTO tb_classes(ataque, defesa) values(700,7000);

SELECT * FROM tb_classes;

-- 5. Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação
-- com a tabela tb_classes.

INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Baratinha","5KG","Voo",1000,2);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Ravena","50KG","Teletransporte",5000,5);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Homem de aço","100KG","Sentidos aprimorados",500,4);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Lobo","70KG","Fator de cura acelerado",2000,2);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Aquaman","40KG","Telepatia",8000,4);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Elon musk","200KG","Magia",5000,1);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Ciclone","42KG","Supervelocidade",10000,3);
INSERT INTO tb_personagens(nome, peso, habiEspecial, agilidade, classe_id)
values("Gregor","70KG","Super força",9000,4);

-- 6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja 
-- maior do que 2000.

SELECT tb_personagens.nome, tb_classes.ataque FROM tb_personagens
 INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
 WHERE tb_classes.ataque > 2000;
 
 -- 7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no 
 -- intervalo 1000 e 2000.
 
 SELECT tb_personagens.nome, tb_classes.defesa FROM tb_personagens
 INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
 WHERE tb_classes.defesa BETWEEN 1000 and 2000;
 
 -- 8. Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam 
 -- a letra C no atributo nome.
 
  SELECT tb_personagens.nome FROM tb_personagens
 INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
 WHERE tb_personagens.nome LIKE "%c%";
 
 -- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
 -- com os dados da tabela tb_classes.
 
 SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;
 
 -- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
 -- com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a 
 -- uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
 
 SELECT * FROM tb_classes INNER JOIN tb_personagens ON tb_classes.id = tb_personagens.id 
 WHERE classe_id = 2;
 



-------------------------------------------------------------------------------------------------------------------------------

-- Atividade 2

-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o 
-- seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos 
-- comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, 
-- que deverão estar relacionadas.

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar as pizzas.

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria VARCHAR(100) NOT NULL,
tamanho VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

-- 2. Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos 
-- produtos da pizzaria.

-- 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome VARCHAR(100) NOT NULL,
ingredientes VARCHAR(500),
borda VARCHAR(50) NOT NULL,
preco DOUBLE NOT NULL, 
categorias_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_pizzas;

-- 4. Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias(categoria,tamanho) VALUES("Salgada","Grande");
INSERT tb_categorias(categoria,tamanho) VALUES("Salgada","Média");
INSERT tb_categorias(categoria,tamanho) VALUES("Salgada","Pequena");
INSERT tb_categorias(categoria,tamanho) VALUES("Doce","Grande");
INSERT tb_categorias(categoria,tamanho) VALUES("Doce","Média");
INSERT tb_categorias(categoria,tamanho) VALUES("Doce","Pequena");
SELECT * FROM tb_categorias;

-- 5. Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a 
-- relação com a tabela tb_categorias.

INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Italiana","Mussarela e salame italiano","Recheada",50.99,5);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Atum","Mussarela e atum","Sem recheio",60.00,2);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Coração","Mussarela e coração refogado","Recheada",70.00,3);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Holandesa","Mussarela, atum, requeijão e cebola","Recheada",90.00,4);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Lombo Barbecue","Mussarela, lombo, tomate, requeijão e molho barbecue","Sem recheio",55.00,1);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Cinco Queijos","Mussarela, requeijão, parmesão, provolone e cheddar","Recheada",40.00,2);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Nova Moda","Mussarela, lombo, bacon e cheddar","Sem recheio",20.00,6);
INSERT tb_pizzas(nome, ingredientes, borda, preco, categorias_id)
VALUES("Bolonhesa","Mussarela e carne moída à bolonhesa","Recheada",70.00,1);

SELECT * FROM tb_pizzas;

-- 6.  Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

SELECT * FROM tb_pizzas where preco > 45.00;

-- 7.  Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.

SELECT * FROM tb_pizzas where preco BETWEEN 50.00 and 100.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no 
-- atributo nome.

SELECT * FROM tb_pizzas where nome LIKE "%m%";

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os 
-- dados da tabela tb_categorias.

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os 
-- dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma 
-- categoria específica (Exemplo: Todas as pizzas que são doce).

 SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id 
 WHERE categorias_id = 1;
 
 
 
