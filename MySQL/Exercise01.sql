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