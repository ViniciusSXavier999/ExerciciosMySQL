-- ATIVIDADE 01
-- 1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará 
-- com as informações dos colaboradores desta empresa. 

CREATE DATABASE db_empresa;
USE db_empresa;

-- 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se 
-- trabalhar com o serviço deste RH.

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome VARCHAR(255),
cargo VARCHAR(255),
cpf VARCHAR(255),
idade INT,
salario INT,
PRIMARY KEY(id)
);
-- 3. Insira nesta tabela no mínimo 5 dados (registros).

INSERT INTO tb_colaboradores(nome, cargo, cpf, idade, salario)
VALUES("Vinicius","Desenvolvedor java jr","9875421627",35,1000);

INSERT INTO tb_colaboradores(nome, cargo, cpf, idade, salario)
VALUES("Kobe bryant","Diretor de TI","12345678901",29,9000);

INSERT INTO tb_colaboradores(nome, cargo, cpf, idade, salario)
VALUES("Heliane","Desenvolvedor Frontend.","543267812319",19,2000);

INSERT INTO tb_colaboradores(nome, cargo, cpf, idade, salario)
VALUES("Justin","Engenheiro de Dados. ","98715273548",22,8000);

INSERT INTO tb_colaboradores(nome, cargo, cpf, idade, salario)
VALUES("Nicole","Engenheiro de Software","575839471526",25,4000);

-- 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_colaboradores SET idade = 27 WHERE id = 4;

SELECT * FROM tb_colaboradores;



----------------------------------------------------------------------------------------------------------


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


----------------------------------------------------------------------------------------------------------


-- Atividade 3
-- 1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
-- informações dos estudantes deste registro dessa escola.
 
CREATE DATABASE db_escola;
USE db_escola;

-- 2. Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome_estu VARCHAR(255),
periodo VARCHAR(255),
serie VARCHAR(255),
idade INT,
nota DOUBLE,
primary key(id));
-- 3. Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Vinicius","noturno","2 ano",17,8.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Maicon","integral","8 serie",15,5.5);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Marlos","noturno","1 ano",16,8.9);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Cristiano","matutino","3 ano",18,9.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Ronaldo","matutino","7 serie",14,6.5);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Messi","integral","5 serie",12,10.0);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("Daniel","noturno","2 ano ",20,7.7);

INSERT INTO tb_estudantes(nome_estu, periodo, serie, idade, nota)
VALUES("James","matutino","3 ano",22,9.5);

SELECT * FROM tb_estudantes;
-- 4. Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_estudantes SET periodo = "noturno" WHERE id = 2;

SELECT * FROM tb_estudantes;